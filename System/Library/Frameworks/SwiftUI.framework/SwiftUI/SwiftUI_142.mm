id UILargeContentViewerItemBridge.largeContentImage.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item);
  v2 = v1[10];
  v26[8] = v1[9];
  v27 = v2;
  v28[0] = v1[11];
  *(v28 + 11) = *(v1 + 187);
  v3 = v1[6];
  v26[4] = v1[5];
  v26[5] = v3;
  v4 = v1[8];
  v26[6] = v1[7];
  v26[7] = v4;
  v5 = v1[2];
  v26[0] = v1[1];
  v26[1] = v5;
  v6 = v1[4];
  v26[2] = v1[3];
  v26[3] = v6;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v26) == 1 || !v27)
  {
    v8 = v1[10];
    v23 = v1[9];
    v24 = v8;
    v25[0] = v1[11];
    *(v25 + 11) = *(v1 + 187);
    v9 = v1[6];
    v20 = v1[5];
    *v21 = v9;
    v10 = v1[8];
    *&v21[16] = v1[7];
    v22 = v10;
    v11 = v1[2];
    v16 = v1[1];
    v17 = v11;
    v12 = v1[4];
    v18 = v1[3];
    v19 = v12;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v16) == 1)
    {
      return 0;
    }

    else
    {
      v14[11] = v20;
      v15[0] = *v21;
      *(v15 + 12) = *&v21[12];
      v14[7] = v16;
      v14[8] = v17;
      v14[9] = v18;
      v14[10] = v19;
      outlined init with copy of GraphicsImage(&v16, v14);
      v13 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(1, 0, 0);
      outlined destroy of GraphicsImage(&v16);
      return v13;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }
}

id UILargeContentViewerItemBridge.accessibilityHUDRepresentation.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item);
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item + 8);
  v4 = UILargeContentViewerItemBridge.largeContentImage.getter();
  v5 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets);
  v6 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets + 8);
  v7 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets + 16);
  v8 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets + 24);
  if (v3)
  {
    v9 = MEMORY[0x18D00C850](v2, v3);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DC618]) initWithTitle:v9 image:v4 imageInsets:1 scaleImage:{v5, v6, v7, v8}];

  if ((*(v1 + 240) & 1) == 0)
  {
    [v10 setDisabledAppearance_];
  }

  return v10;
}

id UILargeContentViewerItemBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UILargeContentViewerItemBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance UIAccessibilityTraits@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v6[6];
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIAccessibilityTraits and conformance UIAccessibilityTraits(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for Serializable.serialize(to:) in conformance UIAccessibilityTraits(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v8[6] = v6;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance UIAccessibilityContainerType@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v6[6];
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

id AccessibilityNode.entry(for:going:from:resolveToLeaf:)(__int128 *a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v90 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v137 = *a1;
  v138 = v11;
  v139[0] = a1[2];
  *(v139 + 9) = *(a1 + 41);
  v86 = v12;
  if (a2 == 1)
  {
    LODWORD(v88) = 1;
  }

  else
  {
    if (a2)
    {
      goto LABEL_74;
    }

    LODWORD(v88) = 0;
  }

  if ([a3 targetElement])
  {
    v93 = &unk_1F00D1888;
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      v14 = v13;
      swift_getObjectType();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_10;
      }
    }

    swift_unknownObjectRelease();
  }

  v14 = 0;
LABEL_10:
  v15 = [a3 targetRange];
  v16 = v15;
  if (v15)
  {
    v17 = 2;
  }

  else
  {
    v17 = -1;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = [a3 targetRange];
  if (v15)
  {

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v18 = 1;
LABEL_17:
  v92 = v5;
  if (!v14)
  {
    LOBYTE(v127) = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    MEMORY[0x1EEE9AC00](v15);
    *(&v81 - 4) = &v137;
    *(&v81 - 3) = 0;
    v79 = &v120;
    static Update.ensure<A>(_:)();

    if (*(&v125 + 1))
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  LODWORD(v91) = a4;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  v19 = v14;
  v20 = v16;
  v21 = MEMORY[0x1E69E6720];
  outlined destroy of AccessibilityLargeContentViewItem?(&v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  v114 = 0u;
  memset(v115, 0, sizeof(v115));
  v113 = 0u;
  v22 = outlined destroy of AccessibilityLargeContentViewItem?(&v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v21);
  v87 = &v81;
  v101 = 0;
  memset(&v100[8], 0, 112);
  memset(v102, 0, 113);
  memset(v103, 0, 113);
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v104 = 0u;
  v95 = v137;
  v96 = v138;
  v97[0] = v139[0];
  *(v97 + 9) = *(v139 + 9);
  *&v98 = v5;
  *(&v98 + 1) = v19;
  v99 = v20;
  v83 = v17;
  v100[0] = v17;
  v100[1] = v18;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v82 = v18;
  *(&v81 - 4) = &v137;
  *(&v81 - 3) = partial apply for closure #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:);
  v79 = v24;
  v25 = v19;
  outlined init with copy of AccessibilityRotorInfo(&v137, &v94);
  v84 = v5;
  v85 = v20;
  v26 = v20;
  static Update.ensure<A>(_:)();
  outlined init with copy of AccessibilityLargeContentViewItem?(v102, &v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v21, type metadata accessor for AccessibilityUIKitTraits?);
  outlined init with copy of AccessibilityLargeContentViewItem?(v103, &v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v21, type metadata accessor for AccessibilityUIKitTraits?);
  outlined init with copy of AccessibilityLargeContentViewItem?(&v100[8], v112, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v21, type metadata accessor for AccessibilityUIKitTraits?);
  outlined destroy of MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(&v95);
  if (!v112[11])
  {
    v29 = v84;
    v28 = v85;
    v30 = outlined destroy of AccessibilityLargeContentViewItem?(v112, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    *&v95 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v30);
    MEMORY[0x1EEE9AC00](v31);
    *(&v81 - 4) = &v137;
    *(&v81 - 3) = partial apply for closure #1 in AccessibilityRotorInfo.resolveAllEntries();
    v79 = v32;
    static Update.ensure<A>(_:)();
    v33 = v95;
    if (!*(v95 + 16))
    {

      v35 = MEMORY[0x1E69E6720];
      outlined destroy of AccessibilityLargeContentViewItem?(&v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
      outlined destroy of AccessibilityLargeContentViewItem?(&v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v35);
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      LOBYTE(v127) = 0;
      goto LABEL_29;
    }

    v95 = v137;
    v96 = v138;
    v97[0] = v139[0];
    *(v97 + 9) = *(v139 + 9);
    AccessibilityRotorInfo.closestEntry(in:on:going:from:range:resolveToLeaf:)(v33, v29, v88, v25, v28, 0, v83, v82, &v120);

    v34 = MEMORY[0x1E69E6720];
    outlined destroy of AccessibilityLargeContentViewItem?(&v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    outlined destroy of AccessibilityLargeContentViewItem?(&v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v34);
    v5 = v92;
    a4 = v91;
    if (*(&v125 + 1))
    {
      goto LABEL_30;
    }

LABEL_22:
    outlined destroy of AccessibilityLargeContentViewItem?(&v120, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    return 0;
  }

  outlined destroy of AccessibilityLargeContentViewItem?(v112, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
  if (v88)
  {
    outlined destroy of AccessibilityLargeContentViewItem?(&v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    v124 = v116;
    v125 = v117;
    v126 = v118;
    LOBYTE(v127) = v119;
    v120 = v113;
    v121 = v114;
    v122 = v115[0];
    v123 = v115[1];
  }

  else
  {
    outlined destroy of AccessibilityLargeContentViewItem?(&v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    v124 = v133;
    v125 = v134;
    v126 = v135;
    LOBYTE(v127) = v136;
    v120 = v129;
    v121 = v130;
    v122 = v131;
    v123 = v132;
  }

LABEL_29:
  v5 = v92;
  a4 = v91;
  if (!*(&v125 + 1))
  {
    goto LABEL_22;
  }

LABEL_30:
  v133 = v124;
  v134 = v125;
  v135 = v126;
  v136 = v127;
  v129 = v120;
  v130 = v121;
  v131 = v122;
  v132 = v123;
  v36 = v125 == 0xFF;
  (*(&v125 + 1))();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    *&v120 = 0;
    BYTE8(v120) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  v113 = v137;
  v114 = v138;
  v115[0] = v139[0];
  *(v115 + 9) = *(v139 + 9);
  v37 = AccessibilityRotorInfo.resolveElement(with:on:scrollIfNeeded:resolveToLeaf:shouldLog:)(&v129, v5, 1, a4 & v36, 0);
  if (!v37)
  {
    LODWORD(v91) = a4;
    v88 = *MEMORY[0x1E695D918];
    v38 = *MEMORY[0x1E695DA28];
    v86 += 8;
    v87 = v38;
    v39 = 4;
    do
    {
      if (!v39)
      {
        outlined destroy of AccessibilityListRotorEntry(&v129);
        return 0;
      }

      v40 = v36;
      v41 = objc_opt_self();

      type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode, MEMORY[0x1E69E6F90]);
      v42 = swift_allocObject();
      v44 = v87;
      v43 = v88;
      *(v42 + 32) = v88;
      *(v42 + 40) = v44;
      swift_setDeallocating();
      type metadata accessor for NSRunLoopMode(0);
      v45 = v43;
      v46 = v44;
      v47 = v45;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v48 = [v41 currentRunLoop];
      v49 = v89;
      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v86)(v49, v90);
      LOBYTE(v49) = [v48 runMode:v47 beforeDate:isa];

      if ((v49 & 1) == 0)
      {
        [objc_opt_self() sleepForTimeInterval_];
      }

      --v39;
      v113 = v137;
      v114 = v138;
      v115[0] = v139[0];
      *(v115 + 9) = *(v139 + 9);
      v36 = v40;
      v37 = AccessibilityRotorInfo.resolveElement(with:on:scrollIfNeeded:resolveToLeaf:shouldLog:)(&v129, v92, 1, v91 & v40, v39 == 0);
    }

    while (!v37);
  }

  v51 = *(&v133 + 1);
  v92 = v133;
  v52 = v134;
  v89 = v37;
  if (v134 == 2)
  {
    outlined copy of AccessibilityRotorEntryRange(v92, *(&v133 + 1), 2);
    goto LABEL_70;
  }

  if (v134 == 255)
  {
    v92 = 0;
LABEL_70:
    outlined init with copy of AccessibilityListRotorEntry(&v129, &v120);
    *(&v127 + 1) = v89;
    *&v100[32] = v92;
    v97[0] = v122;
    v97[1] = v123;
    v98 = v124;
    v99 = v125;
    v95 = v120;
    v96 = v121;
    *v100 = v126;
    *&v100[16] = v127;
    outlined init with copy of AccessibilityNavigationRotorEntry(&v95, &v120);
    v77 = objc_allocWithZone(MEMORY[0x1E69DC5F8]);
    v78 = [v77 initWithTargetElement:*(&v127 + 1) targetRange:v128];
    outlined destroy of AccessibilityNavigationRotorEntry(&v95);
    outlined destroy of AccessibilityNavigationRotorEntry(&v120);
    outlined destroy of AccessibilityListRotorEntry(&v129);
    return v78;
  }

  v53 = v37;
  ObjectType = swift_getObjectType();
  v55 = v92;
  outlined copy of AccessibilityRotorEntryRange(v92, v51, v52);
  v90 = ObjectType;
  v56 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
  v57 = *(v56 + 2);
  v58 = v53;
  outlined copy of AccessibilityRotorEntryRange?(v55, v51, v52);
  v91 = v58;
  if (!v57)
  {
LABEL_58:
    v69 = *(v56 + 2);
    if (v57 == v69)
    {

      outlined consume of AccessibilityRotorEntryRange?(v92, v51, v52);

      v70 = 0;
LABEL_69:
      outlined consume of AccessibilityRotorEntryRange?(v92, v51, v52);

      v92 = v70;
      goto LABEL_70;
    }

    if (v57 >= v69)
    {
      goto LABEL_72;
    }

    v71 = &v56[16 * v57 + 32];
    v72 = v71[1];
    if (v52)
    {
      if (v52 != 1)
      {

        LOBYTE(v52) = 2;
        v70 = v92;
        goto LABEL_69;
      }

      v73 = *v71;

      v74 = specialized String.resolveNSRange(_:in:)(v92, v51, v73, v72);
      if (v76)
      {

        goto LABEL_73;
      }
    }

    else
    {

      v74 = v92;
      v75 = v51;
    }

    v70 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v74, v75, v90);

    outlined consume of AccessibilityRotorEntryRange?(v92, v51, v52);
    if (!v70)
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  v59 = 0;
  v86 = v56;
  v87 = v57;
  v60 = (v56 + 40);
  LODWORD(v88) = v52;
  while (1)
  {
    v61 = *v60;
    if (!v52)
    {

      v68 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v92, v51, v90);
      goto LABEL_54;
    }

    if (v52 != 1)
    {
      v57 = 0;
      goto LABEL_57;
    }

    v62 = *(v60 - 1);
    *&v113 = v92;
    *(&v113 + 1) = v51;
    v112[0] = v62;
    v112[1] = v61;
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_bridgeObjectRetain_n();
    v63 = _NSRange.init<A, B>(_:in:)();
    v65 = v64;
    if (v63 == NSNotFound.getter())
    {
LABEL_45:

      v52 = v88;
      v57 = v87;
      goto LABEL_46;
    }

    if (__OFADD__(v63, v65))
    {
      break;
    }

    v66 = MEMORY[0x18D00C850](v62, v61);
    v67 = [v66 length];

    if (v67 < v63 + v65)
    {
      goto LABEL_45;
    }

    v68 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v63, v65, v90);
    v52 = v88;
    v57 = v87;
LABEL_54:

    if (v68)
    {
      v57 = v59;
LABEL_57:
      v56 = v86;
      goto LABEL_58;
    }

LABEL_46:
    v59 = (v59 + 1);
    v60 += 2;
    if (v57 == v59)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:

  __break(1u);
LABEL_74:
  v80 = 0;
  v79 = 1300;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id closure #1 in AccessibilityRotorInfo.resolve(in:for:)(void *a1, uint64_t a2, __int128 *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = a3[1];
  v12[0] = *a3;
  v12[1] = v7;
  v13[0] = a3[2];
  *(v13 + 9) = *(a3 + 41);
  v8 = [a1 searchDirection];
  v9 = [a1 currentItem];
  v10 = AccessibilityNode.entry(for:going:from:resolveToLeaf:)(v12, v8, v9, [a1 swiftUI_honorsGroups] ^ 1);

  return v10;
}

id closure #1 in UIKitAccessibilityLinkRotorBridge.init(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = AccessibilityNode.currentLinkRotor.getter();

    if (v4)
    {
      v5 = UIAccessibilityCustomRotorSearchPredicate.linkRotorSearchParameters.getter();
      if (v5 != 1)
      {
        v7 = v5;
        v8 = v6;
        UIKitAccessibilityLinkRotorBridge.update()();
        UIKitAccessibilityLinkRotorBridge.search(parameters:)(v7, v8 & 1);
        if (v9)
        {
          v10 = v9;
          v11 = [objc_allocWithZone(MEMORY[0x1E69DC5F8]) initWithTargetElement:v9 targetRange:0];

          outlined consume of SheetBridge<SheetPreference.Key>??(v7);
          return v11;
        }

        outlined consume of SheetBridge<SheetPreference.Key>??(v7);
      }
    }

    return 0;
  }

  return result;
}

uint64_t UIAccessibilityCustomRotorSearchPredicate.linkRotorSearchParameters.getter()
{
  v1 = [v0 currentItem];
  v2 = [v1 targetElement];

  if (v2)
  {
    type metadata accessor for UIKitAccessibilityLinkRotorBridge.LinkElement();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  if ([v0 searchDirection] <= 1)
  {
    return v3;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void @objc UIKitAccessibilityLinkRotorBridge.init(name:itemSearch:)(int a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  _Block_copy(aBlock);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void *UIKitAccessibilityLinkRotorBridge.LinkElement.accessibilityLabel.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result accessibilityLabel];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = MEMORY[0x18D00C850](v4, v6);

      v8 = (v0 + OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_range);
      v9 = v8[1];
      if (__OFADD__(*v8, v9))
      {
        __break(1u);
        return result;
      }

      v10 = *v8 + v9;
      if ([v7 length] >= v10)
      {
        v11 = [v7 substringWithRange_];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v12;
      }
    }

    return 0;
  }

  return result;
}

double UIKitAccessibilityLinkRotorBridge.LinkElement.accessibilityActivationPoint.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v2 = Strong;
  [Strong _accessibilityBoundsForRange_];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  v11 = v4 + CGRectGetWidth(v13) * 0.5;
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetHeight(v14);
  return v11;
}

uint64_t AccessibilityActionCategory.Category.platformValue(in:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = a5;
  if (a5)
  {
    if (a5 == 1)
    {
      return static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v11 = *a1;
    v9 = 0;
    v10 = 0;
    MEMORY[0x18D005BC0](&v8);
    return static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
  }

  return v5;
}

id PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PlatformAccessibilityElementProtocol<>.elementResolvingNode.getter();
  if ([v5 respondsToSelector_])
  {
    v6 = [v5 _textRangeFromNSRange_];

    return v6;
  }

  if ([v5 respondsToSelector_])
  {
    v8 = [v5 _textInputForReveal];
    if (v8)
    {
      v9 = v8;
      if ([v8 respondsToSelector_])
      {
        v10 = [v9 _textRangeFromNSRange_];

        swift_unknownObjectRelease();
        return v10;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(uint64_t a1, uint64_t a2)
{
  v3 = PlatformAccessibilityElementProtocol<>.elementResolvingNode.getter();
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 _nsrangeForTextRange_];

    return v4;
  }

  if ([v3 respondsToSelector_])
  {
    v6 = [v3 _textInputForReveal];
    if (v6)
    {
      v7 = v6;
      if ([v6 respondsToSelector_])
      {
        v4 = [v7 _nsrangeForTextRange_];

        swift_unknownObjectRelease();
        return v4;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void PlatformAccessibilityElementProtocol<>.traverseAncestors(_:)(uint64_t (*a1)(void))
{
  v6 = v1;
  if (a1())
  {
    v3 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      if ([v6 respondsToSelector_])
      {
        if ([v6 accessibilityContainer])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v8 = 0u;
          v9 = 0u;
        }

        v10[0] = v8;
        v10[1] = v9;
        if (*(&v9 + 1))
        {
          type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
          if (swift_dynamicCast())
          {

            v4 = v7;
            goto LABEL_4;
          }
        }

        else
        {
          outlined destroy of AccessibilityLargeContentViewItem?(v10, &lazy cache variable for type metadata for Any?, v3 + 8, MEMORY[0x1E69E6720]);
        }
      }

      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
LABEL_19:

        return;
      }

      v4 = [v5 superview];

      if (!v4)
      {
        return;
      }

LABEL_4:
      v6 = v4;
      if ((a1() & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }
}

id PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(uint64_t a1)
{
  if (![v1 respondsToSelector_])
  {
    return 0;
  }

  return [v1 accessibilityCompareGeometry_];
}

unint64_t one-time initialization function for lastFocus()
{
  v0 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v0);
  static AccessibilityFocus.lastFocus = result;
  return result;
}

void *PlatformAccessibilityLocationDescriptor.view.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

double PlatformAccessibilityLocationDescriptor.point.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = 0.0;
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 16);
        if (v6 >= 2)
        {
          *&v7 = COERCE_DOUBLE(AccessibilityNode.explicitActivationPoint.getter());
          if (v11 == -1)
          {
            AccessibilityNode.implicitActivationPoint(options:)(0);
            if (v12 == -1)
            {
              [v3 accessibilityFrame];
              x = v31.origin.x;
              y = v31.origin.y;
              width = v31.size.width;
              height = v31.size.height;
              if (CGRectIsEmpty(v31))
              {
                v17 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
                NSClassFromString(v17);
              }

              v32.origin.x = x;
              v32.origin.y = y;
              v32.size.width = width;
              v32.size.height = height;
              *&v18 = x + CGRectGetWidth(v32) * 0.5;
              v33.origin.x = x;
              v33.origin.y = y;
              v33.size.width = width;
              v33.size.height = height;
              v19 = CGRectGetHeight(v33);
              v7 = v18;
              v8 = y + v19 * 0.5;
            }
          }
        }

        else
        {
          v29 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint);
          v30 = v6;
          *&v7 = COERCE_DOUBLE(AccessibilityNode.resolvedActivationPoint(for:)(&v29));
          if (v9 == -1)
          {
            goto LABEL_16;
          }
        }

        v2 = *&v7;
        v20 = v8;
        v21 = [v5 window];
        if (v21)
        {
          v22 = v21;
          [v21 convertPoint:0 fromWindow:{v2, v20}];
          v24 = v23;
          v26 = v25;
          v27 = v22;
          [v5 convertPoint:v27 fromCoordinateSpace:{v24, v26}];
          v2 = v28;
        }
      }

LABEL_16:

      swift_unknownObjectRelease();
      return v2;
    }
  }

  return v2;
}

uint64_t PlatformAccessibilityLocationDescriptor.name.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 16);
  v4 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 32);
  v5 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 40);
  v6 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 48);
  v22 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint);
  v23 = v2;
  v24 = v4;
  v25 = v3;
  v26 = v5;
  v27 = v6;
  v7 = (Strong + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v8 = *(Strong + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  *&v21 = *(Strong + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  *(&v21 + 1) = v8;
  v9 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_kind);
  v10 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_resolveLabel);
  v11 = Strong;
  outlined copy of Text.Storage(v4, v3, v5);

  v12 = AccessibilityActivationPoint.resolvedDescription(for:in:kind:resolveLabel:)(v11, &v21, v9, v10);
  v14 = v13;
  LOBYTE(v8) = v15;

  outlined consume of Text.Storage(v24, v25, v26);

  v16 = v7[1];
  *&v22 = *v7;
  *(&v22 + 1) = v16;
  v21 = 0uLL;

  MEMORY[0x18D005BC0](&v20, v17);
  v18 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
  outlined consume of Text.Storage(v12, v14, v8 & 1);

  return v18;
}

