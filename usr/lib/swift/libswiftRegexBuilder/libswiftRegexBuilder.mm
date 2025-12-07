uint64_t BidirectionalCollection<>.wholeMatch<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14();
  a8(v16, a3, a5, a6, a7);
  return (*(v13 + 8))(v16, a5);
}

uint64_t BidirectionalCollection<>.firstRange<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v11 = BidirectionalCollection<>.firstRange<A>(of:)();
  (*(v7 + 8))(v10, a4);
  return v11;
}

uint64_t BidirectionalCollection<>.ranges<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v11 = BidirectionalCollection<>.ranges<A>(of:)();
  (*(v7 + 8))(v10, a4);
  return v11;
}

uint64_t BidirectionalCollection<>.split<A>(maxSplits:omittingEmptySubsequences:separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  v14 = BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  (*(v9 + 8))(v12, a6);
  return v14;
}

uint64_t BidirectionalCollection<>.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13();
  LOBYTE(a7) = a7(v15, a3, a4, a5, a6);
  (*(v12 + 8))(v15, a4);
  return a7 & 1;
}

uint64_t BidirectionalCollection<>.trimmingPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v11 = BidirectionalCollection<>.trimmingPrefix<A>(_:)();
  (*(v7 + 8))(v10, a4);
  return v11;
}

uint64_t BidirectionalCollection<>.firstMatch<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a5 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  BidirectionalCollection<>.firstMatch<A, B>(of:)();
  return (*(v8 + 8))(v11, a5);
}

uint64_t BidirectionalCollection<>.matches<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a5 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v12 = BidirectionalCollection<>.matches<A, B>(of:)();
  (*(v8 + 8))(v11, a5);
  return v12;
}

