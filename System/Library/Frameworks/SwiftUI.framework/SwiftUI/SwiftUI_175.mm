void ScrapedContentTree.Node<A>.init<A>(archiving:host:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v48 = a5;
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node?(0, a6);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArchivableScrapedItem(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node(0);
  v65 = v16;
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = *(a1 + 32);
  v25 = *(a1 + 64);
  v62 = *(a1 + 48);
  v63 = v25;
  v26 = *(a1 + 64);
  v64 = *(a1 + 80);
  v27 = *(a1 + 32);
  v61[0] = *(a1 + 16);
  v61[1] = v27;
  v60[1] = v24;
  v60[2] = v62;
  v28 = *(a1 + 80);
  v60[3] = v26;
  v60[4] = v28;
  v29 = a2;
  v60[0] = v61[0];
  outlined init with copy of ScrapeableContent.Item(v61, v59);
  swift_unknownObjectRetain();
  v30 = v56;
  _s7SwiftUI21ArchivableScrapedItemV07scrapedE04hostAcA17ScrapeableContentV0E0V_xtAA0dI5ErrorOYKcAA16ViewRendererHostRzlufC(v60, a3, a4, &v58, v15);
  if (v30)
  {
    v31 = v58;
    lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
    swift_allocError();
    *v32 = v31;

    swift_unknownObjectRelease();
  }

  else
  {
    v55 = a4;
    v49 = v20;
    v56 = a3;
    outlined init with take of ScrapedTextProperties(v15, v23, type metadata accessor for ArchivableScrapedItem);
    swift_beginAccess();
    v47 = a1;
    v33 = *(a1 + 96);
    if (v33 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v35 = v65;
      v36 = v51;
      v46 = v23;

      v50 = v29;
      if (!i)
      {
        break;
      }

      v23 = 0;
      v54 = v33 & 0xC000000000000001;
      v53 = v33 & 0xFFFFFFFFFFFFFF8;
      v37 = MEMORY[0x1E69E7CC0];
      v52 = i;
      while (1)
      {
        if (v54)
        {
          v38 = MEMORY[0x18D00E9C0](v23, v33);
        }

        else
        {
          if (v23 >= *(v53 + 16))
          {
            goto LABEL_25;
          }

          v38 = *(v33 + 8 * v23 + 32);
        }

        v39 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v59[0] = v38;
        closure #1 in ScrapedContentTree<A>.init<A>(archiving:host:)(v59, v29, v56, v55, v12);

        v35 = v65;
        if ((*(v36 + 48))(v12, 1, v65) == 1)
        {
          outlined destroy of ArchivableScrapedItem.Content(v12, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node?);
        }

        else
        {
          v40 = v49;
          outlined init with take of ScrapedTextProperties(v12, v49, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);
          outlined init with take of ScrapedTextProperties(v40, v57, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
          }

          v42 = v37[2];
          v41 = v37[3];
          if (v42 >= v41 >> 1)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v37);
          }

          v37[2] = v42 + 1;
          outlined init with take of ScrapedTextProperties(v57, v37 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);
          v29 = v50;
          v35 = v65;
        }

        ++v23;
        if (v39 == v52)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v43 = v46;
    *(v46 + *(v35 + 28)) = v37;
    if (ScrapedContentTree.Node<A>.shouldPrune.getter())
    {
      lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
      swift_allocError();
      *v44 = 2;
      swift_willThrow();

      swift_unknownObjectRelease();
      outlined destroy of ArchivableScrapedItem.Content(v43, type metadata accessor for ArchivableScrapedItem);
    }

    else
    {
      outlined init with copy of ArchivableScrapedItem.Content(v43, v48, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);

      swift_unknownObjectRelease();
      outlined destroy of ArchivableScrapedItem.Content(v43, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);
    }
  }
}

void *closure #2 in ScrapedContentTree<A>.init<A>(archiving:host:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;

  swift_unknownObjectRetain();
  result = ScrapedContentTree<A>.init<A>(archiving:host:)(v12, a2, a3, a4);
  *a5 = result;
  a5[1] = v11;
  return result;
}

void _s7SwiftUI21ArchivableScrapedItemV07scrapedE04hostAcA17ScrapeableContentV0E0V_xtAA0dI5ErrorOYKcAA16ViewRendererHostRzlufC(__int128 *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v70 = a5;
  type metadata accessor for AttributedString?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  v67 = v13;
  v68 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v20 = type metadata accessor for ScrapedTextProperties(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v66 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v80 = a1[2];
  v81 = v22;
  v82 = a1[4];
  v23 = a1[1];
  v78 = *a1;
  v79 = v23;
  v69 = type metadata accessor for ArchivableScrapedItem(0);
  *(a6 + *(v69 + 24)) = 1;
  v24 = a1[3];
  v75 = a1[2];
  v76 = v24;
  v77 = a1[4];
  v25 = a1[1];
  v73 = *a1;
  v74 = v25;
  ScrapeableContent.Item.size.getter();
  v75 = v80;
  v76 = v81;
  v77 = v82;
  v73 = v78;
  v74 = v79;
  *a6 = ViewRendererHost.convert(_:from:)(&v73, a3, a4, 0.0, 0.0, v26, v27);
  *(a6 + 8) = v28;
  *(a6 + 16) = v29;
  *(a6 + 24) = v30;
  v31 = *(&v78 + 1);
  outlined copy of ScrapeableContent.Content(*(&v78 + 1));
  outlined destroy of ScrapeableContent.Item(&v78);
  v32 = v31 >> 60;
  if ((v31 >> 60) > 4)
  {
    if (v32 > 6)
    {
      if (v32 == 7)
      {
        swift_unknownObjectRelease();
        *(a6 + *(v69 + 20)) = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for ArchivableScrapedItem.Content(0);
        goto LABEL_25;
      }

      if (v32 == 8)
      {
        goto LABEL_18;
      }

      if (v31 != 0x9000000000000000)
      {
LABEL_19:
        LOBYTE(v41) = 1;
        LOBYTE(v73) = 1;
        lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
        swift_willThrowTypedImpl();
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      LOBYTE(v73) = 0;
      lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
      swift_willThrowTypedImpl();
      swift_unknownObjectRelease();
LABEL_17:
      LOBYTE(v41) = 0;
LABEL_20:
      *v70 = v41;
      return;
    }

    if (v32 != 5)
    {
LABEL_18:
      outlined consume of ScrapeableContent.Content(v31);
      goto LABEL_19;
    }

    if (*((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10) >= 0.001)
    {
      swift_unknownObjectRelease();
      type metadata accessor for ArchivableScrapedItem.Content(0);
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (v32 > 1)
  {
    if (v32 == 3)
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x130);
      v34 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x138);
      v70 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x140);
      outlined init with copy of AccessibilityProperties((v31 & 0xFFFFFFFFFFFFFFFLL) + 16, &v73);
      *&v72 = v33;
      *(&v72 + 1) = v34;
      v71 = v70;

      v35 = specialized static ScrapeableContent.Content.resolveAccessibilityProperties(_:environment:idiom:)(&v73, &v72, &v71);
      v37 = v36;
      swift_unknownObjectRelease();
      outlined destroy of AccessibilityProperties(&v73);

      v38 = (a6 + *(v69 + 20));
      *v38 = v35;
      v38[1] = v37;
      type metadata accessor for ArchivableScrapedItem.Content(0);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      outlined consume of ScrapeableContent.Content(v31);
      return;
    }

    goto LABEL_18;
  }

  if (v32)
  {
    v42 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v73 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v43 = v83;
    v41 = _s7SwiftUI17ScrapeableContentV0D0OAAE12resolveImage_11environmentAA07ScrapedF10PropertiesVAA0F0V_AA17EnvironmentValuesVtAA0hD5ErrorOYKFZTf4nnd_n(v42, &v73);
    v45 = v44;
    swift_unknownObjectRelease();
    if (v43)
    {
      outlined consume of ScrapeableContent.Content(v31);
      goto LABEL_20;
    }

    v46 = (a6 + *(v69 + 20));
    *v46 = v41;
    v46[1] = v45;
    type metadata accessor for ArchivableScrapedItem.Content(0);
    swift_storeEnumTagMultiPayload();
    outlined consume of ScrapeableContent.Content(v31);
    return;
  }

  v39 = *(v31 + 56);
  v65 = *(v31 + 64);
  v40 = ResolvedStyledText.storage.getter();
  if (!v40)
  {
LABEL_16:
    LOBYTE(v73) = 0;
    lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    outlined consume of ScrapeableContent.Content(v31);
    goto LABEL_17;
  }

  v64 = v40;
  *&v73 = v39;
  *(&v73 + 1) = v65;
  if (EnvironmentValues.shouldRedactContent.getter())
  {

    goto LABEL_16;
  }

  swift_getKeyPath();
  v65 = type metadata accessor for IntelligenceElement.Text.Attributes();
  lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(&lazy protocol witness table cache variable for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes, MEMORY[0x1E69DBB48], MEMORY[0x1E69DBB20]);
  *&v70 = v64;
  v47 = v83;
  AttributedString.init<A>(_:including:)();
  if (v47)
  {

    v48 = v67;
    v49 = v68;
    (*(v68 + 56))(v12, 1, 1, v67);
    outlined destroy of ArchivableScrapedItem.Content(v12, type metadata accessor for AttributedString?);
    AttributedString.init(_:)();
    swift_unknownObjectRelease();
    v50 = v66;
    (*(v49 + 32))(v66, v19, v48);
    outlined init with take of ScrapedTextProperties(v50, a6 + *(v69 + 20), type metadata accessor for ScrapedTextProperties);
    type metadata accessor for ArchivableScrapedItem.Content(0);
    swift_storeEnumTagMultiPayload();
    outlined consume of ScrapeableContent.Content(v31);
  }

  else
  {
    v83 = 0;
    v52 = v67;
    v51 = v68;
    (*(v68 + 56))(v12, 0, 1, v67);
    v53 = *(v51 + 32);
    v68 = v51 + 32;
    v63 = v53;
    v53(v16, v12, v52);
    v65 = *MEMORY[0x1E69DB648];
    v54 = v70;
    v64 = [v70 length];
    v55 = swift_allocObject();
    *(v55 + 16) = v16;
    v56 = swift_allocObject();
    *(v56 + 16) = _s7SwiftUI17ScrapeableContentV0D0OAAE11resolveText_014resolvedStyledF011environmentAA07ScrapedF10PropertiesVAA0F0V_AA08ResolvedhF0CAA17EnvironmentValuesVtAA0jD5ErrorOYKFZyypSg_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA;
    *(v56 + 24) = v55;
    v62 = v55;
    *&v75 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    *(&v75 + 1) = v56;
    *&v73 = MEMORY[0x1E69E9820];
    *(&v73 + 1) = 1107296256;
    *&v74 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    *(&v74 + 1) = &block_descriptor_83;
    v57 = _Block_copy(&v73);

    [v54 enumerateAttribute:v65 inRange:0 options:v64 usingBlock:{0, v57}];

    swift_unknownObjectRelease();
    _Block_release(v57);
    LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

    if ((v57 & 1) == 0)
    {
      v58 = v16;
      v59 = v67;
      v60 = v63;
      v63(v19, v58, v67);
      v61 = v66;
      v60(v66, v19, v59);

      outlined init with take of ScrapedTextProperties(v61, a6 + *(v69 + 20), type metadata accessor for ScrapedTextProperties);
      type metadata accessor for ArchivableScrapedItem.Content(0);
      goto LABEL_25;
    }

    __break(1u);
  }
}

uint64_t closure #1 in ScrapedContentTree<A>.init<A>(archiving:host:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;

  swift_unknownObjectRetain();
  ScrapedContentTree.Node<A>.init<A>(archiving:host:)(v10, a2, a3, a4, a5, v11);
  if (v5)
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node(0);
  return (*(*(v13 - 8) + 56))(a5, v12, 1, v13);
}

BOOL ScrapedContentTree.Node<A>.shouldPrune.getter()
{
  v1 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArchivableScrapedItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node(0);
  if (!*(*(v0 + *(v7 + 28)) + 16))
  {
    outlined init with copy of ArchivableScrapedItem.Content(v0, v6, type metadata accessor for ArchivableScrapedItem);
    outlined init with take of ScrapedTextProperties(&v6[*(v4 + 20)], v3, type metadata accessor for ArchivableScrapedItem.Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        return 1;
      }
    }

    else
    {
      if (EnumCaseMultiPayload >= 2)
      {
        v10 = *(v3 + 1) == 0;

        return v10;
      }

      outlined destroy of ArchivableScrapedItem.Content(v3, type metadata accessor for ArchivableScrapedItem.Content);
    }
  }

  return 0;
}

uint64_t ScrapedContentTree<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v31 = a5;
  v28 = a4;
  v29 = a3;
  v8 = type metadata accessor for ScrapedContentTree.Node(0, a4, a3, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  if (MEMORY[0x18D00CDE0](a2, v8, v11))
  {
    v27 = v10;
    v16 = 0;
    *&v30 = v9 + 16;
    v17 = (v9 + 8);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v9 + 16))(v13, a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v8);
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v27 != 8)
        {
          goto LABEL_23;
        }

        *&v33 = result;
        (*v30)(v13, &v33, v8);
        swift_unknownObjectRelease();
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_11:
          __break(1u);
          goto LABEL_12;
        }
      }

      v34[0] = v31;
      v34[1] = v35;
      swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v8, v34);
      ProtobufEncoder.messageField<A>(_:_:)();
      if (v6)
      {
        return (*v17)(v13, v8);
      }

      (*v17)(v13, v8);
      ++v16;
      if (v19 == MEMORY[0x18D00CDE0](a2, v8))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v21 = type metadata accessor for ScrapedContentTree(0, v28, v14, v15);
    v22 = v29;
    result = MEMORY[0x18D00CDE0](v29, v21);
    if (result)
    {
      v23 = 0;
      while (1)
      {
        v24 = Array._hoistableIsNativeTypeChecked()();
        result = Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (!v24)
        {
          break;
        }

        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_22;
        }

        v30 = *(v22 + 16 * v23 + 32);
        v33 = v30;
        v32[0] = v31;
        v32[1] = v35;

        swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>, v21, v32);
        ProtobufEncoder.messageField<A>(_:_:)();

        if (!v6)
        {
          result = MEMORY[0x18D00CDE0](v22, v21);
          ++v23;
          if (v25 != result)
          {
            continue;
          }
        }

        return result;
      }

      result = _ArrayBuffer._getElementSlowPath(_:)();
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }
  }

  return result;
}

void ScrapedContentTree<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v7 = type metadata accessor for ScrapedContentTree.Node(255, a2, a3, a4);
  v38 = type metadata accessor for Optional();
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v31 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v31 - v15;
  static Array._allocateUninitialized(_:)();
  v18 = type metadata accessor for ScrapedContentTree(0, a2, v16, v17);
  static Array._allocateUninitialized(_:)();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v46 = v19;
  v45 = v20;
  v21 = a1[1];
  if (v21 >= a1[2])
  {
    a1[3] = 0;
    return;
  }

  v22 = (v11 + 56);
  v23 = (v8 + 8);
  v33 = (v11 + 16);
  v34 = (v11 + 32);
  v32 = (v11 + 8);
  while (1)
  {
    v24 = a1[3];
    if (v24)
    {
      v25 = a1[4];
      if (v21 < v25)
      {
        goto LABEL_11;
      }

      if (v25 < v21)
      {
        goto LABEL_20;
      }

      a1[3] = 0;
    }

    v24 = ProtobufDecoder.decodeVarint()();
    if (v4)
    {
      break;
    }

    if (v24 < 8)
    {
LABEL_20:

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return;
    }

LABEL_11:
    if (v24 >> 3 != 2)
    {
      if (v24 >> 3 == 1)
      {
        *&v44 = v24;
        v41[0] = v39;
        v41[1] = v40;
        swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, v7, v41);
        ProtobufDecoder.messageField<A>(_:)();
        if (v4)
        {

          (*v22)(v10, 1, 1, v7);
          (*v23)(v10, v38);
          v4 = 0;
        }

        else
        {
          v26 = *v22;
          v35 = 0;
          v26(v10, 0, 1, v7);
          v27 = v22;
          v28 = v23;
          v29 = v36;
          (*v34)(v36, v10, v7);
          (*v33)(v37, v29, v7);
          type metadata accessor for Array();
          Array.append(_:)();
          v30 = v29;
          v23 = v28;
          v22 = v27;
          (*v32)(v30, v7);
          v4 = v35;
        }
      }

      else
      {
        *&v44 = v24;
        ProtobufDecoder.skipField(_:)();
        if (v4)
        {
          break;
        }
      }

      goto LABEL_4;
    }

    *&v42 = v24;
    v43[0] = v39;
    v43[1] = v40;
    swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>, v18, v43);
    ProtobufDecoder.messageField<A>(_:)();
    if (v4)
    {
      break;
    }

    v42 = v44;
    type metadata accessor for Array();
    Array.append(_:)();
LABEL_4:
    v21 = a1[1];
    if (v21 >= a1[2])
    {
      a1[3] = 0;
      return;
    }
  }
}

void protocol witness for ProtobufDecodableMessage.init(from:) in conformance <A> ScrapedContentTree<A>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  ScrapedContentTree<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8), *(a3 - 16));
  if (!v4)
  {
    *a4 = v6;
    a4[1] = v7;
  }
}

uint64_t ScrapedContentTree.Node<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ProtobufEncoder.messageField<A>(_:_:)();
  if (!v5)
  {
    v18 = v10;
    v13 = *(v4 + *(a2 + 28));

    if (MEMORY[0x18D00CDE0](v14, a2))
    {
      v19 = a3;
      v20 = a4;
      v15 = 0;
      v21 = (v9 + 16);
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v9 + 16))(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, a2);
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v18 != 8)
          {
            __break(1u);
            return result;
          }

          v23 = result;
          (*v21)(v11, &v23, a2);
          swift_unknownObjectRelease();
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_11:
            __break(1u);
          }
        }

        v22[0] = v19;
        v22[1] = v20;
        swift_getWitnessTable(protocol conformance descriptor for <A> ScrapedContentTree<A>.Node, a2, v22);
        ProtobufEncoder.messageField<A>(_:_:)();
        (*(v9 + 8))(v11, a2);
        ++v15;
      }

      while (v17 != MEMORY[0x18D00CDE0](v13, a2));
    }
  }

  return result;
}

uint64_t ArchivableScrapedItem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArchivableScrapedItem(0);
  v9 = *(v8 + 20);
  result = swift_storeEnumTagMultiPayload();
  v11 = *(v8 + 24);
  v12 = a1[1];
  v13 = a1[2];
  if (v12 < v13)
  {
    v14 = 0;
    v15 = 1;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = a1[3];
      if (v19)
      {
        v20 = a1[4];
        if (v12 < v20)
        {
          goto LABEL_14;
        }

        if (v20 < v12)
        {
          goto LABEL_30;
        }

        a1[3] = 0;
      }

      v19 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_29;
      }

      if (v19 <= 7)
      {
LABEL_30:
        *(a2 + v11) = v15;
        *a2 = v18;
        a2[1] = v17;
        a2[2] = v16;
        a2[3] = v14;
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return outlined destroy of ArchivableScrapedItem.Content(a2, type metadata accessor for ArchivableScrapedItem);
      }