id PlatformAccessibilityLocationDescriptor.attributedName.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 16);
    v4 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 24);
    v5 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 32);
    v6 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 40);
    v7 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint + 48);
    v31 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint);
    v32 = v3;
    v33 = v4;
    v34 = v5;
    v35 = v6;
    v36 = v7;
    v8 = &v2[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
    v9 = *&v2[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
    *&v30 = *&v2[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
    *(&v30 + 1) = v9;
    v10 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_kind);
    v11 = *(v0 + OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_resolveLabel);
    outlined copy of Text.Storage(v4, v5, v6);

    v12 = AccessibilityActivationPoint.resolvedDescription(for:in:kind:resolveLabel:)(v2, &v30, v10, v11);
    v14 = v13;
    v16 = v15;

    outlined consume of Text.Storage(v33, v34, v35);

    v17 = *(v8 + 1);
    *&v31 = *v8;
    *(&v31 + 1) = v17;
    v30 = 0uLL;

    default argument 2 of static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
    v18 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();

    if (v18)
    {
      outlined consume of Text.Storage(v12, v14, v16 & 1);

      return v18;
    }

    else
    {
      v21 = *(v8 + 1);
      *&v31 = *v8;
      *(&v31 + 1) = v21;
      v30 = 0uLL;

      MEMORY[0x18D005BC0](&v29, v22);
      v23 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
      v25 = v24;

      v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v27 = MEMORY[0x18D00C850](v23, v25);

      v28 = [v26 initWithString_];

      outlined consume of Text.Storage(v12, v14, v16 & 1);

      return v28;
    }
  }

  else
  {
    v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    return [v20 init];
  }
}

void *closure #1 in PlatformItemList.Item.applyAccessibilityProperties(to:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result swiftUI_accessibilityStoredLabel];
    if (v3)
    {
      if (one-time initialization token for configuredForPlatform != -1)
      {
        v12 = v3;
        swift_once();
        v3 = v12;
      }

      v13 = v3;
      v4 = v3;
      v5 = v13;
      if ((static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)() & 1) == 0)
      {

        v5 = v4;
      }

      v6 = AXAttributedStringCreate(v5);

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v7;
    }

    else
    {
      v8 = [v2 swiftUI_accessibilityAttributedLabel];
      if (v8)
      {
        v9 = v8;
        v10 = AXAttributedStringCreate(v9);
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v11;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void closure #1 in PlatformItem.applyAccessibilityProperties(on:item:)(uint64_t *a2@<X8>)
{
  v4 = PlatformItem.AccessibilityContent.environment.getter();
  MEMORY[0x18D005BC0](&v8, v4);
  v5 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

void UICollectionViewCell.accessibilityLabelPrefix(in:)(uint64_t *a1)
{
  v2 = a1[1];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v29 = v1;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();
  v5 = v1;
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v31 != 1)
  {

    return;
  }

  v6 = [v4 accessories];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICellAccessory, 0x1E69DC780);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_35:
    v11 = MEMORY[0x1E69E7CC0];
LABEL_36:

    if (!*(v11 + 2))
    {
    }

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_8:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    v30 = v8;
    while (1)
    {
      if (v10)
      {
        v13 = MEMORY[0x18D00E9C0](v9, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v9 + 32);
      }

      v14 = v13;
      if (![v13 v12[68]])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          if (one-time initialization token for remove != -1)
          {
            swift_once();
          }

          v15 = static Text.Accessibility.remove;
          v16 = qword_1EAB09B30;
          v17 = byte_1EAB09B38;
          v18 = qword_1EAB09B40;
          outlined copy of Text.Storage(static Text.Accessibility.remove, qword_1EAB09B30, byte_1EAB09B38);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
          }

          v20 = *(v11 + 2);
          v19 = *(v11 + 3);
          if (v20 >= v19 >> 1)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v11);
          }

          *(v11 + 2) = v20 + 1;
          v21 = &v11[32 * v20];
          *(v21 + 4) = v15;
          *(v21 + 5) = v16;
          v21[48] = v17;
          *(v21 + 7) = v18;
LABEL_32:
          v10 = v7 & 0xC000000000000001;
          v8 = v30;
          v12 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
          goto LABEL_11;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          if (one-time initialization token for insert != -1)
          {
            swift_once();
          }

          v22 = static Text.Accessibility.insert;
          v23 = qword_1EAB09B50;
          v24 = byte_1EAB09B58;
          v25 = qword_1EAB09B60;
          outlined copy of Text.Storage(static Text.Accessibility.insert, qword_1EAB09B50, byte_1EAB09B58);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
          }

          v27 = *(v11 + 2);
          v26 = *(v11 + 3);
          if (v27 >= v26 >> 1)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v11);
          }

          *(v11 + 2) = v27 + 1;
          v28 = &v11[32 * v27];
          *(v28 + 4) = v22;
          *(v28 + 5) = v23;
          v28[48] = v24;
          *(v28 + 7) = v25;
          goto LABEL_32;
        }
      }

LABEL_11:
      if (v8 == ++v9)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
}

uint64_t PlatformAccessibilityElementProtocol<>.bridgedProperties.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  AccessibilityProperties.init(reserving:)();
  if (_AXSwiftUIGetObjectFromSelectorAsAny(v2, sel_accessibilityAttributedLabel))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v152, &v147);
    __swift_project_boxed_opaque_existential_1(&v147, v149);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    v5 = _AXSwiftUIIsAnyStringEmpty(v4);
    swift_unknownObjectRelease();
    if (!v5)
    {
LABEL_6:
      type metadata accessor for AccessibilityUIKitTraits?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_18CD63400;
      outlined init with copy of Any(&v147, &v152);
      AccessibilityText.init(_:)();
      v9 = v154;
      v10 = v155;
      v152 = v154;
      LOWORD(v153[0]) = v155;
      *(v8 + 32) = AccessibilityText.text.getter();
      *(v8 + 40) = v11;
      *(v8 + 48) = v12 & 1;
      *(v8 + 56) = v13;
      outlined consume of AccessibilityText.Storage(v9, *(&v9 + 1), v10);

      *(a2 + 24) = v8;
      *(a2 + 32) = 2;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1(&v147);
  }

  if (!_AXSwiftUIGetObjectFromSelectorAsAny(v3, sel_accessibilityLabel))
  {
    goto LABEL_8;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v152, &v147);
  __swift_project_boxed_opaque_existential_1(&v147, v149);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v7 = _AXSwiftUIIsAnyStringEmpty(v6);
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(&v147);
LABEL_8:
  if (_AXSwiftUIGetObjectFromSelectorAsAny(v3, sel_accessibilityAttributedValue))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v147, &v152);
    __swift_project_boxed_opaque_existential_1(&v152, *(&v153[0] + 1));
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    v15 = _AXSwiftUIIsAnyStringEmpty(v14);
    swift_unknownObjectRelease();
    if (!v15)
    {
LABEL_13:
      outlined init with copy of Any(&v152, &v147);
      AccessibilityText.init(_:)();
      v18 = v154;
      v19 = v155;
      AccessibilityText.text.getter();
      outlined consume of AccessibilityText.Storage(v18, *(&v18 + 1), v19);
      AccessibilityValueStorage.init(description:)();
      outlined assign with take of AccessibilityValueStorage?(&v147, a2 + 64);
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_1(&v152);
  }

  if (!_AXSwiftUIGetObjectFromSelectorAsAny(v3, sel_accessibilityValue))
  {
    goto LABEL_15;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v147, &v152);
  __swift_project_boxed_opaque_existential_1(&v152, *(&v153[0] + 1));
  v16 = _bridgeAnythingToObjectiveC<A>(_:)();
  v17 = _AXSwiftUIIsAnyStringEmpty(v16);
  swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(&v152);
LABEL_15:
  if (_AXSwiftUIGetObjectFromSelectorAsAny(v3, sel_accessibilityAttributedHint))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v152, &v147);
    __swift_project_boxed_opaque_existential_1(&v147, v149);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    v21 = _AXSwiftUIIsAnyStringEmpty(v20);
    swift_unknownObjectRelease();
    if (!v21)
    {
LABEL_20:
      type metadata accessor for AccessibilityUIKitTraits?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_18CD63400;
      outlined init with copy of Any(&v147, &v152);
      AccessibilityText.init(_:)();
      v25 = v154;
      v26 = v155;
      v152 = v154;
      LOWORD(v153[0]) = v155;
      *(v24 + 32) = AccessibilityText.text.getter();
      *(v24 + 40) = v27;
      *(v24 + 48) = v28 & 1;
      *(v24 + 56) = v29;
      outlined consume of AccessibilityText.Storage(v25, *(&v25 + 1), v26);
      MEMORY[0x18D008650](v24);
      goto LABEL_21;
    }

    __swift_destroy_boxed_opaque_existential_1(&v147);
  }

  if (!_AXSwiftUIGetObjectFromSelectorAsAny(v3, sel_accessibilityHint))
  {
    goto LABEL_22;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v152, &v147);
  __swift_project_boxed_opaque_existential_1(&v147, v149);
  v22 = _bridgeAnythingToObjectiveC<A>(_:)();
  v23 = _AXSwiftUIIsAnyStringEmpty(v22);
  swift_unknownObjectRelease();
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_21:
  __swift_destroy_boxed_opaque_existential_1(&v147);
LABEL_22:
  v30 = [v3 accessibilityAttributedUserInputLabels];
  if (v30)
  {
    v31 = v30;
    v32 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v143 = v3;
    if (v33 >> 62)
    {
LABEL_43:
      v34 = __CocoaSet.count.getter();
      if (v34)
      {
LABEL_25:
        v35 = 0;
        v36 = MEMORY[0x1E69E7CC0];
        do
        {
          v37 = v35;
          while (1)
          {
            if ((v33 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x18D00E9C0](v37, v33);
            }

            else
            {
              if (v37 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

              v38 = *(v33 + 8 * v37 + 32);
            }

            v39 = v38;
            v35 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            if (!_AXSwiftUIIsAnyStringEmpty(v38))
            {
              break;
            }

            ++v37;
            if (v35 == v34)
            {
              goto LABEL_58;
            }
          }

          v140 = v32;
          v149 = v32;
          *&v147 = v39;
          v133 = v39;
          AccessibilityText.init(_:)();
          v40 = v36;
          v41 = *(&v152 + 1);
          v42 = v152;
          v43 = v153[0];
          v147 = v152;
          v148 = v153[0];
          v44 = AccessibilityText.text.getter();
          v137 = v45;
          v138 = v46;
          v135 = v47;

          v48 = v42;
          v36 = v40;
          outlined consume of AccessibilityText.Storage(v48, v41, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
          }

          v50 = *(v36 + 2);
          v49 = *(v36 + 3);
          v32 = v140;
          if (v50 >= v49 >> 1)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v36);
          }

          *(v36 + 2) = v50 + 1;
          v51 = &v36[32 * v50];
          *(v51 + 4) = v44;
          *(v51 + 5) = v137;
          v51[48] = v135 & 1;
          *(v51 + 7) = v138;
        }

        while (v35 != v34);
        goto LABEL_58;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_25;
      }
    }
  }

  v52 = [v3 accessibilityUserInputLabels];
  if (!v52)
  {
    goto LABEL_59;
  }

  v53 = MEMORY[0x1E69E6158];
  v54 = v52;
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = *(v55 + 16);
  if (v56)
  {
    v143 = v3;
    v57 = 0;
    v58 = v55 + 40;
    v141 = MEMORY[0x1E69E7CC0];
    do
    {
      v59 = (v58 + 16 * v57);
      v3 = v57;
      while (1)
      {
        if (v3 >= *(v55 + 16))
        {
          __break(1u);
          goto LABEL_95;
        }

        v60 = *(v59 - 1);
        v61 = *v59;
        v57 = v3 + 1;

        v62 = MEMORY[0x18D00C850](v60, v61);
        v63 = _AXSwiftUIIsAnyStringEmpty(v62);

        if (!v63)
        {
          break;
        }

        v59 += 2;
        ++v3;
        if (v56 == v57)
        {
          goto LABEL_58;
        }
      }

      v149 = v53;
      *&v147 = v60;
      *(&v147 + 1) = v61;

      AccessibilityText.init(_:)();
      v64 = v152;
      v65 = v153[0];
      v147 = v152;
      v148 = v153[0];
      v66 = AccessibilityText.text.getter();
      v68 = v67;
      v134 = v69;
      v136 = v70;

      outlined consume of AccessibilityText.Storage(v64, *(&v64 + 1), v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v141 + 2) + 1, 1, v141);
      }

      v72 = *(v141 + 2);
      v71 = *(v141 + 3);
      v53 = MEMORY[0x1E69E6158];
      if (v72 >= v71 >> 1)
      {
        v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v141);
      }

      *(v141 + 2) = v72 + 1;
      v73 = &v141[32 * v72];
      *(v73 + 4) = v66;
      *(v73 + 5) = v68;
      v73[48] = v134 & 1;
      *(v73 + 7) = v136;
      v58 = v55 + 40;
    }

    while (v56 - 1 != v3);
LABEL_58:

    AccessibilityProperties.inputLabels.setter();
    v3 = v143;
    goto LABEL_59;
  }

LABEL_59:
  v74 = [v3 accessibilityIdentifier];
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    v79 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v79 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (v79)
    {

      *a2 = v76;
      *(a2 + 8) = v78;
      *(a2 + 16) = 0;
    }

    else
    {
    }
  }

  v80 = [v3 accessibilityTraits];
  if ((*MEMORY[0x1E69DD9A8] & ~v80) != 0)
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v81 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = swift_allocObject();
    *(v82 + 16) = a1;
    *(v82 + 24) = v81;
    LODWORD(v81) = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>(0);
    v149 = v83;
    v150 = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v84 = swift_allocObject();
    *&v147 = v84;
    *(v84 + 16) = 2;
    *(v84 + 24) = 0;
    *(v84 + 32) = 0;
    *(v84 + 40) = 0;
    *(v84 + 48) = 2;
    *(v84 + 56) = 0u;
    *(v84 + 72) = 0u;
    *(v84 + 88) = 0;
    *(v84 + 96) = partial apply for closure #3 in PlatformAccessibilityElementProtocol<>.bridgedProperties.getter;
    *(v84 + 104) = v82;
    *(v84 + 112) = v81;
    v151 = 1;
    outlined init with copy of AnyAccessibilityAction(&v147, &v152);
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v86 = *(v55 + 16);
    v85 = *(v55 + 24);
    if (v86 >= v85 >> 1)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v55);
    }

    *(v55 + 16) = v86 + 1;
    v87 = (v55 + 48 * v86);
    v88 = v152;
    v89 = v153[0];
    *(v87 + 57) = *(v153 + 9);
    v87[2] = v88;
    v87[3] = v89;
    outlined destroy of AnyAccessibilityAction(&v147);
  }

  v90 = [v3 swiftUI_accessibilityActivateBlock];
  if (v90)
  {
    _Block_release(v90);
    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    *(v92 + 16) = a1;
    *(v92 + 24) = v91;
    v93 = swift_allocObject();
    *(v93 + 16) = partial apply for closure #4 in PlatformAccessibilityElementProtocol<>.bridgedProperties.getter;
    *(v93 + 24) = v92;
    LODWORD(v92) = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
    v149 = v94;
    v150 = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v95 = swift_allocObject();
    *&v147 = v95;
    *(v95 + 16) = 0u;
    *(v95 + 32) = 0u;
    *(v95 + 48) = 0u;
    *(v95 + 64) = 0;
    *(v95 + 72) = 2;
    *(v95 + 80) = 0u;
    *(v95 + 96) = 0u;
    *(v95 + 112) = 0;
    *(v95 + 120) = thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult)partial apply;
    *(v95 + 128) = v93;
    *(v95 + 136) = v92;
    v151 = 1;
    outlined init with copy of AnyAccessibilityAction(&v147, &v152);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_95:
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 16) + 1, 1, v55);
    }

    v97 = *(v55 + 16);
    v96 = *(v55 + 24);
    if (v97 >= v96 >> 1)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v55);
    }

    *(v55 + 16) = v97 + 1;
    v98 = (v55 + 48 * v97);
    v99 = v152;
    v100 = v153[0];
    *(v98 + 57) = *(v153 + 9);
    v98[2] = v99;
    v98[3] = v100;
    outlined destroy of AnyAccessibilityAction(&v147);
  }

  v101 = [v3 accessibilityCustomActions];
  if (!v101)
  {
    goto LABEL_98;
  }

  v102 = v101;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction, 0x1E69DC5E8);
  v103 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v104 = v103;
  if (v103 >> 62)
  {
    result = __CocoaSet.count.getter();
    v104 = v103;
    if (result)
    {
      goto LABEL_78;
    }
  }

  else
  {
    result = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_78:
      v146 = result - 1;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v106 = 0;
      v142 = v104 & 0xC000000000000001;
      v144 = v104;
      if ((v104 & 0xC000000000000001) == 0)
      {
        goto LABEL_81;
      }

LABEL_80:
      for (i = MEMORY[0x18D00E9C0](v106); ; i = *(v104 + 8 * v106 + 32))
      {
        v108 = i;
        v109 = [i attributedName];
        *(&v153[0] + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
        *&v152 = v109;
        AccessibilityText.init(_:)();
        v110 = v154;
        v111 = v155;
        v152 = v154;
        LOWORD(v153[0]) = v155;
        v112 = AccessibilityText.text.getter();
        v114 = v113;
        v116 = v115;
        v118 = v117;
        outlined consume of AccessibilityText.Storage(v110, *(&v110 + 1), v111);
        v119 = [v108 image];
        if (v119)
        {
          v120 = v119;
          type metadata accessor for ImageProviderBox<UIImage>(0);
          v121 = swift_allocObject();
          *(v121 + 16) = v120;
        }

        else
        {
          v121 = 0;
        }

        v122 = v116 & 1;
        v123 = swift_allocObject();
        *(v123 + 16) = v108;
        v124 = swift_allocObject();
        *(v124 + 16) = partial apply for closure #6 in PlatformAccessibilityElementProtocol<>.bridgedProperties.getter;
        *(v124 + 24) = v123;
        LODWORD(v123) = AccessibilityActionHandlerSeed++;
        type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
        v149 = v125;
        v150 = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
        v126 = swift_allocObject();
        *&v147 = v126;
        *(v126 + 16) = v112;
        *(v126 + 24) = v114;
        *(v126 + 32) = v122;
        *(v126 + 40) = v118;
        *(v126 + 48) = 0;
        *(v126 + 56) = 0;
        *(v126 + 64) = 0;
        *(v126 + 72) = 2;
        *(v126 + 80) = 0u;
        *(v126 + 96) = 0u;
        *(v126 + 112) = v121;
        *(v126 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
        *(v126 + 128) = v124;
        *(v126 + 136) = v123;
        v151 = 1;
        outlined init with copy of AnyAccessibilityAction(&v147, &v152);
        v127 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 16) + 1, 1, v55);
        }

        v129 = *(v55 + 16);
        v128 = *(v55 + 24);
        if (v129 >= v128 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v55);
        }

        *(v55 + 16) = v129 + 1;
        v130 = (v55 + 48 * v129);
        v131 = v152;
        v132 = v153[0];
        *(v130 + 57) = *(v153 + 9);
        v130[2] = v131;
        v130[3] = v132;
        outlined destroy of AnyAccessibilityAction(&v147);
        if (v146 == v106)
        {
          break;
        }

        ++v106;
        v104 = v144;
        if (v142)
        {
          goto LABEL_80;
        }

LABEL_81:
        ;
      }
    }
  }

LABEL_98:
  if (!*(v55 + 16))
  {
  }

  *&v147 = v55;
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  return AccessibilityProperties.subscript.setter();
}

void closure #3 in PlatformAccessibilityElementProtocol<>.bridgedProperties.getter(_BYTE *a1@<X0>, _BYTE *a3@<X8>)
{
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = &selRef_accessibilityDecrement;
LABEL_6:
      v6 = Strong;
      [Strong *v5];
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = &selRef_accessibilityIncrement;
      goto LABEL_6;
    }
  }

  *a3 = 2;
}

void closure #4 in PlatformAccessibilityElementProtocol<>.bridgedProperties.getter(char *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = [Strong swiftUI_accessibilityActivateBlock], v4, v5) && (v6 = v5[2](v5), _Block_release(v5), (v6 & 1) != 0))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  *a2 = v7;
}

void closure #6 in PlatformAccessibilityElementProtocol<>.bridgedProperties.getter(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 actionHandler];
  if (!v4)
  {
    if ([a1 target])
    {
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (v8)
      {
        v9 = v8;
        if ([v8 respondsToSelector_])
        {
          [swift_unknownObjectRetain() performSelector:objc_msgSend(a1 withObject:{sel_selector), a1}];
          v10 = v9;
          swift_unknownObjectRelease();
          v7 = 2;
          goto LABEL_11;
        }
      }

      swift_unknownObjectRelease();
    }

    v7 = 1;
    goto LABEL_11;
  }

  v5 = v4;
  v6 = (*(v4 + 2))(v4, a1);
  _Block_release(v5);
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

LABEL_11:
  *a2 = v7;
}

id protocol witness for AccessibilityCoreNotification.info.getter in conformance AccessibilityCore.Notification.LayoutChanged@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v6 = *v1;
    ObjectType = swift_getObjectType();
    v3 = v6;
  }

  else
  {
    ObjectType = 0;
  }

  *a1 = v3;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = ObjectType;

  return v3;
}

void specialized static AccessibilityFocus.move(to:for:)(void *a1, _WORD *a2)
{
  if ((*a2 & 1) == 0)
  {
    return;
  }

  type metadata accessor for AccessibilityNode();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v11 = v3;
    v4 = a1;
    v5 = v11;
  }

  else
  {
    v5 = [a1 accessibilityNodeForPlatformElement];
    if (!v5)
    {
LABEL_13:

      specialized AccessibilityCoreNotification.post()(a1);
      return;
    }
  }

  v12 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    goto LABEL_13;
  }

  AccessibilityNode.visibility.getter(&v13);
  if ((v13 & 0x20) != 0 || (v8 = &v12[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_viewRendererHost], !swift_unknownObjectWeakLoadStrong()))
  {

    goto LABEL_13;
  }

  v9 = *(v8 + 1);
  ObjectType = swift_getObjectType();
  (*(*(v9 + 16) + 88))(ObjectType);
  specialized AccessibilityCoreNotification.post()(a1, 1);
  swift_unknownObjectRelease();
}

