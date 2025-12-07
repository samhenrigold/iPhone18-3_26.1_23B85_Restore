Swift::Bool __swiftcall Regex.contains(captureNamed:)(Swift::String captureNamed)
{
  object = captureNamed._object;
  countAndFlagsBits = captureNamed._countAndFlagsBits;
  v2 = type metadata accessor for CaptureList.Capture();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &object - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CaptureList();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &object - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*v1 + 24);
  static CaptureList.Builder.build(_:)(&v23, v9);
  v10 = CaptureList.captures.getter();
  result = (*(v7 + 8))(v9, v6);
  v21 = *(v10 + 16);
  if (v21)
  {
    v12 = 0;
    v13 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v12 < *(v10 + 16))
    {
      v15 = v10;
      (*(v3 + 16))(v5, v13 + *(v3 + 72) * v12, v2);
      v16 = CaptureList.Capture.name.getter();
      v18 = v17;
      result = (*(v3 + 8))(v5, v2);
      if (v18)
      {
        if (v16 == countAndFlagsBits && v18 == object)
        {

          v19 = 1;
          goto LABEL_12;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          v19 = 1;
          goto LABEL_12;
        }
      }

      ++v12;
      v10 = v15;
      if (v21 == v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v19 = 0;
LABEL_12:

    return v19;
  }

  return result;
}

void *Regex<A>.init<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV7ProgramCyAA03AnyC6OutputV_GMd, &_s17_StringProcessing5RegexV7ProgramCyAA03AnyC6OutputV_GMR);
  result = swift_allocObject();
  result[3] = v3;
  result[4] = 0;
  result[2] = 0;
  *a2 = result;
  return result;
}

__n128 Regex.Match<A>.init<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

uint64_t Regex.init(_:as:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(*a1 + 24);

  type metadata accessor for Regex.Program(0, a2, v6, v7);
  v8 = swift_allocObject();
  v8[3] = v5;
  v8[4] = 0;
  v8[2] = 0;
  v11 = type metadata accessor for Regex(0, a2, v9, v10);

  LOBYTE(a2) = Regex._verifyType()(v11);

  if ((a2 & 1) == 0)
  {

    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t Regex.Program.__allocating_init(ast:)(uint64_t a1)
{
  v2 = swift_allocObject();
  specialized Regex.Program.init(ast:)(a1);
  return v2;
}

uint64_t Regex.init(_regexString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>)
{
  v8 = type metadata accessor for SyntaxOptions();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AST();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[0] = a1;
  v19[1] = a2;
  static SyntaxOptions.traditional.getter();
  lazy protocol witness table accessor for type String and conformance String();
  parse<A>(_:_:)();
  (*(v9 + 8))(v11, v8);

  result = Regex.init(ast:)(v14, v19, a4, v15, v16);
  *a3 = v19[0];
  return result;
}

uint64_t Regex.init(_regexString:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v8 = type metadata accessor for AST();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  v15[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();
  parseWithDelimiters<A>(_:)();

  result = Regex.init(ast:)(v10, v15, a4, v11, v12);
  *a3 = v15[0];
  return result;
}

void *Regex.init(verbatim:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = v8 | 0x5000000000000000;
  type metadata accessor for Regex.Program(0, a4, v10, v11);
  result = swift_allocObject();
  result[3] = v9;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

uint64_t Regex.Program.ProgramBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  outlined init with take of DSLTree.QuantificationKind(a1, v2 + direct field offset for Regex.Program.ProgramBox.value, type metadata accessor for MEProgram);
  return v2;
}

uint64_t Regex.Program.ProgramBox.__deallocating_deinit()
{
  outlined destroy of MEProgram(v0 + direct field offset for Regex.Program.ProgramBox.value, type metadata accessor for MEProgram);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t loadProgram #1 <A>() in Regex.Program.loweredProgram.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = atomic_load((a1 + 16));
  if (v3)
  {
    v4 = direct field offset for Regex.Program.ProgramBox.value;
    swift_unknownObjectRetain();
    outlined init with copy of DSLTree._AST.AbsentFunction(v3 + v4, a2, type metadata accessor for MEProgram);
    swift_unknownObjectRelease();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for MEProgram(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t specialized Regex.Program.init(ast:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Node();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  AST.root.getter();
  v8 = convert #1 () in AST.Node.dslTreeNode.getter(v7);
  v9 = type metadata accessor for AST();
  (*(*(v9 - 8) + 8))(a1, v9);
  if (((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 0xC)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
    v11 = swift_allocBox();
    v12 = *(v10 + 48);
    *v13 = v8;
    (*(v5 + 32))(v13 + v12, v7, v4);
    v8 = v11 | 0x6000000000000000;
  }

  *(v2 + 24) = v8;
  return v2;
}

void *Regex.Program.__allocating_init(tree:)(void *a1)
{
  result = swift_allocObject();
  result[3] = *a1;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t Regex.Program.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t Regex._forceAction(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MEProgram(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (*(a1 + 8))
  {
    v7 = v6[3];
    v8 = v6[4];
    type metadata accessor for Compiler();
    inited = swift_initStackObject();
    inited[2] = v7;
    inited[3] = &outlined read-only object #0 of Regex._forceAction(_:);
    inited[4] = v8;

    Compiler.emit()(v5);
    outlined destroy of MEProgram(v5, type metadata accessor for MEProgram);
  }

  else
  {
    v10 = v6[4];
    if ((*a1 & ~v10) != 0)
    {
      v6[4] = v10 | *a1;
    }

    v6[2] = 0;
    swift_unknownObjectRelease();
  }

  return 1;
}

void *CustomConsumingRegexComponent.regex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v11 + 16) = AssociatedTypeWitness;
  (*(v8 + 16))(v10, v4, a1);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v8 + 32))(v14 + v13, v10, a1);
  *(v11 + 24) = partial apply for closure #1 in CustomConsumingRegexComponent.regex.getter;
  *(v11 + 32) = v14;
  type metadata accessor for Regex.Program(0, AssociatedTypeWitness, v15, v16);
  result = swift_allocObject();
  result[3] = v11 | 0x7000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

uint64_t closure #1 in CustomConsumingRegexComponent.regex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v26 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v19 = v31;
  result = (*(a8 + 16))(a1, a2, v27, v28, v29, a7, a8);
  if (!v19)
  {
    v21 = v16;
    v22 = v26;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {
      result = (*(v21 + 8))(v18, v15);
      *(v22 + 32) = 0;
      *v22 = 0u;
      *(v22 + 16) = 0u;
    }

    else
    {
      v23 = *(TupleTypeMetadata2 + 48);
      *v22 = *v18;
      *(v22 + 32) = AssociatedTypeWitness;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v22 + 8));
      return (*(*(AssociatedTypeWitness - 8) + 32))(boxed_opaque_existential_0, &v18[v23], AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t static DSLTree.CustomCharacterClass.generalCategory(_:)@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for Source.Location();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AST.Atom.Kind();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AST.Atom();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO12_RegexParserE23ExtendedGeneralCategoryOSgMd, &_ss7UnicodeO12_RegexParserE23ExtendedGeneralCategoryOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AST.Atom.CharacterProperty();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.GeneralCategory.extendedGeneralCategory.getter(v10);
  v19 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v10, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v14, v10, v19);
    (*(v12 + 104))(v14, *MEMORY[0x1E69E8C88], v11);
    AST.Atom.CharacterProperty.init(_:isInverted:isPOSIX:)();
    (*(v16 + 32))(v5, v18, v15);
    (*(v28 + 104))(v5, *MEMORY[0x1E69E8D80], v29);
    static Source.Location.fake.getter();
    v22 = v30;
    AST.Atom.init(_:_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
    v23 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18E5ED040;
    (*(v32 + 32))(v25 + v24, v22, v33);
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();
    result = swift_storeEnumTagMultiPayload();
    v26 = v34;
    *v34 = v25;
    *(v26 + 8) = 0;
  }

  return result;
}

uint64_t Unicode.GeneralCategory.extendedGeneralCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Unicode.GeneralCategory();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E69E78A0])
  {
    v9 = MEMORY[0x1E69E91A0];
  }

  else if (v8 == *MEMORY[0x1E69E7888])
  {
    v9 = MEMORY[0x1E69E9188];
  }

  else if (v8 == *MEMORY[0x1E69E7898])
  {
    v9 = MEMORY[0x1E69E9198];
  }

  else if (v8 == *MEMORY[0x1E69E7860])
  {
    v9 = MEMORY[0x1E69E9160];
  }

  else if (v8 == *MEMORY[0x1E69E7818])
  {
    v9 = MEMORY[0x1E69E9110];
  }

  else if (v8 == *MEMORY[0x1E69E7870])
  {
    v9 = MEMORY[0x1E69E9170];
  }

  else if (v8 == *MEMORY[0x1E69E7830])
  {
    v9 = MEMORY[0x1E69E9130];
  }

  else if (v8 == *MEMORY[0x1E69E7848])
  {
    v9 = MEMORY[0x1E69E9148];
  }

  else if (v8 == *MEMORY[0x1E69E7840])
  {
    v9 = MEMORY[0x1E69E9140];
  }

  else if (v8 == *MEMORY[0x1E69E7838])
  {
    v9 = MEMORY[0x1E69E9138];
  }

  else if (v8 == *MEMORY[0x1E69E7820])
  {
    v9 = MEMORY[0x1E69E9118];
  }

  else if (v8 == *MEMORY[0x1E69E78D0])
  {
    v9 = MEMORY[0x1E69E91D0];
  }

  else if (v8 == *MEMORY[0x1E69E7880])
  {
    v9 = MEMORY[0x1E69E9180];
  }

  else if (v8 == *MEMORY[0x1E69E7890])
  {
    v9 = MEMORY[0x1E69E9190];
  }

  else if (v8 == *MEMORY[0x1E69E78A8])
  {
    v9 = MEMORY[0x1E69E91A8];
  }

  else if (v8 == *MEMORY[0x1E69E78C0])
  {
    v9 = MEMORY[0x1E69E91C0];
  }

  else if (v8 == *MEMORY[0x1E69E78B0])
  {
    v9 = MEMORY[0x1E69E91B0];
  }

  else if (v8 == *MEMORY[0x1E69E78B8])
  {
    v9 = MEMORY[0x1E69E91B8];
  }

  else if (v8 == *MEMORY[0x1E69E7800])
  {
    v9 = MEMORY[0x1E69E90F0];
  }

  else if (v8 == *MEMORY[0x1E69E7858])
  {
    v9 = MEMORY[0x1E69E9158];
  }

  else if (v8 == *MEMORY[0x1E69E7868])
  {
    v9 = MEMORY[0x1E69E9168];
  }

  else if (v8 == *MEMORY[0x1E69E7828])
  {
    v9 = MEMORY[0x1E69E9120];
  }

  else if (v8 == *MEMORY[0x1E69E7878])
  {
    v9 = MEMORY[0x1E69E9178];
  }

  else if (v8 == *MEMORY[0x1E69E7850])
  {
    v9 = MEMORY[0x1E69E9150];
  }

  else if (v8 == *MEMORY[0x1E69E78C8])
  {
    v9 = MEMORY[0x1E69E91C8];
  }

  else if (v8 == *MEMORY[0x1E69E78E0])
  {
    v9 = MEMORY[0x1E69E9208];
  }

  else if (v8 == *MEMORY[0x1E69E78D8])
  {
    v9 = MEMORY[0x1E69E91E8];
  }

  else if (v8 == *MEMORY[0x1E69E78E8])
  {
    v9 = MEMORY[0x1E69E9218];
  }

  else if (v8 == *MEMORY[0x1E69E7808])
  {
    v9 = MEMORY[0x1E69E90F8];
  }

  else
  {
    if (v8 != *MEMORY[0x1E69E7810])
    {
      v14 = type metadata accessor for Unicode.ExtendedGeneralCategory();
      (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
      return (*(v5 + 8))(v7, v4);
    }

    v9 = MEMORY[0x1E69E9100];
  }

  v10 = *v9;
  v11 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1, v10, v11);
  return (*(v12 + 56))(a1, 0, 1, v11);
}

uint64_t DSLTree.CustomCharacterClass.inverted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = (v2 & 1) == 0;
}

void DSLTree.Atom.CharacterClass.inverted.getter(char *a1@<X8>)
{
  v2 = 14;
  switch(*v1)
  {
    case 1:
      v2 = 0;
      break;
    case 2:
      v2 = 3;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 5;
      break;
    case 5:
      v2 = 4;
      break;
    case 6:
      v2 = 7;
      break;
    case 7:
      v2 = 6;
      break;
    case 8:
      v2 = 9;
      break;
    case 9:
      v2 = 8;
      break;
    case 0xA:
      v2 = 11;
      break;
    case 0xB:
      v2 = 10;
      break;
    case 0xC:
      break;
    case 0xD:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18E5C0198);
    default:
      v2 = 1;
      break;
  }

  *a1 = v2;
}