LABEL_14:
      v21 = v19 >> 3;
      if (v19 >> 3 == 3)
      {
        v23[0] = v19;
        lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(&lazy protocol witness table cache variable for type ArchivableScrapedItem.Content and conformance ArchivableScrapedItem.Content, type metadata accessor for ArchivableScrapedItem.Content, protocol conformance descriptor for ArchivableScrapedItem.Content);
        ProtobufDecoder.messageField<A>(_:)();
        if (v2)
        {
          goto LABEL_29;
        }

        result = outlined assign with take of ArchivableScrapedItem.Content(v7, a2 + v9);
      }

      else if (v21 == 2)
      {
        v23[9] = v19;
        type metadata accessor for CGRect(0);
        result = ProtobufDecoder.messageField<A>(_:)();
        if (v2)
        {
          goto LABEL_29;
        }

        v18 = v23[0];
        v17 = v23[1];
        v16 = v23[2];
        v14 = v23[3];
      }

      else if (v21 == 1)
      {
        if ((v19 & 7) != 0)
        {
          if ((v19 & 7) != 2)
          {
            goto LABEL_30;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
LABEL_29:
            *(a2 + v11) = v15;
            *a2 = v18;
            a2[1] = v17;
            a2[2] = v16;
            a2[3] = v14;
            return outlined destroy of ArchivableScrapedItem.Content(a2, type metadata accessor for ArchivableScrapedItem);
          }

          if (result < 0)
          {
            __break(1u);
            return result;
          }

          v22 = a1[1] + result;
          if (v13 < v22)
          {
            goto LABEL_30;
          }

          a1[3] = 8;
          a1[4] = v22;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_29;
        }

        v15 = -(result & 1) ^ (result >> 1);
      }

      else
      {
        v23[0] = v19;
        result = ProtobufDecoder.skipField(_:)();
        if (v2)
        {
          goto LABEL_29;
        }
      }

      v12 = a1[1];
      v13 = a1[2];
      if (v12 >= v13)
      {
        goto LABEL_4;
      }
    }
  }

  v18 = 0;
  v15 = 1;
  v17 = 0;
  v16 = 0;
  v14 = 0;
LABEL_4:
  a1[3] = 0;
  *(a2 + v11) = v15;
  *a2 = v18;
  a2[1] = v17;
  a2[2] = v16;
  a2[3] = v14;
  return result;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ArchivableScrapedItem(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CGRect(0);
  result = ProtobufEncoder.messageField<A>(_:_:)();
  if (!v2)
  {
    type metadata accessor for ArchivableScrapedItem.Content(0);
    lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(&lazy protocol witness table cache variable for type ArchivableScrapedItem.Content and conformance ArchivableScrapedItem.Content, type metadata accessor for ArchivableScrapedItem.Content, protocol conformance descriptor for ArchivableScrapedItem.Content);
    return ProtobufEncoder.messageField<A>(_:_:)();
  }

  return result;
}

void ArchivableScrapedItem.Content.encode(to:)(double a1)
{
  v2 = type metadata accessor for ScrapedTextProperties(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ArchivableScrapedItem.Content(v1, v7, type metadata accessor for ArchivableScrapedItem.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of ScrapedTextProperties(v7, v4, type metadata accessor for ScrapedTextProperties);
      lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(&lazy protocol witness table cache variable for type ScrapedTextProperties and conformance ScrapedTextProperties, type metadata accessor for ScrapedTextProperties, protocol conformance descriptor for ScrapedTextProperties);
      ProtobufEncoder.messageField<A>(_:_:)();
      outlined destroy of ArchivableScrapedItem.Content(v4, type metadata accessor for ScrapedTextProperties);
      return;
    }

    v10 = v7[1];
    v11 = *v7;
    v12 = v10;
    lazy protocol witness table accessor for type ScrapedImageProperties and conformance ScrapedImageProperties();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v9 = v7[1];
    v11 = *v7;
    v12 = v9;
    lazy protocol witness table accessor for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties();
LABEL_10:
    ProtobufEncoder.messageField<A>(_:_:)();

    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    LOBYTE(v11) = *v7;
    lazy protocol witness table accessor for type ScrapedButtonProperties and conformance ScrapedButtonProperties();
    ProtobufEncoder.messageField<A>(_:_:)();
  }

  else
  {
    ProtobufEncoder.emptyField(_:)(1uLL);
  }
}

void ArchivableScrapedItem.Content.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v23 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v23 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  swift_storeEnumTagMultiPayload();
  while (1)
  {
    v18 = a1[1];
    if (v18 >= a1[2])
    {
      a1[3] = 0;
      return;
    }

    v19 = a1[3];
    if (v19)
    {
      v20 = a1[4];
      if (v18 < v20)
      {
        goto LABEL_13;
      }

      if (v20 < v18)
      {
        break;
      }

      a1[3] = 0;
    }

    v21 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_29;
    }

    v19 = v21;
    if (v21 < 8)
    {
      break;
    }