void *specialized static AccessibilityFocus.resolvePlatformFocus()(uint64_t a1)
{
  v1 = static AccessibilityEnabledTechnology.focusSupportingTechnologies.getter();
  v2 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(v2);
  v4 = *(v1 + 16);
  if (!v4)
  {
LABEL_33:

    return v3;
  }

  v5 = 0;
  v6 = *MEMORY[0x1E69DD8F0];
  v7 = *MEMORY[0x1E69DD8F8];
  v8 = MEMORY[0x1E69E7CA0];
  v30 = *(v1 + 16);
  v31 = *MEMORY[0x1E69DD8F0];
  while (v5 < *(v1 + 16))
  {
    v9 = *(v1 + v5 + 32);
    v10 = v7;
    if (*(v1 + v5 + 32))
    {
      if (v9 != 1)
      {
        goto LABEL_4;
      }

      v10 = v6;
    }

    v11 = v10;
    if (UIAccessibilityFocusedElement(v11))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36[0] = v34;
    v36[1] = v35;
    if (*(&v35 + 1))
    {
      type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
      if (swift_dynamicCast())
      {
        v12 = v32;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        BYTE8(v36[0]) = 0;
        outlined init with copy of AccessibilityLargeContentViewItem?(v36, &v34, &lazy cache variable for type metadata for AccessibilityFocus.Target?, &type metadata for AccessibilityFocus.Target, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
        if (BYTE8(v34))
        {
          outlined destroy of AccessibilityLargeContentViewItem?(&v34, &lazy cache variable for type metadata for AccessibilityFocus.Target?, &type metadata for AccessibilityFocus.Target, MEMORY[0x1E69E6720]);
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
          v15 = v14;
          if (v14)
          {
            v16 = v13;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              specialized _NativeDictionary.copy()();
            }

            outlined init with take of AccessibilityFocus.Target(v3[7] + 8 * v16, &v32);
            specialized _NativeDictionary._delete(at:)(v16, v3);

            outlined destroy of AccessibilityLargeContentViewItem?(v36, &lazy cache variable for type metadata for AccessibilityFocus.Target?, &type metadata for AccessibilityFocus.Target, MEMORY[0x1E69E6720]);
          }

          else
          {
            outlined destroy of AccessibilityLargeContentViewItem?(v36, &lazy cache variable for type metadata for AccessibilityFocus.Target?, &type metadata for AccessibilityFocus.Target, MEMORY[0x1E69E6720]);

            v32 = 0;
          }

          v33 = (v15 & 1) == 0;
          outlined destroy of AccessibilityLargeContentViewItem?(&v32, &lazy cache variable for type metadata for AccessibilityFocus.Target?, &type metadata for AccessibilityFocus.Target, MEMORY[0x1E69E6720]);
          v8 = MEMORY[0x1E69E7CA0];
          v6 = v31;
        }

        else
        {
          outlined init with take of AccessibilityFocus.Target(&v34, &v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
          v20 = v3[2];
          v21 = (v19 & 1) == 0;
          v22 = __OFADD__(v20, v21);
          v23 = v20 + v21;
          if (v22)
          {
            goto LABEL_35;
          }

          v24 = v19;
          if (v3[3] >= v23)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v28 = v18;
              specialized _NativeDictionary.copy()();
              v18 = v28;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
            v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
            if ((v24 & 1) != (v25 & 1))
            {
              goto LABEL_37;
            }
          }

          v6 = v31;
          if (v24)
          {
            outlined assign with take of AccessibilityFocus.Target(&v32, v3[7] + 8 * v18);

            outlined destroy of AccessibilityLargeContentViewItem?(v36, &lazy cache variable for type metadata for AccessibilityFocus.Target?, &type metadata for AccessibilityFocus.Target, MEMORY[0x1E69E6720]);
            v4 = v30;
          }

          else
          {
            v3[(v18 >> 6) + 8] |= 1 << v18;
            *(v3[6] + v18) = v9;
            outlined init with take of AccessibilityFocus.Target(&v32, v3[7] + 8 * v18);

            outlined destroy of AccessibilityLargeContentViewItem?(v36, &lazy cache variable for type metadata for AccessibilityFocus.Target?, &type metadata for AccessibilityFocus.Target, MEMORY[0x1E69E6720]);
            v26 = v3[2];
            v22 = __OFADD__(v26, 1);
            v27 = v26 + 1;
            v4 = v30;
            if (v22)
            {
              goto LABEL_36;
            }

            v3[2] = v27;
          }

          v8 = MEMORY[0x1E69E7CA0];
        }
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of AccessibilityLargeContentViewItem?(v36, &lazy cache variable for type metadata for Any?, v8 + 8, MEMORY[0x1E69E6720]);
    }

LABEL_4:
    if (v4 == ++v5)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized UILargeContentViewerInteractionBridge.largeContentViewerInteraction(_:didEndOn:at:)(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = v1 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_activeItem;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  swift_unknownObjectRelease();
  v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_simultaneousGesture);
  *(v1 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_simultaneousGesture) = 0;

  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      type metadata accessor for AccessibilityActionStorage<AccessibilityVoidAction>(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x60);
        v12 = v10;
        swift_beginAccess();
        outlined init with copy of BarItemView(v12 + v11, v23);
        v13 = swift_unknownObjectWeakLoadStrong();
        outlined destroy of BarItemView(v23);
        if (v13)
        {
          type metadata accessor for UIKitBarButtonItem(0);
          v14 = swift_dynamicCastClass();
          if (v14)
          {
            v22 = 17;
            v15 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
            v16 = v14;
            swift_beginAccess();
            outlined init with copy of AccessibilityLargeContentViewItem?(v16 + v15, v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<(String, Any)>);
            v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
            v18 = swift_allocObject();
            outlined init with take of PlatformItemList.Item?(v6, v18 + v17);
            static Update.enqueueAction(reason:_:)();
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
        v19 = v21;
      }
    }
  }
}

uint64_t specialized UILargeContentViewerInteractionBridge.largeContentViewerInteraction(_:itemAt:)(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_activeItem);
  v6 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_activeItem);
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = v5[3];
  v7 = v5[4];
  v10 = v5[1];
  v9 = v5[2];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_unknownObjectRetain();
    [v12 convertPoint:0 toView:{a1, a2}];
    v14 = v13;
    v16 = v15;

    v27.origin.x = v10;
    v27.origin.y = v9;
    v27.size.width = v8;
    v27.size.height = v7;
    v26.x = v14;
    v26.y = v16;
    if (CGRectContainsPoint(v27, v26))
    {
      return v6;
    }

    swift_unknownObjectRelease();
LABEL_5:
    UILargeContentViewerInteractionBridge.hitTest(at:)(&v23, a1, a2);
    v17 = v23;
    v6 = v23;
    if (v23)
    {
      v18 = v24;
      v19 = v25;
      if (*v5)
      {
        v20 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_simultaneousGesture);
        if (v20)
        {
          v21 = v24;
          v22 = v23;
          [v20 reset];
          v18 = v21;
          v17 = v22;
        }
      }

      *v5 = v17;
      *(v5 + 1) = v18;
      *(v5 + 4) = v19;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    return v6;
  }

  __break(1u);
  return result;
}

void type metadata accessor for AccessibilityActionStorage<AccessibilityVoidAction>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in UIKitBarButtonItem.performAction(_:)()
{
  type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  return closure #1 in UIKitBarButtonItem.performAction(_:)(v2);
}

void type metadata accessor for Range<String.Index>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Range<String.Index>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *destroy for AccessibilityCore.Notification.Info(void *result)
{
  if (result[3])
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

__n128 initializeWithCopy for AccessibilityCore.Notification.Info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    *(a1 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
  }

  return result;
}

__n128 assignWithCopy for AccessibilityCore.Notification.Info(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v3)
    {
      result.n128_f64[0] = __swift_assign_boxed_opaque_existential_0(a1, a2, a3);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
    }
  }

  else if (v3)
  {
    *(a1 + 24) = v3;
    (**(v3 - 8))(a3.n128_f64[0]);
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  return result;
}

__n128 assignWithTake for AccessibilityCore.Notification.Info(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  return result;
}

uint64_t type metadata accessor for PencilEventsResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for PencilEventsResponder;
  if (!type metadata singleton initialization cache for PencilEventsResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PencilEventsResponder.__ivar_destroyer()
{

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v0[37], v0[38]);
  v1 = v0[39];
  v2 = v0[40];

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1, v2);
}

double PencilEventsResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v0[37], v0[38]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v0[39], v0[40]);

  swift_deallocClassInstance();
  return result;
}

int64_t _s7SwiftUI22PencilEventsDispatcherPAAE07receiveD0_7managerShyAA7EventIDVGSDyAgA0H4Type_pG_AA0H14BindingManagerCtFAA0c9DoubleTaphE0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = swift_unknownObjectRelease();
  v8 = MEMORY[0x1E69E7CD0];
  if (v6)
  {
    v44 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v7);
    dispatch thunk of ResponderNode.visit(applying:)();
    v9 = v44;
    if (v44 >> 62)
    {
LABEL_35:
      if (__CocoaSet.count.getter())
      {
        v43 = v8;
        v10 = __CocoaSet.count.getter();
        if (v10)
        {
LABEL_6:
          v28 = v9 & 0xC000000000000001;
          v26 = v9 + 32;
          v27 = v9 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            v11 = __OFSUB__(v10, 1);
            v12 = v10 - 1;
            if (v11)
            {
              break;
            }

            v29 = v12;
            if (v28)
            {
              v30 = MEMORY[0x18D00E9C0]();
            }

            else
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

              if (v12 >= *(v27 + 16))
              {
                goto LABEL_34;
              }

              v30 = *(v26 + 8 * v12);
            }

            v13 = 1 << *(a1 + 32);
            if (v13 < 64)
            {
              v14 = ~(-1 << v13);
            }

            else
            {
              v14 = -1;
            }

            v15 = v14 & *(a1 + 64);
            v8 = (v13 + 63) >> 6;

            v16 = 0;
            while (v15)
            {
LABEL_24:
              while (1)
              {
                v18 = __clz(__rbit64(v15));
                v15 &= v15 - 1;
                v19 = v18 | (v16 << 6);
                v20 = (*(a1 + 48) + 16 * v19);
                v21 = *v20;
                v22 = v20[1];
                outlined init with copy of _Benchmark(*(a1 + 56) + 40 * v19, v42);
                v41[5] = v21;
                v41[6] = v22;
                v39 = v21;
                v40 = v22;
                outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v42, v41);
                type metadata accessor for (key: EventID, value: EventType)(0);
                v9 = &lazy cache variable for type metadata for (EventID, PencilDoubleTapEvent);
                type metadata accessor for (EventID, PencilDoubleTapEvent)(0, &lazy cache variable for type metadata for (EventID, PencilDoubleTapEvent), &type metadata for PencilDoubleTapEvent);
                if (swift_dynamicCast())
                {
                  break;
                }

                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                memset(v31, 0, sizeof(v31));
                outlined destroy of (EventID, PencilDoubleTapEvent)?(v31, &lazy cache variable for type metadata for (EventID, PencilDoubleTapEvent)?, &lazy cache variable for type metadata for (EventID, PencilDoubleTapEvent), &type metadata for PencilDoubleTapEvent);
                if (!v15)
                {
                  goto LABEL_20;
                }
              }

              v23 = *(&v32 + 1);
              v9 = v32;
              v45[2] = v35;
              v45[3] = v36;
              v45[4] = v37;
              v45[5] = v38;
              v45[0] = v33;
              v45[1] = v34;
              v24 = specialized PencilEventsResponder.consume(event:)(v45, v30);
              outlined destroy of PencilDoubleTapEvent(v45);
              if (v24)
              {
                specialized Set._Variant.insert(_:)(v31, v9, v23);
              }
            }

            while (1)
            {
LABEL_20:
              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
                goto LABEL_31;
              }

              if (v17 >= v8)
              {
                break;
              }

              v15 = *(a1 + 64 + 8 * v17);
              ++v16;
              if (v15)
              {
                v16 = v17;
                goto LABEL_24;
              }
            }

            v10 = v29;
            if (!v29)
            {
              goto LABEL_32;
            }
          }

LABEL_31:
          __break(1u);
LABEL_32:

          return v43;
        }
      }
    }

    else
    {
      v10 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        v43 = v8;
        goto LABEL_6;
      }
    }
  }

  return v8;
}

int64_t _s7SwiftUI22PencilEventsDispatcherPAAE07receiveD0_7managerShyAA7EventIDVGSDyAgA0H4Type_pG_AA0H14BindingManagerCtFAA0c7SqueezehE0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = swift_unknownObjectRelease();
  v8 = MEMORY[0x1E69E7CD0];
  if (v6)
  {
    v53 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v7);
    dispatch thunk of ResponderNode.visit(applying:)();
    v9 = v53;
    if (v53 >> 62)
    {
LABEL_35:
      if (__CocoaSet.count.getter())
      {
        v52 = v8;
        v10 = __CocoaSet.count.getter();
        if (v10)
        {
LABEL_6:
          v28 = v9 & 0xC000000000000001;
          v26 = v9 + 32;
          v27 = v9 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            v11 = __OFSUB__(v10, 1);
            v12 = v10 - 1;
            if (v11)
            {
              break;
            }

            v29 = v12;
            if (v28)
            {
              v30 = MEMORY[0x18D00E9C0]();
            }

            else
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

              if (v12 >= *(v27 + 16))
              {
                goto LABEL_34;
              }

              v30 = *(v26 + 8 * v12);
            }

            v13 = 1 << *(a1 + 32);
            if (v13 < 64)
            {
              v14 = ~(-1 << v13);
            }

            else
            {
              v14 = -1;
            }

            v15 = v14 & *(a1 + 64);
            v8 = (v13 + 63) >> 6;

            v16 = 0;
            while (v15)
            {
LABEL_24:
              while (1)
              {
                v18 = __clz(__rbit64(v15));
                v15 &= v15 - 1;
                v19 = v18 | (v16 << 6);
                v20 = (*(a1 + 48) + 16 * v19);
                v21 = *v20;
                v22 = v20[1];
                outlined init with copy of _Benchmark(*(a1 + 56) + 40 * v19, v51);
                v50[5] = v21;
                v50[6] = v22;
                v48 = v21;
                v49 = v22;
                outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v51, v50);
                type metadata accessor for (key: EventID, value: EventType)(0);
                v9 = &lazy cache variable for type metadata for (EventID, PencilSqueezeEvent);
                type metadata accessor for (EventID, PencilDoubleTapEvent)(0, &lazy cache variable for type metadata for (EventID, PencilSqueezeEvent), &type metadata for PencilSqueezeEvent);
                if (swift_dynamicCast())
                {
                  break;
                }

                _s7SwiftUI27ScrollableCollectionSubviewVSgWOi0_(&v31);
                v44 = v35;
                v45 = v36;
                v46 = v37;
                v47 = v38;
                v40 = v31;
                v41 = v32;
                v42 = v33;
                v43 = v34;
                v39[0] = v31;
                v39[1] = v32;
                v39[2] = v33;
                v39[3] = v34;
                v39[4] = v35;
                v39[5] = v36;
                v39[6] = v37;
                v39[7] = v38;
                outlined destroy of (EventID, PencilDoubleTapEvent)?(v39, &lazy cache variable for type metadata for (EventID, PencilSqueezeEvent)?, &lazy cache variable for type metadata for (EventID, PencilSqueezeEvent), &type metadata for PencilSqueezeEvent);
                if (!v15)
                {
                  goto LABEL_20;
                }
              }

              destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
              v23 = *(&v40 + 1);
              v9 = v40;
              v54[4] = v45;
              v54[5] = v46;
              v54[6] = v47;
              v54[0] = v41;
              v54[1] = v42;
              v54[2] = v43;
              v54[3] = v44;
              v24 = specialized PencilEventsResponder.consume(event:)(v54, v30);
              outlined destroy of PencilSqueezeEvent(v54);
              if (v24)
              {
                specialized Set._Variant.insert(_:)(v39, v9, v23);
              }
            }

            while (1)
            {
LABEL_20:
              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
                goto LABEL_31;
              }

              if (v17 >= v8)
              {
                break;
              }

              v15 = *(a1 + 64 + 8 * v17);
              ++v16;
              if (v15)
              {
                v16 = v17;
                goto LABEL_24;
              }
            }

            v10 = v29;
            if (!v29)
            {
              goto LABEL_32;
            }
          }

LABEL_31:
          __break(1u);
LABEL_32:

          return v52;
        }
      }
    }

    else
    {
      v10 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        v52 = v8;
        goto LABEL_6;
      }
    }
  }

  return v8;
}

uint64_t closure #1 in PencilEventsDispatcher.receiveEvents(_:manager:)@<X0>(void *a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for PencilEventsResponder(0);
  result = swift_dynamicCastClass();
  if (result)
  {

    MEMORY[0x18D00CC30](v6);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  *a3 = 0;
  return result;
}

double protocol witness for EventType.timestamp.getter in conformance PencilDoubleTapEvent@<D0>(double *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

double protocol witness for EventType.binding.getter in conformance PencilDoubleTapEvent@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 88);

  return result;
}

void protocol witness for EventType.binding.setter in conformance PencilDoubleTapEvent(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 88) = v2;
}

double protocol witness for EventType.init(_:) in conformance PencilDoubleTapEvent@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
  if (swift_dynamicCast())
  {
    v4 = v12;
    *(a3 + 32) = v11;
    *(a3 + 48) = v4;
    v5 = v14;
    *(a3 + 64) = v13;
    *(a3 + 80) = v5;
    result = *&v9;
    v7 = v10;
    *a3 = v9;
    *(a3 + 16) = v7;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v9 = 0u;
    v10 = 0u;
    *&v14 = 0;
    *(&v14 + 1) = 1;
    memset(v8, 0, 80);
    v8[5] = v14;
    outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for PencilDoubleTapEvent?, &type metadata for PencilDoubleTapEvent);
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 88) = 1;
  }

  return result;
}

double protocol witness for EventType.timestamp.getter in conformance PencilSqueezeEvent@<D0>(double *a1@<X8>)
{
  result = *(v1 + 96);
  *a1 = result;
  return result;
}

double protocol witness for EventType.binding.getter in conformance PencilSqueezeEvent@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 104);

  return result;
}

void protocol witness for EventType.binding.setter in conformance PencilSqueezeEvent(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 104) = v2;
}

double protocol witness for EventType.init(_:) in conformance PencilSqueezeEvent@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
  if (swift_dynamicCast())
  {
    v4 = v14;
    *(a3 + 64) = v13;
    *(a3 + 80) = v4;
    *(a3 + 96) = v15;
    v5 = v10;
    *a3 = v9;
    *(a3 + 16) = v5;
    v6 = v12;
    *(a3 + 32) = v11;
    *(a3 + 48) = v6;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    *&v15 = 0;
    *(&v15 + 1) = 1;
    memset(v8, 0, 96);
    v8[6] = v15;
    outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for PencilSqueezeEvent?, &type metadata for PencilSqueezeEvent);
    *&v6 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0;
    *(a3 + 104) = 1;
  }

  return *&v6;
}

uint64_t specialized PencilEventsResponder.consume(event:)(_OWORD *a1, void *a2)
{
  v4 = a2 + 33;
  v78[3] = &type metadata for PencilDoubleTapEvent;
  v78[4] = lazy protocol witness table accessor for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent();
  v5 = swift_allocObject();
  v78[0] = v5;
  v6 = a1[3];
  v5[3] = a1[2];
  v5[4] = v6;
  v7 = a1[5];
  v5[5] = a1[4];
  v5[6] = v7;
  v8 = a1[1];
  v5[1] = *a1;
  v5[2] = v8;
  outlined init with copy of _Benchmark(v78, v77);
  outlined init with copy of PencilDoubleTapEvent(a1, &v65);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for PencilEvent, &protocol descriptor for PencilEvent);
  if (swift_dynamicCast())
  {
    *v67 = v72;
    *&v67[16] = v73;
    *&v67[32] = v74;
    v68 = v75;
    v65 = v70;
    v66 = v71;
    v9 = a2[37];
    if (v9)
    {
      v10 = a2[38];
      if (v67[32])
      {
      }

      else
      {
        v14 = v65;
        v48 = *&v67[16];
        v51 = *v67;
        *v58 = 0;

        LOBYTE(v54) = 1;
        if (ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)())
        {

          v15 = a2[32];
          v54 = a2[31];
          *&v55 = v15;
          v57 = v4[3];

          ViewTransform.withPosition(_:)();

          v54 = 1;
          v55 = 0u;
          v56 = 0u;
          LOBYTE(v57) = 2;
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convertGlobal(to:transform:)();
          outlined destroy of CoordinateSpace(&v54);
          UnitPoint.init(_:in:)();
          v47 = v16;
          v18 = v17;

          *&v21 = *(&v14 + 1);
          v19 = 0;
          v20 = v14;
          *(&v21 + 1) = v47;
          v23 = v48;
          v22 = v51;
LABEL_15:
          *v58 = v20;
          *&v58[8] = v21;
          *&v58[24] = v18;
          v59 = v22;
          v60 = v23;
          LOBYTE(v61) = v19;
          v9(v58);
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9, v10);
          outlined destroy of PencilDoubleTapEvent(&v65);
LABEL_30:
          v13 = 1;
          goto LABEL_31;
        }
      }

      v20 = 0;
      v19 = 1;
      v21 = 0uLL;
      v18 = 0;
      v22 = 0uLL;
      v23 = 0uLL;
      goto LABEL_15;
    }

    outlined destroy of PencilDoubleTapEvent(&v65);
  }

  outlined init with copy of _Benchmark(v78, v77);
  if (swift_dynamicCast())
  {
    *&v67[32] = v74;
    v68 = v75;
    v69 = v76;
    v65 = v70;
    v66 = v71;
    *v67 = v72;
    *&v67[16] = v73;
    v11 = a2[39];
    if (v11)
    {
      v12 = a2[40];
      if (v65 < 2u)
      {
        if (v67[40])
        {
        }

        else
        {
          v24 = *(&v65 + 1);
          v25 = v66;
          v49 = *&v67[24];
          v52 = *&v67[8];
          *v58 = 0;

          LOBYTE(v54) = 1;
          if (ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)())
          {

            v26 = a2[32];
            v54 = a2[31];
            *&v55 = v26;
            v57 = v4[3];

            ViewTransform.withPosition(_:)();

            v54 = 1;
            v55 = 0u;
            v56 = 0u;
            LOBYTE(v57) = 2;
            type metadata accessor for CGPoint(0);
            ApplyViewTransform.convertGlobal(to:transform:)();
            outlined destroy of CoordinateSpace(&v54);
            UnitPoint.init(_:in:)();
            v45 = v27;
            v43 = v28;

            *&v36 = v45;
            *&v35 = v24;
            v31 = 0;
            *(&v36 + 1) = v43;
            *(&v35 + 1) = v25;
            v34 = v49;
            v32 = v52;
LABEL_24:
            v33 = 0;
            v29 = v68;
            v30 = BYTE8(v68);
            v58[0] = BYTE8(v68);
            goto LABEL_29;
          }
        }

        v31 = 1;
        v32 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        goto LABEL_24;
      }

      if (v65 != 2)
      {

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0uLL;
        v33 = 2;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
LABEL_29:
        *v58 = v35;
        *&v58[16] = v36;
        v59 = v32;
        v60 = v34;
        v61 = v31;
        v62 = v29;
        v63 = v30;
        v64 = v33;
        v11(v58);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11, v12);
        outlined destroy of PencilSqueezeEvent(&v65);
        goto LABEL_30;
      }

      if (v67[40])
      {
      }

      else
      {
        v37 = *(&v65 + 1);
        v38 = v66;
        v50 = *&v67[24];
        v53 = *&v67[8];
        *v58 = 0;

        LOBYTE(v54) = 1;
        if (ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)())
        {

          v39 = a2[32];
          v54 = a2[31];
          *&v55 = v39;
          v57 = v4[3];

          ViewTransform.withPosition(_:)();

          v54 = 1;
          v55 = 0u;
          v56 = 0u;
          LOBYTE(v57) = 2;
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convertGlobal(to:transform:)();
          outlined destroy of CoordinateSpace(&v54);
          UnitPoint.init(_:in:)();
          v46 = v40;
          v44 = v41;

          *&v36 = v46;
          *&v35 = v37;
          v31 = 0;
          *(&v36 + 1) = v44;
          *(&v35 + 1) = v38;
          v34 = v50;
          v32 = v53;
LABEL_28:
          v29 = v68;
          v30 = BYTE8(v68);
          v58[0] = BYTE8(v68);
          v33 = 1;
          goto LABEL_29;
        }
      }

      v31 = 1;
      v32 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      goto LABEL_28;
    }

    outlined destroy of PencilSqueezeEvent(&v65);
    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_31:
  __swift_destroy_boxed_opaque_existential_1(v78);
  return v13;
}