BOOL DSLTree.Node.hasChildNodes.getter(unint64_t a1)
{
  v2 = type metadata accessor for DSLTree._AST.AbsentFunction(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v5 > 0x10)
  {
    goto LABEL_8;
  }

  if (((1 << v5) & 0x1E780) != 0)
  {
    return 0;
  }

  if (((1 << v5) & 0x107C) != 0)
  {
    return 1;
  }

  if (v5 == 11)
  {
    v7 = swift_projectBox();
    outlined init with copy of DSLTree._AST.AbsentFunction(v7, v4, type metadata accessor for DSLTree._AST.AbsentFunction);
    v8 = AST.AbsentFunction.children.getter();
    outlined destroy of MEProgram(v4, type metadata accessor for DSLTree._AST.AbsentFunction);
    v9 = *(v8 + 16);

    v10 = v9 == 0;
  }

  else
  {
LABEL_8:
    if (v5)
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v11 = *(a1 + 16);
    }

    v10 = *(v11 + 16) == 0;
  }

  return !v10;
}

uint64_t DSLTree.Node.children.getter(unint64_t a1)
{
  v2 = type metadata accessor for AST.Node();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree._AST.AbsentFunction(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v9 <= 4)
  {
    if (v9 <= 1)
    {
      if (v9)
      {
        v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v10 = *(a1 + 16);
      }

      return v10;
    }

    if (v9 == 2)
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    }

    else
    {
      if (v9 == 3)
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
        v25 = swift_projectBox();
        v26 = *(v24 + 48);
LABEL_30:
        v27 = *(v25 + v26);
        goto LABEL_31;
      }

      v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18E5ED040;
    *(v10 + 32) = v27;
    goto LABEL_32;
  }

  if (v9 > 0x10)
  {
LABEL_27:
    if (v9 == 5)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
      v32 = swift_projectBox();
      v33 = *(v32 + *(v31 + 48));
      v34 = *(v32 + *(v31 + 64));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_18E5ED050;
      *(v10 + 32) = v33;
      *(v10 + 40) = v34;

LABEL_32:

      return v10;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
    v25 = swift_projectBox();
    v26 = *(v35 + 64);
    goto LABEL_30;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (((1 << v9) & 0x1E780) != 0)
  {
    return v10;
  }

  if (v9 != 11)
  {
    if (v9 == 12)
    {
      v28 = *swift_projectBox();

      v29 = DSLTree.Node.children.getter(v28);

      return v29;
    }

    goto LABEL_27;
  }

  v11 = swift_projectBox();
  outlined init with copy of DSLTree._AST.AbsentFunction(v11, v8, type metadata accessor for DSLTree._AST.AbsentFunction);
  v12 = AST.AbsentFunction.children.getter();
  outlined destroy of MEProgram(v8, type metadata accessor for DSLTree._AST.AbsentFunction);
  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_34:

    return v10;
  }

  v42 = v10;
  v38 = v12;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
  v14 = v38;
  v15 = 0;
  v10 = v42;
  v40 = v38 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v41 = v13;
  v39 = v3 + 16;
  v36 = (v3 + 8);
  v37 = (v3 + 32);
  while (v15 < *(v14 + 16))
  {
    (*(v3 + 16))(v5, v40 + *(v3 + 72) * v15, v2);
    v16 = convert #1 () in AST.Node.dslTreeNode.getter(v5);
    if (((v16 >> 59) & 0x1E | (v16 >> 2) & 1) == 0xC)
    {
      (*v36)(v5, v2);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
      v18 = swift_allocBox();
      v19 = *(v17 + 48);
      v20 = v37;
      v14 = v38;
      *v21 = v16;
      (*v20)(v21 + v19, v5, v2);
      v16 = v18 | 0x6000000000000000;
    }

    v42 = v10;
    v23 = *(v10 + 16);
    v22 = *(v10 + 24);
    if (v23 >= v22 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v14 = v38;
      v10 = v42;
    }

    ++v15;
    *(v10 + 16) = v23 + 1;
    *(v10 + 8 * v23 + 32) = v16;
    if (v41 == v15)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t DSLTree.Node.appending(_:)(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 1)
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v5 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E5ED040;
    *(inited + 32) = a1;

    specialized Array.append<A>(contentsOf:)(inited);
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18E5ED050;
    *(v7 + 32) = a2;
    *(v7 + 40) = a1;
    *(v5 + 16) = v7;
  }

  return v5 | 4;
}

uint64_t DSLTree.Node.appendingAlternationCase(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18E5ED050;
    *(v5 + 32) = a2;
    *(v5 + 40) = a1;
    *(v4 + 16) = v5;
  }

  else
  {
    v6 = *(a2 + 16);
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E5ED040;
    *(inited + 32) = a1;

    specialized Array.append<A>(contentsOf:)(inited);
    *(v4 + 16) = v6;
  }

  return v4;
}

_StringProcessing::ReferenceID __swiftcall ReferenceID.init()()
{
  v1 = static ReferenceID.counter;
  if (__OFADD__(static ReferenceID.counter, 1))
  {
    __break(1u);
  }

  else
  {
    ++static ReferenceID.counter;
    *v0 = v1;
  }

  return result;
}

Swift::Int ReferenceID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Instruction(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Instruction(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *CaptureTransform.init<A, B>(_:)@<X0>(uint64_t (*a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getFunctionTypeMetadata1();
  swift_getFunctionTypeMetadata1();

  if (swift_dynamicCast())
  {

    a2 = swift_allocObject();
    *(a2 + 16) = a3;
    *(a2 + 24) = a4;
    *(a2 + 32) = v13;
    v10 = 3;
    v11 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Substring) -> (@out B, @error @owned Error);
    a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Substring) -> (@out B, @error @owned Error);
  }

  else
  {
    v10 = 2;
    v11 = partial apply for closure #1 in CaptureTransform.init<A, B>(_:);
  }

  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v11;
  *(a5 + 24) = result;
  *(a5 + 32) = v10;
  return result;
}

{
  type metadata accessor for Optional();
  swift_getFunctionTypeMetadata1();
  swift_getFunctionTypeMetadata1();

  if (swift_dynamicCast())
  {

    a2 = swift_allocObject();
    *(a2 + 16) = a3;
    *(a2 + 24) = a4;
    *(a2 + 32) = v13;
    v10 = 1;
    v11 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Substring) -> (@out B?, @error @owned Error);
    a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Substring) -> (@out B?, @error @owned Error);
  }

  else
  {
    v10 = 0;
    v11 = partial apply for closure #1 in CaptureTransform.init<A, B>(_:);
  }

  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v11;
  *(a5 + 24) = result;
  *(a5 + 32) = v10;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Substring) -> (@out B, @error @owned Error)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v10(v7);
  if (!v3)
  {
    a3[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v6 + 32))(boxed_opaque_existential_0, v9, a2);
  }

  return result;
}

uint64_t closure #1 in CaptureTransform.init<A, B>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v11, v15);
  swift_dynamicCast();
  a5[3] = a4;
  __swift_allocate_boxed_opaque_existential_0(a5);
  a2(v13);
  result = (*(v10 + 8))(v13, a3);
  if (v5)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a5);
  }

  return result;
}

_OWORD *thunk for @escaping @callee_guaranteed (@guaranteed Substring) -> (@out B?, @error @owned Error)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X7>, _OWORD *a7@<X8>)
{
  v23 = a7;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v21 - v15;
  result = a5(a1, a2, a3, a4);
  if (!v7)
  {
    v18 = v23;
    v19 = *(a6 - 8);
    result = (*(v19 + 48))(v16, 1, a6);
    if (result == 1)
    {
      *v18 = 0u;
      v18[1] = 0u;
    }

    else
    {
      v22 = a6;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
      (*(v19 + 32))(boxed_opaque_existential_0, v16, a6);
      return outlined init with take of Any(v21, v18);
    }
  }

  return result;
}

uint64_t closure #1 in CaptureTransform.init<A, B>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a5;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v21 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  outlined init with copy of Any(a1, v23);
  swift_dynamicCast();
  v15 = v24;
  a2(v11);
  result = (*(v9 + 8))(v11, a3);
  if (!v15)
  {
    v18 = v21;
    v17 = v22;
    v19 = *(a4 - 8);
    if ((*(v19 + 48))(v14, 1, a4) == 1)
    {
      result = (*(v18 + 8))(v14, v12);
      *v17 = 0u;
      *(v17 + 16) = 0u;
    }

    else
    {
      *(v17 + 24) = a4;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
      return (*(v19 + 32))(boxed_opaque_existential_0, v14, a4);
    }
  }

  return result;
}