LABEL_13:
    v22 = v19 >> 3;
    if (v19 >> 3 <= 2)
    {
      if (v22 == 1)
      {
        outlined destroy of ArchivableScrapedItem.Content(a2, type metadata accessor for ArchivableScrapedItem.Content);
        swift_storeEnumTagMultiPayload();
      }

      else if (v22 == 2)
      {
        *&v23 = v19;
        type metadata accessor for ScrapedTextProperties(0);
        lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(&lazy protocol witness table cache variable for type ScrapedTextProperties and conformance ScrapedTextProperties, type metadata accessor for ScrapedTextProperties, protocol conformance descriptor for ScrapedTextProperties);
        ProtobufDecoder.messageField<A>(_:)();
        outlined destroy of ArchivableScrapedItem.Content(a2, type metadata accessor for ArchivableScrapedItem.Content);
        if (v2)
        {
          return;
        }

        swift_storeEnumTagMultiPayload();
        v17 = v16;
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    switch(v22)
    {
      case 3uLL:
        v24 = v19;
        lazy protocol witness table accessor for type ScrapedImageProperties and conformance ScrapedImageProperties();
        ProtobufDecoder.messageField<A>(_:)();
        outlined destroy of ArchivableScrapedItem.Content(a2, type metadata accessor for ArchivableScrapedItem.Content);
        if (v2)
        {
          return;
        }

        *v13 = v23;
        swift_storeEnumTagMultiPayload();
        v17 = v13;
        goto LABEL_5;
      case 4uLL:
        v24 = v19;
        lazy protocol witness table accessor for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties();
        ProtobufDecoder.messageField<A>(_:)();
        if (v2)
        {
          goto LABEL_29;
        }

        outlined destroy of ArchivableScrapedItem.Content(a2, type metadata accessor for ArchivableScrapedItem.Content);
        *v10 = v23;
        swift_storeEnumTagMultiPayload();
        v17 = v10;
LABEL_5:
        outlined init with take of ScrapedTextProperties(v17, a2, type metadata accessor for ArchivableScrapedItem.Content);
        break;
      case 5uLL:
        *&v23 = v19;
        lazy protocol witness table accessor for type ScrapedButtonProperties and conformance ScrapedButtonProperties();
        ProtobufDecoder.messageField<A>(_:)();
        if (v2)
        {
          goto LABEL_29;
        }

        outlined destroy of ArchivableScrapedItem.Content(a2, type metadata accessor for ArchivableScrapedItem.Content);
        *v7 = v24;
        swift_storeEnumTagMultiPayload();
        v17 = v7;
        goto LABEL_5;
      default:
LABEL_25:
        *&v23 = v19;
        ProtobufDecoder.skipField(_:)();
        if (v2)
        {
          goto LABEL_29;
        }

        break;
    }
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_29:
  outlined destroy of ArchivableScrapedItem.Content(a2, type metadata accessor for ArchivableScrapedItem.Content);
}

uint64_t ScrapedTextProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AttributeScopeCodableConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  result = AttributedString.init(stringLiteral:)();
  v14 = a1[1];
  if (v14 >= a1[2])
  {
LABEL_14:
    a1[3] = 0;
    return result;
  }

  v15 = (v6 + 8);
  v16 = (v10 + 40);
  while (1)
  {
    v17 = a1[3];
    if (v17)
    {
      v18 = a1[4];
      if (v14 < v18)
      {
        goto LABEL_11;
      }

      if (v18 < v14)
      {
        goto LABEL_16;
      }

      a1[3] = 0;
    }

    v17 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined destroy of ArchivableScrapedItem.Content(v20, type metadata accessor for ScrapedTextProperties);
    }

    if (v17 <= 7)
    {
LABEL_16:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined destroy of ArchivableScrapedItem.Content(v20, type metadata accessor for ScrapedTextProperties);
    }

LABEL_11:
    if ((v17 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    v21 = v17;
    result = ProtobufDecoder.skipField(_:)();
    if (v2)
    {
      return outlined destroy of ArchivableScrapedItem.Content(v20, type metadata accessor for ScrapedTextProperties);
    }

LABEL_4:
    v14 = a1[1];
    if (v14 >= a1[2])
    {
      goto LABEL_14;
    }
  }

  v21 = v17;
  type metadata accessor for IntelligenceElement.Text.Attributes();
  lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(&lazy protocol witness table cache variable for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes, MEMORY[0x1E69DBB48], MEMORY[0x1E69DBB20]);
  static AttributeScope.decodingConfiguration.getter();
  ProtobufDecoder.codableWithConfigurationField<A>(_:configuration:)();
  if (!v2)
  {
    (*v15)(v8, v5);
    result = (*v16)(v20, v12, v9);
    goto LABEL_4;
  }

  (*v15)(v8, v5);
  return outlined destroy of ArchivableScrapedItem.Content(v20, type metadata accessor for ScrapedTextProperties);
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ScrapedTextProperties()
{
  v0 = type metadata accessor for AttributeScopeCodableConfiguration();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntelligenceElement.Text.Attributes();
  lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(&lazy protocol witness table cache variable for type IntelligenceElement.Text.Attributes and conformance IntelligenceElement.Text.Attributes, MEMORY[0x1E69DBB48], MEMORY[0x1E69DBB20]);
  static AttributeScope.decodingConfiguration.getter();
  type metadata accessor for AttributedString();
  ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ScrapedImageProperties(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (*(v5 + 8))
  {
    a4(a1, a2, a3);
    return ProtobufEncoder.stringField<A>(_:_:defaultValue:)();
  }

  return a1;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance ScrapedImageProperties@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized ScrapedImageProperties.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t ScrapedButtonProperties.init(from:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 < v6)
  {
    v7 = 0;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v8 = v3[4];
        if (v5 < v8)
        {
          goto LABEL_9;
        }

        if (v8 < v5)
        {
          goto LABEL_26;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if (result <= 7)
      {
LABEL_26:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }

LABEL_9:
      if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        if ((result & 7) != 0)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_26;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }

          v9 = v3[1] + result;
          if (v6 < v9)
          {
            goto LABEL_26;
          }

          v3[3] = 8;
          v3[4] = v9;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if (result >= 4)
        {
          v7 = 0;
        }

        else
        {
          v7 = result;
        }
      }

      else
      {
        result = ProtobufDecoder.skipField(_:)();
        if (v2)
        {
          return result;
        }
      }

      v5 = v3[1];
      v6 = v3[2];
      if (v5 >= v6)
      {
        goto LABEL_24;
      }
    }
  }

  v7 = 0;
LABEL_24:
  v3[3] = 0;
  *a2 = v7;
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ScrapedButtonProperties()
{
  v1 = *v0;
  ProtobufEncoder.encodeVarint(_:)(8uLL);
  ProtobufEncoder.encodeVarint(_:)(v1);
}

unint64_t ScrapeableContent.Content.Button.Role.init(protobufValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void *initializeBufferWithCopyOfBuffer for ArchivableScrapedItem(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v7;
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = type metadata accessor for ArchivableScrapedItem.Content(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v15 = v10[1];
      *v9 = *v10;
      v9[1] = v15;

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(v9, v10, *(*(v11 - 8) + 64));
    }

    else
    {
      v13 = type metadata accessor for AttributedString();
      (*(*(v13 - 8) + 16))(v9, v10, v13);
      swift_storeEnumTagMultiPayload();
    }

    *(v4 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return v4;
}

uint64_t destroy for ArchivableScrapedItem(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  type metadata accessor for ArchivableScrapedItem.Content(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2 || result == 1)
  {
  }

  else if (!result)
  {
    v4 = type metadata accessor for AttributedString();
    v5 = *(*(v4 - 8) + 8);

    return v5(v2, v4);
  }

  return result;
}

_OWORD *initializeWithCopy for ArchivableScrapedItem(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for ArchivableScrapedItem.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v13 = v9[1];
    *v8 = *v9;
    v8[1] = v13;

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(v8, v9, *(*(v10 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for AttributedString();
    (*(*(v12 - 8) + 16))(v8, v9, v12);
    swift_storeEnumTagMultiPayload();
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void *assignWithCopy for ArchivableScrapedItem(void *result, void *a2, uint64_t a3)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  if (result != a2)
  {
    v5 = *(a3 + 20);
    v6 = result;
    v7 = (result + v5);
    v8 = (a2 + v5);
    outlined destroy of ArchivableScrapedItem.Content(result + v5, type metadata accessor for ArchivableScrapedItem.Content);
    v9 = type metadata accessor for ArchivableScrapedItem.Content(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      *v7 = *v8;
      v7[1] = v8[1];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for AttributedString();
      (*(*(v11 - 8) + 16))(v7, v8, v11);
      swift_storeEnumTagMultiPayload();
    }

    result = v6;
  }

  *(result + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return result;
}

char *initializeWithTake for ArchivableScrapedItem(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 20);
  v8 = type metadata accessor for ArchivableScrapedItem.Content(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for AttributedString();
    (*(*(v9 - 8) + 32))(&a1[v7], &a2[v7], v9);
    swift_storeEnumTagMultiPayload();
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for ArchivableScrapedItem(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  if (a1 != a2)
  {
    v7 = *(a3 + 20);
    outlined destroy of ArchivableScrapedItem.Content(&a1[v7], type metadata accessor for ArchivableScrapedItem.Content);
    v8 = type metadata accessor for ArchivableScrapedItem.Content(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = type metadata accessor for AttributedString();
      (*(*(v9 - 8) + 32))(&a1[v7], &a2[v7], v9);
      swift_storeEnumTagMultiPayload();
    }
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

uint64_t type metadata completion function for ArchivableScrapedItem(uint64_t a1)
{
  result = type metadata accessor for ArchivableScrapedItem.Content(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ArchivableScrapedItem.Content(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;

    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

uint64_t destroy for ArchivableScrapedItem.Content(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2 || result == 1)
  {
  }

  else if (!result)
  {
    v4 = type metadata accessor for AttributedString();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for ArchivableScrapedItem.Content(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;

    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithCopy for ArchivableScrapedItem.Content(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ArchivableScrapedItem.Content(a1, type metadata accessor for ArchivableScrapedItem.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    a1[1] = a2[1];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for ArchivableScrapedItem.Content(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for ArchivableScrapedItem.Content(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ArchivableScrapedItem.Content(a1, type metadata accessor for ArchivableScrapedItem.Content);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for ArchivableScrapedItem.Content(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapedButtonProperties and conformance ScrapedButtonProperties()
{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedButtonProperties, &type metadata for ScrapedButtonProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedButtonProperties, &type metadata for ScrapedButtonProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedButtonProperties, &type metadata for ScrapedButtonProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedButtonProperties, &type metadata for ScrapedButtonProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedButtonProperties, &type metadata for ScrapedButtonProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties()
{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedAccessibilityProperties, &type metadata for ScrapedAccessibilityProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedAccessibilityProperties, &type metadata for ScrapedAccessibilityProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedAccessibilityProperties, &type metadata for ScrapedAccessibilityProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedAccessibilityProperties, &type metadata for ScrapedAccessibilityProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedAccessibilityProperties, &type metadata for ScrapedAccessibilityProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapedImageProperties and conformance ScrapedImageProperties()
{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedImageProperties, &type metadata for ScrapedImageProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedImageProperties, &type metadata for ScrapedImageProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedImageProperties, &type metadata for ScrapedImageProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedImageProperties, &type metadata for ScrapedImageProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedImageProperties, &type metadata for ScrapedImageProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined assign with take of ArchivableScrapedItem.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArchivableScrapedItem.Content(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static ArchivableScrapedItem.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for ScrapedTextProperties(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v33 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v33 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  type metadata accessor for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content)(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v20[*(v21 + 56)];
  outlined init with copy of ArchivableScrapedItem.Content(a1, v20, type metadata accessor for ArchivableScrapedItem.Content);
  outlined init with copy of ArchivableScrapedItem.Content(v34, v22, type metadata accessor for ArchivableScrapedItem.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of ArchivableScrapedItem.Content(v20, v17, type metadata accessor for ArchivableScrapedItem.Content);
      if (!swift_getEnumCaseMultiPayload())
      {
        outlined init with take of ScrapedTextProperties(v22, v5, type metadata accessor for ScrapedTextProperties);
        v24 = static AttributedString.== infix(_:_:)();
        outlined destroy of ArchivableScrapedItem.Content(v5, type metadata accessor for ScrapedTextProperties);
        outlined destroy of ArchivableScrapedItem.Content(v17, type metadata accessor for ScrapedTextProperties);
        v25 = type metadata accessor for ArchivableScrapedItem.Content;
        goto LABEL_30;
      }

      outlined destroy of ArchivableScrapedItem.Content(v17, type metadata accessor for ScrapedTextProperties);
      goto LABEL_26;
    }

    outlined init with copy of ArchivableScrapedItem.Content(v20, v14, type metadata accessor for ArchivableScrapedItem.Content);
    v27 = *v14;
    v26 = v14[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(v22 + 1);
      if (v26)
      {
LABEL_11:
        if (v28)
        {
          if (v27 == *v22 && v26 == v28)
          {

            v24 = 1;
            v25 = type metadata accessor for ArchivableScrapedItem.Content;
            goto LABEL_30;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v25 = type metadata accessor for ArchivableScrapedItem.Content;
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_24:
          v24 = 0;
          v25 = type metadata accessor for ArchivableScrapedItem.Content;
          goto LABEL_30;
        }

LABEL_23:

        goto LABEL_24;
      }

LABEL_22:
      v25 = type metadata accessor for ArchivableScrapedItem.Content;
      if (!v28)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of ArchivableScrapedItem.Content(v20, v11, type metadata accessor for ArchivableScrapedItem.Content);
    v27 = *v11;
    v26 = v11[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = *(v22 + 1);
      if (v26)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v31 = swift_getEnumCaseMultiPayload();
    v25 = type metadata accessor for ArchivableScrapedItem.Content;
    if (v31 != 4)
    {
      goto LABEL_26;
    }

LABEL_27:
    v24 = 1;
    goto LABEL_30;
  }

  outlined init with copy of ArchivableScrapedItem.Content(v20, v8, type metadata accessor for ArchivableScrapedItem.Content);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_26:
    v24 = 0;
    v25 = type metadata accessor for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content);
    goto LABEL_30;
  }

  v24 = *v8 == *v22;
  v25 = type metadata accessor for ArchivableScrapedItem.Content;
LABEL_30:
  outlined destroy of ArchivableScrapedItem.Content(v20, v25);
  return v24 & 1;
}

void type metadata accessor for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content))
  {
    type metadata accessor for ArchivableScrapedItem.Content(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag()
{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedImageProperties.Tag, &unk_1F000B168, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedImageProperties.Tag, &unk_1F000B168, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag()
{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedAccessibilityProperties.Tag, &type metadata for ScrapedAccessibilityProperties.Tag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrapedAccessibilityProperties.Tag, &type metadata for ScrapedAccessibilityProperties.Tag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag);
  }

  return result;
}

unint64_t specialized ScrapedImageProperties.init(from:)(void *a1)
{
  v3 = a1[1];
  if (v3 < a1[2])
  {
    v4 = 0;
    while (1)
    {
      v5 = a1[3];
      if (v5)
      {
        v6 = a1[4];
        if (v3 < v6)
        {
          goto LABEL_9;
        }

        if (v6 < v3)
        {
          goto LABEL_18;
        }

        a1[3] = 0;
      }

      v5 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_17;
      }

      if (v5 < 8)
      {
LABEL_18:

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return v4;
      }

LABEL_9:
      if ((v5 & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        v4 = v5;

        v7 = ProtobufDecoder.stringField(_:)();
        if (v1)
        {
          return v4;
        }

        v4 = v7;
      }

      else
      {
        ProtobufDecoder.skipField(_:)();
        if (v1)
        {
LABEL_17:

          return v4;
        }
      }

      v3 = a1[1];
      if (v3 >= a1[2])
      {
        goto LABEL_16;
      }
    }
  }

  v4 = 0;
LABEL_16:
  a1[3] = 0;
  return v4;
}

uint64_t outlined init with take of ScrapedTextProperties(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ArchivableScrapedItem.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<IntelligenceElement>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of ArchivableScrapedItem.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EnvironmentValues.selectionPopsSubsequentColumn.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.selectionPopsSubsequentColumn : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.selectionPopsSubsequentColumn : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.selectionPopsSubsequentColumn.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>, MEMORY[0x1E697FE40]);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

id CollectionViewListScrollable.coordinator.getter(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v1;
  type metadata accessor for UICollectionViewListCoordinator(0, v6);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 0;
  }

  v3 = *WeakValue;
  v4 = *WeakValue;
  return v3;
}

double CollectionViewListScrollable.base.getter@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  AGGraphClearUpdate();
  closure #1 in CollectionViewListScrollable.base.getter(v2, a1[2], a1[3], a1[4], a1[5], a2);

  AGGraphSetUpdate();
  return result;
}

double closure #1 in CollectionViewListScrollable.base.getter@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for ShadowListDataSource(255, a2, *(a4 + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v12);
  v15 = type metadata accessor for ListScrollable.DataSourceProvider(0, v12, WitnessTable, v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v31[0] = a2;
  v31[1] = a3;
  v31[2] = a4;
  v31[3] = a5;
  v18 = type metadata accessor for CollectionViewListScrollable(0, v31);
  v19 = CollectionViewListScrollable.coordinator.getter(v18);
  if (v19)
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x88);
    v21 = v19;
    swift_beginAccess();
    v22 = swift_checkMetadataState();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v17, &v21[v20], v22);

    (*(v23 + 56))(v17, 0, 1, v22);
  }

  else
  {
    v24 = swift_checkMetadataState();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  }

  v25 = a1[1];
  swift_storeEnumTagMultiPayload();
  v26 = a1[2];
  v27 = a1[3];
  v28 = a1[4];
  v29 = swift_checkMetadataState();
  ListScrollable.init(state:dataSourceProvider:scrollView:children:lastUpdateSeed:)(v25, v17, v26, v27, v28, v29, WitnessTable, a6);

  return result;
}

uint64_t CollectionViewListScrollable.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v10);
  v12 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = *(a2 + 32);
  *(v13 + 16) = *(a2 + 16);
  *(v13 + 32) = a3;
  *(v13 + 40) = v14;
  *(v13 + 56) = a4;
  (*(v8 + 32))(v13 + v12, v11, a3);
  LOBYTE(a4) = CollectionViewListScrollable.apply<A>(id:_:)(a1, partial apply for closure #1 in CollectionViewListScrollable.scroll<A>(to:), v13, a2, a3, a4);

  return a4 & 1;
}

BOOL closure #1 in CollectionViewListScrollable.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = type metadata accessor for ShadowListDataSource(255, a3, *(a6 + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v11);
  v14 = type metadata accessor for ListScrollable(0, v11, WitnessTable, v13);
  return ListScrollable.scroll<A>(to:)(a2, v14, a5, a8);
}

uint64_t CollectionViewListScrollable.apply<A>(id:_:)(uint64_t a1, uint64_t (*a2)(char *, double), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a2;
  v34 = a3;
  v35 = a5;
  v31 = a1;
  v8 = a4[2];
  v9 = a4[4];
  v10 = type metadata accessor for ShadowListDataSource(255, v8, *(v9 + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  v13 = type metadata accessor for ListScrollable(0, v10, WitnessTable, v12);
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  AGGraphClearUpdate();
  v16 = a4[3];
  *&v17 = v8;
  *(&v17 + 1) = v16;
  v18 = a4[5];
  *&v19 = v9;
  *(&v19 + 1) = v18;
  v36[0] = v17;
  v36[1] = v19;
  v20 = type metadata accessor for CollectionViewListScrollable(0, v36);
  v21 = CollectionViewListScrollable.coordinator.getter(v20);
  AGGraphSetUpdate();
  if (v21)
  {
    v22 = v32;
    if (UICollectionViewListCoordinatorBase.hasPendingID<A>(_:)(v31, v35, v32))
    {
      v37 = 17;
      v23 = swift_allocObject();
      *(v23 + 16) = v8;
      *(v23 + 24) = v16;
      *(v23 + 32) = v35;
      *(v23 + 40) = v9;
      *(v23 + 48) = v18;
      *(v23 + 56) = v22;
      *(v23 + 64) = v33;
      *(v23 + 72) = v34;
      v24 = *(v6 + 16);
      *(v23 + 80) = *v6;
      *(v23 + 96) = v24;
      *(v23 + 112) = *(v6 + 32);

      (*(*(a4 - 1) + 16))(v36, v6, a4);
      static Update.enqueueAction(reason:_:)();

      v25 = 1;
    }

    else
    {
      v26 = CollectionViewListScrollable.base.getter(a4, v15);
      v25 = v33(v15, v26);

      (*(v29 + 8))(v15, v30);
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t closure #2 in CollectionViewListScrollable.apply<A>(id:_:)(void (*a1)(char *, double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for ShadowListDataSource(255, a4, *(a7 + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v13);
  v16 = type metadata accessor for ListScrollable(0, v13, WitnessTable, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - v18;
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a7;
  v23[3] = a8;
  v20 = type metadata accessor for CollectionViewListScrollable(0, v23);
  v21 = CollectionViewListScrollable.base.getter(v20, v19);
  a1(v19, v21);
  return (*(v17 + 8))(v19, v16);
}

uint64_t CollectionViewListScrollable.runScrollTest(_:scrollMode:)(uint64_t a1, uint64_t (**a2)(void), void *a3, uint64_t a4)
{
  v7 = type metadata accessor for ShadowListDataSource(255, a3[2], *(a3[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v7);
  v10 = type metadata accessor for ListScrollable(0, v7, WitnessTable, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v15 = *a2;
  v14 = a2[1];
  CollectionViewListScrollable.base.getter(a3, v17 - v12);
  v17[0] = v15;
  v17[1] = v14;
  LOBYTE(a1) = ListScrollable.runScrollTest(_:scrollMode:)(a1, v17, v10);
  (*(v11 + 8))(v13, v10);
  return a1 & 1;
}

uint64_t CollectionViewListScrollable.runScrollTest(_:scrollMode:onComplete:)(uint64_t a1, uint64_t (**a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v10 = type metadata accessor for ShadowListDataSource(255, a5[2], *(a5[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  v13 = type metadata accessor for ListScrollable(0, v10, WitnessTable, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  v18 = *a2;
  v17 = a2[1];
  CollectionViewListScrollable.base.getter(a5, v20 - v15);
  v20[0] = v18;
  v20[1] = v17;
  LOBYTE(v6) = ListScrollable.runScrollTest(_:scrollMode:onComplete:)(a1, v20, a3, v6, v13);
  (*(v14 + 8))(v16, v13);
  return v6 & 1;
}

uint64_t CollectionViewListScrollable.runScrollSubTest(_:subTestName:scrollMode:onComplete:)(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  v22 = a4;
  v23 = a5;
  v10 = type metadata accessor for ShadowListDataSource(255, a6[2], *(a6[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  v13 = type metadata accessor for ListScrollable(0, v10, WitnessTable, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  v17 = *a2;
  v18 = a2[1];
  v19 = *a3;
  v20 = a3[1];
  CollectionViewListScrollable.base.getter(a6, &v22 - v15);
  v25[0] = v17;
  v25[1] = v18;
  v24[0] = v19;
  v24[1] = v20;
  LOBYTE(v17) = ListScrollable.runScrollSubTest(_:subTestName:scrollMode:onComplete:)(a1, v25, v24, v22, v23, v13);
  (*(v14 + 8))(v16, v13);
  return v17 & 1;
}

uint64_t CollectionViewListScrollable.mapFirstChild<A, B>(ofType:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v20 = a5;
  v11 = type metadata accessor for ShadowListDataSource(255, a3[2], *(a3[4] + 8), a3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v11);
  v14 = type metadata accessor for ListScrollable(0, v11, WitnessTable, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  CollectionViewListScrollable.base.getter(a3, &v19 - v16);
  ListScrollable.mapFirstChild<A, B>(ofType:body:)(a1, a2, v14, a4, v20, a6);
  return (*(v15 + 8))(v17, v14);
}

uint64_t CollectionViewListScrollable.allowsContentOffsetAdjustments.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a1[2], *(a1[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for ListScrollable(0, v5, WitnessTable, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = CollectionViewListScrollable.base.getter(a1, &v14 - v10);
  (*(v9 + 8))(v11, v8, v12);
  return 1;
}

char *CollectionViewListScrollable.visibleCollectionViewIDs.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a1[2], *(a1[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for ListScrollable(0, v5, WitnessTable, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  CollectionViewListScrollable.base.getter(a1, &v14 - v10);
  v12 = ListScrollable.visibleCollectionViewIDs.getter(v8);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t CollectionViewListScrollable.subviewClosestTo(rect:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a1[2], *(a1[4] + 8), a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for ListScrollable(0, v5, WitnessTable, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  CollectionViewListScrollable.base.getter(a1, &v14 - v10);
  v12 = ListScrollable.subviewClosestTo(rect:)(a3);
  return (*(v9 + 8))(v11, v8, v12);
}

uint64_t CollectionViewListScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = type metadata accessor for ShadowListDataSource(255, a3[2], *(a3[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
  v12 = type metadata accessor for ListScrollable(0, v9, WitnessTable, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  v16 = a1[1];
  LODWORD(a2) = *a2;
  CollectionViewListScrollable.base.getter(a3, v19 - v14);
  v20 = *a1;
  v21 = v16;
  v19[3] = a2;
  v17 = protocol witness for static Rule.initialValue.getter in conformance ToString<A>(a5);
  return (*(v13 + 8))(v15, v12, v17);
}

uint64_t static CollectionViewListScrollable.hasMultipleViewsInAxis(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShadowListDataSource(0, a2, *(a4 + 8), a4);
  swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);

  return AccessibilitySidebarListModifier.init(isInExpandedSplitView:)(a1 & 1);
}

uint64_t CollectionViewListScrollable.firstCollectionViewIndex(of:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ShadowListDataSource(255, a2[2], *(a2[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v6);
  v9 = type metadata accessor for ListScrollable(0, v6, WitnessTable, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - v11;
  v13 = a1[1];
  CollectionViewListScrollable.base.getter(a2, v16 - v11);
  v16[0] = *a1;
  v16[1] = v13;
  v14 = ListScrollable.firstCollectionViewIndex(of:)(v16, v9);
  (*(v10 + 8))(v12, v9);
  return v14;
}

uint64_t CollectionViewListScrollable.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ShadowListDataSource(255, a4[2], *(a4[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  v11 = type metadata accessor for ListScrollable(0, v8, WitnessTable, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  CollectionViewListScrollable.base.getter(a4, &v16 - v13);
  LOBYTE(a3) = ListScrollable.applyCollectionViewIDs(from:to:)(a1, a2, a3, v11);
  (*(v12 + 8))(v14, v11);
  return a3 & 1;
}

uint64_t CollectionViewListScrollable.collectionViewID(for:)@<X0>(void *a1@<X1>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a1[2], *(a1[4] + 8), a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for ListScrollable(0, v5, WitnessTable, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  CollectionViewListScrollable.base.getter(a1, &v14 - v10);
  v12 = protocol witness for static Rule.initialValue.getter in conformance ToString<A>(a3);
  return (*(v9 + 8))(v11, v8, v12);
}

uint64_t CollectionViewListScrollable.scroll(toCollectionViewID:anchor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v10 = type metadata accessor for ShadowListDataSource(255, a5[2], *(a5[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  v13 = type metadata accessor for ListScrollable(0, v10, WitnessTable, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  v17 = a1[1];
  CollectionViewListScrollable.base.getter(a5, v19 - v15);
  v19[0] = *a1;
  v19[1] = v17;
  LOBYTE(a3) = ListScrollable.scroll(toCollectionViewID:anchor:)(v19, a2, a3, v6 & 1, v13);
  (*(v14 + 8))(v16, v13);
  return a3 & 1;
}

void static CollectionViewListScrollable.accessibilityRole.getter(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = type metadata accessor for ShadowListDataSource(0, a1, *(a2 + 8), a3);
  swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);

  protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PrefersFullSizeDragPreviewsKey(a4);
}

uint64_t ScrollViewPreferenceProvider.value.getter(unint64_t a1, unint64_t a2)
{
  type metadata accessor for UIScrollView?(0);
  v2 = *AGGraphGetValue();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for [ScrollGeometryState](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentScrollViewBox>, &type metadata for ContentScrollViewBox, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18CD63400;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 76) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 48) = 2;
  v4 = v2;
  *(v3 + 52) = AGCreateWeakAttribute();
  *(v3 + 60) = AGCreateWeakAttribute();
  *(v3 + 68) = AGCreateWeakAttribute();

  return v3;
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollViewPreferenceProvider@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollViewPreferenceProvider.value.getter(*v1, v1[1]);
  *a1 = result;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ScrollGeometryProvider@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  return result;
}

__n128 protocol witness for Rule.value.getter in conformance ScrollGeometryProvider@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BridgedListState(0);
  v3 = AGGraphGetValue() + *(v2 + 24);
  if (*(v3 + 112))
  {

    static ScrollGeometry.zero.getter();
  }

  else
  {
    v5 = *(v3 + 80);
    *(a1 + 64) = *(v3 + 64);
    *(a1 + 80) = v5;
    *(a1 + 96) = *(v3 + 96);
    v6 = *(v3 + 16);
    *a1 = *v3;
    *(a1 + 16) = v6;
    result = *(v3 + 48);
    *(a1 + 32) = *(v3 + 32);
    *(a1 + 48) = result;
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance MakeRepresentable<A, B>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void static ListRepresentable.dismantleViewProvider(_:coordinator:)(void *a1)
{
  v2 = [a1 refreshControl];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for UIKitRefreshControl();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      if (*&v4[OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask])
      {
        v5 = v4;

        MEMORY[0x18D00D010](v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

        v4 = v5;
      }

      [v4 endRefreshing];
    }
  }

  [a1 setRefreshControl_];
  v7 = [a1 contextMenuInteraction];
  [v7 dismissMenu];
}

void ListRepresentable._identifiedViewTree(in:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 layoutIfNeeded];
  v4 = [a1 visibleCells];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v28 = a2;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x18D00E9C0](v7, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    type metadata accessor for AnyListCollectionViewCell();
    v12 = swift_dynamicCastClassUnconditional();
    (*((*v9 & *v12) + 0x88))(v30);
    outlined init with copy of _IdentifiedViewTree(v30, v29);
    if (v29[168] == 2 && (v13 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v29[40], *&v29[104]), vorrq_s8(*&v29[72], *&v29[136])), vorrq_s8(vorrq_s8(*&v29[56], *&v29[120]), vorrq_s8(*&v29[88], *&v29[152]))), vorrq_s8(*&v29[8], *&v29[24])), !(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | *v29)))
    {
      outlined destroy of _IdentifiedViewTree(v30);

      outlined destroy of _IdentifiedViewTree(v29);
    }

    else
    {
      outlined destroy of _IdentifiedViewTree(v29);
      outlined init with copy of _IdentifiedViewTree(v30, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
      }

      outlined destroy of _IdentifiedViewTree(v30);
      *(v8 + 2) = v15 + 1;
      v16 = &v8[176 * v15];
      v17 = *&v29[32];
      v18 = *&v29[16];
      *(v16 + 2) = *v29;
      *(v16 + 3) = v18;
      *(v16 + 4) = v17;
      v19 = *&v29[96];
      v20 = *&v29[64];
      v21 = *&v29[48];
      *(v16 + 7) = *&v29[80];
      *(v16 + 8) = v19;
      *(v16 + 5) = v21;
      *(v16 + 6) = v20;
      v22 = *&v29[144];
      v23 = *&v29[128];
      v24 = *&v29[112];
      *(v16 + 185) = *&v29[153];
      *(v16 + 10) = v23;
      *(v16 + 11) = v22;
      *(v16 + 9) = v24;
    }

    ++v7;
  }

  while (v6 != v7);

  a2 = v28;
LABEL_20:
  a2[3] = &type metadata for _IdentifiedViewTree;
  v25 = swift_allocObject();
  *a2 = v25;
  if (*(v8 + 2))
  {
    v26 = 1;
  }

  else
  {
    v27 = v25;

    v25 = v27;
    v8 = 0;
    *(v27 + 168) = 0u;
    *(v27 + 152) = 0u;
    *(v27 + 136) = 0u;
    *(v27 + 120) = 0u;
    *(v27 + 104) = 0u;
    *(v27 + 88) = 0u;
    *(v27 + 72) = 0u;
    *(v27 + 56) = 0u;
    *(v27 + 40) = 0u;
    v26 = 2;
    *(v27 + 24) = 0u;
  }

  *(v25 + 16) = v8;
  *(v25 + 184) = v26;
}

uint64_t specialized CollectionViewListScrollable.forEachVisibleSubview(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a1[2], *(a1[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for ListScrollable(0, v5, WitnessTable, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = CollectionViewListScrollable.base.getter(a1, &v14 - v10);
  return (*(v9 + 8))(v11, v8, v12);
}

uint64_t specialized CollectionViewListScrollable.setContentTarget(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a1[2], *(a1[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for ListScrollable(0, v5, WitnessTable, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = CollectionViewListScrollable.base.getter(a1, &v14 - v10);
  (*(v9 + 8))(v11, v8, v12);
  return 0;
}

uint64_t specialized CollectionViewListScrollable.adjustContentOffset(by:reason:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShadowListDataSource(255, a2[2], *(a2[4] + 8), a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for ListScrollable(0, v5, WitnessTable, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = CollectionViewListScrollable.base.getter(a2, &v14 - v10);
  (*(v9 + 8))(v11, v8, v12);
  return 0;
}

uint64_t getEnumTagSinglePayload for MakeRepresentable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 20))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeRepresentable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithTake for ListRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRepresentable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t storeEnumTagSinglePayload for ListRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for CollectionViewListScrollable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for CollectionViewListScrollable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for CollectionViewListScrollable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>, &type metadata for UserInteractionActivityKey, &protocol witness table for UserInteractionActivityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionViewListUtilities.CoordinatorKind and conformance CollectionViewListUtilities.CoordinatorKind()
{
  result = lazy protocol witness table cache variable for type CollectionViewListUtilities.CoordinatorKind and conformance CollectionViewListUtilities.CoordinatorKind;
  if (!lazy protocol witness table cache variable for type CollectionViewListUtilities.CoordinatorKind and conformance CollectionViewListUtilities.CoordinatorKind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListUtilities.CoordinatorKind, &type metadata for CollectionViewListUtilities.CoordinatorKind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionViewListUtilities.CoordinatorKind and conformance CollectionViewListUtilities.CoordinatorKind);
  }

  return result;
}

uint64_t static AnimatedValuePlaybackConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v11, v2, v5);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v3, v4, v6);
  LOBYTE(v3) = specialized static AnimatedValuePlaybackConfiguration.Mode.== infix(_:_:)(&v11, &v8);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v8, v9, v10);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v11, v12, v13);
  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimatedValuePlaybackConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v11, v2, v5);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v3, v4, v6);
  LOBYTE(v3) = specialized static AnimatedValuePlaybackConfiguration.Mode.== infix(_:_:)(&v11, &v8);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v8, v9, v10);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v11, v12, v13);
  return v3 & 1;
}

void static AnimatedValuePlaybackConfiguration.scrubbing(time:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void static AnimatedValuePlaybackConfiguration.scrubbing(progress:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 64;
}

void *static AnimatedValuePlaybackConfiguration.onChange<A>(of:interruptionBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v8 = *v7;
  v9 = *(v7 + 8);
  (*(v10 + 16))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  result = AnyEquatable.init<A>(_:)();
  *a4 = v13[1];
  *(a4 + 8) = v8;
  *(a4 + 16) = v9 | 0x80;
  return result;
}

uint64_t static AnimatedValuePlaybackConfiguration.repeating(autoreverses:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = -64;
  return result;
}

void static AnimatedValuePlaybackConfiguration.repeating.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -64;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimatedValuePlaybackConfiguration.InterruptionBehavior.Behavior(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t static AnimatedValuePlaybackConfiguration.InterruptionBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimatedValuePlaybackConfiguration.InterruptionBehavior(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static AnimatedValuePlaybackConfiguration.Mode.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 != 2)
    {
      if (v7 > 0xBF)
      {
        outlined consume of AnimatedValuePlaybackConfiguration.Mode(*a1, v2, v4);
        outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
        v10 = v6 ^ v3 ^ 1;
        return v10 & 1;
      }

      goto LABEL_16;
    }

    if ((v7 & 0xC0) != 0x80)
    {

      goto LABEL_16;
    }

    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    v9 = static AnyEquatable.== infix(_:_:)();
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    if (v9)
    {
      if ((v4 & 1) == 0)
      {
        if ((v7 & 1) != 0 || *&v2 != *&v5)
        {
          goto LABEL_17;
        }

LABEL_21:
        v10 = 1;
        return v10 & 1;
      }

      if (v7)
      {
        goto LABEL_21;
      }
    }

LABEL_17:
    v10 = 0;
    return v10 & 1;
  }

  if (!v8)
  {
    if (v7 >= 0x40)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if ((v7 & 0xC0) != 0x40)
  {
LABEL_16:
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    goto LABEL_17;
  }

LABEL_12:
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(*a1, v2, v4);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
  v10 = *&v3 == *&v6;
  return v10 & 1;
}

uint64_t initializeBufferWithCopyOfBuffer for AnimatedValuePlaybackConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AnimatedValuePlaybackConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AnimatedValuePlaybackConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValuePlaybackConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnimatedValuePlaybackConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void key path getter for EnvironmentValues.pageIndexDisplayMode : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.pageIndexDisplayMode : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t PageIndexViewStyle._makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];

  v8 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    result = _VariadicView_Children.endIndex.getter();
    if (v8 < 0 || result < v8)
    {
      goto LABEL_16;
    }

    v10 = MEMORY[0x1E69E7CC0];
    if (!v8)
    {
LABEL_13:
      v15 = qword_18CDF8AB8[v4];
      result = swift_getKeyPath();
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v7;
      *(a2 + 24) = v10;
      *(a2 + 32) = v15;
      *(a2 + 40) = result;
      *(a2 + 48) = 0;
      return result;
    }

    v16 = v4;
    v17 = v5;
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = 0;
    v10 = v20;
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      v12 = one-time initialization token for defaultValue;

      if (v12 != -1)
      {
        swift_once();
      }

      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined destroy of _VariadicView_Children.Element(v18);

      v20 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v14 + 1;
      memcpy((v10 + 632 * v14 + 32), __src, 0x271uLL);
      result = _VariadicView_Children.endIndex.getter();
      if (v11 >= result)
      {
        break;
      }

      if (v8 == ++v11)
      {
        v5 = v17;
        v4 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t UIKitPageIndexView.index.getter()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v3);
  return v3;
}

id UIKitPageIndexView.makeCoordinator()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = type metadata accessor for Coordinator();

  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_lastIndicators;
  *&v5[v6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI5ImageVACE8ResolvedVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = &v5[OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_index];
  *v7 = v1;
  *(v7 + 1) = v2;
  *(v7 + 2) = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t UIKitPageIndexView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(a3 + 16);
  v9 = *(*(*(a3 + 24) + 8) + 8);
  v10 = *(v9 + 8);
  v139 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x1EEE9AC00](v139);
  v140 = v10;
  v147 = type metadata accessor for EnumeratedSequence.Iterator();
  v137 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v135 - v11;
  v12 = *(a2 + 40);
  v13 = *v4;
  v14 = v4[1];
  v15 = v4[2];
  v148 = v12;
  v16 = (v12 + OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_index);
  *v16 = v13;
  v16[1] = v14;
  v16[2] = v15;

  v144 = v5[9];
  v138 = v9;
  v17 = dispatch thunk of Collection.count.getter();
  v18 = [a1 numberOfPages] == v17;
  v19 = a1;
  v145 = a1;
  v142 = v8;
  v143 = v4;
  v141 = v5;
  if (v18)
  {
LABEL_17:
    if ([v19 backgroundStyle] != *(v4 + v5[10]))
    {
      [v145 setBackgroundStyle_];
    }

    v49 = [v145 allowsContinuousInteraction];
    v50 = v148;
    if ((v49 & 1) == 0)
    {
      [v145 setAllowsContinuousInteraction_];
    }

    v51 = specialized Environment.wrappedValue.getter(*(v4 + v5[11]), *(v4 + v5[11] + 8));
    if ((v51 != 1) != [v145 hidesForSinglePage])
    {
      [v145 setHidesForSinglePage_];
    }

    MEMORY[0x18D00CB20](v8, v140);
    EnumeratedSequence.makeIterator()();
    v52 = OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_lastIndicators;
    swift_beginAccess();
    EnumeratedSequence.Iterator.next()();
    v53 = *(&v214[0] + 1);
    v54 = *&v214[0];
    memcpy(v215, &v214[1], 0x269uLL);
    if (!*(&v214[0] + 1))
    {
LABEL_66:
      (*(v137 + 8))(v146, v147);
      v131 = [v145 currentPage];
      if (v131 != UIKitPageIndexView.index.getter())
      {
        [v145 setCurrentPage_];
      }

      result = dispatch thunk of Collection.isEmpty.getter();
      if ((result & 1) == 0)
      {
        *&v187[0] = UIKitPageIndexView.index.getter();
        v133 = dispatch thunk of Collection.subscript.read();
        outlined init with copy of PlatformItem(v134, v214);
        v133(v215, 0);
        specialized PlatformItem.applyAccessibilityProperties(to:)(v145, v214);
        return outlined destroy of PlatformItem(v214);
      }

      return result;
    }

    v55 = MEMORY[0x1E6981730];
    while (1)
    {
      *&v214[0] = v53;
      memcpy(v214 + 8, v215, 0x269uLL);
      v213[11] = *&v215[27];
      v213[12] = *&v215[29];
      v213[13] = *&v215[31];
      v213[7] = *&v215[19];
      v213[8] = *&v215[21];
      v213[10] = *&v215[25];
      v213[9] = *&v215[23];
      v213[3] = *&v215[11];
      v213[4] = *&v215[13];
      v213[6] = *&v215[17];
      v213[5] = *&v215[15];
      v212 = *&v215[3];
      v213[0] = *&v215[5];
      v213[2] = *&v215[9];
      v213[1] = *&v215[7];
      if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v212) == 1)
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v201);
      }

      else
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(v213 + 8, v187, &lazy cache variable for type metadata for Image.Resolved?, v55);
        v209 = *(&v213[8] + 8);
        v210 = *(&v213[9] + 8);
        v211[0] = *(&v213[10] + 8);
        *(v211 + 11) = *(&v213[11] + 3);
        v205 = *(&v213[4] + 8);
        v206 = *(&v213[5] + 8);
        v207 = *(&v213[6] + 8);
        v208 = *(&v213[7] + 8);
        v201 = *(v213 + 8);
        v202 = *(&v213[1] + 8);
        v203 = *(&v213[2] + 8);
        v204 = *(&v213[3] + 8);
      }

      v76 = *(v50 + v52);
      if (*(v76 + 16))
      {
        v77 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
        if (v78)
        {
          v79 = (*(v76 + 56) + 192 * v77);
          v81 = v79[2];
          v80 = v79[3];
          v82 = v79[1];
          v186[0] = *v79;
          v186[1] = v82;
          v186[2] = v81;
          v186[3] = v80;
          v83 = v79[4];
          v84 = v79[5];
          v85 = v79[6];
          v186[7] = v79[7];
          v186[6] = v85;
          v186[5] = v84;
          v186[4] = v83;
          v86 = v79[8];
          v87 = v79[9];
          v88 = v79[10];
          *(&v186[10] + 11) = *(v79 + 171);
          v186[10] = v88;
          v186[9] = v87;
          v186[8] = v86;
          memmove(v187, v79, 0xBBuLL);
          destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
          outlined init with copy of Image.Resolved(v186, &v190);
        }

        else
        {
          _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v187);
        }

        v198 = v187[8];
        v199 = v187[9];
        v200[0] = v187[10];
        *(v200 + 11) = *(&v187[10] + 11);
        v194 = v187[4];
        v195 = v187[5];
        v196 = v187[6];
        v197 = v187[7];
        v190 = v187[0];
        v191 = v187[1];
        v192 = v187[2];
        v193 = v187[3];
      }

      else
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v190);
      }

      v187[8] = v209;
      v187[9] = v210;
      v187[10] = v211[0];
      *(&v187[10] + 11) = *(v211 + 11);
      v187[4] = v205;
      v187[5] = v206;
      v187[6] = v207;
      v187[7] = v208;
      v187[0] = v201;
      v187[1] = v202;
      v187[2] = v203;
      v187[3] = v204;
      v187[20] = v198;
      v187[21] = v199;
      v187[22] = v200[0];
      *(&v187[22] + 11) = *(v200 + 11);
      v187[16] = v194;
      v187[17] = v195;
      v187[18] = v196;
      v187[19] = v197;
      v187[12] = v190;
      v187[13] = v191;
      v187[14] = v192;
      v187[15] = v193;
      v188[8] = v209;
      v188[9] = v210;
      v189[0] = v211[0];
      *(v189 + 11) = *(v211 + 11);
      v188[4] = v205;
      v188[5] = v206;
      v188[6] = v207;
      v188[7] = v208;
      v188[0] = v201;
      v188[1] = v202;
      v188[2] = v203;
      v188[3] = v204;
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v188) == 1)
      {
        break;
      }

      v183 = v209;
      v184 = v210;
      v185[0] = v211[0];
      *(v185 + 11) = *(v211 + 11);
      v179 = v205;
      v180 = v206;
      v181 = v207;
      v182 = v208;
      v175 = v201;
      v176 = v202;
      v177 = v203;
      v178 = v204;
      v172 = v209;
      v173 = v210;
      v174[0] = v211[0];
      *(v174 + 11) = *(v211 + 11);
      v168 = v205;
      v169 = v206;
      v170 = v207;
      v171 = v208;
      v164 = v201;
      v165 = v202;
      v166 = v203;
      v167 = v204;
      v186[8] = v187[20];
      v186[9] = v187[21];
      v186[10] = v187[22];
      *(&v186[10] + 11) = *(&v187[22] + 11);
      v186[4] = v187[16];
      v186[5] = v187[17];
      v186[6] = v187[18];
      v186[7] = v187[19];
      v186[0] = v187[12];
      v186[1] = v187[13];
      v186[2] = v187[14];
      v186[3] = v187[15];
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v186) == 1)
      {
        v161 = v209;
        v162 = v210;
        v163[0] = v211[0];
        *(v163 + 11) = *(v211 + 11);
        v157 = v205;
        v158 = v206;
        v159 = v207;
        v160 = v208;
        v153 = v201;
        v154 = v202;
        v155 = v203;
        v156 = v204;
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(&v175, v151, &lazy cache variable for type metadata for Image.Resolved?, v55);
        outlined destroy of Image.Resolved(&v153);
        v50 = v148;
LABEL_42:
        memcpy(v186, v187, 0x17BuLL);
        outlined destroy of (Image.Resolved?, Image.Resolved?)(v186);
        goto LABEL_43;
      }

      v161 = v187[20];
      v162 = v187[21];
      v163[0] = v187[22];
      *(v163 + 11) = *(&v187[22] + 11);
      v157 = v187[16];
      v158 = v187[17];
      v159 = v187[18];
      v160 = v187[19];
      v153 = v187[12];
      v154 = v187[13];
      v155 = v187[14];
      v156 = v187[15];
      _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(&v175, v151, &lazy cache variable for type metadata for Image.Resolved?, v55);
      v116 = specialized static Image.Resolved.== infix(_:_:)(&v164, &v153);
      v149[8] = v161;
      v149[9] = v162;
      v150[0] = v163[0];
      *(v150 + 11) = *(v163 + 11);
      v149[4] = v157;
      v149[5] = v158;
      v149[6] = v159;
      v149[7] = v160;
      v149[0] = v153;
      v149[1] = v154;
      v149[2] = v155;
      v149[3] = v156;
      outlined destroy of Image.Resolved(v149);
      v151[8] = v172;
      v151[9] = v173;
      v152[0] = v174[0];
      *(v152 + 11) = *(v174 + 11);
      v151[4] = v168;
      v151[5] = v169;
      v151[6] = v170;
      v151[7] = v171;
      v151[0] = v164;
      v151[1] = v165;
      v151[2] = v166;
      v151[3] = v167;
      outlined destroy of Image.Resolved(v151);
      v161 = v209;
      v162 = v210;
      v163[0] = v211[0];
      *(v163 + 11) = *(v211 + 11);
      v157 = v205;
      v158 = v206;
      v159 = v207;
      v160 = v208;
      v153 = v201;
      v154 = v202;
      v155 = v203;
      v156 = v204;
      _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(&v153, &lazy cache variable for type metadata for Image.Resolved?, v55);
      v50 = v148;
      if (v116)
      {
        goto LABEL_27;
      }

LABEL_43:
      Platform = PlatformItem.coreMakePlatformImage()();
      if (Platform)
      {
        objc_opt_self();
        Platform = swift_dynamicCastObjCClassUnconditional();
      }

      [v145 setIndicatorImage:Platform forPage:v54];

      v187[12] = v214[14];
      v187[13] = v214[15];
      v187[14] = v214[16];
      v187[8] = v214[10];
      v187[9] = v214[11];
      v187[11] = v214[13];
      v187[10] = v214[12];
      v187[4] = v214[6];
      v187[5] = v214[7];
      v187[7] = v214[9];
      v187[6] = v214[8];
      v187[0] = v214[2];
      v187[1] = v214[3];
      v187[3] = v214[5];
      v187[2] = v214[4];
      if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v187) == 1)
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v186);
      }

      else
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(&v187[1] + 8, v186, &lazy cache variable for type metadata for Image.Resolved?, v55);
        v186[8] = *(&v187[9] + 8);
        v186[9] = *(&v187[10] + 8);
        v186[10] = *(&v187[11] + 8);
        *(&v186[10] + 11) = *(&v187[12] + 3);
        v186[4] = *(&v187[5] + 8);
        v186[5] = *(&v187[6] + 8);
        v186[6] = *(&v187[7] + 8);
        v186[7] = *(&v187[8] + 8);
        v186[0] = *(&v187[1] + 8);
        v186[1] = *(&v187[2] + 8);
        v186[2] = *(&v187[3] + 8);
        v186[3] = *(&v187[4] + 8);
      }

      swift_beginAccess();
      v183 = v186[8];
      v184 = v186[9];
      v185[0] = v186[10];
      *(v185 + 11) = *(&v186[10] + 11);
      v179 = v186[4];
      v180 = v186[5];
      v181 = v186[6];
      v182 = v186[7];
      v175 = v186[0];
      v176 = v186[1];
      v177 = v186[2];
      v178 = v186[3];
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v175) == 1)
      {
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
        if (v91)
        {
          v92 = v90;
          v93 = v148;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = *(v93 + v52);
          *&v151[0] = v95;
          *(v93 + v52) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v95 = *&v151[0];
          }

          v96 = (*(v95 + 56) + 192 * v92);
          v98 = v96[2];
          v97 = v96[3];
          v99 = v96[1];
          v164 = *v96;
          v165 = v99;
          v166 = v98;
          v167 = v97;
          v100 = v96[4];
          v101 = v96[5];
          v102 = v96[7];
          v170 = v96[6];
          v171 = v102;
          v168 = v100;
          v169 = v101;
          v103 = v96[8];
          v104 = v96[9];
          v105 = v96[10];
          *(v174 + 11) = *(v96 + 171);
          v173 = v104;
          v174[0] = v105;
          v172 = v103;
          outlined destroy of Image.Resolved(&v164);
          specialized _NativeDictionary._delete(at:)(v92, v95);
          *(v93 + v52) = v95;
        }
      }

      else
      {
        v106 = swift_isUniquelyReferenced_nonNull_native();
        *&v151[0] = *(v50 + v52);
        v107 = *&v151[0];
        *(v50 + v52) = 0x8000000000000000;
        v108 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
        v110 = *(v107 + 16);
        v111 = (v109 & 1) == 0;
        v112 = __OFADD__(v110, v111);
        v113 = v110 + v111;
        if (v112)
        {
          goto LABEL_72;
        }

        v114 = v109;
        if (*(v107 + 24) >= v113)
        {
          if (v106)
          {
            if ((v109 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v130 = v108;
            specialized _NativeDictionary.copy()();
            v108 = v130;
            if ((v114 & 1) == 0)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v113, v106);
          v108 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
          if ((v114 & 1) != (v115 & 1))
          {
            goto LABEL_74;
          }

          if ((v114 & 1) == 0)
          {
LABEL_62:
            v117 = *&v151[0];
            *(*&v151[0] + 8 * (v108 >> 6) + 64) |= 1 << v108;
            *(v117[6] + 8 * v108) = v54;
            v118 = (v117[7] + 192 * v108);
            v119 = v186[3];
            v120 = v186[1];
            v121 = v186[0];
            v118[2] = v186[2];
            v118[3] = v119;
            *v118 = v121;
            v118[1] = v120;
            v122 = v186[7];
            v123 = v186[5];
            v124 = v186[4];
            v118[6] = v186[6];
            v118[7] = v122;
            v118[4] = v124;
            v118[5] = v123;
            v125 = v186[8];
            v126 = v186[9];
            v127 = v186[10];
            *(v118 + 171) = *(&v186[10] + 11);
            v118[9] = v126;
            v118[10] = v127;
            v118[8] = v125;
            v128 = v117[2];
            v112 = __OFADD__(v128, 1);
            v129 = v128 + 1;
            if (v112)
            {
              goto LABEL_73;
            }

            v117[2] = v129;
            *(v148 + v52) = v117;
            goto LABEL_26;
          }
        }

        v56 = *&v151[0];
        v57 = (*(*&v151[0] + 56) + 192 * v108);
        v58 = v57[3];
        v60 = *v57;
        v59 = v57[1];
        v166 = v57[2];
        v167 = v58;
        v164 = v60;
        v165 = v59;
        v61 = v57[7];
        v63 = v57[4];
        v62 = v57[5];
        v170 = v57[6];
        v171 = v61;
        v168 = v63;
        v169 = v62;
        v65 = v57[9];
        v64 = v57[10];
        v66 = v57[8];
        *(v174 + 11) = *(v57 + 171);
        v173 = v65;
        v174[0] = v64;
        v172 = v66;
        v67 = v186[0];
        v68 = v186[1];
        v69 = v186[3];
        v57[2] = v186[2];
        v57[3] = v69;
        *v57 = v67;
        v57[1] = v68;
        v70 = v186[4];
        v71 = v186[5];
        v72 = v186[7];
        v57[6] = v186[6];
        v57[7] = v72;
        v57[4] = v70;
        v57[5] = v71;
        v73 = v186[8];
        v74 = v186[9];
        v75 = v186[10];
        *(v57 + 171) = *(&v186[10] + 11);
        v57[9] = v74;
        v57[10] = v75;
        v57[8] = v73;
        outlined destroy of Image.Resolved(&v164);
        *(v148 + v52) = v56;
      }

LABEL_26:
      swift_endAccess();
      v50 = v148;
LABEL_27:
      outlined destroy of PlatformItem(v214);
      EnumeratedSequence.Iterator.next()();
      v53 = *(&v214[0] + 1);
      v54 = *&v214[0];
      memcpy(v215, &v214[1], 0x269uLL);
      if (!*(&v214[0] + 1))
      {
        goto LABEL_66;
      }
    }

    v186[8] = v187[20];
    v186[9] = v187[21];
    v186[10] = v187[22];
    *(&v186[10] + 11) = *(&v187[22] + 11);
    v186[4] = v187[16];
    v186[5] = v187[17];
    v186[6] = v187[18];
    v186[7] = v187[19];
    v186[0] = v187[12];
    v186[1] = v187[13];
    v186[2] = v187[14];
    v186[3] = v187[15];
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v186) == 1)
    {
      v183 = v209;
      v184 = v210;
      v185[0] = v211[0];
      *(v185 + 11) = *(v211 + 11);
      v179 = v205;
      v180 = v206;
      v181 = v207;
      v182 = v208;
      v175 = v201;
      v176 = v202;
      v177 = v203;
      v178 = v204;
      _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(&v175, &lazy cache variable for type metadata for Image.Resolved?, v55);
      goto LABEL_27;
    }

    goto LABEL_42;
  }

  [a1 setNumberOfPages_];
  v20 = OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_lastIndicators;
  v21 = v148;
  swift_beginAccess();
  v136 = v20;
  v22 = *(v21 + v20);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  while (v25)
  {
LABEL_5:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = *(*(v22 + 48) + ((v27 << 9) | (8 * v28)));
    if (v29 >= v17)
    {
      swift_beginAccess();
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
      if (v32)
      {
        v135 = v31;
        v33 = v148;
        v34 = v136;
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v33 + v34);
        *&v187[0] = v36;
        *(v33 + v34) = 0x8000000000000000;
        if (!v35)
        {
          specialized _NativeDictionary.copy()();
          v36 = *&v187[0];
        }

        v37 = v135;
        v38 = (*(v36 + 56) + 192 * v135);
        v40 = v38[2];
        v39 = v38[3];
        v41 = v38[1];
        v214[0] = *v38;
        v214[1] = v41;
        v214[2] = v40;
        v214[3] = v39;
        v42 = v38[4];
        v43 = v38[5];
        v44 = v38[6];
        v214[7] = v38[7];
        v214[6] = v44;
        v214[5] = v43;
        v214[4] = v42;
        v45 = v38[8];
        v46 = v38[9];
        v47 = v38[10];
        *(&v214[10] + 11) = *(v38 + 171);
        v214[10] = v47;
        v214[9] = v46;
        v214[8] = v45;
        v48 = v36;
        outlined destroy of Image.Resolved(v214);
        specialized _NativeDictionary._delete(at:)(v37, v48);
        *(v148 + v136) = v48;
      }

      swift_endAccess();
    }
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v26)
    {

      v19 = v145;
      v8 = v142;
      v4 = v143;
      v5 = v141;
      goto LABEL_17;
    }

    v25 = *(v22 + 64 + 8 * v30);
    ++v27;
    if (v25)
    {
      v27 = v30;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitPageIndexView<A>@<X0>(void *a1@<X8>)
{
  result = UIKitPageIndexView.makeCoordinator()();
  *a1 = result;
  return result;
}

double closure #1 in Coordinator.pageDidChange(_:)(char a1)
{
  v2 = 0;
  if (a1)
  {
    v2 = static Animation.default.getter();
  }

  MEMORY[0x1EEE9AC00](v2);
  withAnimation<A>(_:_:)();

  return result;
}

void closure #1 in closure #1 in Coordinator.pageDidChange(_:)(uint64_t a1, void *a2)
{

  [a2 currentPage];
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t type metadata completion function for UIKitPageIndexView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitPageIndexView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((v7 + ((v6 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = a2[2];
    a1[1] = a2[1];
    a1[2] = v12;
    v13 = (a1 + v6 + 24) & ~v6;
    v14 = (a2 + v6 + 24) & ~v6;
    v15 = *(v5 + 16);

    v15(v13, v14, v4);
    v16 = ((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
    v17 = (v7 + v14) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v17 += 15;
    *v16 = v18;
    v19 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v17 & 0xFFFFFFFFFFFFFFF8);
    v21 = *((v17 & 0xFFFFFFFFFFFFFFF8) + 8);
    outlined copy of Environment<Selector?>.Content(v20, v21);
    *v19 = v20;
    *(v19 + 8) = v21;
  }

  return a1;
}

uint64_t destroy for UIKitPageIndexView(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 24) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (((*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 8);

  return outlined consume of Environment<Selector?>.Content(v8, v9);
}

uint64_t *initializeWithCopy for UIKitPageIndexView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (a1 + v8 + 24) & ~v8;
  v10 = (a2 + v8 + 24) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v5) = *(v15 + 8);
  outlined copy of Environment<Selector?>.Content(*v15, v5);
  *v14 = v16;
  *(v14 + 8) = v5;
  return a1;
}

uint64_t *assignWithCopy for UIKitPageIndexView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 24) & ~v8;
  v10 = (a2 + v8 + 24) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v10) = *(v15 + 8);
  outlined copy of Environment<Selector?>.Content(*v15, v10);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v10;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

uint64_t initializeWithTake for UIKitPageIndexView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 24 + a1) & ~v6;
  v8 = (v6 + 24 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;
  return a1;
}

void *assignWithTake for UIKitPageIndexView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 24) & ~v8;
  v10 = (a2 + v8 + 24) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitPageIndexView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 24] & ~v6);
    }

    v17 = *(a1 + 1);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for UIKitPageIndexView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 24] & ~v9;

        v17(v18);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t lazy protocol witness table accessor for type PageViewBackgroundDisplayMode and conformance PageViewBackgroundDisplayMode()
{
  result = lazy protocol witness table cache variable for type PageViewBackgroundDisplayMode and conformance PageViewBackgroundDisplayMode;
  if (!lazy protocol witness table cache variable for type PageViewBackgroundDisplayMode and conformance PageViewBackgroundDisplayMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PageViewBackgroundDisplayMode, &type metadata for PageViewBackgroundDisplayMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PageViewBackgroundDisplayMode and conformance PageViewBackgroundDisplayMode);
  }

  return result;
}

void specialized PlatformItem.applyAccessibilityProperties(to:)(void *a1, uint64_t a2)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(a2 + 328, v27, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  if (!v28)
  {
    goto LABEL_23;
  }

  PlatformItem.AccessibilityContent.environment.getter();
  outlined destroy of PlatformItem.AccessibilityContent(v27);
  v25 = v20;
  v26 = v21;
  v4 = EnvironmentValues.accessibilityEnabled.getter();

  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = PlatformItem.accessibilityEffectiveText.getter();
  if (v5)
  {
    v6 = v5;
    [a1 setAccessibilityAttributedValue_];
  }

  _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(a2 + 328, v27, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  if (v28)
  {
    outlined init with copy of AccessibilityProperties(v27, &v20);
    outlined destroy of PlatformItem.AccessibilityContent(v27);
    v8 = v20;
    v7 = v21;
    v9 = v22;

    outlined destroy of AccessibilityProperties(&v20);
    if (v7)
    {
      if (v9 >= 2)
      {
      }

      else
      {
        v10 = MEMORY[0x18D00C850](v8, v7);

        [a1 setAccessibilityIdentifier_];
      }
    }
  }

  else
  {
    _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(v27, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  }

  _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(a2 + 328, v27, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  if (v28)
  {
    outlined init with copy of AccessibilityProperties(v27, &v20);
    outlined destroy of PlatformItem.AccessibilityContent(v27);
    v11 = v23;
    v12 = v24;
    outlined destroy of AccessibilityProperties(&v20);
    if ((v12 & 1) == 0)
    {
      v13 = [a1 accessibilityTraits];
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v14 + 32];
        v17 = v16 > 0xD || ((1 << v16) & 0x2844) == 0;
        if (!v17 && ((v11 >> v16) & 1) != 0)
        {
          v27[0] = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v14 + 32];
          v18 = AccessibilityTrait.uiTrait.getter();
          if ((v19 & 1) == 0)
          {
            v15 |= v18;
          }
        }

        ++v14;
      }

      while (v14 != 32);
      [a1 setAccessibilityTraits_];
    }
  }

  else
  {
LABEL_23:
    _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(v27, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  }
}

id specialized UIKitPageIndexView.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
  [v2 addTarget:v1 action:sel_pageDidChange_ forControlEvents:4096];
  return v2;
}

uint64_t outlined destroy of (Image.Resolved?, Image.Resolved?)(uint64_t a1)
{
  type metadata accessor for (Image.Resolved?, Image.Resolved?)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AccessibilityFocusState.Binding.propertyID.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for AccessibilityFocusStoreLocation(0, v4, v5, a4);
  if (swift_dynamicCastClass())
  {
    return FocusStoreLocation.id.getter();
  }

  return type metadata accessor for AccessibilityFocusState.Binding.PrivateType(0, v4, v5, v6);
}

void AccessibilityFocusState.Binding.wrappedValue.getter(uint64_t a1)
{
  type metadata accessor for Binding();

  JUMPOUT(0x18D00ACC0);
}

void (*AccessibilityFocusState.Binding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[4] = v11;
  v12 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v12);
  return FocusState.Binding.wrappedValue.modify;
}

uint64_t AccessibilityFocusState.Binding.wrappedValue.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t (*AccessibilityFocusState.wrappedValue.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  AccessibilityFocusState.getValue(forReading:)(1, a2, v11);
  return AccessibilityFocusState.wrappedValue.modify;
}

void AccessibilityFocusState.wrappedValue.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *v2;
    v3 = v2[1];
    (*(v2[3] + 16))(v2[4], v2[5], v2[2]);
    if (*(v3 + *(v4 + 40)))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    v6 = v2[4];
    v5 = v2[5];
    v7 = v2[2];
    v8 = *(v2[3] + 8);
    v8(v6, v7);
    v8(v5, v7);
  }

  else
  {
    if (*(v2[1] + *(*v2 + 40)))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    v6 = v2[4];
    v5 = v2[5];
    (*(v2[3] + 8))(v5, v2[2]);
  }

  free(v5);
  free(v6);

  free(v2);
}

void AccessibilityFocusState.init<>()(uint64_t a1@<X8>)
{
  *a1 = 0x10000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t AccessibilityFocusState.init<>(for:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x10000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  result = AccessibilityTechnologySet.assertAllSupportFocus()(*a1);
  *a2 = v3;
  *(a2 + 2) = 0;
  return result;
}

uint64_t AccessibilityFocusState.init<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 2) = 1;
  v6 = type metadata accessor for Optional();
  v12 = a2;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E7C78], v6, &v12);
  v9 = type metadata accessor for AccessibilityFocusState(0, v6, WitnessTable, v8);
  *(a3 + v9[10]) = 0;
  v10 = *(*(a1 - 8) + 56);
  v10(a3 + v9[9], 1, 1, a1);
  return (v10)(a3 + v9[11], 1, 1, a1);
}

uint64_t AccessibilityFocusState.init<A>(for:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 2) = 1;
  v7 = *a1;
  v8 = type metadata accessor for Optional();
  v14 = a3;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E7C78], v8, &v14);
  v11 = type metadata accessor for AccessibilityFocusState(0, v8, WitnessTable, v10);
  *(a4 + v11[10]) = 0;
  v12 = *(*(a2 - 8) + 56);
  v12(a4 + v11[9], 1, 1, a2);
  v12(a4 + v11[11], 1, 1, a2);
  result = AccessibilityTechnologySet.assertAllSupportFocus()(v7);
  *a4 = v7;
  *(a4 + 2) = 0;
  return result;
}

uint64_t AccessibilityFocusBindingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v4 = *(a2 + 16);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v36 = v7;
  v38 = type metadata accessor for AccessibilityFocusState.Binding(0, v4, v7, v8);
  v9 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v35 - v10;
  v35 = type metadata accessor for AccessibilityFocusStoreListModifier(0, v4, v7, v12);
  v39 = *(v35 - 8);
  v13 = MEMORY[0x1EEE9AC00](v35);
  v15 = &v35 - v14;
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusBindingModifier<A>, a2, v13);
  v16 = type metadata accessor for _ViewModifier_Content();
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - v23;
  v25 = *(v9 + 16);
  v26 = v11;
  v27 = v11;
  v28 = v37;
  v25(v27, v37, v38, v22);
  v29 = v28 + *(a2 + 36);
  v30 = v40;
  (*(v41 + 16))(v40, v29, v4);
  AccessibilityFocusStoreListModifier.init(binding:prototype:)(v26, v30, v4, v36, v15);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v16);
  v32 = v35;
  MEMORY[0x18D00A570](v15, v16, v35, WitnessTable);
  (*(v39 + 8))(v15, v32);
  v43[0] = WitnessTable;
  v43[1] = &protocol witness table for AccessibilityFocusStoreListModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v17, v43);
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = *(v18 + 8);
  v33(v20, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v33)(v24, v17);
}

uint64_t specialized AccessibilityFocusState.wrappedValue.setter(uint64_t result, uint64_t a2)
{
  if (*(v2 + *(a2 + 40)))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v3;
}

void *initializeBufferWithCopyOfBuffer for AccessibilityFocusState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v7 + 7;
  v9 = ((((((-4 - v6) | v6) - (v7 + 7)) | 7) - v6 - 8) | v6) - v7;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v13 = (a1 + v6 + 3) & ~v6;
    v14 = (a2 + v6 + 3) & ~v6;
    v15 = *(v5 + 16);
    v15(v13, v14, v4);
    v16 = ((v8 + v13) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v8 + v14) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;

    v15((v16 + 1), (v17 + 1), v4);
  }

  else
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t initializeWithTake for AccessibilityFocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v8 = *(v5 + 80);
  v9 = (v8 + 3 + a1) & ~v8;
  v10 = (v8 + 3 + a2) & ~v8;
  v6(v9, v10, v4);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v6((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v4);
  return a1;
}

uint64_t assignWithTake for AccessibilityFocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v8 = *(v5 + 80);
  v9 = (v8 + 3 + a1) & ~v8;
  v10 = (v8 + 3 + a2) & ~v8;
  v6(v9, v10, v4);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v6((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityFocusState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 + 7;
  v10 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v6 + ((v9 + ((v6 + 3) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6) + v7;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      v17 = (a1 + v6 + 3) & ~v6;
      if (v5 >= 0x7FFFFFFE)
      {
        return (*(v4 + 48))(v17);
      }

      v18 = *((v9 + v17) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
      {
        return v18;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for AccessibilityFocusState(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + 7;
  v12 = ((v9 + ((v10 + 7 + ((v9 + 3) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9) + v10;
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v12] = 0;
  }

  else if (v15)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v21 = &a1[v9 + 3] & ~v9;
  if (v7 < 0x7FFFFFFE)
  {
    v23 = ((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }

  else
  {
    v22 = *(v6 + 56);

    v22(v21);
  }
}

uint64_t assignWithCopy for AccessibilityFocusState.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for AccessibilityFocusState.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t _ConditionalContent<>.ToolbarProvider.detachOutputs()()
{

  PreferencesOutputs.detachIndirectOutputs()();
}

uint64_t _ConditionalContent<>.ToolbarProvider.makeFalseOutputs(child:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *&v23[12] = *(a2 + 60);
  v5 = a2[3];
  v22[2] = a2[2];
  *v23 = v5;
  v6 = a2[1];
  v22[0] = *a2;
  v22[1] = v6;
  v7 = *&v23[24];
  v8 = *&v23[16] + 1;
  v9 = *(a3 + 24);
  outlined init with copy of _ToolbarInputs(v22, v29);
  _GraphValue.init(_:)();
  v10 = a2[3];
  v25 = a2[2];
  *v26 = v10;
  v11 = a2[1];
  v24[0] = *a2;
  v24[1] = v11;
  *&v26[16] = v8;
  *&v26[24] = v7;
  v19 = v25;
  *v20 = v10;
  *&v20[12] = *&v26[12];
  v17 = v24[0];
  v18 = v11;
  v12 = *(a3 + 40);
  v13 = *(v12 + 32);
  outlined init with copy of _ToolbarInputs(v24, v29);
  v13(v21, &v17, v9, v12);
  v27[2] = v19;
  v28[0] = *v20;
  *(v28 + 12) = *&v20[12];
  v27[0] = v17;
  v27[1] = v18;
  outlined destroy of _ToolbarInputs(v27);
  v14 = a2[1];
  v29[0] = *a2;
  v29[1] = v14;
  v15 = a2[3];
  v29[2] = a2[2];
  v29[3] = v15;
  v30 = v8;
  v31 = v7;
  return outlined destroy of _ToolbarInputs(v29);
}

uint64_t protocol witness for ConditionalContentProvider.inputs.getter in conformance _ConditionalContent<A, B><>.ToolbarProvider@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10[0] = v2;
  *(v10 + 12) = *(v1 + 60);
  v3 = *(v10 + 12);
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 60) = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of _ToolbarInputs(v8, &v7);
}

double protocol witness for ConditionalContentProvider.outputs.getter in conformance _ConditionalContent<A, B><>.ToolbarProvider@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t instantiation function for generic protocol witness table for <> _ConditionalContent<A, B>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[1] + 8);
  v6[0] = *(*a3 + 8);
  v6[1] = v4;
  result = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a2, v6);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> A?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t ArchivedIntelligenceContent.init(from:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v8 = 1;
  if (v5 < v6)
  {
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v3[3];
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = v3[4];
      if (v5 >= v11)
      {
        break;
      }

LABEL_9:
      if (v10 >> 3 == 2)
      {
        type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
        lazy protocol witness table accessor for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>(&lazy protocol witness table cache variable for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>, protocol conformance descriptor for <A> ScrapedContentTree<A>);
        ProtobufDecoder.messageField<A>(_:)();
        if (v2)
        {
          goto LABEL_29;
        }

        v7 = v13;
        v9 = v14;
        v5 = v3[1];
        v6 = v3[2];
        if (v5 >= v6)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v10 >> 3 == 1)
        {
          if ((v10 & 7) != 0)
          {
            if ((v10 & 7) != 2)
            {
              goto LABEL_28;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_29;
            }

            if (result < 0)
            {
              __break(1u);
              return result;
            }

            v12 = v3[1] + result;
            if (v6 < v12)
            {
              goto LABEL_28;
            }

            v3[3] = 8;
            v3[4] = v12;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_29;
          }

          v8 = -(result & 1) ^ (result >> 1);
        }

        else
        {
          v13 = v10;
          result = ProtobufDecoder.skipField(_:)();
          if (v2)
          {
            goto LABEL_29;
          }
        }

        v5 = v3[1];
        v6 = v3[2];
        if (v5 >= v6)
        {
          goto LABEL_26;
        }
      }
    }

    if (v11 < v5)
    {
      goto LABEL_28;
    }

    v3[3] = 0;
LABEL_7:
    v10 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_29;
    }

    if (v10 <= 7)
    {
LABEL_28:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_29:
    }

    goto LABEL_9;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v3[3] = 0;
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  return result;
}

uint64_t lazy protocol witness table accessor for type ArchivableScrapedItem and conformance ArchivableScrapedItem(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ArchivableScrapedItem(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void _ArchivedViewHost.intelligenceContent()(void *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for OSSignpostError();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v15 = type metadata accessor for OSSignposter();
  v16 = *(v15 - 8);
  v55 = v15;
  v56 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v54 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v46 - v19;
  _ArchivedViewHost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v23 = swift_slowAlloc();
    v52 = v6;
    v24 = v23;
    *v23 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v21, v22, v25, "intelligenceContent", "", v24, 2u);
    v26 = v24;
    v2 = v1;
    v6 = v52;
    MEMORY[0x18D0110E0](v26, -1, -1);
  }

  (*(v6 + 16))(v11, v14, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v27 = OSSignpostIntervalState.init(id:isOpen:)();
  v28 = *(v6 + 8);
  v28(v14, v5);
  v29 = *(v56 + 8);
  v56 += 8;
  v29(v20, v55);
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
  static Update.ensure<A>(_:)();
  v30 = v59;
  v52 = v60;
  _ArchivedViewHost.signposter.getter();
  v31 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v48 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v46[0] = v30;

    v32 = v49;
    checkForErrorAndConsumeState(state:)();
    v46[1] = v27;

    v34 = v50;
    v33 = v51;
    v35 = (*(v50 + 88))(v32, v51);
    v36 = *MEMORY[0x1E69E93E8];
    v47 = v2;
    if (v35 == v36)
    {
      v37 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v32, v33);
      v37 = "";
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v31, v48, v39, "intelligenceContent", v37, v38, 2u);
    MEMORY[0x18D0110E0](v38, -1, -1);
    v2 = v47;
    v30 = v46[0];
  }

  v28(v8, v5);
  v29(v54, v55);
  swift_beginAccess();
  v40 = readEnvironment(_:_:)();
  swift_endAccess();
  v41 = v52;
  if (v40)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18CD63400;
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v57 = v59;
    v58 = v60;
    MEMORY[0x18D00C9B0](0x6E69766968637241, 0xEA00000000002067);
    v59 = v2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](2618, 0xE200000000000000);
    v59 = 1;
    v60 = v30;
    v61 = v41;
    _print_unlocked<A, B>(_:_:)();
    v43 = v57;
    v44 = v58;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    print(_:separator:terminator:)();
  }

  v45 = v53;
  *v53 = 1;
  v45[1] = v30;
  v45[2] = v41;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ArchivedIntelligenceContent()
{
  v1 = *v0;
  if (*v0)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v1) ^ (v1 >> 63));
  }

  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
  lazy protocol witness table accessor for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>(&lazy protocol witness table cache variable for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>, protocol conformance descriptor for <A> ScrapedContentTree<A>);
  return ProtobufEncoder.messageField<A>(_:_:)();
}

