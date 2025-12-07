uint64_t $defer #1 <A>() in RichTextAttributeResolver.merge(_:into:override:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RichTextAttributeResolver.fixup(_:)(v6);
  v4 = v7;

  return outlined consume of AttributedTextFormatting.Constraints?(v4);
}

uint64_t (*specialized AttributeContainer.subscript.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  AttributeContainer.subscript.getter();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return AttributeContainer.subscript.modifyspecialized ;
}

void AttributeContainer.subscript.modifyspecialized (void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  AttributeContainer.subscript.setter();

  free(v1);
}

uint64_t RichTextAttributeResolver.fixup(_:)@<X0>(uint64_t a2@<X8>)
{
  EnvironmentValues.attributeScopeContext.getter();
  AttributedTextFormatting.Constraints.constrain(_:)();
  *(a2 + 8) = v4;
  result = outlined consume of AttributedTextFormatting.Constraints?(0);
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *a2 = 1;
  return result;
}

void FontAttributeDefinition.nsValue(in:)(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FontAttributeDefinition(0) + 40));
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();

  v4 = AttributedString.Keys.contains(_:)();

  v5 = 0;
  if (v4)
  {
    AttributeContainer.subscript.getter();
    v5 = v3;
  }

  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();

  v6 = AttributedString.Keys.contains(_:)();

  if (v6)
  {
    AttributeContainer.subscript.getter();
    v7 = v3;
    v8 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  v9 = AttributedString.Keys.contains(_:)();

  if (v9)
  {
    AttributeContainer.subscript.getter();
    v10 = v3;
    v11 = v14;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = FontAttributeDefinition.nsValue(font:intent:language:)(v5, v7, v8, v10, v11);

  type metadata accessor for CTFontRef(0);
  a1[3] = v13;
  *a1 = v12;
}

uint64_t FontAttributeDefinition.nsValue(font:intent:language:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v9 = a2;
  v44 = a1;
  v10 = type metadata accessor for TypesettingLanguage();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = specialized static FontAttributeDefinition.markdownFontModifiers(for:)(v9, a3 & 1);
  *&v50 = *v6;

  specialized Array.append<A>(contentsOf:)(v22);
  v53 = v50;
  v43 = type metadata accessor for FontAttributeDefinition(0);
  v23 = v6 + *(v43 + 20);
  outlined init with copy of ParagraphStyleAttributeDefinition(v23, v21, MEMORY[0x1E697F888]);
  static TypesettingLanguage.automatic.getter();
  LOBYTE(v22) = MEMORY[0x18D007860](v21, v12);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v12, MEMORY[0x1E697F888]);
  v45 = v21;
  if ((v22 & 1) != 0 && a5)
  {
    static TypesettingLanguage.explicit(from:)();
  }

  else
  {
    outlined init with copy of ParagraphStyleAttributeDefinition(v21, v15, MEMORY[0x1E697F888]);
  }

  outlined init with take of TypesettingLanguage(v15, v18, MEMORY[0x1E697F888]);
  v24 = v18;
  FontAttributeDefinition.resolvedTypesettingLanguage(_:)(v18, &v50);
  v25 = v50;
  v26 = v51;
  v27 = BYTE1(v51);
  if (TypesettingLanguage.Resolved.fontModifier.getter())
  {
    outlined consume of TypesettingLanguage.Resolved(v25, *(&v25 + 1), v26, v27);

    MEMORY[0x18D00CC30](v28);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    outlined consume of TypesettingLanguage.Resolved(v25, *(&v25 + 1), v26, v27);
  }

  v29 = v24;
  v30 = v23 + *(type metadata accessor for TypesettingConfiguration() + 20);
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  *&v50 = v31;
  BYTE8(v50) = v30;
  v32 = TypesettingLanguageAwareLineHeightRatio.fontModifier.getter();
  v33 = v45;
  if (v32)
  {

    MEMORY[0x18D00CC30](v34);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v35 = *(v43 + 24);
  if (!v44)
  {
  }

  v36 = *(v6 + v35 + 16);
  v49[0] = *(v6 + v35);
  v49[1] = v36;
  v38 = *(v6 + v35);
  v37 = *(v6 + v35 + 16);
  v49[2] = *(v6 + v35 + 32);
  v46 = v38;
  v47 = v37;
  v48 = *(v6 + v35 + 32);

  outlined init with copy of Font.Context(v49, &v50);
  v39 = Font.platformFont(in:modifiers:overrideContextModifiers:)();

  v50 = v46;
  v51 = v47;
  v52 = v48;
  outlined destroy of Font.Context(&v50);
  v40 = MEMORY[0x1E697F888];
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v29, MEMORY[0x1E697F888]);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v33, v40);
  return v39;
}

void FontAttributeDefinition.resolvedTypesettingLanguage(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for TypesettingLanguage.Storage();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = -256;
  outlined init with copy of ParagraphStyleAttributeDefinition(a1, v9, MEMORY[0x1E697F870]);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, v11);
  if ((*(*(v12 - 8) + 48))(v9, 2, v12) != 2)
  {
    getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)(v10, v4, a2);
    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v9, MEMORY[0x1E697F870]);
    goto LABEL_5;
  }

  v13 = *(type metadata accessor for FontAttributeDefinition(0) + 36);
  *&v17 = *(v4 + v13);
  type metadata accessor for AtomicBox<TypesettingLanguage.Resolved?>(0);
  AtomicBox.wrappedValue.getter();
  v14 = v21;
  v15 = HIBYTE(v21);
  if (v15 > 0xFE)
  {
    getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)(v10, v4, &v20);
    v19 = *(v4 + v13);
    v17 = v20;
    v18 = v21;

    AtomicBox.wrappedValue.setter();

    getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)(v10, v4, a2);
LABEL_5:

    return;
  }

  v16 = v20;

  *a2 = v16;
  *(a2 + 16) = v14;
  *(a2 + 17) = v15;
}

double getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FontAttributeDefinition(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = v11 >> 8;
  if (v11 >> 8 <= 0xFE)
  {
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    LOWORD(v17) = *(a1 + 32);
  }

  else
  {
    v24 = *(a1 + 32);
    v25 = v10;
    v26 = v9;
    outlined init with copy of ParagraphStyleAttributeDefinition(a2, &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FontAttributeDefinition);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    outlined init with take of TypesettingLanguage(&v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for FontAttributeDefinition);
    TypesettingLanguage.resolve(with:locale:)();

    v15 = v27;
    v16 = v28;
    v17 = v29;
    LOBYTE(v12) = v30;
    v18 = v29 | (v30 << 8);
    swift_beginAccess();
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
    v21 = *(a1 + 32);
    *(a1 + 32) = v18;
    outlined copy of TypesettingLanguage.Resolved(v15, v16, v17, v12);
    outlined consume of TypesettingLanguage.Resolved?(v19, v20, v21);
    v11 = v24;
    v10 = v25;
    v9 = v26;
  }

  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 17) = v12;
  return outlined copy of TypesettingLanguage.Resolved?(v9, v10, v11);
}

uint64_t FontAttributeDefinition.fixup(_:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FontAttributeDefinition(0) + 40));
  AttributedString.AttributeDependencies.init()();
  outlined consume of AttributedTextFormatting.Constraints?(0);
  specialized Sequence.reduce<A>(_:_:)(0, v5, 0, 0, partial apply for closure #1 in FontAttributeDefinition.fixup(_:), v3, a1);

  return outlined consume of AttributedTextFormatting.Constraints?(0);
}

uint64_t closure #1 in FontAttributeDefinition.fixup(_:)@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a1 + 3);
  type metadata accessor for FontAttributeDefinition(0);

  AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v13);

  v8 = v13[0];
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;

  outlined copy of AttributedTextFormatting.Constraints?(v5);
  specialized TextAttributeValidationRecord.formUnion(_:)(v8, v9, v10, v11);

  return outlined consume of AttributedTextFormatting.Constraints?(v10);
}

BOOL FontAttributeDefinition.update(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TypesettingConfiguration();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for FontAttributeDefinition(0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = *a1;
  v16 = a1[1];
  v36 = (&v32 - v18);
  outlined init with copy of ParagraphStyleAttributeDefinition(v2, &v32 - v18, type metadata accessor for FontAttributeDefinition);
  v19 = *(v7 + 16);
  v34 = v13[7];
  v19(v12, v2 + v34, v6);
  *&v45 = v17;
  *(&v45 + 1) = v16;
  EnvironmentValues.locale.getter();
  lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = v7;
  v20 = *(v7 + 8);
  v20(v9, v6);
  v37 = v6;
  v38 = v12;
  v20(v12, v6);
  v21 = v33;
  if ((a1 & 1) == 0)
  {
    outlined init with copy of ParagraphStyleAttributeDefinition(v2, v33, type metadata accessor for FontAttributeDefinition);
    *&v42 = *(v21 + v13[9]);
    v45 = 0uLL;
    LOWORD(v46) = -256;
    type metadata accessor for AtomicBox<TypesettingLanguage.Resolved?>(0);

    AtomicBox.wrappedValue.setter();

    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v21, type metadata accessor for FontAttributeDefinition);
  }

  *&v42 = v17;
  *(&v42 + 1) = v16;
  EnvironmentValues.attributeScopeContext.getter();
  v22 = (v2 + v13[11]);

  *v22 = v45;
  *&v45 = v17;
  *(&v45 + 1) = v16;
  v23 = EnvironmentValues.fontModifiers.getter();

  *v2 = v23;
  *&v45 = v17;
  *(&v45 + 1) = v16;
  v24 = v35;
  EnvironmentValues.typesettingConfiguration.getter();
  outlined assign with take of ParagraphStyleResolutionContext(v24, v2 + v13[5], MEMORY[0x1E6980430]);
  v40 = v17;
  v41 = v16;
  EnvironmentValues.fontResolutionContext.getter();
  v25 = (v2 + v13[6]);
  v26 = v25[1];
  v45 = *v25;
  v46 = v26;
  v47 = v25[2];
  outlined destroy of Font.Context(&v45);
  v27 = v43;
  *v25 = v42;
  v25[1] = v27;
  v25[2] = v44;
  v40 = v17;
  v41 = v16;
  v28 = v38;
  EnvironmentValues.locale.getter();
  (*(v39 + 40))(v2 + v34, v28, v37);
  outlined init with copy of ParagraphStyleAttributeDefinition(v2, v21, type metadata accessor for FontAttributeDefinition);
  v29 = v36;
  v30 = specialized static FontAttributeDefinition.== infix(_:_:)(v36, v21);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v21, type metadata accessor for FontAttributeDefinition);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v29, type metadata accessor for FontAttributeDefinition);
  return (v30 & 1) == 0;
}

double protocol witness for TextAttributeDefinition.dependencies.getter in conformance FontAttributeDefinition@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 40));

  return result;
}

double protocol witness for TextAttributeDefinition.update(with:) in conformance FontAttributeDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v3 + *(v6 + 40));

  *v9 = a1;
  v9[1] = a2;
  outlined init with copy of ParagraphStyleAttributeDefinition(v3, v8, type metadata accessor for FontAttributeDefinition);
  v13 = *&v8[*(v6 + 44)];
  v11[0] = 0;
  v11[1] = 0;
  v12 = -256;
  type metadata accessor for AtomicBox<TypesettingLanguage.Resolved?>(0);

  AtomicBox.wrappedValue.setter();
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v8, type metadata accessor for FontAttributeDefinition);

  return result;
}

uint64_t ParagraphStyleAttributeDefinition.nsValue(in:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], v4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v28 = *v2;
  lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();

  LOBYTE(v4) = AttributedString.Keys.contains(_:)();

  if (v4)
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    v17 = type metadata accessor for AttributedString.TextAlignment();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  }

  outlined init with take of AttributedString.TextAlignment?(v13, v16, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  v18 = *v2;
  v28 = *v2;
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();

  v19 = AttributedString.Keys.contains(_:)();

  if (v19)
  {
    AttributeContainer.subscript.getter();
    v20 = v28;
  }

  else
  {
    v20 = 2;
  }

  v28 = v18;
  lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();

  v21 = AttributedString.Keys.contains(_:)();

  if (v21)
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    v22 = type metadata accessor for AttributedString.LineHeight();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  }

  outlined init with take of AttributedString.TextAlignment?(v7, v10, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v28 = *v2;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();

  v23 = AttributedString.Keys.contains(_:)();

  if (v23)
  {
    AttributeContainer.subscript.getter();
    v24 = v28;
  }

  else
  {
    v24 = 3;
  }

  LOWORD(v28) = v24;
  v25 = ParagraphStyleAttributeDefinition.nsValue(alignment:writingDirection:lineHeight:justification:)(v16, v20, v10, &v28);
  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v10, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v16, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  if (v25)
  {
    result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
  }

  else
  {
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v25;
  a1[3] = result;
  return result;
}

void *ParagraphStyleAttributeDefinition.nsValue(alignment:writingDirection:lineHeight:justification:)(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for ParagraphStyleResolutionContext();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOWORD(a4) = *a4;
  v19 = type metadata accessor for ParagraphStyleAttributeDefinition(0);
  outlined init with copy of ParagraphStyleAttributeDefinition(v4 + *(v19 + 20), v18, MEMORY[0x1E6980A70]);
  v20 = a4 & 0xFE;
  if ((a4 & 0xFE) != 2)
  {
    static TextJustification.full.getter();
    v20 = v31[6];
  }

  *v18 = v20;
  v33 = 1;
  v32 = 1;
  v21 = makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)();
  [v21 setLineBreakMode_];
  if ([v21 isFullyJustified])
  {
    v22 = 3;
  }

  else if ([v21 horizontalAlignment] == 2)
  {
    v22 = 0;
  }

  else if ([v21 horizontalAlignment] == 3)
  {
    v22 = 2;
  }

  else
  {
    if ([v21 horizontalAlignment] != 4)
    {
      goto LABEL_12;
    }

    v22 = 1;
  }

  [v21 setAlignment_];
LABEL_12:
  outlined init with copy of AttributedString.AdaptiveImageGlyph?(a3, v12, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v23 = type metadata accessor for AttributedString.LineHeight();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v12, 1, v23) == 1)
  {
    ParagraphStyleResolutionContext.lineHeight.getter();
    if (v25(v12, 1, v23) != 1)
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v12, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    }
  }

  else
  {
    (*(v24 + 32))(v15, v12, v23);
    (*(v24 + 56))(v15, 0, 1, v23);
  }

  outlined init with copy of AttributedString.AdaptiveImageGlyph?(v15, v9, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  if (v25(v9, 1, v23) == 1)
  {
    v26 = MEMORY[0x1E6965590];
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v15, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v18, MEMORY[0x1E6980A70]);
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v9, &lazy cache variable for type metadata for AttributedString.LineHeight?, v26);
  }

  else
  {
    v27 = AttributedString.LineHeight.baselineInterval.getter();
    v29 = v28;
    (*(v24 + 8))(v9, v23);
    switch(v27)
    {
      case 3:
        [v21 setMinimumLineHeight_];
        [v21 setMaximumLineHeight_];
        break;
      case 2:
        [v21 setLineSpacing_];
        break;
      case 1:
        [v21 setLineHeightMultiple_];
        break;
    }

    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v15, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v18, MEMORY[0x1E6980A70]);
  }

  return v21;
}

uint64_t ParagraphStyleAttributeDefinition.fixup(_:)@<X0>(_BYTE *a2@<X8>)
{
  v4 = *v2;
  AttributedString.AttributeDependencies.init()();
  outlined consume of AttributedTextFormatting.Constraints?(0);
  specialized Sequence.reduce<A>(_:_:)(0, v6, 0, 0, partial apply for closure #1 in ParagraphStyleAttributeDefinition.fixup(_:), v4, a2);

  return outlined consume of AttributedTextFormatting.Constraints?(0);
}

uint64_t closure #1 in ParagraphStyleAttributeDefinition.fixup(_:)@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a1 + 3);
  type metadata accessor for ParagraphStyleAttributeDefinition(0);

  AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v13);

  v8 = v13[0];
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;

  outlined copy of AttributedTextFormatting.Constraints?(v5);
  specialized TextAttributeValidationRecord.formUnion(_:)(v8, v9, v10, v11);

  return outlined consume of AttributedTextFormatting.Constraints?(v10);
}

BOOL ParagraphStyleAttributeDefinition.update(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParagraphStyleResolutionContext();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ParagraphStyleAttributeDefinition(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v18 - v12);
  v14 = *a1;
  v15 = a1[1];
  outlined init with copy of ParagraphStyleAttributeDefinition(v2, v18 - v12, type metadata accessor for ParagraphStyleAttributeDefinition);
  *&v18[0] = v14;
  *(&v18[0] + 1) = v15;

  ParagraphStyleResolutionContext.init(_:)();
  outlined assign with take of ParagraphStyleResolutionContext(v6, v2 + *(v8 + 28), MEMORY[0x1E6980A70]);
  v19 = v14;
  v20 = v15;
  EnvironmentValues.attributeScopeContext.getter();
  v16 = (v2 + *(v8 + 32));

  *v16 = v18[0];
  outlined init with copy of ParagraphStyleAttributeDefinition(v2, v10, type metadata accessor for ParagraphStyleAttributeDefinition);
  LOBYTE(v2) = specialized static ParagraphStyleAttributeDefinition.== infix(_:_:)(v13, v10);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v10, type metadata accessor for ParagraphStyleAttributeDefinition);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v13, type metadata accessor for ParagraphStyleAttributeDefinition);
  return (v2 & 1) == 0;
}

uint64_t StrikethroughStyleAttributeDefinition.fixup(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v26 = a3;
  type metadata accessor for <<opaque return type of AttributedString.Keys.makeIterator()>>.0(0, a2);
  v6 = v5;
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  AttributedString.AttributeDependencies.init()();
  v12 = v36;
  outlined consume of AttributedTextFormatting.Constraints?(0);
  v36 = v9;

  outlined copy of AttributedTextFormatting.Constraints?(0);
  v24[1] = v9;

  AttributedString.Keys.makeIterator()();

  swift_getOpaqueTypeConformance2();
  v13 = v6;
  dispatch thunk of IteratorProtocol.next()();
  v24[0] = v12;
  if (v40)
  {
    v31 = 0;
    v14 = 0;
    v30 = 0;
    v15 = v12;
    v28 = a1;
    v29 = v8;
    v27 = v10;
    do
    {
      v36 = v10;
      v37 = v11;

      AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v32);

      v16 = v32[0];
      v18 = v33;
      v17 = v34;
      v19 = v14;
      v20 = v11;
      v21 = v35;
      LOBYTE(v36) = v30 & 1;
      v37 = v15;
      v38 = v19;
      v39 = v31;

      outlined copy of AttributedTextFormatting.Constraints?(v19);
      specialized TextAttributeValidationRecord.formUnion(_:)(v16, v18, v17, v21);
      v8 = v29;

      v10 = v27;
      v11 = v20;
      outlined consume of AttributedTextFormatting.Constraints?(v17);

      outlined consume of AttributedTextFormatting.Constraints?(v19);
      v30 = v36;
      v15 = v37;
      v14 = v38;
      v31 = v39;
      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v40);
  }

  else
  {
    v30 = 0;
    v14 = 0;
    v31 = 0;
    v15 = v12;
  }

  (*(v25 + 8))(v8, v13);

  result = outlined consume of AttributedTextFormatting.Constraints?(0);
  v23 = v26;
  *v26 = v30;
  v23[1] = v15;
  v23[2] = v14;
  v23[3] = v31;
  return result;
}

double StrikethroughStyleAttributeDefinition.nsValue(in:)@<D0>(uint64_t a1@<X8>)
{
  v10 = *v1;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
  swift_bridgeObjectRetain_n();
  v3 = AttributedString.Keys.contains(_:)();

  if (v3)
  {
    AttributeContainer.subscript.getter();
    v4 = v10;
    v5 = v11;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  v6 = AttributedString.Keys.contains(_:)();

  if (v6)
  {
    AttributeContainer.subscript.getter();
    if (v5 == 1)
    {
      if ((v10 & 0x20) != 0)
      {
        v7 = v11;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        goto LABEL_15;
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      if (!v8)
      {
        goto LABEL_15;
      }

LABEL_14:
      *(a1 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      *a1 = v8;
      return result;
    }
  }

  else if (v5 == 1)
  {
    goto LABEL_15;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  outlined consume of Text.LineStyle?(v4, v5);
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_15:
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

BOOL StrikethroughStyleAttributeDefinition.update(with:)(__int128 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v9 = *a1;

  EnvironmentValues.attributeScopeContext.getter();
  v6 = v11;
  v7 = v12;

  v2[1] = v11;
  v2[2] = v7;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  *&v9 = *v2;
  *(&v9 + 1) = v6;
  v10 = v7;

  LOBYTE(v6) = specialized static StrikethroughStyleAttributeDefinition.== infix(_:_:)(&v11, &v9);

  return (v6 & 1) == 0;
}

uint64_t ForgroundColorAttributeDefinition.fixup(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v28 = a3;
  type metadata accessor for <<opaque return type of AttributedString.Keys.makeIterator()>>.0(0, a2);
  v6 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  AttributedString.AttributeDependencies.init()();
  v12 = v40;
  outlined consume of AttributedTextFormatting.Constraints?(0);
  v40 = v9;

  v29 = v12;

  outlined copy of AttributedTextFormatting.Constraints?(0);
  v26 = v9;

  AttributedString.Keys.makeIterator()();

  swift_getOpaqueTypeConformance2();
  dispatch thunk of IteratorProtocol.next()();
  if (v44)
  {
    v13 = 0;
    v14 = 0;
    v30 = a1;
    v31 = v8;
    v15 = 0;
    v16 = v29;
    v32 = v11;
    v33 = v10;
    do
    {

      EnvironmentValues.init(_:tracker:)();
      v17 = v6;
      v34 = v36;
      v35 = v37;
      EnvironmentValues.attributeScopeContext.getter();

      AttributedTextFormatting.Constraints.constrain<A>(_:in:)(&v36);

      v18 = v36;
      v19 = v37;
      v20 = v38;
      v21 = v39;
      LOBYTE(v40) = v15 & 1;
      v41 = v16;
      v42 = v14;
      v43 = v13;

      outlined copy of AttributedTextFormatting.Constraints?(v14);
      v22 = v18;
      v6 = v17;
      specialized TextAttributeValidationRecord.formUnion(_:)(v22, v19, v20, v21);

      v23 = v20;
      v8 = v31;
      outlined consume of AttributedTextFormatting.Constraints?(v23);

      outlined consume of AttributedTextFormatting.Constraints?(v14);
      v15 = v40;
      v16 = v41;
      v14 = v42;
      v13 = v43;
      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v44);
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v16 = v29;
  }

  (*(v27 + 8))(v8, v6);

  result = outlined consume of AttributedTextFormatting.Constraints?(0);
  v25 = v28;
  *v28 = v15;
  v25[1] = v16;
  v25[2] = v14;
  v25[3] = v13;
  return result;
}

uint64_t ForgroundColorAttributeDefinition.nsValue(in:)@<X0>(uint64_t a1@<X8>)
{
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = v1[1];
  v11 = v1[2];
  v19 = *v1;
  v10 = v19;
  v20 = v9;
  v21 = v11;
  v18 = v19;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();

  v12 = AttributedString.Keys.contains(_:)();

  v13 = 0;
  if (v12)
  {
    AttributeContainer.subscript.getter();
    v13 = v18;
  }

  v18 = v10;
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();

  v14 = AttributedString.Keys.contains(_:)();

  if (v14)
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  }

  v16 = MEMORY[0x1E6968FB0];
  outlined init with take of AttributedString.TextAlignment?(v5, v8, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  ForgroundColorAttributeDefinition.nsValue(color:link:)(v13, v8, a1);

  return _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v8, &lazy cache variable for type metadata for URL?, v16);
}

void ForgroundColorAttributeDefinition.nsValue(color:link:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  if ((*(*(v6 - 8) + 48))(a2, 1, v6) == 1)
  {
    if (!a1)
    {

      v7 = EnvironmentValues.init(_:tracker:)();
      v8 = MEMORY[0x18D006440](v7);

      if (!v8)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return;
      }
    }
  }

  else if (!a1)
  {

    EnvironmentValues.init(_:tracker:)();
    EnvironmentValues.effectiveLinkColor.getter();

    goto LABEL_8;
  }

LABEL_8:

  EnvironmentValues.init(_:tracker:)();
  dispatch thunk of AnyColorBox.resolve(in:)();

  Color.Resolved.kitColor.getter();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  *(a3 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

  *a3 = v9;
}

uint64_t protocol witness for TextAttributeDefinition.update(with:) in conformance ForgroundColorAttributeDefinition(__int128 *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;

  EnvironmentValues.addDependencies(from:)();

  v3 = PropertyList.Tracker.hasDifferentUsedValues(_:)();
  if (v3)
  {
    PropertyList.Tracker.reset()();
  }

  *(v1 + 8) = v5;
  *(v1 + 16) = v2;
  return v3 & 1;
}

uint64_t MappedAttributedStringKeyDefinition.dependencies.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 32) == 1)
  {
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18CD63400;
    v6 = *(a1 + 32);
    *(v5 + 32) = *(a1 + 16);
    *(v5 + 40) = v6;
  }

  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  result = AttributedString.Keys.init<A>(_:)();
  *a2 = v8;
  return result;
}

uint64_t MappedAttributedStringKeyDefinition.fixup(_:)@<X0>(uint64_t a3@<X8>)
{
  if (*(v3 + 32) == 1)
  {

    AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v9);

    v6 = v9[0];
    v7 = v9[1];
    v8 = v10;
  }

  else
  {
    AttributedString.AttributeDependencies.init()();
    v7 = v9[0];
    result = outlined consume of AttributedTextFormatting.Constraints?(0);
    v6 = 0;
    v8 = 0uLL;
  }

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t MappedAttributedStringKeyDefinition.nsValue(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v21[2] = a1;
  v24 = a3;
  v21[1] = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  v10 = a2[3];
  v11 = type metadata accessor for Optional();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - v13;
  v15 = *(v3 + 16);
  if (*(v3 + 32) == 1)
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness, v12);
  }

  v15(v9);
  (*(v7 + 8))(v9, v6);
  v16 = *(v10 - 8);
  if ((*(v16 + 48))(v14, 1, v10) == 1)
  {
    result = (*(v22 + 8))(v14, v23);
    v18 = v24;
    *v24 = 0u;
    *(v18 + 1) = 0u;
  }

  else
  {
    v19 = v24;
    v24[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    return (*(v16 + 32))(boxed_opaque_existential_1, v14, v10);
  }

  return result;
}

BOOL MappedAttributedStringKeyDefinition.update(with:)(__int128 *a1)
{

  EnvironmentValues.attributeScopeContext.getter();

  *v1 = v4;
  v1[1] = v5;

  v2 = static AttributedTextFormatting.Constraints.== infix(_:_:)();

  return (v2 & 1) == 0;
}

double ColorMappedAttributedStringKeyDefinition.constraints.getter@<D0>(_OWORD *a1@<X8>)
{

  EnvironmentValues.init(_:tracker:)();
  EnvironmentValues.attributeScopeContext.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t ColorMappedAttributedStringKeyDefinition.dependencies.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 32))
  {
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    v6 = *(a1 + 16);
    *(v5 + 16) = xmmword_18CD63400;
    *(v5 + 32) = v6;
  }

  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  result = AttributedString.Keys.init<A>(_:)();
  *a2 = v8;
  return result;
}

uint64_t ColorMappedAttributedStringKeyDefinition.fixup(_:)@<X0>(uint64_t a3@<X8>)
{
  if (*(v3 + 32))
  {
    ColorMappedAttributedStringKeyDefinition.constraints.getter(&v9);
    AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v10);

    v6 = v10[0];
    v7 = v10[1];
    v8 = v11;
  }

  else
  {
    AttributedString.AttributeDependencies.init()();
    v7 = v10[0];
    result = outlined consume of AttributedTextFormatting.Constraints?(0);
    v6 = 0;
    v8 = 0uLL;
  }

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  return result;
}