uint64_t CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(unint64_t a1, uint64_t a2, int a3)
{
  v110 = a3;
  v108 = a2;
  v4 = type metadata accessor for AST.AbsentFunction.Kind();
  v106 = *(v4 - 8);
  v107 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree._AST.AbsentFunction(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AST.Node();
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v99 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AST.Conditional.Condition.Kind();
  v103 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DSLTree._AST.ConditionKind(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Source.Location();
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v18 = type metadata accessor for CaptureList.Capture();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CaptureList.Builder.OptionalNesting();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v23);
  v29 = &v98 - v27;
  v30 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v30 > 4)
  {
    if (v30 <= 0x10)
    {
      if (((1 << v30) & 0x1E780) != 0)
      {
        return result;
      }

      if (v30 == 11)
      {
        v41 = swift_projectBox();
        v42 = v105;
        outlined init with copy of DSLTree._AST.AbsentFunction(v41, v105, type metadata accessor for DSLTree._AST.AbsentFunction);
        v43 = v109;
        AST.AbsentFunction.kind.getter();
        v45 = v106;
        v44 = v107;
        v46 = v106[11](v43, v107);
        if (v46 == *MEMORY[0x1E69E89D0])
        {
          goto LABEL_16;
        }

        if (v46 == *MEMORY[0x1E69E89B8])
        {
          outlined destroy of MEProgram(v42, type metadata accessor for DSLTree._AST.AbsentFunction);
          v45[12](v43, v44);
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4NodeO8absentee_AA6SourceV8LocationV4pipeAE4exprtMd, &_s12_RegexParser3ASTV4NodeO8absentee_AA6SourceV8LocationV4pipeAE4exprtMR);
          v86 = *(v85 + 48);
          v88 = v99;
          v87 = v100;
          v89 = v101;
          (*(v100 + 32))(v99, v43 + *(v85 + 64), v101);
          CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)();
          v90 = *(v87 + 8);
          v90(v88, v89);
          (*(v98 + 8))(v43 + v86, v17);
          return (v90)(v43, v89);
        }

        if (v46 == *MEMORY[0x1E69E89C8])
        {
LABEL_16:
          outlined destroy of MEProgram(v42, type metadata accessor for DSLTree._AST.AbsentFunction);
          return v45[1](v43, v44);
        }

        if (v46 == *MEMORY[0x1E69E89C0])
        {
          return outlined destroy of MEProgram(v42, type metadata accessor for DSLTree._AST.AbsentFunction);
        }

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (v30 == 12)
      {
        v57 = result;
        v58 = v28;
        v59 = *swift_projectBox();

        CaptureList.Builder.OptionalNesting.disablingNesting.getter();
        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v59, v29, v110 & 1);

        return (*(v58 + 8))(v29, v57);
      }
    }

    v109 = v28;
    v106 = (&v98 - v27);
    v107 = result;
    if (v30 == 5)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
      v61 = swift_projectBox();
      v62 = *(v61 + *(v60 + 48));
      v63 = *(v61 + *(v60 + 64));
      outlined init with copy of DSLTree._AST.AbsentFunction(v61, v16, type metadata accessor for DSLTree._AST.ConditionKind);
      v64 = v102;
      v65 = v103;
      (*(v103 + 32))(v102, v16, v12);
      v66 = (*(v65 + 88))(v64, v12);
      v67 = *MEMORY[0x1E69E89A8];
      v105 = v63;
      if (v66 == v67)
      {
        (*(v65 + 96))(v64, v12);
        v68 = type metadata accessor for AST.Group();
        v69 = swift_allocBox();
        (*(*(v68 - 8) + 32))(v70, v64, v68);
        v72 = v99;
        v71 = v100;
        *v99 = v69;
        v73 = v101;
        (*(v71 + 104))(v72, *MEMORY[0x1E69E8DE0], v101);

        v74 = v110;
        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)();
        (*(v71 + 8))(v72, v73);
      }

      else
      {
        v91 = *(v65 + 8);

        v91(v64, v12);
        v74 = v110;
      }

      v92 = v106;
      CaptureList.Builder.OptionalNesting.addingOptional.getter();
      CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v62, v92, v74 & 1);

      v93 = *(v109 + 8);
      v94 = v107;
      v93(v92, v107);
      CaptureList.Builder.OptionalNesting.addingOptional.getter();
      CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v105, v92, v74 & 1);

      return (v93)(v92, v94);
    }

    else
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v76 = swift_projectBox();
      v77 = *(v76 + *(v75 + 64));
      v78 = v104;
      outlined init with copy of DSLTree._AST.AbsentFunction(v76, v104, type metadata accessor for DSLTree._AST.QuantificationAmount);
      (*(v109 + 16))(v25, v108, v107);

      v79 = AST.Quantification.Amount.bounds.getter();
      v81 = v80;
      outlined destroy of MEProgram(v78, type metadata accessor for DSLTree._AST.QuantificationAmount);
      if ((v81 & 1) == 0 && !v79)
      {
        v82 = v106;
        CaptureList.Builder.OptionalNesting.addingOptional.getter();
        v83 = v109;
        v84 = v107;
        (*(v109 + 8))(v25, v107);
        (*(v83 + 32))(v25, v82, v84);
      }

      CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v77, v25, v110 & 1);

      return (*(v109 + 8))(v25, v107);
    }
  }

  if (v30 <= 1)
  {
    if (v30)
    {
      v51 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v52 = *(v51 + 16);
      if (!v52)
      {
        return result;
      }

      v53 = 32;
      v54 = v110;
      v55 = v108;
      do
      {
        v56 = *(v51 + v53);

        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v56, v55, v54 & 1);

        v53 += 8;
        --v52;
      }

      while (v52);
    }

    else
    {
      v109 = *(a1 + 16);
      v36 = *(v109 + 16);
      if (!v36)
      {
        return result;
      }

      v37 = (v28 + 8);
      v38 = result;

      v39 = 32;
      do
      {
        v40 = *(v109 + v39);

        CaptureList.Builder.OptionalNesting.addingOptional.getter();
        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v40, v29, v110 & 1);

        (*v37)(v29, v38);
        v39 += 8;
        --v36;
      }

      while (v36);
    }
  }

  if (v30 == 2)
  {
    v47 = a1 & 0xFFFFFFFFFFFFFFBLL;
    v49 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v48 = *(v47 + 56);
    v109 = v49;
    if (v48)
    {
    }

    else
    {

      DSLTree.Node.outputDefiningNode.getter(v49);
    }

    v95 = v108;
    CaptureList.Builder.OptionalNesting.depth.getter();
    static Source.Location.fake.getter();
    v96 = v110;
    CaptureList.Capture.init(name:type:optionalDepth:visibleInTypedOutput:_:)();
    v97 = CaptureList.Builder.captures.modify();
    CaptureList.append(_:)();
    (*(v19 + 8))(v21, v18);
    v97(v111, 0);
    return CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v109, v95, v96 & 1);
  }

  else
  {
    if (v30 == 3)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v32 = *(swift_projectBox() + *(v31 + 48));

      v33 = v110 & 1;
      v34 = v32;
      v35 = v108;
    }

    else
    {
      v50 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v34 = v50;
      v35 = v108;
      v33 = 0;
    }

    CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v34, v35, v33);
  }
}

uint64_t static CaptureList.Builder.build(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CaptureList.Builder.OptionalNesting();
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Source.Location();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for CaptureList.Capture();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CaptureList.Builder();
  v11 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  CaptureList.Builder.init()();
  DSLTree.Node.outputDefiningNode.getter(v14);

  static Source.Location.fake.getter();
  CaptureList.Capture.init(name:type:optionalDepth:visibleInTypedOutput:_:)();
  v15 = CaptureList.Builder.captures.modify();
  CaptureList.append(_:)();
  (*(v8 + 8))(v10, v7);
  v15(v21, 0);
  CaptureList.Builder.OptionalNesting.init(canNest:)();
  CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v14, v5, 1);
  (*(v18 + 8))(v5, v19);
  CaptureList.Builder.captures.getter();
  return (*(v11 + 8))(v13, v17);
}

uint64_t DSLTree.Node.outputDefiningNode.getter(unint64_t a1)
{
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) - 3 > 1)
  {

    return a1;
  }

  else
  {
    result = DSLTree.Node.children.getter(a1);
    if (*(result + 16))
    {
      v2 = *(result + 32);

      v3 = DSLTree.Node.outputDefiningNode.getter(v2);

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t DSLTree.Node._canOnlyMatchAtStartImpl(_:)(unint64_t *a1, unint64_t a2)
{
  v81 = a1;
  v3 = type metadata accessor for AST.Quantification.Amount();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AST.Atom.Number();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Group.Kind();
  v73 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AST.MatchingOptionSequence();
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DSLTree._AST.GroupKind(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DSLTree.Atom(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v71 - v24;
  v26 = 2;
  switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    case 1uLL:
      v19 = 0xFFFFFFFFFFFFFFBLL;
      v13 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v52 = *(v13 + 2);

      v53 = 0;
      v8 = v81;
      while (2)
      {
        if (v52 != v53)
        {
          if (v53 < *(v13 + 2))
          {
            v20 = v53 + 1;
            v16 = *&v13[8 * v53 + 32];

            v26 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v8, v16);
            a2 = v26;

            v53 = v20;
            if (v26 != 2)
            {

              return v26;
            }

            continue;
          }

          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 + 1, 1, v26);
LABEL_6:
          v29 = *(v26 + 16);
          v28 = *(v26 + 24);
          v16 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
          }

          *(v26 + 16) = v16;
          *(v26 + 4 * v29 + 32) = v19;
          *v20 = v26;
          v30 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v20, v13);
          v13 = *v20;
          if (*(*v20 + 16))
          {
            v26 = v30;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v31 = *(v13 + 2);
              if (v31)
              {
LABEL_11:
                *(v13 + 2) = v31 - 1;
                *v20 = v13;
                return v26;
              }

              goto LABEL_75;
            }
          }

          else
          {
            __break(1u);
LABEL_72:
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 + 1, 1, v29);
LABEL_17:
            v48 = *(v29 + 16);
            v47 = *(v29 + 24);
            if (v48 >= v47 >> 1)
            {
              v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v29);
            }

            *(v29 + 16) = v48 + 1;
            *(v29 + 4 * v48 + 32) = a2;
            a2 = v81;
            *v81 = v29;
            v49 = v73;
            (*(v73 + 32))(v10, v16, v8);
            if ((*(v49 + 88))(v10, v8) == *MEMORY[0x1E69E8E58])
            {
              (*(v49 + 96))(v10, v8);
              v50 = v71;
              v16 = v72;
              (*(v71 + 32))(v13, v10, v72);
              MatchingOptions.Representation.apply(_:)(v13);
              (*(v50 + 8))(v13, v16);
              *a2 = v29;
            }

            else
            {
              (*(v49 + 8))(v10, v8);
            }

            v26 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(a2, v19);

            v13 = *a2;
            if (*(*a2 + 16))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v67 = *(v13 + 2);
                if (!v67)
                {
LABEL_77:
                  __break(1u);
                  goto LABEL_78;
                }

LABEL_47:
                *(v13 + 2) = v67 - 1;
                *a2 = v13;
                return v26;
              }

LABEL_76:
              v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
              v67 = *(v13 + 2);
              if (!v67)
              {
                goto LABEL_77;
              }

              goto LABEL_47;
            }

            __break(1u);
          }

          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          v31 = *(v13 + 2);
          if (v31)
          {
            goto LABEL_11;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        break;
      }

      return 0;
    case 2uLL:
      v20 = v81;
      v26 = *v81;
      v16 = *(*v81 + 16);
      if (!v16)
      {
        goto LABEL_68;
      }

      v13 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v19 = *(v26 + 4 * v16 + 28);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_70;
    case 3uLL:
      v20 = 0xFFFFFFFFFFFFFFBLL;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v46 = swift_projectBox();
      v19 = *(v46 + *(v45 + 48));
      outlined init with copy of DSLTree._AST.AbsentFunction(v46, v16, type metadata accessor for DSLTree._AST.GroupKind);
      v29 = *v81;
      v26 = *(*v81 + 16);
      if (!v26)
      {
        goto LABEL_69;
      }

      LODWORD(a2) = *(v29 + 4 * v26 + 28);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_17;
      }

      goto LABEL_72;
    case 4uLL:
      v27 = ((a2 & 0xFFFFFFFFFFFFFFBLL) + 16);
      goto LABEL_22;
    case 5uLL:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
      v57 = swift_projectBox();
      v58 = *(v57 + *(v56 + 48));
      v59 = *(v57 + *(v56 + 64));

      v60 = v81;
      v61 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v81, v58);

      if (v61 == 2 || (v61 & 1) == 0)
      {

        return 0;
      }

      else
      {
        v62 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v60, v59);

        return v62 & 1;
      }

    case 6uLL:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v33 = swift_projectBox();
      v34 = *(v33 + *(v32 + 64));
      v35 = v74;
      outlined init with copy of DSLTree._AST.AbsentFunction(v33, v74, type metadata accessor for DSLTree._AST.QuantificationAmount);
      v37 = v75;
      v36 = v76;
      v38 = v79;
      (*(v75 + 16))(v79, v35, v76);
      v39 = (*(v37 + 88))(v38, v36);
      if (v39 == *MEMORY[0x1E69E8AC8])
      {

        outlined destroy of MEProgram(v35, type metadata accessor for DSLTree._AST.QuantificationAmount);
        (*(v37 + 96))(v38, v36);
        v41 = v77;
        v40 = v78;
        v42 = v80;
        (*(v78 + 32))(v77, v38, v80);
      }

      else
      {
        v42 = v80;
        v41 = v77;
        v40 = v78;
        if (v39 == *MEMORY[0x1E69E8AD0])
        {

          outlined destroy of MEProgram(v35, type metadata accessor for DSLTree._AST.QuantificationAmount);
          (*(v37 + 96))(v38, v36);
          (*(v40 + 32))(v41, v38, v42);
        }

        else
        {
          if (v39 == *MEMORY[0x1E69E8AC0])
          {
            outlined destroy of MEProgram(v35, type metadata accessor for DSLTree._AST.QuantificationAmount);
            (*(v37 + 8))(v38, v36);
            return 2;
          }

          if (v39 != *MEMORY[0x1E69E8AB8])
          {
            v63 = v81;
            if (v39 != *MEMORY[0x1E69E8AB0])
            {
              if (v39 == *MEMORY[0x1E69E8AD8])
              {

                outlined destroy of MEProgram(v35, type metadata accessor for DSLTree._AST.QuantificationAmount);
                goto LABEL_49;
              }

              if (v39 != *MEMORY[0x1E69E8AE0])
              {
LABEL_82:
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                JUMPOUT(0x18E5C3338);
              }
            }

            outlined destroy of MEProgram(v35, type metadata accessor for DSLTree._AST.QuantificationAmount);
            return 2;
          }

          outlined destroy of MEProgram(v35, type metadata accessor for DSLTree._AST.QuantificationAmount);
          (*(v37 + 96))(v38, v36);
          v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
          (*(v40 + 32))(v41, v38, v42);
          (*(v40 + 8))(&v38[v70], v42);
        }
      }

      v63 = v81;
      v64 = AST.Atom.Number.value.getter();
      v66 = v65;
      (*(v40 + 8))(v41, v42);
      if ((v66 & 1) != 0 || v64 <= 0)
      {

        return 2;
      }