{
  v4 = a2 + 33;
  v78[3] = &type metadata for PencilSqueezeEvent;
  v78[4] = lazy protocol witness table accessor for type PencilSqueezeEvent and conformance PencilSqueezeEvent();
  v5 = swift_allocObject();
  v78[0] = v5;
  v6 = a1[5];
  v5[5] = a1[4];
  v5[6] = v6;
  v5[7] = a1[6];
  v7 = a1[1];
  v5[1] = *a1;
  v5[2] = v7;
  v8 = a1[3];
  v5[3] = a1[2];
  v5[4] = v8;
  outlined init with copy of _Benchmark(v78, v77);
  outlined init with copy of PencilSqueezeEvent(a1, &v70);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for PencilEvent, &protocol descriptor for PencilEvent);
  if (swift_dynamicCast())
  {
    v72 = *v67;
    v73 = *&v67[16];
    v74 = *&v67[32];
    v75 = v68;
    v70 = v65;
    v71 = v66;
    v9 = a2[37];
    if (v9)
    {
      v10 = a2[38];
      if (v74)
      {
      }

      else
      {
        v14 = v70;
        v48 = v73;
        v51 = v72;
        *v58 = 0;

        LOBYTE(v54) = 1;
        if (ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)())
        {

          v15 = a2[32];
          v54 = a2[31];
          *&v55 = v15;
          v57 = v4[3];

          ViewTransform.withPosition(_:)();

          v54 = 1;
          v55 = 0u;
          v56 = 0u;
          LOBYTE(v57) = 2;
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convertGlobal(to:transform:)();
          outlined destroy of CoordinateSpace(&v54);
          UnitPoint.init(_:in:)();
          v47 = v16;
          v18 = v17;

          *&v21 = *(&v14 + 1);
          v19 = 0;
          v20 = v14;
          *(&v21 + 1) = v47;
          v23 = v48;
          v22 = v51;
LABEL_15:
          *v58 = v20;
          *&v58[8] = v21;
          *&v58[24] = v18;
          v59 = v22;
          v60 = v23;
          LOBYTE(v61) = v19;
          v9(v58);
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9, v10);
          outlined destroy of PencilDoubleTapEvent(&v70);
LABEL_30:
          v13 = 1;
          goto LABEL_31;
        }
      }

      v20 = 0;
      v19 = 1;
      v21 = 0uLL;
      v18 = 0;
      v22 = 0uLL;
      v23 = 0uLL;
      goto LABEL_15;
    }

    outlined destroy of PencilDoubleTapEvent(&v70);
  }

  outlined init with copy of _Benchmark(v78, v77);
  if (swift_dynamicCast())
  {
    *&v67[32] = v74;
    v68 = v75;
    v69 = v76;
    v65 = v70;
    v66 = v71;
    *v67 = v72;
    *&v67[16] = v73;
    v11 = a2[39];
    if (v11)
    {
      v12 = a2[40];
      if (v65 < 2u)
      {
        if (v67[40])
        {
        }

        else
        {
          v24 = *(&v65 + 1);
          v25 = v66;
          v49 = *&v67[24];
          v52 = *&v67[8];
          *v58 = 0;

          LOBYTE(v54) = 1;
          if (ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)())
          {

            v26 = a2[32];
            v54 = a2[31];
            *&v55 = v26;
            v57 = v4[3];

            ViewTransform.withPosition(_:)();

            v54 = 1;
            v55 = 0u;
            v56 = 0u;
            LOBYTE(v57) = 2;
            type metadata accessor for CGPoint(0);
            ApplyViewTransform.convertGlobal(to:transform:)();
            outlined destroy of CoordinateSpace(&v54);
            UnitPoint.init(_:in:)();
            v45 = v27;
            v43 = v28;

            *&v36 = v45;
            *&v35 = v24;
            v31 = 0;
            *(&v36 + 1) = v43;
            *(&v35 + 1) = v25;
            v34 = v49;
            v32 = v52;
LABEL_24:
            v33 = 0;
            v29 = v68;
            v30 = BYTE8(v68);
            v58[0] = BYTE8(v68);
            goto LABEL_29;
          }
        }

        v31 = 1;
        v32 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        goto LABEL_24;
      }

      if (v65 != 2)
      {

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0uLL;
        v33 = 2;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
LABEL_29:
        *v58 = v35;
        *&v58[16] = v36;
        v59 = v32;
        v60 = v34;
        v61 = v31;
        v62 = v29;
        v63 = v30;
        v64 = v33;
        v11(v58);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11, v12);
        outlined destroy of PencilSqueezeEvent(&v65);
        goto LABEL_30;
      }

      if (v67[40])
      {
      }

      else
      {
        v37 = *(&v65 + 1);
        v38 = v66;
        v50 = *&v67[24];
        v53 = *&v67[8];
        *v58 = 0;

        LOBYTE(v54) = 1;
        if (ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)())
        {

          v39 = a2[32];
          v54 = a2[31];
          *&v55 = v39;
          v57 = v4[3];

          ViewTransform.withPosition(_:)();

          v54 = 1;
          v55 = 0u;
          v56 = 0u;
          LOBYTE(v57) = 2;
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convertGlobal(to:transform:)();
          outlined destroy of CoordinateSpace(&v54);
          UnitPoint.init(_:in:)();
          v46 = v40;
          v44 = v41;

          *&v36 = v46;
          *&v35 = v37;
          v31 = 0;
          *(&v36 + 1) = v44;
          *(&v35 + 1) = v38;
          v34 = v50;
          v32 = v53;
LABEL_28:
          v29 = v68;
          v30 = BYTE8(v68);
          v58[0] = BYTE8(v68);
          v33 = 1;
          goto LABEL_29;
        }
      }

      v31 = 1;
      v32 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      goto LABEL_28;
    }

    outlined destroy of PencilSqueezeEvent(&v65);
    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_31:
  __swift_destroy_boxed_opaque_existential_1(v78);
  return v13;
}

uint64_t specialized PencilEventsResponder.__allocating_init(inputs:)(uint64_t a1)
{
  type metadata accessor for PencilEventsResponder(0);
  v1 = swift_allocObject();
  *(v1 + 216) = 0;
  *(v1 + 224) = 0;
  static CGSize.invalidValue.getter();
  *(v1 + 232) = v2;
  *(v1 + 240) = v3;
  ViewTransform.init()();
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t specialized PencilEventsResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PencilEventsResponder(0);
  v2 = swift_allocObject();
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  static CGSize.invalidValue.getter();
  *(v2 + 232) = v3;
  *(v2 + 240) = v4;
  ViewTransform.init()();
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t initializeWithCopy for PencilDoubleTapEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithCopy for PencilDoubleTapEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 16) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithTake for PencilDoubleTapEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for PencilDoubleTapEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for PencilDoubleTapEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for PencilSqueezeEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v3 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v3;

  return a1;
}

uint64_t assignWithCopy for PencilSqueezeEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  v6 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v6;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for PencilSqueezeEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for PencilSqueezeEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
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

uint64_t storeEnumTagSinglePayload for PencilSqueezeEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PencilDoubleTapEventDispatcher(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PencilSqueezeEventDispatcher(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PencilSqueezeEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PencilSqueezeEvent and conformance PencilSqueezeEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PencilDoubleTapEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for (key: EventID, value: EventType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: EventID, value: EventType))
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: EventID, value: EventType));
    }
  }
}

uint64_t outlined init with copy of PencilDoubleTapEvent(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 16) = v3;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);

  return a2;
}

void type metadata accessor for (EventID, PencilDoubleTapEvent)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined destroy of (EventID, PencilDoubleTapEvent)?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for (EventID, PencilDoubleTapEvent)?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for (EventID, PencilDoubleTapEvent)?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for (EventID, PencilDoubleTapEvent)(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined init with copy of PencilSqueezeEvent(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 8) = *(a1 + 8);
  v6 = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 80) = v6;
  v8 = *(a1 + 96);
  v7 = *(a1 + 104);
  *(a2 + 96) = v8;
  *(a2 + 104) = v7;

  return a2;
}

SwiftUI::VerticalPageTabViewStyle __swiftcall VerticalPageTabViewStyle.init()()
{
  result.transitionStyle.backing = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::VerticalPageTabViewStyle __swiftcall VerticalPageTabViewStyle.init(transitionStyle:)(SwiftUI::VerticalPageTabViewStyle::TransitionStyle transitionStyle)
{
  result.transitionStyle.backing = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type VerticalPageTabViewStyle.TransitionStyle.Backing and conformance VerticalPageTabViewStyle.TransitionStyle.Backing()
{
  result = lazy protocol witness table cache variable for type VerticalPageTabViewStyle.TransitionStyle.Backing and conformance VerticalPageTabViewStyle.TransitionStyle.Backing;
  if (!lazy protocol witness table cache variable for type VerticalPageTabViewStyle.TransitionStyle.Backing and conformance VerticalPageTabViewStyle.TransitionStyle.Backing)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerticalPageTabViewStyle.TransitionStyle.Backing, &type metadata for VerticalPageTabViewStyle.TransitionStyle.Backing, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalPageTabViewStyle.TransitionStyle.Backing and conformance VerticalPageTabViewStyle.TransitionStyle.Backing);
  }

  return result;
}

uint64_t _s7SwiftUI13FocusedValuesVy5ValueQzSgxmcAA0cE3KeyRzluigAC02__F18_toolbarVisibility33_F9FA07C36CE4522121137F5CA701C8A5LLV_Tt0B5(uint64_t a1)
{
  type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>(0, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility, type metadata accessor for FocusedValuePropertyKey);
  lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>(&lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility);
  PropertyList.forEach<A>(keyType:_:)();

  return 3;
}

uint64_t _s7SwiftUI13FocusedValuesVy5ValueQzSgxmcAA0cE3KeyRzluigAC02__F19_inspectorPresented33_99A27EE781A9E770B3F233F8317BD81DLLV_Tt0B5(uint64_t a1)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>(0, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented>, &type metadata for FocusedValues.__Key_inspectorPresented, &protocol witness table for FocusedValues.__Key_inspectorPresented, type metadata accessor for FocusedValuePropertyKey);
  lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>(&lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented>, &type metadata for FocusedValues.__Key_inspectorPresented, &protocol witness table for FocusedValues.__Key_inspectorPresented);
  PropertyList.forEach<A>(keyType:_:)();
  outlined consume of FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?(0, 0, 0);
  outlined consume of FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?(v5, *(&v5 + 1), v6);
  return 0;
}

uint64_t _s7SwiftUI13FocusedValuesVy5ValueQzSgxmcAA0cE3KeyRzluigAC02__F19_isPrintableContent33_C1743E955BEE4B83884473794177730CLLV_Tt0B5(uint64_t a1)
{
  type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>(0, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>, &type metadata for FocusedValues.__Key_isPrintableContent, &protocol witness table for FocusedValues.__Key_isPrintableContent, type metadata accessor for FocusedValuePropertyKey);
  lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>(&lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>, &type metadata for FocusedValues.__Key_isPrintableContent, &protocol witness table for FocusedValues.__Key_isPrintableContent);
  PropertyList.forEach<A>(keyType:_:)();

  return 2;
}

double specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:)(_BYTE *a1, void *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = type metadata accessor for CommandGroupPlacement(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  if (v9 == 3)
  {
    v38 = a1;
    _s7SwiftUI21CommandGroupPlacementVWOcTm_1(a4, &v37 - v21, type metadata accessor for CommandGroupPlacement);
    v23 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = a5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    _s7SwiftUI21CommandGroupPlacementVWObTm_1(v22, v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v26, type metadata accessor for HashableCommandGroupPlacementWrapper);
    *a2 = v23;
    a1 = v38;
    a5 = v39;
  }

  v27 = a2[1];
  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(a4, v19, type metadata accessor for CommandGroupPlacement);
  if (*(v27 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v29 & 1) != 0))
  {
    v30 = (*(v27 + 56) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];

    outlined destroy of CommandGroupPlacement(v19, type metadata accessor for HashableCommandGroupPlacementWrapper);
  }

  else
  {
    outlined destroy of CommandGroupPlacement(v19, type metadata accessor for HashableCommandGroupPlacementWrapper);
    v31 = AnyView.init<A>(_:)();
    v32 = MEMORY[0x1E69E7CD0];
  }

  v41 = v31;
  v42 = v32;
  specialized CommandAccumulator.visit<A>(_:operation:)(a5, a1);
  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(a4, v12, type metadata accessor for CommandGroupPlacement);
  v33 = v41;
  v34 = v42;
  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v12, v16, type metadata accessor for CommandGroupPlacement);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v40 = a2[1];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v34, v16, v35);
  outlined destroy of CommandGroupPlacement(v16, type metadata accessor for HashableCommandGroupPlacementWrapper);
  a2[1] = v40;
  outlined destroy of CommandGroupPlacement(v12, type metadata accessor for CommandGroupPlacement);

  return result;
}

uint64_t specialized CommandAccumulator.visit<A>(_:operation:)(uint64_t a1, _BYTE *a2)
{
  v44 = a1;
  v3 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v43 - v6;
  type metadata accessor for TupleView<(AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)>(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView));
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  type metadata accessor for TupleView<(AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)>(0, &lazy cache variable for type metadata for TupleView<(AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)>, type metadata accessor for (AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v43 - v11);
  v45 = type metadata accessor for CommandOperation(0);
  v13 = *(v45 - 8);
  v14 = *(v13 + 64);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v45);
  v16 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>(0, v15);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(a2, v16, type metadata accessor for CommandOperation);
  v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v25 = swift_allocObject();
  _s7SwiftUI21CommandGroupPlacementVWObTm_1(v16, v25 + v24, type metadata accessor for CommandOperation);
  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v44, v23, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>);
  v27 = &v23[*(v18 + 36)];
  *v27 = partial apply for closure #1 in CommandAccumulator.visit<A>(_:operation:);
  v27[1] = v25;
  v28 = *a2;
  if (v28 <= 1)
  {
    v30 = v48;
    v36 = *v48;
    if (*a2)
    {
      type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView)(0, v26);
      v41 = *(v40 + 48);
      _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v23, v9, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
      *&v9[v41] = v36;
      lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView));
    }

    else
    {
      type metadata accessor for (AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)(0, v26);
      v38 = *(v37 + 48);
      *v12 = v36;
      _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v23, v12 + v38, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
      lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)>, type metadata accessor for (AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>));
    }

    v35 = AnyView.init<A>(_:)();
    goto LABEL_11;
  }

  if (v28 == 2)
  {
    _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v23, v20, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>(v39);
    v35 = AnyView.init<A>(_:)();
    v30 = v48;

LABEL_11:
    v31 = v46;
    v29 = v47;
    v32 = v45;
    goto LABEL_12;
  }

  v29 = v47;
  v30 = v48;
  v32 = v45;
  v31 = v46;
  if (v28 == 3 || (v33 = v48[1], _s7SwiftUI21CommandGroupPlacementVWOcTm_1(&a2[*(v45 + 20)], v46, type metadata accessor for CommandGroupPlacement), LOBYTE(v33) = specialized Set.contains(_:)(v31, v33), outlined destroy of CommandGroupPlacement(v31, type metadata accessor for HashableCommandGroupPlacementWrapper), (v33 & 1) == 0))
  {
    _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v23, v20, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>(v34);
    v35 = AnyView.init<A>(_:)();

LABEL_12:
    *v30 = v35;
  }

  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(&a2[*(v32 + 20)], v29, type metadata accessor for CommandGroupPlacement);
  specialized Set._Variant.insert(_:)(v31, v29);
  outlined destroy of CommandGroupPlacement(v31, type metadata accessor for HashableCommandGroupPlacementWrapper);
  return outlined destroy of CommandGroupPlacement(v23, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
}

uint64_t ToolbarCommands.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t protocol witness for Commands.body.getter in conformance ToolbarCommands@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for toolbar != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static CommandFlag.toolbar;
  return result;
}

void (*InspectorCommands.inspectorPresented.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  *(v4 + 24) = *v1;
  *(v4 + 32) = v6;
  v7 = *(v1 + 16);
  *(v4 + 19) = v7;
  v8 = *(v1 + 17);
  *(v4 + 20) = v8;
  if (v8 == 1 && (*v4 = v5, *(v4 + 8) = v6, *(v4 + 16) = v7, v6))
  {
    outlined copy of Environment<Binding<Visibility>?>.Content(v5, v6, v7, 1);
    type metadata accessor for KeyboardShortcut?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0]();
    v9 = *(v4 + 18);
  }

  else
  {
    v9 = 2;
  }

  *(v4 + 17) = v9;
  return InspectorCommands.inspectorPresented.modify;
}

void InspectorCommands.inspectorPresented.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*a1 + 20);
  }

  if (v3)
  {
    v4 = *(v1 + 19);
    v6 = v1[3];
    v5 = v1[4];
    if (v5)
    {
      *v1 = v2 & 1;
      outlined copy of Environment<Binding<Visibility>?>.Content(v6, v5, v4, 1);
      dispatch thunk of AnyLocation.set(_:transaction:)();
      outlined consume of Environment<Binding<Visibility>?>.Content(v6, v5, v4, 1);
    }

    else
    {
      outlined copy of Environment<Binding<Visibility>?>.Content(v1[3], 0, *(v1 + 19), 1);
    }
  }

  free(v1);
}

uint64_t protocol witness for Commands.body.getter in conformance SidebarCommands@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for sidebar != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static CommandFlag.sidebar;
  return result;
}

uint64_t InspectorCommands.labelText.getter()
{
  result = 2003789907;
  if (*(v0 + 17) == 1)
  {
    v3 = *v0;
    v2 = *(v0 + 8);
    v4 = *(v0 + 16);
    v7 = *v0;
    v8 = v2;
    v9 = v4;
    if (v2)
    {
      outlined copy of Binding<Int>?(v3, v2);
      type metadata accessor for KeyboardShortcut?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v6);
      v5 = v6;

      result = 2003789907;
      if (v5)
      {
        return 1701079368;
      }
    }
  }

  return result;
}

uint64_t InspectorCommands.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t InspectorCommands.body.getter@<X0>(_BYTE *a1@<X8>, __n128 a2@<Q0>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>(0, a2);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = v5;
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandGroupPlacement(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 17);
  if (one-time initialization token for sidebar != -1)
  {
    v30 = v13;
    swift_once();
    v13 = v30;
  }

  v20 = __swift_project_value_buffer(v13, static CommandGroupPlacement.sidebar);
  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v20, v15, type metadata accessor for CommandGroupPlacement);
  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v15, v11, type metadata accessor for CommandGroupPlacement);
  v21 = v18 | (v19 << 8);
  v22 = v35;
  closure #1 in InspectorCommands.body.getter(v16, v17, v21, v35, v23);
  outlined destroy of CommandGroupPlacement(v15, type metadata accessor for CommandGroupPlacement);
  v24 = type metadata accessor for CommandOperation(0);
  v25 = &a1[*(v24 + 24)];
  *a1 = 0;
  _s7SwiftUI21CommandGroupPlacementVWOcTm_1(v11, &a1[*(v24 + 20)], type metadata accessor for CommandGroupPlacement);
  _s7SwiftUI21CommandGroupPlacementVWObTm_1(v11, v8, type metadata accessor for CommandGroupPlacement);
  v26 = (*(v32 + 80) + 17) & ~*(v32 + 80);
  v27 = (v7 + *(v33 + 80) + v26) & ~*(v33 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  _s7SwiftUI21CommandGroupPlacementVWObTm_1(v8, v28 + v26, type metadata accessor for CommandGroupPlacement);
  result = _s7SwiftUI21CommandGroupPlacementVWObTm_1(v22, v28 + v27, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>);
  *v25 = partial apply for specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:);
  v25[1] = v28;
  return result;
}

void closure #1 in InspectorCommands.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v49 = a4;
  v50[0] = a1;
  v50[1] = a2;
  v48 = a3 >> 8;
  v51 = a3;
  v8 = (a3 >> 8) & 1;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>(0, a5);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 33) = v8;
  *v12 = 4;
  type metadata accessor for Button<Label<Text, Image>>(0);
  v15 = v14;
  v16 = &v12[*(v14 + 36)];
  *v16 = partial apply for closure #1 in closure #1 in InspectorCommands.body.getter;
  v16[1] = v13;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v17 = &v12[*(v15 + 40)];

  v45 = a1;
  v46 = a2;
  outlined copy of Environment<Binding<Visibility>?>.Content(a1, a2, a3, v8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  v19._countAndFlagsBits = InspectorCommands.labelText.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v19);

  v20._countAndFlagsBits = 0x74636570736E4920;
  v20._object = 0xEA0000000000726FLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;
  specialized Image.init(systemName:)(0xD000000000000010, 0x800000018CD53A50);
  v30 = v29;

  *v17 = v23;
  *(v17 + 1) = v25;
  v17[16] = v15 & 1;
  *(v17 + 3) = v28;
  *(v17 + 4) = v30;
  v31 = 1;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(0);
  v34 = &v12[*(v33 + 36)];
  *v34 = KeyPath;
  v47 = xmmword_18CDD15F0;
  *(v34 + 8) = xmmword_18CDD15F0;
  *(v34 + 3) = 20;
  v34[32] = 0;

  v35 = &v12[*(v10 + 44)];
  *v35 = v47;
  *(v35 + 2) = 20;
  v35[24] = 0;
  if (v48)
  {
    v52 = v45;
    v53 = v46;
    LOBYTE(v54) = a3;
    if (v46)
    {
      type metadata accessor for KeyboardShortcut?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v37 = v36;

      MEMORY[0x18D00ACC0](v50, v37);

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }
  }

  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v31;
  v40 = v12;
  v41 = v49;
  _s7SwiftUI21CommandGroupPlacementVWObTm_1(v40, v49, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>(0, v42);
  v44 = (v41 + *(v43 + 36));
  *v44 = v38;
  v44[1] = partial apply for closure #1 in View.disabled(_:);
  v44[2] = v39;
}