void ColorMappedAttributedStringKeyDefinition.nsValue(in:)(uint64_t a2@<X8>)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  if (*(v2 + 32))
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness, v8);
  }

  v11 = (*(v2 + 16))(v10);
  (*(v7 + 8))(v10, v6);
  if (v11 || (*(v3 + 33) & 1) != 0 && (, , v13 = EnvironmentValues.init(_:tracker:)(), v15 = v17, v16 = v18, v14 = MEMORY[0x18D006440](v13), , , v14))
  {

    EnvironmentValues.init(_:tracker:)();
    v15 = v17;
    v16 = v18;
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    *(a2 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

    *a2 = v12;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t ColorMappedAttributedStringKeyDefinition.update(with:)(__int128 *a1)
{
  v2 = v1[1];
  v5 = *a1;

  EnvironmentValues.addDependencies(from:)();

  v3 = PropertyList.Tracker.hasDifferentUsedValues(_:)();
  if (v3)
  {
    PropertyList.Tracker.reset()();
  }

  *v1 = v5;
  v1[1] = v2;
  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition()
{
  result = lazy protocol witness table cache variable for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition;
  if (!lazy protocol witness table cache variable for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ForgroundColorAttributeDefinition, &unk_1EFFFB5D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition);
  }

  return result;
}

uint64_t specialized static FontAttributeDefinition.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for FontAttributeDefinition(0), (static TypesettingConfiguration.== infix(_:_:)()) && (v5 = (a1 + v4[6]), v6 = v5[1], v37[0] = *v5, v37[1] = v6, v8 = *v5, v7 = v5[1], v37[2] = v5[2], v9 = v5[2], v35 = v7, v36 = v9, v10 = (a2 + v4[6]), v11 = v10[2], v12 = *v10, v13 = *v10, v39 = v10[1], v40 = v11, v38 = v12, v31 = v13, v32 = v39, v33 = v10[2], v34 = v8, outlined init with copy of Font.Context(v37, v30), outlined init with copy of Font.Context(&v38, v30), v14 = MEMORY[0x18D009B10](&v34, &v31), v41[0] = v31, v41[1] = v32, v41[2] = v33, outlined destroy of Font.Context(v41), v42[0] = v34, v42[1] = v35, v42[2] = v36, outlined destroy of Font.Context(v42), (v14) && (MEMORY[0x18D000480](a1 + v4[7], a2 + v4[7]) & 1) != 0 && ((v15 = v4[8], v16 = *(a1 + v15), v17 = *(a1 + v15 + 8), v18 = (a2 + v15), v16 == *v18) && v17 == v18[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v19 = v4[9], *&v34 = *(a1 + v19), *&v31 = *(a2 + v19), type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for TypesettingLanguage.Resolved?, MEMORY[0x1E697F878]), lazy protocol witness table accessor for type TypesettingLanguage.Resolved? and conformance <A> A?(), , , v20 = static AtomicBox<A>.== infix(_:_:)(), , , (v20) && (v21 = v4[10], *&v34 = *(a1 + v21), *&v31 = *(a2 + v21), , , v22 = static AttributedString.Keys.== infix(_:_:)(), , , (v22))
  {
    v23 = v4[11];
    v24 = *(a1 + v23);
    v25 = *(a1 + v23 + 8);
    *&v34 = v24;
    *(&v34 + 1) = v25;
    v26 = (a2 + v23);
    v27 = v26[1];
    *&v31 = *v26;
    *(&v31 + 1) = v27;

    v28 = static AttributedTextFormatting.Constraints.== infix(_:_:)();
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t specialized static ParagraphStyleAttributeDefinition.== infix(_:_:)(void *a1, void *a2)
{

  v4 = static AttributedString.Keys.== infix(_:_:)();

  if (v4 & 1) != 0 && (v5 = type metadata accessor for ParagraphStyleAttributeDefinition(0), (MEMORY[0x18D0093D0](a1 + *(v5 + 20), a2 + *(v5 + 20))))
  {

    v6 = static AttributedTextFormatting.Constraints.== infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t specialized static StrikethroughStyleAttributeDefinition.== infix(_:_:)(void *a1, uint64_t *a2)
{

  v2 = static AttributedString.Keys.== infix(_:_:)();

  if (v2)
  {

    v3 = static AttributedTextFormatting.Constraints.== infix(_:_:)();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t specialized static FontAttributeDefinition.markdownFontModifiers(for:)(char a1, char a2)
{
  result = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    return result;
  }

  if ((a1 & 2) != 0)
  {
    type metadata accessor for AnyFontModifier();
    static AnyFontModifier.static<A>(_:)();
    MEMORY[0x18D00CC30]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v4;
    if ((a1 & 1) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for AnyFontModifier();
  static AnyFontModifier.static<A>(_:)();
  MEMORY[0x18D00CC30]();
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = v4;
  if ((a1 & 4) != 0)
  {
LABEL_12:
    type metadata accessor for AnyFontModifier();
    static AnyFontModifier.static<A>(_:)();
    MEMORY[0x18D00CC30]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v4;
  }

  return result;
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>(0);
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v27 = result;
  v28 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 8;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v28 + 56);
      v32 = *(*(v28 + 48) + 8 * v17);
      v38 = 40 * v17;
      outlined init with copy of _Benchmark(v18 + 40 * v17, v37);
      outlined init with copy of _Benchmark(v37, &v34);
      v19 = v35;
      v20 = v36;
      __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
      v21 = *(v20 + 8);
      v22 = *(v21 + 32);
      v33 = v32;
      v22(a2, a3, v19, v21);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v5 = v27;
      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v27[6] + 8 * v17) = v33;
      result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v34, v27[7] + v38);
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      v12 = v31;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v31 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized ColorMappedAttributedStringKeyDefinition.init<A>(for:in:environment:wantsFallbackColor:mapping:)(uint64_t *a1@<X2>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v12 = PropertyList.Tracker.init()();

  v13 = static AttributeScope.contains<A>(_:)();

  EnvironmentValues.addDependencies(from:)();

  if (PropertyList.Tracker.hasDifferentUsedValues(_:)())
  {
    PropertyList.Tracker.reset()();
  }

  *a7 = v11;
  *(a7 + 8) = v12;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v13 & 1;
  *(a7 + 33) = a2 & 1;
}

unint64_t lazy protocol witness table accessor for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition()
{
  result = lazy protocol witness table cache variable for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition;
  if (!lazy protocol witness table cache variable for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StrikethroughStyleAttributeDefinition, &unk_1EFFFB500, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(255, a2, a3, a4, type metadata accessor for ColorMappedAttributedStringKeyDefinition);
    result = swift_getWitnessTable(protocol conformance descriptor for ColorMappedAttributedStringKeyDefinition<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>)
  {
    v2 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v3 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
    v4 = type metadata accessor for MappedAttributedStringKeyDefinition(a1, MEMORY[0x1E697D828], v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for MappedAttributedStringKeyDefinition<A, B>, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v8 = type metadata accessor for MappedAttributedStringKeyDefinition(a1, a4, MEMORY[0x1E69E7DE0], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>)
  {
    v2 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSAdaptiveImageGlyph, 0x1E69DB780);
    v3 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute();
    v4 = type metadata accessor for MappedAttributedStringKeyDefinition(a1, MEMORY[0x1E697D868], v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6965558], MEMORY[0x1E6965560], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69684C8], MEMORY[0x1E69684D0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6965548], MEMORY[0x1E6965550], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697D850], MEMORY[0x1E697D858], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute);
  }

  return result;
}

void _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6968510], MEMORY[0x1E6968518], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    *v7 = *(a2 + v6);
    *(v7 + 1) = *(a2 + v6 + 8);
    *(v7 + 8) = *(a2 + v6 + 16);
    v7[18] = *(a2 + v6 + 18);
    v7[19] = *(a2 + v6 + 19);
    v9 = type metadata accessor for ParagraphStyleResolutionContext();
    v10 = v9[12];
    v11 = type metadata accessor for AttributedString.LineHeight();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);

    if (v13(&v8[v10], 1, v11))
    {
      _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
      memcpy(&v7[v10], &v8[v10], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(&v7[v10], &v8[v10], v11);
      (*(v12 + 56))(&v7[v10], 0, 1, v11);
    }

    v7[v9[13]] = v8[v9[13]];
    *&v7[v9[14]] = *&v8[v9[14]];
    *&v7[v9[15]] = *&v8[v9[15]];
    *&v7[v9[16]] = *&v8[v9[16]];
    *&v7[v9[17]] = *&v8[v9[17]];
    *&v7[v9[18]] = *&v8[v9[18]];
    v7[v9[19]] = v8[v9[19]];
    v7[v9[20]] = v8[v9[20]];
    v7[v9[21]] = v8[v9[21]];
    v15 = *(a3 + 24);
    v16 = (v5 + v15);
    v17 = (a2 + v15);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
  }

  return v5;
}

uint64_t destroy for ParagraphStyleAttributeDefinition(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  v5 = *(type metadata accessor for ParagraphStyleResolutionContext() + 48);
  v6 = type metadata accessor for AttributedString.LineHeight();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }
}

void *initializeWithCopy for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 1) = *(a2 + v4 + 8);
  *(v5 + 8) = *(a2 + v4 + 16);
  v5[18] = *(a2 + v4 + 18);
  v5[19] = *(a2 + v4 + 19);
  v7 = type metadata accessor for ParagraphStyleResolutionContext();
  v8 = v7[12];
  v9 = type metadata accessor for AttributedString.LineHeight();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  if (v11(&v6[v8], 1, v9))
  {
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v5[v8], &v6[v8], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&v5[v8], &v6[v8], v9);
    (*(v10 + 56))(&v5[v8], 0, 1, v9);
  }

  v5[v7[13]] = v6[v7[13]];
  *&v5[v7[14]] = *&v6[v7[14]];
  *&v5[v7[15]] = *&v6[v7[15]];
  *&v5[v7[16]] = *&v6[v7[16]];
  *&v5[v7[17]] = *&v6[v7[17]];
  *&v5[v7[18]] = *&v6[v7[18]];
  v5[v7[19]] = v6[v7[19]];
  v5[v7[20]] = v6[v7[20]];
  v5[v7[21]] = v6[v7[21]];
  v13 = *(a3 + 24);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

void *assignWithCopy for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v21 = a3;
  v22 = a2;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[2] = *(a2 + v6 + 2);
  v7[3] = *(a2 + v6 + 3);
  *(v7 + 1) = *(a2 + v6 + 8);
  v7[16] = *(a2 + v6 + 16);
  v7[17] = *(a2 + v6 + 17);
  v7[18] = *(a2 + v6 + 18);
  v7[19] = *(a2 + v6 + 19);
  v9 = type metadata accessor for ParagraphStyleResolutionContext();
  v10 = v9[12];
  v11 = type metadata accessor for AttributedString.LineHeight();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(&v7[v10], 1, v11);
  v15 = v13(&v8[v10], 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      (*(v12 + 24))(&v7[v10], &v8[v10], v11);
      goto LABEL_7;
    }

    (*(v12 + 8))(&v7[v10], v11);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v7[v10], &v8[v10], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 16))(&v7[v10], &v8[v10], v11);
  (*(v12 + 56))(&v7[v10], 0, 1, v11);
LABEL_7:
  v7[v9[13]] = v8[v9[13]];
  *&v7[v9[14]] = *&v8[v9[14]];
  *&v7[v9[15]] = *&v8[v9[15]];
  *&v7[v9[16]] = *&v8[v9[16]];
  *&v7[v9[17]] = *&v8[v9[17]];
  *&v7[v9[18]] = *&v8[v9[18]];
  v7[v9[19]] = v8[v9[19]];
  v7[v9[20]] = v8[v9[20]];
  v7[v9[21]] = v8[v9[21]];
  v17 = *(v21 + 24);
  v18 = a1 + v17;
  v19 = v22 + v17;
  *(a1 + v17) = *(v22 + v17);

  *(v18 + 1) = *(v19 + 1);

  return a1;
}

void *initializeWithTake for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  *(v7 + 1) = *(a2 + v6 + 8);
  *(v7 + 8) = *(a2 + v6 + 16);
  v7[18] = *(a2 + v6 + 18);
  v7[19] = *(a2 + v6 + 19);
  v9 = type metadata accessor for ParagraphStyleResolutionContext();
  v10 = v9[12];
  v11 = type metadata accessor for AttributedString.LineHeight();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&v8[v10], 1, v11))
  {
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v7[v10], &v8[v10], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))(&v7[v10], &v8[v10], v11);
    (*(v12 + 56))(&v7[v10], 0, 1, v11);
  }

  v7[v9[13]] = v8[v9[13]];
  *&v7[v9[14]] = *&v8[v9[14]];
  *&v7[v9[15]] = *&v8[v9[15]];
  *&v7[v9[16]] = *&v8[v9[16]];
  *&v7[v9[17]] = *&v8[v9[17]];
  *&v7[v9[18]] = *&v8[v9[18]];
  v7[v9[19]] = v8[v9[19]];
  v7[v9[20]] = v8[v9[20]];
  v7[v9[21]] = v8[v9[21]];
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void *assignWithTake for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v21 = a3;
  v22 = a2;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[2] = *(a2 + v6 + 2);
  v7[3] = *(a2 + v6 + 3);
  *(v7 + 1) = *(a2 + v6 + 8);
  v7[16] = *(a2 + v6 + 16);
  v7[17] = *(a2 + v6 + 17);
  v7[18] = *(a2 + v6 + 18);
  v7[19] = *(a2 + v6 + 19);
  v9 = type metadata accessor for ParagraphStyleResolutionContext();
  v10 = v9[12];
  v11 = type metadata accessor for AttributedString.LineHeight();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(&v7[v10], 1, v11);
  v15 = v13(&v8[v10], 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      (*(v12 + 40))(&v7[v10], &v8[v10], v11);
      goto LABEL_7;
    }

    (*(v12 + 8))(&v7[v10], v11);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v7[v10], &v8[v10], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 32))(&v7[v10], &v8[v10], v11);
  (*(v12 + 56))(&v7[v10], 0, 1, v11);
LABEL_7:
  v7[v9[13]] = v8[v9[13]];
  *&v7[v9[14]] = *&v8[v9[14]];
  *&v7[v9[15]] = *&v8[v9[15]];
  *&v7[v9[16]] = *&v8[v9[16]];
  *&v7[v9[17]] = *&v8[v9[17]];
  *&v7[v9[18]] = *&v8[v9[18]];
  v7[v9[19]] = v8[v9[19]];
  v7[v9[20]] = v8[v9[20]];
  v7[v9[21]] = v8[v9[21]];
  v17 = *(v21 + 24);
  v18 = a1 + v17;
  v19 = v22 + v17;
  *(a1 + v17) = *(v22 + v17);

  *(v18 + 1) = *(v19 + 1);

  return a1;
}

uint64_t type metadata completion function for ParagraphStyleAttributeDefinition(uint64_t a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for MappedAttributedStringKeyDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for MappedAttributedStringKeyDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for MappedAttributedStringKeyDefinition(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

double destroy for MappedAttributedStringKeyDefinition(void *a1, uint64_t a2, void (*a3)(void))
{
  (a3)(*a1, a2);
  a3(a1[1]);

  return result;
}

uint64_t initializeWithCopy for ColorMappedAttributedStringKeyDefinition(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v3 = a2[3];
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for ColorMappedAttributedStringKeyDefinition(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t assignWithTake for ColorMappedAttributedStringKeyDefinition(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t getEnumTagSinglePayload for ColorMappedAttributedStringKeyDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t storeEnumTagSinglePayload for ColorMappedAttributedStringKeyDefinition(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for ForgroundColorAttributeDefinition(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for FontAttributeDefinition(uint64_t *a1, uint64_t *a2, int *a3, double a4)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    v8 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v8 = a1;
    v9 = a3[5];
    v10 = a1 + v9;
    v11 = a2 + v9;
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, a4);
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = *(v14 + 48);

    if (v15(v11, 2, v13))
    {
      v16 = type metadata accessor for TypesettingLanguage.Storage();
      memcpy(v10, v11, *(*(v16 - 8) + 64));
    }

    else
    {
      v17 = type metadata accessor for Locale.Language();
      (*(*(v17 - 8) + 16))(v10, v11, v17);
      v10[*(v13 + 48)] = v11[*(v13 + 48)];
      (*(v14 + 56))(v10, 0, 2, v13);
    }

    v18 = *(type metadata accessor for TypesettingConfiguration() + 20);
    v19 = &v10[v18];
    v20 = &v11[v18];
    *v19 = *v20;
    v19[8] = v20[8];
    v21 = a3[6];
    v22 = a3[7];
    v23 = v8 + v21;
    v24 = a2 + v21;
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
    *(v23 + 12) = *(v24 + 12);
    v25 = *(v24 + 5);
    *(v23 + 4) = *(v24 + 4);
    *(v23 + 5) = v25;
    v26 = type metadata accessor for Locale();
    v27 = *(*(v26 - 8) + 16);

    v27(v8 + v22, a2 + v22, v26);
    v28 = a3[8];
    v29 = a3[9];
    v30 = (v8 + v28);
    v31 = (a2 + v28);
    v32 = v31[1];
    *v30 = *v31;
    v30[1] = v32;
    *(v8 + v29) = *(a2 + v29);
    v33 = a3[11];
    *(v8 + a3[10]) = *(a2 + a3[10]);
    v34 = (v8 + v33);
    v35 = (a2 + v33);
    v36 = v35[1];
    *v34 = *v35;
    v34[1] = v36;
  }

  return v8;
}

uint64_t destroy for FontAttributeDefinition(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, v5);
  if (!(*(*(v6 - 8) + 48))(a1 + v4, 2, v6))
  {
    v7 = type metadata accessor for Locale.Language();
    (*(*(v7 - 8) + 8))(a1 + v4, v7);
  }

  v8 = *(a2 + 28);
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);
}

char *initializeWithCopy for FontAttributeDefinition(char *a1, char *a2, int *a3, double a4)
{
  *a1 = *a2;
  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, a4);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 48);

  if (v13(v9, 2, v11))
  {
    v14 = type metadata accessor for TypesettingLanguage.Storage();
    memcpy(v8, v9, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for Locale.Language();
    (*(*(v15 - 8) + 16))(v8, v9, v15);
    v8[*(v11 + 48)] = v9[*(v11 + 48)];
    (*(v12 + 56))(v8, 0, 2, v11);
  }

  v16 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v17 = &v8[v16];
  v18 = &v9[v16];
  *v17 = *v18;
  v17[8] = v18[8];
  v19 = a3[6];
  v20 = a3[7];
  v21 = &a1[v19];
  v22 = &a2[v19];
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  *(v21 + 12) = *(v22 + 12);
  v23 = *(v22 + 5);
  *(v21 + 4) = *(v22 + 4);
  *(v21 + 5) = v23;
  v24 = type metadata accessor for Locale();
  v25 = *(*(v24 - 8) + 16);

  v25(&a1[v20], &a2[v20], v24);
  v26 = a3[8];
  v27 = a3[9];
  v28 = &a1[v26];
  v29 = &a2[v26];
  v30 = *(v29 + 1);
  *v28 = *v29;
  *(v28 + 1) = v30;
  *&a1[v27] = *&a2[v27];
  v31 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  v32 = &a1[v31];
  v33 = &a2[v31];
  v34 = *(v33 + 1);
  *v32 = *v33;
  *(v32 + 1) = v34;

  return a1;
}

char *assignWithCopy for FontAttributeDefinition(char *a1, void *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = &a1[v6];
  v8 = a2 + v6;
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, v9);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v7, 2, v10);
  v15 = v13(v8, 2, v11);
  if (!v14)
  {
    if (!v15)
    {
      v34 = type metadata accessor for Locale.Language();
      (*(*(v34 - 8) + 24))(v7, v8, v34);
      v7[*(v11 + 48)] = v8[*(v11 + 48)];
      goto LABEL_7;
    }

    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v7, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v17 = type metadata accessor for TypesettingLanguage.Storage();
    memcpy(v7, v8, *(*(v17 - 8) + 64));
    goto LABEL_7;
  }

  v16 = type metadata accessor for Locale.Language();
  (*(*(v16 - 8) + 16))(v7, v8, v16);
  v7[*(v11 + 48)] = v8[*(v11 + 48)];
  (*(v12 + 56))(v7, 0, 2, v11);
LABEL_7:
  v18 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v19 = &v7[v18];
  v20 = &v8[v18];
  v21 = v20[8];
  *v19 = *v20;
  v19[8] = v21;
  v22 = a3[6];
  v23 = &a1[v22];
  v24 = a2 + v22;
  *v23 = *(a2 + v22);
  v23[1] = *(a2 + v22 + 1);
  *(v23 + 8) = *(a2 + v22 + 8);
  v23[24] = *(a2 + v22 + 24);
  v23[25] = *(a2 + v22 + 25);
  *(v23 + 4) = *(a2 + v22 + 32);

  *(v23 + 5) = *(v24 + 5);

  v25 = a3[7];
  v26 = type metadata accessor for Locale();
  (*(*(v26 - 8) + 24))(&a1[v25], a2 + v25, v26);
  v27 = a3[8];
  v28 = &a1[v27];
  v29 = (a2 + v27);
  *v28 = *v29;
  *(v28 + 1) = v29[1];

  *&a1[a3[9]] = *(a2 + a3[9]);

  *&a1[a3[10]] = *(a2 + a3[10]);

  v30 = a3[11];
  v31 = &a1[v30];
  v32 = a2 + v30;
  *&a1[v30] = *(a2 + v30);

  *(v31 + 1) = *(v32 + 1);

  return a1;
}

char *initializeWithTake for FontAttributeDefinition(char *a1, char *a2, int *a3, double a4)
{
  *a1 = *a2;
  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, a4);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v9, 2, v10))
  {
    v13 = type metadata accessor for TypesettingLanguage.Storage();
    memcpy(v8, v9, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for Locale.Language();
    (*(*(v14 - 8) + 32))(v8, v9, v14);
    v8[*(v11 + 48)] = v9[*(v11 + 48)];
    (*(v12 + 56))(v8, 0, 2, v11);
  }

  v15 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v16 = &v8[v15];
  v17 = &v9[v15];
  *v16 = *v17;
  v16[8] = v17[8];
  v18 = a3[6];
  v19 = a3[7];
  v20 = &a1[v18];
  v21 = &a2[v18];
  v22 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 1) = v22;
  *(v20 + 2) = *(v21 + 2);
  v23 = type metadata accessor for Locale();
  (*(*(v23 - 8) + 32))(&a1[v19], &a2[v19], v23);
  v24 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v24] = *&a2[v24];
  v25 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  *&a1[v25] = *&a2[v25];
  return a1;
}

char *assignWithTake for FontAttributeDefinition(char *a1, void *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = &a1[v6];
  v8 = a2 + v6;
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, v9);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v7, 2, v10);
  v15 = v13(v8, 2, v11);
  if (!v14)
  {
    if (!v15)
    {
      v35 = type metadata accessor for Locale.Language();
      (*(*(v35 - 8) + 40))(v7, v8, v35);
      v7[*(v11 + 48)] = v8[*(v11 + 48)];
      goto LABEL_7;
    }

    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v7, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v17 = type metadata accessor for TypesettingLanguage.Storage();
    memcpy(v7, v8, *(*(v17 - 8) + 64));
    goto LABEL_7;
  }

  v16 = type metadata accessor for Locale.Language();
  (*(*(v16 - 8) + 32))(v7, v8, v16);
  v7[*(v11 + 48)] = v8[*(v11 + 48)];
  (*(v12 + 56))(v7, 0, 2, v11);
LABEL_7:
  v18 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v19 = &v7[v18];
  v20 = &v8[v18];
  *v19 = *v20;
  v19[8] = v20[8];
  v21 = a3[6];
  v22 = &a1[v21];
  v23 = a2 + v21;
  *v22 = *(a2 + v21);
  *(v22 + 8) = *(a2 + v21 + 8);
  v22[24] = *(a2 + v21 + 24);
  v22[25] = *(a2 + v21 + 25);
  *(v22 + 4) = *(a2 + v21 + 32);

  *(v22 + 5) = *(v23 + 5);

  v24 = a3[7];
  v25 = type metadata accessor for Locale();
  (*(*(v25 - 8) + 40))(&a1[v24], a2 + v24, v25);
  v26 = a3[8];
  v27 = &a1[v26];
  v28 = (a2 + v26);
  v30 = *v28;
  v29 = v28[1];
  *v27 = v30;
  *(v27 + 1) = v29;

  *&a1[a3[9]] = *(a2 + a3[9]);

  *&a1[a3[10]] = *(a2 + a3[10]);

  v31 = a3[11];
  v32 = &a1[v31];
  v33 = (a2 + v31);
  *&a1[v31] = *v33;

  *(v32 + 1) = v33[1];

  return a1;
}

uint64_t type metadata completion function for FontAttributeDefinition(uint64_t a1)
{
  result = type metadata accessor for TypesettingConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t destroy for StrikethroughStyleAttributeDefinition(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t))
{
  (a3)(*a1, a2);
  a4(a1[1]);
  v7 = a1[2];

  return a5(v7);
}

void *assignWithTake for StrikethroughStyleAttributeDefinition(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  (a4)(*a1, a2, a3);
  v10 = a1[1];
  *a1 = *a2;
  a5(v10);
  v11 = a1[2];
  a1[2] = *(a2 + 16);
  a6(v11);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for RichTextAttributeResolver<A>(uint64_t a1)
{
  result = swift_getWitnessTable("qh\vbTw\b");
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for RichTextAttributeResolver<A>);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints> and conformance EmptyTextAttributeDefinition<A>()
{
  result = lazy protocol witness table cache variable for type EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints> and conformance EmptyTextAttributeDefinition<A>;
  if (!lazy protocol witness table cache variable for type EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints> and conformance EmptyTextAttributeDefinition<A>)
  {
    type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(255, &lazy cache variable for type metadata for EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, MEMORY[0x1E6980378], type metadata accessor for EmptyTextAttributeDefinition);
    result = swift_getWitnessTable(protocol conformance descriptor for EmptyTextAttributeDefinition<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints> and conformance EmptyTextAttributeDefinition<A>);
  }

  return result;
}

uint64_t outlined init with take of AttributedString.TextAlignment?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TypesettingLanguage.Resolved? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TypesettingLanguage.Resolved? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TypesettingLanguage.Resolved? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for TypesettingLanguage.Resolved?, MEMORY[0x1E697F878]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TypesettingLanguage.Resolved and conformance TypesettingLanguage.Resolved();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C80], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type TypesettingLanguage.Resolved? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TypesettingLanguage.Resolved and conformance TypesettingLanguage.Resolved()
{
  result = lazy protocol witness table cache variable for type TypesettingLanguage.Resolved and conformance TypesettingLanguage.Resolved;
  if (!lazy protocol witness table cache variable for type TypesettingLanguage.Resolved and conformance TypesettingLanguage.Resolved)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F880], MEMORY[0x1E697F878], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TypesettingLanguage.Resolved and conformance TypesettingLanguage.Resolved);
  }

  return result;
}

void type metadata accessor for AtomicBox<TypesettingLanguage.Resolved?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AtomicBox<TypesettingLanguage.Resolved?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for TypesettingLanguage.Resolved?, MEMORY[0x1E697F878]);
    v1 = type metadata accessor for AtomicBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AtomicBox<TypesettingLanguage.Resolved?>);
    }
  }
}

uint64_t outlined assign with take of ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t outlined init with copy of ParagraphStyleAttributeDefinition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TypesettingLanguage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)()
{
  v1 = type metadata accessor for FontAttributeDefinition(0);
  v2 = *(v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  return v2;
}

double outlined copy of TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t outlined consume of TypesettingLanguage.Resolved?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    return outlined consume of TypesettingLanguage.Resolved(result, a2, a3, BYTE1(a3));
  }

  return result;
}

double outlined copy of TypesettingLanguage.Resolved?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    return outlined copy of TypesettingLanguage.Resolved(a1, a2, a3, BYTE1(a3));
  }

  return result;
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>(0);
  result = static _DictionaryStorage.copy(original:)();
  v6 = result;
  v7 = 0;
  v29 = result;
  v30 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v28 = result + 8;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v33 = (v13 - 1) & v13;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(v30 + 56);
      v39 = *(*(v30 + 48) + 8 * v18);
      outlined init with copy of _Benchmark(v19 + 40 * v18, v38);
      outlined init with copy of _Benchmark(v38, &v35);
      v34[0] = a2;
      v34[1] = a3;
      v21 = v36;
      v20 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(&v35, v36);
      v22 = *(v20 + 8);
      v23 = *(v22 + 24);
      v39 = v39;
      if (v23(v34, v21, v22))
      {
        *a4 = 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v38);
      v6 = v29;
      *(v28 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v29[6] + 8 * v18) = v39;
      result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, v29[7] + 40 * v18);
      v24 = v29[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v29[2] = v26;
      v13 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of AttributedString.AdaptiveImageGlyph?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for KeyPath<AttributeScopes.FoundationAttributes, AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyPath<AttributeScopes.FoundationAttributes, AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute>)
  {
    type metadata accessor for AttributeScopes.FoundationAttributes();
    v1 = type metadata accessor for KeyPath();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyPath<AttributeScopes.FoundationAttributes, AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute>);
    }
  }
}