uint64_t ArchivedIntelligenceContent.encode(to:)()
{
  v1 = *v0;
  if (*v0)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v1) ^ (v1 >> 63));
  }

  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
  lazy protocol witness table accessor for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>(&lazy protocol witness table cache variable for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>, protocol conformance descriptor for <A> ScrapedContentTree<A>);
  return ProtobufEncoder.messageField<A>(_:_:)();
}

void *closure #1 in _ArchivedViewHost.intelligenceContent()@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[2];
  swift_beginAccess();
  v6 = *(v5 + 32);
  AGSubgraphRef.scrapeContent()();

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v4, v12);
  result = ScrapedContentTree<A>.init<A>(archiving:host:)(v11, a1, v4, WitnessTable, v8);
  *a2 = result;
  a2[1] = v10;
  return result;
}

void UIHostingController.collectArchivedIntelligence(from:in:collector:)(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *a1;
  v13 = specialized UIHostingController.host.getter();
  v15 = v12;
  v16 = *(a1 + 1);
  v14 = v13;
  _UIHostingView.collectArchivedIntelligence(from:in:collector:)(&v15, a2, a3, a4, a5, a6);
}

uint64_t _UIHostingView.collectArchivedIntelligence(from:in:collector:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = *MEMORY[0x1E69E7D40];
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v35 - v17;
  v19 = type metadata accessor for IntelligenceElement();
  v36 = *(v19 - 8);
  v37 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v35[0] = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v24 = type metadata accessor for _UIHostingView(0, *((v15 & v14) + 0x50), *((v15 & v14) + 0x58), v23);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v24);
  IntelligenceContext.init(visibleRect:host:fragmentCollector:)(v7, a2, v38, a3, a4, a5, a6);
  v26 = v39;
  v27 = type metadata accessor for ArchivableScrapedItem(0);

  v28 = v7;
  v35[1] = a2;

  v29 = v26;
  v30 = v36;
  v31 = v37;
  v32 = v29;

  IntelligenceElement.init<A, B>(content:context:)(v21, v22, v38, v27, v24, &protocol witness table for ArchivableScrapedItem, WitnessTable, v18);
  if ((*(v30 + 48))(v18, 1, v31) == 1)
  {

    return outlined destroy of IntelligenceElement?(v18);
  }

  else
  {
    v34 = v35[0];
    (*(v30 + 32))(v35[0], v18, v31);
    IntelligenceFragmentCollector.collect(_:)();

    return (*(v30 + 8))(v34, v31);
  }
}