uint64_t closure #1 in closure #1 in InspectorCommands.body.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  v4 = InspectorCommands.inspectorPresented.modify(v7);
  v5 = *v3;
  if (v5 != 2)
  {
    *v3 = (v5 & 1) == 0;
  }

  return (v4)(v7, 0);
}

uint64_t PrintingCommands.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t PrintingCommands.body.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type EnablePageBuilder and conformance EnablePageBuilder();
  result = static UserDefaultKeyedFeature.isEnabled.getter();
  if (one-time initialization token for printing != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  *a1 = static CommandFlag.printing;
  *(a1 + 8) = (result & 1) == 0;
  return result;
}

uint64_t specialized closure #1 in FocusedValues.subscript.getter(int *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = *(a1 + 2);
  if (result)
  {
    v10 = *(a1 + 3);
    v11 = *(a1 + 4);
    v12 = *a1;
    v13 = one-time initialization token for scene;

    if (v13 != -1)
    {
      swift_once();
    }

    if (static FocusedValueScope.scene != v12 || *(a3 + 16) && *a4 >= v11)
    {
      if (one-time initialization token for view != -1)
      {
        swift_once();
      }

      if (static FocusedValueScope.view == v12 && (v10 & 0x100) != 0)
      {
        return outlined assign with take of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, a5, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_toolbarVisibility>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility);
      }

      else
      {
        return outlined destroy of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_toolbarVisibility>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility);
      }
    }

    else
    {
      result = outlined assign with take of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, a3, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_toolbarVisibility>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility);
      *a4 = v11;
    }
  }

  return result;
}

{
  result = *(a1 + 2);
  if (result)
  {
    v10 = *(a1 + 5);
    v11 = *(a1 + 6);
    v12 = *a1;
    v13 = one-time initialization token for scene;

    if (v13 != -1)
    {
      swift_once();
    }

    if (static FocusedValueScope.scene != v12 || *(a3 + 16) && *a4 >= v11)
    {
      if (one-time initialization token for view != -1)
      {
        swift_once();
      }

      if (static FocusedValueScope.view == v12 && (v10 & 0x100) != 0)
      {
        return outlined assign with take of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, a5, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>, &type metadata for FocusedValues.__Key_inspectorPresented, &protocol witness table for FocusedValues.__Key_inspectorPresented);
      }

      else
      {
        return outlined destroy of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>, &type metadata for FocusedValues.__Key_inspectorPresented, &protocol witness table for FocusedValues.__Key_inspectorPresented);
      }
    }

    else
    {
      result = outlined assign with take of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, a3, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>, &type metadata for FocusedValues.__Key_inspectorPresented, &protocol witness table for FocusedValues.__Key_inspectorPresented);
      *a4 = v11;
    }
  }

  return result;
}

{
  result = *(a1 + 2);
  if (result)
  {
    v10 = *(a1 + 3);
    v11 = *(a1 + 4);
    v12 = *a1;
    v13 = one-time initialization token for scene;

    if (v13 != -1)
    {
      swift_once();
    }

    if (static FocusedValueScope.scene != v12 || *(a3 + 16) && *a4 >= v11)
    {
      if (one-time initialization token for view != -1)
      {
        swift_once();
      }

      if (static FocusedValueScope.view == v12 && (v10 & 0x100) != 0)
      {
        return outlined assign with take of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, a5, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>, &type metadata for FocusedValues.__Key_isPrintableContent, &protocol witness table for FocusedValues.__Key_isPrintableContent);
      }

      else
      {
        return outlined destroy of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>, &type metadata for FocusedValues.__Key_isPrintableContent, &protocol witness table for FocusedValues.__Key_isPrintableContent);
      }
    }

    else
    {
      result = outlined assign with take of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(a1, a3, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?, &lazy cache variable for type metadata for FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>, &type metadata for FocusedValues.__Key_isPrintableContent, &protocol witness table for FocusedValues.__Key_isPrintableContent);
      *a4 = v11;
    }
  }

  return result;
}

uint64_t keypath_getTm_1@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for InspectorCommands(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v4, v6, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return a1;
}

uint64_t assignWithCopy for InspectorCommands(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v4, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 17);
  *a1 = v3;
  *(a1 + 8) = v4;
  v10 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  outlined consume of Environment<Binding<Visibility>?>.Content(v7, v8, v10, v9);
  return a1;
}

uint64_t assignWithTake for InspectorCommands(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 17);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 17);
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  outlined consume of Environment<Binding<Visibility>?>.Content(v5, v6, v8, v7);
  return a1;
}

uint64_t *assignWithCopy for ToolbarCommands(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), void (*a5)(uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = *(a2 + 8);
  (a4)(*a2, v8, a3);
  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v7;
  *(a1 + 8) = v8;
  a5(v9, v10);
  return a1;
}

uint64_t _s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA30_EnvironmentKeyWritingModifierVyAA16KeyboardShortcutVSgGGAA013ViewInputFlagL0VyAA03HasmN0VGGAA06_TraitkL0VyAA0mn12PickerOptionsJ0VGGAA01_ij9TransformL0VySbGGACyxq_GAA0O0A2AA10_RzAA0oL0R_rlWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>> and conformance <> _ConditionalContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>(255);
    v4[0] = &protocol witness table for WithCommandFlag<A>;
    v4[1] = &protocol witness table for WithCommandFlag<A>;
    result = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>)
  {
    type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>);
    }
  }
}

uint64_t partial apply for specialized closure #1 in FocusedValues.subscript.getter(uint64_t a1, uint64_t a2)
{
  return partial apply for specialized closure #1 in FocusedValues.subscript.getter(a1, a2, specialized closure #1 in FocusedValues.subscript.getter);
}

{
  return partial apply for specialized closure #1 in FocusedValues.subscript.getter(a1, a2, specialized closure #1 in FocusedValues.subscript.getter);
}

{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  return specialized closure #1 in FocusedValues.subscript.getter(v8, a2, v3, v4, v5);
}

uint64_t lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_inspectorPresented> and conformance FocusedValuePropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>(255, a2, a3, a4, type metadata accessor for FocusedValuePropertyKey);
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValuePropertyKey<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>(255, a3, a4, a5, type metadata accessor for FocusedValues.Entry);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of CommandGroupPlacement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for TupleView<(AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView)(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>(255, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>(255, a2);
    type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<AllPlatformItemListFlags>, &type metadata for AllPlatformItemListFlags, &protocol witness table for AllPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for (AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for (AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>(255, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v1;
    v6[5] = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>(255, a1);
    v5 = v4;
    v6[0] = _s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA30_EnvironmentKeyWritingModifierVyAA16KeyboardShortcutVSgGGAA013ViewInputFlagL0VyAA03HasmN0VGGAA06_TraitkL0VyAA0mn12PickerOptionsJ0VGGAA01_ij9TransformL0VySbGGACyxq_GAA0O0A2AA10_RzAA0oL0R_rlWlTm_0(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>);
    v6[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>, AnyView)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(AnyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)>(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in FocusedValues.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = *(a1 + 32);
  return a3(v10, a2, v5, v6, v7);
}

double outlined consume of FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined destroy of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined assign with take of FocusedValues.Entry<FocusedValues.__Key_isPrintableContent>?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FocusedValues.Entry<FocusedValues.__Key_inspectorPresented>?(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

uint64_t NavigationHostingControllerCache_UIKit.prerenderHostingController(configureExisting:makeNew:)(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void (*)(void), uint64_t))
{
  v4 = v3;
  v5 = *(v3 + 24);
  if (v5)
  {
    v7 = v5;
    a1();
    return v7;
  }

  v9 = a3(a1, a2);
  v10 = *(v3 + 24);
  *(v3 + 24) = v9;

  static Semantics.v6.getter();
  result = isLinkedOnOrAfter(_:)();
  if (result)
  {
    v11 = *(v3 + 24);
    if (!v11)
    {
LABEL_10:
      __break(1u);
      return result;
    }

    v12 = *(v11 + direct field offset for UIHostingController.host);
    v13 = specialized _UIHostingView.base.getter();

    UIHostingViewBase.updateRemovedState(uiView:)(0);
  }

  result = *(v4 + 24);
  if (!result)
  {
    goto LABEL_10;
  }

  return result;
}

void specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(id a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, void *a6, int a7, UINavigationController *a8, unsigned __int8 a9)
{
  v134 = a8;
  HIDWORD(v126) = a7;
  v127 = a6;
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v126 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v126 - v19;
  v156[0] = 0;
  v154 = a5;
  v155 = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();

  a3(&v154);
  v22 = v155;
  if (v155 >> 62)
  {
    goto LABEL_110;
  }

  for (i = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v139 = a1;
    v137 = v22;
    if (!i)
    {
      break;
    }

    v24 = 0;
    v145 = v22 & 0xC000000000000001;
    v141 = v22 & 0xFFFFFFFFFFFFFF8;
    *&v21 = 138412290;
    v138 = v21;
    *&v21 = 138412546;
    v130 = v21;
    v140 = v14;
    v142 = v17;
    v143 = v20;
    v144 = i;
    while (v145)
    {
      v25 = MEMORY[0x18D00E9C0](v24, v22);
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_107;
      }

LABEL_11:
      v146 = v26;
      v27 = v25;
      v28 = [v27 navigationController];
      v29 = v28;
      if (v28)
      {
        if (a1)
        {
          if (v28 != a1)
          {
            v30 = a1;
            v31 = v29;
            [v27 willMoveToParentViewController_];
            v32 = [v27 view];

            if (!v32)
            {
              __break(1u);
              return;
            }

            [v32 removeFromSuperview];

            specialized mustRemove #1 <A>(_:from:) in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v27, v31, v156);
            v17 = v142;
            goto LABEL_33;
          }

          static Log.navigation.getter();
          v45 = type metadata accessor for Logger();
          v46 = *(v45 - 8);
          if ((*(v46 + 48))(v20, 1, v45) != 1)
          {
            v47 = v27;
            v48 = v29;
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.debug.getter();

            LODWORD(v135) = v50;
            v136 = v49;
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v131 = v52;
              v133 = swift_slowAlloc();
              *&v148 = v133;
              *v51 = v130;
              *(v51 + 4) = v47;
              *v52 = v47;
              *(v51 + 12) = 2080;
              *&v147[0] = v29;
              type metadata accessor for UINavigationController?(0, &lazy cache variable for type metadata for UINavigationController?, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8, type metadata accessor for NSObject);
              v53 = v47;
              v132 = v48;
              v54 = String.init<A>(describing:)();
              v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v148);

              *(v51 + 14) = v56;
              v57 = v136;
              _os_log_impl(&dword_18BD4A000, v136, v135, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController and destination were equal %s", v51, 0x16u);
              v58 = v131;
              outlined destroy of NSObject?(v131);
              MEMORY[0x18D0110E0](v58, -1, -1);
              v59 = v133;
              __swift_destroy_boxed_opaque_existential_1(v133);
              MEMORY[0x18D0110E0](v59, -1, -1);
              v60 = v51;
              v14 = v140;
              MEMORY[0x18D0110E0](v60, -1, -1);

              v61 = v146;
            }

            else
            {

              v61 = v146;
              v14 = v140;
            }

            v20 = v143;
            (*(v46 + 8))(v143, v45);
            v22 = v137;
            v17 = v142;
            i = v144;
            goto LABEL_35;
          }

          outlined destroy of Logger?(v20);
          v22 = v137;
        }

        else
        {

LABEL_20:
          static Log.navigation.getter();
          v35 = type metadata accessor for Logger();
          v36 = *(v35 - 8);
          if ((*(v36 + 48))(v17, 1, v35) == 1)
          {

            outlined destroy of Logger?(v17);
            a1 = v139;
          }

          else
          {
            v37 = v27;
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              *v40 = v138;
              *(v40 + 4) = v37;
              *v41 = v37;
              v42 = v37;
              _os_log_impl(&dword_18BD4A000, v38, v39, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController or destination were nil", v40, 0xCu);
              outlined destroy of NSObject?(v41);
              v43 = v41;
              v22 = v137;
              MEMORY[0x18D0110E0](v43, -1, -1);
              v44 = v40;
              v17 = v142;
              MEMORY[0x18D0110E0](v44, -1, -1);
            }

            (*(v36 + 8))(v17, v35);
            a1 = v139;
            v14 = v140;
            v20 = v143;
          }
        }

        i = v144;
        goto LABEL_34;
      }

      if (a1)
      {
        goto LABEL_20;
      }

      static Log.navigation.getter();
      v33 = type metadata accessor for Logger();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v14, 1, v33) != 1)
      {
        v62 = v27;
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v65 = v138;
          *(v65 + 4) = v62;
          *v66 = v62;
          v136 = v62;
          outlined destroy of NSObject?(v66);
          v67 = v66;
          v14 = v140;
          MEMORY[0x18D0110E0](v67, -1, -1);
          v68 = v65;
          i = v144;
          MEMORY[0x18D0110E0](v68, -1, -1);
          v62 = v63;
          v63 = v136;
        }

        v17 = v142;

        (*(v34 + 8))(v14, v33);
        v22 = v137;
LABEL_33:
        v20 = v143;
        goto LABEL_34;
      }

      outlined destroy of Logger?(v14);
      v22 = v137;
LABEL_34:
      v61 = v146;
LABEL_35:
      ++v24;
      if (v61 == i)
      {
        goto LABEL_39;
      }
    }

    if (v24 >= *(v141 + 16))
    {
      goto LABEL_109;
    }

    v25 = *(v22 + 8 * v24 + 32);
    v26 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_11;
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    ;
  }

LABEL_39:
  swift_beginAccess();
  v69 = v156[0];
  if (!v156[0])
  {
    v125 = v127;
    v124 = v134;
    specialized closure #2 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(v22, v127, BYTE4(v126) & 1, v134, a9 & 1);
    outlined destroy of NavigationHostingControllerCache_UIKit.Source(&v154);

    goto LABEL_103;
  }

  LODWORD(v126) = a9;
  v70 = *(v156[0] + 64);
  v132 = (v156[0] + 64);
  v71 = 1 << *(v156[0] + 32);
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  else
  {
    v72 = -1;
  }

  v73 = v72 & v70;
  v131 = (v71 + 63) >> 6;

  v74 = 0;
  v17 = &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>;
  v75 = v134;
  v129 = v69;
  v77 = v131;
  v76 = v132;
  if (v73)
  {
    while (1)
    {
LABEL_48:
      v133 = v74;
      v79 = (v74 << 9) | (8 * __clz(__rbit64(v73)));
      v80 = *(*(v69 + 56) + v79);
      v81 = *(*(v69 + 48) + v79);

      v135 = v81;
      v82 = [v81 _swiftui_viewControllers];
      v20 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = v83;
      *&v148 = MEMORY[0x1E69E7CC0];
      if (v83 >> 62)
      {
        v111 = v83;
        v14 = __CocoaSet.count.getter();
        v84 = v111;
      }

      else
      {
        v14 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v136 = v73;
      v146 = v80;
      if (v14)
      {
        v128 = v20;
        v22 = 0;
        v143 = v84 & 0xFFFFFFFFFFFFFF8;
        v144 = v84 & 0xC000000000000001;
        *&v130 = v84;
        v141 = v80 & 0xC000000000000001;
        v142 = (v84 + 32);
        v85 = v80 & 0xFFFFFFFFFFFFFF8;
        if (v80 < 0)
        {
          v85 = v80;
        }

        v140 = v85;
        v145 = v80 + 56;
        while (1)
        {
          if (v144)
          {
            v86 = MEMORY[0x18D00E9C0](v22, v130);
          }

          else
          {
            if (v22 >= *(v143 + 16))
            {
              goto LABEL_106;
            }

            v86 = v142[v22];
          }

          v87 = v86;
          if (__OFADD__(v22++, 1))
          {
            goto LABEL_105;
          }

          type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, type metadata accessor for NavigationStackHostingController);
          v89 = swift_dynamicCastClass();
          if (v89)
          {
            v20 = v89;
            if (v141)
            {
              v90 = v87;
              v20 = __CocoaSet.contains(_:)();

              if (v20)
              {

                goto LABEL_56;
              }
            }

            else if (*(v80 + 16))
            {
              v91 = *(v80 + 40);
              *&v138 = v87;
              v92 = NSObject._rawHashValue(seed:)(v91);
              v93 = -1 << *(v80 + 32);
              v94 = v92 & ~v93;
              if ((*(v145 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94))
              {
                v95 = ~v93;
                while (1)
                {
                  v96 = *(*(v80 + 48) + 8 * v94);
                  v97 = static NSObject.== infix(_:_:)();

                  if (v97)
                  {
                    break;
                  }

                  v94 = (v94 + 1) & v95;
                  v80 = v146;
                  if (((*(v145 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
                  {
                    goto LABEL_54;
                  }
                }

                v98 = v138;

                a1 = v139;
                v17 = &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>;
                v80 = v146;
                goto LABEL_56;
              }

LABEL_54:

              a1 = v139;
              v17 = &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v20 = *(v148 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
LABEL_56:
          if (v22 == v14)
          {
            v99 = v141;
            goto LABEL_75;
          }
        }
      }

      v99 = v80 & 0xC000000000000001;
LABEL_75:

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v135 _swiftui_setViewControllers_];

      if (v99)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, type metadata accessor for NavigationStackHostingController);
        lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type NavigationStackHostingController<AnyView> and conformance NSObject, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, type metadata accessor for NavigationStackHostingController, MEMORY[0x1E69E81B8]);
        Set.Iterator.init(_cocoa:)();
        v101 = v156[2];
        v146 = v156[1];
        v102 = v156[3];
        v17 = v156[4];
        v103 = v156[5];
      }

      else
      {
        v17 = 0;
        v101 = v80 + 56;
        v104 = -1 << *(v80 + 32);
        v102 = ~v104;
        v105 = -v104;
        v106 = v105 < 64 ? ~(-1 << v105) : -1;
        v103 = v106 & *(v80 + 56);
      }

      v136 &= v136 - 1;
      v20 = (v102 + 64) >> 6;
      if (v146 < 0)
      {
        break;
      }

      while (1)
      {
        v109 = v17;
        v110 = v103;
        v14 = v17;
        if (!v103)
        {
          while (1)
          {
            v14 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              break;
            }

            if (v14 >= v20)
            {
              goto LABEL_92;
            }

            v110 = *(v101 + 8 * v14);
            v109 = (v109 + 1);
            if (v110)
            {
              goto LABEL_89;
            }
          }

          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

LABEL_89:
        v22 = (v110 - 1) & v110;
        v108 = *(*(v146 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v110)))));
        if (!v108)
        {
          break;
        }

LABEL_90:
        [v108 removeFromParentViewController];
        [v108 willMoveToParentViewController_];

        v17 = v14;
        v103 = v22;
        if (v146 < 0)
        {
          goto LABEL_82;
        }
      }

LABEL_92:
      outlined consume of Set<UIPress>.Iterator._Variant(v146);

      v74 = v133;
      v75 = v134;
      v73 = v136;
      v22 = v137;
      v69 = v129;
      v17 = &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>;
      v77 = v131;
      v76 = v132;
      if (!v136)
      {
        goto LABEL_44;
      }
    }

LABEL_82:
    v107 = __CocoaSet.Iterator.next()();
    if (!v107)
    {
      goto LABEL_92;
    }

    *&v147[0] = v107;
    type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, type metadata accessor for NavigationStackHostingController);
    swift_dynamicCast();
    v108 = v148;
    v14 = v17;
    v22 = v103;
    if (!v148)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  while (1)
  {
LABEL_44:
    v78 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_108;
    }

    if (v78 >= v77)
    {
      break;
    }

    v73 = v76[v78];
    ++v74;
    if (v73)
    {
      v74 = v78;
      goto LABEL_48;
    }
  }

  v112 = v76;

  specialized closure #2 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(v22, v127, BYTE4(v126) & 1, v75, v126 & 1);
  v114 = -1 << *(v69 + 32);
  v115 = ~v114;
  v116 = *(v69 + 64);
  v117 = -v114;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  else
  {
    v118 = -1;
  }

  *&v148 = v69;
  *(&v148 + 1) = v112;
  v149 = v115;
  *&v150 = v118 & v116;
  *(&v150 + 1) = closure #2 in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:);
  *&v151 = 0;
  *(&v151 + 1) = 0xF000000000000007;
  v152 = 0u;
  v153 = 0u;
  specialized FlattenSequence.Iterator.next()(v113);
  if (v119)
  {
    v120 = v119;
    do
    {
      [v120 didMoveToParentViewController_];
      v121 = *&v120[direct field offset for UIHostingController.host];
      static ViewGraphRootValues.all.getter();
      type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      specialized FlattenSequence.Iterator.next()(v122);
      v120 = v123;
    }

    while (v123);
  }

  v147[2] = v150;
  v147[3] = v151;
  v147[4] = v152;
  v147[5] = v153;
  v147[0] = v148;
  v147[1] = v149;
  outlined destroy of (UINavigationController, Set<NavigationStackHostingController<AnyView>>)(v147, type metadata accessor for FlattenSequence<LazyMapSequence<[UINavigationController : Set<NavigationStackHostingController<AnyView>>].Values, Set<NavigationStackHostingController<AnyView>>>>.Iterator);
  outlined destroy of NavigationHostingControllerCache_UIKit.Source(&v154);

  v124 = v134;
LABEL_103:
}