LABEL_49:
      v26 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v63, v34);

      return v26;
    case 7uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
      return 0;
    case 8uLL:
      v54 = swift_projectBox();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        outlined init with copy of DSLTree._AST.AbsentFunction(v54, v25, type metadata accessor for DSLTree.Atom);
        if (!*v25)
        {
          return 1;
        }

        if (*v25 == 9)
        {
          v68 = *(*v81 + 16);
          if (v68)
          {
            return (*(*v81 + 4 * v68 + 28) & 4) == 0;
          }

          goto LABEL_81;
        }
      }

      else if (EnumCaseMultiPayload == 6)
      {
        outlined init with copy of DSLTree._AST.AbsentFunction(v54, v23, type metadata accessor for DSLTree.Atom);
        outlined init with take of DSLTree.QuantificationKind(v23, v19, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
        v16 = v81;
        v13 = *v81;
        v26 = *(*v81 + 16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (!v26)
          {
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          goto LABEL_32;
        }

LABEL_78:
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        if (!v26)
        {
          goto LABEL_79;
        }

LABEL_32:
        if (v26 > *(v13 + 2))
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        MatchingOptions.Representation.apply(_:)(v19);
        outlined destroy of MEProgram(v19, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
        *v16 = v13;
        return 2;
      }

      return 0;
    case 9uLL:
    case 0x10uLL:
      return v26;
    case 0xCuLL:
      v27 = swift_projectBox();
LABEL_22:
      v51 = *v27;

      v26 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v81, v51);

      return v26;
    default:

      v44 = specialized Sequence.allSatisfy(_:)(v43, v81);

      return v44;
  }
}

uint64_t DSLTree._Tree.children.getter(unint64_t a1)
{
  v2 = type metadata accessor for AST.Node();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree._AST.AbsentFunction(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v9 <= 4)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      }

      else
      {
        if (v9 == 3)
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
          v26 = swift_projectBox();
          v27 = *(v25 + 48);
LABEL_39:
          v34 = *(v26 + v27);
          goto LABEL_40;
        }

        v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_18E5ED040;
      *(v10 + 32) = v34;
      goto LABEL_41;
    }

    if (v9)
    {
      v35 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v36 = *(v35 + 16);
      v10 = MEMORY[0x1E69E7CC0];
      if (v36)
      {
        v62 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
        v10 = v62;
        v37 = *(v62 + 16);
        v38 = 32;
        do
        {
          v39 = *(v35 + v38);
          v62 = v10;
          v40 = *(v10 + 24);

          if (v37 >= v40 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v37 + 1, 1);
            v10 = v62;
          }

          *(v10 + 16) = v37 + 1;
          *(v10 + 8 * v37 + 32) = v39;
          v38 += 8;
          ++v37;
          --v36;
        }

        while (v36);
        goto LABEL_47;
      }
    }

    else
    {
      v28 = *(a1 + 16);
      v29 = *(v28 + 16);
      v10 = MEMORY[0x1E69E7CC0];
      if (v29)
      {
        v62 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
        v10 = v62;
        v30 = *(v62 + 16);
        v31 = 32;
        do
        {
          v32 = *(v28 + v31);
          v62 = v10;
          v33 = *(v10 + 24);

          if (v30 >= v33 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v30 + 1, 1);
            v10 = v62;
          }

          *(v10 + 16) = v30 + 1;
          *(v10 + 8 * v30 + 32) = v32;
          v31 += 8;
          ++v30;
          --v29;
        }

        while (v29);
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (v9 > 0x10)
    {
LABEL_36:
      if (v9 == 5)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
        v45 = swift_projectBox();
        v46 = *(v45 + *(v44 + 48));
        v47 = *(v45 + *(v44 + 64));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMR);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_18E5ED050;
        *(v10 + 32) = v46;
        *(v10 + 40) = v47;

LABEL_41:

        return v10;
      }

      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v26 = swift_projectBox();
      v27 = *(v48 + 64);
      goto LABEL_39;
    }

    v10 = MEMORY[0x1E69E7CC0];
    if (((1 << v9) & 0x1E780) == 0)
    {
      if (v9 == 11)
      {
        v11 = swift_projectBox();
        outlined init with copy of DSLTree._AST.AbsentFunction(v11, v8, type metadata accessor for DSLTree._AST.AbsentFunction);
        v12 = AST.AbsentFunction.children.getter();
        outlined destroy of MEProgram(v8, type metadata accessor for DSLTree._AST.AbsentFunction);
        v13 = *(v12 + 16);
        if (v13)
        {
          v62 = v10;
          v57 = v12;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
          v14 = v57;
          v15 = 0;
          v16 = v62;
          v59 = v57 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
          v60 = v13;
          v58 = v3 + 16;
          v55 = (v3 + 8);
          v56 = (v3 + 32);
          v61 = v3;
          do
          {
            if (v15 >= *(v14 + 16))
            {
              __break(1u);
              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            (*(v3 + 16))(v5, v59 + *(v3 + 72) * v15, v2);
            v17 = convert #1 () in AST.Node.dslTreeNode.getter(v5);
            if (((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 0xC)
            {
              (*v55)(v5, v2);
            }

            else
            {
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
              v19 = swift_allocBox();
              v20 = *(v18 + 48);
              v21 = v56;
              v14 = v57;
              *v22 = v17;
              (*v21)(v22 + v20, v5, v2);
              v17 = v19 | 0x6000000000000000;
            }

            v62 = v16;
            v24 = *(v16 + 16);
            v23 = *(v16 + 24);
            if (v24 >= v23 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
              v14 = v57;
              v16 = v62;
            }

            ++v15;
            *(v16 + 16) = v24 + 1;
            *(v16 + 8 * v24 + 32) = v17;
            v3 = v61;
          }

          while (v60 != v15);

          v49 = *(v16 + 16);
          if (v49)
          {
            goto LABEL_43;
          }
        }

        else
        {

          v16 = MEMORY[0x1E69E7CC0];
          v49 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v49)
          {
LABEL_43:
            v62 = v10;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
            v10 = v62;
            v50 = *(v62 + 16);
            v51 = 32;
            do
            {
              v52 = *(v16 + v51);
              v62 = v10;
              v53 = *(v10 + 24);

              if (v50 >= v53 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v50 + 1, 1);
                v10 = v62;
              }

              *(v10 + 16) = v50 + 1;
              *(v10 + 8 * v50 + 32) = v52;
              v51 += 8;
              ++v50;
              --v49;
            }

            while (v49);
LABEL_47:

            return v10;
          }
        }

        return MEMORY[0x1E69E7CC0];
      }

      if (v9 == 12)
      {
        v41 = *swift_projectBox();

        v42 = DSLTree._Tree.children.getter(v41);

        return v42;
      }

      goto LABEL_36;
    }
  }

  return v10;
}

uint64_t static DSLTree._AST.GroupKind.atomicNonCapturing.getter@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t static DSLTree._AST.QuantificationAmount.exactly(_:)@<X0>(unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Source.Location();
  MEMORY[0x1EEE9AC00](v5 - 8);
  static Source.Location.fake.getter();
  AST.Atom.Number.init(_:at:)();
  v6 = *a2;
  v7 = type metadata accessor for AST.Quantification.Amount();
  return (*(*(v7 - 8) + 104))(a3, v6, v7);
}

uint64_t static DSLTree._AST.QuantificationAmount.range(_:_:)@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Source.Location();
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR);
  static Source.Location.fake.getter();
  AST.Atom.Number.init(_:at:)();
  static Source.Location.fake.getter();
  AST.Atom.Number.init(_:at:)();
  v5 = *MEMORY[0x1E69E8AB8];
  v6 = type metadata accessor for AST.Quantification.Amount();
  return (*(*(v6 - 8) + 104))(a3, v5, v6);
}

uint64_t RegexRepetitionBehavior.dslTreeKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for AST.Quantification.Kind();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E72620F0 + v3);

  return v5(a1, v6, v4);
}