uint64_t RangeReplaceableCollection<>.trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  RangeReplaceableCollection<>.trimPrefix<A>(_:)();
  return (*(v8 + 8))(v11, a4);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(with:subrange:maxReplacements:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v20 = a8;
  v19 = a7;
  v18 = a11;
  v12 = *(a9 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)();
  return (*(v12 + 8))(v15, a9);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(with:maxReplacements:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[2] = a6;
  v18[1] = a5;
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
  return (*(v12 + 8))(v15, a7);
}

uint64_t RangeReplaceableCollection<>.replace<A, B>(with:maxReplacements:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = a6;
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
  return (*(v12 + 8))(v15, a7);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B, C>(subrange:maxReplacements:content:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  v25 = a8;
  v23 = a6;
  v24 = a7;
  v21 = a9;
  v22 = a3;
  v20 = a13;
  v14 = *(a11 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v15);
  RangeReplaceableCollection<>.replacing<A, B, C>(_:subrange:maxReplacements:with:)();
  return (*(v14 + 8))(v17, a11);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B, C>(maxReplacements:content:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v21 = a8;
  v19 = a6;
  v20 = a7;
  v18 = a11;
  v12 = *(a9 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  RangeReplaceableCollection<>.replacing<A, B, C>(_:maxReplacements:with:)();
  return (*(v12 + 8))(v15, a9);
}

uint64_t RangeReplaceableCollection<>.replace<A, B, C>(maxReplacements:content:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v20 = a8;
  v19 = a7;
  v18 = a11;
  v12 = *(a9 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  RangeReplaceableCollection<>.replace<A, B, C>(_:maxReplacements:with:)();
  return (*(v12 + 8))(v15, a9);
}

uint64_t StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)()
{
  return MEMORY[0x1EEE6E7D8]();
}

{
  return MEMORY[0x1EEE6E7E0]();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Anchor.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB01690](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Anchor.Kind(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB01690](v2);
  return Hasher._finalize()();
}

uint64_t Anchor.regex.getter()
{
  v1 = type metadata accessor for DSLTree.Atom.Assertion();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _RegexFactory();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = v0[1];
  _RegexFactory.init()();
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v11 = MEMORY[0x1E69E9338];
      }

      else
      {
        v11 = MEMORY[0x1E69E9368];
      }
    }

    else if (v9)
    {
      v11 = MEMORY[0x1E69E9360];
    }

    else
    {
      v11 = MEMORY[0x1E69E9350];
    }

    goto LABEL_16;
  }

  if (v9 > 5)
  {
    if (v9 != 6)
    {
      v12 = *(v2 + 104);
      if (v10)
      {
        v13 = MEMORY[0x1E69E9358];
      }

      else
      {
        v13 = MEMORY[0x1E69E9340];
      }

      goto LABEL_21;
    }

    v11 = MEMORY[0x1E69E9370];
  }

  else
  {
    if (v9 == 4)
    {
      v12 = *(v2 + 104);
      if (v10)
      {
        v13 = MEMORY[0x1E69E9348];
      }

      else
      {
        v13 = MEMORY[0x1E69E9330];
      }

LABEL_21:
      v12(v4, *v13, v1);
      goto LABEL_22;
    }

    v11 = MEMORY[0x1E69E9328];
  }

LABEL_16:
  (*(v2 + 104))(v4, *v11, v1);
LABEL_22:
  _RegexFactory.assertion<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void Anchor.inverted.getter(_BYTE *a1@<X8>)
{
  v2 = (v1[1] & 1) == 0;
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Lookahead.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v19 = a5;
  v20 = a6;
  v10 = type metadata accessor for _RegexFactory();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Regex();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  _RegexFactory.init()();
  v19(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  (*(v11 + 8))(v13, v10);
  return (*(v15 + 32))(v20, v17, v14);
}

uint64_t Lookahead.init<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(char *, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22 = a1;
  v25 = a6;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _RegexFactory();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Regex();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v18 = _RegexFactory.init()();
  v22(v18);
  v24(v10, a2, a3, v23);
  (*(v8 + 8))(v10, a3);
  (*(v11 + 8))(v13, v21);
  return (*(v15 + 32))(v25, v17, v14);
}

uint64_t static RegexComponentBuilder.buildBlock()()
{
  v0 = type metadata accessor for _RegexFactory();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.empty<A>()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t CharacterClass.regex.getter@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = type metadata accessor for _RegexFactory();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CharacterClass(0);
  outlined init with copy of DSLTree.Atom.CharacterClass?(v1 + *(v13 + 20), v8, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of DSLTree.Atom.CharacterClass?(v8, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    _RegexFactory.init()();
    _RegexFactory.customCharacterClass<A>(_:)();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    _RegexFactory.init()();
    _RegexFactory.characterClass<A>(_:)();
    (*(v3 + 8))(v5, v2);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for CharacterClass(uint64_t a1)
{
  result = type metadata singleton initialization cache for CharacterClass;
  if (!type metadata singleton initialization cache for CharacterClass)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CharacterClass.inverted.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for CharacterClass(0);
  outlined init with copy of DSLTree.Atom.CharacterClass?(v1 + *(v15 + 20), v5, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  v16 = *(v9 + 48);
  if (v16(v5, 1, v8) == 1)
  {
    outlined destroy of DSLTree.Atom.CharacterClass?(v5, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_4:
    outlined destroy of DSLTree.Atom.CharacterClass?(v7, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    v17 = v35;
    DSLTree.CustomCharacterClass.inverted.getter();
    v18 = *(v15 + 20);
    v19 = *(v9 + 56);
    v19(v17 + v18, 1, 1, v8);
    outlined destroy of DSLTree.Atom.CharacterClass?(v17 + v18, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    return (v19)(v17 + v18, 1, 1, v8);
  }

  v34 = v12;
  DSLTree.Atom.CharacterClass.inverted.getter();
  (*(v9 + 8))(v5, v8);
  if (v16(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v21 = *(v9 + 32);
  v33 = v21;
  v21(v14, v7, v8);
  v22 = v34;
  v21(v34, v14, v8);
  v23 = *(v15 + 20);
  v31 = *(v9 + 56);
  v32 = v9 + 56;
  v24 = v35;
  v31(v35 + v23, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v30 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v25 = *(v30 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BACFF310;
  (*(v9 + 16))(v27 + v26, v22, v8);
  v28 = *MEMORY[0x1E69E9308];
  v29 = type metadata accessor for DSLTree.Atom();
  (*(*(v29 - 8) + 104))(v27 + v26, v28, v29);
  (*(v25 + 104))(v27 + v26, *MEMORY[0x1E69E92B0], v30);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  outlined destroy of DSLTree.Atom.CharacterClass?(v24 + v23, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  v33(v24 + v23, v22, v8);
  return (v31)(v24 + v23, 0, 1, v8);
}

uint64_t static RegexComponent<>.any.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v4 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BACFF310;
  v8 = *a1;
  v9 = type metadata accessor for DSLTree.Atom();
  (*(*(v9 - 8) + 104))(v7 + v6, v8, v9);
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69E92B0], v4);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v10 = *(type metadata accessor for CharacterClass(0) + 20);
  v11 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v13 = *(*(v11 - 8) + 56);
  (v13)((v11 - 8), a2 + v10, 1, 1, v11);
  outlined destroy of DSLTree.Atom.CharacterClass?(a2 + v10, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v13(a2 + v10, 1, 1, v11);
}

uint64_t static RegexComponent<>.anyGraphemeCluster.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v5 + 104);
  v18 = v7;
  v9(v7, v8, v4);
  v10 = *(type metadata accessor for CharacterClass(0) + 20);
  v19 = *(v5 + 56);
  v19(a2 + v10, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v11 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BACFF310;
  (*(v5 + 16))(v14 + v13, v7, v4);
  v15 = *MEMORY[0x1E69E9308];
  v16 = type metadata accessor for DSLTree.Atom();
  (*(*(v16 - 8) + 104))(v14 + v13, v15, v16);
  (*(v12 + 104))(v14 + v13, *MEMORY[0x1E69E92B0], v11);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  outlined destroy of DSLTree.Atom.CharacterClass?(a2 + v10, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  (*(v5 + 32))(a2 + v10, v18, v4);
  return (v19)(a2 + v10, 0, 1, v4);
}

uint64_t static RegexComponent<>.hexDigit.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v2 = *(*(v1 - 8) + 72);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = 2 * v2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BACFF320;
  v6 = (v5 + v4);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, &_s17_StringProcessing7DSLTreeV4AtomO_AEtMR);
  v7 = (v6 + *(v21 + 48));
  *v6 = 65;
  v6[1] = 0xE100000000000000;
  v8 = *MEMORY[0x1E69E9318];
  v9 = type metadata accessor for DSLTree.Atom();
  v10 = *(*(v9 - 8) + 104);
  v10(v6, v8, v9);
  *v7 = 70;
  v7[1] = 0xE100000000000000;
  v10(v7, v8, v9);
  v24 = *MEMORY[0x1E69E92B8];
  v20 = *(v3 + 104);
  v20(v6);
  v11 = (v6 + v2);
  v12 = (v11 + *(v21 + 48));
  *v11 = 97;
  v11[1] = 0xE100000000000000;
  v10(v11, v8, v9);
  *v12 = 102;
  v12[1] = 0xE100000000000000;
  v10(v12, v8, v9);
  v13 = v11;
  v14 = v1;
  (v20)(v13, v24, v1);
  v15 = (v6 + v22);
  v16 = (v15 + *(v21 + 48));
  *v15 = 48;
  v15[1] = 0xE100000000000000;
  v10(v15, v8, v9);
  *v16 = 57;
  v16[1] = 0xE100000000000000;
  v10(v16, v8, v9);
  (v20)(v15, v24, v14);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v17 = *(type metadata accessor for CharacterClass(0) + 20);
  v18 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v25 = *(*(v18 - 8) + 56);
  (v25)((v18 - 8), a1 + v17, 1, 1, v18);
  outlined destroy of DSLTree.Atom.CharacterClass?(a1 + v17, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v25(a1 + v17, 1, 1, v18);
}

uint64_t static RegexComponent<>.anyOf<A>(_:)@<X0>(unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  return static RegexComponent<>.anyOf<A>(_:)(a2, a3, closure #1 in static RegexComponent<>.anyOf<A>(_:), x8_0);
}

{
  return static RegexComponent<>.anyOf<A>(_:)(a2, a3, closure #1 in static RegexComponent<>.anyOf<A>(_:), x8_0);
}

uint64_t closure #1 in static RegexComponent<>.anyOf<A>(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  *a2 = *a1;
  a2[1] = v3;
  v4 = *MEMORY[0x1E69E9318];
  v5 = type metadata accessor for DSLTree.Atom();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *MEMORY[0x1E69E92B0];
  v7 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  (*(*(v7 - 8) + 104))(a2, v6, v7);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t static RegexComponent<>.anyOf<A>(_:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, void (*a3)(char *, char *)@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a3, 0, a1, v8, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v9);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v10 = *(type metadata accessor for CharacterClass(0) + 20);
  v11 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v13 = *(*(v11 - 8) + 56);
  (v13)((v11 - 8), a4 + v10, 1, 1, v11);
  outlined destroy of DSLTree.Atom.CharacterClass?(a4 + v10, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v13(a4 + v10, 1, 1, v11);
}

uint64_t closure #1 in static RegexComponent<>.anyOf<A>(_:)@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *a1;
  v3 = *MEMORY[0x1E69E9320];
  v4 = type metadata accessor for DSLTree.Atom();
  (*(*(v4 - 8) + 104))(a2, v3, v4);
  v5 = *MEMORY[0x1E69E92B0];
  v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  return (*(*(v6 - 8) + 104))(a2, v5, v6);
}

uint64_t static CharacterClass.generalCategory(_:)@<X0>(uint64_t a1@<X8>)
{
  static DSLTree.CustomCharacterClass.generalCategory(_:)();
  v2 = *(type metadata accessor for CharacterClass(0) + 20);
  v3 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v5 = *(*(v3 - 8) + 56);
  (v5)((v3 - 8), a1 + v2, 1, 1, v3);
  outlined destroy of DSLTree.Atom.CharacterClass?(a1 + v2, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v5(a1 + v2, 1, 1, v3);
}

uint64_t ... infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a3;
  v25 = a2;
  v26 = a5;
  v24 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, &_s17_StringProcessing7DSLTreeV4AtomO_AEtMR) + 48));
  *v10 = a1;
  v10[1] = a2;
  v12 = *MEMORY[0x1E69E9318];
  v13 = type metadata accessor for DSLTree.Atom();
  v14 = *(*(v13 - 8) + 104);
  v14(v10, v12, v13);
  *v11 = v23;
  v11[1] = a4;
  v14(v11, v12, v13);
  v15 = v24;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E92B8], v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BACFF310;
  (*(v8 + 32))(v17 + v16, v10, v15);

  v18 = v26;
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v19 = *(type metadata accessor for CharacterClass(0) + 20);
  v20 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 1, 1, v20);
  outlined destroy of DSLTree.Atom.CharacterClass?(v18 + v19, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  return (v21)(v18 + v19, 1, 1, v20);
}

uint64_t ... infix(_:_:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  HIDWORD(v19) = a2;
  v20 = a3;
  v4 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, &_s17_StringProcessing7DSLTreeV4AtomO_AEtMR) + 48);
  *v7 = a1;
  v9 = *MEMORY[0x1E69E9320];
  v10 = type metadata accessor for DSLTree.Atom();
  v11 = *(*(v10 - 8) + 104);
  v11(v7, v9, v10);
  *(v7 + v8) = HIDWORD(v19);
  v11((v7 + v8), v9, v10);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E92B8], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BACFF310;
  (*(v5 + 32))(v13 + v12, v7, v4);
  v14 = v20;
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v15 = *(type metadata accessor for CharacterClass(0) + 20);
  v16 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v17 = *(*(v16 - 8) + 56);
  v17(v14 + v15, 1, 1, v16);
  outlined destroy of DSLTree.Atom.CharacterClass?(v14 + v15, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  return (v17)(v14 + v15, 1, 1, v16);
}

uint64_t RegexComponent<>.init(_:_:)@<X0>(uint64_t (*a1)(void, void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v5 = type metadata accessor for CharacterClass(0);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy12RegexBuilder14CharacterClassVGMd, &_ss15CollectionOfOneVy12RegexBuilder14CharacterClassVGMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v40 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v41 = v5;
    v42 = a3;
    outlined init with take of CharacterClass(v45, v40 - v16);
    v19 = MEMORY[0x1E69E7CC0];
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 + 1, 0, MEMORY[0x1E69E7CC0]);
    outlined init with take of CollectionOfOne<CharacterClass>(v17, v15, &_ss15CollectionOfOneVy12RegexBuilder14CharacterClassVGMd, &_ss15CollectionOfOneVy12RegexBuilder14CharacterClassVGMR);
    specialized Array.append<A>(contentsOf:)(v15);
    specialized Array.append<A>(contentsOf:)(a2);
    v20 = v46;
    v21 = v46[2];
    if (v21)
    {
      v46 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = v46;
      v23 = *(v44 + 80);
      v40[1] = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v45 = *(v44 + 72);
      LODWORD(v44) = *MEMORY[0x1E69E92C0];
      v43 = v9 + 32;
      do
      {
        outlined init with copy of CharacterClass(v24, v7);
        v25 = type metadata accessor for DSLTree.CustomCharacterClass();
        (*(*(v25 - 8) + 16))(v11, v7, v25);
        outlined destroy of CharacterClass(v7);
        (*(v9 + 104))(v11, v44, v8);
        v46 = v22;
        v27 = v22[2];
        v26 = v22[3];
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v22 = v46;
        }

        v22[2] = v27 + 1;
        (*(v9 + 32))(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v11, v8);
        v24 += v45;
        --v21;
      }

      while (v21);
    }

    v36 = v42;
    DSLTree.CustomCharacterClass.init(members:isInverted:)();
    v37 = *(v41 + 20);
    v38 = type metadata accessor for DSLTree.Atom.CharacterClass();
    v39 = *(*(v38 - 8) + 56);
    v39(v36 + v37, 1, 1, v38);
    outlined destroy of DSLTree.Atom.CharacterClass?(v36 + v37, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    return (v39)(v36 + v37, 1, 1, v38);
  }

  else
  {

    v28 = type metadata accessor for DSLTree.CustomCharacterClass();
    v29 = v45;
    (*(*(v28 - 8) + 16))(a3, v45, v28);
    outlined destroy of CharacterClass(v29);
    v30 = *(v5 + 20);
    v31 = type metadata accessor for DSLTree.Atom.CharacterClass();
    v32 = *(v31 - 8);
    v33 = *(v32 + 56);
    v44 = v32 + 56;
    v45 = v33;
    v33(a3 + v30, 1, 1, v31);
    outlined destroy of DSLTree.Atom.CharacterClass?(a3 + v30, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    v34 = v45;

    return v34(a3 + v30, 1, 1, v31);
  }
}

uint64_t outlined init with take of CharacterClass(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterClass(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CharacterClass.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BACFF330;
  v8 = v7 + v6;
  v9 = type metadata accessor for DSLTree.CustomCharacterClass();
  v10 = *(*(v9 - 8) + 16);
  v10(v8, v2, v9);
  v11 = *MEMORY[0x1E69E92C0];
  v12 = *(v4 + 104);
  v12(v8, v11, v3);
  v10(v8 + v5, a1, v9);
  v12(v8 + v5, v11, v3);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v13 = *(type metadata accessor for CharacterClass(0) + 20);
  v14 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v18 = *(*(v14 - 8) + 56);
  (v18)((v14 - 8), a2 + v13, 1, 1, v14);
  outlined destroy of DSLTree.Atom.CharacterClass?(a2 + v13, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v18(a2 + v13, 1, 1, v14);
}

uint64_t CharacterClass.intersection(_:)@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v17 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v4 = *(v17 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BACFF310;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV20CustomCharacterClassV_AEtMd, &_s17_StringProcessing7DSLTreeV20CustomCharacterClassV_AEtMR);
  v8 = swift_allocBox();
  v10 = v9;
  v11 = *(v7 + 48);
  v12 = type metadata accessor for DSLTree.CustomCharacterClass();
  v13 = *(*(v12 - 8) + 16);
  v13(v10, v18, v12);
  v13(v10 + v11, a1, v12);
  *(v6 + v5) = v8;
  (*(v4 + 104))(v6 + v5, *a2, v17);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v14 = *(type metadata accessor for CharacterClass(0) + 20);
  v15 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v21 = *(*(v15 - 8) + 56);
  (v21)((v15 - 8), a3 + v14, 1, 1, v15);
  outlined destroy of DSLTree.Atom.CharacterClass?(a3 + v14, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v21(a3 + v14, 1, 1, v15);
}

uint64_t Regex.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  dispatch thunk of RegexComponent.regex.getter();
  return (*(v6 + 8))(v9, a4);
}

void String.regex.getter(uint64_t a1, uint64_t a2)
{

  JUMPOUT(0x1BFB01450);
}

void protocol witness for RegexComponent.regex.getter in conformance String()
{

  JUMPOUT(0x1BFB01450);
}

void Substring.regex.getter()
{
  MEMORY[0x1BFB01560]();

  JUMPOUT(0x1BFB01450);
}

void protocol witness for RegexComponent.regex.getter in conformance Substring()
{
  MEMORY[0x1BFB01560](*v0, v0[1], v0[2], v0[3]);

  JUMPOUT(0x1BFB01450);
}

uint64_t Character.regex.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for _RegexFactory();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.char<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance Character()
{
  v0 = type metadata accessor for _RegexFactory();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.char<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t Unicode.Scalar.regex.getter(uint64_t a1)
{
  v1 = type metadata accessor for _RegexFactory();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.scalar<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance Unicode.Scalar()
{
  v0 = type metadata accessor for _RegexFactory();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.scalar<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t One.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RegexComponent.regex.getter();
  v6 = *(*(a3 - 8) + 8);

  return v6(a1, a3);
}

uint64_t static AlternationBuilder.buildPartialBlock<A>(first:)@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Regex();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  dispatch thunk of RegexComponent.regex.getter();
  return (*(v5 + 32))(a3, v7, v4);
}

uint64_t Lookahead.regex.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Regex();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t Lookahead.regex.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Regex();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t Lookahead.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Regex();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t Reference.regex.getter(uint64_t a1)
{
  v1 = type metadata accessor for _RegexFactory();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.symbolicReference<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v10 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = type metadata accessor for CharacterClass(0);
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

uint64_t specialized Array.append<A>(contentsOf:)(int64_t a1)
{
  v2 = v1;
  v45 = type metadata accessor for CharacterClass(0);
  v4 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v44 = v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v39 - v15);
  v17 = *v2;
  v18 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = v17[3] >> 1, v20 <= v18))
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v17);
    v20 = v17[3] >> 1;
  }

  v21 = v17[2];
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  v24 = v20 - v21;
  v25 = specialized Sequence._copySequenceContents(initializing:)(v16, v17 + v22 + v23 * v21, v20 - v21);
  if (v25 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v26 = v17[2];
  a1 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17[2] = a1;
  if (v25 != v24)
  {
    v27 = &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd;
    v28 = &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR;
    v29 = v16;
    goto LABEL_8;
  }

LABEL_11:
  outlined init with take of CollectionOfOne<CharacterClass>(v16, v13, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  v39[0] = *(v4 + 56);
  v39[1] = v4 + 56;
  (v39[0])(v16, 1, 1, v45);
  v31 = v44;
  outlined init with copy of DSLTree.Atom.CharacterClass?(v13, v44, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  v41 = *(v4 + 48);
  if (v41(v31, 1, v45) == 1)
  {
    v32 = v44;
  }

  else
  {
    v32 = v44;
    do
    {
      outlined destroy of DSLTree.Atom.CharacterClass?(v32, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
      v34 = v17[3];
      v35 = v34 >> 1;
      if ((v34 >> 1) < a1 + 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), a1 + 1, 1, v17);
        v35 = v17[3] >> 1;
      }

      outlined init with copy of DSLTree.Atom.CharacterClass?(v13, v9, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
      if (v41(v9, 1, v45) == 1)
      {
LABEL_15:
        outlined destroy of DSLTree.Atom.CharacterClass?(v9, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
        v33 = a1;
      }

      else
      {
        if (a1 <= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = a1;
        }

        v40 = v36;
        v42 = v17 + v22 + v23 * a1;
        v37 = v43;
        while (1)
        {
          outlined init with take of CharacterClass(v9, v37);
          if (v40 == a1)
          {
            break;
          }

          outlined destroy of DSLTree.Atom.CharacterClass?(v13, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
          outlined init with take of CharacterClass(v37, v42);
          ++a1;
          outlined init with take of CollectionOfOne<CharacterClass>(v16, v13, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
          (v39[0])(v16, 1, 1, v45);
          outlined init with copy of DSLTree.Atom.CharacterClass?(v13, v9, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
          v38 = v41(v9, 1, v45);
          v42 += v23;
          if (v38 == 1)
          {
            goto LABEL_15;
          }
        }

        outlined destroy of CharacterClass(v37);
        v33 = v40;
        a1 = v40;
      }

      v17[2] = v33;
      v32 = v44;
      outlined init with copy of DSLTree.Atom.CharacterClass?(v13, v44, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
    }

    while (v41(v32, 1, v45) != 1);
  }

  outlined destroy of DSLTree.Atom.CharacterClass?(v13, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  outlined destroy of DSLTree.Atom.CharacterClass?(v16, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR);
  v29 = v32;
  v27 = &_s12RegexBuilder14CharacterClassVSgMd;
  v28 = &_s12RegexBuilder14CharacterClassVSgMR;
LABEL_8:
  result = outlined destroy of DSLTree.Atom.CharacterClass?(v29, v27, v28);
  *v2 = v17;
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12RegexBuilder14CharacterClassVGMd, &_ss23_ContiguousArrayStorageCy12RegexBuilder14CharacterClassVGMR);
  v10 = *(type metadata accessor for CharacterClass(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CharacterClass(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t outlined init with copy of CharacterClass(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterClass(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CharacterClass(uint64_t a1)
{
  v2 = type metadata accessor for CharacterClass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for Lookahead<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NegativeLookahead<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for OneOrMore<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ZeroOrMore<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Optionally<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Repeat<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ChoiceOf<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Capture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TryCapture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Local<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Anchor(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Anchor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CharacterClass(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for DSLTree.CustomCharacterClass();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for DSLTree.Atom.CharacterClass();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }
  }

  return a1;
}

uint64_t destroy for CharacterClass(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

uint64_t initializeWithCopy for CharacterClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t assignWithCopy for CharacterClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 16))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

uint64_t initializeWithTake for CharacterClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t assignWithTake for CharacterClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

uint64_t sub_1BACFD88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BACFD99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DSLTree.CustomCharacterClass();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void type metadata completion function for CharacterClass(uint64_t a1)
{
  type metadata accessor for DSLTree.CustomCharacterClass();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DSLTree.Atom.CharacterClass?(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata accessor for DSLTree.Atom.CharacterClass?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DSLTree.Atom.CharacterClass?)
  {
    type metadata accessor for DSLTree.Atom.CharacterClass();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DSLTree.Atom.CharacterClass?);
    }
  }
}

uint64_t getEnumTagSinglePayload for RegexComponentBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RegexComponentBuilder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata completion function for Lookahead(uint64_t a1)
{
  result = type metadata accessor for Regex();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Regex();
  v6 = **(v5 - 8);

  return v6(a1, a2, v5);
}

uint64_t destroy for Lookahead(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Regex();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t initializeWithCopy for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Regex();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  return a1;
}

uint64_t assignWithCopy for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Regex();
  (*(*(v5 - 8) + 24))(a1, a2, v5);
  return a1;
}

uint64_t initializeWithTake for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Regex();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  return a1;
}

uint64_t assignWithTake for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Regex();
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Regex();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Regex();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t type metadata completion function for Reference(uint64_t a1)
{
  result = type metadata accessor for ReferenceID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for Reference(uint64_t a1)
{
  v2 = type metadata accessor for ReferenceID();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_1BACFE5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BACFE678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for Anchor.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Anchor.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type Anchor.Kind and conformance Anchor.Kind()
{
  result = lazy protocol witness table cache variable for type Anchor.Kind and conformance Anchor.Kind;
  if (!lazy protocol witness table cache variable for type Anchor.Kind and conformance Anchor.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Anchor.Kind and conformance Anchor.Kind);
  }

  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CharacterClass(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v25 - v19;
  outlined init with take of CharacterClass(v4, v17);
  v26 = v9;
  v21 = *(v9 + 56);
  v21(v17, 0, 1, v8);
  v21(v20, 1, 1, v8);
  result = outlined assign with take of CharacterClass?(v17, v20);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    outlined init with take of CollectionOfOne<CharacterClass>(v20, a1, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v25 = a1;
    a1 = (v26 + 48);
    v23 = 1;
    while (1)
    {
      outlined init with take of CollectionOfOne<CharacterClass>(v20, v15, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
      v21(v20, 1, 1, v8);
      if ((*a1)(v15, 1, v8) == 1)
      {
        break;
      }

      outlined init with take of CharacterClass(v15, v11);
      outlined init with take of CharacterClass(v11, a2);
      if (a3 == v23)
      {
        goto LABEL_12;
      }

      a2 += *(v26 + 72);
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    outlined destroy of DSLTree.Atom.CharacterClass?(v15, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
    a3 = v23 - 1;
LABEL_12:
    a1 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of DSLTree.Atom.CharacterClass?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of DSLTree.Atom.CharacterClass?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of CharacterClass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CollectionOfOne<CharacterClass>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}