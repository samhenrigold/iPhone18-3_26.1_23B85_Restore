char *storeEnumTagSinglePayload for Optional(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
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

  else if (v5)
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubstringSearcher and conformance SubstringSearcher()
{
  result = lazy protocol witness table cache variable for type SubstringSearcher and conformance SubstringSearcher;
  if (!lazy protocol witness table cache variable for type SubstringSearcher and conformance SubstringSearcher)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubstringSearcher and conformance SubstringSearcher);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegexSemanticLevel.Representation and conformance RegexSemanticLevel.Representation()
{
  result = lazy protocol witness table cache variable for type RegexSemanticLevel.Representation and conformance RegexSemanticLevel.Representation;
  if (!lazy protocol witness table cache variable for type RegexSemanticLevel.Representation and conformance RegexSemanticLevel.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexSemanticLevel.Representation and conformance RegexSemanticLevel.Representation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegexWordBoundaryKind.Representation and conformance RegexWordBoundaryKind.Representation()
{
  result = lazy protocol witness table cache variable for type RegexWordBoundaryKind.Representation and conformance RegexWordBoundaryKind.Representation;
  if (!lazy protocol witness table cache variable for type RegexWordBoundaryKind.Representation and conformance RegexWordBoundaryKind.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexWordBoundaryKind.Representation and conformance RegexWordBoundaryKind.Representation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegexRepetitionBehavior.Kind and conformance RegexRepetitionBehavior.Kind()
{
  result = lazy protocol witness table cache variable for type RegexRepetitionBehavior.Kind and conformance RegexRepetitionBehavior.Kind;
  if (!lazy protocol witness table cache variable for type RegexRepetitionBehavior.Kind and conformance RegexRepetitionBehavior.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexRepetitionBehavior.Kind and conformance RegexRepetitionBehavior.Kind);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Processor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Processor and conformance Processor();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Processor and conformance Processor()
{
  result = lazy protocol witness table cache variable for type Processor and conformance Processor;
  if (!lazy protocol witness table cache variable for type Processor and conformance Processor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Processor and conformance Processor);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ZSearcher<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for implicit closure #1 in RegexRangesSequence.Iterator.next()(uint64_t *a1)
{

  swift_getAtKeyPath();
}

void outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

uint64_t specialized MutableCollection<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Slice();
  swift_getWitnessTable();

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

uint64_t outlined init with take of DSLTree.QuantificationKind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18E5E1030()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_18E5E1070()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Substring) -> (@out B?, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Substring) -> (@out B?, @error @owned Error)(a1, a2, a3, a4);
}

{
  v7[3] = a4;
  v5 = *(v4 + 32);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  return v5(v7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x193ACF600);
  }

  return result;
}

uint64_t outlined init with copy of DSLTree._AST.AbsentFunction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Processor._StoredCapture(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_0((result + 24));
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of Processor._StoredCapture(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a2 = v4;
  v5 = *(a1 + 6);
  if (v5)
  {
    *(a2 + 48) = v5;
    (**(v5 - 8))(a2 + 24, a1 + 24);
  }

  else
  {
    v6 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v6;
  }

  v7 = *(a1 + 7);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 56) = v7;
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CanonicalSpecializedMetadata = swift_getCanonicalSpecializedMetadata();
  (*(*(CanonicalSpecializedMetadata - 8) + 8))(a1, CanonicalSpecializedMetadata);
  return a1;
}

uint64_t type metadata accessor for MEProgram(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined copy of CaptureTransform?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    return outlined copy of CaptureTransform.Closure(a3, a4, a5);
  }

  return result;
}

uint64_t outlined copy of CaptureTransform.Closure(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t outlined consume of CaptureTransform?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (result)
  {
    return outlined consume of CaptureTransform.Closure(a3, a4, a5);
  }

  return result;
}

uint64_t sub_18E5E14F4()
{
  outlined consume of CaptureTransform.Closure(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t partial apply for closure #1 in Compiler.ByteCodeGen.emitNode(_:)@<X0>(uint64_t *a1@<X2>, _OWORD *a2@<X8>)
{
  if (a1[2])
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    v15 = 1;
LABEL_5:
    constructExistentialOutputComponent(from:component:optionalCount:)(&v12, 0, v16);
    outlined destroy of SplitSequence<SubstringSearcher>(&v12, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    CaptureTransform.callAsFunction(_:)(v16, a2);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  v5 = *a1;
  v4 = a1[1];
  outlined init with copy of Any?((a1 + 3), &v12);
  v6 = *(&v13 + 1);
  outlined destroy of Any?(&v12, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
  if (v6)
  {
    *&v12 = v5;
    *(&v12 + 1) = v4;
    outlined init with copy of Any?((a1 + 3), &v13);
    goto LABEL_5;
  }

  v8 = String.subscript.getter();
  CaptureTransform.callAsFunction(_:)(v8, v9, v10, v11);
}

uint64_t sub_18E5E1674()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Range<String.Index>) -> (@unowned String.Index?)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(v3 + 16))(*a1, a1[1], *a2, a2[1]);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t outlined consume of Set<Unicode.Scalar>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed String, @unowned Range<String.Index>) -> (@unowned String.Index?))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    swift_getCanonicalSpecializedMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *partial apply for closure #1 in scriptExtensionScalarPredicate(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Unicode.Script() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in scriptExtensionScalarPredicate(_:)(a1, v4);
}

uint64_t objectdestroy_271Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_283Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #6 in closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t lazy protocol witness table accessor for type Unsupported and conformance Unsupported(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in consumeCharacterWithLeadingScalar(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = String.subscript.getter();
  v7 = specialized Collection.first.getter(v5, v6);

  if ((v7 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else if (v4(v7))
  {
    return String.index(after:)();
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t partial apply for closure #1 in consumeScalar(_:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 16);
  _StringGuts.validateScalarIndex(_:)(a3, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16 = a1;
      v17 = a2 & 0xFFFFFFFFFFFFFFLL;
    }

    else if ((a1 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    v8 = _decodeScalar(_:startingAt:)();
  }

  if ((v7(v8) & 1) == 0)
  {
    return 0;
  }

  v9 = _StringGuts.validateScalarIndex(_:)(a3, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    return String.UnicodeScalarView._foreignIndex(after:)();
  }

  v10 = v9 >> 16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = a1;
    v17 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = *(&v16 + v10);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v11 = _StringObject.sharedUTF8.getter();
    }

    v12 = *(v11 + v10);
  }

  v14 = v12;
  v15 = __clz(v12 ^ 0xFF) - 24;
  if (v14 >= 0)
  {
    LOBYTE(v15) = 1;
  }

  return ((v10 + v15) << 16) | 5;
}

unint64_t lazy protocol witness table accessor for type DSLTree._Tree and conformance DSLTree._Tree()
{
  result = lazy protocol witness table cache variable for type DSLTree._Tree and conformance DSLTree._Tree;
  if (!lazy protocol witness table cache variable for type DSLTree._Tree and conformance DSLTree._Tree)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DSLTree._Tree and conformance DSLTree._Tree);
  }

  return result;
}

uint64_t outlined copy of PrettyPrinter.NodeToPrint(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t partial apply for closure #4 in PrettyPrinter.printConcatenationAsPattern(_:isTopLevel:)()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 48);
    do
    {
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      if (v8 == 1)
      {

        v4._countAndFlagsBits = v6;
        v4._object = v7;
        PrettyPrinter.print(_:)(v4);
      }

      else
      {

        PrettyPrinter.printAsPattern(convertedFromAST:isTopLevel:)(v6, 0);
      }

      result = outlined consume of PrettyPrinter.NodeToPrint(v6, v7, v8);
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t outlined consume of PrettyPrinter.NodeToPrint(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void partial apply for closure #3 in PrettyPrinter.printAsPattern(_:wrap:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  PrettyPrinter.indent()();
  v3._object = 0x800000018E5F35C0;
  v3._countAndFlagsBits = 0xD000000000000015;
  PrettyPrinter.output(_:)(v3);
  v6 = v1;
  v7 = v2;
  v8.members._rawValue = &v6;
  v8.isInverted = 0;
  PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(v8, 0, v4);
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  PrettyPrinter.output(_:)(v5);
}

void partial apply for closure #2 in PrettyPrinter.printAsPattern(_:wrap:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  PrettyPrinter.indent()();
  v8._countAndFlagsBits = a2;
  v8._object = a3;
  PrettyPrinter.output(_:)(v8);
  v11 = v6;
  v12 = v7;
  v13.members._rawValue = &v11;
  v13.isInverted = 0;
  PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(v13, 0, v9);
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  PrettyPrinter.output(_:)(v10);
}

uint64_t outlined init with take of (offset: Int, element: (CaptureList.Capture, Processor._StoredCapture))?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined consume of PatternSegment(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t lazy protocol witness table accessor for type [Any.Type] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<String, String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<String, String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<String, String> and conformance <> LazyMapSequence<A, B>)
  {
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type String and conformance String();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<String, String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t outlined assign with take of Processor._StoredCapture(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a2 = v4;
  if (*(a2 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((a2 + 24));
  }

  v5 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v5;
  v6 = *(a1 + 7);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 56) = v6;
  return a2;
}

uint64_t outlined init with copy of (range: Range<String.Index>, value: Any?)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of SplitSequence<SubstringSearcher>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined copy of PatternSegment(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t initializeBufferWithCopyOfBuffer for PatternSegment(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *assignWithCopy for PatternSegment(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  *a1 = v7;
  a1[1] = v8;
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *assignWithTake for PatternSegment(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PatternSegment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PatternSegment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *assignWithCopy for DSLTree(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DSLTree(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 8))
  {
    return (*a1 + 112);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DSLTree(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSLTree.CustomCharacterClass.AsciiBitset(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DSLTree.CustomCharacterClass.AsciiBitset(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MEProgram.Builder.AddressFixup(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MEProgram.Builder.AddressFixup(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MEProgram.Builder(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v5 = a1;
    *(a1 + 8) = *(a2 + 4);
    v6 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v6;
    v7 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v7;
    v18 = a2[7];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v18;
    v19 = a2[9];
    *(a1 + 64) = a2[8];
    *(a1 + 72) = v19;
    v20 = a2[11];
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v20;
    *(a1 + 96) = *(a2 + 6);
    v8 = a2[15];
    *(a1 + 112) = a2[14];
    *(a1 + 120) = v8;
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 152) = *(a2 + 152);
    v9 = a2[18];
    *(a1 + 136) = a2[17];
    *(a1 + 144) = v9;
    v10 = a3[21];
    v13 = type metadata accessor for CaptureList();
    v17 = *(*(v13 - 8) + 16);

    v17(v5 + v10, a2 + v10, v13);
    v14 = a3[23];
    *(v5 + a3[22]) = *(a2 + a3[22]);
    *(v5 + v14) = *(a2 + v14);
    v15 = a3[25];
    *(v5 + a3[24]) = *(a2 + a3[24]);
    *(v5 + v15) = *(a2 + v15);
  }

  return v5;
}

uint64_t destroy for MEProgram.Builder(char *a1, int *a2)
{

  v4 = a2[21];
  v5 = type metadata accessor for CaptureList();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
}

uint64_t initializeWithCopy for MEProgram.Builder(uint64_t a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  v7 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v7;
  v16 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v16;
  v17 = a2[9];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v17;
  v18 = a2[11];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v18;
  *(a1 + 96) = *(a2 + 6);
  v8 = a2[15];
  *(a1 + 112) = a2[14];
  *(a1 + 120) = v8;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 152) = *(a2 + 152);
  v9 = a2[18];
  *(a1 + 136) = a2[17];
  *(a1 + 144) = v9;
  v10 = a3[21];
  v11 = type metadata accessor for CaptureList();
  v15 = *(*(v11 - 8) + 16);

  v15(a1 + v10, a2 + v10, v11);
  v12 = a3[23];
  *(a1 + a3[22]) = *(a2 + a3[22]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[25];
  *(a1 + a3[24]) = *(a2 + a3[24]);
  *(a1 + v13) = *(a2 + v13);

  return a1;
}

uint64_t *assignWithCopy for MEProgram.Builder(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];
  a1[13] = a2[13];
  a1[14] = a2[14];
  v6 = a2[15];
  *(a1 + 128) = *(a2 + 128);
  a1[15] = v6;
  a1[17] = a2[17];
  v7 = a2[18];
  *(a1 + 152) = *(a2 + 152);
  a1[18] = v7;
  v8 = a3[21];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 24))(a1 + v8, a2 + v8, v9);
  *(a1 + a3[22]) = *(a2 + a3[22]);

  *(a1 + a3[23]) = *(a2 + a3[23]);
  *(a1 + a3[24]) = *(a2 + a3[24]);

  *(a1 + a3[25]) = *(a2 + a3[25]);

  return a1;
}

uint64_t initializeWithTake for MEProgram.Builder(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  v9 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v9;
  *(a1 + 128) = *(a2 + 128);
  v10 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v10;
  *(a1 + 152) = *(a2 + 152);
  v11 = a3[21];
  v12 = type metadata accessor for CaptureList();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  v13 = a3[23];
  *(a1 + a3[22]) = *(a2 + a3[22]);
  *(a1 + v13) = *(a2 + v13);
  v14 = a3[25];
  *(a1 + a3[24]) = *(a2 + a3[24]);
  *(a1 + v14) = *(a2 + v14);
  return a1;
}

uint64_t *assignWithTake for MEProgram.Builder(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  *(a1 + 6) = *(a2 + 6);
  v6 = a2[15];
  a1[14] = a2[14];
  a1[15] = v6;
  *(a1 + 128) = *(a2 + 128);
  v7 = a2[18];
  a1[17] = a2[17];
  a1[18] = v7;
  *(a1 + 152) = *(a2 + 152);
  v8 = a3[21];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  *(a1 + a3[22]) = *(a2 + a3[22]);

  v10 = a3[24];
  *(a1 + a3[23]) = *(a2 + a3[23]);
  *(a1 + v10) = *(a2 + v10);

  *(a1 + a3[25]) = *(a2 + a3[25]);

  return a1;
}

uint64_t sub_18E5E33A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CaptureList();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 84);

    return v9(v10, a2, v8);
  }
}

void *sub_18E5E3468(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CaptureList();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 84);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for MEProgram.Builder(uint64_t a1)
{
  result = type metadata accessor for CaptureList();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for Compiler.ByteCodeGen(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = a3[5];
    v7 = a1 + v6;
    v8 = a2 + v6;
    *v7 = *(a2 + v6);
    *(v7 + 4) = *(a2 + v6 + 8);
    v9 = *(a2 + v6 + 24);
    *(v7 + 2) = *(a2 + v6 + 16);
    *(v7 + 3) = v9;
    v18 = *(a2 + v6 + 40);
    *(v7 + 4) = *(a2 + v6 + 32);
    *(v7 + 5) = v18;
    v19 = *(a2 + v6 + 56);
    *(v7 + 6) = *(a2 + v6 + 48);
    *(v7 + 7) = v19;
    v20 = *(a2 + v6 + 72);
    *(v7 + 8) = *(a2 + v6 + 64);
    *(v7 + 9) = v20;
    v22 = *(a2 + v6 + 88);
    *(v7 + 10) = *(a2 + v6 + 80);
    *(v7 + 11) = v22;
    *(v7 + 6) = *(a2 + v6 + 96);
    v10 = *(a2 + v6 + 120);
    *(v7 + 14) = *(a2 + v6 + 112);
    *(v7 + 15) = v10;
    v7[128] = *(a2 + v6 + 128);
    v7[152] = *(a2 + v6 + 152);
    v11 = *(a2 + v6 + 144);
    *(v7 + 17) = *(a2 + v6 + 136);
    *(v7 + 18) = v11;
    v12 = type metadata accessor for MEProgram.Builder(0);
    v13 = v12[21];
    v14 = type metadata accessor for CaptureList();
    v17 = *(*(v14 - 8) + 16);

    v17(&v7[v13], &v8[v13], v14);
    *&v7[v12[22]] = *&v8[v12[22]];
    v7[v12[23]] = v8[v12[23]];
    *&v7[v12[24]] = *&v8[v12[24]];
    *&v7[v12[25]] = *&v8[v12[25]];
    v15 = a3[7];
    *(v5 + a3[6]) = *(a2 + a3[6]);
    *(v5 + v15) = *(a2 + v15);
  }

  return v5;
}

uint64_t destroy for Compiler.ByteCodeGen(void *a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);

  v5 = *(type metadata accessor for MEProgram.Builder(0) + 84);
  v6 = type metadata accessor for CaptureList();
  (*(*(v6 - 8) + 8))(&v4[v5], v6);
}

void *initializeWithCopy for Compiler.ByteCodeGen(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 4) = *(a2 + v4 + 8);
  v7 = *(a2 + v4 + 24);
  *(v5 + 2) = *(a2 + v4 + 16);
  *(v5 + 3) = v7;
  v16 = *(a2 + v4 + 40);
  *(v5 + 4) = *(a2 + v4 + 32);
  *(v5 + 5) = v16;
  v17 = *(a2 + v4 + 56);
  *(v5 + 6) = *(a2 + v4 + 48);
  *(v5 + 7) = v17;
  v18 = *(a2 + v4 + 72);
  *(v5 + 8) = *(a2 + v4 + 64);
  *(v5 + 9) = v18;
  v19 = *(a2 + v4 + 88);
  *(v5 + 10) = *(a2 + v4 + 80);
  *(v5 + 11) = v19;
  *(v5 + 6) = *(a2 + v4 + 96);
  v8 = *(a2 + v4 + 120);
  *(v5 + 14) = *(a2 + v4 + 112);
  *(v5 + 15) = v8;
  v5[128] = *(a2 + v4 + 128);
  v5[152] = *(a2 + v4 + 152);
  v9 = *(a2 + v4 + 144);
  *(v5 + 17) = *(a2 + v4 + 136);
  *(v5 + 18) = v9;
  v10 = type metadata accessor for MEProgram.Builder(0);
  v11 = v10[21];
  v12 = type metadata accessor for CaptureList();
  v15 = *(*(v12 - 8) + 16);

  v15(&v5[v11], &v6[v11], v12);
  *&v5[v10[22]] = *&v6[v10[22]];
  v5[v10[23]] = v6[v10[23]];
  *&v5[v10[24]] = *&v6[v10[24]];
  *&v5[v10[25]] = *&v6[v10[25]];
  v13 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v13) = *(a2 + v13);

  return a1;
}

void *assignWithCopy for Compiler.ByteCodeGen(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);

  v7[8] = v8[8];
  v7[9] = v8[9];
  *(v7 + 2) = *(v8 + 2);

  *(v7 + 3) = *(v8 + 3);

  *(v7 + 4) = *(v8 + 4);

  *(v7 + 5) = *(v8 + 5);

  *(v7 + 6) = *(v8 + 6);

  *(v7 + 7) = *(v8 + 7);

  *(v7 + 8) = *(v8 + 8);

  *(v7 + 9) = *(v8 + 9);

  *(v7 + 10) = *(v8 + 10);

  *(v7 + 11) = *(v8 + 11);

  *(v7 + 12) = *(v8 + 12);
  *(v7 + 13) = *(v8 + 13);
  *(v7 + 14) = *(v8 + 14);
  v9 = *(v8 + 15);
  v7[128] = v8[128];
  *(v7 + 15) = v9;
  *(v7 + 17) = *(v8 + 17);
  v10 = *(v8 + 18);
  v7[152] = v8[152];
  *(v7 + 18) = v10;
  v11 = type metadata accessor for MEProgram.Builder(0);
  v12 = v11[21];
  v13 = type metadata accessor for CaptureList();
  (*(*(v13 - 8) + 24))(&v7[v12], &v8[v12], v13);
  *&v7[v11[22]] = *&v8[v11[22]];

  v7[v11[23]] = v8[v11[23]];
  *&v7[v11[24]] = *&v8[v11[24]];

  *&v7[v11[25]] = *&v8[v11[25]];

  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void *initializeWithTake for Compiler.ByteCodeGen(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  *(v7 + 4) = *(a2 + v6 + 8);
  v9 = *(a2 + v6 + 32);
  *(v7 + 1) = *(a2 + v6 + 16);
  *(v7 + 2) = v9;
  v10 = *(a2 + v6 + 64);
  *(v7 + 3) = *(a2 + v6 + 48);
  *(v7 + 4) = v10;
  v11 = *(a2 + v6 + 96);
  *(v7 + 5) = *(a2 + v6 + 80);
  *(v7 + 6) = v11;
  v12 = *(a2 + v6 + 120);
  *(v7 + 14) = *(a2 + v6 + 112);
  *(v7 + 15) = v12;
  v7[128] = *(a2 + v6 + 128);
  v13 = *(a2 + v6 + 144);
  *(v7 + 17) = *(a2 + v6 + 136);
  *(v7 + 18) = v13;
  v7[152] = *(a2 + v6 + 152);
  v14 = type metadata accessor for MEProgram.Builder(0);
  v15 = v14[21];
  v16 = type metadata accessor for CaptureList();
  (*(*(v16 - 8) + 32))(&v7[v15], &v8[v15], v16);
  *&v7[v14[22]] = *&v8[v14[22]];
  v7[v14[23]] = v8[v14[23]];
  *&v7[v14[24]] = *&v8[v14[24]];
  *&v7[v14[25]] = *&v8[v14[25]];
  v17 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

void *assignWithTake for Compiler.ByteCodeGen(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);

  v7[8] = v8[8];
  v7[9] = v8[9];
  *(v7 + 2) = *(v8 + 2);

  *(v7 + 3) = *(v8 + 3);

  *(v7 + 4) = *(v8 + 4);

  *(v7 + 5) = *(v8 + 5);

  *(v7 + 6) = *(v8 + 6);

  *(v7 + 7) = *(v8 + 7);

  *(v7 + 8) = *(v8 + 8);

  *(v7 + 9) = *(v8 + 9);

  *(v7 + 10) = *(v8 + 10);

  *(v7 + 11) = *(v8 + 11);

  *(v7 + 6) = *(v8 + 6);
  v9 = *(v8 + 15);
  *(v7 + 14) = *(v8 + 14);
  *(v7 + 15) = v9;
  v7[128] = v8[128];
  v10 = *(v8 + 18);
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 18) = v10;
  v7[152] = v8[152];
  v11 = type metadata accessor for MEProgram.Builder(0);
  v12 = v11[21];
  v13 = type metadata accessor for CaptureList();
  (*(*(v13 - 8) + 40))(&v7[v12], &v8[v12], v13);
  *&v7[v11[22]] = *&v8[v11[22]];

  v7[v11[23]] = v8[v11[23]];
  *&v7[v11[24]] = *&v8[v11[24]];

  *&v7[v11[25]] = *&v8[v11[25]];

  v14 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v14) = *(a2 + v14);
  return a1;
}