{
  sub_18C0E7BDC(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

Swift::Void __swiftcall NavigationHostingControllerCache_UIKit.eject(at:)(SwiftUI::NavigationContentAbstractPosition at)
{
  v2 = v1;
  v3 = *&at.column.value.tag;
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v68 - v11;
  v13 = *v3;
  v14 = *(v3 + 1);
  static Log.navigation.getter();
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v73 = *(v16 + 48);
  if (v73(v12, 1, v15) == 1)
  {
    outlined destroy of Logger?(v12);
  }

  else
  {
    v71 = v1;
    v72 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v69 = v15;
      v20 = v19;
      v21 = swift_slowAlloc();
      v70 = v6;
      v68 = v21;
      v74 = v21;
      *v20 = 136315138;
      LOBYTE(v75) = v72;
      v76 = v14;
      v22 = NavigationContentAbstractPosition.description.getter();
      v24 = v14;
      v25 = v9;
      v26 = v16;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v74);

      *(v20 + 4) = v27;
      v16 = v26;
      v9 = v25;
      v14 = v24;
      _os_log_impl(&dword_18BD4A000, v17, v18, "[NavigationHostingControllerCache_UIKit] Eject called for index: %s", v20, 0xCu);
      v28 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      v6 = v70;
      MEMORY[0x18D0110E0](v28, -1, -1);
      v29 = v20;
      v15 = v69;
      MEMORY[0x18D0110E0](v29, -1, -1);
    }

    (*(v16 + 8))(v12, v15);
    v13 = v72;
    v2 = v71;
  }

  if (v14 >= 1)
  {
    swift_beginAccess();
    v30 = *(v2 + 16);
    if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14), (v32 & 1) != 0))
    {
      v33 = *(*(v30 + 56) + 8 * v31);
      swift_endAccess();
      v34 = v33;
      specialized NavigationHostingControllerCache_UIKit.sanitize(_:)(v34);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, v13, v14);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      static Log.navigation.getter();
      if (v73(v9, 1, v15) == 1)
      {
        outlined destroy of Logger?(v9);
      }

      else
      {
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = v14;
          v43 = swift_slowAlloc();
          v44 = v9;
          v45 = v16;
          v46 = swift_slowAlloc();
          v74 = v46;
          *v43 = 136315138;
          LOBYTE(v75) = v13;
          v76 = v42;
          v47 = NavigationContentAbstractPosition.description.getter();
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v74);

          *(v43 + 4) = v49;
          _os_log_impl(&dword_18BD4A000, v40, v41, "[NavigationHostingControllerCache_UIKit] Attempting to eject an un-cached view controller at index: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          v50 = v46;
          v16 = v45;
          v9 = v44;
          MEMORY[0x18D0110E0](v50, -1, -1);
          MEMORY[0x18D0110E0](v43, -1, -1);
        }

        (*(v16 + 8))(v9, v15);
      }
    }

    return;
  }

  swift_beginAccess();
  v35 = *(v2 + 16);
  if (*(v35 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14), (v37 & 1) != 0))
  {
    v38 = *(*(v35 + 56) + 8 * v36);
    v39 = v38;
  }

  else
  {
    v38 = 0;
  }

  swift_endAccess();
  static Log.navigation.getter();
  if (v73(v6, 1, v15) == 1)
  {
    outlined destroy of Logger?(v6);
    if (!v38)
    {
      return;
    }

    goto LABEL_29;
  }

  v51 = v38;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v70 = v6;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v74 = v38;
    v75 = v55;
    *v54 = 136315394;
    type metadata accessor for UINavigationController?(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>?, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, type metadata accessor for NavigationStackHostingController, type metadata accessor for _UIHostingView<AnyView>);
    v56 = v51;
    v57 = String.init<A>(describing:)();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v75);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    if (v38)
    {
      v60 = [v56 parentViewController];
    }

    else
    {
      v60 = 0;
    }

    v74 = v60;
    type metadata accessor for UINavigationController?(0, &lazy cache variable for type metadata for UIViewController?, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, type metadata accessor for NSObject);
    v61 = String.init<A>(describing:)();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v75);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_18BD4A000, v52, v53, "[NavigationHostingControllerCache_UIKit] Controller %s with parent %s had eject called but was not ejected because cache depth was zero.", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18D0110E0](v55, -1, -1);
    MEMORY[0x18D0110E0](v54, -1, -1);

    v6 = v70;
  }

  else
  {
  }

  (*(v16 + 8))(v6, v15);
  if (v38)
  {
LABEL_29:
    v64 = [v38 viewIfLoaded];
    v65 = [v64 window];

    if (v65)
    {
    }

    else
    {
      v66 = *&v38[direct field offset for UIHostingController.host];
      v75 = 0;
      LOBYTE(v76) = 1;
      type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
      v67 = v66;
      ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    }
  }
}

void (*NavigationHostingControllerCache_UIKit.ejectDeferred(at:)(unsigned __int8 *a1))()
{
  v2 = v1;
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = *a1;
  v8 = *(a1 + 1);
  swift_beginAccess();
  v9 = *(v2 + 16);
  if (!*(v9 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8), (v11 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  v13 = v12;
  static Log.navigation.getter();
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) != 1)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = v20;
      v32 = swift_slowAlloc();
      v33 = v32;
      *v20 = 136315138;
      v34[0] = v7;
      v35 = v8;
      v31 = v19;
      v21 = NavigationContentAbstractPosition.description.getter();
      v23 = v13;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v33);

      v25 = v30;
      *(v30 + 1) = v24;
      v13 = v23;
      _os_log_impl(&dword_18BD4A000, v18, v31, "[NavigationHostingControllerCache_UIKit] Eject deferred called for index: %s", v25, 0xCu);
      v26 = v32;
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x18D0110E0](v26, -1, -1);
      MEMORY[0x18D0110E0](v25, -1, -1);
    }

    (*(v15 + 8))(v6, v14);
    if (v8 < 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, v7, v8);
    swift_endAccess();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v13;
    return partial apply for closure #2 in NavigationHostingControllerCache_UIKit.ejectDeferred(at:);
  }

  outlined destroy of Logger?(v6);
  if (v8 >= 1)
  {
    goto LABEL_10;
  }

LABEL_5:
  *(swift_allocObject() + 16) = v13;
  return partial apply for closure #1 in NavigationHostingControllerCache_UIKit.ejectDeferred(at:);
}

void closure #1 in NavigationHostingControllerCache_UIKit.ejectDeferred(at:)(char *a1)
{
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  static Log.navigation.getter();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Logger?(v4);
  }

  else
  {
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v26 = v9;
      v11 = v10;
      v27 = swift_slowAlloc();
      v29 = v27;
      *v11 = 136315394;
      v12 = v7;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v29);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2080;
      v28 = [v12 parentViewController];
      type metadata accessor for UINavigationController?(0, &lazy cache variable for type metadata for UIViewController?, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, type metadata accessor for NSObject);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_18BD4A000, v8, v26, "[NavigationHostingControllerCache_UIKit] Controller %s with parent %s had eject deferred called but was not ejected because cache depth was zero.", v11, 0x16u);
      v21 = v27;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v21, -1, -1);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    (*(v6 + 8))(v4, v5);
  }

  v22 = [a1 viewIfLoaded];
  v23 = [v22 window];

  if (!v23)
  {
    v24 = *&a1[direct field offset for UIHostingController.host];
    v29 = 0;
    v30 = 1;
    type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
    v23 = v24;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
  }
}

double closure #2 in NavigationHostingControllerCache_UIKit.ejectDeferred(at:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    specialized NavigationHostingControllerCache_UIKit.sanitize(_:)(a2);
  }

  return result;
}

Swift::Void __swiftcall NavigationHostingControllerCache_UIKit.ejectAll(in:)(SwiftUI::NavigationSplitViewColumn_optional in)
{
  v2 = *in.value.tag;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(v3 + 48);
    v14 = *(v13 + 16 * v12);
    if (v14 == 3)
    {
      if (v2 == 3)
      {
        v27 = 3;
        goto LABEL_14;
      }
    }

    else if (v14 == v2)
    {
      v27 = v2;
LABEL_14:
      v15 = *(v13 + 16 * v12 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
        v18 = v17 + 1;
        v9 = v20;
      }

      *(v9 + 2) = v18;
      v19 = &v9[16 * v17];
      v19[32] = v27;
      *(v19 + 5) = v15;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v22 = *(v9 + 2);
  if (v22)
  {
    v23 = v9 + 40;
    do
    {
      v24 = *(v23 - 8);
      v25 = *v23;
      v23 += 2;
      v28 = v24;
      v29 = v25;
      v26 = &v28;
      NavigationHostingControllerCache_UIKit.eject(at:)(*(&v21 - 1));
      --v22;
    }

    while (v22);
  }
}

double NavigationHostingControllerCache_UIKit.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

void specialized closure #2 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(unint64_t a1, void *a2, char a3, UINavigationController *a4, char a5)
{
  LOBYTE(v6) = a3;
  v62 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (i)
    {
      v5 = (a1 & 0xC000000000000001);
      if ((a1 & 0xC000000000000001) != 0)
      {
        goto LABEL_73;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(a1 + 32);
        goto LABEL_7;
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      v31 = MEMORY[0x18D00E9C0]();
LABEL_42:
      v32 = v31;
      v33 = a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0x70);
      swift_beginAccess();
      if (!*(v33 + 2))
      {
        goto LABEL_81;
      }

      v34 = *(v33 + 1);

      specialized UIHostingController.prepareNavigationBar(in:navigationController:isRoot:)(v35, v34, a4, v58 == 1);

      goto LABEL_44;
    }

    while (1)
    {
      v17 = v62 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = v17 - 1;
      if (!__OFSUB__(v17, 1))
      {
        break;
      }

      __break(1u);
LABEL_73:
      v9 = MEMORY[0x18D00E9C0](0, a1);
LABEL_7:
      v10 = v9;
      specialized NavigationStackCoordinator.configureAsRoot(_:transparentBackground:)(v10, v6 & 1);

      if (i < 1)
      {
        __break(1u);
        goto LABEL_75;
      }

      for (j = 0; j != i; ++j)
      {
        if (v5)
        {
          v13 = MEMORY[0x18D00E9C0](j, a1);
        }

        else
        {
          v13 = *(a1 + 8 * j + 32);
        }

        v14 = v13;
        v15 = *&v13[direct field offset for UIHostingController.host];
        v16 = [v15 window];
        if (v16)
        {

          UIHostingViewBase.inheritedEnvironment.getter();
          if (v69 != 1)
          {
            outlined consume of EnvironmentValues?(v69, *(&v69 + 1));
            v69 = xmmword_18CD6A6D0;
            UIHostingViewBase.inheritedEnvironment.setter();
          }
        }

        else
        {
          v12 = [v14 traitCollection];
          UIHostingViewBase.traitCollectionOverride.setter();
        }
      }
    }

    v58 = v17;
    v59 = i;

    specialized BidirectionalCollection.suffix(_:)(v6, a1);
    v6 = v18;
    v67 = v19;
    v21 = v20;

    v22 = v62 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v22)
    {
      break;
    }

    v23 = 0;
    v65 = v21 >> 1;
    v66 = (v21 >> 1) - v67;
    v63 = v6 + 8 * v67;
    v64 = v22;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x18D00E9C0](v23, a1);
      }

      else
      {
        if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v24 = *(a1 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v66 == v23)
      {

        goto LABEL_36;
      }

      if ((v67 + v23) >= v65)
      {
        goto LABEL_70;
      }

      v27 = *(v63 + 8 * v23);
      v28 = [(UINavigationController *)a4 splitViewController];
      v69 = xmmword_18CD874C0;
      v70 = 0;
      v71 = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();

      v72 = 2;
      v29 = direct field offset for UIHostingController.overrides;
      swift_beginAccess();
      outlined assign with take of HostingControllerOverrides(&v69, &v27[v29]);
      swift_endAccess();
      v6 = *&v27[direct field offset for UIHostingController.host];
      v5 = specialized _UIHostingView.base.getter();

      UIHostingViewBase.viewGraph.getter();
      ViewGraphHost.updateRemovedState(isUnattached:isHiddenForReuse:)(0, 0);

      LOBYTE(v6) = v27;
      specialized UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:)(v25, 0);

      v69 = xmmword_18CD874C0;
      v70 = 0;
      v71 = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v72 = 2;
      swift_beginAccess();
      outlined assign with take of HostingControllerOverrides(&v69, &v27[v29]);
      swift_endAccess();

      ++v23;
      if (v26 == v64)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

LABEL_36:
  swift_unknownObjectRelease();

  if (!v59)
  {
LABEL_44:
    if (v62)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [(UINavigationController *)a4 _swiftui_setViewControllers:isa animated:a5 & 1];

    if (a5)
    {
      return;
    }

    static Semantics.v6.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      return;
    }

    specialized Collection.dropLast(_:)(1, a1);
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v43 = __OFSUB__(v42 >> 1, v40);
    v44 = (v42 >> 1) - v40;
    if (!v44)
    {
LABEL_50:
      swift_unknownObjectRelease();
      return;
    }

    if ((v44 < 0) ^ v43 | (v44 == 0))
    {
      goto LABEL_80;
    }

    v45 = (v38 + 8 * v40);
    while (1)
    {
      v48 = *v45;
      v49 = *(*v45 + direct field offset for UIHostingController.host);
      v50 = *((*MEMORY[0x1E69E7D40] & *v49) + 0x70);
      v51 = *(v49 + *((*MEMORY[0x1E69E7D40] & *v49) + 0x68));
      if (*(v49 + v50) != 1)
      {
        break;
      }

      *(v49 + v50) = 1;
      v46 = v48;
      v47 = v51;
LABEL_55:
      UIHostingViewBase.updateRemovedState(uiView:)(0);

      ++v45;
      if (!--v44)
      {
        goto LABEL_50;
      }
    }

    v52 = v48;
    v53 = v49;
    v54 = v51;
    v55 = UIHostingViewBase.uiView.getter();
    if (v55)
    {

      if (UIHostingViewBase.delegate.getter())
      {
        goto LABEL_59;
      }
    }

    else
    {
      v56 = v53;
      UIHostingViewBase.uiView.setter();
      if (UIHostingViewBase.delegate.getter())
      {
LABEL_59:
        swift_unknownObjectRelease();
        if (UIHostingViewBase.updateDelegate.getter())
        {
LABEL_60:
          swift_unknownObjectRelease();
LABEL_64:
          UIHostingViewBase.viewGraph.getter();

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();

          if (Strong)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            UIHostingViewBase.viewGraph.getter();

            lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
            swift_unknownObjectRetain();
            DisplayList.ViewRenderer.host.setter();
          }

          *(v49 + v50) = 1;

          goto LABEL_55;
        }

LABEL_63:
        lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
        swift_unknownObjectRetain();
        UIHostingViewBase.updateDelegate.setter();
        goto LABEL_64;
      }
    }

    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
    swift_unknownObjectRetain();
    UIHostingViewBase.delegate.setter();
    if (UIHostingViewBase.updateDelegate.getter())
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v30 = v59 - 1;
  if (__OFSUB__(v59, 1))
  {
    goto LABEL_76;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_77;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(a1 + 8 * v30 + 32);
    goto LABEL_42;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

void specialized NavigationStackHostingController.replaceRootViewWhenSafe(view:transaction:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 viewIfLoaded];
  v5 = [v4 window];

  if (v5)
  {

    v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x400);
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    v7 = direct field offset for UIHostingController.host;
    v8 = *(v2 + direct field offset for UIHostingController.host);
    v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
    swift_beginAccess();
    *(v8 + v9) = a1;
    v10 = v8;

    type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    v11 = *(v2 + v7);
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
  }
}

uint64_t specialized NavigationHostingControllerCache_UIKit.sanitize(_:)(void *a1)
{
  v2 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F8);
  swift_beginAccess();
  *v2 = 1542;
  v2[2] = 0;
  v6 = xmmword_18CD874C0;
  v7 = 0;
  v8 = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = 2;
  v3 = direct field offset for UIHostingController.overrides;
  swift_beginAccess();
  outlined assign with take of HostingControllerOverrides(&v6, a1 + v3);
  swift_endAccess();
  v4 = AnyView.init<A>(_:)();
  specialized NavigationStackHostingController.replaceRootViewWhenSafe(view:transaction:)(v4);

  v6 = xmmword_18CD874C0;
  v7 = 0;
  v8 = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = 2;
  swift_beginAccess();
  outlined assign with take of HostingControllerOverrides(&v6, a1 + v3);
  return swift_endAccess();
}

void type metadata accessor for UINavigationController?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  type metadata accessor for UINavigationController?(0, &lazy cache variable for type metadata for NSObject?, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0, type metadata accessor for NSObject);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *initializeWithCopy for NavigationHostingControllerCache_UIKit.Source(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t *assignWithCopy for NavigationHostingControllerCache_UIKit.Source(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  swift_unknownObjectWeakCopyAssign();
  return a1;
}

void *initializeWithTake for NavigationHostingControllerCache_UIKit.Source(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectWeakTakeInit();
  return a1;
}

void *assignWithTake for NavigationHostingControllerCache_UIKit.Source(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  swift_unknownObjectWeakTakeAssign();
  return a1;
}

void *initializeBufferWithCopyOfBuffer for SelectionManagerBox(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  if ((v10 & 0x1000F8) != 0 || (v9 + 1) > 0x18)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + (((v10 & 0xF8) + 23) & ~(v10 & 0xF8) & 0x1F8));

    return v3;
  }

  v13 = *(a2 + v9);
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v9 <= 3)
    {
      v15 = v9;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_28:
      v17 = (v16 | (v14 << (8 * v9))) + 3;
      v13 = v16 + 3;
      if (v9 < 4)
      {
        v13 = v17;
      }

      goto LABEL_30;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_28;
    }
  }

LABEL_30:
  if (v13 == 2)
  {
    (*(v5 + 16))(a1);
    v19 = 2;
LABEL_38:
    *(v3 + v9) = v19;
    return v3;
  }

  if (v13 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(v3, a2, v7);
    }

    else
    {
      (*(v5 + 16))(v3, a2, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
    }

    v19 = 1;
    goto LABEL_38;
  }

  *a1 = *a2;
  *(a1 + v9) = 0;

  return v3;
}

void *initializeWithTake for SelectionManagerBox(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
  v11 = v10 - 3;
  if (v10 < 3)
  {
    goto LABEL_24;
  }

  if (v9 <= 3)
  {
    v12 = v9;
  }

  else
  {
    v12 = 4;
  }

  if (v12 <= 1)
  {
    if (!v12)
    {
      goto LABEL_24;
    }

    v13 = *a2;
  }

  else if (v12 == 2)
  {
    v13 = *a2;
  }

  else if (v12 == 3)
  {
    v13 = *a2 | (a2[2] << 16);
  }

  else
  {
    v13 = *a2;
  }

  v14 = (v13 | (v11 << (8 * v9))) + 3;
  v10 = v13 + 3;
  if (v9 < 4)
  {
    v10 = v14;
  }

LABEL_24:
  if (v10 == 2)
  {
    (*(v5 + 32))(a1);
    v16 = 2;
  }

  else if (v10 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v7);
      v16 = 1;
    }

    else
    {
      (*(v5 + 32))(a1, a2, v4);
      v16 = 1;
      (*(v5 + 56))(a1, 0, 1, v4);
    }
  }

  else
  {
    v16 = 0;
    *a1 = *a2;
  }

  *(a1 + v9) = v16;
  return a1;
}

uint64_t getEnumTagSinglePayload for SelectionManagerBox(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 < 2)
    {
LABEL_30:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_19:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
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

  return (v7 | v12) + 254;
}

void storeEnumTagSinglePayload for SelectionManagerBox(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v7 = *(v5 + 64);
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
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
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_44:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v7] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_29;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t getEnumTag for SelectionManagerBox(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v4 <= v3)
  {
    v4 = *(v2 + 64);
  }

  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  v6 = a1[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        return v6;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    LODWORD(v6) = v9 + 3;
    if (v5 >= 4)
    {
      return v6;
    }

    else
    {
      return v10;
    }
  }

  return v6;
}

void destructiveInjectEnumTag for SelectionManagerBox(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v7 = *(v5 + 64);
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 2)
  {
    a1[v8] = a2;
    return;
  }

  v9 = a2 - 3;
  if (v8 < 4)
  {
    a1[v8] = (v9 >> (8 * v8)) + 3;
    if (!v8)
    {
      return;
    }

    v9 &= ~(-1 << (8 * v8));
  }

  else
  {
    a1[v8] = 3;
  }

  if (v8 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8;
  }

  bzero(a1, v8);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      *a1 = v9;
      a1[2] = BYTE2(v9);
    }

    else
    {
      *a1 = v9;
    }
  }

  else if (v10 == 1)
  {
    *a1 = v9;
  }

  else
  {
    *a1 = v9;
  }
}

uint64_t SelectionManagerBox.deselect(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  v65 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v68 = &v54 - v10;
  v11 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = *(a2 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v26, v3, a2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v22 + 8))(v3, a2);
    v69 = *v26;
    type metadata accessor for Set();
    Set.remove(_:)();
    (*(v11 + 8))(v21, v8);
    *v3 = v69;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 1)
  {
    return (*(v22 + 8))(v26, a2);
  }

  v56 = v22;
  v59 = v3;
  v60 = a2;
  v28 = v67;
  (*(v11 + 32))(v67, v26, v8);
  (*(v6 + 16))(v16, v66, v5);
  v57 = *(v6 + 56);
  v58 = v6 + 56;
  v57(v16, 0, 1, v5);
  v29 = v6;
  v30 = *(v65 + 48);
  v31 = *(v11 + 16);
  v32 = v68;
  v31(v68, v28, v8);
  v66 = v30;
  v33 = &v32[v30];
  v34 = v5;
  v31(v33, v16, v8);
  v61 = v29;
  v35 = *(v29 + 48);
  if (v35(v32, 1, v5) == 1)
  {
    v36 = *(v11 + 8);
    v36(v16, v8);
    v36(v67, v8);
    v37 = v68;
    v38 = v5;
    v39 = v35(&v68[v66], 1, v5) == 1;
    v40 = v37;
    if (!v39)
    {
      return (*(v64 + 8))(v40, v65);
    }

    v36(v37, v8);
    v41 = v60;
LABEL_13:
    v53 = v59;
    (*(v56 + 8))(v59, v41);
    v57(v53, 1, 1, v38);
    return swift_storeEnumTagMultiPayload();
  }

  v55 = v11;
  v43 = v63;
  v44 = v68;
  v31(v63, v68, v8);
  v45 = &v44[v66];
  v46 = v66;
  if (v35(v45, 1, v34) == 1)
  {
    v47 = *(v55 + 8);
    v47(v16, v8);
    v47(v67, v8);
    (*(v61 + 8))(v43, v34);
    v40 = v68;
    return (*(v64 + 8))(v40, v65);
  }

  v49 = v61;
  v48 = v62;
  v50 = v68;
  (*(v61 + 32))(v62, &v68[v46], v34);
  v41 = v60;
  v38 = v34;
  LODWORD(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v49 + 8);
  v51(v48, v34);
  v52 = *(v55 + 8);
  v52(v16, v8);
  v52(v67, v8);
  v51(v43, v34);
  result = (v52)(v50, v8);
  if (v66)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t SelectionManagerBox.select(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 32))(v18, v3, a2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 16))(v3, a1, v6);
      (*(v7 + 56))(v3, 0, 1, v6);
    }

    else
    {
      (*(v7 + 16))(v3, a1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return (*(v14 + 8))(v18, a2);
  }

  else
  {
    v22 = *v18;
    (*(v7 + 16))(v9, a1, v6);
    type metadata accessor for Set();
    Set.insert(_:)();
    (*(v7 + 8))(v12, v6);
    *v3 = v22;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t SelectionManagerBox.count.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if ((*(*(*(a1 + 16) - 8) + 48))(v5, 1, *(a1 + 16)) == 1)
      {
        return 0;
      }

      v9 = type metadata accessor for Optional();
      (*(*(v9 - 8) + 8))(v5, v9);
    }

    else
    {
      (*(v2 + 8))(v5, a1);
    }

    return 1;
  }

  else
  {
    v8 = Set.count.getter();

    return v8;
  }
}