uint64_t Regex.Match.output.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8 - 16];
  Description = v4[-1].Description;
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v14 = v2[1];
  v15 = v2[2];
  if (v4 == &type metadata for AnyRegexOutput)
  {
    v23[0] = *v2;
    v23[1] = v14;
    v23[2] = v15;

    return swift_dynamicCast();
  }

  else
  {
    v16 = v11;
    specialized Sequence<>.existentialOutput(from:)(*v2, v2[1], v15, v23);
    outlined init with copy of Any(v23, v22);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v23);
      Description[7](v9, 0, 1, v4);
      v17 = Description[4];
      v17(v13, v9, v4);
      return (v17)(a2, v13, v4);
    }

    else
    {
      Description[7](v9, 1, 1, v4);
      (*(v6 + 8))(v9, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v19 = swift_allocObject();
      v21 = xmmword_18E5ED040;
      *(v19 + 16) = xmmword_18E5ED040;
      outlined init with copy of Any(v23, v19 + 32);
      print(_:separator:terminator:)();

      v20 = swift_allocObject();
      *(v20 + 16) = v21;
      *(v20 + 56) = swift_getMetatypeMetadata();
      *(v20 + 32) = v4;
      print(_:separator:terminator:)();

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t Regex.Match.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v32 = a1;
  v6 = v5;
  v7 = *(a2 + 16);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v26 = *(v3 + 24);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v30 = v7;
  v29 = v14;
  v31 = v11;
  if (v12)
  {
    v44 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    if (v12 <= *(v11 + 16))
    {
      v25[0] = v6;
      v25[1] = a3;
      v13 = v44;
      v16 = v11 + 32;
      while (1)
      {
        outlined init with copy of AnyRegexOutput.ElementRepresentation(v16, &v39);
        v42 = v9;
        v43 = v10;
        outlined init with copy of (range: Range<String.Index>, value: Any?)?(v40, v37, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
        if (v38[3] == 1)
        {
          break;
        }

        outlined init with copy of Any?(v38, &v35);
        if (!v36)
        {

          outlined destroy of Any?(v38, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
          goto LABEL_9;
        }

        outlined destroy of AnyRegexOutput.Element(&v39);
        outlined init with take of Any(&v35, &v33);
        __swift_project_boxed_opaque_existential_0(&v33, v34);
        DynamicType = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_0(&v33);
        outlined destroy of Any?(v38, &unk_1F0190550, &cache variable for noncanonical specialized generic type metadata for Any?);
LABEL_10:
        v44 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v13 = v44;
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 8 * v19 + 32) = DynamicType;
        v16 += 88;
        if (!--v12)
        {
          goto LABEL_13;
        }
      }

      outlined destroy of SplitSequence<SubstringSearcher>(v37, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
LABEL_9:
      outlined destroy of AnyRegexOutput.Element(&v39);
      DynamicType = static TypeConstruction.optionalType<A>(of:depth:)();
      goto LABEL_10;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_13:
  v39 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypXpGMd, &_sSayypXpGMR);
  lazy protocol witness table accessor for type [Any.Type] and conformance [A](&lazy protocol witness table cache variable for type [Any.Type] and conformance [A], &_sSayypXpGMd, &_sSayypXpGMR, MEMORY[0x1E69E6340]);
  v20 = static MemoryLayout.tupleElementIndex<A>(of:elementTypes:)();
  v22 = v21;

  if (v22)
  {
    v39 = v9;
    v40[0] = v10;
    v40[1] = v31;
    v41 = v26;
    v23 = v27;
    Regex.Match.output.getter(v29, v27);
    swift_getAtKeyPath();
    return (*(v28 + 8))(v23, v30);
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v20 < *(v31 + 16))
  {
    outlined init with copy of AnyRegexOutput.ElementRepresentation(v31 + 88 * v20 + 32, &v39);
    v42 = v9;
    v43 = v10;
    v24 = v39;

    constructExistentialOutputComponent(from:component:optionalCount:)(v40, v24, v37);
    outlined destroy of AnyRegexOutput.Element(&v39);
    swift_getCanonicalSpecializedMetadata();
    return swift_dynamicCast();
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t Regex.Match.subscript.getter(uint64_t *a1)
{
  v4 = *a1;
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v10, v20);
      *(&v21 + 1) = v6;
      v22 = v5;
      v17 = v20[4];
      v18 = v21;
      v19 = v5;
      v13 = v20[0];
      v14 = v20[1];
      v15 = v20[2];
      v16 = v20[3];
      if ((v21 & 1) == 0 && *(&v17 + 1) == v4)
      {

        v23[4] = v17;
        v23[5] = v18;
        v24 = v19;
        v23[0] = v13;
        v23[1] = v14;
        v23[2] = v15;
        v23[3] = v16;
        v11 = v13;

        constructExistentialOutputComponent(from:component:optionalCount:)(v23 + 8, v11, v20);

        outlined destroy of AnyRegexOutput.Element(v23);
        return swift_dynamicCast();
      }

      ++v9;

      outlined destroy of AnyRegexOutput.Element(&v13);
      v10 += 88;
      if (v8 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

LABEL_9:

  __break(1u);
  return result;
}

uint64_t Regex.wholeMatch(in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  v8 = type metadata accessor for MEProgram(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1;
  }

  v12 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  v13 = v12 | (v11 << 16);
  Regex.Program.loweredProgram.getter(v10);
  static Executor._run(_:_:subjectBounds:searchBounds:mode:)(v10, a1, a2, 15, v13, 15, v13, a3, a4);
  return outlined destroy of MEProgram(v10, type metadata accessor for MEProgram);
}

uint64_t Regex.firstMatch(in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for MEProgram(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1;
  }

  v12 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  v13 = v12 | (v11 << 16);
  Regex.Program.loweredProgram.getter(v10);
  static Executor.firstMatch(_:_:subjectBounds:searchBounds:)(v10, a1, a2, 15, v13, 15, v13, *(a3 + 16), a4);
  return outlined destroy of MEProgram(v10, type metadata accessor for MEProgram);
}

uint64_t Regex.prefixMatch(in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, void *a6@<X8>)
{
  v16 = a5;
  v11 = type metadata accessor for MEProgram(0);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    Regex.Program.loweredProgram.getter(v14);
    static Executor._run(_:_:subjectBounds:searchBounds:mode:)(v14, a3, a4, a1, a2, a1, a2, v16, a6);
    return outlined destroy of MEProgram(v14, type metadata accessor for MEProgram);
  }

  return result;
}

uint64_t BidirectionalCollection<>.wholeMatch<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  (*(a5 + 16))(&v17, a3, a5);
  Collection.subscript.getter();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Regex(0, AssociatedTypeWitness, v9, v10);
  a7(v13, v14, v15, v16, v11);
}

void *RegexComponent.wrapInOption(_:addingIf:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v29 = a3;
  v28 = a2;
  v27 = a1;
  v30 = a5;
  v6 = type metadata accessor for Source.Location();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for AST.MatchingOption.Kind();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AST.MatchingOptionSequence();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV14MatchingOptionVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV14MatchingOptionVGMR);
  type metadata accessor for AST.MatchingOption();
  *(swift_allocObject() + 16) = xmmword_18E5ED040;
  (*(v8 + 16))(v10, v27, v7);
  static Source.Location.fake.getter();
  AST.MatchingOption.init(_:location:)();
  if (v28)
  {
    AST.MatchingOptionSequence.init(adding:)();
  }

  else
  {
    AST.MatchingOptionSequence.init(removing:)();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
  v16 = swift_allocBox();
  v18 = v17;
  v19 = *(v15 + 48);
  (*(v12 + 32))(v17, v14, v11);
  v20 = *MEMORY[0x1E69E8E58];
  v21 = type metadata accessor for AST.Group.Kind();
  (*(*(v21 - 8) + 104))(v18, v20, v21);
  (*(a4 + 16))(&v31, v29, a4);
  v22 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v18 + v19) = *(v22 + 24);

  type metadata accessor for Regex.Program(0, AssociatedTypeWitness, v24, v25);
  result = swift_allocObject();
  result[3] = v16 | 0x1000000000000004;
  result[4] = 0;
  result[2] = 0;
  *v30 = result;
  return result;
}

uint64_t Regex.wordBoundaryKind(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for AST.MatchingOption.Kind();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v13[1] = *v3;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8A48], v7);
  WitnessTable = swift_getWitnessTable();
  RegexComponent.wrapInOption(_:addingIf:)(v10, a1, a2, WitnessTable, a3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t Regex.ignoresCase(_:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for AST.MatchingOption.Kind();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *v4;
  (*(v10 + 104))(v12, *a3, v9);
  WitnessTable = swift_getWitnessTable();
  RegexComponent.wrapInOption(_:addingIf:)(v12, a1, a2, WitnessTable, a4);
  return (*(v10 + 8))(v12, v9);
}

uint64_t Regex.repetitionBehavior(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for AST.MatchingOption.Kind();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  v14 = *a1;
  v18[1] = *v3;
  if (v14 == 2)
  {
    (*(v8 + 104))(v18 - v12, *MEMORY[0x1E69E8A38], v7);
    WitnessTable = swift_getWitnessTable();
    RegexComponent.wrapInOption(_:addingIf:)(v13, 1, a2, WitnessTable, a3);
    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8A28], v7);
    v17 = swift_getWitnessTable();
    RegexComponent.wrapInOption(_:addingIf:)(v11, v14 == 1, a2, v17, a3);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t Regex.matchingSemantics(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for AST.MatchingOption.Kind();
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = (v8 + 8);
  v16[1] = *v3;
  if (v11)
  {
    v13 = MEMORY[0x1E69E8A50];
  }

  else
  {
    v13 = MEMORY[0x1E69E8A68];
  }

  (*(v8 + 104))(v10, *v13, v7);
  WitnessTable = swift_getWitnessTable();
  RegexComponent.wrapInOption(_:addingIf:)(v10, 1, a2, WitnessTable, a3);
  return (*v12)(v10, v7);
}

uint64_t Regex._nsreCompatibility.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for AST.MatchingOption.Kind();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v9 = *(v6 + 104);
  v9(v8, *MEMORY[0x1E69E8A20], v5);
  WitnessTable = swift_getWitnessTable();
  RegexComponent.wrapInOption(_:addingIf:)(v8, 1, a1, WitnessTable, &v14);
  v11 = *(v6 + 8);
  v11(v8, v5);
  v13 = v14;
  v9(v8, *MEMORY[0x1E69E8A50], v5);
  RegexComponent.wrapInOption(_:addingIf:)(v8, 1, a1, WitnessTable, a2);
  v11(v8, v5);
}

Swift::Int RegexSemanticLevel.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MatchMode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v2);
  return Hasher._finalize()();
}

uint64_t matchesWord #1 (at:) in Processor.atSimpleBoundary(_:_:)(unint64_t a1, char a2, unint64_t *a3, char a4)
{
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v13 = a3[1];
  if (a2)
  {
    _StringGuts.validateScalarIndex(_:)(a1, v12, v13);
    if ((v13 & 0x1000000000000000) != 0)
    {
      v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v21[0] = v12;
        v21[1] = v13 & 0xFFFFFFFFFFFFFFLL;
      }

      else if ((v12 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v17 = _decodeScalar(_:startingAt:)();
    }

    v18 = v17;
    Unicode.Scalar.properties.getter();
    v19 = Unicode.Scalar.Properties.isAlphabetic.getter();
    (*(v9 + 8))(v11, v8);
    if ((v19 & 1) == 0 && v18 != 95)
    {
      v16 = 0;
      return v16 & 1;
    }

    v15 = v18 < 0x80;
LABEL_15:
    v16 = v15 | a4 ^ 1;
    return v16 & 1;
  }

  String.subscript.getter();
  if (Character.isWordCharacter.getter())
  {
    v14 = Character.asciiValue.getter();

    v15 = (v14 & 0x100) == 0;
    goto LABEL_15;
  }

  v16 = 0;
  return v16 & 1;
}

void *_RegexFactory.ignoreCapturesInTypedOutput<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(&v12, a1, a2);
  v7 = *(v12 + 24);

  v8 = DSLTree.Node.hasChildNodes.getter(v7);

  if (v8)
  {
    v9 = swift_allocObject();
    v6(&v12, a1, a2);
    *(v9 + 16) = *(v12 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV7ProgramCySs_GMd, &_s17_StringProcessing5RegexV7ProgramCySs_GMR);
    result = swift_allocObject();
    result[3] = v9 | 0x2000000000000000;
  }

  else
  {
    v6(&v12, a1, a2);
    v11 = *(v12 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV7ProgramCySs_GMd, &_s17_StringProcessing5RegexV7ProgramCySs_GMR);
    result = swift_allocObject();
    result[3] = v11;
  }

  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

void *_RegexFactory.accumulate<A, B, C>(_:_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t (*a5)(uint64_t, uint64_t)@<X7>, void *a6@<X8>, uint64_t a7@<X2>)
{
  (*(a3 + 16))(&v19, a1, a3);
  v12 = *(v19 + 24);

  (*(a4 + 16))(&v18, a2, a4);
  v13 = *(v18 + 24);

  v14 = a5(v13, v12);

  type metadata accessor for Regex.Program(0, a7, v15, v16);
  result = swift_allocObject();
  result[3] = v14;
  result[4] = 0;
  result[2] = 0;
  *a6 = result;
  return result;
}

double _RegexFactory.empty<A>()@<D0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for Regex.Program(0, a2, a3, a4);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  result = 0.0;
  *(v5 + 16) = xmmword_18E5ED270;
  *a1 = v5;
  return result;
}