uint64_t sub_18E5E40D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MEProgram.Builder(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_18E5E4194(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MEProgram.Builder(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for Compiler.ByteCodeGen(uint64_t a1)
{
  result = type metadata accessor for MEProgram.Builder(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuantifyPayload.PayloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuantifyPayload.PayloadType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Instruction.OpCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Instruction.OpCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for DefaultSearcherState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v7 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RangesSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v3 - 8);
  v6 = *(v5 + 80);
  v7 = *(v4 + 64) + v6;
  v8 = *(v5 + 64);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 & ~v6) + v8 + v11;
  v13 = (v6 | *(v4 + 80) | *(v10 + 80));
  if (v13 > 7 || ((v6 | *(v4 + 80) | *(v10 + 80)) & 0x100000) != 0 || (v12 & ~v11) + *(*(v9 - 8) + 64) > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    v19 = (v16 + ((v13 + 16) & ~v13));
  }

  else
  {
    v17 = ~v6;
    v18 = ~v11;
    v19 = a1;
    v21 = v9;
    (*(v4 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v5 + 16))((a1 + v7) & v17, (a2 + v7) & v17, v3);
    (*(v10 + 16))((a1 + v12) & v18, (a2 + v12) & v18, v21);
  }

  return v19;
}

uint64_t destroy for RangesSequence.Iterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 8;
  (*v5)(a1, AssociatedTypeWitness);
  v6 = *(v5 + 56);
  v7 = *(v3 - 8);
  v8 = v7 + 8;
  v9 = *(v7 + 80);
  v10 = v6 + v9;
  (*(v7 + 8))((v6 + v9 + a1) & ~v9, v3);
  v11 = *(v8 + 56);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = (v11 + a1 + *(v13 + 80) + (v10 & ~v9)) & ~*(v13 + 80);

  return v14(v15, v12);
}

uint64_t initializeWithCopy for RangesSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 16;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 48);
  v9 = *(v5 - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  (*(v9 + 16))((v8 + v11 + a1) & ~v11, (v8 + v11 + a2) & ~v11, v5);
  v13 = *(v10 + 48);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  (*(v15 + 16))(((v12 & ~v11) + v13 + *(v15 + 80) + a1) & ~*(v15 + 80), ((v12 & ~v11) + v13 + *(v15 + 80) + a2) & ~*(v15 + 80), v14);
  return a1;
}