uint64_t *assignWithCopy for EnvironmentValues.WithLocalTracker(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t IdentifiedArray.init()(uint64_t a1, uint64_t a2)
{
  v2 = static Array._allocateUninitialized(_:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v5 = static Array._allocateUninitialized(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  specialized Dictionary.init(dictionaryLiteral:)(v5, AssociatedTypeWitness, v4, AssociatedConformanceWitness);

  return v2;
}

void IdentifiedArray.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v30 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v28 = a2;
  v29 = v3;
  Array.subscript.getter();
  dispatch thunk of Identifiable.id.getter();
  v26 = v6;
  (*(v6 + 8))(v8, v5);
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v18 = *(v27 + 16);
    v18(v11, v17, AssociatedTypeWitness);
    v31 = 0;
    v32 = 1;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v18(v11, v14, AssociatedTypeWitness);
    v31 = v28;
    v32 = 0;
    Dictionary.subscript.setter();
  }

  type metadata accessor for Array();
  v19 = v29;
  Array._makeMutableAndUnique()();
  v20 = *v19;
  v21 = v28;
  Array._checkSubscript_mutating(_:)(v28);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v23 = *(v27 + 8);
  v23(v14, AssociatedTypeWitness);
  v23(v17, AssociatedTypeWitness);
  v24 = v20 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v24 = v20;
  }

  (*(v26 + 40))(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v30, v5);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
}

uint64_t IdentifiedArray.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a3;
  v56 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = (v50 - v14);
  v15 = MEMORY[0x1E69E6D08];
  _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
  v17 = v16;
  v18 = _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_3(&lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>, &lazy cache variable for type metadata for PartialRangeFrom<Int>, v15, MEMORY[0x1E69E6D10]);
  v59 = a6;
  v19 = *(a6 + 8);
  v71 = v17;
  v72 = a5;
  v73 = v18;
  v74 = v19;
  v51 = type metadata accessor for Zip2Sequence();
  MEMORY[0x1EEE9AC00](v51);
  v50[2] = v50 - v20;
  v54 = v17;
  v71 = v17;
  v72 = a5;
  v61 = a5;
  v53 = v18;
  v73 = v18;
  v74 = v19;
  v52 = v19;
  v66 = type metadata accessor for Zip2Sequence.Iterator();
  v55 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v50 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  if (a1 != a2)
  {
    result = v62;
    if (a2 < v62)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v62 >= a2)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v63 = *v68;
    v27 = (v67 + 8);
    do
    {
      v28 = a2;
      v29 = result + 1;
      Array.subscript.getter();
      dispatch thunk of Identifiable.id.getter();
      (*v27)(v25, v12);
      v71 = 0;
      LOBYTE(v72) = 1;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      result = v29;
      v30 = v28 == v29;
      a2 = v28;
    }

    while (!v30);
  }

  v31 = dispatch thunk of Collection.count.getter();
  v32 = v62;
  v71 = v62;
  v72 = a2;
  v33 = MEMORY[0x1E69E66A8];
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
  v34 = v33;
  v36 = v35;
  _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_3(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Int>, v34, MEMORY[0x1E69E66F0]);
  result = Collection.count.getter();
  v63 = (v31 - result);
  if (__OFSUB__(v31, result))
  {
    goto LABEL_19;
  }

  v71 = v32;
  v72 = a2;
  v58 = a2;
  v37 = lazy protocol witness table accessor for type Int and conformance Int();
  v50[1] = v36;
  Range<>.endIndex.getter();
  v38 = v70;
  result = MEMORY[0x18D00CDE0](*v68, v12);
  if (result < v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = result;
  v50[0] = v37;
  if (v38 != result)
  {
    if (v38 >= result)
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v40 = (v67 + 8);
    while (1)
    {
      Array.subscript.getter();
      dispatch thunk of Identifiable.id.getter();
      result = (*v40)(v25, v12);
      v41 = v63 + v38;
      if (__OFADD__(v38, v63))
      {
        break;
      }

      ++v38;
      v71 = v41;
      LOBYTE(v72) = 0;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      if (v39 == v38)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  v71 = v62;
  v72 = v58;
  Range<>.startIndex.getter();
  zip<A, B>(_:_:)();
  Zip2Sequence.makeIterator()();
  v42 = v69;
  Zip2Sequence.Iterator.next()();
  v43 = TupleTypeMetadata2;
  v44 = *(*(TupleTypeMetadata2 - 8) + 48);
  v45 = v44(v42, 1, TupleTypeMetadata2);
  v46 = v67;
  if (v45 != 1)
  {
    v63 = *(v67 + 32);
    v67 += 32;
    v47 = (v46 + 8);
    do
    {
      v48 = *v69;
      v63(v25, v69 + *(v43 + 48), v12);
      dispatch thunk of Identifiable.id.getter();
      v71 = v48;
      v49 = v69;
      LOBYTE(v72) = 0;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      (*v47)(v25, v12);
      Zip2Sequence.Iterator.next()();
      v43 = TupleTypeMetadata2;
    }

    while (v44(v49, 1, TupleTypeMetadata2) != 1);
  }

  (*(v55 + 8))(v65, v66);
  (*(v56 + 16))(v57, v60, v61);
  type metadata accessor for Array();
  return Array.replaceSubrange<A>(_:with:)();
}

void (*protocol witness for MutableCollection.subscript.modify in conformance IdentifiedArray<A>(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a3;
  v10 = *(a3 + 16);
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v15 = v13;
  v16 = *a2;
  v9[5] = v15;
  v9[6] = v16;
  IdentifiedArray.subscript.getter(v16, *v3, v14, v10);
  return protocol witness for MutableCollection.subscript.modify in conformance IdentifiedArray<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance IdentifiedArray<A>(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[1];
    (*(v7 + 16))((*a1)[4], v3, v6);
    IdentifiedArray.subscript.setter(v5, v4, v8);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    IdentifiedArray.subscript.setter((*a1)[5], v4, v2[1]);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance IdentifiedArray<A>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  specialized MutableCollection<>.subscript.setter(a1, &v5, a3, a4);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance IdentifiedArray<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
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
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
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
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v8);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable(MEMORY[0x1E69E74F8], v2[3]);
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t protocol witness for RangeReplaceableCollection.init() in conformance IdentifiedArray<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = IdentifiedArray.init()(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance IdentifiedArray<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  IdentifiedArray.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

void (*protocol witness for Collection.subscript.read in conformance IdentifiedArray<A>(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = IdentifiedArray.subscript.read(v7, *a2, *v3, v3[1], *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*IdentifiedArray.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  v6 = *(a5 - 8);
  *a1 = a5;
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
  Array.subscript.getter();
  return CoalescingAdjacentDuplicates<>.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance IdentifiedArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for IdentifiedArray<A>);

  return MutableCollection<>.subscript.getter(a1, a2, WitnessTable, a3);
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
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
    v22(v11, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v11[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v11, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v11, v23);
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

void *protocol witness for Collection.indices.getter in conformance IdentifiedArray<A>(uint64_t a1)
{
  swift_getWitnessTable(")d\vbdp\b", a1);

  return RandomAccessCollection<>.indices.getter();
}

__n128 protocol witness for Sequence.makeIterator() in conformance IdentifiedArray<A>@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance IdentifiedArray<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for IdentifiedArray<A>, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IdentifiedArray<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for IdentifiedArray<A>, a1);
  v1 = specialized Collection._copyToContiguousArray()();

  return v1;
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_3(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_1(255, a2, a3);
    v8 = v7;
    v9 = lazy protocol witness table accessor for type Int and conformance Int();
    v10[0] = MEMORY[0x1E69E6570];
    v10[1] = v9;
    result = swift_getWitnessTable(a4, v8, v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Slice();
  swift_getWitnessTable(MEMORY[0x1E69E74F8], v4);

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return result;
}

void (*JindoTripleVStack.Configuration.defaultInsets.modify(_OWORD *a1))()
{
  *a1 = 0u;
  a1[1] = 0u;
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

uint64_t JindoTripleVStack.Configuration.uniformSpacing.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

void JindoTripleVStack.Configuration.init(notchSize:mode:defaultInsets:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 1;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = 256;
  *(a1 + 58) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
}

char *JindoTripleVStack.Configuration.init(notchSize:horizontalSizing:layoutMargins:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v8 = *result;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = v8;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = 257;
  *(a2 + 58) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  return result;
}

__n128 JindoTripleVStack.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

Swift::Int JindoTripleVStack.HorizontalMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t JindoTripleVStack.Implementation.init(configuration:proxies:)@<X0>(double *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v7 = a1[3];
  v65 = *(a1 + 2);
  v66 = *(a1 + 3);
  v8 = *(a1 + 8);
  v64 = *(a1 + 72);
  v9 = *(a2 + 1);
  v10 = *(a2 + 16);
  v59 = *a2;
  v62 = *a2;
  v61 = *(a2 + 17);
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return result;
  }

  v12 = result;
  v56 = v6;
  v57 = v8;
  v58 = a3;
  if (result)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<PositionKey>, &unk_1EFFFBE08, &protocol witness table for PositionKey);
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      LayoutSubviews.subscript.getter();
      lazy protocol witness table accessor for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>();
      LayoutProxy.subscript.getter();
      if (!v62)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        v17 = v14;
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v17 = v14;
        }

        *(v17 + 16) = v16 + 1;
        *(v17 + 8 * v16 + 32) = v13;
        v14 = v17;
      }

      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v18 = v59;
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_71;
  }

  v19 = result;
  v55 = v14;
  if (result)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<PositionKey>, &unk_1EFFFBE08, &protocol witness table for PositionKey);
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      LayoutSubviews.subscript.getter();
      lazy protocol witness table accessor for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>();
      LayoutProxy.subscript.getter();
      if (v59 == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        }

        *(v21 + 16) = v23 + 1;
        *(v21 + 8 * v23 + 32) = v20;
      }

      ++v20;
    }

    while (v19 != v20);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_72;
  }

  v24 = result;
  v54 = v21;
  if (result)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<PositionKey>, &unk_1EFFFBE08, &protocol witness table for PositionKey);
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      LayoutSubviews.subscript.getter();
      lazy protocol witness table accessor for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>();
      LayoutProxy.subscript.getter();
      if (v59 == 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
        }

        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        }

        *(v26 + 16) = v28 + 1;
        *(v26 + 8 * v28 + 32) = v25;
      }

      ++v25;
    }

    while (v24 != v25);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_73;
  }

  v29 = result;
  v60 = v9;
  if (result)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<PositionKey>, &unk_1EFFFBE08, &protocol witness table for PositionKey);
    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      LayoutSubviews.subscript.getter();
      lazy protocol witness table accessor for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>();
      LayoutProxy.subscript.getter();
      if (v59 == 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
        }

        v33 = *(v31 + 16);
        v32 = *(v31 + 24);
        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        }

        *(v31 + 16) = v33 + 1;
        *(v31 + 8 * v33 + 32) = v30;
      }

      ++v30;
    }

    while (v29 != v30);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_74;
  }

  v34 = result;
  if (result)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<PositionKey>, &unk_1EFFFBE08, &protocol witness table for PositionKey);
    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      LayoutSubviews.subscript.getter();
      lazy protocol witness table accessor for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>();
      LayoutProxy.subscript.getter();
      if (v59 == 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1);
        }

        v38 = *(v36 + 16);
        v37 = *(v36 + 24);
        if (v38 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        }

        *(v36 + 16) = v38 + 1;
        *(v36 + 8 * v38 + 32) = v35;
        v18 = v59;
      }

      ++v35;
    }

    while (v34 != v35);
  }

  v63 = v18;
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_75;
  }

  v39 = result;
  v40 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<PositionKey>, &unk_1EFFFBE08, &protocol witness table for PositionKey);
    v41 = 0;
    do
    {
      LayoutSubviews.subscript.getter();
      lazy protocol witness table accessor for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>();
      LayoutProxy.subscript.getter();
      if (v63 == 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1);
        }

        v43 = v40[2];
        v42 = v40[3];
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        }

        v40[2] = v43 + 1;
        v40[v43 + 4] = v41;
      }

      ++v41;
    }

    while (v39 != v41);
  }

  v44 = v40[2];
  if (v44)
  {
    v53 = v40[4];
  }

  else
  {
    v53 = 0;
  }

  v45 = v44 == 0;

  specialized Array.append<A>(contentsOf:)(v46);

  specialized Array.append<A>(contentsOf:)(v31);
  v47 = v26;

  specialized Array.append<A>(contentsOf:)(v31);
  v48 = *(v55 + 16);

  v49 = *(v26 + 16);

  v50 = *(v54 + 16);

  *v58 = v4;
  *(v58 + 8) = v5;
  *(v58 + 16) = v56;
  *(v58 + 24) = v7;
  *(v58 + 32) = v65;
  *(v58 + 48) = v66;
  *(v58 + 64) = v57;
  *(v58 + 72) = v64;
  *(v58 + 80) = v53;
  *(v58 + 88) = v45;
  *(v58 + 96) = v59;
  *(v58 + 104) = v60;
  *(v58 + 112) = v10;
  *(v58 + 113) = v61;
  *(v58 + 120) = 0xFFF0000000000000;
  *(v58 + 128) = 0xFFF0000000000000;
  *(v58 + 136) = 0;
  *(v58 + 144) = 0;
  *(v58 + 152) = 0;
  *(v58 + 160) = v55;
  *(v58 + 168) = v48;
  *(v58 + 176) = 0;
  *(v58 + 184) = 0;
  *(v58 + 192) = v57;
  *(v58 + 200) = v64;
  v51 = MEMORY[0x1E69E7CC0];
  *(v58 + 208) = MEMORY[0x1E69E7CC0];
  *(v58 + 216) = 0;
  *(v58 + 224) = v47;
  *(v58 + 232) = v49;
  *(v58 + 240) = v5 - v7;
  *(v58 + 248) = 0;
  *(v58 + 256) = v57;
  *(v58 + 264) = v64;
  *(v58 + 272) = v51;
  *(v58 + 280) = 0;
  *(v58 + 288) = v54;
  *(v58 + 296) = v50;
  *(v58 + 304) = 0;
  *(v58 + 312) = 0;
  *(v58 + 320) = v57;
  *(v58 + 328) = v64;
  *(v58 + 336) = v51;
  *(v58 + 344) = 0;
  *(v58 + 352) = 3;
  *(v58 + 360) = v51;
  *(v58 + 368) = v51;
  JindoTripleVStack.Implementation.determineHorizontalMode()();
  return JindoTripleVStack.Implementation.makeChildren()(v52);
}

void JindoTripleVStack.Implementation.determineHorizontalMode()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    goto LABEL_16;
  }

  v2 = *(v0 + 168);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = *(v0 + 160);
  if (*(v3 + 16) < v2)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  specialized Sequence.compactMap<A>(_:)((v3 + 32), 0, (2 * v2) | 1, v0);
  v5 = COERCE_DOUBLE(specialized Sequence<>.max()(v4));
  v7 = v6;

  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(v0 + 296);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  v10 = *(v0 + 288);
  if (*(v10 + 16) >= v9)
  {
    specialized Sequence.compactMap<A>(_:)((v10 + 32), 0, (2 * v9) | 1, v0);
    v12 = COERCE_DOUBLE(specialized Sequence<>.max()(v11));
    v14 = v13;

    if (v14)
    {
      v15 = v8 < 0.0;
      if (v8 > 0.0)
      {
LABEL_11:
        v1 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v15 = v8 < v12;
      if (v8 > v12)
      {
        goto LABEL_11;
      }
    }

    if (v15)
    {
      v1 = 2;
    }

    else
    {
      v1 = 3;
    }

LABEL_16:
    v16 = *(v0 + 296);
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(*(v0 + 288) + 16) >= v16)
    {
      if (!v16)
      {
        v18 = 1;
        v1 = 1;
LABEL_25:
        *(v0 + 352) = v1;
        *(v0 + 353) = v18;
        return;
      }

      v17 = *(v0 + 168);
      if ((v17 & 0x8000000000000000) == 0)
      {
        if (*(*(v0 + 160) + 16) >= v17)
        {
          v18 = v17 == 0;
          if (v18)
          {
            v1 = 2;
          }

          goto LABEL_25;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_33:
  __break(1u);
}

uint64_t JindoTripleVStack.Implementation.makeChildren()(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 113);
  LODWORD(v132) = *(v1 + 96);
  *(&v132 + 1) = v3;
  LOBYTE(v133) = v4;
  BYTE1(v133) = v5;
  v6 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = LayoutSubviews.endIndex.getter();
  if ((v6 & 0x8000000000000000) != 0 || result < v6)
  {
    goto LABEL_42;
  }

  v8 = *(v1 + 360);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v8 + 3) >> 1)
  {
    if (*(v8 + 2) <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = *(v8 + 2);
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 0, v8);
  }

  *(v1 + 360) = v8;
  v11 = *(v1 + 368);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  if (!v12 || v6 > *(v11 + 3) >> 1)
  {
    if (*(v11 + 2) <= v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = *(v11 + 2);
    }

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12, v13, 0, v11);
  }

  *(v1 + 368) = v11;
  v14 = *(v1 + 104);
  v15 = *(v1 + 112);
  v16 = *(v1 + 113);
  LODWORD(v132) = *(v1 + 96);
  *(&v132 + 1) = v14;
  LOBYTE(v133) = v15;
  BYTE1(v133) = v16;
  result = LayoutSubviews.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v17 = 0;
      v76 = *(v1 + 96);
      v75 = *(v1 + 104);
      v73 = *(v1 + 113);
      v74 = *(v1 + 112);
      v72 = result - 1;
      while (1)
      {
        LODWORD(v89) = v76;
        *(&v89 + 1) = v75;
        LOBYTE(v90) = v74;
        BYTE1(v90) = v73;
        LayoutSubviews.subscript.getter();
        *&v111[0] = v77;
        DWORD2(v111[0]) = DWORD2(v77);
        LayoutProxy.layoutPriority.getter();
        v19 = v18;
        static ViewGeometry.invalidValue.getter();
        LOBYTE(v111[0]) = 1;
        v150 = 1;
        v149 = 1;
        v148 = 1;
        v147 = 1;
        v146 = 1;
        v145 = 1;
        v144 = 1;
        *&v124[7] = v112;
        *&v124[23] = v113;
        *&v124[39] = v114;
        *&v124[55] = v115;
        v143 = 1;
        *&v135[15] = *(&v115 + 1);
        *v135 = *&v124[48];
        v134 = *&v124[32];
        v132 = *v124;
        v133 = *&v124[16];
        v21 = *(v8 + 2);
        v20 = *(v8 + 3);
        if (v21 >= v20 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v8);
        }

        *(v8 + 2) = v21 + 1;
        v22 = &v8[256 * v21];
        *(v22 + 4) = v19;
        v22 += 32;
        *(v22 + 1) = 0;
        v22[16] = 1;
        v23 = *(v110 + 3);
        *(v22 + 17) = v110[0];
        *(v22 + 5) = v23;
        *(v22 + 3) = 0;
        v22[32] = 1;
        v24 = *(v109 + 3);
        *(v22 + 33) = v109[0];
        *(v22 + 9) = v24;
        *(v22 + 5) = 0;
        v22[48] = 1;
        v25 = v105[0];
        *(v22 + 13) = *(v105 + 3);
        *(v22 + 49) = v25;
        *(v22 + 7) = 0;
        v22[64] = 1;
        v26 = v156[0];
        *(v22 + 17) = *(v156 + 3);
        *(v22 + 65) = v26;
        *(v22 + 9) = 0;
        v22[80] = 1;
        v27 = *v155;
        *(v22 + 21) = *&v155[3];
        *(v22 + 81) = v27;
        *(v22 + 11) = 0;
        v22[96] = 1;
        v28 = *&v154[3];
        *(v22 + 97) = *v154;
        *(v22 + 25) = v28;
        *(v22 + 13) = 0;
        v22[112] = 1;
        v29 = *&v153[3];
        *(v22 + 113) = *v153;
        *(v22 + 29) = v29;
        *(v22 + 15) = 0;
        v22[128] = 1;
        *(v22 + 129) = v132;
        v30 = v133;
        v31 = v134;
        v32 = *v135;
        *(v22 + 24) = *&v135[15];
        *(v22 + 25) = 0;
        *(v22 + 177) = v32;
        *(v22 + 161) = v31;
        *(v22 + 145) = v30;
        v22[208] = 1;
        v22[209] = 0;
        LOWORD(v29) = v152;
        *(v22 + 210) = v151;
        *(v22 + 107) = v29;
        *(v22 + 216) = 0u;
        *(v22 + 232) = 0u;
        v22[248] = 0;
        v34 = *(v11 + 2);
        v33 = *(v11 + 3);
        if (v34 >= v33 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v11);
        }

        *(v11 + 2) = v34 + 1;
        *&v11[8 * v34 + 32] = v17;
        if (v72 == v17)
        {
          break;
        }

        ++v17;
      }

      v2 = v1;
      *(v1 + 360) = v8;
      *(v1 + 368) = v11;
    }

    v35 = *(v2 + 304);
    v36 = *(v2 + 272);
    v139 = *(v2 + 288);
    v140 = v35;
    v37 = *(v2 + 304);
    v38 = *(v2 + 336);
    v141 = *(v2 + 320);
    v142 = v38;
    v39 = *(v2 + 240);
    v40 = *(v2 + 208);
    *&v135[16] = *(v2 + 224);
    v136 = v39;
    v41 = *(v2 + 240);
    v42 = *(v2 + 272);
    v137 = *(v2 + 256);
    v138 = v42;
    v43 = *(v2 + 176);
    v132 = *(v2 + 160);
    v133 = v43;
    v44 = *(v2 + 208);
    v46 = *(v2 + 160);
    v45 = *(v2 + 176);
    v134 = *(v2 + 192);
    *v135 = v44;
    v128 = v139;
    v129 = v37;
    v47 = *(v2 + 336);
    v130 = v141;
    v131 = v47;
    *&v124[64] = *&v135[16];
    v125 = v41;
    v126 = v137;
    v127 = v36;
    *v124 = v46;
    *&v124[16] = v45;
    *&v124[32] = v134;
    *&v124[48] = v40;
    v48 = *(v2 + 24);
    v49 = *(v2 + 32);
    v50 = *(v2 + 40);
    v51 = *(v2 + 48);
    v52 = *(v2 + 353);
    v53 = *(v2 + 96);
    v54 = *(v2 + 104);
    v55 = *(v2 + 112);
    v56 = *(v2 + 113);
    outlined init with copy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.StackHeader>(&v132, &v112);
    for (i = 0; ; ++i)
    {
      v58 = outlined read-only object #0 of JindoTripleVStack.Implementation.makeChildren()[i + 32];
      v105[0] = v53;
      v106 = v54;
      v107 = v55;
      v108 = v56;
      v109[0] = *v124;
      v109[1] = *&v124[16];
      v109[2] = *&v124[32];
      v109[3] = *&v124[48];
      v110[2] = v126;
      v110[3] = v127;
      v110[0] = *&v124[64];
      v110[1] = v125;
      v111[2] = v130;
      v111[3] = v131;
      v111[0] = v128;
      v111[1] = v129;
      if (v58)
      {
        if (v58 == 1)
        {
          v101 = *&v124[64];
          v102 = v125;
          v103 = v126;
          v104 = v127;
          v59 = v110;
        }

        else
        {
          v101 = v128;
          v102 = v129;
          v103 = v130;
          v104 = v131;
          v59 = v111;
        }
      }

      else
      {
        v101 = *v124;
        v102 = *&v124[16];
        v103 = *&v124[32];
        v104 = *&v124[48];
        v59 = v109;
      }

      outlined init with copy of JindoTripleVStack.StackHeader(v59, &v112);

      JindoTripleVStack.StackHeader.computeSpacingAndPadding(stack:layoutMargins:horizontalFullWidth:proxies:children:)(v58, v52, v105, (v2 + 360), v48, v49, v50, v51);

      if (v58)
      {
        if (v58 == 1)
        {
          v112 = *&v124[64];
          v113 = v125;
          v114 = v126;
          v115 = v127;
          outlined destroy of JindoTripleVStack.StackHeader(&v112);
          *&v124[64] = v101;
          v125 = v102;
          v126 = v103;
          v127 = v104;
          if (i == 2)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v112 = v128;
          v113 = v129;
          v114 = v130;
          v115 = v131;
          outlined destroy of JindoTripleVStack.StackHeader(&v112);
          v128 = v101;
          v129 = v102;
          v130 = v103;
          v131 = v104;
          if (i == 2)
          {
LABEL_40:
            v85 = v128;
            v86 = v129;
            v87 = v130;
            v88 = v131;
            v81 = *&v124[64];
            v82 = v125;
            v83 = v126;
            v84 = v127;
            v77 = *v124;
            v78 = *&v124[16];
            v79 = *&v124[32];
            v80 = *&v124[48];
            v60 = *(v2 + 304);
            v97 = *(v2 + 288);
            v98 = v60;
            v61 = *(v2 + 336);
            v99 = *(v2 + 320);
            v100 = v61;
            v62 = *(v2 + 240);
            v93 = *(v2 + 224);
            v94 = v62;
            v63 = *(v2 + 272);
            v95 = *(v2 + 256);
            v96 = v63;
            v64 = *(v2 + 176);
            v89 = *(v2 + 160);
            v90 = v64;
            v65 = *(v2 + 208);
            v91 = *(v2 + 192);
            v92 = v65;
            outlined init with copy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.StackHeader>(&v77, &v112);
            outlined destroy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>(&v89, &lazy cache variable for type metadata for JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.StackHeader>, &unk_1EFFFBFF0);
            v66 = v86;
            *(v2 + 288) = v85;
            *(v2 + 304) = v66;
            v67 = v88;
            *(v2 + 320) = v87;
            *(v2 + 336) = v67;
            v68 = v82;
            *(v2 + 224) = v81;
            *(v2 + 240) = v68;
            v69 = v84;
            *(v2 + 256) = v83;
            *(v2 + 272) = v69;
            v70 = v78;
            *(v2 + 160) = v77;
            *(v2 + 176) = v70;
            v71 = v80;
            *(v2 + 192) = v79;
            *(v2 + 208) = v71;
            v120 = v128;
            v121 = v129;
            v122 = v130;
            v123 = v131;
            v116 = *&v124[64];
            v117 = v125;
            v118 = v126;
            v119 = v127;
            v112 = *v124;
            v113 = *&v124[16];
            v114 = *&v124[32];
            v115 = *&v124[48];
            return outlined destroy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>(&v112, &lazy cache variable for type metadata for JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.StackHeader>, &unk_1EFFFBFF0);
          }
        }
      }

      else
      {
        v112 = *v124;
        v113 = *&v124[16];
        v114 = *&v124[32];
        v115 = *&v124[48];
        outlined destroy of JindoTripleVStack.StackHeader(&v112);
        *v124 = v101;
        *&v124[16] = v102;
        *&v124[32] = v103;
        *&v124[48] = v104;
        if (i == 2)
        {
          goto LABEL_40;
        }
      }
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance JindoTripleVStack.FixedProposal(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

char *specialized JindoTripleVStack.StackIndexedStorage.compactMap<A>(_:)(uint64_t a1, int64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0, MEMORY[0x1E69E7CC0]);
  v13 = v9;
  if (v4)
  {
    goto LABEL_9;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v10 = *a2;
  v11 = *(*a2 + 16);
  if (v3 >= v11)
  {
    goto LABEL_30;
  }

  v10 += 80 * v3;
  v11 = *(v10 + 72);
  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v10 + 64) / *(v10 + 56);
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v3 = *(v9 + 2);
  v11 = *(v9 + 3);
  v10 = v3 + 1;
  if (v3 >= v11 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    *(v13 + 2) = v10;
    v10 = &v13[8 * v3];
    *(v10 + 32) = v12;
LABEL_9:
    if ((v6 & 1) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v10 = *a2;
      v11 = *(*a2 + 16);
      if (v5 >= v11)
      {
        goto LABEL_32;
      }

      v10 += 80 * v5;
      v11 = *(v10 + 72);
      if ((v11 & 1) == 0)
      {
        v12 = *(v10 + 64) / *(v10 + 56);
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        v5 = *(v13 + 2);
        v11 = *(v13 + 3);
        v14 = v5 + 1;
        if (v5 >= v11 >> 1)
        {
          v24 = v12;
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v5 + 1, 1, v13);
          v12 = v24;
          v14 = v5 + 1;
          v13 = v21;
        }

        *(v13 + 2) = v14;
        v10 = &v13[8 * v5];
        *(v10 + 32) = v12;
      }
    }

    if (v8)
    {
      return v13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    v10 = *a2;
    v11 = *(*a2 + 16);
    if (v7 < v11)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    v25 = v10;
    v23 = v12;
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10, 1, v13);
    v12 = v23;
    v10 = v25;
    v13 = v20;
  }

  v15 = v10 + 80 * v7;
  if ((*(v15 + 72) & 1) == 0)
  {
    v16 = *(v15 + 64) / *(v15 + 56);
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v18 = *(v13 + 2);
    v17 = *(v13 + 3);
    if (v18 >= v17 >> 1)
    {
      v26 = v16;
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v13);
      v16 = v26;
      v13 = v22;
    }

    *(v13 + 2) = v18 + 1;
    *&v13[8 * v18 + 32] = v16;
  }

  return v13;
}