uint64_t SelectionManagerBox.setSelection(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v8, v2, a2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(a2 + 16);
      v11 = *(v10 - 8);
      (*(v11 + 16))(v2, a1, v10);
      (*(v11 + 56))(v2, 0, 1, v10);
    }

    else
    {
      (*(*(*(a2 + 16) - 8) + 16))(v2, a1);
    }

    swift_storeEnumTagMultiPayload();
    return (*(v5 + 8))(v8, a2);
  }

  else
  {
    (*(v5 + 8))(v8, a2);
    v12 = *(a2 + 16);
    getContiguousArrayStorageType<A>(for:)(v12, v12);
    v13 = *(v12 - 8);
    swift_allocObject();
    v14 = static Array._adoptStorage(_:count:)();
    (*(v13 + 16))(v15, a1, v12);
    _finalizeUninitializedArray<A>(_:)(v14, v12);
    v17 = v16;
    if (MEMORY[0x18D00CDF0]())
    {
      v18 = specialized Set.init(_nonEmptyArrayLiteral:)(v17, v12, *(a2 + 24));
    }

    else
    {
      v18 = MEMORY[0x1E69E7CD0];
    }

    *v2 = v18;
    return swift_storeEnumTagMultiPayload();
  }
}

Swift::Bool __swiftcall SelectionManagerBox.deselectAll()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, v2, v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v4 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9(v2, v3);
      (*(*(*(v3 + 16) - 8) + 56))(v2, 1, 1);
      swift_storeEnumTagMultiPayload();
      v9(v7, v3);
      return 1;
    }

    else
    {
      v9(v7, v3);
      return 0;
    }
  }

  else
  {
    v9(v2, v3);
    v12 = *v7;
    type metadata accessor for Set();
    Set.removeAll(keepingCapacity:)(0);
    *v2 = v12;
    swift_storeEnumTagMultiPayload();
    return 1;
  }
}

BOOL SelectionManagerBox.allowsEmptySelection.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() < 2;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t SelectionManagerBox.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v2, a1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = (*(v9 + 32))(v11, v15, v8);
      MEMORY[0x1EEE9AC00](v18);
      v19 = *(a1 + 24);
      v26[-2] = v4;
      v26[-1] = v19;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in SelectionManagerBox.description.getter, &v26[-4], MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v20, &v27);
      if (v28)
      {
        v21 = v27;
      }

      else
      {
        v21 = 0x63656C6573206F4ELL;
      }

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      (*(v5 + 32))(v7, v15, v4);
      v27 = 0;
      v28 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v21 = v27;
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    v22 = *v15;
    v27 = 0;
    v28 = 0xE000000000000000;
    v26[0] = v22;
    v23 = type metadata accessor for Set();
    swift_getWitnessTable(MEMORY[0x1E69E6508], v23);
    v26[0] = Array.init<A>(_:)();
    v24 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6358], v24);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    return v27;
  }

  return v21;
}

uint64_t closure #1 in SelectionManagerBox.description.getter@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = String.init<A>(describing:)();
  *a3 = result;
  a3[1] = v8;
  return result;
}

double SetSelectionManagerProjection.get(base:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  type metadata accessor for SelectionManagerBox(0, a2, a3, a4);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t AnySelectionManager.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  a3[3] = type metadata accessor for AnySelectionManagerImplementation(0, a2, a4, a5);
  a3[4] = &protocol witness table for AnySelectionManagerImplementation<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v9 = *(*(a2 - 8) + 32);

  return v9(boxed_opaque_existential_1, a1, a2);
}

uint64_t protocol witness for SelectionManager.select(_:) in conformance AnySelectionManager(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 48))(a1, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], v3, v4);
}

uint64_t protocol witness for SelectionManager.deselect(_:) in conformance AnySelectionManager(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 64))(a1, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], v3, v4);
}

uint64_t protocol witness for SelectionManager.deselectAll() in conformance AnySelectionManager()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2) & 1;
}

uint64_t protocol witness for SelectionManager.isSelected(_:) in conformance AnySelectionManager(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], v3, v4) & 1;
}

uint64_t protocol witness for SelectionManager.allowsMultipleSelection.getter in conformance AnySelectionManager()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnySelectionManager(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 8))(v7, v5, v6, v3, v4) & 1;
}

uint64_t AnySelectionManagerImplementation.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v12, a1, a3, v15);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v9, 0, 1, a2);
    (*(v13 + 32))(v17, v9, a2);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v13 + 8))(v17, a2);
  }

  else
  {
    v20(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t AnySelectionManagerImplementation.select<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v23 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  (*(v19 + 16))(v13, a1, a3, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v10, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v18, v10, AssociatedTypeWitness);
    (*(v5 + 32))(v18, v23, v5);
    return (*(v14 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v21(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    return (*(v5 + 56))(v23, v5);
  }
}

uint64_t AnySelectionManagerImplementation.deselect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v23 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  (*(v19 + 16))(v13, a1, a3, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v10, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v18, v10, AssociatedTypeWitness);
    (*(v5 + 48))(v18, v23, v5);
    return (*(v14 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v21(v10, 1, 1, AssociatedTypeWitness);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t AnySelectionManagerImplementation.isSelected<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v24 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  (*(v19 + 16))(v13, a1, a3, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v10, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v18, v10, AssociatedTypeWitness);
    v22 = (*(v5 + 64))(v18, v24, v5);
    (*(v14 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v21(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    v22 = 0;
  }

  return v22 & 1;
}

double SetToAnySelectionManager.get(base:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for SelectionManagerBox(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  *(&v13 - v8) = a1;
  swift_storeEnumTagMultiPayload();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  AnySelectionManager.init<A>(_:)(v9, v7, a5, WitnessTable, v11);

  return result;
}

uint64_t closure #1 in SetSelectionManagerProjection.set(base:newValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  getContiguousArrayStorageType<A>(for:)(a2, a2);
  v7 = *(a2 - 8);
  swift_allocObject();
  v8 = static Array._adoptStorage(_:count:)();
  (*(v7 + 16))(v9, a1, a2);
  _finalizeUninitializedArray<A>(_:)(v8, a2);
  v10 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v10);
  result = Set.init<A>(_:)();
  *a4 = result;
  return result;
}

uint64_t OptionalToAnySelectionManager.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for SelectionManagerBox(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  swift_storeEnumTagMultiPayload();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  return AnySelectionManager.init<A>(_:)(v9, v7, a5, WitnessTable, v12);
}

unint64_t instantiation function for generic protocol witness table for AnySelectionManager(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnySelectionManager and conformance AnySelectionManager();
  *(a1 + 8) = result;
  return result;
}

void getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  }

  else
  {

    type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t specialized SetSelectionManagerProjection.set(base:newValue:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v33 = a4;
  v15 = type metadata accessor for SelectionManagerBox(0, a3, a4, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v31 - v17);
  v34 = a1;

  (*(v16 + 16))(v18, a2, v15);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v25 = *v18;
LABEL_8:
    v26 = v34;
    goto LABEL_9;
  }

  if (result != 1)
  {
    (*(v8 + 32))(v10, v18, a3);
    getContiguousArrayStorageType<A>(for:)(a3, a3);
    swift_allocObject();
    v27 = static Array._adoptStorage(_:count:)();
    (*(v8 + 16))(v28, v10, a3);
    _finalizeUninitializedArray<A>(_:)(v27, a3);
    v35 = v29;
    v30 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6328], v30);
    v25 = Set.init<A>(_:)();
    result = (*(v8 + 8))(v10, a3);
    goto LABEL_8;
  }

  v20 = v32;
  v21 = (*(v32 + 32))(v13, v18, v11);
  MEMORY[0x1EEE9AC00](v21);
  v22 = v33;
  *(&v31 - 2) = a3;
  *(&v31 - 1) = v22;
  v23 = type metadata accessor for Set();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in SetSelectionManagerProjection.set(base:newValue:), (&v31 - 4), MEMORY[0x1E69E73E0], v23, v24, &v35);
  v25 = v35;
  if (!v35)
  {
    v25 = Set.init()();
  }

  v26 = v34;
  result = (*(v20 + 8))(v13, v11);
LABEL_9:
  *v26 = v25;
  return result;
}

uint64_t specialized OptionalSelectionManagerProjection.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SelectionManagerBox(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v17 - v9);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  (*(v12 + 8))(a1, v11);
  (*(v8 + 16))(v10, a2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return (*(v12 + 32))(a1, v10, v11);
    }

    else
    {
      v16 = *(a3 - 8);
      (*(v16 + 32))(a1, v10, a3);
      return (*(v16 + 56))(a1, 0, 1, a3);
    }
  }

  else
  {
    v17[1] = *v10;
    v15 = type metadata accessor for Set();
    swift_getWitnessTable(MEMORY[0x1E69E6518], v15);
    Collection.first.getter();
  }
}

uint64_t specialized SetToAnySelectionManager.set(base:newValue:)(uint64_t *a1, char *a2, char *a3, uint64_t a4)
{
  v52 = a1;
  v53 = a2;
  v47 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - v8;
  v51 = a4;
  v10 = type metadata accessor for SelectionManagerBox(0, a3, a4, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v46 - v13);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v10, v12);
  v17 = type metadata accessor for AnySelectionManagerImplementation(255, v10, WitnessTable, v16);
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - v20;
  v22 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  outlined init with copy of _Benchmark(v53, v54);
  type metadata accessor for AnySelectionManagerBox();
  if (swift_dynamicCast())
  {
    v26 = v52;

    (*(v22 + 56))(v21, 0, 1, v17);
    (*(v22 + 32))(v25, v21, v17);
    (*(v11 + 16))(v14, v25, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v53 = v25;
        v28 = v48;
        v29 = v49;
        v30 = v50;
        v31 = (*(v49 + 32))(v48, v14, v50);
        MEMORY[0x1EEE9AC00](v31);
        v32 = v51;
        *(&v46 - 2) = a3;
        *(&v46 - 1) = v32;
        v33 = type metadata accessor for Set();
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in SetToAnySelectionManager.set(base:newValue:), (&v46 - 4), MEMORY[0x1E69E73E0], v33, v34, v54);
        v35 = v54[0];
        if (v54[0])
        {
          (*(v29 + 8))(v28, v30);
          result = (*(v22 + 8))(v53, v17);
          *v52 = v35;
        }

        else
        {
          v44 = static Array._allocateUninitialized(_:)();
          if (MEMORY[0x18D00CDF0](v44, a3))
          {
            v45 = specialized Set.init(_nonEmptyArrayLiteral:)(v44, a3, v32);

            (*(v49 + 8))(v48, v50);
            result = (*(v22 + 8))(v53, v17);
            *v52 = v45;
          }

          else
          {

            (*(v49 + 8))(v48, v50);
            result = (*(v22 + 8))(v53, v17);
            *v52 = MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v38 = v46;
        v37 = v47;
        (*(v47 + 32))(v46, v14, a3);
        getContiguousArrayStorageType<A>(for:)(a3, a3);
        swift_allocObject();
        v39 = static Array._adoptStorage(_:count:)();
        (*(v37 + 16))(v40, v38, a3);
        _finalizeUninitializedArray<A>(_:)(v39, a3);
        v54[0] = v41;
        v42 = type metadata accessor for Array();
        swift_getWitnessTable(MEMORY[0x1E69E6328], v42);
        v43 = Set.init<A>(_:)();
        (*(v37 + 8))(v38, a3);
        result = (*(v22 + 8))(v25, v17);
        *v26 = v43;
      }
    }

    else
    {
      result = (*(v22 + 8))(v25, v17);
      *v26 = *v14;
    }
  }

  else
  {
    (*(v22 + 56))(v21, 1, 1, v17);
    return (*(v19 + 8))(v21, v18);
  }

  return result;
}

uint64_t specialized OptionalToAnySelectionManager.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v28 = a4;
  v6 = type metadata accessor for SelectionManagerBox(0, a3, a4, a4);
  v29 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v28 - v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v6, v7, v28);
  v12 = type metadata accessor for AnySelectionManagerImplementation(255, v6, WitnessTable, v11);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v17 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  outlined init with copy of _Benchmark(a2, v31);
  type metadata accessor for AnySelectionManagerBox();
  if (swift_dynamicCast())
  {
    v21 = type metadata accessor for Optional();
    v22 = *(v21 - 8);
    v23 = v30;
    (*(v22 + 8))(v30, v21);
    (*(v17 + 56))(v16, 0, 1, v12);
    (*(v17 + 32))(v20, v16, v12);
    (*(v29 + 16))(v9, v20, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v17 + 8))(v20, v12);
        return (*(v22 + 32))(v23, v9, v21);
      }

      else
      {
        (*(v17 + 8))(v20, v12);
        v27 = *(a3 - 8);
        (*(v27 + 32))(v23, v9, a3);
        return (*(v27 + 56))(v23, 0, 1, a3);
      }
    }

    else
    {
      v31[0] = *v9;
      v26 = type metadata accessor for Set();
      swift_getWitnessTable(MEMORY[0x1E69E6518], v26);
      Collection.first.getter();
      (*(v17 + 8))(v20, v12);
    }
  }

  else
  {
    (*(v17 + 56))(v16, 1, 1, v12);
    return (*(v14 + 8))(v16, v13);
  }
}

unint64_t type metadata accessor for AnySelectionManagerBox()
{
  result = lazy cache variable for type metadata for AnySelectionManagerBox;
  if (!lazy cache variable for type metadata for AnySelectionManagerBox)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnySelectionManagerBox);
  }

  return result;
}

void CommandsList.resolveOperations(into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandOperation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandsList.Item.Value(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CommandsList.Item(0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v11 + 72);
    do
    {
      _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v15, v13, type metadata accessor for CommandsList.Item);
      _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v13, v9, type metadata accessor for CommandsList.Item.Value);
      _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v13, type metadata accessor for CommandsList.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        specialized Set._Variant.insert(_:)(&v19, *v9);
      }

      else
      {
        outlined init with take of CommandOperation(v9, v6);
        v17 = *&v6[*(v4 + 24)];
        if (v17)
        {
          v17(v6, a1);
        }

        _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v6, type metadata accessor for CommandOperation);
      }

      v15 += v16;
      --v14;
    }

    while (v14);
  }
}

Swift::Int CommandsList.hashValue.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandsList.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(v2 + 20);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v9, v5, type metadata accessor for CommandsList.Item);
      v11 = *&v5[v8];
      _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v5, type metadata accessor for CommandsList.Item);
      if (v11 > v7)
      {
        v7 = v11;
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x18D00F6F0](v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommandsList()
{
  v1 = type metadata accessor for CommandsList.Item(0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(*v0 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(v2 + 20);
    v10 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v10, v5, type metadata accessor for CommandsList.Item);
      v12 = *&v5[v9];
      _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v5, type metadata accessor for CommandsList.Item);
      if (v12 > v8)
      {
        v8 = v12;
      }

      v10 += v11;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x18D00F6F0](v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommandsList(uint64_t a1)
{
  v2 = type metadata accessor for CommandsList.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  Hasher.init(_seed:)();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(v2 + 20);
    v10 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v10, v5, type metadata accessor for CommandsList.Item);
      v12 = *&v5[v9];
      _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v5, type metadata accessor for CommandsList.Item);
      if (v12 > v8)
      {
        v8 = v12;
      }

      v10 += v11;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x18D00F6F0](v8);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CommandsList and conformance CommandsList()
{
  result = lazy protocol witness table cache variable for type CommandsList and conformance CommandsList;
  if (!lazy protocol witness table cache variable for type CommandsList and conformance CommandsList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsList, &type metadata for CommandsList, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsList and conformance CommandsList);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for CommandsList.Item.Value(void *a1, void *a2, uint64_t a3)
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
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v10 = type metadata accessor for CommandOperation(0);
    v11 = *(v10 + 20);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = *(a2 + v11);
    v15 = *(a2 + v11 + 8);
    v16 = *(a2 + v11 + 16);
    outlined copy of Text.Storage(v14, v15, v16);
    *v12 = v14;
    *(v12 + 1) = v15;
    v12[16] = v16;
    *(v12 + 3) = *(v13 + 3);
    v17 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v18 = type metadata accessor for UUID();
    v19 = *(*(v18 - 8) + 16);

    v19(&v12[v17], &v13[v17], v18);
    v20 = *(v10 + 24);
    v21 = (a1 + v20);
    v22 = (a2 + v20);
    if (*v22)
    {
      v23 = v22[1];
      *v21 = *v22;
      v21[1] = v23;
    }

    else
    {
      *v21 = *v22;
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(v6 + 64);

  return memcpy(a1, a2, v7);
}

double destroy for CommandsList.Item.Value(uint64_t a1, uint64_t a2)
{
  if (!swift_getEnumCaseMultiPayload())
  {
    v4 = type metadata accessor for CommandOperation(0);
    v5 = a1 + *(v4 + 20);
    outlined consume of Text.Storage(*v5, *(v5 + 8), *(v5 + 16));

    v6 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
    if (*(a1 + *(v4 + 24)))
    {
    }
  }

  return result;
}

_BYTE *initializeWithCopy for CommandsList.Item.Value(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v21 = type metadata accessor for CommandOperation(0);
    v8 = *(v21 + 20);
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = *&a2[v8];
    v12 = *&a2[v8 + 8];
    v13 = a2[v8 + 16];
    outlined copy of Text.Storage(v11, v12, v13);
    *v9 = v11;
    *(v9 + 1) = v12;
    v9[16] = v13;
    *(v9 + 3) = *(v10 + 3);
    v14 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v15 = type metadata accessor for UUID();
    v16 = *(*(v15 - 8) + 16);

    v16(&v9[v14], &v10[v14], v15);
    v17 = *(v21 + 24);
    v18 = &a1[v17];
    v19 = &a2[v17];
    if (*v19)
    {
      v20 = v19[1];
      *v18 = *v19;
      v18[1] = v20;
    }

    else
    {
      *v18 = *v19;
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_BYTE *assignWithCopy for CommandsList.Item.Value(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI12CommandsListV4ItemVWOhTm_0(a1, type metadata accessor for CommandsList.Item.Value);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v21 = type metadata accessor for CommandOperation(0);
    v8 = *(v21 + 20);
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = *&a2[v8];
    v12 = *&a2[v8 + 8];
    v13 = a2[v8 + 16];
    outlined copy of Text.Storage(v11, v12, v13);
    *v9 = v11;
    *(v9 + 1) = v12;
    v9[16] = v13;
    *(v9 + 3) = *(v10 + 3);
    v14 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v15 = type metadata accessor for UUID();
    v16 = *(*(v15 - 8) + 16);

    v16(&v9[v14], &v10[v14], v15);
    v17 = *(v21 + 24);
    v18 = &a1[v17];
    v19 = &a2[v17];
    if (*v19)
    {
      v20 = v19[1];
      *v18 = *v19;
      v18[1] = v20;
    }

    else
    {
      *v18 = *v19;
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

_BYTE *initializeWithTake for CommandsList.Item.Value(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = type metadata accessor for CommandOperation(0);
    v9 = *(v8 + 20);
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = *&a2[v9 + 16];
    *v10 = *&a2[v9];
    *(v10 + 1) = v12;
    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 32))(&v10[v13], &v11[v13], v14);
    *&a1[*(v8 + 24)] = *&a2[*(v8 + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_BYTE *assignWithTake for CommandsList.Item.Value(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI12CommandsListV4ItemVWOhTm_0(a1, type metadata accessor for CommandsList.Item.Value);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = type metadata accessor for CommandOperation(0);
    v9 = *(v8 + 20);
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = *&a2[v9 + 16];
    *v10 = *&a2[v9];
    *(v10 + 1) = v12;
    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 32))(&v10[v13], &v11[v13], v14);
    *&a1[*(v8 + 24)] = *&a2[*(v8 + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t *initializeBufferWithCopyOfBuffer for CommandsList.Item(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for CommandsList.Item.Value(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v23 = type metadata accessor for CommandOperation(0);
      v9 = *(v23 + 20);
      v10 = a1 + v9;
      v11 = a2 + v9;
      v12 = *(a2 + v9);
      v13 = *(a2 + v9 + 8);
      v14 = *(a2 + v9 + 16);
      outlined copy of Text.Storage(v12, v13, v14);
      *v10 = v12;
      *(v10 + 1) = v13;
      v10[16] = v14;
      *(v10 + 3) = *(v11 + 3);
      v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v16 = type metadata accessor for UUID();
      v22 = *(*(v16 - 8) + 16);

      v22(&v10[v15], &v11[v15], v16);
      v17 = *(v23 + 24);
      v18 = (a1 + v17);
      v19 = (a2 + v17);
      if (*v19)
      {
        v20 = v19[1];
        *v18 = *v19;
        v18[1] = v20;
      }

      else
      {
        *v18 = *v19;
      }

      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

_BYTE *assignWithCopy for CommandsList.Item(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI12CommandsListV4ItemVWOhTm_0(a1, type metadata accessor for CommandsList.Item.Value);
    v6 = type metadata accessor for CommandsList.Item.Value(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v21 = type metadata accessor for CommandOperation(0);
      v7 = *(v21 + 20);
      v8 = &a1[v7];
      v9 = &a2[v7];
      v10 = *&a2[v7];
      v11 = *&a2[v7 + 8];
      v12 = a2[v7 + 16];
      outlined copy of Text.Storage(v10, v11, v12);
      *v8 = v10;
      *(v8 + 1) = v11;
      v8[16] = v12;
      *(v8 + 3) = *(v9 + 3);
      v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v14 = type metadata accessor for UUID();
      v20 = *(*(v14 - 8) + 16);

      v20(&v8[v13], &v9[v13], v14);
      v15 = *(v21 + 24);
      v16 = &a1[v15];
      v17 = &a2[v15];
      if (*v17)
      {
        v18 = v17[1];
        *v16 = *v17;
        v16[1] = v18;
      }

      else
      {
        *v16 = *v17;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_BYTE *initializeWithTake for CommandsList.Item(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for CommandsList.Item.Value(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v7 = type metadata accessor for CommandOperation(0);
    v8 = *(v7 + 20);
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = *&a2[v8 + 16];
    *v9 = *&a2[v8];
    *(v9 + 1) = v11;
    v12 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
    *&a1[*(v7 + 24)] = *&a2[*(v7 + 24)];
    swift_storeEnumTagMultiPayload();
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_BYTE *assignWithTake for CommandsList.Item(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI12CommandsListV4ItemVWOhTm_0(a1, type metadata accessor for CommandsList.Item.Value);
    v6 = type metadata accessor for CommandsList.Item.Value(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v7 = type metadata accessor for CommandOperation(0);
      v8 = *(v7 + 20);
      v9 = &a1[v8];
      v10 = &a2[v8];
      v11 = *&a2[v8 + 16];
      *v9 = *&a2[v8];
      *(v9 + 1) = v11;
      v12 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v13 = type metadata accessor for UUID();
      (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
      *&a1[*(v7 + 24)] = *&a2[*(v7 + 24)];
      swift_storeEnumTagMultiPayload();
    }
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

void destroy for NavigationStackProxy(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2 == 2)
  {

    v4 = *(a1 + 48);
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(a1 + 64))
    {
    }

    if (*(a1 + 88))
    {

LABEL_34:
    }
  }

  else if (v2 == 1)
  {
    if (*(a1 + 72))
    {
    }

    if (*(a1 + 128))
    {
    }

    v3 = *(a1 + 232);
    if (*(a1 + 264))
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 176))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 152));
          }

          if (*(a1 + 200) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 144));
        }
      }
    }

    else
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 176))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 152));
          }

          if (*(a1 + 200) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 144));
        }
      }
    }

    if (*(a1 + 384))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
  if (*(a1 + 488) != 1)
  {
    swift_weakDestroy();
  }

  v5 = *(a1 + 544);
  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_43;
    }

    outlined consume of Text.Storage(*(a1 + 520), *(a1 + 528), *(a1 + 536));
  }

  if (*(a1 + 552) != 1)
  {
  }