void *_RegexFactory.scalar<A>(_:)@<X0>(int a1@<W0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  type metadata accessor for DSLTree.Atom(0);
  v6 = swift_allocBox();
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Regex.Program(0, a3, v8, v9);
  result = swift_allocObject();
  result[3] = v6 | 0x4000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a2 = result;
  return result;
}

void *_RegexFactory.assertion<A>(_:)@<X0>(char *a1@<X0>, void *a3@<X8>, uint64_t x1_0@<X1>)
{
  v6 = *a1;
  type metadata accessor for DSLTree.Atom(0);
  v7 = swift_allocBox();
  *v8 = v6;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Regex.Program(0, x1_0, v9, v10);
  result = swift_allocObject();
  result[3] = v7 | 0x4000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

uint64_t _RegexFactory.char<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>)
{
  type metadata accessor for DSLTree.Atom(0);
  v8 = swift_allocBox();
  *v9 = a1;
  v9[1] = a2;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Regex.Program(0, a4, v10, v11);
  v12 = swift_allocObject();
  v12[3] = v8 | 0x4000000000000000;
  v12[4] = 0;
  v12[2] = 0;
  *a3 = v12;
}

void *_RegexFactory.symbolicReference<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  v5 = *a1;
  type metadata accessor for DSLTree.Atom(0);
  v6 = swift_allocBox();
  *v7 = v5;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Regex.Program(0, a3, v8, v9);
  result = swift_allocObject();
  result[3] = v6 | 0x4000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a2 = result;
  return result;
}

uint64_t _RegexFactory.customCharacterClass<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = v7 | 0x3000000000000004;
  type metadata accessor for Regex.Program(0, a3, v9, v10);
  v11 = swift_allocObject();
  v11[3] = v8;
  v11[4] = 0;
  v11[2] = 0;
  *a2 = v11;
}

void *_RegexFactory.zeroOrOne<A, B>(_:_:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, unsigned int *a4@<X5>, void *a5@<X8>, uint64_t a6@<X2>)
{
  v31 = a5;
  v11 = type metadata accessor for DSLTree.QuantificationKind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  if (*a1 > 1u)
  {
    if (*a1 != 2)
    {
      swift_storeEnumTagMultiPayload();
      goto LABEL_9;
    }

    v17 = MEMORY[0x1E69E8A80];
  }

  else if (*a1)
  {
    v17 = MEMORY[0x1E69E8A90];
  }

  else
  {
    v17 = MEMORY[0x1E69E8A88];
  }

  v18 = *v17;
  v19 = type metadata accessor for AST.Quantification.Kind();
  (*(*(v19 - 8) + 104))(v14, v18, v19);
  swift_storeEnumTagMultiPayload();
  outlined init with take of DSLTree.QuantificationKind(v14, v16, type metadata accessor for DSLTree.QuantificationKind);
LABEL_9:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
  v21 = swift_allocBox();
  v23 = v22;
  v24 = *(v20 + 48);
  v25 = *(v20 + 64);
  v26 = *a4;
  v27 = type metadata accessor for AST.Quantification.Amount();
  (*(*(v27 - 8) + 104))(v23, v26, v27);
  outlined init with take of DSLTree.QuantificationKind(v16, v23 + v24, type metadata accessor for DSLTree.QuantificationKind);
  (*(a3 + 16))(&v32, a2, a3);
  *(v23 + v25) = *(v32 + 24);

  type metadata accessor for Regex.Program(0, a6, v28, v29);
  result = swift_allocObject();
  result[3] = v21 | 0x3000000000000000;
  result[4] = 0;
  result[2] = 0;
  *v31 = result;
  return result;
}

void *_RegexFactory.exactly<A, B>(_:_:)@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>, uint64_t x2_0@<X2>)
{
  v8 = type metadata accessor for Source.Location();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = *(v9 + 64);
  static Source.Location.fake.getter();
  AST.Atom.Number.init(_:at:)();
  v14 = *MEMORY[0x1E69E8AC8];
  v15 = type metadata accessor for AST.Quantification.Amount();
  (*(*(v15 - 8) + 104))(v12, v14, v15);
  type metadata accessor for DSLTree.QuantificationKind(0);
  swift_storeEnumTagMultiPayload();
  (*(a3 + 16))(&v20, a2, a3);
  *(v12 + v13) = *(v20 + 24);

  type metadata accessor for Regex.Program(0, x2_0, v16, v17);
  result = swift_allocObject();
  result[3] = v10 | 0x3000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a4 = result;
  return result;
}

void *_RegexFactory.repeating<A, B>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>, uint64_t a7@<X4>)
{
  v17 = *a3;
  (*(a5 + 16))(&v16, a4, a5);
  v11 = *(v16 + 24);

  v12 = specialized static DSLTree.Node.repeating(_:_:_:)(a1, a2, &v17, v11);

  type metadata accessor for Regex.Program(0, a7, v13, v14);
  result = swift_allocObject();
  result[3] = v12;
  result[4] = 0;
  result[2] = 0;
  *a6 = result;
  return result;
}

void *_RegexFactory.atomicNonCapturing<A, B>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int *a3@<X4>, void *a4@<X8>, uint64_t a5@<X1>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *a3;
  v16 = type metadata accessor for AST.Group.Kind();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  (*(a2 + 16))(&v20, a1, a2);
  *(v13 + v14) = *(v20 + 24);

  type metadata accessor for Regex.Program(0, a5, v17, v18);
  result = swift_allocObject();
  result[3] = v11 | 0x1000000000000004;
  result[4] = 0;
  result[2] = 0;
  *a4 = result;
  return result;
}

void *_RegexFactory.orderedChoice<A, B>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>, uint64_t a4@<X1>)
{
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18E5ED040;
  (*(a2 + 16))(&v13, a1, a2);
  *(v9 + 32) = *(v13 + 24);

  *(v8 + 16) = v9;
  type metadata accessor for Regex.Program(0, a4, v10, v11);
  result = swift_allocObject();
  result[3] = v8;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

void *_RegexFactory.capture<A, B>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>, uint64_t a4@<X1>)
{
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  *(v8 + 40) = 1;
  (*(a2 + 16))(&v12, a1, a2);
  *(v8 + 48) = *(v12 + 24);

  type metadata accessor for Regex.Program(0, a4, v9, v10);
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0;
  result = swift_allocObject();
  result[3] = v8 | 0x1000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

void *_RegexFactory.capture<A, B>(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>, uint64_t a5@<X2>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  (*(a3 + 16))(&v14, a2, a3);
  *(v10 + 48) = *(v14 + 24);

  type metadata accessor for Regex.Program(0, a5, v11, v12);
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0;
  result = swift_allocObject();
  result[3] = v10 | 0x1000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a4 = result;
  return result;
}

void *_RegexFactory.capture<A, B, C, D>(_:_:_:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t x5_0@<X5>, uint64_t a8, uint64_t a9, void (*a10)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = swift_allocObject();
  v17 = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  if (a2)
  {
    v18 = 0;
  }

  else
  {
    v18 = a1;
  }

  *(v16 + 32) = v18;
  *(v16 + 40) = a2 & 1;
  (*(a9 + 16))(&v27, a8, a9);
  *(v17 + 48) = *(v27 + 24);

  a10(v28, a3, a4, a5, a6);
  v19 = v29;
  v20 = v28[1];
  *(v17 + 56) = v28[0];
  *(v17 + 72) = v20;
  *(v17 + 88) = v19;
  type metadata accessor for Regex.Program(0, x5_0, v21, v22);
  result = swift_allocObject();
  result[3] = v17 | 0x1000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a7 = result;
  return result;
}

uint64_t TypedIndex.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of Collection.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v41 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Range();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v36 - v18;
  dispatch thunk of Collection.startIndex.getter();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v12, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v12[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v12, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v12, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = type metadata accessor for Slice();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TypedIndex<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TypedIndex.init(rawValue:)(a1, *(a2 + 16), a3);
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t TypedIndex.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v10 = a1;
  v4 = dispatch thunk of Collection.subscript.read();
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v6, AssociatedTypeWitness);
  return v4(v9, 0);
}

uint64_t protocol witness for Collection.startIndex.getter in conformance TypedIndex<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TypedIndex.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance TypedIndex<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TypedIndex.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance TypedIndex<A, B>(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = TypedIndex.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance TypedIndex<A, B>;
}

void protocol witness for Collection.subscript.read in conformance TypedIndex<A, B>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*TypedIndex.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  a1[1] = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  TypedIndex.subscript.getter(a2, v7);
  return TypedIndex.subscript.read;
}

void TypedIndex.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance TypedIndex<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

uint64_t protocol witness for Collection.index(after:) in conformance TypedIndex<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = TypedIndex.index(after:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance TypedIndex<A, B>(uint64_t *a1, uint64_t a2)
{
  result = TypedIndex.index(after:)(*a1, a2);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance TypedIndex<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(type metadata accessor for IndexingIterator() + 36);
  v7 = TypedIndex.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance TypedIndex<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance TypedIndex<A, B>(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t (*TypedIndex<>.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  *a1 = v6;
  *(v6 + 32) = a2;
  *(v6 + 40) = dispatch thunk of MutableCollection.subscript.modify();
  return TypedIndex<>.subscript.modify;
}

void TypedIndex<>.subscript.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance <> TypedIndex<A, B>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v11 = *a2;
  v5 = dispatch thunk of MutableCollection.subscript.modify();
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(v7, a1, AssociatedTypeWitness);
  return v5(v10, 0);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = TypedIndex<>.subscript.modify(v8, *a2, a3, *(a4 - 8));
  return protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance <> TypedIndex<A, B>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  specialized MutableCollection<>.subscript.setter(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = type metadata accessor for Slice();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>;
}

void protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Slice();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Range();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v16);
  return MutableCollection<>.subscript.modify;
}

void MutableCollection<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance <> TypedIndex<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = TypedIndex<>.index(before:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> TypedIndex<A, B>(uint64_t *a1, uint64_t a2)
{
  result = TypedIndex<>.index(before:)(*a1, a2);
  *a1 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance <> TypedIndex<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = TypedIndex.index(_:offsetBy:)(*a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance <> TypedIndex<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = TypedIndex.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, a4);
  *a5 = result;
  *(a5 + 8) = v7 & 1;
  return result;
}

uint64_t TypedIndex<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = v7;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  dispatch thunk of RangeReplaceableCollection.init<A>(_:)();
  return (*(v6 + 32))(a4, v9, a2);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance TypedInt<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TypedInt<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance TypedInt<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TypedInt<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t TypedInt.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ACE8E0](v0);

  return 35;
}