char *specialized JindoTripleVStack.StackIndexedStorage.compactMap<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0, MEMORY[0x1E69E7CC0]);
  v16 = result;
  if (v9)
  {
    goto LABEL_9;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v15 = *(a2 + 360);
  if (*(v15 + 16) <= a3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 += a3 << 8;
  if ((*(v15 + 80) & 1) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    if (v8 >= *(*a4 + 16))
    {
      goto LABEL_31;
    }

    v4 = *(v15 + 72) + *(*a4 + 80 * v8 + 104);
    v9 = *(result + 2);
    v15 = *(result + 3);
    v8 = v9 + 1;
    if (v9 >= v15 >> 1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      *(v16 + 2) = v8;
      v15 = &v16[8 * v9];
      *(v15 + 32) = v4;
LABEL_9:
      if (v11)
      {
        while (1)
        {
          if (v13)
          {
            return v16;
          }

          if ((a3 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v15 = *(a2 + 360);
          if (*(v15 + 16) <= a3)
          {
            break;
          }

          v15 += a3 << 8;
          if (*(v15 + 112))
          {
            goto LABEL_43;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            if (v12 >= *(*a4 + 16))
            {
              __break(1u);
            }

            else
            {
              v4 = *(v15 + 104) + *(*a4 + 80 * v12 + 104);
              a3 = *(v16 + 2);
              v15 = *(v16 + 3);
              a4 = a3 + 1;
              if (a3 < v15 >> 1)
              {
LABEL_24:
                *(v16 + 2) = a4;
                *&v16[8 * a3 + 32] = v4;
                return v16;
              }
            }

            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), a4, 1, v16);
            goto LABEL_24;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v8, 1, v16);
          v16 = result;
LABEL_16:
          *(v16 + 2) = v8;
          v15 = &v16[8 * v10];
          *(v15 + 32) = v4;
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        break;
      }

      v15 = *(a2 + 360);
      if (*(v15 + 16) <= a3)
      {
        goto LABEL_30;
      }

      v15 += a3 << 8;
      if (*(v15 + 96))
      {
        goto LABEL_42;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        if (v10 < *(*a4 + 16))
        {
          v4 = *(v15 + 88) + *(*a4 + 80 * v10 + 104);
          v10 = *(v16 + 2);
          v15 = *(v16 + 3);
          v8 = v10 + 1;
          if (v10 >= v15 >> 1)
          {
            goto LABEL_38;
          }

          goto LABEL_16;
        }

        goto LABEL_36;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v8, 1, v16);
      v16 = result;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

char *JindoTripleVStack.MajorAxisGroup.allGroups.getter(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v10 = *(a4 + 16);
  v11 = v10 + 2;
  if (__OFADD__(v10, 2))
  {
    __break(1u);
  }

  else
  {
    v6 = a4;
    v8 = a2;
    v9 = a1;

    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0, MEMORY[0x1E69E7CC0]);
    v7 = *(a6 + 2);
    v10 = *(a6 + 3);
    v11 = v7 + 1;
    if (v7 < v10 >> 1)
    {
      goto LABEL_3;
    }
  }

  a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11, 1, a6);
LABEL_3:
  *(a6 + 2) = v11;
  v12 = &a6[24 * v7];
  *(v12 + 4) = 0;
  *(v12 + 5) = v9;
  v12[48] = 0;
  v18 = a6;
  specialized Array.append<A>(contentsOf:)(v6);
  v13 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[24 * v15];
  *(v16 + 4) = 0;
  *(v16 + 5) = v8;
  v16[48] = 0;
  return v13;
}

uint64_t JindoTripleVStack.MajorAxisGroup.updateWithSplit(at:before:)(uint64_t result, double a2)
{
  v9 = v2;
  if (!result)
  {
    v12 = *(v2 + 8);
    if (v12 < a2)
    {
      v12 = a2;
    }

    *(v2 + 8) = v12;
    v10 = *(v2 + 24);
    if (*(v10 + 2))
    {
      v7 = *(v10 + 5);
      v2 = v10[48];
      if ((v2 & 1) == 0)
      {
        v13 = v7 - a2;
        if (v13 < 0.0)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v13;
        }
      }

      v3 = *(v10 + 4);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (*(v10 + 2))
        {
LABEL_15:
          *(v10 + 4) = v3;
          *(v10 + 5) = v7;
          v10[48] = v2;
          *(v9 + 24) = v10;
          return result;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
LABEL_44:
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
    if (*(result + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

  v2 += 24;
  v10 = *(v9 + 24);
  v11 = *(v10 + 2);
  if (*v9 == result)
  {
    if (v11)
    {
      v7 = a2;
      v3 = *(v10 + 4);
      v8 = *(v9 + 8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_5:
        *(v10 + 4) = v3;
        *(v10 + 5) = v7 - v8;
        v10[48] = 0;
        *v2 = v10;
        return result;
      }

LABEL_48:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
      goto LABEL_5;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v11)
  {
    return result;
  }

  v14 = 0;
  v7 = a2 - *(v9 + 8);
  for (i = 48; ; i += 24)
  {
    v9 = v14 + 1;
    v16 = *&v10[i - 16];
    if (result < v16)
    {
      v19 = v16 - result;
      if (__OFSUB__(v16, result))
      {
        __break(1u);
      }

      else
      {
        v5 = *&v10[i - 8];
        *&v4 = v10[i];
        if (LOBYTE(v4))
        {
          v6 = result;
        }

        else
        {
          v6 = result;
          v22 = *&v5 - v7;
          if (*&v5 - v7 < 0.0)
          {
            v22 = 0.0;
          }

          *&v5 = v22;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_40;
        }
      }

      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
LABEL_40:
      if (v14 < *(v10 + 2))
      {
        v23 = &v10[i];
        *(v23 - 2) = v6;
        *(v23 - 1) = v7;
        *v23 = 0;
        *v2 = v10;
        return specialized Array.replaceSubrange<A>(_:with:)(v14 + 1, v14 + 1, v19, v5, SLOBYTE(v4));
      }

      __break(1u);
      goto LABEL_52;
    }

    if (result == v16)
    {
      break;
    }

    v17 = __OFSUB__(result, v16);
    result -= v16;
    if (v17)
    {
      __break(1u);
      goto LABEL_44;
    }

    v18 = *&v10[i - 8];
    if (v10[i])
    {
      v18 = 0.0;
    }

    v7 = v7 - v18;
    ++v14;
    if (v11 == v9)
    {
      return result;
    }
  }

  v19 = result;
  LOBYTE(v9) = v10[i];
  v20 = *&v10[i - 8];
  if (v7 >= v20)
  {
    v20 = v7;
  }

  if (v10[i])
  {
    v4 = *&v10[i - 8];
  }

  else
  {
    v4 = v20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_52:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
  }

  if (v14 >= *(v10 + 2))
  {
    __break(1u);
  }

  else
  {
    v21 = &v10[i];
    *(v21 - 2) = v19;
    *(v21 - 1) = v4;
    *v21 = v9;
    *v2 = v10;
  }

  return result;
}

double JindoTripleVStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, int *a5)
{
  v10 = *a5;
  v11 = *(a5 + 1);
  v12 = *(a5 + 16);
  v13 = *(a5 + 17);
  *v25 = *v5;
  *&v25[16] = *(v5 + 16);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v16 = *(v5 + 48);
  v17 = *(v5 + 56);
  *&v25[24] = *(v5 + 24);
  *&v25[32] = v14;
  *&v25[40] = v15;
  *&v25[48] = v16;
  v25[56] = v17;
  *&v25[57] = *(v5 + 57);
  LODWORD(v27) = v10;
  *(&v27 + 1) = v11;
  LOBYTE(v28) = v12;
  BYTE1(v28) = v13;

  JindoTripleVStack.Implementation.init(configuration:proxies:)(v25, &v27, __src);
  if ((v17 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      EdgeInsets.horizontal.getter();
      *&a1 = *&a1 - v18;
    }

    if (a4)
    {
      a4 = 1;
    }

    else
    {
      EdgeInsets.vertical.getter();
      a4 = 0;
      *&a3 = *&a3 - v19;
    }
  }

  v20 = *&a1;
  if (a2)
  {
    v20 = 0.0;
  }

  if (__src[15] != v20)
  {
    goto LABEL_14;
  }

  if (LOBYTE(__src[17]))
  {
    if (a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a4 & 1 | (__src[16] != *&a3))
  {
LABEL_14:
    __src[15] = v20;
    *&__src[16] = a3;
    LOBYTE(__src[17]) = a4 & 1;
    v27 = 0u;
    v28 = 0u;
    v29 = 1;
    JindoTripleVStack.Implementation.sizeAndPlaceChildren(in:bounds:)(a3);
    __src[18] = v21;
    __src[19] = v22;
  }

LABEL_15:
  v23 = __src[18];
  memcpy(v25, __src, sizeof(v25));
  outlined destroy of JindoTripleVStack.Implementation(v25);
  return v23;
}

uint64_t JindoTripleVStack.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, double *a5, double a6, double a7, double a8, double a9)
{
  v18 = *a5;
  v19 = a5[1];
  v20 = *(a5 + 16);
  v21 = *(a5 + 17);
  __dst[0] = *v9;
  *&__dst[1] = *(v9 + 16);
  v22 = *(v9 + 32);
  v23 = *(v9 + 40);
  v24 = *(v9 + 48);
  v25 = *(v9 + 56);
  *(&__dst[1] + 1) = *(v9 + 24);
  *&__dst[2] = v22;
  *(&__dst[2] + 1) = v23;
  *&__dst[3] = v24;
  BYTE8(__dst[3]) = v25;
  *(&__dst[3] + 9) = *(v9 + 57);
  LODWORD(v38) = v18;
  v39 = v19;
  LOBYTE(v40) = v20;
  BYTE1(v40) = v21;

  JindoTripleVStack.Implementation.init(configuration:proxies:)(__dst, &v38, __src);
  if ((v25 & 1) == 0)
  {
    CGRect.inset(by:)();
    a6 = v26;
    a7 = v27;
    a8 = v28;
    a9 = v29;
    if ((a2 & 1) == 0)
    {
      EdgeInsets.horizontal.getter();
      *&a1 = *&a1 - v30;
    }

    if (a4)
    {
      a4 = 1;
    }

    else
    {
      EdgeInsets.vertical.getter();
      a4 = 0;
      *&a3 = *&a3 - v31;
    }
  }

  v32 = *&a1;
  if (a2)
  {
    v32 = 0.0;
  }

  *&__src[15] = v32;
  __src[16] = a3;
  LOBYTE(__src[17]) = a4 & 1;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v42 = 0;
  JindoTripleVStack.Implementation.sizeAndPlaceChildren(in:bounds:)(a3);
  __src[18] = v33;
  __src[19] = v34;
  memcpy(__dst, __src, 0x178uLL);
  return outlined destroy of JindoTripleVStack.Implementation(__dst);
}

void one-time initialization function for leading()
{
  static JindoTripleVStack.Position.leading = 0;
  qword_1EA9FCF38 = 0;
  byte_1EA9FCF40 = 1;
  qword_1EA9FCF48 = 0;
  byte_1EA9FCF50 = 1;
}

uint64_t static JindoTripleVStack.Position.leading.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for leading != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = qword_1EA9FCF38;
  v2 = byte_1EA9FCF40;
  v3 = qword_1EA9FCF48;
  v4 = byte_1EA9FCF50;
  *a1 = static JindoTripleVStack.Position.leading;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

uint64_t static JindoTripleVStack.Position.leading(inset:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

void one-time initialization function for trailing()
{
  static JindoTripleVStack.Position.trailing = 1;
  qword_1EA9FCF00 = 0;
  byte_1EA9FCF08 = 1;
  qword_1EA9FCF10 = 0;
  byte_1EA9FCF18 = 1;
}

uint64_t static JindoTripleVStack.Position.trailing.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for trailing != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = qword_1EA9FCF00;
  v2 = byte_1EA9FCF08;
  v3 = qword_1EA9FCF10;
  v4 = byte_1EA9FCF18;
  *a1 = static JindoTripleVStack.Position.trailing;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

uint64_t static JindoTripleVStack.Position.trailing(inset:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

void one-time initialization function for center()
{
  static JindoTripleVStack.Position.center = 2;
  qword_1EAA066E8 = 0;
  byte_1EAA066F0 = 1;
  qword_1EAA066F8 = 0;
  byte_1EAA06700 = 1;
}

uint64_t static JindoTripleVStack.Position.center.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for center != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = qword_1EAA066E8;
  v2 = byte_1EAA066F0;
  v3 = qword_1EAA066F8;
  v4 = byte_1EAA06700;
  *a1 = static JindoTripleVStack.Position.center;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

void one-time initialization function for bottom()
{
  static JindoTripleVStack.Position.bottom = 3;
  qword_1EAA06720 = 0;
  byte_1EAA06728 = 1;
  qword_1EAA06730 = 0;
  byte_1EAA06738 = 1;
}

uint64_t static JindoTripleVStack.Position.bottom.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bottom != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = qword_1EAA06720;
  v2 = byte_1EAA06728;
  v3 = qword_1EAA06730;
  v4 = byte_1EAA06738;
  *a1 = static JindoTripleVStack.Position.bottom;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

uint64_t static JindoTripleVStack.Position.bottom(leadingInset:trailingInset:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 3;
  *(a5 + 8) = result;
  *(a5 + 16) = a2 & 1;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
  return result;
}

void one-time initialization function for notch()
{
  static JindoTripleVStack.Position.notch = 4;
  qword_1EAA35948 = 0;
  byte_1EAA35950 = 1;
  qword_1EAA35958 = 0;
  byte_1EAA35960 = 1;
}

uint64_t static JindoTripleVStack.Position.notch.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for notch != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = qword_1EAA35948;
  v2 = byte_1EAA35950;
  v3 = qword_1EAA35958;
  v4 = byte_1EAA35960;
  *a1 = static JindoTripleVStack.Position.notch;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

uint64_t JindoTripleVStack.StackHeader.computeSpacingAndPadding(stack:layoutMargins:horizontalFullWidth:proxies:children:)(char a1, char a2, int *a3, uint64_t *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v51 = *a3;
  v50 = *(a3 + 1);
  v49 = *(a3 + 16);
  v48 = *(a3 + 17);
  v16 = *v9;
  v17 = *(*v9 + 16);
  v18 = *(v9 + 48);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v17 > *(v18 + 24) >> 1)
  {
    if (*(v18 + 16) <= v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = *(v18 + 16);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v20, 0, v18);
    v18 = result;
  }

  *(v9 + 48) = v18;
  v21 = *(v16 + 16);
  if (!a1)
  {
    if ((a2 & 1) == 0)
    {
      if (!v21)
      {
        return result;
      }

      v22 = 2;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (a1 != 1)
  {
    if ((a2 & 1) == 0)
    {
      if (!v21)
      {
        return result;
      }

      v22 = 8;
LABEL_19:
      v45 = v22;
LABEL_20:
      v23 = *a4;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_55;
      }

      while (1)
      {
        if (v21 > *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        v44 = a4;
        v24 = 0;
        v25 = *(v9 + 56);
        v26 = *(v16 + 32);
        v46 = v16 + 40;
        a4 = (v21 - 1);
        v27 = 0.0;
        v21 = v48;
        while (1)
        {
          v16 = *(v18 + 16);
          v29 = *(v18 + 24);
          if (v16 >= v29 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v16 + 1, 1, v18);
            v18 = result;
          }

          v25 = v27 + v25;
          *(v18 + 16) = v16 + 1;
          *(v18 + 8 * v16 + 32) = v25;
          if ((v26 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v26 >= *(v23 + 16))
          {
            goto LABEL_53;
          }

          v30 = v23 + 32 + (v26 << 8);
          if (a1)
          {
            if (a1 == 1)
            {
              *(v30 + 56) = v27;
              *(v30 + 64) = 0;
              goto LABEL_47;
            }

            v31 = 72;
            v32 = 80;
          }

          else
          {
            v31 = 40;
            v32 = 48;
          }

          *(v30 + v31) = v27;
          *(v30 + v32) = 0;
          LayoutSubviews.subscript.getter();
          type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<ContentMarginsKey>, &unk_1EFFFBDA8, &protocol witness table for ContentMarginsKey);
          v16 = v33;
          lazy protocol witness table accessor for type _LayoutTrait<ContentMarginsKey> and conformance _LayoutTrait<A>();
          result = LayoutProxy.subscript.getter();
          if ((v60 & 1) == 0)
          {
            if (v26 >= *(v23 + 16))
            {
              goto LABEL_54;
            }

            v34 = v52;
            v35 = v54;
            v36 = v56;
            v37 = v58;
            if (v59)
            {
              v37 = a8;
            }

            v38 = v37 - a8;
            if (v57)
            {
              v36 = a7;
            }

            v39 = v36 - a7;
            if (v55)
            {
              v35 = a6;
            }

            v40 = v35 - a6;
            if (v53)
            {
              v34 = a5;
            }

            v41 = v34 - a5;
            v42 = v45 | (v24 == 0);
            if (a4 == v24)
            {
              v42 |= 4u;
            }

            *(v30 + 216) = v41;
            *(v30 + 224) = v40;
            *(v30 + 232) = v39;
            *(v30 + 240) = v38;
            *(v30 + 248) = v42;
          }

LABEL_47:
          if (a4 == v24)
          {
            *v44 = v23;
            *(v9 + 48) = v18;
            *(v9 + 56) = v25;
            return result;
          }

          v43 = *(v46 + 8 * v24);
          if (*(v9 + 40))
          {
            LODWORD(v52) = v51;
            v53 = v50;
            LOBYTE(v54) = v49;
            BYTE1(v54) = v48;
            LayoutSubviews.subscript.getter();
            LayoutSubview.spacing.getter();
            LayoutSubviews.subscript.getter();
            LayoutSubview.spacing.getter();
            ViewSpacing.distance(to:along:)();
            v27 = v28;
          }

          else
          {
            v27 = *(v9 + 32);
          }

          v24 = (v24 + 1);
          v26 = v43;
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
        v23 = result;
      }
    }

LABEL_15:
    if (!v21)
    {
      return result;
    }

    v22 = 10;
    goto LABEL_19;
  }

  if (v21)
  {
    v45 = 0;
    goto LABEL_20;
  }

  return result;
}

unint64_t JindoTripleVStack.Implementation.sizeAndPlaceChildren(in:bounds:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v272 = v3;
  v5 = v4;
  v7 = v6;
  MinX = v2;
  *&v9 = COERCE_DOUBLE(v328);
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v341, v1, 0x178uLL);
  outlined init with copy of JindoTripleVStack.Implementation(__dst, v340);
  JindoTripleVStack.Implementation.computeMinWidth(of:in:)(0, v7, v5 & 1, MinX);
  v11 = v10;
  memcpy(v333, v341, sizeof(v333));
  outlined destroy of JindoTripleVStack.Implementation(v333);
  memcpy(v334, v1, sizeof(v334));
  memcpy(v341, v1, 0x178uLL);
  outlined init with copy of JindoTripleVStack.Implementation(v334, v340);
  v278 = *&v7;
  JindoTripleVStack.Implementation.computeMinWidth(of:in:)(2, v7, v5 & 1, MinX);
  v13 = v12;
  memcpy(v335, v341, sizeof(v335));
  outlined destroy of JindoTripleVStack.Implementation(v335);
  memcpy(v336, v1, sizeof(v336));
  memcpy(v341, v1, 0x178uLL);
  outlined init with copy of JindoTripleVStack.Implementation(v336, v340);
  JindoTripleVStack.Implementation.spacing(_:axis:)(0, v340);
  memcpy(v337, v341, sizeof(v337));
  outlined destroy of JindoTripleVStack.Implementation(v337);
  v14 = *&v340[0];
  v15 = LOBYTE(v340[1]);
  memcpy(v338, v1, sizeof(v338));
  memcpy(v341, v1, 0x178uLL);
  outlined init with copy of JindoTripleVStack.Implementation(v338, v340);
  JindoTripleVStack.Implementation.spacing(_:axis:)(2, v340);
  memcpy(v339, v341, sizeof(v339));
  outlined destroy of JindoTripleVStack.Implementation(v339);
  v16 = v340[0];
  v17 = LOBYTE(v340[1]);
  memcpy(v340, v1, sizeof(v340));
  v275 = v1;
  memcpy(__src, v1, sizeof(__src));
  outlined init with copy of JindoTripleVStack.Implementation(v340, v341);
  JindoTripleVStack.Implementation.spacing(_:axis:)(1, v329);
  memcpy(v341, __src, 0x178uLL);
  outlined destroy of JindoTripleVStack.Implementation(v341);
  v18 = *v329;
  v19 = v329[8];
  __src[0] = v14;
  LOBYTE(__src[1]) = v15;
  ViewSpacing.distance(to:along:)();
  v21 = v20;
  *__src = v16;
  LOBYTE(__src[1]) = v17;
  *v329 = v18;
  v329[8] = v19;
  ViewSpacing.distance(to:along:)();
  v23 = v22;

  __src[0] = v14;
  LOBYTE(__src[1]) = v15;
  *v329 = v16;
  v329[8] = v17;
  v24 = COERCE_DOUBLE(__src);
  ViewSpacing.distance(to:along:)();
  v26 = v25;

  if (v21 > v23)
  {
    v27 = v21;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 + v27;
  if (v11 > v13)
  {
    v29 = v11;
  }

  else
  {
    v29 = v13;
  }

  v30 = v340[0] - v28;
  v31 = MinX - (v29 + v29) - v28;
  if (v30 > v31)
  {
    Height = v30;
  }

  else
  {
    Height = v31;
  }

  v33 = *&v340[29];
  if ((*&v340[29] & 0x8000000000000000) != 0)
  {
    goto LABEL_172;
  }

  v14 = *&v340[28];
  if (*(*&v340[28] + 16) < *&v340[29])
  {
    goto LABEL_173;
  }

  LODWORD(v274) = v5;
  v5 = v340;
  v34 = v275[13];
  v35 = *(v275 + 112);
  v17 = *(v275 + 113);
  v273 = *(v275 + 113);
  v254 = v34;
  v252 = v35;
  v253 = *(v275 + 24);
  if (*&v340[29])
  {
    LODWORD(__src[0]) = *(v275 + 24);
    __src[1] = v34;
    LOBYTE(__src[2]) = v35;
    BYTE1(__src[2]) = v17;

    LayoutSubviews.subscript.getter();
    v328[0] = *v329;
    LOBYTE(v328[1]) = v329[16];
    LOBYTE(v327[0]) = 0;
    LOBYTE(v322[0]) = LOBYTE(v274) & 1;
    LayoutSubview.sizeThatFits(_:)();
    v37 = v36;
    v38 = v33 - 1;
    if (v33 == 1)
    {
    }

    else
    {
      v276 = v14;
      v39 = 40;
      v17 = v254;
      do
      {
        LODWORD(__src[0]) = v253;
        __src[1] = v254;
        LOBYTE(__src[2]) = v252;
        BYTE1(__src[2]) = v273;
        LayoutSubviews.subscript.getter();
        v328[0] = *v329;
        LOBYTE(v328[1]) = v329[16];
        LOBYTE(v327[0]) = 0;
        LOBYTE(v322[0]) = LOBYTE(v274) & 1;
        LayoutSubview.sizeThatFits(_:)();
        if (v37 < v40)
        {
          v37 = v40;
        }

        v39 += 8;
        --v38;
      }

      while (v38);
      v14 = v276;

      *&v9 = COERCE_DOUBLE(v328);
      v5 = v340;
    }
  }

  else
  {

    v37 = 0.0;
  }

  if (v37 > v30)
  {
    v30 = v37;
  }

  v41 = (MinX - v30) * 0.5;
  v42 = v41 - v21;
  v43 = 0.0;
  if (v41 - v21 < 0.0)
  {
    v42 = 0.0;
  }

  v44 = v41 - v23;
  if (v44 < 0.0)
  {
    v44 = 0.0;
  }

  if (BYTE1(v340[44]) != 1)
  {
    v21 = MinX - v26;
    if (MinX - v26 >= 0.0)
    {
      if (LOBYTE(v340[44]) != 1)
      {
        if (LOBYTE(v340[44]) == 2)
        {
          if (v21 - v42 < 0.0)
          {
            v21 = 0.0;
          }

          else
          {
            v21 = v21 - v42;
          }

          v23 = v42;
          goto LABEL_57;
        }

        goto LABEL_47;
      }

      if (v21 - v44 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v21 - v44;
      }
    }

    else
    {
      if (LOBYTE(v340[44]) != 1)
      {
        if (LOBYTE(v340[44]) == 2)
        {
          if (0.0 - v42 < 0.0)
          {
            v21 = 0.0;
          }

          else
          {
            v21 = 0.0 - v42;
          }

          v23 = v42;
          goto LABEL_57;
        }

        goto LABEL_48;
      }

      if (0.0 - v44 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 0.0 - v44;
      }
    }

    v21 = v44;
    goto LABEL_57;
  }

  if (MinX < 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = MinX;
  }

  if (LOBYTE(v340[44]) == 1)
  {
    v23 = v21;
    v21 = 0.0;
    goto LABEL_57;
  }

  if (LOBYTE(v340[44]) != 2)
  {
LABEL_47:
    v43 = v21 * 0.5;
    v23 = 0.0;
    v45 = v21 * 0.5 < 0.0;
    v21 = 0.0;
    if (v45)
    {
      goto LABEL_57;
    }

LABEL_48:
    v23 = v43;
    v21 = v43;
    goto LABEL_57;
  }

  v23 = 0.0;
LABEL_57:
  if (MinX < 0.0)
  {
    Height = 0.0;
  }

  else
  {
    Height = MinX;
  }

  v24 = v340[20];
  v15 = *&v340[21];
  v18 = *&v340[45];
  v331[0] = v23;
  v331[1] = v21;
  v331[2] = v30;
  v331[3] = Height;
  v331[4] = v42;
  v331[5] = v44;
  if ((*&v340[21] & 0x8000000000000000) != 0)
  {
    goto LABEL_174;
  }

  if (*(*&v340[20] + 16) < *&v340[21])
  {
    goto LABEL_175;
  }

  if (!*&v340[21])
  {
    goto LABEL_69;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_180;
  }

  while (1)
  {
    v46 = 32;
    v47 = v15;
    do
    {
      v48 = *(*&v24 + v46);
      if ((v48 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      if (v48 >= *(v18 + 16))
      {
        goto LABEL_161;
      }

      v49 = v18 + 32 + (v48 << 8);
      *(v49 + 200) = v23;
      *(v49 + 208) = 0;
      v46 += 8;
      --v47;
    }

    while (v47);

    v275[45] = v18;
LABEL_69:
    if (*(v14 + 16) < v33)
    {
      goto LABEL_176;
    }

    if (v33)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      }

      v50 = 32;
      while (1)
      {
        v51 = *(v14 + v50);
        if ((v51 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v51 >= *(v18 + 16))
        {
          goto LABEL_163;
        }

        v52 = v18 + 32 + (v51 << 8);
        *(v52 + 200) = v30;
        *(v52 + 208) = 0;
        v50 += 8;
        if (!--v33)
        {

          v275[45] = v18;
          goto LABEL_78;
        }
      }

LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

LABEL_78:
    v14 = *(v5 + 37);
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_177;
    }

    v53 = *(v5 + 36);
    if (*(v53 + 16) >= v14)
    {
      break;
    }

LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
  }

  if (*&v14 != 0.0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    }

    v54 = 32;
    while (1)
    {
      v55 = *(v53 + v54);
      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_164;
      }

      if (v55 >= *(v18 + 16))
      {
        goto LABEL_165;
      }

      v56 = v18 + 32 + (v55 << 8);
      *(v56 + 200) = v21;
      *(v56 + 208) = 0;
      v54 += 8;
      --v14;
      if (*&v14 == 0.0)
      {

        v57 = v275;
        v275[45] = v18;
        goto LABEL_89;
      }
    }
  }

  v57 = v275;
LABEL_89:
  v58 = *(*&v24 + 16);
  *&v14 = v278;
  if (v58 < v15)
  {
    goto LABEL_179;
  }

  if (v58 != v15)
  {
    v14 = v58 - v15;
    if (v58 <= v15)
    {
      __break(1u);
    }

    else
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_93:
        v59 = 8 * v15 + 32;
        while (1)
        {
          v60 = *(*&v24 + v59);
          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_166;
          }

          if (v60 >= *(v18 + 16))
          {
            goto LABEL_167;
          }

          v61 = v18 + 32 + (v60 << 8);
          *(v61 + 200) = Height;
          *(v61 + 208) = 0;
          v59 += 8;
          --v14;
          if (*&v14 == 0.0)
          {

            *(v57 + 45) = v18;
            *&v14 = v278;
            goto LABEL_98;
          }
        }
      }
    }

    v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    goto LABEL_93;
  }

LABEL_98:
  JindoTripleVStack.Implementation.prioritizeAndSizeChildren(in:resetCache:)(v14, LOBYTE(v274) & 1, 1, MinX);
  JindoTripleVStack.Implementation.equalizeHeightOfLeadingAndTrailing(in:)(v14, LOBYTE(v274) & 1, MinX);
  v62 = *(v57 + 21);
  if (*(v57 + 37) > v62)
  {
    v62 = *(v57 + 37);
  }

  if (v62 >= 1)
  {
    v63 = *&v14;
    v64 = v62 + 1;
    v18 = &type metadata for JindoTripleVStack.MajorAxisGroup.Group;
    do
    {
      if ((specialized JindoTripleVStack.Implementation.resizeChildrenAdjacentToNotch(in:metrics:)(v331) & 1) == 0)
      {
        break;
      }

      v5 = LODWORD(v274);
      JindoTripleVStack.Implementation.prioritizeAndSizeChildren(in:resetCache:)(v14, LOBYTE(v274) & 1, 0, MinX);
      Height = v57[22];
      v21 = v57[23];
      v65 = *(*(v57 + 20) + 16);
      type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>, &type metadata for JindoTripleVStack.MajorAxisGroup.Group, MEMORY[0x1E69E6F90]);
      v66 = swift_allocObject();
      v33 = v66;
      *(v66 + 16) = xmmword_18CD63400;
      v67 = v63 - Height - v21;
      v68 = LOBYTE(v274) & 1;
      if (LOBYTE(v274))
      {
        v67 = v278;
      }

      *(v66 + 32) = v65;
      *(v66 + 40) = v67;
      *(v66 + 48) = v68;
      v23 = v57[38];
      v30 = v57[39];
      v17 = *(*(v57 + 36) + 16);
      v69 = (LOBYTE(v274) & 1) != 0 ? v278 : v63 - v23 - v30;
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_18CD63400;
      *(v70 + 32) = v17;
      *(v70 + 40) = v69;
      v57 = v275;
      *(v70 + 48) = v68;
      *&v14 = v278;
      JindoTripleVStack.Implementation.equalizeHeightOfLeadingAndTrailing(in:leading:trailing:)(*&v278, LOBYTE(v274) & 1, v65, v33, v17, v70, MinX, Height, v21, v23, v30);
      swift_setDeallocating();
      swift_deallocClassInstance();
      swift_setDeallocating();
      swift_deallocClassInstance();
      --v64;
    }

    while (v64 > 1);
  }

  JindoTripleVStack.Implementation.pushBelowNotchIfNeeded(in:metrics:)(v14);
  if (*(*&v272 + 32))
  {
  }

  v72 = *(*&v272 + 8);
  v278 = **&v272;
  v73 = *(*&v272 + 16);
  v277 = *(*&v272 + 24);
  memcpy(__src, v57, sizeof(__src));
  v15 = __src[21];
  if ((__src[21] & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v24 = *&__src[20];
  if (*(__src[20] + 16) < __src[21])
  {
    goto LABEL_184;
  }

  v18 = v322;
  v33 = &v299;
  v17 = v327;
  if (__src[21])
  {
    LODWORD(v272) = __src[12];
    v268 = __src[13];
    v264 = __src[14];
    v9 = BYTE1(__src[14]);
    v274 = *&__src[45];
    outlined init with copy of JindoTripleVStack.Implementation(__src, v329);
    v17 = *(*&v24 + 32);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v5 = (*&v24 + 40);
      v74 = v15 - 1;
      v23 = 0.0;
      while (v17 < *(*&v274 + 16))
      {
        v15 = *&v274 + 32 + (v17 << 8);
        EdgeInsets.in(_:)();
        v76 = v75;
        v30 = v77;
        v78 = *v15;
        v79 = *(v15 + 16);
        v80 = *(v15 + 48);
        *&v329[32] = *(v15 + 32);
        *&v329[48] = v80;
        *v329 = v78;
        *&v329[16] = v79;
        v81 = *(v15 + 64);
        v82 = *(v15 + 80);
        v83 = *(v15 + 112);
        *&v329[96] = *(v15 + 96);
        *&v329[112] = v83;
        *&v329[64] = v81;
        *&v329[80] = v82;
        v84 = *(v15 + 128);
        v85 = *(v15 + 144);
        v86 = *(v15 + 176);
        *&v329[160] = *(v15 + 160);
        *&v329[176] = v86;
        *&v329[128] = v84;
        *&v329[144] = v85;
        v87 = *(v15 + 192);
        v88 = *(v15 + 208);
        v89 = *(v15 + 224);
        *&v329[233] = *(v15 + 233);
        *&v329[208] = v88;
        *&v329[224] = v89;
        *&v329[192] = v87;
        v313[0] = *(v15 + 136);
        v313[1] = *(v15 + 152);
        v313[2] = *(v15 + 168);
        v313[3] = *(v15 + 184);
        outlined init with copy of JindoTripleVStack.Child(v329, v328);
        EdgeInsets.horizontal.getter();
        v91 = v90;
        v92 = ViewSize.width.modify();
        *v93 = *v93 - v91;
        v92(v328, 0);
        EdgeInsets.vertical.getter();
        v95 = v94;
        v96 = ViewSize.height.modify();
        *v97 = *v97 - v95;
        v96(v328, 0);
        v21 = v278;
        v342.origin.x = v278;
        v342.origin.y = v72;
        v342.size.width = v73;
        Height = v277;
        v342.size.height = v277;
        v98 = v76 + CGRectGetMinY(v342);
        v99 = ViewGeometry.origin.modify();
        *(v100 + 8) = v98 + *(v100 + 8);
        v99(v328, 0);
        v343.origin.x = v278;
        v343.origin.y = v72;
        v343.size.width = v73;
        v343.size.height = v277;
        Width = CGRectGetWidth(v343);
        v102 = *(v15 + 160);
        *&v14 = COERCE_DOUBLE(v327);
        *&v328[0] = *(v15 + 152);
        *(&v328[0] + 1) = v102;
        v328[1] = *(v15 + 168);
        v328[2] = *(v15 + 184);
        ViewDimensions.width.getter();
        v104 = v30 + (Width - v103) * 0.0;
        v105 = ViewGeometry.origin.modify();
        *v106 = v104;
        v105(v328, 0);
        LOBYTE(v328[0]) = v9;
        ViewGeometry.finalizeLayoutDirection(_:parentSize:)();
        v344.origin.x = v278;
        v344.origin.y = v72;
        v344.size.width = v73;
        v344.size.height = v277;
        MinX = CGRectGetMinX(v344);
        v107 = ViewGeometry.origin.modify();
        *v108 = MinX + *v108;
        v107(v328, 0);
        LODWORD(v291) = LODWORD(v272);
        *(&v291 + 1) = v268;
        LOBYTE(v292) = v264;
        BYTE1(v292) = v9;
        LayoutSubviews.subscript.getter();
        v319 = v323;
        v320 = v324;
        v318[0] = v313[0];
        v318[1] = v313[1];
        v318[2] = v313[2];
        v318[3] = v313[3];
        v328[0] = v313[0];
        v328[1] = v313[1];
        v328[2] = v313[2];
        v328[3] = v313[3];
        LOBYTE(v295) = v9;
        outlined init with copy of ViewGeometry(v318, &v299);
        v24 = COERCE_DOUBLE(&v319);
        LayoutSubview.place(in:layoutDirection:)();
        v322[0] = v328[0];
        v322[1] = v328[1];
        v322[2] = v328[2];
        v322[3] = v328[3];
        outlined destroy of ViewGeometry(v322);
        v327[0] = v313[0];
        v327[1] = v313[1];
        v327[2] = v313[2];
        v327[3] = v313[3];
        outlined destroy of ViewGeometry(v327);
        if (!v74)
        {
          goto LABEL_120;
        }

        v109 = *v5++;
        v17 = v109;
        --v74;
        if ((v109 & 0x8000000000000000) != 0)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_168;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    outlined destroy of JindoTripleVStack.Implementation(__src);
    v57 = v275;
    v17 = v327;
    *&v9 = COERCE_DOUBLE(v328);
  }

  memcpy(v329, v57, sizeof(v329));
  v15 = *(v9 + 680);
  if (v15 < 0)
  {
    goto LABEL_185;
  }

  v24 = *(v9 + 672);
  if (*(*&v24 + 16) < v15)
  {
    goto LABEL_186;
  }

  if (v15)
  {
    LODWORD(v272) = *(v9 + 480);
    v269 = *(v9 + 488);
    v265 = v329[112];
    v261 = v329[113];
    v274 = *&v329[360];
    outlined init with copy of JindoTripleVStack.Implementation(v329, v328);
    v17 = *(*&v24 + 32);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v9 = *&v24 + 40;
      v110 = v15 - 1;
      while (v17 < *(*&v274 + 16))
      {
        v14 = *&v274 + 32 + (v17 << 8);
        EdgeInsets.in(_:)();
        v30 = v111;
        v113 = v112;
        v114 = *v14;
        v115 = *(v14 + 16);
        v116 = *(v14 + 48);
        v328[2] = *(v14 + 32);
        v328[3] = v116;
        v328[0] = v114;
        v328[1] = v115;
        v117 = *(v14 + 64);
        v118 = *(v14 + 80);
        v119 = *(v14 + 112);
        v328[6] = *(v14 + 96);
        v328[7] = v119;
        v328[4] = v117;
        v328[5] = v118;
        v120 = *(v14 + 128);
        v121 = *(v14 + 144);
        v122 = *(v14 + 176);
        v328[10] = *(v14 + 160);
        v328[11] = v122;
        v328[8] = v120;
        v328[9] = v121;
        v123 = *(v14 + 192);
        v124 = *(v14 + 208);
        v125 = *(v14 + 224);
        *(&v328[14] + 9) = *(v14 + 233);
        v328[13] = v124;
        v328[14] = v125;
        v328[12] = v123;
        v299 = *(v14 + 136);
        v300 = *(v14 + 152);
        v301 = *(v14 + 168);
        v302 = *(v14 + 184);
        outlined init with copy of JindoTripleVStack.Child(v328, v327);
        EdgeInsets.horizontal.getter();
        v127 = v126;
        v128 = ViewSize.width.modify();
        *v129 = *v129 - v127;
        v5 = v327;
        v128(v327, 0);
        EdgeInsets.vertical.getter();
        v131 = v130;
        v132 = ViewSize.height.modify();
        *v133 = *v133 - v131;
        v132(v327, 0);
        v23 = v278;
        v345.origin.x = v278;
        v345.origin.y = v72;
        v345.size.width = v73;
        v21 = v277;
        v345.size.height = v277;
        v134 = v30 + CGRectGetMinY(v345);
        v135 = ViewGeometry.origin.modify();
        *(v136 + 8) = v134 + *(v136 + 8);
        v135(v327, 0);
        v346.origin.x = v278;
        v346.origin.y = v72;
        v346.size.width = v73;
        v346.size.height = v277;
        Height = CGRectGetWidth(v346);
        v137 = *(v14 + 160);
        *&v327[0] = *(v14 + 152);
        *(&v327[0] + 1) = v137;
        v327[1] = *(v14 + 168);
        v327[2] = *(v14 + 184);
        ViewDimensions.width.getter();
        v139 = v113 + Height - v138;
        v140 = ViewGeometry.origin.modify();
        *v141 = v139;
        v140(v327, 0);
        v15 = v261;
        LOBYTE(v327[0]) = v261;
        ViewGeometry.finalizeLayoutDirection(_:parentSize:)();
        v347.origin.x = v278;
        v347.origin.y = v72;
        v347.size.width = v73;
        v347.size.height = v277;
        MinX = CGRectGetMinX(v347);
        v142 = ViewGeometry.origin.modify();
        *v143 = MinX + *v143;
        v142(v327, 0);
        LODWORD(v323) = LODWORD(v272);
        *(&v323 + 1) = v269;
        LOBYTE(v324) = v265;
        BYTE1(v324) = v261;
        LayoutSubviews.subscript.getter();
        v295 = v319;
        LOBYTE(v296) = v320;
        v313[0] = v299;
        v313[1] = v300;
        v313[2] = v301;
        v313[3] = v302;
        v327[0] = v299;
        v327[1] = v300;
        v327[2] = v301;
        v327[3] = v302;
        LOBYTE(v279) = v261;
        outlined init with copy of ViewGeometry(v313, &v291);
        v24 = COERCE_DOUBLE(&v295);
        LayoutSubview.place(in:layoutDirection:)();
        v318[0] = v327[0];
        v318[1] = v327[1];
        v318[2] = v327[2];
        v318[3] = v327[3];
        outlined destroy of ViewGeometry(v318);
        v322[0] = v299;
        v322[1] = v300;
        v322[2] = v301;
        v322[3] = v302;
        outlined destroy of ViewGeometry(v322);
        if (!v110)
        {
          goto LABEL_130;
        }

        v144 = *v9;
        v9 += 8;
        v17 = v144;
        --v110;
        if ((v144 & 0x8000000000000000) != 0)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_169;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    outlined destroy of JindoTripleVStack.Implementation(v329);
    v57 = v275;
    v17 = v327;
  }

  v274 = *v329;
  v23 = v278;
  v348.origin.x = v278;
  v348.origin.y = v72;
  v348.size.width = v73;
  v21 = v277;
  v348.size.height = v277;
  MinX = CGRectGetWidth(v348);
  v349.origin.x = v278;
  v349.origin.y = v72;
  v349.size.width = v73;
  v349.size.height = v277;
  Height = CGRectGetHeight(v349);
  v350.origin.x = v278;
  v350.origin.y = v72;
  v350.size.width = v73;
  v350.size.height = v277;
  v145 = CGRectGetHeight(v350);
  memcpy(v328, v57, 0x178uLL);
  v146 = *(&v328[14] + 1);
  if ((*(&v328[14] + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_187;
  }

  v147 = *&v328[14];
  if (*(*&v328[14] + 16) < *(&v328[14] + 1))
  {
    goto LABEL_188;
  }

  *&v24 = BYTE9(v328[3]);

  outlined init with copy of JindoTripleVStack.Implementation(v328, v327);
  TextAlignment.value.getter();
  v272 = v148;
  if (v146)
  {
    v9 = *(v147 + 32);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v262 = v72 + Height * 0.5 - v145 * 0.5;
      v266 = v278 + MinX * 0.5 - v274 * 0.5;
      v259 = v328[6];
      v258 = *(&v328[6] + 1);
      v257 = v328[7];
      v270 = *(&v328[22] + 1);
      v256 = *(&v328[22] + 1) + 32;
      v255 = BYTE1(v328[7]);
      v17 = v146 - 1;
      v15 = 40;
      while (v9 < *(v270 + 16))
      {
        v30 = v73;
        v73 = v72;
        v149 = (v256 + (v9 << 8));
        EdgeInsets.in(_:)();
        v151 = v150;
        v153 = v152;
        v154 = *v149;
        v155 = v149[1];
        v156 = v149[3];
        v327[2] = v149[2];
        v327[3] = v156;
        v327[0] = v154;
        v327[1] = v155;
        v157 = v149[4];
        v158 = v149[5];
        v159 = v149[7];
        v327[6] = v149[6];
        v327[7] = v159;
        v327[4] = v157;
        v327[5] = v158;
        v160 = v149[8];
        v161 = v149[9];
        v162 = v149[11];
        v327[10] = v149[10];
        v327[11] = v162;
        v327[8] = v160;
        v327[9] = v161;
        v163 = v149[12];
        v164 = v149[13];
        v165 = v149[14];
        *(&v327[14] + 9) = *(v149 + 233);
        v327[13] = v164;
        v327[14] = v165;
        v327[12] = v163;
        v291 = *(v149 + 136);
        v292 = *(v149 + 152);
        v293 = *(v149 + 168);
        v294 = *(v149 + 184);
        outlined init with copy of JindoTripleVStack.Child(v327, v322);
        EdgeInsets.horizontal.getter();
        v167 = v166;
        v5 = &v291;
        v168 = ViewSize.width.modify();
        *v169 = *v169 - v167;
        v168(v322, 0);
        EdgeInsets.vertical.getter();
        v171 = v170;
        v172 = ViewSize.height.modify();
        *v173 = *v173 - v171;
        v172(v322, 0);
        v23 = v266;
        v351.origin.x = v266;
        v351.origin.y = v262;
        v21 = v274;
        v351.size.width = v274;
        v351.size.height = v145;
        v174 = v151 + CGRectGetMinY(v351);
        v175 = ViewGeometry.origin.modify();
        *(v176 + 8) = v174 + *(v176 + 8);
        v175(v322, 0);
        v352.origin.x = v266;
        v352.origin.y = v262;
        v352.size.width = v274;
        v352.size.height = v145;
        Height = CGRectGetWidth(v352);
        v177 = *(v149 + 20);
        *&v322[0] = *(v149 + 19);
        *(&v322[0] + 1) = v177;
        v322[1] = *(v149 + 168);
        v322[2] = *(v149 + 184);
        ViewDimensions.width.getter();
        v179 = v153 + v272 * (Height - v178);
        v180 = ViewGeometry.origin.modify();
        *v181 = v179;
        v180(v322, 0);
        v14 = v255;
        LOBYTE(v322[0]) = v255;
        ViewGeometry.finalizeLayoutDirection(_:parentSize:)();
        v353.origin.x = v266;
        v353.origin.y = v262;
        v353.size.width = v274;
        v353.size.height = v145;
        MinX = CGRectGetMinX(v353);
        v182 = ViewGeometry.origin.modify();
        *v183 = MinX + *v183;
        v182(v322, 0);
        LODWORD(v319) = v259;
        *(&v319 + 1) = v258;
        v320 = v257;
        v321 = v255;
        LayoutSubviews.subscript.getter();
        v279 = v295;
        LOBYTE(v280) = v296;
        v299 = v291;
        v300 = v292;
        v301 = v293;
        v302 = v294;
        v322[0] = v291;
        v322[1] = v292;
        v322[2] = v293;
        v322[3] = v294;
        LOBYTE(v315) = v255;
        outlined init with copy of ViewGeometry(&v299, &v323);
        v24 = COERCE_DOUBLE(&v279);
        LayoutSubview.place(in:layoutDirection:)();
        v313[0] = v322[0];
        v313[1] = v322[1];
        v313[2] = v322[2];
        v313[3] = v322[3];
        outlined destroy of ViewGeometry(v313);
        v318[0] = v291;
        v318[1] = v292;
        v318[2] = v293;
        v318[3] = v294;
        outlined destroy of ViewGeometry(v318);
        if (!v17)
        {
          goto LABEL_140;
        }

        v9 = *(v147 + v15);
        v15 += 8;
        --v17;
        v72 = v73;
        v73 = v30;
        v18 = v322;
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_139;
        }
      }

      goto LABEL_170;
    }

LABEL_139:
    __break(1u);
LABEL_140:

    outlined destroy of JindoTripleVStack.Implementation(v328);
    v57 = v275;
    v17 = v327;
    v72 = v73;
    v73 = v30;
    v18 = v322;
  }

  else
  {

    outlined destroy of JindoTripleVStack.Implementation(v328);
  }

  memcpy(v327, v57, 0x178uLL);
  v14 = *(&v327[10] + 1);
  v9 = *&v327[10];
  v184 = *(*&v327[10] + 16);
  if (v184 < *(&v327[10] + 1))
  {
    goto LABEL_189;
  }

  if ((*(&v327[10] + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_190;
  }

  *&v24 = BYTE10(v327[3]);

  outlined init with copy of JindoTripleVStack.Implementation(v327, v322);
  TextAlignment.value.getter();
  if (v14 != v184)
  {
    if (v14 >= v184)
    {
      goto LABEL_191;
    }

    v272 = *&v9;
    v9 = *(v9 + 32 + 8 * v14);
    if ((v9 & 0x8000000000000000) != 0)
    {
LABEL_153:
      __break(1u);
LABEL_154:

      outlined destroy of JindoTripleVStack.Implementation(v327);
      v57 = v275;
      if (BYTE8(v327[5]))
      {
      }

      goto LABEL_155;
    }

    v30 = v185;
    v271 = v327[6];
    v267 = *(&v327[6] + 1);
    v263 = v327[7];
    v5 = BYTE1(v327[7]);
    v274 = *(&v327[22] + 1);
    v260 = *(&v327[22] + 1) + 32;
    v15 = ~v14 + v184;
    v17 = 8 * v14 + 40;
    while (v9 < *(*&v274 + 16))
    {
      v186 = (v260 + (v9 << 8));
      EdgeInsets.in(_:)();
      v188 = v187;
      v190 = v189;
      v191 = *v186;
      v192 = v186[1];
      v193 = v186[2];
      v322[3] = v186[3];
      v322[2] = v193;
      v322[1] = v192;
      v322[0] = v191;
      v194 = v186[4];
      v195 = v186[5];
      v196 = v186[6];
      v322[7] = v186[7];
      v322[6] = v196;
      v322[5] = v195;
      v322[4] = v194;
      v197 = v186[8];
      v198 = v186[9];
      v199 = v186[10];
      v322[11] = v186[11];
      v322[10] = v199;
      v322[9] = v198;
      v322[8] = v197;
      v200 = v186[12];
      v201 = v186[13];
      v202 = v186[14];
      *(&v322[14] + 9) = *(v186 + 233);
      v322[13] = v201;
      v322[14] = v202;
      v322[12] = v200;
      v323 = *(v186 + 136);
      v324 = *(v186 + 152);
      v325 = *(v186 + 168);
      v326 = *(v186 + 184);
      outlined init with copy of JindoTripleVStack.Child(v322, v318);
      EdgeInsets.horizontal.getter();
      v204 = v203;
      v205 = ViewSize.width.modify();
      *v206 = *v206 - v204;
      v205(v318, 0);
      EdgeInsets.vertical.getter();
      v208 = v207;
      v209 = ViewSize.height.modify();
      *v210 = *v210 - v208;
      v209(v318, 0);
      v23 = v278;
      v354.origin.x = v278;
      v354.origin.y = v72;
      v354.size.width = v73;
      v21 = v277;
      v354.size.height = v277;
      v211 = v188 + CGRectGetMinY(v354);
      v212 = ViewGeometry.origin.modify();
      *(v213 + 8) = v211 + *(v213 + 8);
      v212(v318, 0);
      v355.origin.x = v278;
      v355.origin.y = v72;
      v355.size.width = v73;
      v355.size.height = v277;
      Height = CGRectGetWidth(v355);
      v214 = *(v186 + 20);
      *&v318[0] = *(v186 + 19);
      *(&v318[0] + 1) = v214;
      v318[1] = *(v186 + 168);
      v318[2] = *(v186 + 184);
      ViewDimensions.width.getter();
      v216 = v190 + v30 * (Height - v215);
      v217 = ViewGeometry.origin.modify();
      *v218 = v216;
      v217(v318, 0);
      LOBYTE(v318[0]) = v5;
      ViewGeometry.finalizeLayoutDirection(_:parentSize:)();
      v356.origin.x = v278;
      v356.origin.y = v72;
      v356.size.width = v73;
      v356.size.height = v277;
      MinX = CGRectGetMinX(v356);
      v219 = ViewGeometry.origin.modify();
      *v220 = MinX + *v220;
      v219(v318, 0);
      *&v14 = COERCE_DOUBLE(&v295);
      LODWORD(v295) = v271;
      *(&v295 + 1) = v267;
      LOBYTE(v296) = v263;
      BYTE1(v296) = v5;
      LayoutSubviews.subscript.getter();
      v315 = v279;
      v316 = v280;
      v291 = v323;
      v292 = v324;
      v293 = v325;
      v294 = v326;
      v318[0] = v323;
      v318[1] = v324;
      v318[2] = v325;
      v318[3] = v326;
      LOBYTE(v287) = v5;
      outlined init with copy of ViewGeometry(&v291, &v319);
      v24 = COERCE_DOUBLE(&v315);
      LayoutSubview.place(in:layoutDirection:)();
      v299 = v318[0];
      v300 = v318[1];
      v301 = v318[2];
      v302 = v318[3];
      outlined destroy of ViewGeometry(&v299);
      v313[0] = v323;
      v313[1] = v324;
      v313[2] = v325;
      v313[3] = v326;
      outlined destroy of ViewGeometry(v313);
      if (!v15)
      {
        goto LABEL_154;
      }

      v9 = *(*&v272 + v17);
      --v15;
      v17 += 8;
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }
    }

    goto LABEL_171;
  }

  outlined destroy of JindoTripleVStack.Implementation(v327);
  if (BYTE8(v327[5]))
  {
  }

LABEL_155:
  v17 = *&v327[5];
  memcpy(v322, v57, 0x178uLL);
  v9 = *(&v322[22] + 1);
  memcpy(v318, v57, 0x178uLL);
  LODWORD(v315) = v253;
  *(&v315 + 1) = v254;
  v316 = v252;
  v317 = v273;
  outlined init with copy of JindoTripleVStack.Implementation(v322, v313);
  LayoutSubviews.subscript.getter();
  v311 = v313[24];
  v312 = v314;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_157;
    }

LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

LABEL_192:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = result;
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_193;
  }

LABEL_157:
  if (v17 >= *(v9 + 16))
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v221 = *v18;
  v222 = *(v18 + 8);
  v223 = *(v18 + 24);
  LOBYTE(v313[0]) = 0;
  LOBYTE(v299) = 0;
  JindoTripleVStack.Implementation.resize(_:proposal:proxy:)(v9 + (v17 << 8) + 32, v221, 0, v222, 0, &v311);
  memcpy(v313, v318, 0x178uLL);
  result = outlined destroy of JindoTripleVStack.Implementation(v313);
  v57[45] = *&v9;
  if (v17 < *(v9 + 16))
  {
    v224 = *(v9 + (v17 << 8) + 32);
    v225 = *(v9 + (v17 << 8) + 48);
    v226 = *(v9 + (v17 << 8) + 80);
    v301 = *(v9 + (v17 << 8) + 64);
    v302 = v226;
    v299 = v224;
    v300 = v225;
    v227 = *(v9 + (v17 << 8) + 96);
    v228 = *(v9 + (v17 << 8) + 112);
    v229 = *(v9 + (v17 << 8) + 144);
    v305 = *(v9 + (v17 << 8) + 128);
    v306 = v229;
    v303 = v227;
    v304 = v228;
    v230 = *(v9 + (v17 << 8) + 160);
    v231 = *(v9 + (v17 << 8) + 176);
    v232 = *(v9 + (v17 << 8) + 208);
    v309 = *(v9 + (v17 << 8) + 192);
    v310 = v232;
    v307 = v230;
    v308 = v231;
    v233 = *(v9 + (v17 << 8) + 224);
    v234 = *(v9 + (v17 << 8) + 240);
    v235 = *(v9 + (v17 << 8) + 256);
    *(v33 + 233) = *(v9 + (v17 << 8) + 265);
    *(v33 + 208) = v234;
    *(v33 + 224) = v235;
    *(v33 + 192) = v233;
    v236 = *(v9 + (v17 << 8) + 184);
    v295 = *(v9 + (v17 << 8) + 168);
    v296 = v236;
    v237 = *(v9 + (v17 << 8) + 216);
    v297 = *(v9 + (v17 << 8) + 200);
    v298 = v237;
    outlined init with copy of JindoTripleVStack.Child(&v299, &v291);
    v357.origin.x = v278;
    v357.origin.y = v72;
    v357.size.width = v73;
    v357.size.height = v277;
    MidX = CGRectGetMidX(v357);
    v291 = v296;
    v292 = v297;
    v293 = v298;
    ViewDimensions.width.getter();
    v240 = MidX + v239 * -0.5;
    v241 = ViewGeometry.origin.modify();
    *v242 = v240;
    v241(&v291, 0);
    v358.origin.x = v278;
    v358.origin.y = v72;
    v358.size.width = v73;
    v358.size.height = v277;
    v243 = CGRectGetMinY(v358) - v223;
    v244 = ViewGeometry.origin.modify();
    *(v245 + 8) = v243;
    v244(&v291, 0);
    v287 = v253;
    v288 = v254;
    v289 = v252;
    v290 = v273;
    LayoutSubviews.subscript.getter();
    v283 = v285;
    v284 = v286;
    v246 = v296;
    *(v33 + 1120) = v295;
    *(v33 + 1136) = v246;
    v247 = v298;
    *(v33 + 1152) = v297;
    *(v33 + 1168) = v247;
    outlined init with copy of ViewGeometry(&v319, &v291);

    v248 = *(v33 + 1136);
    v279 = *(v33 + 1120);
    v280 = v248;
    v249 = *(v33 + 1168);
    v281 = *(v33 + 1152);
    v282 = v249;
    LayoutSubview.place(in:layoutDirection:)();
    v250 = v280;
    *(v18 + 384) = v279;
    *(v18 + 400) = v250;
    v251 = v282;
    *(v18 + 416) = v281;
    *(v18 + 432) = v251;
    outlined destroy of ViewGeometry(&v323);
    v291 = v295;
    v292 = v296;
    v293 = v297;
    v294 = v298;
    return outlined destroy of ViewGeometry(&v291);
  }

LABEL_195:
  __break(1u);
  return result;
}

double JindoTripleVStack.Implementation.resize(_:proposal:proxy:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, __int128 *a6)
{
  v21 = *a6;
  v9 = *(a6 + 16);
  EdgeInsets.in(_:)();
  if ((a3 & 1) == 0)
  {
    EdgeInsets.horizontal.getter();
  }

  if ((a5 & 1) == 0)
  {
    EdgeInsets.vertical.getter();
  }

  v29 = v21;
  LOBYTE(v30) = v9;
  LOBYTE(v25) = a3 & 1;
  LOBYTE(v22) = a5 & 1;
  LayoutSubview.dimensions(in:)();
  EdgeInsets.horizontal.getter();
  v11 = v10;
  v12 = ViewSize.width.modify();
  *v13 = v11 + *v13;
  v12(&v29, 0);
  EdgeInsets.vertical.getter();
  v15 = v14;
  v16 = ViewSize.height.modify();
  *v17 = v15 + *v17;
  v16(&v29, 0);
  v29 = v22;
  v30 = v23;
  v31 = v24;

  ViewGeometry.init(origin:dimensions:)();

  v18 = *(a1 + 152);
  v29 = *(a1 + 136);
  v30 = v18;
  v19 = *(a1 + 184);
  v31 = *(a1 + 168);
  v32 = v19;
  outlined destroy of ViewGeometry(&v29);
  *(a1 + 136) = v25;
  *(a1 + 152) = v26;
  result = *&v27;
  *(a1 + 168) = v27;
  *(a1 + 184) = v28;
  return result;
}

uint64_t JindoTripleVStack.Implementation.prioritize(resetCache:)(uint64_t result)
{
  v2 = *(v1 + 360);
  v3 = *(v2 + 2);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  v80 = *(v1 + 368);
  v65 = v80;

  if ((v4 & 1) == 0)
  {
    v5 = v71;
    if (v3 > 0x20)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v5 = v71;
    v6 = v2 + 64;
    do
    {
      *(v6 - 3) = 0;
      *(v6 - 16) = 1;
      *(v6 - 1) = 0;
      *v6 = 1;
      v6 += 256;
      v3 = (v3 - 1);
    }

    while (v3);
    *(v71 + 360) = v2;
    v3 = *(v2 + 2);
    if (v3 > 0x20)
    {
LABEL_12:
      slowPath #1 (_:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(&v80, v5);
      v7 = v80;
      v8 = *(v80 + 2);
    }

    else
    {
LABEL_7:
      v7 = v65;
      v8 = *(v65 + 2);
      if (v8 >= 2)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
        }

        v66 = v7 + 32;
        v3 = (v7 + 40);
        v8 = 1;
        v68 = v7;
LABEL_32:
        if (v8 < *(v7 + 2))
        {
          v26 = *&v66[8 * v8];
          if ((v26 & 0x8000000000000000) == 0)
          {
            v27 = 0;
            v28 = v26 << 8;
            v67 = v3;
            v69 = v8;
            v70 = v26 << 8;
            v72 = *&v66[8 * v8];
            while (1)
            {
              v29 = v8 + v27;
              if (v8 + v27 - 1 >= *(v7 + 2))
              {
                goto LABEL_77;
              }

              v30 = *(v2 + 2);
              if (v26 >= v30)
              {
                goto LABEL_78;
              }

              v31 = *(v3 - 1);
              if (v31 >= v30)
              {
                goto LABEL_79;
              }

              v32 = &v2[v28 + 32];
              v33 = v31 << 8;
              v34 = *&v2[256 * v31 + 32];
              if (v34 >= *v32)
              {
                if (*v32 < v34)
                {
                  goto LABEL_71;
                }

                v73 = v31 << 8;
                if (v32[16])
                {
                  ProposedViewSize.init(_:in:by:)();
                  v35 = *(v5 + 104);
                  v36 = *(v5 + 112);
                  v37 = *(v5 + 113);
                  LODWORD(v76) = *(v5 + 96);
                  v77 = v35;
                  v78 = v36;
                  v79 = v37;
                  LayoutSubviews.subscript.getter();
                  LayoutSubview.lengthThatFits(_:in:)();
                  v39 = v38;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                  }

                  v28 = v70;
                  v5 = v71;
                  v26 = v72;
                  v33 = v31 << 8;
                  if (v72 >= *(v2 + 2))
                  {
                    goto LABEL_87;
                  }

                  v40 = &v2[v70];
                  *(v40 + 5) = v39;
                  v40[48] = 0;
                  *(v71 + 360) = v2;
                  v30 = *(v2 + 2);
                }

                if (v26 >= v30)
                {
                  goto LABEL_84;
                }

                if (v2[v28 + 64])
                {
                  ProposedViewSize.init(_:in:by:)();
                  v41 = *(v5 + 104);
                  v42 = *(v5 + 112);
                  v43 = *(v5 + 113);
                  LODWORD(v76) = *(v5 + 96);
                  v77 = v41;
                  v78 = v42;
                  v79 = v43;
                  LayoutSubviews.subscript.getter();
                  LayoutSubview.lengthThatFits(_:in:)();
                  v45 = v44;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                  }

                  v5 = v71;
                  v26 = v72;
                  v33 = v31 << 8;
                  if (v72 >= *(v2 + 2))
                  {
                    goto LABEL_88;
                  }

                  v46 = &v2[v70];
                  *(v46 + 7) = v45;
                  v46[64] = 0;
                  *(v71 + 360) = v2;
                }

                _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
                v47 = *(v2 + 2);
                if (v31 >= v47)
                {
                  goto LABEL_85;
                }

                v48 = v76;
                v49 = v77;
                if (v2[v33 + 48])
                {
                  ProposedViewSize.init(_:in:by:)();
                  v50 = *(v5 + 104);
                  v51 = *(v5 + 112);
                  v52 = *(v5 + 113);
                  LODWORD(v76) = *(v5 + 96);
                  v77 = v50;
                  v78 = v51;
                  v79 = v52;
                  LayoutSubviews.subscript.getter();
                  LayoutSubview.lengthThatFits(_:in:)();
                  v54 = v53;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                  }

                  v5 = v71;
                  v26 = v72;
                  v33 = v31 << 8;
                  if (v31 >= *(v2 + 2))
                  {
                    goto LABEL_89;
                  }

                  v55 = &v2[v73];
                  *(v55 + 5) = v54;
                  v55[48] = 0;
                  *(v71 + 360) = v2;
                  v47 = *(v2 + 2);
                }

                if (v31 >= v47)
                {
                  goto LABEL_86;
                }

                if (v2[v33 + 64])
                {
                  ProposedViewSize.init(_:in:by:)();
                  v56 = *(v5 + 104);
                  v57 = *(v5 + 112);
                  v58 = *(v5 + 113);
                  LODWORD(v76) = *(v5 + 96);
                  v77 = v56;
                  v78 = v57;
                  v79 = v58;
                  LayoutSubviews.subscript.getter();
                  LayoutSubview.lengthThatFits(_:in:)();
                  v60 = v59;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                  }

                  v5 = v71;
                  v26 = v72;
                  if (v31 >= *(v2 + 2))
                  {
                    goto LABEL_90;
                  }

                  v61 = &v2[v73];
                  *(v61 + 7) = v60;
                  v61[64] = 0;
                  *(v71 + 360) = v2;
                }

                _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
                v62 = v76;
                v63 = v77;
                v76 = v48;
                v77 = v49;
                v74 = v62;
                v75 = v63;
                if (MEMORY[0x18D004770](&v76, &v74))
                {
                  v7 = v68;
                  v8 = v69;
                  v28 = v70;
                }

                else
                {
                  v76 = v48;
                  v77 = v49;
                  v74 = v62;
                  v75 = v63;
                  if (MEMORY[0x18D004770](&v74, &v76))
                  {
                    v7 = v68;
                    v8 = v69;
LABEL_71:
                    if (v27)
                    {
                      v64 = v8 + v27;
LABEL_73:
                      v3 = v67;
                      if (v64 >= *(v7 + 2))
                      {
                        goto LABEL_93;
                      }

                      *&v66[8 * v64] = v26;
                    }

                    else
                    {
                      v3 = v67;
                    }

                    ++v8;
                    ++v3;
                    if (v8 != *(v7 + 2))
                    {
                      goto LABEL_32;
                    }

                    v80 = v7;
                    v10 = *(v7 + 4);
                    if ((v10 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_15;
                    }

                    goto LABEL_76;
                  }

                  v7 = v68;
                  v8 = v69;
                  v28 = v70;
                  if (v26 >= v31)
                  {
                    goto LABEL_71;
                  }
                }
              }

              if (v29 >= *(v7 + 2))
              {
                goto LABEL_80;
              }

              *v3-- = v31;
              --v27;
              if (!(v8 + v27))
              {
                v64 = 0;
                goto LABEL_73;
              }
            }
          }

          goto LABEL_92;
        }

LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }
    }

    if (v8)
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v10 = *(v7 + 4);
  if ((v10 & 0x8000000000000000) != 0)
  {
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
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_15:
  v2 = *(v5 + 360);
  if (v10 >= *(v2 + 2))
  {
    goto LABEL_95;
  }

  v11 = *&v2[256 * v10 + 32];
  v12 = v7;
  v13 = v8;

  v14 = v12;
LABEL_17:
  v15 = v13;
  while (v15)
  {
    v16 = v15 - 1;
    if ((v15 - 1) >= *(v14 + 2))
    {
      goto LABEL_81;
    }

    v17 = *&v14[8 * v15 + 24];
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (v17 >= *(v2 + 2))
    {
      goto LABEL_83;
    }

    v3 = (v17 << 8);
    v18 = &v2[256 * v17 + 32];
    if (*v18 == v11)
    {
      break;
    }

    --v15;
    if (*(v18 + 16) == 1)
    {
      v13 = v16;
      ProposedViewSize.init(_:in:by:)();
      v19 = *(v5 + 104);
      v20 = *(v5 + 112);
      v21 = *(v5 + 113);
      LODWORD(v76) = *(v5 + 96);
      v77 = v19;
      v78 = v20;
      v79 = v21;
      LayoutSubviews.subscript.getter();
      LayoutSubview.lengthThatFits(_:in:)();
      v23 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      v5 = v71;
      if (v17 < *(v2 + 2))
      {
        v14 = v12;
        v24 = v3 + v2;
        *(v24 + 5) = v23;
        v24[48] = 0;
        *(v71 + 360) = v2;
        goto LABEL_17;
      }

      goto LABEL_96;
    }
  }

  v25 = v14;

  *(v5 + 368) = v25;
  return result;
}

void majorAxisLength #1 (ofChild:forMajorProposal:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(unint64_t a1, uint64_t a2, double a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(a2 + 360) + 16) > a1)
  {
    ProposedViewSize.init(_:in:by:)();
    LayoutSubviews.subscript.getter();
    LayoutSubview.lengthThatFits(_:in:)();
    return;
  }

  __break(1u);
}

unint64_t majorAxisMin #1 (ofChild:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = a2;
  v2 = result;
  v7 = *(a2 + 360);
  if (*(v7 + 16) <= result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
    *(v3 + 360) = result;
    goto LABEL_5;
  }

  v5 = result << 8;
  if ((*(v7 + (result << 8) + 48) & 1) == 0)
  {
    return result;
  }

  majorAxisLength #1 (ofChild:forMajorProposal:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(result, a2, 0.0);
  v6 = v8;
  v4 = *(v3 + 360);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 360) = v4;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(v4 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v4 + v5;
    *(v9 + 40) = v6;
    *(v9 + 48) = 0;
  }

  return result;
}

unint64_t majorAxisMax #1 (ofChild:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = a2;
  v2 = result;
  v7 = *(a2 + 360);
  if (*(v7 + 16) <= result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
    *(v3 + 360) = result;
    goto LABEL_5;
  }

  v5 = result << 8;
  if ((*(v7 + (result << 8) + 64) & 1) == 0)
  {
    return result;
  }

  majorAxisLength #1 (ofChild:forMajorProposal:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(result, a2, INFINITY);
  v6 = v8;
  v4 = *(v3 + 360);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 360) = v4;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(v4 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v4 + v5;
    *(v9 + 56) = v6;
    *(v9 + 64) = 0;
  }

  return result;
}