uint64_t assignWithCopy for RangesSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 24;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 40);
  v9 = *(v5 - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  (*(v9 + 24))((v8 + v11 + a1) & ~v11, (v8 + v11 + a2) & ~v11, v5);
  v13 = *(v10 + 40);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  (*(v15 + 24))(((v12 & ~v11) + v13 + *(v15 + 80) + a1) & ~*(v15 + 80), ((v12 & ~v11) + v13 + *(v15 + 80) + a2) & ~*(v15 + 80), v14);
  return a1;
}

uint64_t initializeWithTake for RangesSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 32;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 32);
  v9 = *(v5 - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  (*(v9 + 32))((v8 + v11 + a1) & ~v11, (v8 + v11 + a2) & ~v11, v5);
  v13 = *(v10 + 32);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  (*(v15 + 32))(((v12 & ~v11) + v13 + *(v15 + 80) + a1) & ~*(v15 + 80), ((v12 & ~v11) + v13 + *(v15 + 80) + a2) & ~*(v15 + 80), v14);
  return a1;
}

uint64_t assignWithTake for RangesSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 40;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 24);
  v9 = *(v5 - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  (*(v9 + 40))((v8 + v11 + a1) & ~v11, (v8 + v11 + a2) & ~v11, v5);
  v13 = *(v10 + 24);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  (*(v15 + 40))(((v12 & ~v11) + v13 + *(v15 + 80) + a1) & ~*(v15 + 80), ((v12 & ~v11) + v13 + *(v15 + 80) + a2) & ~*(v15 + 80), v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for RangesSequence.Iterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  v31 = *(v6 + 84);
  if (v8 <= v31)
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v12;
  v16 = (v15 & ~v12) + *(v7 + 64) + v13;
  v17 = a1;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v18 = (v16 & ~v13) + *(v10 + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v14)
      {
LABEL_31:
        if (v9 >= v11)
        {
          v27 = v31;
          if (v31 >= v8)
          {
            v29 = v30;
            v28 = *(v6 + 48);
          }

          else
          {
            v28 = *(v7 + 48);
            v17 = ((a1 + v15) & ~v12);
            v27 = v8;
            v29 = v4;
          }

          return v28(v17, v27, v29);
        }

        else
        {
          v25 = *(v10 + 48);

          return v25((a1 + v16) & ~v13);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = (v16 & ~v13) + *(v10 + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v14 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for RangesSequence.Iterator(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v8 = *(v5 - 8);
  v39 = v8;
  v9 = *(v8 + 84);
  v38 = *(v7 + 84);
  if (v9 <= v38)
  {
    v10 = *(v7 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v8 + 80);
  v16 = *(v7 + 64) + v15;
  v17 = (v16 & ~v15) + *(v8 + 64);
  v18 = *(v11 + 80);
  v19 = ((v17 + v18) & ~v18) + *(v11 + 64);
  v20 = a3 - v14;
  if (a3 <= v14)
  {
    v22 = 0;
    v21 = a1;
  }

  else
  {
    v21 = a1;
    if (v19 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v14 < a2)
  {
    v23 = ~v14 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << (8 * v19));
        bzero(v21, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *v21 = v27;
            if (v22 > 1)
            {
LABEL_59:
              if (v22 == 2)
              {
                *&v21[v19] = v24;
              }

              else
              {
                *&v21[v19] = v24;
              }

              return;
            }
          }

          else
          {
            *v21 = v23;
            if (v22 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *v21 = v27;
        v21[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(v21, v19);
      *v21 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v22)
    {
      v21[v19] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&v21[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&v21[v19] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v22)
  {
    goto LABEL_33;
  }

  v21[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 >= v13)
  {
    if (v10 >= a2)
    {
      v32 = v38;
      if (v38 >= v9)
      {
        v36 = v37;
        v33 = *(v7 + 56);
        v34 = v21;
        v35 = a2;
      }

      else
      {
        v33 = *(v39 + 56);
        v34 = (&v21[v16] & ~v15);
        v35 = a2;
        v32 = v9;
        v36 = v5;
      }

      v33(v34, v35, v32, v36);
    }

    else
    {
      if (v17 <= 3)
      {
        v29 = ~(-1 << (8 * v17));
      }

      else
      {
        v29 = -1;
      }

      if (v17)
      {
        v30 = v29 & (~v10 + a2);
        if (v17 <= 3)
        {
          v31 = v17;
        }

        else
        {
          v31 = 4;
        }

        bzero(v21, v17);
        if (v31 > 2)
        {
          if (v31 == 3)
          {
            *v21 = v30;
            v21[2] = BYTE2(v30);
          }

          else
          {
            *v21 = v30;
          }
        }

        else if (v31 == 1)
        {
          *v21 = v30;
        }

        else
        {
          *v21 = v30;
        }
      }
    }
  }

  else
  {
    v28 = *(v12 + 56);

    v28(&v21[v17 + v18] & ~v18, a2);
  }
}

uint64_t type metadata completion function for RegexRangesSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = (a4)(319, *(a1 + 16), a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RegexRangesSequence.Iterator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Executor.Matches.Iterator(0, *(a3 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *a2;
  *a1 = *a2;
  if ((v7 & 0x20000) != 0)
  {
    a1 = v8 + ((v7 + 16) & ~v7);
  }

  else
  {
    v9 = v6;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v10 = type metadata accessor for MEProgram(0);
    v11 = v10[8];
    v12 = type metadata accessor for CaptureList();
    v13 = *(*(v12 - 8) + 16);

    v13(a1 + v11, a2 + v11, v12);
    *(a1 + v10[9]) = *(a2 + v10[9]);
    *(a1 + v10[10]) = *(a2 + v10[10]);
    *(a1 + v10[11]) = *(a2 + v10[11]);
    v14 = v10[12];
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v16 + 1);
    *v15 = *v16;
    *(v15 + 8) = v17;
    v18 = *(v16 + 3);
    *(v15 + 16) = *(v16 + 2);
    *(v15 + 24) = v18;
    v28 = *(v16 + 5);
    *(v15 + 32) = *(v16 + 4);
    *(v15 + 40) = v28;
    *(v15 + 48) = v16[48];
    v30 = *(v16 + 8);
    *(v15 + 56) = *(v16 + 7);
    *(v15 + 64) = v30;
    *(v15 + 72) = *(v16 + 9);
    *(a1 + v10[13]) = *(a2 + v10[13]);
    v19 = *(v9 + 28);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 8) = v22;
    *(v20 + 16) = *(v21 + 1);
    *(v20 + 32) = v21[32];
    v26 = *(v21 + 6);
    *(v20 + 40) = *(v21 + 5);
    *(v20 + 48) = v26;
    *(v20 + 56) = *(v21 + 7);
    *(v20 + 64) = v21[64];
    *(v20 + 72) = *(v21 + 72);
    *(v20 + 88) = *(v21 + 88);
    v33 = v9;
    v23 = *(v21 + 14);
    *(v20 + 104) = *(v21 + 13);
    *(v20 + 112) = v23;
    v24 = *(v21 + 16);
    *(v20 + 120) = *(v21 + 15);
    *(v20 + 128) = v24;
    v27 = *(v21 + 18);
    *(v20 + 136) = *(v21 + 17);
    *(v20 + 144) = v27;
    *(v20 + 152) = v21[152];
    v29 = *(v21 + 21);
    *(v20 + 160) = *(v21 + 20);
    *(v20 + 168) = v29;
    v31 = *(v21 + 23);
    *(v20 + 176) = *(v21 + 22);
    *(v20 + 184) = v31;
    *(v20 + 200) = v21[200];
    *(v20 + 192) = *(v21 + 24);
    v32 = *(v21 + 26);

    MEMORY[0x193ACF410](v32);
    *(v20 + 208) = v32;
    *(a1 + *(v33 + 32)) = *(a2 + *(v33 + 32));
  }

  return a1;
}

void destroy for RegexRangesSequence.Iterator(char *a1, uint64_t a2)
{

  v4 = *(type metadata accessor for MEProgram(0) + 32);
  v5 = type metadata accessor for CaptureList();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);

  type metadata accessor for Executor.Matches.Iterator(0, *(a2 + 16), v6, v7);

  JUMPOUT(0x193ACF400);
}

uint64_t initializeWithCopy for RegexRangesSequence.Iterator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  v10 = *(*(v9 - 8) + 16);

  v10(a1 + v8, a2 + v8, v9);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  *(a1 + v7[11]) = *(a2 + v7[11]);
  v11 = v7[12];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v29 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 8) = v29;
  v14 = *(v13 + 3);
  *(v12 + 16) = *(v13 + 2);
  *(v12 + 24) = v14;
  v15 = *(v13 + 5);
  *(v12 + 32) = *(v13 + 4);
  *(v12 + 40) = v15;
  *(v12 + 48) = v13[48];
  v16 = *(v13 + 8);
  *(v12 + 56) = *(v13 + 7);
  *(v12 + 64) = v16;
  *(v12 + 72) = *(v13 + 9);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  v32 = type metadata accessor for Executor.Matches.Iterator(0, *(a3 + 16), v17, v18);
  v19 = *(v32 + 28);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 8) = v22;
  *(v20 + 16) = *(v21 + 1);
  *(v20 + 32) = v21[32];
  v23 = *(v21 + 6);
  *(v20 + 40) = *(v21 + 5);
  *(v20 + 48) = v23;
  *(v20 + 64) = v21[64];
  *(v20 + 56) = *(v21 + 7);
  *(v20 + 72) = *(v21 + 72);
  *(v20 + 88) = *(v21 + 88);
  v24 = *(v21 + 14);
  *(v20 + 104) = *(v21 + 13);
  *(v20 + 112) = v24;
  v25 = *(v21 + 16);
  *(v20 + 120) = *(v21 + 15);
  *(v20 + 128) = v25;
  v26 = *(v21 + 18);
  *(v20 + 136) = *(v21 + 17);
  *(v20 + 144) = v26;
  *(v20 + 152) = v21[152];
  v27 = *(v21 + 21);
  *(v20 + 160) = *(v21 + 20);
  *(v20 + 168) = v27;
  v30 = *(v21 + 23);
  *(v20 + 176) = *(v21 + 22);
  *(v20 + 184) = v30;
  *(v20 + 192) = *(v21 + 24);
  *(v20 + 200) = v21[200];
  v31 = *(v21 + 26);

  MEMORY[0x193ACF410](v31);
  *(v20 + 208) = v31;
  *(a1 + *(v32 + 32)) = *(a2 + *(v32 + 32));
  return a1;
}

uint64_t *assignWithCopy for RegexRangesSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[1] = v6;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 24))(a1 + v8, a2 + v8, v9);
  *(a1 + v7[9]) = *(a2 + v7[9]);

  *(a1 + v7[10]) = *(a2 + v7[10]);

  *(a1 + v7[11]) = *(a2 + v7[11]);
  v10 = v7[12];
  v11 = a1 + v10;
  v12 = a2 + v10;
  *(a1 + v10) = *(a2 + v10);

  *(v11 + 1) = *(v12 + 1);

  *(v11 + 2) = *(v12 + 2);

  *(v11 + 3) = *(v12 + 3);

  *(v11 + 4) = *(v12 + 4);

  *(v11 + 5) = *(v12 + 5);

  v11[48] = v12[48];
  *(v11 + 7) = *(v12 + 7);

  *(v11 + 8) = *(v12 + 8);

  *(v11 + 9) = *(v12 + 9);

  *(a1 + v7[13]) = *(a2 + v7[13]);

  v15 = type metadata accessor for Executor.Matches.Iterator(0, *(a3 + 16), v13, v14);
  v16 = *(v15 + 28);
  v17 = a1 + v16;
  v18 = a2 + v16;
  *v17 = *(a2 + v16);
  *(v17 + 1) = *(a2 + v16 + 8);

  *(v17 + 2) = *(v18 + 2);
  *(v17 + 3) = *(v18 + 3);
  v17[32] = v18[32];
  *(v17 + 5) = *(v18 + 5);

  *(v17 + 6) = *(v18 + 6);

  v19 = *(v18 + 7);
  v17[64] = v18[64];
  *(v17 + 7) = v19;
  *(v17 + 9) = *(v18 + 9);
  *(v17 + 10) = *(v18 + 10);
  *(v17 + 11) = *(v18 + 11);
  *(v17 + 12) = *(v18 + 12);
  *(v17 + 13) = *(v18 + 13);

  *(v17 + 14) = *(v18 + 14);

  *(v17 + 15) = *(v18 + 15);

  *(v17 + 16) = *(v18 + 16);

  *(v17 + 17) = *(v18 + 17);

  *(v17 + 18) = *(v18 + 18);

  v17[152] = v18[152];
  *(v17 + 20) = *(v18 + 20);

  *(v17 + 21) = *(v18 + 21);

  *(v17 + 22) = *(v18 + 22);

  *(v17 + 23) = *(v18 + 23);

  *(v17 + 24) = *(v18 + 24);

  v17[200] = v18[200];
  v20 = *(v17 + 26);
  v21 = *(v18 + 26);
  MEMORY[0x193ACF410](v21);
  *(v17 + 26) = v21;
  MEMORY[0x193ACF400](v20);
  *(a1 + *(v15 + 32)) = *(a2 + *(v15 + 32));
  return a1;
}

uint64_t initializeWithTake for RegexRangesSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  *(a1 + v7[11]) = *(a2 + v7[11]);
  v10 = v7[12];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[4];
  v11[3] = v12[3];
  v11[4] = v13;
  v14 = v12[2];
  v11[1] = v12[1];
  v11[2] = v14;
  *v11 = *v12;
  *(a1 + v7[13]) = *(a2 + v7[13]);
  v17 = type metadata accessor for Executor.Matches.Iterator(0, *(a3 + 16), v15, v16);
  v18 = *(v17 + 28);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v20 + 16);
  *v19 = *v20;
  *(v19 + 16) = v21;
  v22 = *(v20 + 80);
  *(v19 + 64) = *(v20 + 64);
  *(v19 + 80) = v22;
  v23 = *(v20 + 48);
  *(v19 + 32) = *(v20 + 32);
  *(v19 + 48) = v23;
  v24 = *(v20 + 144);
  *(v19 + 128) = *(v20 + 128);
  *(v19 + 144) = v24;
  v25 = *(v20 + 112);
  *(v19 + 96) = *(v20 + 96);
  *(v19 + 112) = v25;
  *(v19 + 208) = *(v20 + 208);
  v26 = *(v20 + 192);
  *(v19 + 176) = *(v20 + 176);
  *(v19 + 192) = v26;
  *(v19 + 160) = *(v20 + 160);
  *(a1 + *(v17 + 32)) = *(a2 + *(v17 + 32));
  return a1;
}

uint64_t *assignWithTake for RegexRangesSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v6 = type metadata accessor for MEProgram(0);
  v7 = v6[8];
  v8 = type metadata accessor for CaptureList();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  *(a1 + v6[9]) = *(a2 + v6[9]);

  *(a1 + v6[10]) = *(a2 + v6[10]);

  *(a1 + v6[11]) = *(a2 + v6[11]);
  v9 = v6[12];
  v10 = a1 + v9;
  v11 = a2 + v9;
  *(a1 + v9) = *(a2 + v9);

  *(v10 + 1) = *(v11 + 1);

  *(v10 + 2) = *(v11 + 2);

  *(v10 + 3) = *(v11 + 3);

  *(v10 + 4) = *(v11 + 4);

  *(v10 + 5) = *(v11 + 5);

  v10[48] = v11[48];
  *(v10 + 7) = *(v11 + 7);

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 9) = *(v11 + 9);

  *(a1 + v6[13]) = *(a2 + v6[13]);

  v14 = type metadata accessor for Executor.Matches.Iterator(0, *(a3 + 16), v12, v13);
  v15 = *(v14 + 28);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a2 + v15 + 8);
  *v16 = *(a2 + v15);
  *(v16 + 1) = v18;

  *(v16 + 1) = *(v17 + 1);
  v16[32] = v17[32];
  *(v16 + 5) = *(v17 + 5);

  *(v16 + 6) = *(v17 + 6);

  *(v16 + 7) = *(v17 + 7);
  v16[64] = v17[64];
  *(v16 + 72) = *(v17 + 72);
  *(v16 + 88) = *(v17 + 88);
  *(v16 + 13) = *(v17 + 13);

  *(v16 + 14) = *(v17 + 14);

  *(v16 + 15) = *(v17 + 15);

  *(v16 + 16) = *(v17 + 16);

  *(v16 + 17) = *(v17 + 17);

  *(v16 + 18) = *(v17 + 18);

  v16[152] = v17[152];
  *(v16 + 20) = *(v17 + 20);

  *(v16 + 21) = *(v17 + 21);

  *(v16 + 22) = *(v17 + 22);

  *(v16 + 23) = *(v17 + 23);

  *(v16 + 24) = *(v17 + 24);

  v16[200] = v17[200];
  v19 = *(v16 + 26);
  *(v16 + 26) = *(v17 + 26);
  MEMORY[0x193ACF400](v19);
  *(a1 + *(v14 + 32)) = *(a2 + *(v14 + 32));
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_162Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = a4(0, *(a3 + 16));
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_163Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v7 = (a5)(0, *(a4 + 16), a3);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for SplitSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RangesSequence.Iterator(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SplitSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v33 = *(v3 - 8);
  v6 = *(v33 + 80);
  v31 = *(v5 + 64) + v6;
  v7 = *(v33 + 64);
  v32 = swift_getAssociatedTypeWitness();
  v8 = *(*(v32 - 8) + 80);
  v29 = (v31 & ~v6) + v7 + v8;
  v30 = *(v32 - 8);
  v9 = *(v30 + 64);
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = v5;
  v12 = *(v10 - 8);
  v13 = *(v12 + 80);
  v14 = (v29 & ~v8) + v9 + v13;
  v15 = *(v12 + 64) + 7;
  v16 = v6 | *(v11 + 80) | v8;
  v17 = v13 | v16 & 0xF8;
  if (v17 > 7 || ((v16 | *(v12 + 80)) & 0x100000) != 0 || ((((v15 + (v14 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    v22 = (v20 + (((v17 | 7) + 16) & ~(v17 | 7)));
  }

  else
  {
    v21 = ~v13;
    v22 = a1;
    v28 = v10;
    (*(v11 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v33 + 16))((a1 + v31) & ~v6, (a2 + v31) & ~v6, v3);
    (*(v30 + 16))((a1 + v29) & ~v8, (a2 + v29) & ~v8, v32);
    (*(v12 + 16))((a1 + v14) & v21, (a2 + v14) & v21, v28);
    v23 = ((v15 + ((a1 + v14) & v21)) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v15 + ((a2 + v14) & v21)) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 9) = *(v26 + 9);
  }

  return v22;
}

uint64_t destroy for SplitSequence.Iterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 8;
  (*v5)(a1, AssociatedTypeWitness);
  v6 = *(v5 + 56);
  v7 = *(v3 - 8);
  v8 = v7 + 8;
  v9 = *(v7 + 80);
  v10 = v6 + v9;
  (*(v7 + 8))((v6 + v9 + a1) & ~v9, v3);
  v11 = v10 & ~v9;
  v12 = *(v8 + 56);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = v14 + 8;
  v16 = *(v14 + 80);
  v17 = v11 + v12 + v16;
  (*(v14 + 8))((v17 + a1) & ~v16, v13);
  v18 = *(v15 + 56);
  swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v22 = (v18 + a1 + *(v20 + 80) + (v17 & ~v16)) & ~*(v20 + 80);

  return v21(v22, v19);
}

uint64_t initializeWithCopy for SplitSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 16;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 48);
  v9 = *(v5 - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  (*(v9 + 16))((v8 + v11 + a1) & ~v11, (v8 + v11 + a2) & ~v11, v5);
  v13 = v12 & ~v11;
  v14 = *(v10 + 48);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = v16 + 16;
  v18 = *(v16 + 80);
  v19 = v13 + v14 + v18;
  (*(v16 + 16))((v19 + a1) & ~v18, (v19 + a2) & ~v18, v15);
  v20 = *(v17 + 48);
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(v21 - 8);
  v23 = v22 + 16;
  v24 = *(v22 + 80);
  v25 = (v19 & ~v18) + v20 + v24;
  v26 = (v25 + a1) & ~v24;
  v27 = (v25 + a2) & ~v24;
  (*(v22 + 16))(v26, v27, v21);
  v28 = *(v23 + 48) + 7;
  v29 = v28 + v26;
  v30 = ((v28 + v27) & 0xFFFFFFFFFFFFFFF8);
  v29 &= 0xFFFFFFFFFFFFFFF8;
  *v29 = *v30;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 9) = *(v32 + 9);
  return a1;
}

uint64_t assignWithCopy for SplitSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 24;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 40);
  v9 = *(v5 - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  (*(v9 + 24))((v8 + v11 + a1) & ~v11, (v8 + v11 + a2) & ~v11, v5);
  v13 = v12 & ~v11;
  v14 = *(v10 + 40);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = v13 + v14 + v18;
  (*(v16 + 24))((v19 + a1) & ~v18, (v19 + a2) & ~v18, v15);
  v20 = *(v17 + 40);
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(v21 - 8);
  v23 = v22 + 24;
  v24 = *(v22 + 80);
  v25 = (v19 & ~v18) + v20 + v24;
  v26 = (v25 + a1) & ~v24;
  v27 = (v25 + a2) & ~v24;
  (*(v22 + 24))(v26, v27, v21);
  v28 = *(v23 + 40) + 7;
  v29 = v28 + v26;
  v30 = ((v28 + v27) & 0xFFFFFFFFFFFFFFF8);
  v29 &= 0xFFFFFFFFFFFFFFF8;
  *v29 = *v30;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 9) = *(v32 + 9);
  return a1;
}