uint64_t lazy protocol witness table accessor for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(255, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
    v6 = v5;
    v7[0] = lazy protocol witness table accessor for type ArchivableScrapedItem and conformance ArchivableScrapedItem(&lazy protocol witness table cache variable for type ArchivableScrapedItem and conformance ArchivableScrapedItem, protocol conformance descriptor for ArchivableScrapedItem);
    v7[1] = lazy protocol witness table accessor for type ArchivableScrapedItem and conformance ArchivableScrapedItem(&lazy protocol witness table cache variable for type ArchivableScrapedItem and conformance ArchivableScrapedItem, protocol conformance descriptor for ArchivableScrapedItem);
    result = swift_getWitnessTable(a2, v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of IntelligenceElement?(uint64_t a1)
{
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ListCoreDataSource.performDrop(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for DropCoordinator.Operation(0, TupleTypeMetadata2, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-v10];
  v12 = swift_checkMetadataState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26[-v18];
  (*(v9 + 16))(v11, a1, v8, v17);
  LOBYTE(v9) = swift_getEnumCaseMultiPayload() == 1;
  (*(v13 + 32))(v15, v11, v12);
  v20 = *&v15[*(v12 + 48)];
  v21 = swift_checkMetadataState();
  (*(*(v21 - 8) + 32))(v19, v15, v21);
  *&v19[*(v12 + 48)] = v20;
  (*(v13 + 16))(v15, v19, v12);
  v22 = *&v15[*(v12 + 48)];
  v27 = a2;
  v28 = v25;
  v29 = v9;
  v30 = a1;
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v15, v22, partial apply for closure #1 in ListCoreDataSource.performDrop(to:), v26, a2, MEMORY[0x1E69E7CA8] + 8, v25, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), &v31, _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF);
  (*(v13 + 8))(v19, v12);
  v23 = swift_checkMetadataState();
  return (*(*(v23 - 8) + 8))(v15, v23);
}

uint64_t ListCoreDataSource.canMoveCell(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21[-v15];
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 16))(&v21[-v15], a1, AssociatedTypeWitness, v14);
  *&v16[*(TupleTypeMetadata2 + 48)] = a2;
  (*(v10 + 16))(v12, v16, TupleTypeMetadata2);
  v18 = *&v12[*(TupleTypeMetadata2 + 48)];
  v22 = a3;
  v23 = a4;
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v12, v18, partial apply for closure #1 in ListCoreDataSource.canMoveCell(forRowAt:), v21, a3, MEMORY[0x1E69E6370], a4, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), &v24, _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF);
  (*(v10 + 8))(v16, TupleTypeMetadata2);
  (*(v17 + 8))(v12, AssociatedTypeWitness);
  return v24 & 1;
}

uint64_t specialized ListCoreDataSource.canMoveCell(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (*(v5 + 16) <= a3)
  {
    goto LABEL_7;
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 + 96 * a3;
    v8 = *(v6 + 112);
    v7 = *(v6 + 120);
    v9 = __OFADD__(v8, v7);
    v10 = v8 + v7;
    if (!v9)
    {
      if (v10 > a4)
      {
        v11 = result;
        type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, Int)>, type metadata accessor for (Int, Int), MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18CD63410;
        *(inited + 32) = v11;
        *(inited + 40) = a2;
        *(inited + 48) = a3;
        *(inited + 56) = a4;
        MEMORY[0x1EEE9AC00](inited);
        v18[2] = v4;
        v16 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:), v18, inited);
        swift_setDeallocating();
        if (v16[2])
        {
          v17 = specialized closure #1 in ListCoreDataSource.canMoveCell(from:to:)(v16);
        }

        else
        {
          v17 = 0;
        }

        return v17 & 1;
      }

LABEL_7:
      v17 = 0;
      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t ListCoreDataSource.canMoveCell(from:to:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a3;
  v54 = a4;
  v50 = a2;
  v52 = a1;
  v43 = a6;
  v6 = *(a6 + 8);
  v55 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v46 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v43 - v8;
  swift_getAssociatedTypeWitness();
  v49 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = swift_getAssociatedTypeWitness();
  v47 = *(v9 - 8);
  v10 = v47;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = swift_checkMetadataState();
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - v21;
  v23 = *(v10 + 16);
  v23(&v43 - v21, v52, v9, v20);
  v24 = *(TupleTypeMetadata2 + 48);
  v52 = v22;
  v25 = v51;
  *&v22[v24] = v50;
  (v23)(v18, v25, v9);
  v26 = v55;
  *&v18[*(TupleTypeMetadata2 + 48)] = v54;
  (*(v6 + 56))(v26, v6);
  dispatch thunk of Collection.endIndex.getter();
  (*(v48 + 8))(v15, v13);
  swift_getAssociatedConformanceWitness();
  LOBYTE(v23) = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v47 + 8))(v12, v9);
  if ((v23 & 1) != 0 && (v27 = v44, (*(v6 + 80))(v18, v55, v6), v28 = v46, swift_getAssociatedConformanceWitness(), dispatch thunk of Collection.endIndex.getter(), (*(v45 + 8))(v27, v28), v57 > v54))
  {
    type metadata accessor for _ContiguousArrayStorage();
    v29 = v53;
    v30 = *(v53 + 72);
    swift_allocObject();
    v31 = static Array._adoptStorage(_:count:)();
    v33 = v32;
    v34 = *(v29 + 16);
    v35 = v52;
    v34(v32, v52, TupleTypeMetadata2);
    v34(v33 + v30, v18, TupleTypeMetadata2);
    _finalizeUninitializedArray<A>(_:)(v31, TupleTypeMetadata2);
    MEMORY[0x1EEE9AC00](v36);
    v37 = v55;
    v38 = v43;
    *(&v43 - 2) = v55;
    *(&v43 - 1) = v38;
    ListCoreDataSource.visitRowsAt<A>(_:visitor:)(partial apply for closure #1 in ListCoreDataSource.canMoveCell(from:to:), v37, MEMORY[0x1E69E6370], v38, &v56);

    v39 = *(v29 + 8);
    v39(v18, TupleTypeMetadata2);
    v39(v35, TupleTypeMetadata2);
    v40 = v56;
  }

  else
  {
    v41 = *(v53 + 8);
    v41(v18, TupleTypeMetadata2);
    v41(v52, TupleTypeMetadata2);
    v40 = 0;
  }

  return v40 & 1;
}