void *JindoTripleVStack.Implementation.spacing(_:axis:)@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  v52 = *(v3 + 113);
  v6 = *(v3 + 176);
  v70 = *(v3 + 160);
  v71 = v6;
  v7 = *(v3 + 208);
  v72 = *(v3 + 192);
  v73 = v7;
  v8 = *(v3 + 272);
  v76 = *(v3 + 256);
  v77 = v8;
  v9 = *(v3 + 240);
  v74 = *(v3 + 224);
  v75 = v9;
  v10 = *(v3 + 304);
  v78 = *(v3 + 288);
  v79 = v10;
  v11 = *(v3 + 336);
  v80 = *(v3 + 320);
  v81 = v11;
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = *(&v77 + 1);
      v13 = v77;
      v14 = v76;
      v15 = BYTE8(v76);
      v17 = *(&v75 + 1);
      v16 = v75;
      v18 = *(&v74 + 1);
      v19 = v74;
      v20 = &v74;
    }

    else
    {
      v12 = *(&v81 + 1);
      v13 = v81;
      v14 = v80;
      v15 = BYTE8(v80);
      v17 = *(&v79 + 1);
      v16 = v79;
      v18 = *(&v78 + 1);
      v19 = v78;
      v20 = &v78;
    }
  }

  else
  {
    v12 = *(&v73 + 1);
    v13 = v73;
    v14 = v72;
    v15 = BYTE8(v72);
    v17 = *(&v71 + 1);
    v16 = v71;
    v18 = *(&v70 + 1);
    v19 = v70;
    v20 = &v70;
  }

  outlined init with copy of JindoTripleVStack.StackHeader(v20, v66);
  v66[0] = v19;
  v66[1] = v18;
  v66[2] = v16;
  v66[3] = v17;
  v66[4] = v14;
  v67 = v15;
  v68 = v13;
  v69 = v12;
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v21 = *(v19 + 16);
  outlined destroy of JindoTripleVStack.StackHeader(v66);
  if (v21 < v18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v18)
  {
    result = static Spacing.zero.getter();
    v22 = v61[0];
LABEL_38:
    *a3 = v22;
    *(a3 + 8) = v52;
    return result;
  }

  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v65 = v22;
  if (a1)
  {
    if (a1 == 1)
    {
      v23 = *(&v77 + 1);
      v24 = v77;
      v25 = v76;
      v26 = BYTE8(v76);
      v28 = *(&v75 + 1);
      v27 = v75;
      v29 = *(&v74 + 1);
      v30 = v74;
      v31 = &v74;
    }

    else
    {
      v23 = *(&v81 + 1);
      v24 = v81;
      v25 = v80;
      v26 = BYTE8(v80);
      v28 = *(&v79 + 1);
      v27 = v79;
      v29 = *(&v78 + 1);
      v30 = v78;
      v31 = &v78;
    }
  }

  else
  {
    v23 = *(&v73 + 1);
    v24 = v73;
    v25 = v72;
    v26 = BYTE8(v72);
    v28 = *(&v71 + 1);
    v27 = v71;
    v29 = *(&v70 + 1);
    v30 = v70;
    v31 = &v70;
  }

  outlined init with copy of JindoTripleVStack.StackHeader(v31, v61);
  v61[0] = v30;
  v61[1] = v29;
  v61[2] = v27;
  v61[3] = v28;
  v61[4] = v25;
  v62 = v26;
  v63 = v24;
  v64 = v23;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if (*(v30 + 16) < v29)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  outlined destroy of JindoTripleVStack.StackHeader(v61);
  if (!v29)
  {
LABEL_47:

    __break(1u);
    goto LABEL_48;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v33 = *(&v77 + 1);
      v34 = v77;
      v35 = v76;
      v36 = BYTE8(v76);
      v38 = *(&v75 + 1);
      v37 = v75;
      v39 = *(&v74 + 1);
      v40 = v74;
      v41 = &v74;
    }

    else
    {
      v33 = *(&v81 + 1);
      v34 = v81;
      v35 = v80;
      v36 = BYTE8(v80);
      v38 = *(&v79 + 1);
      v37 = v79;
      v39 = *(&v78 + 1);
      v40 = v78;
      v41 = &v78;
    }
  }

  else
  {
    v33 = *(&v73 + 1);
    v34 = v73;
    v35 = v72;
    v36 = BYTE8(v72);
    v38 = *(&v71 + 1);
    v37 = v71;
    v39 = *(&v70 + 1);
    v40 = v70;
    v41 = &v70;
  }

  outlined init with copy of JindoTripleVStack.StackHeader(v41, v57);
  v57[0] = v40;
  v57[1] = v39;
  v57[2] = v37;
  v57[3] = v38;
  v57[4] = v35;
  v58 = v36;
  v59 = v34;
  v60 = v33;
  if ((v39 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (*(v40 + 16) < v39)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  outlined destroy of JindoTripleVStack.StackHeader(v57);
  if (v39)
  {

    if (a1)
    {
      if (a1 == 1)
      {
        v42 = *(&v77 + 1);
        v43 = v77;
        v44 = v76;
        v45 = BYTE8(v76);
        v47 = *(&v75 + 1);
        v46 = v75;
        v49 = *(&v74 + 1);
        v48 = v74;
        v50 = &v74;
      }

      else
      {
        v42 = *(&v81 + 1);
        v43 = v81;
        v44 = v80;
        v45 = BYTE8(v80);
        v47 = *(&v79 + 1);
        v46 = v79;
        v49 = *(&v78 + 1);
        v48 = v78;
        v50 = &v78;
      }
    }

    else
    {
      v42 = *(&v73 + 1);
      v43 = v73;
      v44 = v72;
      v45 = BYTE8(v72);
      v47 = *(&v71 + 1);
      v46 = v71;
      v49 = *(&v70 + 1);
      v48 = v70;
      v50 = &v70;
    }

    outlined init with copy of JindoTripleVStack.StackHeader(v50, v53);
    v53[0] = v48;
    v53[1] = v49;
    v53[2] = v46;
    v53[3] = v47;
    v53[4] = v44;
    v54 = v45;
    v55 = v43;
    v56 = v42;
    if ((v49 & 0x8000000000000000) == 0)
    {
      if (*(v48 + 16) >= v49)
      {

        outlined destroy of JindoTripleVStack.StackHeader(v53);
        if (v49)
        {
          v51 = 32;
          do
          {
            AbsoluteEdge.Set.init(_:layoutDirection:)();
            LayoutSubviews.subscript.getter();
            LayoutSubview.spacing.getter();
            Spacing.incorporate(_:of:)();

            v51 += 8;
            --v49;
          }

          while (v49);

          v22 = v65;
        }

        else
        {
        }

        goto LABEL_38;
      }

      goto LABEL_46;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_48:

  __break(1u);
  return result;
}

void JindoTripleVStack.Implementation.computeMinWidth(of:in:)(char a1, uint64_t a2, char a3, double a4)
{
  memcpy(__dst, v4, sizeof(__dst));
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = *(v4 + 272);
      v42 = *(v4 + 256);
      v43 = v7;
      v9 = *(v4 + 224);
      v8 = *(v4 + 240);
    }

    else
    {
      v11 = *(v4 + 336);
      v42 = *(v4 + 320);
      v43 = v11;
      v9 = *(v4 + 288);
      v8 = *(v4 + 304);
    }
  }

  else
  {
    v10 = *(v4 + 208);
    v42 = *(v4 + 192);
    v43 = v10;
    v9 = *(v4 + 160);
    v8 = *(v4 + 176);
  }

  v41[0] = v9;
  v41[1] = v8;
  v12 = *(&v43 + 1);
  v13 = v43;
  v14 = v42;
  v15 = BYTE8(v42);
  v16 = v8;
  v17 = v9;
  outlined init with copy of JindoTripleVStack.StackHeader(v41, &v29);
  v33[0] = v17;
  v33[1] = v16;
  v34 = v14;
  v35 = v15;
  v36 = v13;
  v37 = v12;
  if ((*(&v17 + 1) & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v17 + 16) >= *(&v17 + 1))
  {

    outlined destroy of JindoTripleVStack.StackHeader(v33);
    v18 = swift_allocObject();
    memcpy((v18 + 16), __dst, 0x178uLL);
    v19 = swift_allocObject();
    memcpy((v19 + 16), __dst, 0x178uLL);
    *(v19 + 392) = a4;
    *(v19 + 400) = a2;
    *(v19 + 408) = a3 & 1;
    if (*(&v17 + 1))
    {
      v39 = *(v4 + 96);
      v40 = *(v4 + 112);
      v31 = *(v4 + 96);
      v32 = *(v4 + 112);
      outlined init with copy of JindoTripleVStack.Implementation(__dst, &v29);
      outlined init with copy of JindoTripleVStack.Implementation(__dst, &v29);
      outlined init with copy of JindoTripleVStack.Implementation(__dst, &v29);

      outlined init with copy of JindoTripleVStack.Implementation(__dst, &v29);

      LayoutSubviews.subscript.getter();
      type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<VerticalPlacementKey>, &unk_1EFFFBDE8, &protocol witness table for VerticalPlacementKey);
      lazy protocol witness table accessor for type _LayoutTrait<VerticalPlacementKey> and conformance _LayoutTrait<A>();
      LayoutProxy.subscript.getter();
      if (v28 != 1)
      {
        v29 = v39;
        v30 = v40;
        LayoutSubviews.subscript.getter();
        LayoutSubview.sizeThatFits(_:)();
        v21 = v20;
        if (*(&v17 + 1) != 1)
        {
          v22 = v17 + 40;
          v23 = 1;
          while (1)
          {
            v24 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            v22 += 8;
            v29 = v39;
            v30 = v40;
            LayoutSubviews.subscript.getter();
            LayoutProxy.subscript.getter();
            v29 = v39;
            v30 = v40;
            LayoutSubviews.subscript.getter();
            LayoutSubview.sizeThatFits(_:)();
            if (v21 < v25)
            {
              v21 = v25;
            }

            ++v23;
            if (v24 == *(&v17 + 1))
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          goto LABEL_20;
        }
      }
    }

    else
    {
      outlined init with copy of JindoTripleVStack.Implementation(__dst, &v29);
      outlined init with copy of JindoTripleVStack.Implementation(__dst, &v29);
      outlined init with copy of JindoTripleVStack.Implementation(__dst, &v29);

      outlined init with copy of JindoTripleVStack.Implementation(__dst, &v29);
    }

LABEL_18:

    swift_unknownObjectRelease();

    outlined destroy of JindoTripleVStack.Implementation(__dst);

    outlined destroy of JindoTripleVStack.Implementation(__dst);
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t JindoTripleVStack.Implementation.prioritizeAndSizeChildren(in:resetCache:)(uint64_t a1, char a2, uint64_t a3, double a4)
{
  JindoTripleVStack.Implementation.prioritize(resetCache:)(a3);
  v8 = *(v4 + 176);
  v9 = *(v4 + 184);
  v10 = *(*(v4 + 160) + 16);
  type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>, &type metadata for JindoTripleVStack.MajorAxisGroup.Group, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v12 = inited;
  *(inited + 16) = xmmword_18CD63400;
  v13 = *&a1 - v8 - v9;
  if (a2)
  {
    v13 = *&a1;
  }

  *(inited + 32) = v10;
  *(inited + 40) = v13;
  *(inited + 48) = a2 & 1;
  v14 = *(v4 + 240);
  v15 = *(v4 + 248);
  v16 = *(*(v4 + 224) + 16);
  v17 = swift_initStackObject();
  v18 = v17;
  v19 = a2 & 1;
  *(v17 + 16) = xmmword_18CD63400;
  v20 = *&a1 - v14 - v15;
  if (v19)
  {
    v20 = *&a1;
  }

  *(v17 + 32) = v16;
  *(v17 + 40) = v20;
  *(v17 + 48) = v19;
  v21 = *(v4 + 304);
  v22 = *(v4 + 312);
  v23 = *(*(v4 + 288) + 16);
  if (v19)
  {
    v24 = *&a1;
  }

  else
  {
    v24 = *&a1 - v21 - v22;
  }

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_18CD63400;
  *(v25 + 32) = v23;
  *(v25 + 40) = v24;
  *(v25 + 48) = v19;
  *&v27 = v10;
  *(&v27 + 1) = v8;
  v28 = v9;
  v29 = v12;
  v30 = v16;
  v31 = v14;
  v32 = v15;
  v33 = v18;
  v34 = v23;
  v35 = v21;
  v36 = v22;
  v37 = v25;
  JindoTripleVStack.Implementation.resize(in:groups:)(a4, a1, v19, &v27);
  return outlined destroy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>(&v27, &lazy cache variable for type metadata for JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>, &type metadata for JindoTripleVStack.MajorAxisGroup);
}

uint64_t JindoTripleVStack.Implementation.equalizeHeightOfLeadingAndTrailing(in:)(uint64_t a1, char a2, double a3)
{
  v7 = *(v3 + 176);
  v8 = *(v3 + 184);
  v9 = *(*(v3 + 160) + 16);
  type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>, &type metadata for JindoTripleVStack.MajorAxisGroup.Group, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v11 = inited;
  *(inited + 16) = xmmword_18CD63400;
  v12 = *&a1 - v7 - v8;
  v13 = a2 & 1;
  if (v13)
  {
    v12 = *&a1;
  }

  *(inited + 32) = v9;
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  v14 = *(v3 + 304);
  v15 = *(v3 + 312);
  v16 = *(*(v3 + 288) + 16);
  if (v13)
  {
    v17 = *&a1;
  }

  else
  {
    v17 = *&a1 - v14 - v15;
  }

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_18CD63400;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  *(v18 + 48) = v13;
  JindoTripleVStack.Implementation.equalizeHeightOfLeadingAndTrailing(in:leading:trailing:)(a1, v13, v9, v11, v16, v18, a3, v7, v8, v14, v15);
  swift_setDeallocating();
  return swift_setDeallocating();
}

uint64_t JindoTripleVStack.Implementation.pushBelowNotchIfNeeded(in:metrics:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v2;
  memcpy(__dst, v1, sizeof(__dst));
  v11 = __dst[29];
  memcpy(__src, v1, 0x178uLL);
  outlined init with copy of JindoTripleVStack.Implementation(__dst, v73);
  JindoTripleVStack.Implementation.bottomOf(previousChild:in:includeSpacing:)(v11, 1, 0);
  v13 = v12;
  memcpy(v70, __src, sizeof(v70));
  outlined destroy of JindoTripleVStack.Implementation(v70);
  memcpy(v71, v1, sizeof(v71));
  memcpy(__src, v1, 0x178uLL);
  v14 = *(v5 + 32);
  outlined init with copy of JindoTripleVStack.Implementation(v71, v73);
  v15 = JindoTripleVStack.Implementation.indexToPushBelowNotch(_:availableWidth:centerHeight:)(0, v14, 0, v13);
  v17 = v16;
  memcpy(v72, __src, sizeof(v72));
  outlined destroy of JindoTripleVStack.Implementation(v72);
  memcpy(v73, v1, sizeof(v73));
  memcpy(v68, v1, sizeof(v68));
  v18 = *(v5 + 40);
  outlined init with copy of JindoTripleVStack.Implementation(v73, __src);
  v19 = JindoTripleVStack.Implementation.indexToPushBelowNotch(_:availableWidth:centerHeight:)(2, v18, 0, v13);
  v21 = v20;
  memcpy(__src, v68, 0x178uLL);
  result = outlined destroy of JindoTripleVStack.Implementation(__src);
  if (v17 & 1) != 0 && (v21)
  {
    return result;
  }

  v23 = *&v73[176];
  v24 = *&v73[184];
  v25 = *(*&v73[160] + 16);
  type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>, &type metadata for JindoTripleVStack.MajorAxisGroup.Group, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18CD63400;
  v27 = *&v9 - v23 - v24;
  v54 = v7;
  v29 = v7 & 1;
  v28 = (v7 & 1) == 0;
  v30 = *&v73[288];
  if (v7)
  {
    v27 = *&v9;
  }

  v31 = *&v73[304];
  v32 = *&v73[312];
  *(v26 + 32) = v25;
  *(v26 + 40) = v27;
  *(v26 + 48) = v29;
  v64 = v25;
  v65 = v23;
  v66 = v24;
  v67 = v26;
  v33 = *(v30 + 16);
  if (v28)
  {
    v34 = *&v9 - v31 - v32;
  }

  else
  {
    v34 = *&v9;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_18CD63400;
  *(v35 + 32) = v33;
  *(v35 + 40) = v34;
  *(v35 + 48) = v29;
  v60 = v33;
  v61 = v31;
  v62 = v32;
  v63 = v35;
  if (v17)
  {
    v36 = *&v73[224];
    v55 = *&v73[240];
    if (v21)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  memcpy(v57, v3, sizeof(v57));
  memcpy(v68, v3, sizeof(v68));
  outlined init with copy of JindoTripleVStack.Implementation(v57, v59);
  JindoTripleVStack.Implementation.distanceToCenterBottom(from:stack:)(v15, 0);
  v38 = v37;
  memcpy(v58, v68, sizeof(v58));
  outlined destroy of JindoTripleVStack.Implementation(v58);
  v39 = v13 + v38;
  memcpy(v59, v3, sizeof(v59));
  v36 = *&v59[224];
  v55 = *&v59[240];
  memcpy(v56, v3, sizeof(v56));
  outlined init with copy of JindoTripleVStack.Implementation(v59, v68);
  JindoTripleVStack.Implementation.distanceToPrevious(_:stack:)(v15, 0);
  v41 = v40;
  memcpy(v68, v56, sizeof(v68));
  outlined destroy of JindoTripleVStack.Implementation(v68);
  JindoTripleVStack.MajorAxisGroup.updateWithSplit(at:before:)(v15, v39 - v41);
  if ((v21 & 1) == 0)
  {
LABEL_12:
    memcpy(v57, v3, sizeof(v57));
    memcpy(v68, v3, sizeof(v68));
    outlined init with copy of JindoTripleVStack.Implementation(v57, v59);
    JindoTripleVStack.Implementation.distanceToCenterBottom(from:stack:)(v19, 2);
    v43 = v42;
    memcpy(v58, v68, sizeof(v58));
    outlined destroy of JindoTripleVStack.Implementation(v58);
    v44 = v13 + v43;
    memcpy(v59, v3, sizeof(v59));
    v36 = *&v59[224];
    v55 = *&v59[240];
    memcpy(v56, v3, sizeof(v56));
    outlined init with copy of JindoTripleVStack.Implementation(v59, v68);
    JindoTripleVStack.Implementation.distanceToPrevious(_:stack:)(v19, 2);
    v46 = v45;
    memcpy(v68, v56, sizeof(v68));
    outlined destroy of JindoTripleVStack.Implementation(v68);
    JindoTripleVStack.MajorAxisGroup.updateWithSplit(at:before:)(v19, v44 - v46);
    v33 = v60;
    v31 = v61;
    v32 = v62;
    v35 = v63;
  }

LABEL_13:
  v47 = v64;
  v48 = v65;
  v49 = v66;
  v50 = v67;
  v51 = *(v36 + 16);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_18CD63400;
  v53 = *&v9 - *&v55 - *(&v55 + 1);
  if (v54)
  {
    v53 = *&v9;
  }

  *(v52 + 32) = v51;
  *(v52 + 40) = v53;
  *(v52 + 48) = v54 & 1;
  *v68 = v47;
  *&v68[8] = v48;
  *&v68[16] = v49;
  *&v68[24] = v50;
  *&v68[32] = v51;
  *&v68[40] = v55;
  *&v68[56] = v52;
  *&v68[64] = v33;
  *&v68[72] = v31;
  *&v68[80] = v32;
  *&v68[88] = v35;

  JindoTripleVStack.Implementation.resize(in:groups:)(v10, v9, v54 & 1, v68);
  outlined destroy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>(v68, &lazy cache variable for type metadata for JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>, &type metadata for JindoTripleVStack.MajorAxisGroup);
  JindoTripleVStack.Implementation.equalizeHeightOfLeadingAndTrailing(in:leading:trailing:)(v9, v54 & 1, v47, v50, v33, v35, v10, v48, v49, v31, v32);
}

void JindoTripleVStack.Implementation.equalizeHeightOfLeadingAndTrailing(in:leading:trailing:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11)
{
  v23 = v11[21];
  v24 = v11[37];
  memcpy(__dst, v11, sizeof(__dst));
  memcpy(__src, v11, 0x178uLL);
  outlined init with copy of JindoTripleVStack.Implementation(__dst, v58);
  JindoTripleVStack.Implementation.bottomOf(previousChild:in:includeSpacing:)(v23, 0, 1);
  v26 = v25;
  memcpy(v57, __src, sizeof(v57));
  outlined destroy of JindoTripleVStack.Implementation(v57);
  memcpy(v58, v11, sizeof(v58));
  memcpy(v55, v11, sizeof(v55));
  outlined init with copy of JindoTripleVStack.Implementation(v58, __src);
  JindoTripleVStack.Implementation.bottomOf(previousChild:in:includeSpacing:)(v24, 2, 1);
  v28 = v27;
  memcpy(__src, v55, 0x178uLL);
  outlined destroy of JindoTripleVStack.Implementation(__src);
  if (v26 != v28)
  {
    if (v26 > v28)
    {
      v29 = v26;
    }

    else
    {
      v29 = v28;
    }

    memcpy(v52, v11, sizeof(v52));
    memcpy(v55, v11, sizeof(v55));
    outlined init with copy of JindoTripleVStack.Implementation(v52, v54);
    JindoTripleVStack.Implementation.distanceToPrevious(_:stack:)(v23, 0);
    v31 = v30;
    memcpy(v53, v55, sizeof(v53));
    outlined destroy of JindoTripleVStack.Implementation(v53);
    memcpy(v54, v11, sizeof(v54));
    v48 = a5;
    v32 = v54[28];
    v49 = a11;
    v50 = a7;
    v33 = *&v54[30];
    v34 = *&v54[31];
    memcpy(v51, v11, sizeof(v51));
    outlined init with copy of JindoTripleVStack.Implementation(v54, v55);
    JindoTripleVStack.Implementation.distanceToPrevious(_:stack:)(v24, 2);
    v36 = v35;
    memcpy(v55, v51, sizeof(v55));
    outlined destroy of JindoTripleVStack.Implementation(v55);
    *v51 = a3;
    *&v51[8] = a8;
    *&v51[16] = a9;
    *&v51[24] = a4;

    JindoTripleVStack.MajorAxisGroup.updateWithSplit(at:before:)(v23, v29 - v31);
    v37 = *v51;
    v38 = *&v51[8];
    v39 = *&v51[24];
    v40 = *(v32 + 16);
    type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>, &type metadata for JindoTripleVStack.MajorAxisGroup.Group, MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    v42 = v41;
    *(v41 + 16) = xmmword_18CD63400;
    v43 = *&a1 - v33 - v34;
    v44 = a2 & 1;
    if (v44)
    {
      v43 = *&a1;
    }

    *(v41 + 32) = v40;
    *(v41 + 40) = v43;
    *(v41 + 48) = v44;
    *v51 = v48;
    *&v51[8] = a10;
    *&v51[16] = v49;
    *&v51[24] = a6;

    JindoTripleVStack.MajorAxisGroup.updateWithSplit(at:before:)(v24, v29 - v36);
    v45 = *v51;
    v46 = *&v51[24];
    v47 = *&v51[8];
    *v51 = v37;
    *&v51[8] = v38;
    *&v51[24] = v39;
    *&v51[32] = v40;
    *&v51[40] = v33;
    *&v51[48] = v34;
    *&v51[56] = v42;
    *&v51[64] = v45;
    *&v51[72] = v47;
    *&v51[88] = v46;
    JindoTripleVStack.Implementation.resize(in:groups:)(v50, a1, v44, v51);
    outlined destroy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>(v51, &lazy cache variable for type metadata for JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>, &type metadata for JindoTripleVStack.MajorAxisGroup);
  }
}

void JindoTripleVStack.Implementation.bottomOf(previousChild:in:includeSpacing:)(int64_t a1, char a2, char a3)
{
  v7 = *(v3 + 176);
  v91 = *(v3 + 160);
  v92 = v7;
  v8 = *(v3 + 208);
  v93 = *(v3 + 192);
  v94 = v8;
  v9 = *(v3 + 240);
  v95 = *(v3 + 224);
  v96 = v9;
  v10 = *(v3 + 272);
  v97 = *(v3 + 256);
  v98 = v10;
  v11 = *(v3 + 288);
  v12 = *(v3 + 304);
  v13 = *(v3 + 336);
  v101 = *(v3 + 320);
  v102 = v13;
  v99 = v11;
  v100 = v12;
  v14 = *(v3 + 360);
  if (a2)
  {
    if (a2 == 1)
    {
      v15 = *(&v98 + 1);
      v16 = v98;
      v17 = v97;
      v18 = BYTE8(v97);
      v20 = *(&v96 + 1);
      v19 = v96;
      v22 = *(&v95 + 1);
      v21 = v95;
      v23 = &v95;
    }

    else
    {
      v15 = *(&v102 + 1);
      v16 = v102;
      v17 = v101;
      v18 = BYTE8(v101);
      v20 = *(&v100 + 1);
      v19 = v100;
      v22 = *(&v99 + 1);
      v21 = v99;
      v23 = &v99;
    }
  }

  else
  {
    v15 = *(&v94 + 1);
    v16 = v94;
    v17 = v93;
    v18 = BYTE8(v93);
    v20 = *(&v92 + 1);
    v19 = v92;
    v22 = *(&v91 + 1);
    v21 = v91;
    v23 = &v91;
  }

  outlined init with copy of JindoTripleVStack.StackHeader(v23, v87);
  v87[0] = v21;
  v87[1] = v22;
  v87[2] = v19;
  v87[3] = v20;
  v87[4] = v17;
  v88 = v18;
  v89 = v16;
  v90 = v15;
  v24 = *(v21 + 16);
  outlined destroy of JindoTripleVStack.StackHeader(v87);
  if (!v24 || !a1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v34 = *(&v98 + 1);
        v35 = v98;
        v36 = v97;
        v37 = BYTE8(v97);
        v39 = *(&v96 + 1);
        v38 = v96;
        v40 = *(&v95 + 1);
        v41 = v95;
        v42 = &v95;
      }

      else
      {
        v34 = *(&v102 + 1);
        v35 = v102;
        v36 = v101;
        v37 = BYTE8(v101);
        v39 = *(&v100 + 1);
        v38 = v100;
        v40 = *(&v99 + 1);
        v41 = v99;
        v42 = &v99;
      }
    }

    else
    {
      v34 = *(&v94 + 1);
      v35 = v94;
      v36 = v93;
      v37 = BYTE8(v93);
      v39 = *(&v92 + 1);
      v38 = v92;
      v40 = *(&v91 + 1);
      v41 = v91;
      v42 = &v91;
    }

    outlined init with copy of JindoTripleVStack.StackHeader(v42, &v79);
    v79 = v41;
    v80 = v40;
    v81 = v38;
    v82 = v39;
    v83 = v36;
    v84 = v37;
    v85 = v35;
    v86 = v34;
    outlined destroy of JindoTripleVStack.StackHeader(&v79);
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v25 = *(&v98 + 1);
      v26 = v98;
      v27 = v97;
      v28 = BYTE8(v97);
      v30 = *(&v96 + 1);
      v29 = v96;
      v32 = *(&v95 + 1);
      v31 = v95;
      v33 = &v95;
    }

    else
    {
      v25 = *(&v102 + 1);
      v26 = v102;
      v27 = v101;
      v28 = BYTE8(v101);
      v30 = *(&v100 + 1);
      v29 = v100;
      v32 = *(&v99 + 1);
      v31 = v99;
      v33 = &v99;
    }
  }

  else
  {
    v25 = *(&v94 + 1);
    v26 = v94;
    v27 = v93;
    v28 = BYTE8(v93);
    v30 = *(&v92 + 1);
    v29 = v92;
    v32 = *(&v91 + 1);
    v31 = v91;
    v33 = &v91;
  }

  outlined init with copy of JindoTripleVStack.StackHeader(v33, &v79);
  v79 = v31;
  v80 = v32;
  v81 = v29;
  v82 = v30;
  v83 = v27;
  v84 = v28;
  v85 = v26;
  v86 = v25;
  v43 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_48;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v43 >= *(v31 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v44 = *(v31 + 8 * v43 + 32);
  outlined destroy of JindoTripleVStack.StackHeader(&v79);
  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v44 >= *(v14 + 16))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v45 = v14 + 32 + (v44 << 8);
  v75 = *(v45 + 136);
  v76 = *(v45 + 152);
  v77 = *(v45 + 168);
  v78 = *(v45 + 184);
  ViewGeometry.origin.getter();
  v46 = *(v45 + 160);
  v69 = *(v45 + 152);
  v70 = v46;
  v71 = *(v45 + 168);
  v72 = *(v45 + 184);
  ViewDimensions.height.getter();
  if (a3)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v47 = *(&v98 + 1);
        v48 = v98;
        v49 = v97;
        v50 = BYTE8(v97);
        v52 = *(&v96 + 1);
        v51 = v96;
        v54 = *(&v95 + 1);
        v53 = v95;
        v55 = &v95;
      }

      else
      {
        v47 = *(&v102 + 1);
        v48 = v102;
        v49 = v101;
        v50 = BYTE8(v101);
        v52 = *(&v100 + 1);
        v51 = v100;
        v54 = *(&v99 + 1);
        v53 = v99;
        v55 = &v99;
      }
    }

    else
    {
      v47 = *(&v94 + 1);
      v48 = v94;
      v49 = v93;
      v50 = BYTE8(v93);
      v52 = *(&v92 + 1);
      v51 = v92;
      v54 = *(&v91 + 1);
      v53 = v91;
      v55 = &v91;
    }

    outlined init with copy of JindoTripleVStack.StackHeader(v55, &v75);
    *&v75 = v53;
    *(&v75 + 1) = v54;
    *&v76 = v51;
    *(&v76 + 1) = v52;
    *&v77 = v49;
    BYTE8(v77) = v50;
    *&v78 = v48;
    *(&v78 + 1) = v47;
    v56 = *(v53 + 16);
    outlined destroy of JindoTripleVStack.StackHeader(&v75);
    if (v56 > a1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v57 = *(&v98 + 1);
          v58 = v98;
          v59 = v97;
          v60 = BYTE8(v97);
          v62 = *(&v96 + 1);
          v61 = v96;
          v64 = *(&v95 + 1);
          v63 = v95;
          v65 = &v95;
        }

        else
        {
          v57 = *(&v102 + 1);
          v58 = v102;
          v59 = v101;
          v60 = BYTE8(v101);
          v62 = *(&v100 + 1);
          v61 = v100;
          v64 = *(&v99 + 1);
          v63 = v99;
          v65 = &v99;
        }
      }

      else
      {
        v57 = *(&v94 + 1);
        v58 = v94;
        v59 = v93;
        v60 = BYTE8(v93);
        v62 = *(&v92 + 1);
        v61 = v92;
        v64 = *(&v91 + 1);
        v63 = v91;
        v65 = &v91;
      }

      outlined init with copy of JindoTripleVStack.StackHeader(v65, &v69);
      v69 = v63;
      v70 = v64;
      *&v71 = v61;
      *(&v71 + 1) = v62;
      *&v72 = v59;
      BYTE8(v72) = v60;
      v73 = v58;
      v74 = v57;
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*(v63 + 16) > a1)
        {
          v66 = *(v63 + 8 * a1 + 32);
          outlined destroy of JindoTripleVStack.StackHeader(&v69);
          if ((v66 & 0x8000000000000000) == 0)
          {
            if (v66 < *(v14 + 16))
            {
              v67 = v14 + 32 + (v66 << 8);
              if (a2)
              {
                if (a2 == 1)
                {
                  v68 = (v67 + 64);
                }

                else
                {
                  v68 = (v67 + 80);
                }
              }

              else
              {
                v68 = (v67 + 48);
              }

              if ((*v68 & 1) == 0)
              {
                return;
              }

LABEL_56:
              __break(1u);
              return;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }
  }
}