uint64_t initializeWithTake for SplitSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 32;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 32);
  v9 = *(v5 - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  (*(v9 + 32))((v8 + v11 + a1) & ~v11, (v8 + v11 + a2) & ~v11, v5);
  v13 = v12 & ~v11;
  v14 = *(v10 + 32);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = v16 + 32;
  v18 = *(v16 + 80);
  v19 = v13 + v14 + v18;
  (*(v16 + 32))((v19 + a1) & ~v18, (v19 + a2) & ~v18, v15);
  v20 = *(v17 + 32);
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(v21 - 8);
  v23 = v22 + 32;
  v24 = *(v22 + 80);
  v25 = (v19 & ~v18) + v20 + v24;
  v26 = (v25 + a1) & ~v24;
  v27 = (v25 + a2) & ~v24;
  (*(v22 + 32))(v26, v27, v21);
  v28 = *(v23 + 32) + 7;
  v29 = v28 + v26;
  v30 = ((v28 + v27) & 0xFFFFFFFFFFFFFFF8);
  v29 &= 0xFFFFFFFFFFFFFFF8;
  *v29 = *v30;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 9) = *(v32 + 9);
  return a1;
}

uint64_t assignWithTake for SplitSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 40;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 24);
  v9 = *(v5 - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  (*(v9 + 40))((v8 + v11 + a1) & ~v11, (v8 + v11 + a2) & ~v11, v5);
  v13 = v12 & ~v11;
  v14 = *(v10 + 24);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = v16 + 40;
  v18 = *(v16 + 80);
  v19 = v13 + v14 + v18;
  (*(v16 + 40))((v19 + a1) & ~v18, (v19 + a2) & ~v18, v15);
  v20 = *(v17 + 24);
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(v21 - 8);
  v23 = v22 + 40;
  v24 = *(v22 + 80);
  v25 = (v19 & ~v18) + v20 + v24;
  v26 = (v25 + a1) & ~v24;
  v27 = (v25 + a2) & ~v24;
  (*(v22 + 40))(v26, v27, v21);
  v28 = *(v23 + 24) + 7;
  v29 = v28 + v26;
  v30 = ((v28 + v27) & 0xFFFFFFFFFFFFFFF8);
  v29 &= 0xFFFFFFFFFFFFFFF8;
  *v29 = *v30;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 9) = *(v32 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for SplitSequence.Iterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v3 - 8);
  v43 = *(v5 + 84);
  v44 = *(v4 + 84);
  if (v43 <= v44)
  {
    v6 = *(v4 + 84);
  }

  else
  {
    v6 = *(v5 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v45 = v6;
  if (*(v7 + 84) <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = *(v7 + 84);
  v10 = v3;
  v11 = v8;
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(v5 + 80);
  v17 = *(v7 + 80);
  v18 = *(v13 + 80);
  v19 = *(*(v12 - 8) + 64);
  if (v15 <= 0xFE)
  {
    v20 = 254;
  }

  else
  {
    v20 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v4 + 64) + v16;
  v22 = (v21 & ~v16) + *(v5 + 64) + v17;
  v23 = (v22 & ~v17) + *(v7 + 64) + v18;
  v24 = v19 + 7;
  if (v20 < a2)
  {
    v25 = ((((v24 + (v23 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10;
    if (v25 <= 3)
    {
      v26 = ((a2 - v20 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *(a1 + v25);
        if (*(a1 + v25))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v29 = *(a1 + v25);
        if (v29)
        {
          goto LABEL_29;
        }
      }
    }

    else if (v28)
    {
      v29 = *(a1 + v25);
      if (*(a1 + v25))
      {
LABEL_29:
        v30 = (v29 - 1) << (8 * v25);
        if (v25 <= 3)
        {
          v31 = *a1;
        }

        else
        {
          v30 = 0;
          v31 = *a1;
        }

        v40 = v20 + (v31 | v30);
        return (v40 + 1);
      }
    }
  }

  if (v11 != v20)
  {
    v37 = (a1 + v23) & ~v18;
    if (v14 == v20)
    {
      v38 = *(v13 + 48);

      return v38(v37);
    }

    v39 = *(((((v24 + v37) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v39 >= 2)
    {
      v40 = (v39 + 2147483646) & 0x7FFFFFFF;
      return (v40 + 1);
    }

    return 0;
  }

  if (v45 < v9)
  {
    v32 = *(v7 + 48);
    v33 = (a1 + v22) & ~v17;
    v34 = v9;
    v35 = AssociatedTypeWitness;

    return v32(v33, v34, v35);
  }

  if (v44 < v43)
  {
    v32 = *(v5 + 48);
    v33 = (a1 + v21) & ~v16;
    v34 = v43;
    v35 = v10;

    return v32(v33, v34, v35);
  }

  v41 = *(v4 + 48);

  return v41(a1);
}

void storeEnumTagSinglePayload for SplitSequence.Iterator(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v37 = v5;
  v6 = *(v4 - 8);
  v41 = v6;
  v38 = *(v6 + 84);
  v39 = *(v5 + 84);
  if (v38 <= v39)
  {
    v7 = *(v5 + 84);
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v40 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v10 = v9;
  swift_getAssociatedConformanceWitness();
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 64);
  if (v12 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v6 + 80);
  v16 = *(v8 + 80);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v14 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v14;
  }

  v20 = ((v13 + v15) & ~v15) + *(v6 + 64);
  v21 = ((v20 + v16) & ~v16) + *(v8 + 64) + v17;
  v22 = ((((v18 + 7 + (v21 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v19 >= a3)
  {
    v25 = 0;
  }

  else
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v19 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  if (v19 < a2)
  {
    v26 = ~v19 + a2;
    bzero(a1, ((((v18 + 7 + (v21 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10);
    if (v22 <= 3)
    {
      v27 = HIWORD(v26) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v22 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_31:
        if (v25 == 2)
        {
          *&a1[v22] = v27;
        }

        else
        {
          *&a1[v22] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_31;
      }
    }

    if (v25)
    {
      a1[v22] = v27;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *&a1[v22] = 0;
LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!v25)
  {
    goto LABEL_42;
  }

  a1[v22] = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v10 == v19)
  {
    if (v7 >= v40)
    {
      if (v7 < a2)
      {
        if (v20 <= 3)
        {
          v33 = ~(-1 << (8 * v20));
        }

        else
        {
          v33 = -1;
        }

        if (v20)
        {
          v34 = v33 & (~v7 + a2);
          if (v20 <= 3)
          {
            v35 = v20;
          }

          else
          {
            v35 = 4;
          }

          bzero(a1, v20);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              *a1 = v34;
              a1[2] = BYTE2(v34);
            }

            else
            {
              *a1 = v34;
            }
          }

          else if (v35 == 1)
          {
            *a1 = v34;
          }

          else
          {
            *a1 = v34;
          }
        }

        return;
      }

      if (v39 < v38)
      {
        v36 = *(v41 + 56);

        v36(&a1[v13 + v15] & ~v15, a2, v38, v4);
        return;
      }

      v28 = *(v37 + 56);
      v29 = a1;
      v30 = a2;
    }

    else
    {
      v28 = *(v8 + 56);
      v29 = (&a1[v20 + v16] & ~v16);
      v30 = a2;
    }

    v28(v29, v30);
    return;
  }

  v31 = &a1[v21] & ~v17;
  if (v12 == v19)
  {
    v32 = *(v11 + 56);

    v32(v31, a2);
  }

  else
  {
    *(((((v18 + 7 + v31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
  }
}

uint64_t destroy for Processor.SavePoint(void *a1)
{
}

uint64_t initializeWithCopy for Processor.SavePoint(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for Processor.SavePoint(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for Processor.SavePoint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for Processor.SavePoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Processor.SavePoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for StringLiteralBuilder(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for StringLiteralBuilder(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *assignWithTake for StringLiteralBuilder(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for StringLiteralBuilder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StringLiteralBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _CharacterClassModel.Representation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _CharacterClassModel.Representation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _CharacterClassModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _CharacterClassModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for CaptureTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  outlined copy of CaptureTransform.Closure(v3, v4, v5);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return a1;
}

uint64_t assignWithCopy for CaptureTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  outlined copy of CaptureTransform.Closure(v3, v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v8 = *(a1 + 32);
  *(a1 + 32) = v5;
  outlined consume of CaptureTransform.Closure(v6, v7, v8);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for CaptureTransform(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of CaptureTransform.Closure(v4, v5, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for CaptureTransform(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for CaptureTransform(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RegexCompilationError(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *assignWithCopy for RegexCompilationError(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *assignWithTake for RegexCompilationError(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for CaptureTransform.Closure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CaptureTransform.Closure(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Regex(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for Regex(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for SubstringSearcher.State(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t *assignWithCopy for SubstringSearcher.State(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  v4 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  a1[2] = v4;
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for SubstringSearcher.State(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for SubstringSearcher.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for SubstringSearcher.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Processor._StoredCapture(uint64_t result)
{
  if (*(result + 48))
  {
    return __swift_destroy_boxed_opaque_existential_0((result + 24));
  }

  return result;
}

uint64_t initializeWithCopy for Processor._StoredCapture(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  v3 = *(a2 + 48);
  if (v3)
  {
    *(result + 48) = v3;
    v4 = result;
    (**(v3 - 8))(result + 24, a2 + 24);
    result = v4;
  }

  else
  {
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
  }

  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t assignWithCopy for Processor._StoredCapture(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  v5 = *(a2 + 6);
  if (!*(a1 + 48))
  {
    if (v5)
    {
      *(a1 + 48) = v5;
      (**(v5 - 8))(a1 + 24, a2 + 24);
      goto LABEL_8;
    }

LABEL_7:
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v7;
    goto LABEL_8;
  }

  v6 = (a1 + 24);
  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(v6, a2 + 3);
LABEL_8:
  v8 = *(a2 + 7);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v8;
  return a1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 assignWithTake for Processor._StoredCapture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  if (*(a1 + 48))
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_0((a1 + 24));
    a1 = v3;
  }

  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return result;
}

uint64_t getEnumTagSinglePayload for Processor._StoredCapture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for Processor._StoredCapture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

void destroy for Processor(void *a1)
{

  JUMPOUT(0x193ACF400);
}

uint64_t initializeWithCopy for Processor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  v6 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v6;
  v7 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v7;
  *(a1 + 152) = *(a2 + 152);
  v8 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v8;
  v9 = *(a2 + 184);
  v11 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v9;
  *(a1 + 192) = v11;
  *(a1 + 200) = *(a2 + 200);
  v12 = *(a2 + 208);

  MEMORY[0x193ACF410](v12);
  *(a1 + 208) = v12;
  return a1;
}

uint64_t assignWithCopy for Processor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  v5 = *(a1 + 208);
  v6 = *(a2 + 208);
  MEMORY[0x193ACF410](v6);
  *(a1 + 208) = v6;
  MEMORY[0x193ACF400](v5);
  return a1;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for Processor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  v5 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  MEMORY[0x193ACF400](v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for Processor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Processor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Processor.Registers(void *a1)
{
}

uint64_t initializeWithCopy for Processor.Registers(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v6;
  *(a1 + 72) = a2[9];

  return a1;
}

uint64_t *assignWithCopy for Processor.Registers(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  *(a1 + 48) = *(a2 + 48);
  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for Processor.Registers(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for Processor.Registers(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for Processor.Registers(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for TypedIndex(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TypedIndex(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1, a2);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for TypedIndex(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for TypedIndex(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
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
      if (v7)
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

uint64_t *initializeBufferWithCopyOfBuffer for LazyMapSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t destroy for LazyMapSequence(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for LazyMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t assignWithCopy for LazyMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t initializeWithTake for LazyMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for LazyMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for LazyMapSequence(_DWORD *a1, unsigned int a2, uint64_t a3)
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

_DWORD *storeEnumTagSinglePayload for LazyMapSequence(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Instruction and conformance Instruction()
{
  result = lazy protocol witness table cache variable for type Instruction and conformance Instruction;
  if (!lazy protocol witness table cache variable for type Instruction and conformance Instruction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Instruction and conformance Instruction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyHashableType and conformance AnyHashableType()
{
  result = lazy protocol witness table cache variable for type AnyHashableType and conformance AnyHashableType;
  if (!lazy protocol witness table cache variable for type AnyHashableType and conformance AnyHashableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyHashableType and conformance AnyHashableType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MatchingOptions.Representation and conformance MatchingOptions.Representation()
{
  result = lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation;
  if (!lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation;
  if (!lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation;
  if (!lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation;
  if (!lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchingOptions.Representation and conformance MatchingOptions.Representation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CaptureTransform and conformance CaptureTransform()
{
  result = lazy protocol witness table cache variable for type CaptureTransform and conformance CaptureTransform;
  if (!lazy protocol witness table cache variable for type CaptureTransform and conformance CaptureTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureTransform and conformance CaptureTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _CharacterClassModel and conformance _CharacterClassModel()
{
  result = lazy protocol witness table cache variable for type _CharacterClassModel and conformance _CharacterClassModel;
  if (!lazy protocol witness table cache variable for type _CharacterClassModel and conformance _CharacterClassModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CharacterClassModel and conformance _CharacterClassModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _CharacterClassModel.Representation and conformance _CharacterClassModel.Representation()
{
  result = lazy protocol witness table cache variable for type _CharacterClassModel.Representation and conformance _CharacterClassModel.Representation;
  if (!lazy protocol witness table cache variable for type _CharacterClassModel.Representation and conformance _CharacterClassModel.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CharacterClassModel.Representation and conformance _CharacterClassModel.Representation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Instruction.OpCode and conformance Instruction.OpCode()
{
  result = lazy protocol witness table cache variable for type Instruction.OpCode and conformance Instruction.OpCode;
  if (!lazy protocol witness table cache variable for type Instruction.OpCode and conformance Instruction.OpCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Instruction.OpCode and conformance Instruction.OpCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type QuantifyPayload.PayloadType and conformance QuantifyPayload.PayloadType()
{
  result = lazy protocol witness table cache variable for type QuantifyPayload.PayloadType and conformance QuantifyPayload.PayloadType;
  if (!lazy protocol witness table cache variable for type QuantifyPayload.PayloadType and conformance QuantifyPayload.PayloadType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuantifyPayload.PayloadType and conformance QuantifyPayload.PayloadType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SentinelValue and conformance SentinelValue()
{
  result = lazy protocol witness table cache variable for type SentinelValue and conformance SentinelValue;
  if (!lazy protocol witness table cache variable for type SentinelValue and conformance SentinelValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SentinelValue and conformance SentinelValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegexRepetitionBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RegexRepetitionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t destroy for TypedSetVector(void *a1)
{
}

uint64_t *initializeBufferWithCopyOfBuffer for TypedSetVector(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for TypedSetVector(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for TypedSetVector(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TypedSetVector(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TypedSetVector(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegexSemanticLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RegexSemanticLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MatchingOptions.SemanticLevel and conformance MatchingOptions.SemanticLevel()
{
  result = lazy protocol witness table cache variable for type MatchingOptions.SemanticLevel and conformance MatchingOptions.SemanticLevel;
  if (!lazy protocol witness table cache variable for type MatchingOptions.SemanticLevel and conformance MatchingOptions.SemanticLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchingOptions.SemanticLevel and conformance MatchingOptions.SemanticLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MatchMode and conformance MatchMode()
{
  result = lazy protocol witness table cache variable for type MatchMode and conformance MatchMode;
  if (!lazy protocol witness table cache variable for type MatchMode and conformance MatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchMode and conformance MatchMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type State and conformance State()
{
  result = lazy protocol witness table cache variable for type State and conformance State;
  if (!lazy protocol witness table cache variable for type State and conformance State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type State and conformance State);
  }

  return result;
}

unint64_t _swift_string_processing_getScalarBitArrayIdx(unsigned int a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1 / 0x4400uLL;
  v4 = *a2;
  if (*a2 < v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = (a1 / 0x110uLL) & 0x3F;
  v6 = a2[v3 + 1];
  if (((v6 >> v5) & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = *(a3 + 2 * v3);
  if (v5)
  {
    v7 += vaddlv_u8(vcnt_s8((v6 << -v5)));
  }

  v8 = 5 * v7;
  v9 = &a2[5 * v7 + 1 + v4];
  v10 = v9[(a1 % 0x110) >> 6];
  if (((v10 >> (a1 % 0x110)) & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = (a1 % 0x110) & 0x3F;
  v12 = *(a3 + 2 * v4 + 2 * v8 + 2 * ((a1 % 0x110) >> 6));
  v13 = v12 + vaddlv_u8(vcnt_s8((v10 << -v11)));
  if (v11)
  {
    v12 = v13;
  }

  return (v9[4] >> 16) + v12;
}

uint64_t _swift_string_processing_getScript(unsigned int a1)
{
  v1 = 0;
  v2 = 1708;
  while (1)
  {
    v3 = v1 + (v2 - v1) / 2;
    v4 = v3;
    v5 = v3 == 1708 ? 1114111 : (_swift_stdlib_scripts[v3 + 1] & 0x1FFFFF) - 1;
    v6 = _swift_stdlib_scripts[v3];
    if ((v6 & 0x1FFFFF) <= a1 && v5 >= a1)
    {
      break;
    }

    if ((v6 & 0x1FFFFF) <= a1)
    {
      v8 = v2;
    }

    else
    {
      v8 = v3 - 1;
    }

    if (v5 < a1)
    {
      v1 = v4 + 1;
    }

    else
    {
      v2 = v8;
    }

    if (v2 < v1)
    {
      return 255;
    }
  }

  return v6 >> 21;
}

char *_swift_string_processing_getScriptExtensions(unsigned int a1, _BYTE *a2)
{
  ScalarBitArrayIdx = _swift_string_processing_getScalarBitArrayIdx(a1, _swift_stdlib_script_extensions, &_swift_stdlib_script_extensions_ranks);
  if (ScalarBitArrayIdx == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = _swift_stdlib_script_extensions_data_indices[ScalarBitArrayIdx];
  *a2 = v5 >> 11;
  return &_swift_stdlib_script_extensions_data + (v5 & 0x7FF);
}

Swift::Int_optional __swiftcall CaptureList.indexOfCapture(named:)(Swift::String named)
{
  v1 = MEMORY[0x1EEE6DFF8](named._countAndFlagsBits, named._object);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::tuple_OpaquePointer_Bool __swiftcall PrettyPrinter.popMatchingOptions()()
{
  v0 = MEMORY[0x1EEE6E108]();
  result._0._rawValue = v0;
  result._1 = v1;
  return result;
}

Swift::String __swiftcall PrettyPrinter.finish()()
{
  v0 = MEMORY[0x1EEE6E140]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Character.lowercased()()
{
  v0 = MEMORY[0x1EEE68AC0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x1EEE68F80](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x1EEE68F88](a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x1EEE68FC8]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x1EEE690A0](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t Collection.subscript.getter()
{
  return MEMORY[0x1EEE69978]();
}

{
  return MEMORY[0x1EEE69980]();
}

uint64_t Substring.subscript.getter()
{
  return MEMORY[0x1EEE69D88]();
}

{
  return MEMORY[0x1EEE69D98]();
}