uint64_t specialized ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, Int)>, type metadata accessor for (Int, Int), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63410;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v13 = v4;
  v10 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:), &v12, inited);

  if (v10[2])
  {
    specialized closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(v10, a1, a2, a3, a4);
  }
}

uint64_t ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = v9;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = *(*(AssociatedTypeWitness - 8) + 16);
  v17(&v26 - v15, v26, AssociatedTypeWitness, v14);
  v18 = v28;
  *&v16[*(TupleTypeMetadata2 + 48)] = v27;
  (v17)(v12, v18, AssociatedTypeWitness);
  *&v12[*(TupleTypeMetadata2 + 48)] = v29;
  type metadata accessor for _ContiguousArrayStorage();
  v19 = *(v9 + 72);
  swift_allocObject();
  v20 = static Array._adoptStorage(_:count:)();
  v22 = v21;
  v23 = *(v10 + 16);
  v23(v21, v16, TupleTypeMetadata2);
  v23(v22 + v19, v12, TupleTypeMetadata2);
  _finalizeUninitializedArray<A>(_:)(v20, TupleTypeMetadata2);
  v31 = a5;
  v32 = v30;
  v33 = v16;
  v34 = v12;
  ListCoreDataSource.visitRowsAt<A>(_:visitor:)(partial apply for closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:), a5, MEMORY[0x1E69E7CA8] + 8, v30, &v35);

  v24 = *(v10 + 8);
  v24(v12, TupleTypeMetadata2);
  return (v24)(v16, TupleTypeMetadata2);
}

uint64_t ListCoreDataSource.deleteCell(forRow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21[-v15];
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 16))(&v21[-v15], a1, AssociatedTypeWitness, v14);
  *&v16[*(TupleTypeMetadata2 + 48)] = a2;
  (*(v10 + 16))(v12, v16, TupleTypeMetadata2);
  v18 = *&v12[*(TupleTypeMetadata2 + 48)];
  v22 = a3;
  v23 = a4;
  v24 = v16;
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v12, v18, partial apply for closure #1 in ListCoreDataSource.deleteCell(forRow:), v21, a3, MEMORY[0x1E69E7CA8] + 8, a4, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), &v25, _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF);
  (*(v17 + 8))(v12, AssociatedTypeWitness);
  return (*(v10 + 8))(v16, TupleTypeMetadata2);
}

uint64_t specialized ListCoreDataSource.selectionValue(forRowAt:respectSelectionDisabled:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int8x16_t *a4@<X8>)
{
  TableDataSourceAdaptor.contextForItem(index:)(a1, a2, v32);
  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>?(v32, &v20);
  if (!v29)
  {
    result = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v32, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
LABEL_11:
    v8 = 0;
    v6 = 0;
    v7 = 0;
    v12 = 0uLL;
    goto LABEL_12;
  }

  v18[10] = v30;
  v19[0] = v31[0];
  *(v19 + 11) = *(v31 + 11);
  v18[6] = v26;
  v18[7] = v27;
  v18[8] = v28;
  v18[9] = v29;
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v18[5] = v25;
  v18[0] = v20;
  v18[1] = v21;
  specialized _RowVisitationContext.selectionValue(respectSelectionDisabled:)(&v14, *&v21, a3 & 1);
  v13 = v14;
  v6 = v16;
  if (v16)
  {
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  if (v16)
  {
    v8 = v15;
  }

  else
  {
    v8 = 0;
  }

  _s7SwiftUI15MoveInteractionVWOhTm_0(v18, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  result = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v32, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  if (!v6)
  {
    goto LABEL_11;
  }

  v10.i64[0] = 0;
  v11.i64[0] = v6;
  v12 = vandq_s8(v13, vdupq_lane_s64(vmvnq_s8(vceqq_s64(v11, v10)).i64[0], 0));
LABEL_12:
  *a4 = v12;
  a4[1].i64[0] = v8;
  a4[1].i64[1] = v6;
  a4[2].i64[0] = v7;
  return result;
}

uint64_t ListCoreDataSource.canMoveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  type metadata accessor for IndexPath();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v24 == v23)
  {
    v14 = 0;
  }

  else
  {
    v15 = ListDiffable.rowIndex(at:)(v13, v21, a3, v7);
    v16 = ListDiffable.rowIndex(at:)(v10, a2, a3, v7);
    v14 = (*(a4 + 192))(v13, v15, v10, v16, a3, a4);
    v17 = *(v8 + 8);
    v18 = AssociatedTypeWitness;
    v17(v10, AssociatedTypeWitness);
    v17(v13, v18);
  }

  return v14 & 1;
}

uint64_t ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v20 = a4;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  type metadata accessor for IndexPath();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v22 == v21)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14 = ListDiffable.rowIndex(at:)(v13, v19, a3, v6);
    v15 = ListDiffable.rowIndex(at:)(v10, a2, a3, v6);
    (*(v20 + 200))(v13, v14, v10, v15, a3);
    v16 = *(v8 + 8);
    v16(v10, AssociatedTypeWitness);
    return (v16)(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  ListDiffable.sectionIndex(atOffset:)(a3, a4, v10);
  (*(a5 + 88))(a1, a2, v14, a4, a5);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

uint64_t ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  ListDiffable.sectionIndex(atOffset:)(a3, a4, v10);
  (*(a5 + 96))(a1, a2, v14, a4, a5);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

uint64_t ListCoreDataSource.deleteCell(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  v11 = ListDiffable.rowIndex(at:)(&v13 - v9, a1, a2, v6);
  (*(a3 + 208))(v10, v11, a2, a3);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t ListCoreDataSource.canMoveCell(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  v11 = ListDiffable.rowIndex(at:)(&v13 - v9, a1, a2, v6);
  LOBYTE(v3) = (*(v3 + 184))(v10, v11, a2, v3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v3 & 1;
}

uint64_t ListCoreDataSource.cornerRadius(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, v6);
  v11 = (*(a3 + 120))(v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11;
}

uint64_t specialized ListCoreDataSource.visitRowAt<A>(_:visitor:)(unint64_t a1, uint64_t a2)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v10 - v5);
  TableDataSourceAdaptor.contextForItem(index:)(a1, a2, v17);
  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>?(v17, v13);
  if (v14)
  {
    v11[10] = v15;
    v12[0] = v16[0];
    *(v12 + 11) = *(v16 + 11);
    v11[6] = v13[6];
    v11[7] = v13[7];
    v11[8] = v13[8];
    v11[9] = v14;
    v11[2] = v13[2];
    v11[3] = v13[3];
    v11[4] = v13[4];
    v11[5] = v13[5];
    v11[0] = v13[0];
    v11[1] = v13[1];
    v10[1] = *(&v14 + 1);
    ViewTraitCollection.moveInteraction.getter(v6);
    v7 = type metadata accessor for MoveInteraction(0);
    if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v6, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
      v8 = 0;
    }

    else
    {
      v8 = *v6 != 0;
      _s7SwiftUI15MoveInteractionVWOhTm_0(v6, type metadata accessor for MoveInteraction);
    }

    _s7SwiftUI15MoveInteractionVWOhTm_0(v11, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v17, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  }

  else
  {
    outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v17, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    return 2;
  }

  return v8;
}

uint64_t specialized ListCoreDataSource.visitRowAt<A>(_:visitor:)(unint64_t a1, uint64_t a2, void (*a3)(unsigned __int8 *__return_ptr, _OWORD *))
{
  TableDataSourceAdaptor.contextForItem(index:)(a1, a2, v13);
  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>?(v13, v9);
  if (v10)
  {
    v7[10] = v11;
    v8[0] = v12[0];
    *(v8 + 11) = *(v12 + 11);
    v7[6] = v9[6];
    v7[7] = v9[7];
    v7[8] = v9[8];
    v7[9] = v10;
    v7[2] = v9[2];
    v7[3] = v9[3];
    v7[4] = v9[4];
    v7[5] = v9[5];
    v7[0] = v9[0];
    v7[1] = v9[1];
    a3(&v6, v7);
    v4 = v6;
    _s7SwiftUI15MoveInteractionVWOhTm_0(v7, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v13, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  }

  else
  {
    outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v13, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    return 1;
  }

  return v4;
}

uint64_t ListCoreDataSource.visitRowsAt<A>(_:visitor:)@<X0>(void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for Array();
  type metadata accessor for _RowVisitationContext(0, a3, a5, v12);
  swift_getWitnessTable(MEMORY[0x1E69E6328], v11);
  v13 = Sequence.compactMap<A>(_:)();
  v14 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v14);
  if (Collection.isEmpty.getter())
  {
    (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  else
  {
    a2(v13);

    return (*(*(a4 - 8) + 56))(a6, 0, 1, a4);
  }
}

uint64_t closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1, TupleTypeMetadata2, v10);
  (*(a5 + 224))(v12, *&v12[*(TupleTypeMetadata2 + 48)], a3, a5);
  return (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
}

void closure #1 in ListCoreDataSource.performDrop(to:)(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, BOOL *a5@<X8>)
{
  type metadata accessor for _RowVisitationContext(0, a3, a4, a3);

  v8 = ViewTraitCollection.insertInteraction(for:)(a1 & 1);
  v10 = v9;
  v12 = v11;

  if (v8 != 1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v16 = type metadata accessor for DropCoordinator(0, TupleTypeMetadata2, v14, v15);
    OnInsertInteraction.insert(_:)(*(a2 + *(v16 + 28)));
    outlined consume of OnInsertInteraction?(v8, v10, v12);
  }

  *a5 = v8 == 1;
}

uint64_t specialized closure #1 in ListCoreDataSource.canMoveCell(from:to:)(uint64_t a1)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for MoveInteraction(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  if (*(a1 + 16) == 2)
  {
    outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(a1 + 32, v24);
    v23 = v25;
    ViewTraitCollection.moveInteraction.getter(v7);
    _s7SwiftUI15MoveInteractionVWOhTm_0(v24, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    v15 = *(v9 + 48);
    if (v15(v7, 1, v8) == 1)
    {
      outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v7, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    }

    else
    {
      outlined init with take of DeleteInteraction(v7, v14, type metadata accessor for MoveInteraction);
      outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(a1 + 240, v24);
      v23 = v25;
      ViewTraitCollection.moveInteraction.getter(v4);
      _s7SwiftUI15MoveInteractionVWOhTm_0(v24, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
      if (v15(v4, 1, v8) == 1)
      {
        _s7SwiftUI15MoveInteractionVWOhTm_0(v14, type metadata accessor for MoveInteraction);
        outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v4, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
      }

      else
      {
        outlined init with take of DeleteInteraction(v4, v11, type metadata accessor for MoveInteraction);
        v16 = *(v8 + 28);
        v17 = *(v11 + v16);
        v18 = *&v14[v16];
        _s7SwiftUI15MoveInteractionVWOhTm_0(v14, type metadata accessor for MoveInteraction);
        if (v17 == v18)
        {
          v19 = *v11;
          v20 = v11[1];
          outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*v11, v20);
          _s7SwiftUI15MoveInteractionVWOhTm_0(v11, type metadata accessor for MoveInteraction);
          if (v19)
          {
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19, v20);
            return 1;
          }
        }

        else
        {
          _s7SwiftUI15MoveInteractionVWOhTm_0(v11, type metadata accessor for MoveInteraction);
        }
      }
    }
  }

  return 0;
}

uint64_t closure #1 in ListCoreDataSource.canMoveCell(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v41 = a4;
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v13 = type metadata accessor for _RowVisitationContext(0, a2, a3, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = type metadata accessor for MoveInteraction(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v39 = (&v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - v25;
  result = MEMORY[0x18D00CD40](a1, v13, v24);
  if (result == 2)
  {
    Array.subscript.getter();
    _RowVisitationContext.moveInteraction.getter(v13);
    v38 = *(v14 + 8);
    v38(v19, v13);
    v28 = *(v21 + 48);
    if (v28(v11, 1, v20) != 1)
    {
      outlined init with take of DeleteInteraction(v11, v26, type metadata accessor for MoveInteraction);
      Array.subscript.getter();
      v11 = v40;
      _RowVisitationContext.moveInteraction.getter(v13);
      v38(v16, v13);
      if (v28(v11, 1, v20) != 1)
      {
        v31 = v39;
        outlined init with take of DeleteInteraction(v11, v39, type metadata accessor for MoveInteraction);
        v32 = *(v20 + 28);
        v33 = *(v31 + v32);
        v34 = *&v26[v32];
        _s7SwiftUI15MoveInteractionVWOhTm_0(v26, type metadata accessor for MoveInteraction);
        v35 = v33 == v34;
        v30 = v41;
        if (v35)
        {
          v36 = *v31;
          v37 = v31[1];
          outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*v31, v37);
          result = _s7SwiftUI15MoveInteractionVWOhTm_0(v31, type metadata accessor for MoveInteraction);
          if (v36)
          {
            result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v36, v37);
            v29 = 1;
            goto LABEL_7;
          }
        }

        else
        {
          result = _s7SwiftUI15MoveInteractionVWOhTm_0(v31, type metadata accessor for MoveInteraction);
        }

        v29 = 0;
        goto LABEL_7;
      }

      _s7SwiftUI15MoveInteractionVWOhTm_0(v26, type metadata accessor for MoveInteraction);
    }

    result = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v11, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  }

  v29 = 0;
  v30 = v41;
LABEL_7:
  *v30 = v29;
  return result;
}

void specialized closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for MoveInteraction(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = a2;
  v30[1] = a3;
  v29[0] = a4;
  v29[1] = a5;
  v17 = *(a1 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(a1 + 32, v27);
  v25 = v28;
  ViewTraitCollection.moveInteraction.getter(v12);
  _s7SwiftUI15MoveInteractionVWOhTm_0(v27, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v12, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    MEMORY[0x1EEE9AC00](v18);
    *(&v22 - 2) = v30;
    static Log.internalError(_:)();
    return;
  }

  outlined init with take of DeleteInteraction(v12, v16, type metadata accessor for MoveInteraction);
  if (v17 == 1)
  {
    goto LABEL_11;
  }

  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(a1 + 240, v27);
  v24 = v28;
  v22 = 0;
  v23 = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v19 = v25;
  v20 = v26;
  v21 = _s7SwiftUI15MoveInteractionVWOhTm_0(v27, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v21);
    *(&v22 - 2) = v29;
    static Log.internalError(_:)();
  }

  else
  {
    MoveInteraction.move(to:)(v19);
  }

  _s7SwiftUI15MoveInteractionVWOhTm_0(v16, type metadata accessor for MoveInteraction);
}

uint64_t closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v36 = a2;
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v37 = a4;
  v38 = a5;
  v12 = type metadata accessor for _RowVisitationContext(0, a4, a5, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = type metadata accessor for MoveInteraction(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  Array.subscript.getter();
  _RowVisitationContext.moveInteraction.getter(v12);
  v23 = *(v13 + 8);
  v23(v18, v12);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    v24 = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v10, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    MEMORY[0x1EEE9AC00](v24);
    v25 = v38;
    *(&v33 - 4) = v37;
    *(&v33 - 3) = v25;
    *(&v33 - 2) = v36;
    return static Log.internalError(_:)();
  }

  else
  {
    v27 = v37;
    v28 = v38;
    outlined init with take of DeleteInteraction(v10, v22, type metadata accessor for MoveInteraction);
    Array.subscript.getter();
    v29 = _RowVisitationContext.dynamicContentOffset.getter(v12);
    v31 = v30;
    v32 = (v23)(v15, v12);
    if (v31)
    {
      MEMORY[0x1EEE9AC00](v32);
      *(&v33 - 4) = v27;
      *(&v33 - 3) = v28;
      *(&v33 - 2) = v34;
      static Log.internalError(_:)();
    }

    else
    {
      MoveInteraction.move(to:)(v29);
    }

    return _s7SwiftUI15MoveInteractionVWOhTm_0(v22, type metadata accessor for MoveInteraction);
  }
}

uint64_t implicit closure #1 in closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = v12 - v7;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD5A530);
  v9 = *(TupleTypeMetadata2 + 48);
  v10 = *(a1 + v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, a1, AssociatedTypeWitness);
  *&v8[v9] = v10;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v6 + 8))(v8, TupleTypeMetadata2);
  MEMORY[0x18D00C9B0](0xD000000000000029, 0x800000018CD5A550);
  return v12[0];
}