uint64_t JindoTripleVStack.Implementation.distanceToPrevious(_:stack:)(int64_t a1, char a2)
{
  v5 = *(v2 + 176);
  v44 = *(v2 + 160);
  v45 = v5;
  v6 = *(v2 + 208);
  v46 = *(v2 + 192);
  v47 = v6;
  v7 = *(v2 + 240);
  v48 = *(v2 + 224);
  v49 = v7;
  v8 = *(v2 + 272);
  v50 = *(v2 + 256);
  v51 = v8;
  v9 = *(v2 + 288);
  v10 = *(v2 + 304);
  v11 = *(v2 + 336);
  v54 = *(v2 + 320);
  v55 = v11;
  v52 = v9;
  v53 = v10;
  v12 = *(v2 + 360);
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = *(&v51 + 1);
      v14 = v51;
      v15 = v50;
      v16 = BYTE8(v50);
      v18 = *(&v49 + 1);
      v17 = v49;
      v20 = *(&v48 + 1);
      v19 = v48;
      v21 = &v48;
    }

    else
    {
      v13 = *(&v55 + 1);
      v14 = v55;
      v15 = v54;
      v16 = BYTE8(v54);
      v18 = *(&v53 + 1);
      v17 = v53;
      v20 = *(&v52 + 1);
      v19 = v52;
      v21 = &v52;
    }
  }

  else
  {
    v13 = *(&v47 + 1);
    v14 = v47;
    v15 = v46;
    v16 = BYTE8(v46);
    v18 = *(&v45 + 1);
    v17 = v45;
    v20 = *(&v44 + 1);
    v19 = v44;
    v21 = &v44;
  }

  outlined init with copy of JindoTripleVStack.StackHeader(v21, v40);
  v40[0] = v19;
  v40[1] = v20;
  v40[2] = v17;
  v40[3] = v18;
  v40[4] = v15;
  v41 = v16;
  v42 = v14;
  v43 = v13;
  v22 = *(v19 + 16);
  result = outlined destroy of JindoTripleVStack.StackHeader(v40);
  if (v22 <= a1)
  {
    return result;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v24 = *(&v51 + 1);
      v25 = v51;
      v26 = v50;
      v27 = BYTE8(v50);
      v29 = *(&v49 + 1);
      v28 = v49;
      v31 = *(&v48 + 1);
      v30 = v48;
      v32 = &v48;
    }

    else
    {
      v24 = *(&v55 + 1);
      v25 = v55;
      v26 = v54;
      v27 = BYTE8(v54);
      v29 = *(&v53 + 1);
      v28 = v53;
      v31 = *(&v52 + 1);
      v30 = v52;
      v32 = &v52;
    }
  }

  else
  {
    v24 = *(&v47 + 1);
    v25 = v47;
    v26 = v46;
    v27 = BYTE8(v46);
    v29 = *(&v45 + 1);
    v28 = v45;
    v31 = *(&v44 + 1);
    v30 = v44;
    v32 = &v44;
  }

  result = outlined init with copy of JindoTripleVStack.StackHeader(v32, v36);
  v36[0] = v30;
  v36[1] = v31;
  v36[2] = v28;
  v36[3] = v29;
  v36[4] = v26;
  v37 = v27;
  v38 = v25;
  v39 = v24;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (*(v30 + 16) <= a1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = *(v30 + 8 * a1 + 32);
  result = outlined destroy of JindoTripleVStack.StackHeader(v36);
  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v33 >= *(v12 + 16))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v34 = (v12 + (v33 << 8));
  if (a2)
  {
    if (a2 == 1)
    {
      v35 = v34 + 96;
    }

    else
    {
      v35 = v34 + 112;
    }
  }

  else
  {
    v35 = v34 + 80;
  }

  if (*v35)
  {
    goto LABEL_27;
  }

  return result;
}