LABEL_43:
  if (*(a1 + 608))
  {
    outlined consume of Text.Storage(*(a1 + 584), *(a1 + 592), *(a1 + 600));
  }
}

uint64_t initializeWithCopy for NavigationStackProxy(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 264);
  v5 = a2 + 264;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 472);
  if (v6 == 2)
  {
    *(a1 + 24) = *(a2 + 24);
    v12 = *(a2 + 48);

    if (v12 == 1)
    {
      v13 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v13;
      *(a1 + 96) = *(a2 + 96);
      v14 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v14;
LABEL_32:
      *(a1 + 472) = 2;
      goto LABEL_51;
    }

    *(a1 + 32) = *(a2 + 32);
    if (v12)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v12;
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
    }

    v26 = *(a2 + 64);
    *(a1 + 57) = *(a2 + 57);
    if (v26)
    {
      v27 = *(a2 + 72);
      *(a1 + 64) = v26;
      *(a1 + 72) = v27;

      v28 = *(a2 + 88);
      if (v28)
      {
LABEL_28:
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v28;
        *(a1 + 96) = *(a2 + 96);

LABEL_31:
        *(a1 + 97) = *(a2 + 97);
        goto LABEL_32;
      }
    }

    else
    {
      *(a1 + 64) = *(a2 + 64);
      v28 = *(a2 + 88);
      if (v28)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_31;
  }

  if (v6 == 1)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    v7 = *(a2 + 72);
    if (v7)
    {
      *(a1 + 64) = *(a2 + 64);
      v8 = *(a2 + 80);
      v9 = *(a2 + 88);
      *(a1 + 72) = v7;
      *(a1 + 80) = v8;
      v10 = *(a2 + 96);
      v11 = *(a2 + 104);
      *(a1 + 88) = v9;
      *(a1 + 96) = v10;
      *(a1 + 104) = v11;
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      v15 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v15;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
    }

    *(a1 + 116) = *(a2 + 116);
    v16 = *(a2 + 128);
    if (v16)
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = v16;
      *(a1 + 136) = *(a2 + 136);
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
    }

    v17 = *(a2 + 232);
    v71 = v5;
    if (*v5)
    {
      if (v17 == 255)
      {
        v22 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v22;
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 217) = *(a2 + 217);
        v23 = *(a2 + 160);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 160) = v23;
      }

      else if (v17)
      {
        *(a1 + 144) = *(a2 + 144);
        v18 = *(a2 + 176);

        if (v18)
        {
          v19 = *(a2 + 184);
          *(a1 + 176) = v18;
          *(a1 + 184) = v19;
          (**(v18 - 8))(a1 + 152, a2 + 152, v18);
        }

        else
        {
          *(a1 + 152) = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
        }

        v31 = *(a2 + 200);
        if (v31 == 1)
        {
          *(a1 + 192) = *(a2 + 192);
        }

        else
        {
          *(a1 + 192) = *(a2 + 192);
          *(a1 + 200) = v31;
        }

        v32 = *(a2 + 216);
        v33 = *(a2 + 224);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = v32;
        *(a1 + 224) = v33;
        *(a1 + 232) = 1;
      }

      else
      {
        v29 = *(a2 + 168);
        *(a1 + 168) = v29;
        (**(v29 - 8))(a1 + 144, a2 + 144);
        *(a1 + 232) = 0;
      }

      *v4 = 1;
    }

    else
    {
      if (v17 == 255)
      {
        v24 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v24;
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 217) = *(a2 + 217);
        v25 = *(a2 + 160);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 160) = v25;
      }

      else if (v17)
      {
        *(a1 + 144) = *(a2 + 144);
        v20 = *(a2 + 176);

        if (v20)
        {
          v21 = *(a2 + 184);
          *(a1 + 176) = v20;
          *(a1 + 184) = v21;
          (**(v20 - 8))(a1 + 152, a2 + 152, v20);
        }

        else
        {
          *(a1 + 152) = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
        }

        v34 = *(a2 + 200);
        if (v34 == 1)
        {
          *(a1 + 192) = *(a2 + 192);
        }

        else
        {
          *(a1 + 192) = *(a2 + 192);
          *(a1 + 200) = v34;
        }

        v35 = *(a2 + 216);
        v36 = *(a2 + 224);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = v35;
        *(a1 + 224) = v36;
        *(a1 + 232) = 1;
      }

      else
      {
        v30 = *(a2 + 168);
        *(a1 + 168) = v30;
        (**(v30 - 8))(a1 + 144, a2 + 144);
        *(a1 + 232) = 0;
      }

      v37 = *(a2 + 248);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v37;
      *(a1 + 256) = *(a2 + 256);
      *v4 = 0;
    }

    v38 = v4;
    v39 = *(a2 + 280);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = v39;
    v40 = *(a2 + 296);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = v40;
    v41 = *(a2 + 312);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v41;
    v42 = *(a2 + 328);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 328) = v42;
    v43 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v43;
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 376) = *(a2 + 376);
    v70 = v38;
    *(v38 + 113) = *(v5 + 113);
    v44 = *(a2 + 384);

    if (v44)
    {
      v45 = *(a2 + 392);
      v46 = *(a2 + 400);
      *(a1 + 384) = v44;
      *(a1 + 392) = v45;
      v47 = *(a2 + 408);
      v48 = *(a2 + 416);
      *(a1 + 400) = v46;
      *(a1 + 408) = v47;
      v49 = *(a2 + 424);
      v50 = *(a2 + 432);
      *(a1 + 416) = v48;
      *(a1 + 424) = v49;
      v51 = *(a2 + 440);
      *(a1 + 432) = v50;
      *(a1 + 440) = v51;
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 464) = *(a2 + 464);
    }

    else
    {
      v52 = *(a2 + 432);
      *(a1 + 416) = *(a2 + 416);
      *(a1 + 432) = v52;
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 464) = *(a2 + 464);
      v53 = *(a2 + 400);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 400) = v53;
    }

    *(a1 + 472) = 1;
    v4 = v70;
    v5 = v71;
  }

  else
  {
    memcpy((a1 + 24), (a2 + 24), 0x1C1uLL);
  }

LABEL_51:
  if (*(a2 + 488) == 1)
  {
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = *(a2 + 496);
  }

  else
  {
    swift_weakCopyInit();
    v54 = *(a2 + 496);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = v54;
  }

  v55 = *(a2 + 512);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = v55;
  v56 = (a1 + 520);
  v57 = (a2 + 520);
  v58 = *(a2 + 544);

  if (!v58)
  {
    v61 = *(a2 + 536);
    *v56 = *v57;
    *(a1 + 536) = v61;
    goto LABEL_60;
  }

  if (v58 != 1)
  {
    v62 = *(a2 + 520);
    v63 = *(a2 + 528);
    v64 = *(v5 + 272);
    outlined copy of Text.Storage(v62, v63, v64);
    *(a1 + 520) = v62;
    *(a1 + 528) = v63;
    v4[272] = v64;
    *(a1 + 544) = *(a2 + 544);

LABEL_60:
    v65 = *(a2 + 552);
    if (v65 != 1)
    {
    }

    *(a1 + 552) = v65;
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = *(a2 + 576);

    if (!*(a2 + 608))
    {
      goto LABEL_57;
    }

LABEL_63:
    v66 = *(a2 + 584);
    v67 = *(a2 + 592);
    v68 = *(v5 + 336);
    outlined copy of Text.Storage(v66, v67, v68);
    *(a1 + 584) = v66;
    *(a1 + 592) = v67;
    v4[336] = v68;
    *(a1 + 608) = *(a2 + 608);

    return a1;
  }

  v59 = *(a2 + 536);
  *v56 = *v57;
  *(a1 + 536) = v59;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 561) = *(a2 + 561);
  if (*(a2 + 608))
  {
    goto LABEL_63;
  }

LABEL_57:
  v60 = *(a2 + 600);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = v60;
  return a1;
}

uint64_t assignWithCopy for NavigationStackProxy(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 264;
  v5 = *a2;
  v6 = a2 + 264;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  if (a1 == a2)
  {
    goto LABEL_52;
  }

  outlined destroy of NavigationState.Base(a1 + 24);
  v7 = *(a2 + 472);
  if (v7 == 2)
  {
    *(a1 + 24) = *(a2 + 3);
    v9 = *(a2 + 6);

    if (v9 == 1)
    {
      *(a1 + 32) = a2[2];
      v10 = a2[3];
      v11 = a2[4];
      v12 = a2[5];
      *(a1 + 96) = *(a2 + 48);
      *(a1 + 64) = v11;
      *(a1 + 80) = v12;
      *(a1 + 48) = v10;
LABEL_33:
      *(a1 + 472) = 2;
      goto LABEL_52;
    }

    *(a1 + 32) = *(a2 + 4);
    if (*(a2 + 6))
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      v28 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v28;
    }

    *(a1 + 57) = *(a2 + 57);
    v29 = *(a2 + 8);
    if (v29)
    {
      v30 = *(a2 + 9);
      *(a1 + 64) = v29;
      *(a1 + 72) = v30;

      if (*(a2 + 11))
      {
LABEL_29:
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 96);

LABEL_32:
        *(a1 + 97) = *(a2 + 97);
        goto LABEL_33;
      }
    }

    else
    {
      *(a1 + 64) = a2[4];
      if (*(a2 + 11))
      {
        goto LABEL_29;
      }
    }

    v31 = a2[5];
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v31;
    goto LABEL_32;
  }

  if (v7 == 1)
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 32) = *(a2 + 8);
    v8 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v8;
    if (*(a2 + 9))
    {
      *(a1 + 64) = *(a2 + 16);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 104) = *(a2 + 13);
      *(a1 + 112) = *(a2 + 28);
    }

    else
    {
      v13 = a2[4];
      v14 = a2[5];
      v15 = a2[6];
      *(a1 + 112) = *(a2 + 28);
      *(a1 + 80) = v14;
      *(a1 + 96) = v15;
      *(a1 + 64) = v13;
    }

    *(a1 + 116) = *(a2 + 29);
    if (*(a2 + 16))
    {
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 128) = *(a2 + 16);
      *(a1 + 136) = *(a2 + 17);
    }

    else
    {
      v16 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 17);
      *(a1 + 120) = v16;
    }

    v17 = *(a2 + 232);
    if (*v6)
    {
      if (v17 == 255)
      {
        v20 = a2[10];
        *(a1 + 144) = a2[9];
        *(a1 + 160) = v20;
        v21 = a2[11];
        v22 = a2[12];
        v23 = a2[13];
        *(a1 + 217) = *(a2 + 217);
        *(a1 + 192) = v22;
        *(a1 + 208) = v23;
        *(a1 + 176) = v21;
      }

      else if (v17)
      {
        *(a1 + 144) = *(a2 + 18);
        v18 = *(a2 + 22);

        if (v18)
        {
          *(a1 + 176) = v18;
          *(a1 + 184) = *(a2 + 23);
          (**(v18 - 8))(a1 + 152, a2 + 152, v18);
        }

        else
        {
          v34 = *(a2 + 152);
          v35 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 23);
          *(a1 + 168) = v35;
          *(a1 + 152) = v34;
        }

        if (*(a2 + 25) == 1)
        {
          *(a1 + 192) = a2[12];
        }

        else
        {
          *(a1 + 192) = *(a2 + 48);
          *(a1 + 196) = *(a2 + 49);
          *(a1 + 200) = *(a2 + 25);
        }

        *(a1 + 208) = *(a2 + 26);
        v36 = *(a2 + 28);
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = v36;
        *(a1 + 232) = 1;
      }

      else
      {
        v32 = *(a2 + 21);
        *(a1 + 168) = v32;
        *(a1 + 176) = *(a2 + 22);
        (**(v32 - 8))(a1 + 144, a2 + 9);
        *(a1 + 232) = 0;
      }

      *v4 = 1;
    }

    else
    {
      if (v17 == 255)
      {
        v24 = a2[10];
        *(a1 + 144) = a2[9];
        *(a1 + 160) = v24;
        v25 = a2[11];
        v26 = a2[12];
        v27 = a2[13];
        *(a1 + 217) = *(a2 + 217);
        *(a1 + 192) = v26;
        *(a1 + 208) = v27;
        *(a1 + 176) = v25;
      }

      else if (v17)
      {
        *(a1 + 144) = *(a2 + 18);
        v19 = *(a2 + 22);

        if (v19)
        {
          *(a1 + 176) = v19;
          *(a1 + 184) = *(a2 + 23);
          (**(v19 - 8))(a1 + 152, a2 + 152, v19);
        }

        else
        {
          v37 = *(a2 + 152);
          v38 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 23);
          *(a1 + 168) = v38;
          *(a1 + 152) = v37;
        }

        if (*(a2 + 25) == 1)
        {
          *(a1 + 192) = a2[12];
        }

        else
        {
          *(a1 + 192) = *(a2 + 48);
          *(a1 + 196) = *(a2 + 49);
          *(a1 + 200) = *(a2 + 25);
        }

        *(a1 + 208) = *(a2 + 26);
        v39 = *(a2 + 28);
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = v39;
        *(a1 + 232) = 1;
      }

      else
      {
        v33 = *(a2 + 21);
        *(a1 + 168) = v33;
        *(a1 + 176) = *(a2 + 22);
        (**(v33 - 8))(a1 + 144, a2 + 9);
        *(a1 + 232) = 0;
      }

      *(a1 + 240) = *(a2 + 30);
      *(a1 + 248) = *(a2 + 31);
      *(a1 + 256) = *(a2 + 32);
      *v4 = 0;
    }

    *(a1 + 272) = *(a2 + 34);
    *(a1 + 280) = *(a2 + 35);
    *(a1 + 288) = *(a2 + 36);
    *(a1 + 296) = *(a2 + 37);
    *(a1 + 304) = *(a2 + 38);
    *(a1 + 312) = *(a2 + 39);
    *(a1 + 320) = *(a2 + 40);
    *(a1 + 328) = *(a2 + 41);
    v40 = a2[21];
    *(a1 + 352) = *(a2 + 44);
    *(a1 + 336) = v40;
    *(a1 + 360) = *(a2 + 90);
    *(a1 + 364) = *(a2 + 91);
    *(a1 + 368) = *(a2 + 46);
    *(a1 + 376) = *(a2 + 376);
    *(v4 + 113) = *(v6 + 113);
    v41 = *(a2 + 48);

    if (v41)
    {
      *(a1 + 384) = v41;
      *(a1 + 392) = *(a2 + 49);
      *(a1 + 400) = *(a2 + 50);
      *(a1 + 408) = *(a2 + 51);
      *(a1 + 416) = *(a2 + 52);
      *(a1 + 424) = *(a2 + 53);
      *(a1 + 432) = *(a2 + 54);
      *(a1 + 440) = *(a2 + 55);
      v42 = a2[28];
      *(a1 + 464) = *(a2 + 58);
      *(a1 + 448) = v42;
    }

    else
    {
      v43 = a2[25];
      *(a1 + 384) = a2[24];
      *(a1 + 400) = v43;
      v44 = a2[26];
      v45 = a2[27];
      v46 = a2[28];
      *(a1 + 464) = *(a2 + 58);
      *(a1 + 432) = v45;
      *(a1 + 448) = v46;
      *(a1 + 416) = v44;
    }

    *(a1 + 472) = 1;
  }

  else
  {
    memcpy((a1 + 24), a2 + 24, 0x1C1uLL);
  }

LABEL_52:
  v47 = *(a2 + 61);
  if (*(a1 + 488) == 1)
  {
    if (v47 == 1)
    {
      v48 = a2[30];
      *(a1 + 496) = *(a2 + 62);
      *(a1 + 480) = v48;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 488) = *(a2 + 61);
      *(a1 + 496) = *(a2 + 62);
    }
  }

  else if (v47 == 1)
  {
    outlined destroy of NavigationAuthority(a1 + 480);
    v49 = *(a2 + 62);
    *(a1 + 480) = a2[30];
    *(a1 + 496) = v49;
  }

  else
  {
    swift_weakCopyAssign();
    *(a1 + 488) = *(a2 + 61);

    *(a1 + 496) = *(a2 + 62);
  }

  *(a1 + 504) = *(a2 + 63);

  *(a1 + 512) = *(a2 + 64);

  v50 = (a1 + 520);
  v51 = (a2 + 520);
  v52 = *(a1 + 544);
  v53 = *(a2 + 68);
  if (v52 != 1)
  {
    if (v53 == 1)
    {
      outlined destroy of NavigationTitleStorage(a1 + 520);
      v58 = *(a2 + 536);
      v57 = *(a2 + 552);
      v59 = *v51;
      *(a1 + 561) = *(a2 + 561);
      *(a1 + 536) = v58;
      *(a1 + 552) = v57;
      *v50 = v59;
      goto LABEL_86;
    }

    if (v52)
    {
      if (v53)
      {
        v60 = *(a2 + 65);
        v61 = *(a2 + 66);
        v62 = v6[272];
        outlined copy of Text.Storage(v60, v61, v62);
        v63 = *(a1 + 520);
        v64 = *(a1 + 528);
        v65 = *(v4 + 272);
        *(a1 + 520) = v60;
        *(a1 + 528) = v61;
        *(v4 + 272) = v62;
        outlined consume of Text.Storage(v63, v64, v65);
        *(a1 + 544) = *(a2 + 68);
      }

      else
      {
        outlined destroy of Text(a1 + 520);
        v74 = *(a2 + 536);
        *v50 = *v51;
        *(a1 + 536) = v74;
      }
    }

    else if (v53)
    {
      v71 = *(a2 + 65);
      v72 = *(a2 + 66);
      v73 = v6[272];
      outlined copy of Text.Storage(v71, v72, v73);
      *(a1 + 520) = v71;
      *(a1 + 528) = v72;
      *(v4 + 272) = v73;
      *(a1 + 544) = *(a2 + 68);
    }

    else
    {
      v75 = *(a2 + 536);
      *v50 = *v51;
      *(a1 + 536) = v75;
    }

    v76 = (a1 + 552);
    v77 = *(a2 + 69);
    if (*(a1 + 552) == 1)
    {
      if (v77 != 1)
      {
        *v76 = v77;

        goto LABEL_85;
      }

      v78 = 1;
    }

    else
    {
      if (v77 != 1)
      {
        *v76 = v77;

        goto LABEL_85;
      }

      outlined destroy of Transaction(a1 + 552);
      v78 = *(a2 + 69);
    }

    *v76 = v78;
LABEL_85:
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 71);

    *(a1 + 576) = *(a2 + 576);
    goto LABEL_86;
  }

  if (v53)
  {
    if (v53 == 1)
    {
      v54 = *v51;
      v55 = *(a2 + 536);
      v56 = *(a2 + 552);
      *(a1 + 561) = *(a2 + 561);
      *(a1 + 536) = v55;
      *(a1 + 552) = v56;
      *v50 = v54;
      goto LABEL_86;
    }

    v67 = *(a2 + 65);
    v68 = *(a2 + 66);
    v69 = v6[272];
    outlined copy of Text.Storage(v67, v68, v69);
    *(a1 + 520) = v67;
    *(a1 + 528) = v68;
    *(v4 + 272) = v69;
    *(a1 + 544) = *(a2 + 68);
  }

  else
  {
    v66 = *(a2 + 536);
    *v50 = *v51;
    *(a1 + 536) = v66;
  }

  v70 = *(a2 + 69);
  if (v70 != 1)
  {
  }

  *(a1 + 552) = v70;
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 71);
  *(a1 + 576) = *(a2 + 576);

LABEL_86:
  v79 = (a1 + 584);
  v80 = (a2 + 584);
  v81 = *(a2 + 76);
  if (*(a1 + 608))
  {
    if (v81)
    {
      v82 = *(a2 + 73);
      v83 = *(a2 + 74);
      v84 = v6[336];
      outlined copy of Text.Storage(v82, v83, v84);
      v85 = *(a1 + 584);
      v86 = *(a1 + 592);
      v87 = *(v4 + 336);
      *(a1 + 584) = v82;
      *(a1 + 592) = v83;
      *(v4 + 336) = v84;
      outlined consume of Text.Storage(v85, v86, v87);
      *(a1 + 608) = *(a2 + 76);
    }

    else
    {
      outlined destroy of Text(a1 + 584);
      v91 = *(a2 + 600);
      *v79 = *v80;
      *(a1 + 600) = v91;
    }
  }

  else if (v81)
  {
    v88 = *(a2 + 73);
    v89 = *(a2 + 74);
    v90 = v6[336];
    outlined copy of Text.Storage(v88, v89, v90);
    *(a1 + 584) = v88;
    *(a1 + 592) = v89;
    *(v4 + 336) = v90;
    *(a1 + 608) = *(a2 + 76);
  }

  else
  {
    v92 = *(a2 + 600);
    *v79 = *v80;
    *(a1 + 600) = v92;
  }

  return a1;
}