uint64_t implicit closure #2 in closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = v12 - v7;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  MEMORY[0x18D00C9B0](0xD000000000000028, 0x800000018CD5A500);
  v9 = *(TupleTypeMetadata2 + 48);
  v10 = *(a1 + v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, a1, AssociatedTypeWitness);
  *&v8[v9] = v10;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v6 + 8))(v8, TupleTypeMetadata2);
  return v12[0];
}

uint64_t specialized closure #1 in ListCoreDataSource.deleteCell(forRow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v15 - v7);
  v9 = type metadata accessor for DeleteInteraction(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a2;
  v16[1] = a3;
  v15[1] = *(a1 + 152);
  ViewTraitCollection.deleteInteraction.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v8, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
    MEMORY[0x1EEE9AC00](v13);
    v15[-2] = v16;
    static Log.internalError(_:)();
  }

  else
  {
    outlined init with take of DeleteInteraction(v8, v12, type metadata accessor for DeleteInteraction);
    DeleteInteraction.delete()();
    _s7SwiftUI15MoveInteractionVWOhTm_0(v12, type metadata accessor for DeleteInteraction);
  }

  return 0;
}

uint64_t closure #1 in ListCoreDataSource.deleteCell(forRow:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DeleteInteraction(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _RowVisitationContext(0, a2, a3, v15);
  _RowVisitationContext.deleteInteraction.getter(v16);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v17 = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v10, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
    MEMORY[0x1EEE9AC00](v17);
    *(&v19 - 4) = a2;
    *(&v19 - 3) = a3;
    *(&v19 - 2) = a1;
    result = static Log.internalError(_:)();
  }

  else
  {
    outlined init with take of DeleteInteraction(v10, v14, type metadata accessor for DeleteInteraction);
    DeleteInteraction.delete()();
    result = _s7SwiftUI15MoveInteractionVWOhTm_0(v14, type metadata accessor for DeleteInteraction);
  }

  *a4 = 0;
  return result;
}

uint64_t implicit closure #1 in closure #1 in ListCoreDataSource.deleteCell(forRow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(76);
  MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD5A4B0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](0xD00000000000002BLL, 0x800000018CD5A4D0);
  return 0;
}

uint64_t outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized closure #1 in ListCoreDataSource.performDrop(to:)(char a1@<W1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v5._rawValue = *(a2 + 24);

  v6 = ViewTraitCollection.insertInteraction(for:)(a1 & 1);
  v8 = v7;
  v10 = v9;

  if (v6 != 1)
  {
    OnInsertInteraction.insert(_:)(v5);
    outlined consume of OnInsertInteraction?(v6, v8, v10);
  }

  *a3 = v6 == 1;
}

uint64_t specialized implicit closure #1 in closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t *a1)
{
  _StringGuts.grow(_:)(72);
  MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD5A530);
  type metadata accessor for (Int, Int)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD000000000000029, 0x800000018CD5A550);
  return 0;
}

uint64_t specialized implicit closure #2 in closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t *a1)
{
  _StringGuts.grow(_:)(42);
  MEMORY[0x18D00C9B0](0xD000000000000028, 0x800000018CD5A500);
  type metadata accessor for (Int, Int)();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t partial apply for specialized closure #1 in ListCoreDataSource.deleteCell(forRow:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized closure #1 in ListCoreDataSource.deleteCell(forRow:)(a1, **(v2 + 16), *(*(v2 + 16) + 8));
  *a2 = result & 1;
  return result;
}

uint64_t outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized implicit closure #1 in closure #1 in ListCoreDataSource.deleteCell(forRow:)()
{
  _StringGuts.grow(_:)(76);
  MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD5A4B0);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0xD00000000000002BLL, 0x800000018CD5A4D0);
  return 0;
}

void type metadata accessor for (Int, Int)()
{
  if (!lazy cache variable for type metadata for (Int, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, Int));
    }
  }
}

void type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DeleteInteraction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t partial apply for specialized closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return TableDataSourceAdaptor.contextForItem(index:)(*a1, *(a1 + 8), a2);
}

{
  return partial apply for specialized closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:)(a1, a2);
}

BOOL partial apply for closure #1 in ListCoreDataSource.canMoveCell(forRowAt:)@<W0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for _RowVisitationContext(0, *(v2 + 16), *(v2 + 24), a1);
  result = _RowVisitationContext.canMove.getter(v4);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ToolbarLabelStyle.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1 + 5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarLabelStyle.Role(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v2 + 5);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ToolbarLabelStyle.Role@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ToolbarLabelStyle.Role.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void EnvironmentValues.toolbarLabelStyle.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void key path getter for EnvironmentValues.toolbarLabelStyle : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.toolbarLabelStyle : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarLabelStyle.Role and conformance ToolbarLabelStyle.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarLabelStyle.Role and conformance ToolbarLabelStyle.Role;
  if (!lazy protocol witness table cache variable for type ToolbarLabelStyle.Role and conformance ToolbarLabelStyle.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarLabelStyle.Role, &type metadata for ToolbarLabelStyle.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLabelStyle.Role and conformance ToolbarLabelStyle.Role);
  }

  return result;
}

BOOL specialized static ToolbarLabelStyle.Data.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      outlined consume of ToolbarLabelStyle.Data(*a1, v3, v4);
      outlined consume of ToolbarLabelStyle.Data(v5, v6, v7);
      return (v5 ^ v2) == 0;
    }

LABEL_6:
    outlined copy of ToolbarLabelStyle.Data(v5, v6, v7);
    outlined consume of ToolbarLabelStyle.Data(v2, v3, v4);
    outlined consume of ToolbarLabelStyle.Data(v5, v6, v7);
    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {

    goto LABEL_6;
  }

  v18 = *a1;
  v19 = v3;
  v20 = v4 & 0x7F;
  outlined copy of ToolbarLabelStyle.Data(v5, v6, v7);
  outlined copy of ToolbarLabelStyle.Data(v2, v3, v4);
  type metadata accessor for Binding<ToolbarLabelStyle>();
  v11 = v10;
  MEMORY[0x18D00ACC0](&v17);
  v12 = v17;
  v14 = v5;
  v15 = v6;
  v16 = v7 & 0x7F;
  MEMORY[0x18D00ACC0](&v13, v11);
  outlined consume of ToolbarLabelStyle.Data(v2, v3, v4);
  outlined consume of ToolbarLabelStyle.Data(v5, v6, v7);
  return v12 == v13;
}

uint64_t specialized ToolbarLabelStyle.Role.init(rawValue:)(uint64_t a1)
{
  if ((a1 - 5) >= 4)
  {
    return 4;
  }

  else
  {
    return a1 - 5;
  }
}

void type metadata accessor for Binding<ToolbarLabelStyle>()
{
  if (!lazy cache variable for type metadata for Binding<ToolbarLabelStyle>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<ToolbarLabelStyle>);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ToolbarLabelStyle.Data(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ToolbarLabelStyle.Data(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ToolbarLabelStyle.Data(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ToolbarLabelStyle.Data(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarLabelStyle.Data(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FFF && *(a1 + 17))
  {
    return (*a1 + 0x1FFF);
  }

  v3 = ((*(a1 + 16) >> 7) | (2 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7 | (((*(a1 + 16) >> 2) & 0x1F) << 7)))) ^ 0x1FFF;
  if (v3 >> 1 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ToolbarLabelStyle.Data(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x1FFF;
    *(result + 8) = 0;
    if (a3 >= 0x1FFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xFFF | ((-a2 & 0x1FFF) << 12);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = (v3 >> 5) & 0xFC;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ToolbarLabelStyle.Data(uint64_t result, char a2)
{
  v2 = *(result + 16) & 3 | (a2 << 7);
  *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t initializeWithCopy for HeaderFooterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for HeaderFooterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for HeaderFooterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void EnvironmentValues.headerFooterConfiguration.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

void HeaderFooterConfiguration.defaultEdgeInsets(for:)(uint64_t a1, double a2)
{
  if (v2[1] - 1 >= 2)
  {
    v3 = *(v2 + 1);
    v4 = v2[16];
    v5 = v2[17];
    v6 = *v2 ^ 1;
    if (((v3 == 0) & v6 & v4 & v5) == 0 && ((v6 & v4 & 1) == 0 || v3 != 2 && (v5 & 1) == 0))
    {
      if (v3)
      {
        static Edge.Set.horizontal.getter();
        EdgeInsets.init(_:edges:)();
      }
    }
  }
}

double HeaderFooterConfiguration.font.getter()
{
  if ((*v0 & 1) == 0)
  {
    if (*(v0 + 16) == 1 && (*(v0 + 8) == 2) | *(v0 + 17) & 1)
    {
      static Font.Weight.semibold.getter();
      static Font.system(_:design:weight:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance HeaderFooterConfigurationKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EAA3A080;
  v8[2] = xmmword_1EAA3A070;
  v8[3] = unk_1EAA3A080;
  v2 = qword_1EAA3A090;
  v9 = qword_1EAA3A090;
  v4 = static HeaderFooterConfigurationKey.defaultValue;
  v3 = *&word_1EAA3A060;
  v8[0] = static HeaderFooterConfigurationKey.defaultValue;
  v8[1] = *&word_1EAA3A060;
  *(a1 + 32) = xmmword_1EAA3A070;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of HeaderFooterConfiguration(v8, v7);
}

uint64_t specialized HeaderFooterConfiguration.Values.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Color.primary.getter();
  static Font.body.getter();
  UIListContentConfiguration.textProperties.getter();
  v9 = UIListContentConfiguration.TextProperties.color.getter();
  v10 = *(v6 + 8);
  v10(v8, v5);
  type metadata accessor for UIKitPlatformColorDefinition(0);
  v11 = v9;
  v12 = Color.init(_platformColor:definition:)();

  UIListContentConfiguration.textProperties.getter();
  UIListContentConfiguration.TextProperties.font.getter();
  v10(v8, v5);
  v13 = Font.init(_:)();

  UIListContentConfiguration.directionalLayoutMargins.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = type metadata accessor for UIListContentConfiguration();
  result = (*(*(v22 - 8) + 8))(a1, v22);
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v21;
  return result;
}

uint64_t initializeWithCopy for HeaderFooterConfiguration.Values(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t *assignWithCopy for HeaderFooterConfiguration.Values(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

_OWORD *assignWithTake for HeaderFooterConfiguration.Values(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;
  return a1;
}

unint64_t lazy protocol witness table accessor for type HeaderFooterConfiguration.Position and conformance HeaderFooterConfiguration.Position()
{
  result = lazy protocol witness table cache variable for type HeaderFooterConfiguration.Position and conformance HeaderFooterConfiguration.Position;
  if (!lazy protocol witness table cache variable for type HeaderFooterConfiguration.Position and conformance HeaderFooterConfiguration.Position)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HeaderFooterConfiguration.Position, &type metadata for HeaderFooterConfiguration.Position, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderFooterConfiguration.Position and conformance HeaderFooterConfiguration.Position);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>);
    }
  }
}

double BorderedProminentButtonStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>(0);
  a2[*(v10 + 36)] = 1;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>(0);
  v12 = &a2[*(v11 + 36)];
  *v12 = 0;
  v12[8] = 1;
  KeyPath = swift_getKeyPath();
  v21 = 0;
  v14 = swift_getKeyPath();
  v20[0] = 0;
  outlined consume of Glass?(0, 0, 0, 1);
  v15 = v21;
  v16 = v20[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(0);
  v18 = &a2[*(v17 + 36)];
  *v18 = 0;
  v18[8] = 1;
  *(v18 + 3) = 0;
  *(v18 + 4) = 0;
  *(v18 + 2) = 0;
  *&result = 1;
  *(v18 + 40) = xmmword_18CD6A6D0;
  v18[56] = 0;
  *(v18 + 8) = KeyPath;
  v18[72] = v15;
  *(v18 + 10) = v14;
  v18[88] = v16;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>);
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderedButtonStyle_Phone>, lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, type metadata accessor for ButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>);
    }
  }
}

void type metadata accessor for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>)
  {
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, lazy protocol witness table accessor for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar, &type metadata for BorderedProminentButtonStyle_PhoneToolbar, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar()
{
  result = lazy protocol witness table cache variable for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar;
  if (!lazy protocol witness table cache variable for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderedProminentButtonStyle_PhoneToolbar, &type metadata for BorderedProminentButtonStyle_PhoneToolbar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar);
  }

  return result;
}

double BorderedProminentButtonStyle.buttonStyleRepresentation.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 72) = 0;
  *(a1 + 80) = swift_getKeyPath();
  *(a1 + 88) = 0;
  *a1 = 0;
  *(a1 + 8) = 1;
  outlined consume of Glass?(0, 0, 0, 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *&result = 1;
  *(a1 + 40) = xmmword_18CD6A6D0;
  *(a1 + 56) = 0;
  return result;
}

double protocol witness for ButtonStyleConvertible.buttonStyleRepresentation.getter in conformance BorderedProminentButtonStyle@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 72) = 0;
  *(a1 + 80) = swift_getKeyPath();
  *(a1 + 88) = 0;
  *a1 = 0;
  *(a1 + 8) = 1;
  outlined consume of Glass?(0, 0, 0, 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *&result = 1;
  *(a1 + 40) = xmmword_18CD6A6D0;
  *(a1 + 56) = 0;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(255);
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonContainerIsBorderedInput>, lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = _s7SwiftUI8StaticIfVyAA23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceF0VGAA28ButtonStyleContainerModifierVyAA07PlatterjK0VGAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0p5InputG0RzAaRR_AaRR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>, lazy protocol witness table accessor for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = _s7SwiftUI8StaticIfVyAA23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceF0VGAA28ButtonStyleContainerModifierVyAA07PlatterjK0VGAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0p5InputG0RzAaRR_AaRR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = _s7SwiftUI8StaticIfVyAA23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceF0VGAA28ButtonStyleContainerModifierVyAA07PlatterjK0VGAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0p5InputG0RzAaRR_AaRR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar()
{
  result = lazy protocol witness table cache variable for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar;
  if (!lazy protocol witness table cache variable for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderedProminentButtonsHaveToolbarStylingInToolbar, &type metadata for BorderedProminentButtonsHaveToolbarStylingInToolbar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, lazy protocol witness table accessor for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar, &type metadata for BorderedProminentButtonStyle_PhoneToolbar, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void static PointerStyle.image(_:hotSpot:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

double outlined copy of PointerStyle.Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 == 4)
  {
    return outlined copy of Path.Storage(a1, a2, a3, a4, a5);
  }

  if (v5 == 3)
  {
  }

  return result;
}

double outlined consume of PointerStyle.Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 == 4)
  {
    return outlined consume of Path.Storage(a1, a2, a3, a4, a5);
  }

  if (v5 == 3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PointerStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of PointerStyle.Value(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for PointerStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of PointerStyle.Value(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of PointerStyle.Value(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for PointerStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of PointerStyle.Value(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for PointerStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFB && *(a1 + 34))
  {
    return (*a1 + 4091);
  }

  v3 = (*(a1 + 32) & 0xF8 | (*(a1 + 32) >> 13) | (*(a1 + 32) >> 1) & 0xF00) ^ 0xFFF;
  if (v3 >= 0xFFA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PointerStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 4091;
    *(result + 8) = 0;
    if (a3 >= 0xFFB)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFB)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x1FF) - (a2 << 9);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (16 * v3) & 0xFE00 | (8 * (v3 & 0x1F));
    }
  }

  return result;
}

uint64_t getEnumTag for PointerStyle.Value(uint64_t a1)
{
  v1 = *(a1 + 32) >> 13;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for PointerStyle.Value(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 32) = *(result + 32) & 0x107 | (a2 << 13);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -24576;
  }

  return result;
}

uint64_t View.groupBoxStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GroupBoxStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

unint64_t instantiation function for generic protocol witness table for GroupBoxStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GroupBoxStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

double ResolvedGroupBoxStyle.body.getter@<D0>(uint64_t a1@<X8>)
{
  LOBYTE(__src[0]) = 0;
  __src[1] = 0;
  type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>();
  lazy protocol witness table accessor for type GroupBoxStyleModifier<DefaultGroupBoxStyle> and conformance GroupBoxStyleModifier<A>(&lazy protocol witness table cache variable for type GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content> and conformance GroupBox<A, B>, type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, protocol conformance descriptor for GroupBox<A, B>);
  View._addingBackgroundGroup()();
  v2 = v11;
  v3 = v12;
  v8 = v13;
  v4 = v14;
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v5 = static AccessibilityChildBehavior.contain;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v10);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_4(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0x128uLL);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v8;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedGroupBoxStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedGroupBoxStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t GroupBoxStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v2 + 24))(v8);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v11 = *(v4 + 8);
  v11(v6, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v11)(v10, AssociatedTypeWitness);
}