Swift::Bool __swiftcall _CharacterClassModel.Representation.isStrictAscii(options:)(_StringProcessing::MatchingOptions options)
{
  rawValue = options.stack._rawValue;
  LOBYTE(options.stack._rawValue) = 0;
  LODWORD(v3) = v1;
  if (v1 > 4u)
  {
    goto LABEL_7;
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      goto LABEL_18;
    }

    if (v1 != 4)
    {
      return options.stack._rawValue;
    }

    v3 = rawValue[2];
    if (v3)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_7:
    if (v3 != 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          return options.stack._rawValue;
        }

        v4 = rawValue[2];
        if (v4)
        {
          v5 = *(rawValue + v4 + 7);
          if ((v5 & 0x2000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_15;
        }

        goto LABEL_25;
      }

LABEL_20:
      v3 = rawValue[2];
      if (!v3)
      {
LABEL_26:
        __break(1u);
        return options.stack._rawValue;
      }

LABEL_21:
      v5 = *(rawValue + v3 + 7);
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v3 = rawValue[2];
    if (v3)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    v3 = rawValue[2];
    if (v3)
    {
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

  v6 = rawValue[2];
  if (!v6)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *(rawValue + v6 + 7);
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    LODWORD(options.stack._rawValue) = (v5 >> 11) & 1;
    return options.stack._rawValue;
  }

LABEL_15:
  LOBYTE(options.stack._rawValue) = 1;
  return options.stack._rawValue;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _CharacterClassModel.Representation@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized _CharacterClassModel.Representation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Instruction.OpCode(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Instruction.OpCode(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _CharacterClassModel()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](v1);
  MEMORY[0x193ACEF90](v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance _CharacterClassModel()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x193ACEFC0](*v0);
  MEMORY[0x193ACEF90](v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _CharacterClassModel(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](v2);
  MEMORY[0x193ACEF90](v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _CharacterClassModel.Representation()
{
  v1 = *v0;
  v2 = 0x3E796E613CLL;
  v3 = 0x707365746968773CLL;
  if (v1 != 6)
  {
    v3 = 0x3E64726F773CLL;
  }

  v4 = 0xD000000000000013;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 == 2)
  {
    v5 = 0x3E74696769643CLL;
  }

  if (*v0)
  {
    v2 = 0x61726720796E613CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _CharacterClassModel.description.getter(int a1)
{
  v1 = a1;
  v2 = (a1 & 0x1000000) == 0;
  if ((a1 & 0x1000000) != 0)
  {
    v3 = 544501614;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193ACE8E0](v3, v4);

  v5 = 0xE500000000000000;
  v6 = 0x3E796E613CLL;
  v7 = 0xEC0000003E656361;
  v8 = 0x707365746968773CLL;
  if (v1 != 6)
  {
    v8 = 0x3E64726F773CLL;
    v7 = 0xE600000000000000;
  }

  v9 = 0x800000018E5F2680;
  v10 = 0xD000000000000013;
  if (v1 == 4)
  {
    v10 = 0xD000000000000012;
  }

  else
  {
    v9 = 0x800000018E5F2660;
  }

  if (v1 <= 5u)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xE700000000000000;
  v12 = 0xD000000000000017;
  if (v1 == 2)
  {
    v12 = 0x3E74696769643CLL;
  }

  else
  {
    v11 = 0x800000018E5F26A0;
  }

  if (v1)
  {
    v6 = 0x61726720796E613CLL;
    v5 = 0xEE003E656D656870;
  }

  if (v1 > 1u)
  {
    v6 = v12;
    v5 = v11;
  }

  if (v1 <= 3u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (v1 <= 3u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x193ACE8E0](v13, v14);

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _CharacterClassModel()
{
  if (v0[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return _CharacterClassModel.description.getter(v3 | *v0 | v2 | v1);
}

void closure #1 in $defer #1 () in PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(uint64_t a1, char a2)
{
  PrettyPrinter.indent()();
  v3._countAndFlagsBits = 0x65747265766E692ELL;
  v3._object = 0xE900000000000064;
  PrettyPrinter.output(_:)(v3);
  if (a2)
  {
    PrettyPrinter.terminateLine()();
  }
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x193ACE940](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t _StringGuts.validateInclusiveScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateInclusiveSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(__int128 *a1)
{
  v1 = *(a1 + 9);
  v2 = *(a1 + 10);
  v3 = *(a1 + 88);
  v4 = *(a1 + 5);
  v69 = *(a1 + 6);
  v5 = *(a1 + 8);
  v67 = *(a1 + 7);
  v7 = *a1;
  v6 = *(a1 + 1);
  v9 = *(a1 + 2);
  v8 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = a1[2];
  v85 = a1[1];
  v86 = v11;
  v12 = a1[4];
  v87 = a1[3];
  v88 = v12;
  v84 = *a1;
  v83 = v3;
  result = outlined init with copy of SubstringSearcher(a1, v89);
  v60 = MEMORY[0x1E69E7CC0];
  v14 = 0;
  if ((v3 & 1) == 0)
  {
    v61 = v5;
    v62 = v1 - 1;
    v15 = __OFSUB__(v1, 1);
    v55 = v15;
    v75 = v10 >> 14;
    v16 = v2;
    v17 = (MEMORY[0x1E69E7CC0] + 32);
    v65 = v7 >> 14;
    v66 = v4;
    v59 = v1;
    v70 = v7;
    v68 = v10;
    while (1)
    {
      v89[0] = v7;
      v89[1] = v6;
      v89[2] = v9;
      v89[3] = v8;
      v89[4] = v10;
      v89[5] = v4;
      v89[6] = v69;
      v89[7] = v67;
      v89[8] = v5;
      v89[9] = v1;
      v89[10] = v16;
      v90 = 0;
      if (!v1)
      {
        break;
      }

      if (!*(v5 + 16))
      {
        v36 = v4;
        v37 = v14;
        SubstringSearcher.nextRangeNaive(in:searchFromEnd:)(v7, v6, &v76);
        v35 = *(&v76 + 1);
        v16 = v76;
        result = *(&v77 + 1);
        v34 = v78;
        v83 = v78;
        if (v77 == 1)
        {
          v14 = v37;
          goto LABEL_55;
        }

        v10 = v68;
        v14 = v37;
        v4 = v36;
        v1 = v59;
        if (v14)
        {
          goto LABEL_53;
        }

        goto LABEL_41;
      }

      if (v55)
      {
        goto LABEL_64;
      }

      v56 = v17;
      v57 = v14;
      result = v16;
      while (1)
      {
        v63 = result;
        v18 = Substring.index(before:)();
        v19 = Substring.index(before:)() >> 14;
        if (v19 >= v75)
        {
          break;
        }

        v20 = v62;
LABEL_23:
        v27 = Substring.subscript.getter();
        if (*(v61 + 16))
        {
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
          v31 = v30;

          if (v31)
          {
            v32 = *(*(v61 + 56) + 8 * v29);
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {

          v32 = 0;
        }

        result = v63;
        if (__OFSUB__(v20, v32))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        result = Substring.index(_:offsetBy:limitedBy:)();
        if (v33)
        {
          v83 = 1;
          v14 = v57;
          goto LABEL_55;
        }
      }

      v73 = v62;
      while (1)
      {
        v71 = v19;
        v21 = Substring.subscript.getter();
        v23 = v22;
        if (v21 == Substring.subscript.getter() && v23 == v24)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v26 = __OFSUB__(v73--, 1);
        v4 = v66;
        if (v26)
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        result = v18;
        if (v71 == v75)
        {
          break;
        }

        if (v65 >= v18 >> 14)
        {
          goto LABEL_61;
        }

        v18 = Substring.index(before:)();
        v19 = Substring.index(before:)() >> 14;
        if (v19 < v75)
        {
LABEL_22:
          v20 = v73;
          goto LABEL_23;
        }
      }

      v35 = v63;
      if (v63 >> 14 < v18 >> 14)
      {
        goto LABEL_66;
      }

      v1 = v59;
      v7 = v70;
      result = Substring.index(_:offsetBy:limitedBy:)();
      v16 = v18;
      v83 = v34 & 1;
      v5 = v61;
      v10 = v68;
      v17 = v56;
      v14 = v57;
      if (!v57)
      {
        goto LABEL_41;
      }

LABEL_53:
      v26 = __OFSUB__(v14--, 1);
      if (v26)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return result;
      }

      *v17 = v16;
      v17[1] = v35;
      v17 += 2;
      v16 = result;
      if (v34)
      {
        goto LABEL_55;
      }
    }

    if ((v16 ^ v6) >= 0x4000)
    {
      v38 = v4;
      v39 = v16;
      v40 = v14;
      result = Substring.index(after:)();
      v16 = v39;
      v4 = v38;
      v1 = v59;
      v14 = v40;
      v34 = 0;
      v83 = 0;
    }

    else
    {
      result = 0;
      v34 = 1;
      v83 = 1;
    }

    v35 = v16;
    if (v14)
    {
      goto LABEL_53;
    }

LABEL_41:
    v41 = *(v60 + 24);
    if (((v41 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_65;
    }

    v58 = v34;
    v72 = result;
    v74 = v16;
    v64 = v35;
    v42 = v41 & 0xFFFFFFFFFFFFFFFELL;
    if (v42 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd, &_ss23_ContiguousArrayStorageCySnySS5IndexVGGMR);
    v44 = swift_allocObject();
    v45 = _swift_stdlib_malloc_size(v44);
    v46 = v45 - 32;
    if (v45 < 32)
    {
      v46 = v45 - 17;
    }

    v47 = v46 >> 4;
    v44[2] = v43;
    v44[3] = 2 * (v46 >> 4);
    v48 = (v44 + 4);
    v49 = *(v60 + 24) >> 1;
    if (*(v60 + 16))
    {
      v50 = (v60 + 32);
      if (v44 != v60 || v48 >= v50 + 16 * v49)
      {
        memmove(v44 + 4, v50, 16 * v49);
      }

      *(v60 + 16) = 0;
    }

    v17 = (v48 + 16 * v49);

    v14 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - v49;
    v60 = v44;
    v1 = v59;
    v4 = v66;
    v7 = v70;
    result = v72;
    v10 = v68;
    v35 = v64;
    v16 = v74;
    v34 = v58;
    goto LABEL_53;
  }

  result = v2;
LABEL_55:
  v51 = v14;
  v78 = v86;
  v79 = v87;
  v80 = v88;
  v76 = v84;
  v77 = v85;
  v81 = result;
  v82 = v83;
  outlined destroy of SubstringSearcher(&v76);
  result = v60;
  v52 = *(v60 + 24);
  if (v52 >= 2)
  {
    v53 = v52 >> 1;
    v26 = __OFSUB__(v53, v51);
    v54 = v53 - v51;
    if (v26)
    {
      goto LABEL_67;
    }

    *(v60 + 16) = v54;
  }

  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 3);
  v56 = *(a1 + 2);
  v57 = v5;
  v7 = a1[8];
  v6 = a1[9];
  v8 = a1[10];
  v9 = a1[11];
  *v60 = *(a1 + 6);
  *&v60[9] = *(a1 + 105);
  v10 = a1[16];
  v11 = *(a1 + 136);
  v63[25] = 0;
  *&v63[16] = 0;
  *v63 = v1;
  *&v54 = v1;
  *(&v54 + 1) = v2;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  *&v58 = v7;
  *(&v58 + 1) = v6;
  v51 = v6;
  *&v59 = v8;
  *(&v59 + 1) = v9;
  if (v2 >> 14 < v1 >> 14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v49 = v10;
  v50 = v11;
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(a1, v52, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(a1, v52, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);

  v13 = Substring.subscript.getter();
  v17 = specialized SubstringSearcher.State.init(text:pattern:)(v13, v14, v15, v16, v7, v51, v8, v9);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  outlined destroy of SplitSequence<SubstringSearcher>(a1, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
  *&v61 = v17;
  *(&v61 + 1) = v19;
  *&v62 = v21;
  BYTE8(v62) = v23 & 1;
  *&v63[8] = v49;
  v63[24] = v50;
  specialized SplitSequence.Iterator.next()();
  v28 = MEMORY[0x1E69E7CC0];
  v29 = 0;
  if (v27)
  {
    v30 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v29)
      {
        v31 = v28[3];
        if (((v31 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v32 = v27;
        v33 = v26;
        v34 = v25;
        v35 = v24;
        v36 = v31 & 0xFFFFFFFFFFFFFFFELL;
        if (v36 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
        v38 = swift_allocObject();
        v39 = _swift_stdlib_malloc_size(v38);
        v40 = v39 - 32;
        if (v39 < 32)
        {
          v40 = v39 - 1;
        }

        v41 = v40 >> 5;
        v38[2] = v37;
        v38[3] = 2 * (v40 >> 5);
        v42 = (v38 + 4);
        v43 = v28[3] >> 1;
        if (v28[2])
        {
          if (v38 != v28 || v42 >= &v28[4 * v43 + 4])
          {
            memmove(v38 + 4, v28 + 4, 32 * v43);
          }

          v28[2] = 0;
        }

        v30 = (v42 + 32 * v43);
        v29 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - v43;

        v28 = v38;
        v24 = v35;
        v25 = v34;
        v26 = v33;
        v27 = v32;
      }

      v45 = __OFSUB__(v29--, 1);
      if (v45)
      {
        break;
      }

      *v30 = v24;
      v30[1] = v25;
      v30[2] = v26;
      v30[3] = v27;
      v30 += 4;
      specialized SplitSequence.Iterator.next()();
      if (!v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
  v52[8] = v61;
  v52[9] = v62;
  v53[0] = *v63;
  *(v53 + 10) = *&v63[10];
  v52[4] = v58;
  v52[5] = v59;
  v52[6] = *v60;
  v52[7] = *&v60[16];
  v52[0] = v54;
  v52[1] = v55;
  v52[2] = v56;
  v52[3] = v57;
  outlined destroy of SplitSequence<SubstringSearcher>(v52, &_s17_StringProcessing13SplitSequenceV8IteratorVyAA17SubstringSearcherV_GMd, &_s17_StringProcessing13SplitSequenceV8IteratorVyAA17SubstringSearcherV_GMR);
  v46 = v28[3];
  if (v46 >= 2)
  {
    v47 = v46 >> 1;
    v45 = __OFSUB__(v47, v29);
    v48 = v47 - v29;
    if (v45)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v28[2] = v48;
  }
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v10 = *(a6 + 16);
    if (v10)
    {
      v11 = a2;
      v12 = 0;
      v13 = a6 + 32;
      v14 = a3 - 1;
      while (v12 < *(a6 + 16))
      {
        outlined init with copy of AnyRegexOutput.ElementRepresentation(v13, &v21);
        *(&v26 + 1) = a4;
        v33 = a5;
        v15 = v21;
        v16 = v22;
        v27 = v21;
        v28 = v22;
        v17 = v24;
        v18 = v23;
        v29 = v23;
        v30 = v24;
        v19 = v26;
        v31 = v25;
        v32 = v26;
        *(v11 + 64) = v25;
        *(v11 + 80) = v19;
        *(v11 + 96) = a5;
        *v11 = v15;
        *(v11 + 16) = v16;
        *(v11 + 32) = v18;
        *(v11 + 48) = v17;
        if (v14 == v12)
        {

          a3 = v20;
          goto LABEL_12;
        }

        v11 += 104;

        ++v12;
        v13 += 88;
        if (v10 == v12)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v10;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v5 = v3[3];
  v76[2] = v3[2];
  v76[3] = v5;
  v76[4] = v3[4];
  v6 = v3[1];
  v76[0] = *v3;
  v76[1] = v6;
  v7 = *(v3 + 10);
  v8 = *(v3 + 88);
  if (!a2)
  {
LABEL_47:
    v10 = 0;
LABEL_53:
    v48 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v48;
    *(result + 64) = v3[4];
    v49 = v3[1];
    *result = *v3;
    *(result + 16) = v49;
    *(result + 80) = v7;
    *(result + 88) = v8;
    return v10;
  }

  v9 = a3;
  if (!a3)
  {
    v3 = v76;
    v10 = 0;
    goto LABEL_53;
  }

  if (a3 < 0)
  {
    goto LABEL_60;
  }

  v50 = result;
  v10 = 0;
  v12 = *(v3 + 8);
  v11 = *(v3 + 9);
  v13 = *(v3 + 4);
  v14 = *(v3 + 5);
  v15 = *(v3 + 7);
  v67 = v13;
  v68 = *(v3 + 6);
  v16 = *v3;
  v17 = *(v3 + 1);
  v18 = *(v3 + 2);
  v19 = *(v3 + 3);
  v3 = v13;
  v56 = v11;
  v57 = v11 - 1;
  v58 = v17;
  v20 = __OFSUB__(v11, 1);
  v51 = v20;
  v21 = v13 >> 14;
  v61 = v16 >> 14;
  v62 = v14;
  v22 = 1;
  v64 = v18;
  v65 = v16;
  v53 = v9;
  v59 = v12;
  v66 = v15;
  v63 = v13 >> 14;
  while (1)
  {
    if (v8)
    {
      LOBYTE(v71[0]) = 1;
      result = v7;
LABEL_50:
      v3 = v76;
      v8 = v71[0];
      v7 = result;
LABEL_52:
      result = v50;
      goto LABEL_53;
    }

    v23 = v22;
    v75 = 0;
    v77 = v16;
    v78 = v17;
    v79 = v18;
    v80 = v19;
    v81 = v3;
    v82 = v14;
    v83 = v68;
    v84 = v15;
    v85 = v12;
    v86 = v56;
    v87 = v7;
    v88 = 0;
    if (!v56)
    {
      if ((v7 ^ v17) >= 0x4000)
      {
        v43 = v3;
        v44 = v7;
        v45 = v22;
        v46 = v9;
        v47 = v12;
        result = Substring.index(after:)();
        v12 = v47;
        v9 = v46;
        v7 = v44;
        v40 = v43;
        v17 = v58;
        v16 = v65;
        v15 = v66;
        v23 = v45;
        v8 = 0;
      }

      else
      {
        v40 = v3;
        result = 0;
        v8 = 1;
      }

      v41 = v7;
      goto LABEL_43;
    }

    v52 = v10;
    if (*(v12 + 16))
    {
      break;
    }

    v40 = v3;
    v42 = v22;
    SubstringSearcher.nextRangeNaive(in:searchFromEnd:)(v16, v17, v71);
    result = v73;
    v8 = v74;
    if (v72 == 1)
    {
      LOBYTE(v71[0]) = v74;
      v10 = v52;
      goto LABEL_50;
    }

    v7 = v71[0];
    v41 = v71[1];
    v23 = v42;
    v15 = v66;
    v9 = v53;
    v12 = v59;
LABEL_43:
    *a2 = v7;
    a2[1] = v41;
    if (v23 == v9)
    {
      v8 &= 1u;
      LOBYTE(v71[0]) = v8;
      v3 = v76;
      v7 = result;
      v10 = v9;
      goto LABEL_52;
    }

    a2 += 2;
    v7 = result;
    v10 = v23;
    v22 = v23 + 1;
    v3 = v40;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_47;
    }
  }

  if (!v51)
  {
    v54 = v22;
    v55 = a2;
    result = v7;
    while (1)
    {
      v60 = result;
      v24 = v16;
      v25 = Substring.index(before:)();
      v26 = Substring.index(before:)() >> 14;
      if (v26 >= v21)
      {
        break;
      }

      v70 = v57;
      v16 = v24;
LABEL_26:
      v33 = Substring.subscript.getter();
      if (*(v59 + 16))
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
        v37 = v36;

        if (v37)
        {
          v38 = *(*(v59 + 56) + 8 * v35);
        }

        else
        {
          v38 = 0;
        }

        v16 = v65;
        result = v60;
      }

      else
      {

        v38 = 0;
        result = v60;
      }

      if (__OFSUB__(v70, v38))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      result = Substring.index(_:offsetBy:limitedBy:)();
      if (v39)
      {
        LOBYTE(v71[0]) = 1;
        v10 = v52;
        goto LABEL_50;
      }
    }

    v70 = v57;
    v27 = v25;
    v17 = v58;
    while (1)
    {
      v28 = Substring.subscript.getter();
      v30 = v29;
      v69 = v27;
      if (v28 == Substring.subscript.getter() && v30 == v31)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          v16 = v65;
          v21 = v63;
          goto LABEL_26;
        }
      }

      result = v27;
      if (__OFSUB__(v70, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v21 = v63;
      if (v26 == v63)
      {
        break;
      }

      if (v61 >= v27 >> 14)
      {
        goto LABEL_56;
      }

      --v70;
      v27 = Substring.index(before:)();
      v26 = Substring.index(before:)() >> 14;
      if (v26 < v63)
      {
        v16 = v65;
        goto LABEL_26;
      }
    }

    v41 = v60;
    v40 = v67;
    v14 = v62;
    if (v60 >> 14 < v69 >> 14)
    {
      goto LABEL_59;
    }

    v18 = v64;
    v16 = v65;
    result = Substring.index(_:offsetBy:limitedBy:)();
    v7 = v69;
    v9 = v53;
    v23 = v54;
    a2 = v55;
    v12 = v59;
    v15 = v66;
    goto LABEL_43;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV7ElementVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV7ElementVGMR);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  v7[2] = v3;
  v7[3] = 2 * ((v8 - 32) / 104);
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v11, (v7 + 4), v3, a1, a2, a3);

  if (v9 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
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

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV7ElementVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV7ElementVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd, &_ss23_ContiguousArrayStorageCyypXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
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
  v10 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
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
  v15 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV14_StoredCaptureVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV14_StoredCaptureVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV21ElementRepresentationVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV21ElementRepresentationVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGSgGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOG_AC9MEProgramV7BuilderV0I5FixupVtGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOG_AC9MEProgramV7BuilderV0I5FixupVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing15MatchingOptionsV14Representation33_684D3EBC598AF48CD1B258716A9A78E6LLVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing15MatchingOptionsV14Representation33_684D3EBC598AF48CD1B258716A9A78E6LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV11AsciiBitsetVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV11AsciiBitsetVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd, &_ss23_ContiguousArrayStorageCyypXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_getCanonicalSpecializedMetadata();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACE6E0](v6, a1, a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x193ACEF90](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSiGMd, &_ss18_DictionaryStorageCySJSiGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193ACE6E0](v35, v22, v23);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x193ACEF90](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMd, &_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193ACE6E0](v35, v22, v23);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193ACEF90](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMd, &_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v34 = *(*(v5 + 56) + 8 * v19);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193ACEF90](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = (v20 + 32);
        do
        {
          v23 = *v22++;
          Hasher._combine(_:)(v23);
          --v21;
        }

        while (v21);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v34;
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        swift_getCanonicalSpecializedMetadata();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 8 * result) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
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
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSiGMd, &_ss18_DictionaryStorageCySJSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMd, &_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMd, &_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySS5IndexVGMd, &_ss23_ContiguousArrayStorageCySS5IndexVGMR);
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
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](a2 >> 14);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (a2 >> 14 == *(v10 + 8 * v8) >> 14)
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

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x193ACE6E0](v18, a2, a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySS5IndexVGMd, &_ss11_SetStorageCySS5IndexVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193ACEFC0](v17 >> 14);
      result = Hasher._finalize()();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      MEMORY[0x193ACE6E0](v29, v19, v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys7UnicodeO6ScalarVGMd, &_ss11_SetStorageCys7UnicodeO6ScalarVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, char a3)
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
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](v4 >> 14);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (v4 >> 14 != *(*(v8 + 48) + 8 * a2) >> 14)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  MEMORY[0x193ACE6E0](v20, v7, a2);
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
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
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySS5IndexVGMd, &_ss11_SetStorageCySS5IndexVGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR);
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys7UnicodeO6ScalarVGMd, &_ss11_SetStorageCys7UnicodeO6ScalarVGMR);
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

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySS5IndexVGMd, &_ss11_SetStorageCySS5IndexVGMR);
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
      Hasher.init(_seed:)();
      MEMORY[0x193ACEFC0](v16 >> 14);
      result = Hasher._finalize()();
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

        goto LABEL_28;
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

        v2 = v1;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR);
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      MEMORY[0x193ACE6E0](v27, v19, v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys7UnicodeO6ScalarVGMd, &_ss11_SetStorageCys7UnicodeO6ScalarVGMR);
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
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

        goto LABEL_28;
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

        v2 = v1;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}