void JindoTripleVStack.Implementation.resize(in:groups:)(double a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v320[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v7 = a4[3];
  __dst[2] = a4[2];
  __dst[3] = v7;
  v8 = a4[5];
  __dst[4] = a4[4];
  __dst[5] = v8;
  v9 = a4[1];
  __dst[0] = *a4;
  __dst[1] = v9;
  closure #1 in JindoTripleVStack.Implementation.prepareChildren(with:)(0, __dst, v4, v320);
  closure #1 in JindoTripleVStack.Implementation.prepareChildren(with:)(1, &__dst[2], v4, v320);
  closure #1 in JindoTripleVStack.Implementation.prepareChildren(with:)(2, &__dst[4], v4, v320);
  v10 = *&v320[0];
  v322 = *&v320[0];
  __src = v4;
  v11 = *(v4 + 368);
  v12 = *(v11 + 16);
  v269 = v11;
  if (!v12)
  {

    v129 = *(v10 + 2);
    if (!v129)
    {
      goto LABEL_233;
    }

LABEL_194:
    v276 = a1;
    v130 = *(__src + 11);
    v307 = *(__src + 10);
    v308 = v130;
    v131 = *(__src + 13);
    v309 = *(__src + 12);
    v310 = v131;
    v132 = *(__src + 15);
    v311 = *(__src + 14);
    v312 = v132;
    v133 = *(__src + 17);
    v313 = *(__src + 16);
    v314 = v133;
    v134 = *(__src + 18);
    v135 = *(__src + 19);
    v136 = *(__src + 21);
    v317 = *(__src + 20);
    v318 = v136;
    v315 = v134;
    v316 = v135;
    memcpy(__dst, __src, 0x178uLL);
    if (*(v10 + 2))
    {
      v137 = 0;
      v138 = 0;
      v279 = v129 - 1;
      v139 = 0.0;
      v140 = 0.0;
      v141 = 0.0;
      v142 = 0.0;
      while (1)
      {
        v143 = v10[v137 + 32];
        v144 = v139;
        if (v10[v137 + 32])
        {
          v144 = v140;
          if (v143 != 1)
          {
            v144 = v141;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v138 >= *(v10 + 2))
        {
          break;
        }

        *&v10[v137 + 104] = v144;
        v145 = *&v10[v137 + 40];
        if (v143)
        {
          if (v143 == 1)
          {
            v146 = *(&v314 + 1);
            v147 = v314;
            v148 = v313;
            v149 = BYTE8(v313);
            v151 = *(&v312 + 1);
            v150 = v312;
            v152 = *(&v311 + 1);
            v153 = v311;
            v154 = &v311;
          }

          else
          {
            v146 = *(&v318 + 1);
            v147 = v318;
            v148 = v317;
            v149 = BYTE8(v317);
            v151 = *(&v316 + 1);
            v150 = v316;
            v152 = *(&v315 + 1);
            v153 = v315;
            v154 = &v315;
          }
        }

        else
        {
          v146 = *(&v310 + 1);
          v147 = v310;
          v148 = v309;
          v149 = BYTE8(v309);
          v151 = *(&v308 + 1);
          v150 = v308;
          v152 = *(&v307 + 1);
          v153 = v307;
          v154 = &v307;
        }

        outlined init with copy of JindoTripleVStack.StackHeader(v154, v320);
        *&v303 = v153;
        *(&v303 + 1) = v152;
        *&v304 = v150;
        *(&v304 + 1) = v151;
        *&v305 = v148;
        BYTE8(v305) = v149;
        *&v306 = v147;
        *(&v306 + 1) = v146;
        outlined destroy of JindoTripleVStack.StackHeader(&v303);
        if (v145 == v152)
        {
          memcpy(v320, __src, 0x178uLL);
          memcpy(v319, __src, sizeof(v319));
          v155 = *(__src + 11);
          v290 = *(__src + 10);
          v291 = v155;
          v156 = *(__src + 13);
          v292 = *(__src + 12);
          v293 = v156;
          v157 = *(__src + 15);
          v294 = *(__src + 14);
          v295 = v157;
          v158 = *(__src + 17);
          v296 = *(__src + 16);
          v297 = v158;
          v159 = *(__src + 18);
          v160 = *(__src + 19);
          v161 = *(__src + 21);
          v300 = *(__src + 20);
          v301 = v161;
          v298 = v159;
          v299 = v160;
          if (v143)
          {
            if (v143 == 1)
            {
              v162 = *(&v297 + 1);
              v163 = v297;
              v164 = v296;
              v165 = BYTE8(v296);
              v167 = *(&v295 + 1);
              v166 = v295;
              v168 = *(&v294 + 1);
              v169 = v294;
              outlined init with copy of JindoTripleVStack.StackHeader(&v294, v302);
              v170 = v140;
            }

            else
            {
              v162 = *(&v301 + 1);
              v163 = v301;
              v164 = v300;
              v165 = BYTE8(v300);
              v167 = *(&v299 + 1);
              v166 = v299;
              v168 = *(&v298 + 1);
              v169 = v298;
              outlined init with copy of JindoTripleVStack.StackHeader(&v298, v302);
              v170 = v141;
            }
          }

          else
          {
            v162 = *(&v293 + 1);
            v163 = v293;
            v164 = v292;
            v165 = BYTE8(v292);
            v167 = *(&v291 + 1);
            v166 = v291;
            v168 = *(&v290 + 1);
            v169 = v290;
            outlined init with copy of JindoTripleVStack.StackHeader(&v290, v302);
            v170 = v139;
          }

          v286[0] = v169;
          v286[1] = v168;
          v286[2] = v166;
          v286[3] = v167;
          v286[4] = v164;
          v287 = v165;
          v288 = v163;
          v289 = v162;
          outlined init with copy of JindoTripleVStack.Implementation(v320, v302);
          outlined destroy of JindoTripleVStack.StackHeader(v286);
          JindoTripleVStack.Implementation.distanceToPrevious(_:stack:)(v168, v143);
          v172 = v171;
          memcpy(v302, v319, 0x178uLL);
          outlined destroy of JindoTripleVStack.Implementation(v302);
          if (v142 <= v170 + v172)
          {
            v142 = v170 + v172;
          }
        }

        memcpy(v319, __dst, sizeof(v319));
        if (v138 >= *(v10 + 2))
        {
          goto LABEL_367;
        }

        v173 = *&v10[v137 + 40];
        v174 = &v10[v137];
        v175 = *&v10[v137 + 48];
        outlined init with copy of JindoTripleVStack.Implementation(__dst, v302);
        JindoTripleVStack.Implementation.height(of:stack:)(v173, v175, v143);
        v177 = v176;
        memcpy(v320, v319, 0x178uLL);
        outlined destroy of JindoTripleVStack.Implementation(v320);
        if (v138 >= *(v10 + 2))
        {
          goto LABEL_368;
        }

        *(v174 + 12) = v177;
        if (v174[88] == 1)
        {
          v178 = 0.0;
          if (v177 >= 0.0)
          {
            v178 = v177;
          }
        }

        else
        {
          v178 = *&v10[v137 + 80];
          if (v178 <= v177)
          {
            v178 = v177;
          }
        }

        v179 = v139 + v178;
        v180 = v140 + v178;
        v181 = v141 + v178;
        if (v143 == 1)
        {
          v181 = v141;
        }

        else
        {
          v180 = v140;
        }

        if (v143)
        {
          v141 = v181;
          v140 = v180;
        }

        else
        {
          v139 = v179;
        }

        if (v279 == v138)
        {
          v322 = v10;
          v183 = *(v10 + 2);
          if (v183)
          {
            v184 = *(__src + 11);
            v311 = *(__src + 10);
            v312 = v184;
            v185 = *(__src + 13);
            v313 = *(__src + 12);
            v314 = v185;
            v186 = *(__src + 15);
            v315 = *(__src + 14);
            v316 = v186;
            v187 = *(__src + 17);
            v317 = *(__src + 16);
            v318 = v187;
            v188 = *(__src + 18);
            v189 = *(__src + 19);
            v190 = *(__src + 21);
            v302[2] = *(__src + 20);
            v302[3] = v190;
            v302[0] = v188;
            v302[1] = v189;
            if (!*(v10 + 2))
            {
              goto LABEL_369;
            }

            v191 = 0;
            v192 = 0;
            v283 = v183 - 1;
            v193 = 0.0;
            v194 = 0.0;
            v195 = 0.0;
            while (1)
            {
              v196 = v10[v191 + 32];
              v197 = *&v10[v191 + 40];
              if (v10[v191 + 32])
              {
                if (v196 == 1)
                {
                  v198 = *(&v318 + 1);
                  v199 = v318;
                  v200 = v317;
                  v201 = BYTE8(v317);
                  v203 = *(&v316 + 1);
                  v202 = v316;
                  v204 = *(&v315 + 1);
                  v205 = v315;
                  v206 = &v315;
                }

                else
                {
                  v198 = *(&v302[3] + 1);
                  v199 = *&v302[3];
                  v200 = *&v302[2];
                  v201 = BYTE8(v302[2]);
                  v203 = *(&v302[1] + 1);
                  v202 = *&v302[1];
                  v204 = *(&v302[0] + 1);
                  v205 = *&v302[0];
                  v206 = v302;
                }
              }

              else
              {
                v198 = *(&v314 + 1);
                v199 = v314;
                v200 = v313;
                v201 = BYTE8(v313);
                v203 = *(&v312 + 1);
                v202 = v312;
                v204 = *(&v311 + 1);
                v205 = v311;
                v206 = &v311;
              }

              outlined init with copy of JindoTripleVStack.StackHeader(v206, __dst);
              *&v307 = v205;
              *(&v307 + 1) = v204;
              *&v308 = v202;
              *(&v308 + 1) = v203;
              *&v309 = v200;
              BYTE8(v309) = v201;
              *&v310 = v199;
              *(&v310 + 1) = v198;
              outlined destroy of JindoTripleVStack.StackHeader(&v307);
              if (v197 == v204)
              {
                memcpy(__dst, __src, 0x178uLL);
                memcpy(v320, __src, 0x178uLL);
                v207 = *(__src + 11);
                v294 = *(__src + 10);
                v295 = v207;
                v208 = *(__src + 13);
                v296 = *(__src + 12);
                v297 = v208;
                v209 = *(__src + 15);
                v298 = *(__src + 14);
                v299 = v209;
                v210 = *(__src + 17);
                v300 = *(__src + 16);
                v301 = v210;
                v211 = *(__src + 18);
                v212 = *(__src + 19);
                v213 = *(__src + 21);
                v305 = *(__src + 20);
                v306 = v213;
                v303 = v211;
                v304 = v212;
                if (v196)
                {
                  if (v196 == 1)
                  {
                    v214 = *(&v301 + 1);
                    v215 = v301;
                    v216 = v300;
                    v217 = BYTE8(v300);
                    v219 = *(&v299 + 1);
                    v218 = v299;
                    v220 = *(&v298 + 1);
                    v221 = v298;
                    v222 = &v298;
                  }

                  else
                  {
                    v214 = *(&v306 + 1);
                    v215 = v306;
                    v216 = v305;
                    v217 = BYTE8(v305);
                    v219 = *(&v304 + 1);
                    v218 = v304;
                    v220 = *(&v303 + 1);
                    v221 = v303;
                    v222 = &v303;
                  }
                }

                else
                {
                  v214 = *(&v297 + 1);
                  v215 = v297;
                  v216 = v296;
                  v217 = BYTE8(v296);
                  v219 = *(&v295 + 1);
                  v218 = v295;
                  v220 = *(&v294 + 1);
                  v221 = v294;
                  v222 = &v294;
                }

                outlined init with copy of JindoTripleVStack.StackHeader(v222, v319);
                *&v290 = v221;
                *(&v290 + 1) = v220;
                *&v291 = v218;
                *(&v291 + 1) = v219;
                *&v292 = v216;
                BYTE8(v292) = v217;
                *&v293 = v215;
                *(&v293 + 1) = v214;
                outlined init with copy of JindoTripleVStack.Implementation(__dst, v319);
                outlined destroy of JindoTripleVStack.StackHeader(&v290);
                JindoTripleVStack.Implementation.distanceToPrevious(_:stack:)(v220, v196);
                v226 = v225;
                memcpy(v319, v320, sizeof(v319));
                outlined destroy of JindoTripleVStack.Implementation(v319);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
                }

                if (v192 >= *(v10 + 2))
                {
                  goto LABEL_390;
                }

                *&v10[v191 + 104] = v142 - v226;
                v224 = *(v10 + 2);
              }

              else
              {
                v223 = v193;
                if (v196)
                {
                  v223 = v194;
                  if (v196 != 1)
                  {
                    v223 = v195;
                  }
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
                }

                v224 = *(v10 + 2);
                if (v192 >= v224)
                {
                  goto LABEL_391;
                }

                *&v10[v191 + 104] = v223;
              }

              if (v192 >= v224)
              {
                goto LABEL_379;
              }

              v227 = &v10[v191];
              if (v10[v191 + 88] == 1)
              {
                v228 = *(v227 + 12);
                if (v228 < 0.0)
                {
                  v228 = 0.0;
                }
              }

              else
              {
                v228 = *(v227 + 10);
                if (v228 <= *(v227 + 12))
                {
                  v228 = *(v227 + 12);
                }
              }

              v229 = v193 + v228;
              v230 = v194 + v228;
              v231 = v195 + v228;
              if (v196 == 1)
              {
                v231 = v195;
              }

              else
              {
                v230 = v194;
              }

              if (v196)
              {
                v195 = v231;
                v194 = v230;
              }

              else
              {
                v193 = v229;
              }

              v182 = __src;
              if (v283 == v192)
              {
                break;
              }

              ++v192;
              v191 += 80;
              if (v192 >= *(v10 + 2))
              {
                goto LABEL_369;
              }
            }

            v322 = v10;
          }

          else
          {
            v182 = __src;
          }

          a1 = v276;
          goto LABEL_278;
        }

        ++v138;
        v137 += 80;
        if (v138 >= *(v10 + 2))
        {
          goto LABEL_365;
        }
      }

LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
      goto LABEL_378;
    }

LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  v268 = v11 + 32;
  v266 = (2 * v12) | 1;
  v270 = *(v11 + 16);

  v13 = v270;
  v14 = 0;
  v271 = v269;
  do
  {
    if (v14 >= v13)
    {
      goto LABEL_380;
    }

    v15 = *(v268 + 8 * v14);
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_381;
    }

    v16 = *(__src + 45);
    if (v15 >= *(v16 + 2))
    {
      goto LABEL_382;
    }

    v281 = v16 + 32;
    v267 = v14;
    specialized Collection.prefix(while:)(*&v16[256 * v15 + 32], v269, v268, v14, v266, __src);
    v273 = v18;
    v274 = v17;
    v19 = v17;
    v21 = v20 >> 1;
    v278 = v20 >> 1;
    if (!*(v271 + 16) || v15 != *(v271 + 32))
    {
      if (v17 == v21)
      {
        swift_unknownObjectRetain();
        goto LABEL_50;
      }

      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      do
      {
        if (v19 >= v21)
        {
          goto LABEL_333;
        }

        v44 = *(v273 + 8 * v19);
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_334;
        }

        if (v44 >= *(v16 + 2))
        {
          goto LABEL_335;
        }

        v45 = &v281[256 * v44];
        v46 = *(v45 + 13);
        v47 = v45[112];
        v48 = *(v45 + 15);
        v49 = v45[128];
        if ((v45[96] & 1) == 0)
        {
          if (v45[16])
          {
            goto LABEL_400;
          }

          v50 = *(v45 + 11);
          v51 = *(v45 + 1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v50 & 0x8000000000000000) != 0)
            {
              goto LABEL_354;
            }
          }

          else
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            if ((v50 & 0x8000000000000000) != 0)
            {
              goto LABEL_354;
            }
          }

          if (v50 >= *(v10 + 2))
          {
            goto LABEL_356;
          }

          v52 = &v10[80 * v50];
          v53 = *(v52 + 8);
          if (!v52[72])
          {
            v53 = v51 + *(v52 + 8);
          }

          *(v52 + 8) = v53;
          v322 = v10;
        }

        if ((v47 & 1) == 0)
        {
          if (v44 >= *(v16 + 2))
          {
            goto LABEL_355;
          }

          if (v45[16])
          {
            goto LABEL_401;
          }

          v54 = *(v45 + 1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_357;
            }
          }

          else
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_357;
            }
          }

          if (v46 >= *(v10 + 2))
          {
            goto LABEL_359;
          }

          v55 = &v10[80 * v46];
          v56 = *(v55 + 8);
          if (!v55[72])
          {
            v56 = v54 + *(v55 + 8);
          }

          *(v55 + 8) = v56;
          v322 = v10;
        }

        v21 = v278;
        if ((v49 & 1) == 0)
        {
          if (v44 >= *(v16 + 2))
          {
            goto LABEL_358;
          }

          if (v45[16])
          {
            goto LABEL_402;
          }

          v57 = *(v45 + 1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v48 & 0x8000000000000000) != 0)
            {
              goto LABEL_360;
            }
          }

          else
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            if ((v48 & 0x8000000000000000) != 0)
            {
              goto LABEL_360;
            }
          }

          if (v48 >= *(v10 + 2))
          {
            goto LABEL_361;
          }

          v58 = &v10[80 * v48];
          v59 = *(v58 + 8);
          if (!v58[72])
          {
            v59 = v57 + *(v58 + 8);
          }

          *(v58 + 8) = v59;
          v322 = v10;
        }

        ++v19;
      }

      while (v278 != v19);