void type metadata accessor for GroupBoxStyleModifier<DefaultGroupBoxStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GroupBoxStyleModifier<DefaultGroupBoxStyle>)
  {
    v2 = lazy protocol witness table accessor for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle();
    v4 = type metadata accessor for GroupBoxStyleModifier(a1, &type metadata for DefaultGroupBoxStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for GroupBoxStyleModifier<DefaultGroupBoxStyle>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GroupBoxStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GroupBoxStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GroupBoxStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GroupBoxStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for GroupBoxStyleConfiguration.Label;
    v4[1] = &type metadata for GroupBoxStyleConfiguration.Content;
    v4[2] = &protocol witness table for GroupBoxStyleConfiguration.Label;
    v4[3] = &protocol witness table for GroupBoxStyleConfiguration.Content;
    v2 = type metadata accessor for GroupBox(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type GroupBoxStyleModifier<DefaultGroupBoxStyle> and conformance GroupBoxStyleModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for _UnaryViewAdaptor();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>)
  {
    type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>();
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type GroupBoxStyleModifier<DefaultGroupBoxStyle> and conformance GroupBoxStyleModifier<A>(&lazy protocol witness table cache variable for type GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content> and conformance GroupBox<A, B>, type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, protocol conformance descriptor for GroupBox<A, B>);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.defaultForegroundStyle : EnvironmentValues@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.defaultForegroundStyle.getter();
  *a3 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.tint : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x18D0065B0](a1, a2);
  *a3 = result;
  return result;
}

uint64_t DefaultListButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(0);
  v9 = (a2 + *(v8 + 44));
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *v9 = *v7;
  v10 = *(v5 + 32);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(&v7[v10], &v9[*(v11 + 36)], type metadata accessor for ButtonAction);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  type metadata accessor for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>(0);
  v13 = &v9[*(v12 + 44)];
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(a1, v13, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v14 = type metadata accessor for DefaultListButtonStyle.ListButton(0);
  v15 = v13 + v14[5];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v13 + v14[6];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v13 + v14[7];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(v9, a2, type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>);
}

uint64_t DefaultListButtonStyle.ListButton.body.getter()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v24 = &type metadata for FocusableOptions;
  v25 = &protocol witness table for FocusableOptions;
  v23 = 8;
  v22[0] = 1;
  v26 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v27 = 0;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(v0, &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimitiveButtonStyleConfiguration);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  KeyPath = swift_getKeyPath();
  v15[0] = 0;
  v7 = swift_getKeyPath();
  v21 = 0;
  v8 = swift_getKeyPath();
  v20 = 0;
  v28 = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  v29 = v5;
  v30 = 1;
  v31 = KeyPath;
  v32 = v15[0];
  v34 = 0;
  v35 = 0;
  v33 = v7;
  v36 = 0;
  v37 = v21;
  v38 = v8;
  v39 = 0;
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(v22, v15, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>);
  v16 = v9;
  v17 = 0;
  v18 = v10;
  v19 = 0;
  v14 = v0;
  v13 = v0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier);
  lazy protocol witness table accessor for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B, C>(_:then:else:)();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(v15, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(v22, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>);
}

uint64_t closure #1 in DefaultListButtonStyle.ListButton.body.getter@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = type metadata accessor for DefaultListButtonStyle.ListButton(0);
  v8 = specialized Environment.wrappedValue.getter(*&a2[*(v7 + 20)], a2[*(v7 + 20) + 8]);
  v9 = specialized Environment.wrappedValue.getter(*&a2[*(v7 + 24)], a2[*(v7 + 24) + 8]);
  if (!v9)
  {
    v9 = static HierarchicalShapeStyle.sharedPrimary.getter();
  }

  v10 = 256;
  if ((v8 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = v10 | v6;
  result = _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(a1, a3, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>);
  *(a3 + 184) = v11;
  *(a3 + 192) = v9;
  return result;
}

uint64_t closure #2 in DefaultListButtonStyle.ListButton.body.getter@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *a2;
  v7 = type metadata accessor for DefaultListButtonStyle.ListButton(0);
  LOBYTE(v3) = specialized Environment.wrappedValue.getter(*&v3[*(v7 + 20)], v3[*(v7 + 20) + 8]);
  v8 = AnyShapeStyle.init<A>(_:)();
  v9 = 256;
  if ((v3 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v9 | v6;
  result = _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(a1, a3, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>);
  *(a3 + 184) = v10;
  *(a3 + 192) = v8;
  return result;
}

void protocol witness for ViewModifier.body(content:) in conformance ListButtonStyleDisabledOpacityModifier(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = 1.0;
  if ((specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24)) & 1) == 0 && specialized Environment.wrappedValue.getter(v3, v4))
  {

    v5 = 0.5;
  }

  *a1 = v5;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ButtonPrimaryTintListStyleContextPredicate(__int128 *a1)
{
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v1 = 1;
  }

  else
  {
    v1 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  return v1 & 1;
}

uint64_t View.automaticListButtonStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a4;
  v27 = a5;
  v28 = a1;
  v29 = a6;
  v30 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WrappedButtonStyle(255, v10, v12, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v13);
  v16 = type metadata accessor for ButtonStyleModifier(0, v13, WitnessTable, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v16, v17);
  v20 = type metadata accessor for AutomaticStyleOverrideModifier();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  (*(v7 + 16))(v9, v28, a3, v22);
  ButtonStyleModifier.init<A>(style:)(v9, a3, v27, v25, v19);
  AutomaticStyleOverrideModifier.init(_:modifier:)();
  MEMORY[0x18D00A570](v24, v30, v20, v31);
  return (*(v21 + 8))(v24, v20);
}

{
  v27 = a4;
  v23 = a5;
  v24 = a1;
  v25 = a6;
  v26 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ButtonStyleModifier(0, v10, v12, v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v13, v14, v23);
  v17 = type metadata accessor for AutomaticStyleOverrideModifier();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  (*(v7 + 16))(v9, v24, a3, v19);
  FormatInputToString.init(format:)(v9, a3, v16);
  AutomaticStyleOverrideModifier.init(_:modifier:)();
  MEMORY[0x18D00A570](v21, v26, v17, v27);
  return (*(v18 + 8))(v21, v17);
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    type metadata accessor for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>, lazy protocol witness table accessor for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>);
    type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>);
    }
  }
}

void type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>)
  {
    type metadata accessor for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>(255);
    v1 = type metadata accessor for Group();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>);
    }
  }
}

void type metadata accessor for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for DefaultListButtonStyle.ListButton(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>);
    }
  }
}

uint64_t type metadata accessor for DefaultListButtonStyle.ListButton(uint64_t a1)
{
  result = type metadata singleton initialization cache for DefaultListButtonStyle.ListButton;
  if (!type metadata singleton initialization cache for DefaultListButtonStyle.ListButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E6981600], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    v5[1] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    v5[2] = lazy protocol witness table accessor for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type DefaultListButtonStyle.ListButton and conformance DefaultListButtonStyle.ListButton, type metadata accessor for DefaultListButtonStyle.ListButton, protocol conformance descriptor for DefaultListButtonStyle.ListButton);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void *initializeBufferWithCopyOfBuffer for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
    v8 = v4 + v7;
    v9 = &a2[v7];
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 5);
      v30 = *(v9 + 24);
      *(v8 + 24) = v30;
      *(v8 + 5) = v29;
      v31 = v30;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v49 = v9[34];
        v15 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v15, v49);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v15;
        v8[34] = v49;
        v16 = *(v9 + 5);
        v17 = *(v9 + 6);
        v18 = *(v9 + 7);
        v19 = *(v9 + 8);
        v50 = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v14, v50);
        *(v8 + 5) = v16;
        *(v8 + 6) = v17;
        *(v8 + 7) = v18;
        *(v8 + 8) = v19;
        *(v8 + 36) = v14;
        v8[74] = v50;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v8[v20];
        v22 = &v9[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_9:
        swift_storeEnumTagMultiPayload();
        v33 = a3[5];
        v34 = v4 + v33;
        v35 = &a2[v33];
        v36 = *v35;
        v37 = v35[8];
        outlined copy of Environment<Bool>.Content();
        *v34 = v36;
        v34[8] = v37;
        v38 = a3[6];
        v39 = v4 + v38;
        v40 = &a2[v38];
        v41 = *v40;
        v42 = v40[8];
        outlined copy of Environment<Color?>.Content(*v40);
        *v39 = v41;
        v39[8] = v42;
        v43 = a3[7];
        v44 = v4 + v43;
        v45 = &a2[v43];
        v46 = *v45;
        v47 = v45[8];
        outlined copy of Environment<Color?>.Content(*v45);
        *v44 = v46;
        v44[8] = v47;
        return v4;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_9;
  }

  v25 = *a2;
  *v4 = *a2;
  v4 = (v25 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for DefaultListButtonStyle.ListButton(uint64_t a1, int *a2)
{
  v4 = a1 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 74));
      v6 = *(type metadata accessor for LinkDestination() + 24);
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  outlined consume of Environment<Bool>.Content(*(a1 + a2[5]), *(a1 + a2[5] + 8));
  outlined consume of Environment<AnyShapeStyle?>.Content(*(a1 + a2[6]), *(a1 + a2[6] + 8));
  v8 = a1 + a2[7];
  v9 = *v8;
  v10 = *(v8 + 8);

  return outlined consume of Environment<AnyShapeStyle?>.Content(v9, v10);
}

_BYTE *initializeWithCopy for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v8;
    v26 = *(v8 + 1);
    v27 = v8[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v26, v27);
    *v7 = v25;
    *(v7 + 1) = v26;
    v7[16] = v27;
    v28 = *(v8 + 5);
    v29 = *(v8 + 24);
    *(v7 + 24) = v29;
    *(v7 + 5) = v28;
    v30 = v29;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v31;
    goto LABEL_6;
  }

  v47 = a3;
  v10 = *v8;
  v11 = *(v8 + 1);
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v14 = v8[34];
  v15 = *(v8 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v13, v12, v15, v14);
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = v13;
  *(v7 + 3) = v12;
  *(v7 + 16) = v15;
  v7[34] = v14;
  v16 = *(v8 + 5);
  v17 = *(v8 + 6);
  v18 = *(v8 + 7);
  v19 = *(v8 + 8);
  LOBYTE(v11) = v8[74];
  LOWORD(v13) = *(v8 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v13, v11);
  *(v7 + 5) = v16;
  *(v7 + 6) = v17;
  *(v7 + 7) = v18;
  *(v7 + 8) = v19;
  *(v7 + 36) = v13;
  v7[74] = v11;
  a3 = v47;
  v20 = *(type metadata accessor for LinkDestination() + 24);
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 16))(v21, v22, v23);
  v24 = type metadata accessor for LinkDestination.Configuration();
  v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v32 = a3[5];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *v34;
  v36 = v34[8];
  outlined copy of Environment<Bool>.Content();
  *v33 = v35;
  v33[8] = v36;
  v37 = a3[6];
  v38 = &a1[v37];
  v39 = &a2[v37];
  v40 = *v39;
  v41 = v39[8];
  outlined copy of Environment<Color?>.Content(*v39);
  *v38 = v40;
  v38[8] = v41;
  v42 = a3[7];
  v43 = &a1[v42];
  v44 = &a2[v42];
  v45 = *v44;
  LOBYTE(v40) = v44[8];
  outlined copy of Environment<Color?>.Content(*v44);
  *v43 = v45;
  v43[8] = v40;
  return a1;
}

_BYTE *assignWithCopy for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(&a1[v7], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v9;
      v26 = *(v9 + 1);
      v27 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v26, v27);
      *v8 = v25;
      *(v8 + 1) = v26;
      v8[16] = v27;
      v28 = *(v9 + 3);
      *(v8 + 3) = v28;
      v29 = *(v9 + 5);
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 5) = v29;
      v30 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v54 = v9[34];
        v15 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v15, v54);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v15;
        v8[34] = v54;
        v16 = *(v9 + 5);
        v17 = *(v9 + 6);
        v18 = *(v9 + 7);
        v19 = *(v9 + 8);
        v55 = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v14, v55);
        *(v8 + 5) = v16;
        *(v8 + 6) = v17;
        *(v8 + 7) = v18;
        *(v8 + 8) = v19;
        *(v8 + 36) = v14;
        v8[74] = v55;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v8[v20];
        v22 = &v9[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        goto LABEL_9;
      }

      v31 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v31;
    }

    goto LABEL_8;
  }

LABEL_9:
  v32 = a3[5];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *v34;
  v36 = v34[8];
  outlined copy of Environment<Bool>.Content();
  v37 = *v33;
  v38 = v33[8];
  *v33 = v35;
  v33[8] = v36;
  outlined consume of Environment<Bool>.Content(v37, v38);
  v39 = a3[6];
  v40 = &a1[v39];
  v41 = &a2[v39];
  v42 = *v41;
  v43 = v41[8];
  outlined copy of Environment<Color?>.Content(*v41);
  v44 = *v40;
  v45 = v40[8];
  *v40 = v42;
  v40[8] = v43;
  outlined consume of Environment<AnyShapeStyle?>.Content(v44, v45);
  v46 = a3[7];
  v47 = &a1[v46];
  v48 = &a2[v46];
  v49 = *v48;
  v50 = v48[8];
  outlined copy of Environment<Color?>.Content(*v48);
  v51 = *v47;
  v52 = v47[8];
  *v47 = v49;
  v47[8] = v50;
  outlined consume of Environment<AnyShapeStyle?>.Content(v51, v52);
  return a1;
}

_BYTE *initializeWithTake for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for ButtonAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v10;
    *(v7 + 31) = *(v8 + 31);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 56) = *(v8 + 56);
    *(v7 + 71) = *(v8 + 71);
    v11 = *(type metadata accessor for LinkDestination() + 24);
    v12 = &v7[v11];
    v13 = &v8[v11];
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 32))(v12, v13, v14);
    v15 = type metadata accessor for LinkDestination.Configuration();
    v12[*(v15 + 20)] = v13[*(v15 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  v16 = a3[5];
  v17 = a3[6];
  v18 = &a1[v16];
  v19 = &a2[v16];
  *v18 = *v19;
  v18[8] = v19[8];
  v20 = &a1[v17];
  v21 = &a2[v17];
  *v20 = *v21;
  v20[8] = v21[8];
  v22 = a3[7];
  v23 = &a1[v22];
  v24 = &a2[v22];
  *v23 = *v24;
  v23[8] = v24[8];
  return a1;
}

_BYTE *assignWithTake for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(&a1[v7], type metadata accessor for ButtonAction);
    v10 = type metadata accessor for ButtonAction(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v11;
      *(v8 + 31) = *(v9 + 31);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 56) = *(v9 + 56);
      *(v8 + 71) = *(v9 + 71);
      v12 = *(type metadata accessor for LinkDestination() + 24);
      v13 = &v8[v12];
      v14 = &v9[v12];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 32))(v13, v14, v15);
      v16 = type metadata accessor for LinkDestination.Configuration();
      v13[*(v16 + 20)] = v14[*(v16 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }
  }

  v17 = a3[5];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *v19;
  LOBYTE(v19) = v19[8];
  v21 = *v18;
  v22 = v18[8];
  *v18 = v20;
  v18[8] = v19;
  outlined consume of Environment<Bool>.Content(v21, v22);
  v23 = a3[6];
  v24 = &a1[v23];
  v25 = &a2[v23];
  v26 = *v25;
  LOBYTE(v25) = v25[8];
  v27 = *v24;
  v28 = v24[8];
  *v24 = v26;
  v24[8] = v25;
  outlined consume of Environment<AnyShapeStyle?>.Content(v27, v28);
  v29 = a3[7];
  v30 = &a1[v29];
  v31 = &a2[v29];
  v32 = *v31;
  LOBYTE(v31) = v31[8];
  v33 = *v30;
  v34 = v30[8];
  *v30 = v32;
  v30[8] = v31;
  outlined consume of Environment<AnyShapeStyle?>.Content(v33, v34);
  return a1;
}

uint64_t type metadata completion function for DefaultListButtonStyle.ListButton(uint64_t a1)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type _UnaryViewAdaptor<StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance _UnaryViewAdaptor<A>, &lazy cache variable for type metadata for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>, lazy protocol witness table accessor for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>);
    v5[2] = lazy protocol witness table accessor for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>> and conformance _UnaryViewAdaptor<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697F380], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.foregroundStyle : EnvironmentValues@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.foregroundStyle.getter();
  *a3 = result;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &type metadata for _FocusableModifier, MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>(255);
    type metadata accessor for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &type metadata for _FocusableModifier, MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for PrimitiveButtonStyleConfiguration.Label;
    v4[1] = &protocol witness table for _FocusableModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate()
{
  result = lazy protocol witness table cache variable for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate;
  if (!lazy protocol witness table cache variable for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonPrimaryTintListStyleContextPredicate, &type metadata for ButtonPrimaryTintListStyleContextPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier);
    v5[1] = lazy protocol witness table accessor for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>> and conformance _DefaultForegroundStyleModifier<A>, type metadata accessor for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>, MEMORY[0x1E6980AC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t destroy for ListButtonStyleDisabledOpacityModifier(uint64_t a1)
{
  outlined consume of Environment<AnyShapeStyle?>.Content(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

uint64_t initializeWithCopy for ListButtonStyleDisabledOpacityModifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 24);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  return a1;
}

uint64_t assignWithCopy for ListButtonStyleDisabledOpacityModifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  v8 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 24);
  outlined copy of Environment<Bool>.Content();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v2;
  outlined consume of Environment<Bool>.Content(v9, v10);
  return a1;
}

uint64_t assignWithTake for ListButtonStyleDisabledOpacityModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  return a1;
}

void type metadata accessor for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for _UnaryViewAdaptor();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>> and conformance <> StaticIf<A, B, C>)
  {
    v8 = v0;
    v9 = v1;
    type metadata accessor for StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate();
    ShouldRenderAs = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>();
    v7 = ShouldRenderAs;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, &v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect>, type metadata accessor for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = MEMORY[0x1E697E5C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}