LABEL_90:
      swift_unknownObjectRelease();
      v19 = v274;
      v40 = *(v10 + 2);
      if (!v40)
      {
        goto LABEL_51;
      }

LABEL_91:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v40 == 1)
        {
LABEL_93:
          v60 = 0;
          goto LABEL_98;
        }
      }

      else
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        if (v40 == 1)
        {
          goto LABEL_93;
        }
      }

      v60 = v40 & 0x7FFFFFFFFFFFFFFELL;
      v61 = v10 + 136;
      v62 = v40 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        *(v61 - 10) = 0;
        *v61 = 0;
        v61 += 20;
        v62 -= 2;
      }

      while (v62);
      if (v40 == v60)
      {
LABEL_100:
        v322 = v10;
        v41 = __OFSUB__(v21, v19);
        v43 = v21 - v19;
        v42 = (v43 < 0) ^ v41 | (v43 == 0);
        if (!v43)
        {
          goto LABEL_52;
        }

LABEL_101:
        if (v42)
        {
          goto LABEL_397;
        }

        v65 = (v273 + 8 * v274);
        while (1)
        {
          v67 = *v65++;
          v66 = v67;
          if ((v67 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v66 >= *(v16 + 2))
          {
            goto LABEL_325;
          }

          v68 = &v281[256 * v66];
          v69 = *(v68 + 13);
          v70 = v68[112];
          v71 = *(v68 + 15);
          v72 = v68[128];
          if ((v68[96] & 1) == 0)
          {
            v73 = *(v68 + 11);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if ((v73 & 0x8000000000000000) != 0)
              {
                goto LABEL_336;
              }
            }

            else
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
              if ((v73 & 0x8000000000000000) != 0)
              {
                goto LABEL_336;
              }
            }

            if (v73 >= *(v10 + 2))
            {
              goto LABEL_337;
            }

            v74 = &v10[80 * v73];
            v76 = *(v74 + 7);
            v75 = v74 + 56;
            v77 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_339;
            }

            *v75 = v77;
            v322 = v10;
          }

          if ((v70 & 1) == 0)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if ((v69 & 0x8000000000000000) != 0)
              {
                goto LABEL_338;
              }
            }

            else
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
              if ((v69 & 0x8000000000000000) != 0)
              {
                goto LABEL_338;
              }
            }

            if (v69 >= *(v10 + 2))
            {
              goto LABEL_340;
            }

            v78 = &v10[80 * v69];
            v80 = *(v78 + 7);
            v79 = v78 + 56;
            v81 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_342;
            }

            *v79 = v81;
            v322 = v10;
          }

          if ((v72 & 1) == 0)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if ((v71 & 0x8000000000000000) != 0)
              {
                goto LABEL_341;
              }
            }

            else
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
              if ((v71 & 0x8000000000000000) != 0)
              {
                goto LABEL_341;
              }
            }

            if (v71 >= *(v10 + 2))
            {
              goto LABEL_343;
            }

            v82 = &v10[80 * v71];
            v84 = *(v82 + 7);
            v83 = v82 + 56;
            v85 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              goto LABEL_344;
            }

            *v83 = v85;
            v322 = v10;
          }

          if (!--v43)
          {
            swift_unknownObjectRelease();
            v86 = v274;
            if (v274 <= v21)
            {
              v87 = v21;
            }

            else
            {
              v87 = v274;
            }

            v282 = v87;
            while (1)
            {
              if (v86 == v282)
              {
                goto LABEL_326;
              }

              v88 = *(v273 + 8 * v86);
              if (v88 < 0)
              {
                goto LABEL_327;
              }

              if (v88 >= *(v16 + 2))
              {
                goto LABEL_328;
              }

              v275 = v86;
              v89 = v88 << 8;
              v90 = &v16[256 * v88];
              v91 = *(v90 + 120);
              v92 = *(v90 + 136);
              *&v324[9] = *(v90 + 145);
              v323 = v91;
              *v324 = v92;
              v93 = specialized JindoTripleVStack.StackIndexedStorage.compactMap<A>(_:)(&v323, &v322);
              v94 = *(v93 + 2);
              if (v94)
              {
                v95 = *(v93 + 4);
                v96 = v94 - 1;
                if (v94 != 1)
                {
                  v97 = (v93 + 40);
                  do
                  {
                    v98 = *v97++;
                    v99 = v98;
                    if (v98 < v95)
                    {
                      v95 = v99;
                    }

                    --v96;
                  }

                  while (v96);
                }
              }

              if (v88 >= *(v16 + 2))
              {
                goto LABEL_329;
              }

              v100 = ProposedViewSize.init(_:in:by:)();
              v102 = v101;
              v104 = v103;
              v106 = v105;
              memcpy(__dst, __src, 0x162uLL);
              v16 = *(__src + 45);
              v107 = *(__src + 46);
              *(&__dst[22] + 1) = v16;
              v271 = v107;
              *&__dst[23] = v107;
              memcpy(v320, __dst, 0x178uLL);
              v108 = *(__src + 13);
              v109 = *(__src + 112);
              v110 = *(__src + 113);
              LODWORD(v315) = *(__src + 24);
              *(&v315 + 1) = v108;
              LOBYTE(v316) = v109;
              BYTE1(v316) = v110;
              outlined init with copy of JindoTripleVStack.Implementation(__dst, v319);
              LayoutSubviews.subscript.getter();
              v307 = v311;
              LOBYTE(v308) = v312;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
              }

              if (v88 >= *(v16 + 2))
              {
                goto LABEL_330;
              }

              v111 = &v16[v89];
              LOBYTE(v302[0]) = v102 & 1;
              LOBYTE(v303) = v106 & 1;
              JindoTripleVStack.Implementation.resize(_:proposal:proxy:)(&v16[v89 + 32], v100, v102 & 1, v104, v106 & 1, &v307);
              memcpy(v319, v320, sizeof(v319));
              outlined destroy of JindoTripleVStack.Implementation(v319);
              *(__src + 45) = v16;
              if (v88 >= *(v16 + 2))
              {
                goto LABEL_331;
              }

              v302[0] = *(v111 + 200);
              v302[1] = *(v111 + 216);
              ViewSize.subscript.getter();
              if ((*&v112 & 0xFFFFFFFFFFFFFLL) != 0)
              {
                v113 = 0.0;
              }

              else
              {
                v113 = v112;
              }

              if ((~*&v112 & 0x7FF0000000000000) != 0)
              {
                v114 = v112;
              }

              else
              {
                v114 = v113;
              }

              if (v88 >= *(v16 + 2))
              {
                goto LABEL_332;
              }

              v115 = *(v111 + 17);
              v116 = v111[144];
              v117 = *(v111 + 19);
              v118 = v111[160];
              if (v111[128])
              {
                v21 = v278;
                if ((v111[144] & 1) == 0)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                v119 = *(v111 + 15);
                v21 = v278;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if ((v119 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_345;
                  }
                }

                else
                {
                  v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
                  if ((v119 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_345;
                  }
                }

                if (v119 >= *(v10 + 2))
                {
                  goto LABEL_346;
                }

                v120 = &v10[80 * v119];
                v121 = *(v120 + 7);
                if (v120[72])
                {
                  v122 = *(v120 + 8);
                }

                else
                {
                  v122 = *(v120 + 8) - v114;
                }

                *(v120 + 8) = v122;
                if (__OFSUB__(v121, 1))
                {
                  goto LABEL_348;
                }

                *(v120 + 7) = v121 - 1;
                v322 = v10;
                if ((v116 & 1) == 0)
                {
LABEL_168:
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if ((v115 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_347;
                    }
                  }

                  else
                  {
                    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
                    if ((v115 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_347;
                    }
                  }

                  if (v115 >= *(v10 + 2))
                  {
                    goto LABEL_349;
                  }

                  v123 = &v10[80 * v115];
                  v124 = *(v123 + 7);
                  if (v123[72])
                  {
                    v125 = *(v123 + 8);
                  }

                  else
                  {
                    v125 = *(v123 + 8) - v114;
                  }

                  *(v123 + 8) = v125;
                  if (__OFSUB__(v124, 1))
                  {
                    goto LABEL_351;
                  }

                  *(v123 + 7) = v124 - 1;
                  v322 = v10;
                  if (v118)
                  {
                    goto LABEL_134;
                  }

                  goto LABEL_176;
                }
              }

              if (v118)
              {
                goto LABEL_134;
              }

LABEL_176:
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if ((v117 & 0x8000000000000000) != 0)
                {
                  goto LABEL_350;
                }
              }

              else
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
                if ((v117 & 0x8000000000000000) != 0)
                {
                  goto LABEL_350;
                }
              }

              if (v117 >= *(v10 + 2))
              {
                goto LABEL_352;
              }

              v126 = &v10[80 * v117];
              v127 = *(v126 + 7);
              if (v126[72])
              {
                v128 = *(v126 + 8);
              }

              else
              {
                v128 = *(v126 + 8) - v114;
              }

              *(v126 + 8) = v128;
              if (__OFSUB__(v127, 1))
              {
                goto LABEL_353;
              }

              *(v126 + 7) = v127 - 1;
              v322 = v10;
LABEL_134:
              v86 = v275 + 1;
              if (v275 + 1 == v21)
              {
                goto LABEL_190;
              }
            }
          }
        }

LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
        goto LABEL_365;
      }

LABEL_98:
      v63 = &v10[80 * v60 + 56];
      v64 = v40 - v60;
      do
      {
        *v63 = 0;
        v63 += 80;
        --v64;
      }

      while (v64);
      goto LABEL_100;
    }

    if (v270 < v21)
    {
      goto LABEL_398;
    }

    if (v21 < v267)
    {
      goto LABEL_399;
    }

    swift_unknownObjectRetain();
    if (v21 != v270)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v22 = v21;
      v23 = v270;
      while (v22 < v23)
      {
        v24 = *(v269 + 8 * v22 + 32);
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_363;
        }

        if (v24 >= *(v16 + 2))
        {
          goto LABEL_364;
        }

        v25 = &v281[256 * v24];
        v26 = *(v25 + 13);
        v27 = v25[112];
        v28 = *(v25 + 15);
        v29 = v25[128];
        if ((v25[96] & 1) == 0)
        {
          if (v25[16])
          {
            goto LABEL_403;
          }

          v30 = *(v25 + 11);
          v31 = *(v25 + 1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_370;
            }
          }

          else
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_370;
            }
          }

          if (v30 >= *(v10 + 2))
          {
            goto LABEL_372;
          }

          v32 = &v10[80 * v30];
          v33 = *(v32 + 8);
          if (!v32[72])
          {
            v33 = *(v32 + 8) - v31;
          }

          *(v32 + 8) = v33;
          v322 = v10;
          v23 = v270;
        }

        if ((v27 & 1) == 0)
        {
          if (v24 >= *(v16 + 2))
          {
            goto LABEL_371;
          }

          if (v25[16])
          {
            goto LABEL_404;
          }

          v34 = *(v25 + 1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_373;
            }
          }

          else
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_373;
            }
          }

          if (v26 >= *(v10 + 2))
          {
            goto LABEL_375;
          }

          v35 = &v10[80 * v26];
          v36 = *(v35 + 8);
          if (!v35[72])
          {
            v36 = *(v35 + 8) - v34;
          }

          *(v35 + 8) = v36;
          v322 = v10;
          v23 = v270;
        }

        v21 = v278;
        if ((v29 & 1) == 0)
        {
          if (v24 >= *(v16 + 2))
          {
            goto LABEL_374;
          }

          if (v25[16])
          {
            goto LABEL_405;
          }

          v37 = *(v25 + 1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_376;
            }
          }

          else
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_376;
            }
          }

          if (v28 >= *(v10 + 2))
          {
            goto LABEL_377;
          }

          v38 = &v10[80 * v28];
          v39 = *(v38 + 8);
          if (!v38[72])
          {
            v39 = *(v38 + 8) - v37;
          }

          *(v38 + 8) = v39;
          v322 = v10;
          v23 = v270;
        }

        if (v23 == ++v22)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_362;
    }

LABEL_50:
    swift_unknownObjectRetain();
    v40 = *(v10 + 2);
    if (v40)
    {
      goto LABEL_91;
    }

LABEL_51:
    v41 = __OFSUB__(v21, v19);
    v43 = v21 - v19;
    v42 = (v43 < 0) ^ v41 | (v43 == 0);
    if (v43)
    {
      goto LABEL_101;
    }

LABEL_52:
    swift_unknownObjectRelease();
LABEL_190:
    swift_unknownObjectRelease();
    v13 = v270;
    if (v270 < v21)
    {
      goto LABEL_388;
    }

    if (v21 < v267)
    {
      goto LABEL_389;
    }

    v14 = v21;
  }

  while (v21 != v270);
  v129 = *(v10 + 2);
  if (v129)
  {
    goto LABEL_194;
  }

LABEL_233:
  v182 = __src;
LABEL_278:
  v232 = v182[3];
  __dst[2] = v182[2];
  __dst[3] = v232;
  __dst[4] = v182[4];
  v233 = *v182;
  __dst[1] = v182[1];
  __dst[0] = v233;
  v234 = *(v182 + 10);
  v235 = *(v182 + 88);
  v236 = v182;
  memcpy(&__dst[5] + 9, v182 + 89, 0x10FuLL);
  v280 = v236 + 45;
  v284 = v234;
  *&__dst[5] = v234;
  BYTE8(__dst[5]) = v235;
  v272 = *(v236 + 360);
  *(&__dst[22] + 8) = v272;
  JindoTripleVStack.Implementation.placementOrder.getter(v320);
  v237 = *&v320[1];
  v238 = *(&v320[1] + 1) >> 1;
  v239 = 0.0;
  if (*&v320[1] == *(&v320[1] + 1) >> 1)
  {
LABEL_279:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(__src + 18) = a1;
    *(__src + 19) = v239;
    return;
  }

  v240 = *(&v320[0] + 1);
  v241 = v272;
  v277 = *(&v320[1] + 1) >> 1;
  while (v237 < v238)
  {
    v242 = *(v240 + 8 * v237);
    if ((v235 & 1) != 0 || v242 != v284)
    {
      if (v242 < 0)
      {
        goto LABEL_383;
      }

      if (v242 >= *(v241 + 2))
      {
        goto LABEL_384;
      }

      v243 = &v241[256 * v242];
      v244 = *(v243 + 120);
      v245 = *(v243 + 136);
      *(&__dst[1] + 9) = *(v243 + 145);
      __dst[1] = v245;
      __dst[0] = v244;
      v246 = specialized JindoTripleVStack.StackIndexedStorage.compactMap<A>(_:)(__dst, __src, v242, &v322);
      v247 = *(v246 + 2);
      if (v247)
      {
        v248 = *(v246 + 4);
        v249 = v247 - 1;
        if (v249)
        {
          v250 = (v246 + 40);
          do
          {
            v251 = *v250++;
            v252 = v251;
            if (v248 < v251)
            {
              v248 = v252;
            }

            --v249;
          }

          while (v249);
        }
      }

      else
      {
        v248 = 0.0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v241 = specialized _ArrayBuffer._consumeAndCreateNew()(v241);
      }

      if (v242 >= *(v241 + 2))
      {
        goto LABEL_385;
      }

      v253 = &v241[256 * v242];
      v254 = ViewGeometry.origin.modify();
      *(v255 + 8) = v248;
      v254(v320, 0);
      *v280 = v241;
      if (v242 >= *(v241 + 2))
      {
        goto LABEL_386;
      }

      v256 = *(v253 + 216);
      v320[0] = *(v253 + 200);
      v320[1] = v256;
      ViewSize.subscript.getter();
      if (v242 >= *(v241 + 2))
      {
        goto LABEL_387;
      }

      v258 = v235;
      v259 = v240;
      v260 = v248 + v257;
      v261 = *(v253 + 17);
      v262 = v253[144];
      v263 = *(v253 + 19);
      v264 = v253[160];
      if ((v253[128] & 1) == 0)
      {
        v265 = *(v253 + 15);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v265 & 0x8000000000000000) != 0)
          {
            goto LABEL_392;
          }
        }

        else
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          if ((v265 & 0x8000000000000000) != 0)
          {
            goto LABEL_392;
          }
        }

        if (v265 >= *(v10 + 2))
        {
          goto LABEL_394;
        }

        *&v10[80 * v265 + 104] = v260;
        v322 = v10;
      }

      if ((v262 & 1) == 0)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v261 & 0x8000000000000000) != 0)
          {
            goto LABEL_393;
          }
        }

        else
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          if ((v261 & 0x8000000000000000) != 0)
          {
            goto LABEL_393;
          }
        }

        if (v261 >= *(v10 + 2))
        {
          goto LABEL_395;
        }

        *&v10[80 * v261 + 104] = v260;
        v322 = v10;
      }

      v240 = v259;
      if (v264)
      {
        v235 = v258;
        v238 = v277;
      }

      else
      {
        v235 = v258;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v238 = v277;
          if ((v263 & 0x8000000000000000) != 0)
          {
            goto LABEL_323;
          }
        }

        else
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          v238 = v277;
          if ((v263 & 0x8000000000000000) != 0)
          {
LABEL_323:
            __break(1u);
            goto LABEL_324;
          }
        }

        if (v263 >= *(v10 + 2))
        {
          goto LABEL_396;
        }

        *&v10[80 * v263 + 104] = v260;
        v322 = v10;
      }

      if (v239 <= v260)
      {
        v239 = v260;
      }
    }

    if (++v237 == v238)
    {
      goto LABEL_279;
    }
  }

LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:
  __break(1u);
LABEL_401:
  __break(1u);
LABEL_402:
  __break(1u);
LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
}