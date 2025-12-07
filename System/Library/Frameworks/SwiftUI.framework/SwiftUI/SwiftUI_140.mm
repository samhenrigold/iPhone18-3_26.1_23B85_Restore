Swift::Void __swiftcall UIKitAccessibilityLinkRotorBridge.update()()
{
  isEscapingClosureAtFileLocation = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v3 = Strong;
  AccessibilityNode.attachment.getter(v24);
  outlined init with copy of AccessibilityProperties(v24, v25);
  outlined destroy of AccessibilityAttachment(v24);
  v4 = v26;

  outlined destroy of AccessibilityProperties(v25);
  LODWORD(v24[0]) = 18;
  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v5 = specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(v4, v24);

  if (!v5)
  {

LABEL_8:
    v8 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
    swift_beginAccess();
    *(isEscapingClosureAtFileLocation + v8) = MEMORY[0x1E69E7CC0];

    return;
  }

  v6 = v5;
  v7 = NSObject.hashValue.getter();

  if (v7 == *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_paragraphHash))
  {
  }

  else
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_paragraphHash) = v7;
    v9 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
    swift_beginAccess();
    v10 = *(isEscapingClosureAtFileLocation + v9);
    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v10 = *(isEscapingClosureAtFileLocation + v9), (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      if (v10 >> 62)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (v10 >> 62)
    {
LABEL_23:
      v22 = __CocoaSet.count.getter();
      if (v22 < 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v12 = v22;
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    specialized Array.replaceSubrange<A>(_:with:)(0, v12);
    while (1)
    {
      swift_endAccess();
      v13 = static NSAttributedStringKey.kitLink.getter();
      v9 = NSAttributedString.range.getter();
      v15 = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = isEscapingClosureAtFileLocation;
      *(v16 + 24) = v3;
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #1 in UIKitAccessibilityLinkRotorBridge.update();
      *(v17 + 24) = v16;
      v24[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v24[5] = v17;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      v24[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v24[3] = &block_descriptor_59;
      v18 = _Block_copy(v24);
      v19 = isEscapingClosureAtFileLocation;
      v20 = v3;

      [v6 enumerateAttribute:v13 inRange:v9 options:v15 usingBlock:{0, v18}];

      _Block_release(v18);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_19:
      v21 = __CocoaSet.count.getter();
      v22 = __CocoaSet.count.getter();
      if (v22 < 0)
      {
        goto LABEL_25;
      }

      v23 = __CocoaSet.count.getter();
      if (v21 < 0 || v23 < v21)
      {
        __break(1u);
        goto LABEL_23;
      }

LABEL_16:
      *(isEscapingClosureAtFileLocation + v9) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5();
    }
  }
}

uint64_t View.accessibilityRotor<A>(_:entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(__n128)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = a7;
  v22 = a4;
  v23 = a5;
  v24 = a9;
  v25 = a10;
  v14 = type metadata accessor for AccessibilityRotorModifier(0, a8, a11, a4);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v18 = a3 & 1;
  v28 = 1;
  v27 = 1;
  outlined copy of Text.Storage(a1, a2, a3 & 1);
  v19 = v22;

  *v17 = a1;
  *(v17 + 1) = a2;
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  *(v17 + 4) = 0;
  v17[40] = 1;
  *(v17 + 6) = 0;
  v17[56] = 1;
  (v23)(v20);

  MEMORY[0x18D00A570](v17, v26, v14, v25);
  return (*(v15 + 8))(v17, v14);
}

uint64_t View.accessibilityRotor<A>(_:entries:)(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a6;
  v10 = type metadata accessor for AccessibilityRotorModifier(0, a5, a7, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = *a1;
  v19 = 1;
  v18 = 1;

  *v13 = v14;
  *(v13 + 8) = xmmword_18CD6C650;
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  v13[40] = 1;
  *(v13 + 6) = 0;
  v13[56] = 1;
  a2(v15);

  MEMORY[0x18D00A570](v13, a4, v10, v17);
  return (*(v11 + 8))(v13, v10);
}

double View.accessibilityRotor<A>(_:entries:entryLabel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a10;
  v14[5] = a5;
  v14[6] = a6;
  v15 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for AccessibilityRotorEntry(255, AssociatedTypeWitness, AssociatedConformanceWitness, v18);

  v28[1] = v15;
  v28[2] = AssociatedTypeWitness;
  v28[3] = v19;
  v28[4] = swift_getWitnessTable(MEMORY[0x1E69E6338], v15);
  v28[5] = AssociatedConformanceWitness;
  v20 = type metadata accessor for ForEach();
  v28[0] = &protocol witness table for AccessibilityRotorEntry<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v20, v28);
  View.accessibilityRotor<A>(_:entries:)(a1, a2, a3 & 1, a4, partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:), a7, v20, a9, a8, WitnessTable);

  return result;
}

double partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)()
{
  return partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)(&unk_1EFFEAA70, partial apply for closure #1 in closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:));
}

{
  return partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)(&unk_1EFFEAA20, partial apply for closure #1 in closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:));
}

double View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *a6;
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a10;
  v16[4] = a11;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v17 = v15 + *MEMORY[0x1E69E77B0];
  v18 = type metadata accessor for Array();
  v19 = *(v17 + 8);
  v21 = type metadata accessor for AccessibilityRotorEntry(255, v19, a11, v20);

  v30[1] = v18;
  v30[2] = v19;
  v30[3] = v21;
  v30[4] = swift_getWitnessTable(MEMORY[0x1E69E6338], v18);
  v30[5] = a11;
  v22 = type metadata accessor for ForEach();
  v30[0] = &protocol witness table for AccessibilityRotorEntry<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v22, v30);
  View.accessibilityRotor<A>(_:entries:)(a1, a2, a3 & 1, a4, partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:), a8, v22, a9, a10, WitnessTable);

  return result;
}

double partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)()
{
  return partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(&unk_1EFFEAA48, partial apply for closure #1 in closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:));
}

{
  return partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(&unk_1EFFEA9F8, partial apply for closure #1 in closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:));
}

double View.accessibilityRotor<A>(_:entries:entryLabel:)(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *a1;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a2;
  v11[6] = a3;
  v12 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for AccessibilityRotorEntry(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);

  v20[1] = v12;
  v20[2] = AssociatedTypeWitness;
  v20[3] = v16;
  v20[4] = swift_getWitnessTable(MEMORY[0x1E69E6338], v12);
  v20[5] = AssociatedConformanceWitness;
  v17 = type metadata accessor for ForEach();
  v20[0] = &protocol witness table for AccessibilityRotorEntry<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v17, v20);
  View.accessibilityRotor<A>(_:entries:)(&v21, partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:), v11, a4, v17, a5, WitnessTable);

  return result;
}

double closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v30 = a1;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a2;
  v13 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for AccessibilityRotorEntry(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6338], v13);
  ForEach<>.init(_:content:)(&v30, a7, v12, v13, AssociatedTypeWitness, v17, WitnessTable, &protocol witness table for AccessibilityRotorEntry<A>, a5);
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  *&v30 = v13;
  *(&v30 + 1) = AssociatedTypeWitness;
  v31 = v17;
  *&v32 = WitnessTable;
  *(&v32 + 1) = AssociatedConformanceWitness;
  v19 = type metadata accessor for ForEach();
  v21 = &protocol witness table for AccessibilityRotorEntry<A>;
  swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v19, &v21);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)();

  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)@<X0>(void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v20[2] = a4;
  v20[0] = *(*a2 + *MEMORY[0x1E69E77B0]);
  v20[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v20 - v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for AccessibilityRotorEntry(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  swift_getAtKeyPath();
  v17 = v20[4];
  v16 = v20[5];
  dispatch thunk of Identifiable.id.getter();
  AccessibilityRotorEntry.init(_:id:textRange:prepare:)(v17, v16, 0, MEMORY[0x1E69E7CC0], v6, 0, 0, 1, v12, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)();
  v18 = *(v10 + 8);
  v18(v12, v9);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)();
  return (v18)(v15, v9);
}

double View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a3;
  v24 = *a1;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v15 = v13 + *MEMORY[0x1E69E77B0];
  v16 = type metadata accessor for Array();
  v17 = *(v15 + 8);
  v19 = type metadata accessor for AccessibilityRotorEntry(255, v17, a7, v18);

  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v19;
  v23[4] = swift_getWitnessTable(MEMORY[0x1E69E6338], v16);
  v23[5] = a7;
  v20 = type metadata accessor for ForEach();
  v23[0] = &protocol witness table for AccessibilityRotorEntry<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v20, v23);
  View.accessibilityRotor<A>(_:entries:)(&v24, partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:), v14, a5, v20, a6, WitnessTable);

  return result;
}

double closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a2;
  *&v33 = a1;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a3;
  v15[6] = a2;
  v16 = v14 + *MEMORY[0x1E69E77B0];
  v17 = type metadata accessor for Array();
  v18 = *(v16 + 8);
  v20 = type metadata accessor for AccessibilityRotorEntry(0, v18, a6, v19);
  swift_retain_n();

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6338], v17);
  ForEach<>.init(_:id:content:)(&v33, a2, a8, v15, v17, v20, WitnessTable, a6);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  *&v33 = v17;
  *(&v33 + 1) = v18;
  v34 = v20;
  *&v35 = WitnessTable;
  *(&v35 + 1) = a6;
  v22 = type metadata accessor for ForEach();
  v24 = &protocol witness table for AccessibilityRotorEntry<A>;
  swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v22, &v24, &protocol witness table for AccessibilityRotorEntry<A>);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)();

  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t objectdestroy_2Tm_3()
{

  return swift_deallocObject();
}

uint64_t closure #1 in closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)@<X0>(uint64_t a1@<X0>, void *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v22 = a4;
  v23 = a5;
  v5 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - v6;
  v10 = type metadata accessor for AccessibilityRotorEntry(0, v5, v9, v8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  swift_getAtKeyPath();
  v18 = v24;
  v17 = v25;
  swift_getAtKeyPath();
  AccessibilityRotorEntry.init(_:id:textRange:prepare:)(v18, v17, 0, MEMORY[0x1E69E7CC0], v7, 0, 0, 1, v13, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, v5, v22);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)();
  return (v19)(v16, v10);
}

double View.accessibilityRotor(_:textRanges:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(swift_allocObject() + 16) = a5;
  type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>(0);
  v15 = v14;
  v16 = lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>();

  View.accessibilityRotor<A>(_:entries:)(a1, a2, a3 & 1, a4, partial apply for closure #1 in View.accessibilityRotor(_:textRanges:), a6, v15, a8, a7, v16);

  return result;
}

double partial apply for closure #1 in View.accessibilityRotor(_:textRanges:)@<D0>(uint64_t a1@<X8>)
{
  *&result = closure #1 in View.accessibilityRotor(_:textRanges:)(*(v1 + 16), a1).n128_u64[0];
  return result;
}

{
  *&result = closure #1 in View.accessibilityRotor(_:textRanges:)(*(v1 + 16), a1).n128_u64[0];
  return result;
}

void type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>)
  {
    _sSnySiGMaTm_2(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    _sSnySiGMaTm_2(255, &lazy cache variable for type metadata for AccessibilityRotorEntry<Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E69E73F0], type metadata accessor for AccessibilityRotorEntry);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>(255);
    v4[0] = &protocol witness table for AccessibilityRotorEntry<A>;
    result = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

double View.accessibilityRotor(_:textRanges:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>(0);
  v9 = v8;
  v10 = lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>();

  View.accessibilityRotor<A>(_:entries:)(&v12, partial apply for closure #1 in View.accessibilityRotor(_:textRanges:), v7, a3, v9, a4, v10);

  return result;
}

__n128 closure #1 in View.accessibilityRotor(_:textRanges:)@<Q0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for AccessibilityRotorEntry<Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E69E73F0], type metadata accessor for AccessibilityRotorEntry);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();

  ForEach.init(_:idGenerator:content:)();
  result = v9;
  *a4 = v7;
  *(a4 + 16) = v8;
  *(a4 + 32) = v9;
  *(a4 + 48) = v10;
  return result;
}

unint64_t *closure #1 in closure #1 in View.accessibilityRotor(_:textRanges:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = *(a2 + 16 * v3 + 32);
    *(a3 + 48) = 1;
    *(a3 + 56) = 0;
    *(a3 + 64) = 2;
    *(a3 + 72) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(a3 + 80) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t View.accessibilityRotor<A>(_:entries:)@<X0>(void (*a5)(__n128)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{

  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  View.accessibilityRotor<A>(_:entries:)(v14, v15, v17 & 1, v19, a5, a7, a8, a9, a10, a11);
  outlined consume of Text.Storage(v14, v16, v18 & 1);
}

uint64_t View.accessibilityRotor<A, B>(_:entries:)@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = a6;
  v14 = MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 16))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  View.accessibilityRotor<A>(_:entries:)(v17, v18, v20 & 1, v22, a2, a4, v25, a9, a7, a10);
  outlined consume of Text.Storage(v17, v19, v21 & 1);
}

uint64_t View.accessibilityRotor<A>(_:entries:entryLabel:)@<X0>(uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  View.accessibilityRotor<A>(_:entries:entryLabel:)(v15, v16, v18 & 1, v20, a5, a6, a7, a8, a9, a10);
  outlined consume of Text.Storage(v15, v17, v19 & 1);
}

uint64_t View.accessibilityRotor<A, B>(_:entries:entryLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  View.accessibilityRotor<A>(_:entries:entryLabel:)(v18, v19, v21 & 1, v23, a2, a3, a4, a6, a9, a8);
  outlined consume of Text.Storage(v18, v20, v22 & 1);
}

uint64_t View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)@<X0>(uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(v15, v16, v18 & 1, v20, a5, a6, a7, a8, a9, a10, a11);
  outlined consume of Text.Storage(v15, v17, v19 & 1);
}

uint64_t View.accessibilityRotor<A, B, C>(_:entries:entryID:entryLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a5;
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(v18, v19, v21 & 1, v23, a2, a3, a4, v26, a9, a7, a10);
  outlined consume of Text.Storage(v18, v20, v22 & 1);
}

uint64_t View.accessibilityRotor(_:textRanges:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  View.accessibilityRotor(_:textRanges:)(v12, v13, v15 & 1, v17, a5, a6, a7, a8);
  outlined consume of Text.Storage(v12, v14, v16 & 1);
}

uint64_t View.accessibilityRotor<A>(_:textRanges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  View.accessibilityRotor(_:textRanges:)(v14, v15, v17 & 1, v19, a2, a3, a5, a7);
  outlined consume of Text.Storage(v14, v16, v18 & 1);
}

uint64_t AccessibilityRotorInfo.Designation.uniqueID(in:)(__int128 *a1)
{
  if ((*(v1 + 16) & 0x8000000000000000) != 0)
  {
    v4 = 0;
    MEMORY[0x18D00C9B0](0x5F6D6574737973, 0xE700000000000000);
    _print_unlocked<A, B>(_:_:)();
  }

  else
  {
    v2 = Text.resolveString(in:with:idiom:)();
    v4 = 0x5F72657375;
    MEMORY[0x18D00C9B0](v2);
  }

  return v4;
}

uint64_t AccessibilityRotorModifier.initialAttachment(for:)()
{
  _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRotorInfo>, &type metadata for AccessibilityRotorInfo, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  v4 = v1[1];
  v9[0] = *v1;
  v3 = v9[0];
  v9[1] = v4;
  v10[0] = v1[2];
  v5 = v10[0];
  *(v10 + 9) = *(v1 + 41);
  v6 = *(v10 + 9);
  v2[1] = xmmword_18CD63400;
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = v5;
  *(v2 + 73) = v6;
  outlined init with copy of AccessibilityRotorInfo(v9, v8);
  lazy protocol witness table accessor for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey();
  AccessibilityProperties.init<A>(_:_:)();
  static AccessibilityAttachment.properties(_:)();
  return outlined destroy of AccessibilityProperties(v8);
}

uint64_t static AccessibilityRotorModifier.makeAccessibilityViewModifier(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[3];
  v60 = a2[2];
  v61 = v11;
  v62 = a2[4];
  v63 = *(a2 + 20);
  v12 = a2[1];
  v58 = *a2;
  v59 = v12;
  *&v53 = v11;
  DWORD2(v53) = DWORD2(v11);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return (a3)();
  }

  *&v44[32] = v60;
  *&v44[48] = v61;
  *&v44[64] = v62;
  *v44 = v58;
  *&v44[80] = v63;
  *&v44[16] = v59;
  LOBYTE(v47[0]) = 1;
  outlined init with copy of _ViewInputs(&v58, &v53);
  PropertyList.subscript.setter();
  v45[2] = *&v44[32];
  v45[3] = *&v44[48];
  v45[4] = *&v44[64];
  v46 = *&v44[80];
  v45[0] = *v44;
  v45[1] = *&v44[16];
  v55[0] = *&v44[32];
  v55[1] = *&v44[48];
  v56 = *&v44[64];
  v57 = *&v44[80];
  v53 = *v44;
  v54 = *&v44[16];
  v13 = outlined init with copy of _ViewInputs(v45, v47);
  a3(v13, &v53);
  v47[2] = v55[0];
  v47[3] = v55[1];
  v47[4] = v56;
  v48 = v57;
  v47[0] = v53;
  v47[1] = v54;
  outlined destroy of _ViewInputs(v47);
  v49[0] = *v44;
  v49[1] = *&v44[16];
  v49[2] = *&v44[32];
  v50 = *v44;
  v51 = *&v44[16];
  *v52 = *&v44[32];
  *&v52[16] = *&v44[48];
  *&v52[24] = *&v44[56];
  LODWORD(v39) = v10;
  outlined init with copy of _GraphInputs(v49, &v53);
  type metadata accessor for AccessibilityRotorModifier(255, a4, a5, v14);
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v53 = v50;
  v54 = v51;
  v55[0] = *v52;
  *(v55 + 12) = *&v52[12];
  (*(a5 + 24))(&v39, v37, &v53, a4, a5);
  v15 = v10;
  v16 = v39;
  v17 = AGMakeUniqueID();
  LODWORD(v53) = v15;
  _GraphValue.value.getter();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *(&v53 + 1) = v17;
  LODWORD(v53) = OffsetAttribute2;
  LODWORD(v54) = v16;
  v20 = type metadata accessor for AccessibilityRotorModifier.Attachment(0, a4, a5, v19);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityRotorModifier<A>.Attachment, v20);
  _GraphValue.init<A>(_:)();
  v55[0] = *&v44[32];
  v55[1] = *&v44[48];
  v56 = *&v44[64];
  v57 = *&v44[80];
  v53 = *v44;
  v54 = *&v44[16];
  _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(v39, &v53, *a6, a6[1]);
  PreferencesOutputs.subscript.setter();
  v41 = *&v44[24];
  v42 = *&v44[40];
  v43[0] = *&v44[56];
  *(v43 + 12) = *&v44[68];
  v40 = *&v44[8];
  v39 = *v44;
  v21 = _ViewInputs.accessibilityEnabled.getter();
  v22 = *(a6 + 2);
  *&v37[0] = *a6;
  DWORD2(v37[0]) = v22;
  v23 = PreferencesOutputs.subscript.getter();
  v24 = *MEMORY[0x1E698D3F8];
  v36 = a6;
  v25 = a5;
  if ((v23 & 0x100000000) != 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v23;
  }

  type metadata accessor for AccessibilityRelationshipScope();
  lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope();
  v27 = PropertyList.subscript.getter();
  v28 = *&v37[0];
  *&v37[0] = __PAIR64__(v26, v21);
  *(&v37[0] + 1) = v28;
  MEMORY[0x1EEE9AC00](v27);
  v34 = type metadata accessor for AccessibilityRotorModifier.RelationshipScope(0, a4, v25, v29);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRotorModifier<A>.RelationshipScope, v34);
  _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<AccessibilityNodeList>, &type metadata for AccessibilityNodeList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v37, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_31, &v33, v34, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);
  LOBYTE(v37[0]) = 0;
  PreferencesOutputs.subscript.setter();

  outlined destroy of _AccessibilityRotorEntryInputs(&v50);
  v37[2] = *&v44[32];
  v37[3] = *&v44[48];
  v37[4] = *&v44[64];
  v38 = *&v44[80];
  v37[0] = *v44;
  v37[1] = *&v44[16];
  return outlined destroy of _ViewInputs(v37);
}

void AccessibilityRotorModifier.RelationshipScope.nodeList.getter(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a2 = v3;
  a2[1] = v4;
}

void AccessibilityRotorModifier.RelationshipScope.value.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*AGGraphGetValue() != 1 || (AccessibilityRotorModifier.RelationshipScope.nodeList.getter(a1, v12), (v6 = v12[0]) == 0))
  {
    v7 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v7 = v12[1];
  if (!(v12[0] >> 62))
  {
    v8 = *((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    *a3 = v6;
    a3[1] = v7;
    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v8 >= 1)
  {

    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18D00E9C0](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      *&v10[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope] = a2;
    }

    while (v8 != v9);

    goto LABEL_13;
  }

  __break(1u);
}

void *AccessibilityRotorModifier.Attachment.value.getter@<X0>(uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  Value = AGGraphGetValue();
  v8 = *(Value + 16);
  v7 = *(Value + 32);
  v9 = *(Value + 41);
  *v21 = *Value;
  *&v21[16] = v8;
  *&v21[41] = v9;
  *&v21[32] = v7;
  v10 = *(Value + 16);
  v26 = *Value;
  v27 = v10;
  v11 = *(Value + 41);
  *(v24 + 3) = *(Value + 44);
  v24[0] = v11;
  outlined init with copy of AccessibilityRotorInfo(v21, v22);
  v12 = AGCreateWeakAttribute();
  v25 = 0;
  v23 = 0;
  _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRotorInfo>, &type metadata for AccessibilityRotorInfo, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  v15 = v26;
  v14 = v27;
  v28[0] = v26;
  v28[1] = v27;
  *v29 = v12;
  v16 = v25;
  v29[8] = v25;
  *&v29[12] = *(v24 + 3);
  *&v29[9] = v24[0];
  *&v29[16] = a2;
  v17 = v23;
  v29[24] = v23;
  *(v13 + 73) = *&v29[9];
  v18 = *v29;
  v13[3] = v14;
  v13[4] = v18;
  v13[1] = xmmword_18CD63400;
  v13[2] = v15;
  *&v30[0] = v13;
  outlined init with copy of AccessibilityRotorInfo(v28, v21);
  lazy protocol witness table accessor for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey();
  AccessibilityProperties.init<A>(_:_:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v22);
  v30[0] = v26;
  v30[1] = v27;
  v31 = v12;
  v32 = v16;
  *v33 = v24[0];
  *&v33[3] = *(v24 + 3);
  v34 = a2;
  v35 = v17;
  outlined destroy of AccessibilityRotorInfo(v30);
  _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v19 = swift_allocObject();
  result = memcpy((v19 + 16), v21, 0x128uLL);
  *a4 = v19;
  a4[1] = 0;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityRotorModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRotorModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for AccessibilityRotorModifier<ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityRotorModifier<ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>>)
  {
    type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>();
    v6 = type metadata accessor for AccessibilityRotorModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AccessibilityRotorModifier<ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccessibilitySystemRotor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilitySystemRotor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityRotorModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for AccessibilityRotorModifier(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-58 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v15 = outlined copy of Text.Suffix.Storage(*a2, v11, v12, v13);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    (*(v5 + 16))((a1 + v6 + 57) & ~v6, (a2 + v6 + 57) & ~v6, v4, v15);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t destroy for AccessibilityRotorModifier(uint64_t *a1, uint64_t a2)
{
  outlined consume of Text.Suffix.Storage(*a1, a1[1], a1[2]);
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 57) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for AccessibilityRotorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = outlined copy of Text.Suffix.Storage(*a2, v7, v8, v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 16))((*(v11 + 80) + 57 + a1) & ~*(v11 + 80), (*(v11 + 80) + 57 + a2) & ~*(v11 + 80), v10);
  return a1;
}

uint64_t assignWithCopy for AccessibilityRotorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Text.Suffix.Storage(v10, v11, v12);
  v13 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v13;
  v14 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v14;
  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 24))((*(v15 + 80) + 57 + a1) & ~*(v15 + 80), (*(v15 + 80) + 57 + a2) & ~*(v15 + 80));
  return a1;
}

_OWORD *initializeWithTake for AccessibilityRotorModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  *(a1 + 41) = *(a2 + 41);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 32))((a1 + *(v5 + 80) + 57) & ~*(v5 + 80), (a2 + *(v5 + 80) + 57) & ~*(v5 + 80));
  return a1;
}

uint64_t assignWithTake for AccessibilityRotorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  outlined consume of Text.Suffix.Storage(v6, v7, v8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 57 + a1) & ~*(v10 + 80), (*(v10 + 80) + 57 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityRotorModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 57) & ~v6);
      }

      if ((*(a1 + 2) >> 1) > 0x80000000)
      {
        return -(*(a1 + 2) >> 1);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for AccessibilityRotorModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 57) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 57] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[56] = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 2 * -a2;
    *(a1 + 3) = 0;
  }
}

uint64_t instantiation function for generic protocol witness table for AccessibilityRotorModifier<A>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRotorModifier<A>);
  result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRotorModifier<A>, a2);
  *(a1 + 16) = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AccessibilitySystemRotor.RawValue@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AccessibilitySystemRotor.RawValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilitySystemRotor.RawValue and conformance AccessibilitySystemRotor.RawValue()
{
  result = lazy protocol witness table cache variable for type AccessibilitySystemRotor.RawValue and conformance AccessibilitySystemRotor.RawValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySystemRotor.RawValue and conformance AccessibilitySystemRotor.RawValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilitySystemRotor.RawValue, &type metadata for AccessibilitySystemRotor.RawValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySystemRotor.RawValue and conformance AccessibilitySystemRotor.RawValue);
  }

  return result;
}

void UIKitAccessibilityLinkRotorBridge.search(parameters:)(unint64_t a1, uint64_t a2)
{
  v6 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

LABEL_3:
  if (!a1)
  {
    goto LABEL_56;
  }

  v3 = *(v2 + v6);
  if (v3 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_56:
    while (1)
    {
LABEL_15:
      if (a2)
      {
        a1 = 0;
      }

      else
      {
        v12 = *(v2 + v6);
        if (v12 >> 62)
        {
          v19 = __CocoaSet.count.getter();
          a1 = v19 - 1;
          if (__OFSUB__(v19, 1))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            if (a2 < __CocoaSet.count.getter())
            {
              goto LABEL_33;
            }

LABEL_50:

            return;
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          a1 = v13 - 1;
          if (__OFSUB__(v13, 1))
          {
            goto LABEL_48;
          }
        }
      }

      swift_beginAccess();
      v14 = *(v2 + v6);
      if ((v14 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (a1 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v14 + 8 * a1 + 32);
LABEL_23:
        swift_endAccess();
        return;
      }

      __break(1u);
LABEL_44:
      v8 = __CocoaSet.count.getter();
      if (v8)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x18D00E9C0](a1);
    goto LABEL_23;
  }

LABEL_6:
  a1 = a1;

  v9 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x18D00E9C0](v9, v3);
      swift_unknownObjectRelease();
      if (v10 == a1)
      {
        break;
      }

      goto LABEL_12;
    }

    if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    if (*(v3 + 8 * v9 + 32) == a1)
    {
      break;
    }

LABEL_12:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_3;
      }

      return;
    }

    ++v9;
    if (v11 == v8)
    {

      goto LABEL_15;
    }
  }

  if (a2)
  {
    a2 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  a2 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
    goto LABEL_52;
  }

LABEL_30:
  if (a2 < 0)
  {
    goto LABEL_50;
  }

  v16 = *(v2 + v6);
  if (v16 >> 62)
  {
    goto LABEL_49;
  }

  if (a2 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_33:
  swift_beginAccess();
  v17 = *(v2 + v6);
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_52:
    MEMORY[0x18D00E9C0](a2);
LABEL_36:
    swift_endAccess();
  }

  else
  {
    if (a2 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 8 * a2 + 32);
      goto LABEL_36;
    }

    __break(1u);
  }
}

uint64_t closure #1 in UIKitAccessibilityLinkRotorBridge.update()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, v33);
  if (!v34)
  {
    outlined destroy of Any?(v33);
    (*(v15 + 56))(v13, 1, 1, v14);
    return outlined destroy of URL?(v13);
  }

  v18 = swift_dynamicCast();
  (*(v15 + 56))(v13, v18 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of URL?(v13);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = URL.absoluteString.getter();
  v30 = v20;
  v31 = v19;
  v21 = a2;
  v22 = type metadata accessor for UIKitAccessibilityLinkRotorBridge.LinkElement();
  v23 = objc_allocWithZone(v22);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v24 = &v23[OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_link];
  v25 = v30;
  *v24 = v31;
  v24[1] = v25;
  v26 = &v23[OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_range];
  *v26 = v21;
  v26[1] = a3;
  v32.receiver = v23;
  v32.super_class = v22;
  objc_msgSendSuper2(&v32, sel_initWithAccessibilityContainer_, a6);
  v27 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
  v28 = swift_beginAccess();
  MEMORY[0x18D00CC30](v28);
  if (*((*(a5 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return (*(v15 + 8))(v17, v14);
}

unint64_t specialized AccessibilitySystemRotor.RawValue.init(rawValue:)(unint64_t result)
{
  if (result >= 0x12)
  {
    return 18;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope()
{
  result = lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope;
  if (!lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope)
  {
    v3 = type metadata accessor for AccessibilityRelationshipScope();
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRelationshipScope, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope);
  }

  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  type metadata accessor for URL?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for AccessibilityRotorInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for AccessibilityRotorInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of Text.Suffix.Storage(v8, v9, v10);
  v11 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v11;
  v12 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v12;
  return a1;
}

uint64_t assignWithTake for AccessibilityRotorInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  outlined consume of Text.Suffix.Storage(v4, v5, v6);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityRotorInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityRotorInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for AccessibilityRotorInfo.Designation(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of Text.Suffix.Storage(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for AccessibilityRotorInfo.Designation(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of Text.Suffix.Storage(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of Text.Suffix.Storage(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for AccessibilityRotorInfo.Designation(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v6;
  outlined consume of Text.Suffix.Storage(v3, v5, v4);
  return a1;
}

uint64_t __designTimeBoolean<A>(_:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *)@<X7>, uint64_t a7@<X8>)
{
  v30 = a3;
  v31 = a6;
  v32 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Optional();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  if (one-time initialization token for __designTimeValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  rawValue = __designTimeValues._rawValue;
  if (*(__designTimeValues._rawValue + 2) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v21 & 1) != 0))
  {
    outlined init with copy of Any(rawValue[7] + 32 * v20, v33);
  }

  else
  {
    memset(v33, 0, sizeof(v33));
  }

  swift_endAccess();
  _sypSgMaTm_6(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v22 = swift_dynamicCast();
  v23 = (*(*(AssociatedTypeWitness - 8) + 56))(v15, v22 ^ 1u, 1, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v23);
  *(&v28 - 4) = a4;
  *(&v28 - 3) = a5;
  *(&v28 - 2) = a4;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(v31, (&v28 - 6), MEMORY[0x1E69E73E0], a4, v24, v18);
  (*(v13 + 8))(v15, v12);
  v25 = *(a4 - 8);
  v26 = *(v25 + 48);
  if (v26(v18, 1, a4) != 1)
  {
    return (*(v25 + 32))(v32, v18, a4);
  }

  (*(v25 + 16))(v32, v30, a4);
  result = (v26)(v18, 1, a4);
  if (result != 1)
  {
    return (*(v28 + 8))(v18, v29);
  }

  return result;
}

__n128 __designTimeString(_:fallback:)@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  outlined init with copy of OSLogMessage(a1, v6);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t __designTimeString<A>(_:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  return __designTimeBoolean<A>(_:fallback:)(a1, a2, a3, a4, a5, partial apply for implicit closure #1 in __designTimeString<A>(_:fallback:), a6);
}

{
  return __designTimeBoolean<A>(_:fallback:)(a1, a2, a3, a4, a5, partial apply for implicit closure #1 in __designTimeString<A>(_:fallback:), a6);
}

uint64_t implicit closure #1 in __designTimeBoolean<A>(_:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  return a8(v15, a3, a4);
}

Swift::Void __swiftcall __designTimeApplyIncrementalValues(_:)(Swift::OpaquePointer a1)
{
  v36 = *(a1._rawValue + 2);
  if (!v36)
  {
    return;
  }

  v1 = 0;
  v37 = a1._rawValue + 32;
LABEL_4:
  v2 = *&v37[8 * v1];
  v38 = v1 + 1;
  v39 = v2;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v12 = v8;
LABEL_20:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v39 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    outlined init with copy of Any(*(v39 + 56) + 32 * v16, v41);
    *&v42 = v19;
    *(&v42 + 1) = v18;
    outlined init with take of Any(v41, &v43);

LABEL_21:
    v45 = v42;
    v46[0] = v43;
    v46[1] = v44;
    v20 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {

      v1 = v38;
      if (v38 == v36)
      {
        return;
      }

      goto LABEL_4;
    }

    v21 = v45;
    outlined init with take of Any(v46, &v42);
    if (one-time initialization token for __designTimeValues != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    outlined init with copy of Any(&v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = __designTimeValues._rawValue;
    v40 = __designTimeValues._rawValue;
    __designTimeValues._rawValue = 0x8000000000000000;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
    v26 = rawValue[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_37;
    }

    v30 = v25;
    if (rawValue[3] < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      if (v30)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v35 = v24;
    specialized _NativeDictionary.copy()();
    v24 = v35;
    if (v30)
    {
LABEL_8:
      v9 = v24;

      v10 = v40;
      v11 = (v40[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_1(v11);
      outlined init with take of Any(v41, v11);
      goto LABEL_9;
    }

LABEL_30:
    v10 = v40;
    v40[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v40[6] + 16 * v24);
    *v32 = v21;
    v32[1] = v20;
    outlined init with take of Any(v41, (v40[7] + 32 * v24));
    v33 = v40[2];
    v28 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v28)
    {
      goto LABEL_38;
    }

    v40[2] = v34;
LABEL_9:
    __designTimeValues._rawValue = v10;

    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  if (v7 <= v8 + 1)
  {
    v13 = v8 + 1;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      v6 = 0;
      v43 = 0u;
      v44 = 0u;
      v8 = v14;
      v42 = 0u;
      goto LABEL_21;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = (a4[7] + (result << 6));
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v6 = a3[3];
  v4[2] = a3[2];
  v4[3] = v6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = (a4[7] + 80 * result);
  v5 = a3[4];
  v4[3] = a3[3];
  v4[4] = v5;
  v6 = a3[2];
  v4[1] = a3[1];
  v4[2] = v6;
  *v4 = *a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = outlined init with take of HashableWeakBox<UIViewController>(a2, a4[6] + 16 * a1);
  *(a4[7] + a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, __int16 a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 2 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v5 = (a3[7] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ToolbarContentDescription(0);
  result = outlined init with take of HashableCommandGroupPlacementWrapper(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ToolbarContentDescription);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 20) = WORD2(a5);
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 4 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a5[7] + 16 * result;
  *v7 = a3;
  *(v7 + 8) = a4 & 1;
  *(v7 + 9) = HIBYTE(a4);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = (a4[6] + (a1 << 6));
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  v7 = a2[3];
  v5[2] = a2[2];
  v5[3] = v7;
  result = outlined init with take of UpdateViewDestinationRequest(a3, a4[7] + 192 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = (a4[6] + (a1 << 7));
  v6 = a2[5];
  v5[4] = a2[4];
  v5[5] = v6;
  v5[6] = a2[6];
  *(v5 + 105) = *(a2 + 105);
  v7 = a2[1];
  *v5 = *a2;
  v5[1] = v7;
  v8 = a2[3];
  v5[2] = a2[2];
  v5[3] = v8;
  result = _s7SwiftUI7WeakBoxVyyXlGWObTm_0(a3, a4[7] + 8 * a1, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78], type metadata accessor for Anchor<CGRect?>);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 288 * a1), __src, 0x119uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = (a7[7] + 32 * result);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  a9[(result >> 6) + 8] |= 1 << result;
  v9 = a9[6] + 32 * result;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = (a9[7] + 24 * result);
  *v10 = a6;
  v10[1] = a7;
  v10[2] = a8;
  v11 = a9[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a9[2] = v13;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6 & 1;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = a8[6] + 24 * result;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4;
  v9 = (a8[7] + 24 * result);
  *v9 = a5;
  v9[1] = a6;
  v9[2] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in __designTimeString<A>(_:fallback:)(uint64_t a1, uint64_t a2)
{
  return implicit closure #1 in __designTimeBoolean<A>(_:fallback:)(a1, v2[4], v2[2], v2[3], a2, MEMORY[0x1E69E7088], MEMORY[0x1E69E5C08], MEMORY[0x1E69E7080]);
}

{
  return implicit closure #1 in __designTimeBoolean<A>(_:fallback:)(a1, v2[4], v2[2], v2[3], a2, MEMORY[0x1E69E7228], MEMORY[0x1E69E5C38], MEMORY[0x1E69E7220]);
}

uint64_t outlined init with take of HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, [TextFormattingControl]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, [TextFormattingControl]>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    _sypSgMaTm_6(255, &lazy cache variable for type metadata for [TextFormattingControl], &type metadata for TextFormattingControl, MEMORY[0x1E69E62F8]);
    _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, [TextFormattingControl]>);
    }
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedFormStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedFormStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t View.formStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormStyleWritingModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

unint64_t instantiation function for generic protocol witness table for FormStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for FormStyleConfiguration.Footer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FormStyleModifier<AutomaticFormStyle> and conformance FormStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type FormStyleModifier<AutomaticFormStyle> and conformance FormStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type FormStyleModifier<AutomaticFormStyle> and conformance FormStyleModifier<A>)
  {
    type metadata accessor for FormStyleModifier<AutomaticFormStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for FormStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleModifier<AutomaticFormStyle> and conformance FormStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for FormStyleModifier<AutomaticFormStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FormStyleModifier<AutomaticFormStyle>)
  {
    v2 = lazy protocol witness table accessor for type AutomaticFormStyle and conformance AutomaticFormStyle();
    v4 = type metadata accessor for FormStyleModifier(a1, &type metadata for AutomaticFormStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for FormStyleModifier<AutomaticFormStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticFormStyle and conformance AutomaticFormStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticFormStyle and conformance AutomaticFormStyle;
  if (!lazy protocol witness table cache variable for type AutomaticFormStyle and conformance AutomaticFormStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticFormStyle, &type metadata for AutomaticFormStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticFormStyle and conformance AutomaticFormStyle);
  }

  return result;
}

uint64_t FormStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FormStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FormStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FormStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FormStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance AnyFormStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t FormStyleWritingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormStyleModifier(0, v4, *(v8 + 24), v9);
  v27 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  swift_getWitnessTable(protocol conformance descriptor for FormStyleWritingModifier<A>, a2, v11);
  v14 = type metadata accessor for _ViewModifier_Content();
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v26 - v21;
  (*(v5 + 16))(v7, v28, v4, v20);
  (*(v5 + 32))(v13, v7, v4);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v14);
  MEMORY[0x18D00A570](v13, v14, v10, WitnessTable);
  (*(v27 + 8))(v13, v10);
  v30[0] = WitnessTable;
  v30[1] = &protocol witness table for FormStyleModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v15, v30);
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v16 + 8);
  v24(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v22, v15);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResetFormEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetFormEnvironmentModifier(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

unint64_t lazy protocol witness table accessor for type Form<FormStyleConfiguration.Content> and conformance Form<A>()
{
  result = lazy protocol witness table cache variable for type Form<FormStyleConfiguration.Content> and conformance Form<A>;
  if (!lazy protocol witness table cache variable for type Form<FormStyleConfiguration.Content> and conformance Form<A>)
  {
    type metadata accessor for Form<FormStyleConfiguration.Content>(255, &lazy cache variable for type metadata for Form<FormStyleConfiguration.Content>, &type metadata for FormStyleConfiguration.Content, &protocol witness table for FormStyleConfiguration.Content, type metadata accessor for Form);
    result = swift_getWitnessTable(protocol conformance descriptor for Form<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Form<FormStyleConfiguration.Content> and conformance Form<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyFormStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyFormStyleContext and conformance AnyFormStyleContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyFormStyleContext and conformance AnyFormStyleContext()
{
  result = lazy protocol witness table cache variable for type AnyFormStyleContext and conformance AnyFormStyleContext;
  if (!lazy protocol witness table cache variable for type AnyFormStyleContext and conformance AnyFormStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyFormStyleContext, &type metadata for AnyFormStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyFormStyleContext and conformance AnyFormStyleContext);
  }

  return result;
}

BOOL specialized static AnyFormStyleContext.accepts<A>(_:at:)(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t TabContent.swipeActions<A>(edge:allowsFullSwipe:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *x8_0@<X8>)
{
  v10 = a2;
  v11 = a1;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v17);
  (*(v13 + 16))(v15, v7, a5);
  return SwipeActionTabs.init(edge:allowsFullSwipe:content:base:)(v11 & 1, v10, v19, v15, a5, a6, x8_0);
}

uint64_t SwipeActionTabs.init(edge:allowsFullSwipe:content:base:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = a1 & 1;
  a7[1] = a2;
  v12 = type metadata accessor for SwipeActionTabs(0, a5, a6, a4);
  (*(*(a6 - 8) + 32))(&a7[*(v12 + 40)], a3, a6);
  v13 = *(*(a5 - 8) + 32);
  v14 = &a7[*(v12 + 44)];

  return v13(v14, a4, a5);
}

uint64_t SwipeActionTabs<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v46 = a4;
  v8 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = *(a1 + 24);
  v44 = &v37 - v9;
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
  v11 = type metadata accessor for ModifiedContent();
  v12 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>();
  v57[0] = a3;
  v57[1] = v12;
  v13 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v57);
  v15 = lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>();
  v56[0] = WitnessTable;
  v56[1] = v15;
  v16 = swift_getWitnessTable(v13, v11, v56);
  type metadata accessor for SwipeActionsModifier(255, v11, v16, v17);
  v39 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
  v40 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v18 = type metadata accessor for ModifiedContent();
  v42 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  v22 = v44;
  v23 = v8;
  (*(a2 + 56))(v8, a2, v19);
  v24 = v4;
  v25 = *v4;
  v26 = v24[1];
  v27 = v24;
  v28 = v43;
  v48 = v23;
  v49 = v43;
  v29 = v41;
  v50 = a2;
  v51 = v41;
  v52 = v27;
  v30 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  View.swipeActions<A>(edge:allowsFullSwipe:content:)(v25, v26, partial apply for closure #1 in SwipeActionTabs<>._identifiedView.getter, v47, v30, v28, AssociatedConformanceWitness, v29, v21);
  (*(v45 + 8))(v22, v30);
  v55[0] = AssociatedConformanceWitness;
  v55[1] = &protocol witness table for SwipeActionsModifier<A>;
  v32 = swift_getWitnessTable(v13, v39, v55);
  v33 = lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>();
  v54[0] = v32;
  v54[1] = v33;
  v34 = swift_getWitnessTable(v13, v40, v54);
  IsSharingPicker = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v53[0] = v34;
  v53[1] = IsSharingPicker;
  swift_getWitnessTable(v13, v18, v53);
  lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput();
  View.input<A>(_:)();
  return (*(v42 + 8))(v21, v18);
}

uint64_t closure #1 in SwipeActionTabs<>._identifiedView.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwipeActionTabs(0, v7, v8, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

uint64_t TabContent.contextMenu<A>(menuItems:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  (*(v9 + 16))(v11, v5, a3);
  return ContextMenuTabs.init(menu:base:)(v15, v11, a4, a3, x8_0);
}

uint64_t ContextMenuTabs.init(menu:base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for ContextMenuTabs(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

uint64_t type metadata completion function for SwipeActionTabs(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  v11 = ((((-3 - v5) | v5) - (v6 + v9)) | v9) - *(v8 + 64);
  if ((v9 | v5) <= 7 && ((*(v8 + 80) | *(v4 + 80)) & 0x100000) == 0 && v11 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v15 = &a1[v5 + 2] & ~v5;
    v16 = &a2[v5 + 2] & ~v5;
    (*(v4 + 16))(v15, v16);
    (*(v8 + 16))((v15 + v10) & ~v9, (v16 + v10) & ~v9, v7);
  }

  else
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (((v9 | v5) + 16) & ~(v9 | v5)));
  }

  return v3;
}

uint64_t destroy for SwipeActionTabs(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8);
  v4 = v3 + 8;
  v5 = (a1 + *(v3 + 80) + 2) & ~*(v3 + 80);
  (*(v3 + 8))(v5);
  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v4 + 56) + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

_BYTE *initializeWithCopy for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 24) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 2] & ~v7;
  v9 = &a2[v7 + 2] & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 16))((*(v6 + 48) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 48) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_BYTE *assignWithCopy for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 24) - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 2] & ~v7;
  v9 = &a2[v7 + 2] & ~v7;
  (*(v5 + 24))(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 24))((*(v6 + 40) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 40) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_BYTE *initializeWithTake for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 24) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 2] & ~v7;
  v9 = &a2[v7 + 2] & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 32))((*(v6 + 32) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 32) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_BYTE *assignWithTake for SwipeActionTabs(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 24) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = &a1[v7 + 2] & ~v7;
  v9 = &a2[v7 + 2] & ~v7;
  (*(v5 + 40))(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v6 + 24) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 24) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for SwipeActionTabs(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = &a1[v9 + 2] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        if (v23 >= 2)
        {
          return v23 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for SwipeActionTabs(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(a4 + 16);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 2) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 2] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t instantiation function for generic protocol witness table for <> ContextMenuTabs<A, B>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ContextMenuTabs<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t ContextMenuTabs<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v6 = *(a1 + 16);
  v40 = a2;
  v41 = v6;
  v35 = a1;
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v8 = type metadata accessor for ModifiedContent();
  v52[0] = a2;
  v52[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v52, v35);
  v9 = v8;
  v36 = v8;
  v10 = type metadata accessor for ZStack();
  v39 = v10;
  v44 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v38 = &v35 - v12;
  v13 = swift_getWitnessTable(MEMORY[0x1E6981880], v10, v11);
  v15 = type metadata accessor for PlatformItemContextMenuModifier(0, v10, v13, v14);
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v19 = *(a1 + 24);
  v20 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v35 - v22;
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v35 - v26;
  v28 = v41;
  v29 = v40;
  View.styleContext<A>(_:)();
  (*(v20 + 56))(v19, v20);
  v47 = v28;
  v48 = v19;
  v49 = v29;
  v50 = v20;
  v51 = v27;
  static Alignment.center.getter();
  v30 = v38;
  v31 = v36;
  ZStack.init(alignment:content:)();
  (*(v44 + 32))(v18, v30, v39);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v42;
  MEMORY[0x18D00A570](v18, AssociatedTypeWitness, v42, AssociatedConformanceWitness);
  (*(v43 + 8))(v18, v33);
  (*(v37 + 8))(v23, AssociatedTypeWitness);
  return (*(v24 + 8))(v27, v31);
}

uint64_t closure #1 in ContextMenuTabs<>._identifiedView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  v9 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v11[0] = a4;
  v11[1] = v9;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t instantiation function for generic protocol witness table for <> SwipeActionTabs<A, B>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> SwipeActionTabs<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput()
{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwipeActionsUseTraitKeyInput, &type metadata for SwipeActionsUseTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwipeActionsUseTraitKeyInput, &type metadata for SwipeActionsUseTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwipeActionsUseTraitKeyInput, &type metadata for SwipeActionsUseTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwipeActionsUseTraitKeyInput, &type metadata for SwipeActionsUseTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput;
  if (!lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwipeActionsUseTraitKeyInput, &type metadata for SwipeActionsUseTraitKeyInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput);
  }

  return result;
}

void type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance TabContextMenuKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for TabContextMenuKey.Storage?, type metadata accessor for TabContextMenuKey.Storage);
  v3 = __swift_project_value_buffer(v2, static TabContextMenuKey.defaultValue);

  return outlined init with copy of TabContextMenuKey.Storage?(v3, a1);
}

uint64_t outlined init with copy of TabContextMenuKey.Storage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for TabContextMenuKey.Storage?, type metadata accessor for TabContextMenuKey.Storage);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void **initializeBufferWithCopyOfBuffer for TabContextMenuKey.Storage(void **a1, void **a2)
{
  v4 = *(*(type metadata accessor for TabContextMenuKey.Storage.Guts(0) - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_62:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v6 = type metadata accessor for PlatformItemList.Item(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
      goto LABEL_62;
    }

    v110 = v7;
    v111 = v6;
    v9 = *a2;
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2[3];
    a1[2] = a2[2];
    a1[3] = v11;
    *(a1 + 32) = *(a2 + 32);
    v12 = a2[6];
    a1[5] = a2[5];
    a1[6] = v12;
    *(a1 + 56) = *(a2 + 56);
    v13 = a2[24];
    v14 = v9;
    v15 = v10;

    if (v13 >> 1 == 4294967294)
    {
      v16 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v16;
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      v17 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v17;
      v18 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v18;
      v19 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v19;
      v20 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v20;
      v21 = a2[33];
      if (v21)
      {
LABEL_9:
        a1[32] = a2[32];
        a1[33] = v21;
        v22 = a2[34];

        if (v22 >= 2)
        {
          v23 = v22;
        }

        a1[34] = v22;
        *(a1 + 70) = *(a2 + 70);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 285) = *(a2 + 285);
        v24 = a2[37];
        a1[36] = a2[36];
        a1[37] = v24;

LABEL_20:
        v35 = a2[42];
        if (v35 >> 2 == 0xFFFFFFFF)
        {
          v36 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v36;
          a1[50] = a2[50];
          v37 = *(a2 + 20);
          *(a1 + 19) = *(a2 + 19);
          *(a1 + 20) = v37;
          v38 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v38;
        }

        else
        {
          v39 = a2[38];
          v40 = a2[39];
          v41 = a2[40];
          v42 = a2[43];
          v43 = a2[44];
          v44 = a2[45];
          v99 = a2[41];
          v100 = a2[46];
          v101 = a2[47];
          v103 = a2[48];
          v105 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v39, v40, v41, v99, v35, v42, v43, v44, v100, v101, v103, v105, __dsta);
          a1[38] = v39;
          a1[39] = v40;
          a1[40] = v41;
          a1[41] = v99;
          a1[42] = v35;
          a1[43] = v42;
          a1[44] = v43;
          a1[45] = v44;
          a1[46] = v100;
          a1[47] = v101;
          a1[48] = v103;
          a1[49] = v105;
          a1[50] = __dsta;
        }

        v45 = a2[52];
        if (v45 == 1)
        {
          v46 = *(a2 + 57);
          *(a1 + 55) = *(a2 + 55);
          *(a1 + 57) = v46;
          *(a1 + 472) = *(a2 + 472);
          v47 = *(a2 + 53);
          *(a1 + 51) = *(a2 + 51);
          *(a1 + 53) = v47;
          goto LABEL_33;
        }

        *(a1 + 102) = *(a2 + 102);
        *(a1 + 412) = *(a2 + 412);
        if (v45)
        {
          v48 = a2[53];
          a1[52] = v45;
          a1[53] = v48;

          v49 = a2[54];
          if (v49)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v49 = a2[54];
          if (v49)
          {
LABEL_27:
            v50 = a2[55];
            a1[54] = v49;
            a1[55] = v50;

            v51 = a2[56];
            if (v51)
            {
LABEL_28:
              v52 = a2[57];
              a1[56] = v51;
              a1[57] = v52;

LABEL_32:
              a1[58] = a2[58];
              *(a1 + 472) = *(a2 + 472);
LABEL_33:
              v53 = a2[61];
              a1[60] = a2[60];
              a1[61] = v53;
              a1[62] = a2[62];
              *(a1 + 504) = *(a2 + 504);
              v54 = a2[64];

              if (v54)
              {
                v55 = a2[65];
                a1[64] = v54;
                a1[65] = v55;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 67, a2 + 67, 0x130uLL);
                goto LABEL_48;
              }

              a1[67] = a2[67];
              a1[68] = a2[68];
              *(a1 + 552) = *(a2 + 552);
              a1[70] = a2[70];
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 36) = *(a2 + 36);
              *(a1 + 592) = *(a2 + 592);
              v56 = a1 + 75;
              v57 = a2 + 75;
              v58 = a2[78];

              if (v58)
              {
                if (v58 == 1)
                {
                  v59 = *(a2 + 77);
                  *v56 = *v57;
                  *(a1 + 77) = v59;
                  *(a1 + 79) = *(a2 + 79);
LABEL_44:
                  a1[81] = a2[81];
                  *(a1 + 656) = *(a2 + 656);
                  v61 = a1 + 83;
                  v62 = a2 + 83;
                  v63 = a2[97];
                  if (v63 == 1)
                  {
                    v64 = *(a2 + 97);
                    *(a1 + 95) = *(a2 + 95);
                    *(a1 + 97) = v64;
                    *(a1 + 99) = *(a2 + 99);
                    *(a1 + 808) = *(a2 + 808);
                    v65 = *(a2 + 89);
                    *(a1 + 87) = *(a2 + 87);
                    *(a1 + 89) = v65;
                    v66 = *(a2 + 93);
                    *(a1 + 91) = *(a2 + 91);
                    *(a1 + 93) = v66;
                    v67 = *(a2 + 85);
                    *v61 = *v62;
                    *(a1 + 85) = v67;
                  }

                  else
                  {
                    *v61 = *v62;
                    *(a1 + 672) = *(a2 + 672);
                    a1[85] = a2[85];
                    *(a1 + 688) = *(a2 + 688);
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = a2[87];
                    v68 = *(a2 + 45);
                    *(a1 + 44) = *(a2 + 44);
                    *(a1 + 45) = v68;
                    a1[92] = a2[92];
                    *(a1 + 372) = *(a2 + 372);
                    *(a1 + 47) = *(a2 + 47);
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = v63;
                    *(a1 + 49) = *(a2 + 49);
                    a1[100] = a2[100];
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = a2[102];
                  a1[103] = a2[103];
                  a1[104] = a2[104];

LABEL_48:
                  v69 = a1 + 105;
                  v70 = a2 + 105;
                  v71 = a2[108];
                  if (v71)
                  {
                    if (v71 == 1)
                    {
                      v72 = *(a2 + 107);
                      *v69 = *v70;
                      *(a1 + 107) = v72;
                      *(a1 + 109) = *(a2 + 109);
                      a1[111] = a2[111];
LABEL_55:
                      v76 = a2[112];
                      a1[112] = v76;
                      a1[113] = a2[113];
                      a1[114] = a2[114];
                      a1[115] = a2[115];
                      a1[116] = a2[116];
                      a1[117] = a2[117];
                      a1[118] = a2[118];
                      *(a1 + 476) = *(a2 + 476);
                      *(a1 + 954) = *(a2 + 954);
                      v77 = v111[28];
                      __dst = a1 + v77;
                      v78 = a2 + v77;
                      v79 = type metadata accessor for CommandOperation(0);
                      v104 = *(v79 - 8);
                      v106 = *(v104 + 48);
                      v80 = v76;

                      if (v106(v78, 1, v79))
                      {
                        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v78, *(*(v81 - 8) + 64));
                        v82 = v111;
                        v83 = v110;
                      }

                      else
                      {
                        *__dst = *v78;
                        v84 = *(v79 + 20);
                        v85 = &__dst[v84];
                        v86 = &v78[v84];
                        v107 = v78;
                        v87 = v79;
                        v88 = *v86;
                        v89 = *(v86 + 1);
                        v90 = v86[16];
                        outlined copy of Text.Storage(*v86, v89, v90);
                        *v85 = v88;
                        *(v85 + 1) = v89;
                        v85[16] = v90;
                        *(v85 + 3) = *(v86 + 3);
                        v91 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v92 = type metadata accessor for UUID();
                        v102 = *(*(v92 - 8) + 16);

                        v102(&v85[v91], &v86[v91], v92);
                        v93 = *(v87 + 24);
                        v94 = &__dst[v93];
                        v95 = &v107[v93];
                        if (*v95)
                        {
                          v96 = v95[1];
                          *v94 = *v95;
                          v94[1] = v96;
                        }

                        else
                        {
                          *v94 = *v95;
                        }

                        v82 = v111;
                        v83 = v110;
                        (*(v104 + 56))(__dst, 0, 1, v87);
                      }

                      *(a1 + v82[29]) = *(a2 + v82[29]);
                      *(a1 + v82[30]) = *(a2 + v82[30]);
                      *(a1 + v82[31]) = *(a2 + v82[31]);
                      *(a1 + v82[32]) = *(a2 + v82[32]);
                      *(a1 + v82[33]) = *(a2 + v82[33]);
                      *(a1 + v82[34]) = *(a2 + v82[34]);
                      v97 = *(v83 + 56);

                      v97(a1, 0, 1, v82);
                      goto LABEL_62;
                    }

                    a1[108] = v71;
                    a1[109] = a2[109];
                    (**(v71 - 1))(v69, v70);
                    v74 = a2[110];
                    if (!v74)
                    {
LABEL_54:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v73 = *(a2 + 107);
                    *v69 = *v70;
                    *(a1 + 107) = v73;
                    a1[109] = a2[109];
                    v74 = a2[110];
                    if (!v74)
                    {
                      goto LABEL_54;
                    }
                  }

                  v75 = a2[111];
                  a1[110] = v74;
                  a1[111] = v75;

                  goto LABEL_55;
                }

                a1[78] = v58;
                a1[79] = a2[79];
                (**(v58 - 1))(a1 + 75, a2 + 75, v58);
              }

              else
              {
                v60 = *(a2 + 77);
                *v56 = *v57;
                *(a1 + 77) = v60;
                a1[79] = a2[79];
              }

              a1[80] = a2[80];

              goto LABEL_44;
            }

LABEL_31:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_32;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v51 = a2[56];
        if (v51)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v25 = *(a2 + 72);
      if (v25 == 255)
      {
        a1[8] = a2[8];
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v26 = a2[8];
        outlined copy of GraphicsImage.Contents(v26, *(a2 + 72));
        a1[8] = v26;
        *(a1 + 72) = v25;
        v13 = a2[24];
      }

      a1[10] = a2[10];
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 19) = *(a2 + 19);
      *(a1 + 84) = *(a2 + 84);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v13 >> 1 == 0xFFFFFFFF)
      {
        v27 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v27;
      }

      else
      {
        v28 = a2[22];
        v29 = a2[23];
        v30 = a2[25];
        outlined copy of AccessibilityImageLabel(v28, v29, v13, v30);
        a1[22] = v28;
        a1[23] = v29;
        a1[24] = v13;
        a1[25] = v30;
      }

      v31 = a2[27];
      a1[26] = a2[26];
      a1[27] = v31;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 232) = *(a2 + 232);
      v32 = a2[30];
      a1[30] = v32;
      *(a1 + 124) = *(a2 + 124);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v33 = v32;
      v21 = a2[33];
      if (v21)
      {
        goto LABEL_9;
      }
    }

    v34 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v34;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_20;
  }

  v5 = *a2;
  *a1 = *a2;
  a1 = &v5[(v4 + 16) & ~v4];

  return a1;
}

void type metadata accessor for TabContextMenuKey.Storage?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double destroy for TabContextMenuKey.Storage(uint64_t a1)
{
  type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v2 = type metadata accessor for PlatformItemList.Item(0);
    if ((*(*(v2 - 8) + 48))(a1, 1, v2))
    {
      return result;
    }

    v4 = *(a1 + 192);
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v6 = *(a1 + 72);
      if (v6 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v6);
        v4 = *(a1 + 192);
        v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v5 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v4, *(a1 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(a1 + 264))
    {

      v7 = *(a1 + 272);
      if (v7 >= 2)
      {
      }
    }

    v8 = *(a1 + 336);
    if (v8 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v8, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
    }

    v9 = *(a1 + 416);
    if (v9)
    {
      if (v9 == 1)
      {
        goto LABEL_22;
      }
    }

    if (*(a1 + 432))
    {
    }

    if (*(a1 + 448))
    {
    }

LABEL_22:

    if (*(a1 + 512))
    {
    }

    if (!*(a1 + 816))
    {
LABEL_32:
      v11 = *(a1 + 864);
      if (v11)
      {
        if (v11 == 1)
        {
LABEL_37:

          v12 = a1 + *(v2 + 112);
          v13 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
          {
            v14 = v12 + *(v13 + 20);
            outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

            v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v16 = type metadata accessor for UUID();
            (*(*(v16 - 8) + 8))(v14 + v15, v16);
            if (*(v12 + *(v13 + 24)))
            {
            }
          }

          goto LABEL_40;
        }

        __swift_destroy_boxed_opaque_existential_1((a1 + 840));
      }

      if (*(a1 + 880))
      {
      }

      goto LABEL_37;
    }

    v10 = *(a1 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_29:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 600));
    }

    goto LABEL_29;
  }

LABEL_40:

  return result;
}

void *initializeWithCopy for TabContextMenuKey.Storage(void *a1, void *a2)
{
  type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;

    goto LABEL_60;
  }

  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_60;
  }

  v7 = *a2;
  v8 = a2[1];
  *a1 = *a2;
  a1[1] = v8;
  v9 = a2[3];
  a1[2] = a2[2];
  a1[3] = v9;
  *(a1 + 32) = *(a2 + 32);
  v10 = a2[6];
  a1[5] = a2[5];
  a1[6] = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = a2[24];
  v12 = v7;
  v13 = v8;

  if (v11 >> 1 != 4294967294)
  {
    v23 = *(a2 + 72);
    if (v23 == 255)
    {
      a1[8] = a2[8];
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v24 = a2[8];
      outlined copy of GraphicsImage.Contents(v24, *(a2 + 72));
      a1[8] = v24;
      *(a1 + 72) = v23;
      v11 = a2[24];
    }

    a1[10] = a2[10];
    *(a1 + 11) = *(a2 + 11);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v11 >> 1 == 0xFFFFFFFF)
    {
      v25 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v25;
    }

    else
    {
      v26 = a2[22];
      v27 = a2[23];
      v28 = a2[25];
      outlined copy of AccessibilityImageLabel(v26, v27, v11, v28);
      a1[22] = v26;
      a1[23] = v27;
      a1[24] = v11;
      a1[25] = v28;
    }

    v29 = a2[27];
    a1[26] = a2[26];
    a1[27] = v29;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    *(a1 + 232) = *(a2 + 232);
    v30 = a2[30];
    a1[30] = v30;
    *(a1 + 124) = *(a2 + 124);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v31 = v30;
    v19 = a2[33];
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_17:
    v32 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v32;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_18;
  }

  v14 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v14;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v15 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v15;
  v16 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v16;
  v17 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v17;
  v18 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v18;
  v19 = a2[33];
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_7:
  a1[32] = a2[32];
  a1[33] = v19;
  v20 = a2[34];

  if (v20 >= 2)
  {
    v21 = v20;
  }

  a1[34] = v20;
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v22 = a2[37];
  a1[36] = a2[36];
  a1[37] = v22;

LABEL_18:
  v33 = a2[42];
  v109 = v4;
  v108 = v5;
  if (v33 >> 2 == 0xFFFFFFFF)
  {
    v34 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v34;
    a1[50] = a2[50];
    v35 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v35;
    v36 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v36;
  }

  else
  {
    v37 = a2[38];
    v38 = a2[39];
    v39 = a2[40];
    v40 = a2[41];
    v42 = a2[43];
    v41 = a2[44];
    v43 = a2[45];
    v98 = a2[46];
    v99 = a2[47];
    v101 = a2[48];
    v103 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v37, v38, v39, v40, v33, v42, v41, v43, v98, v99, v101, v103, __dsta);
    a1[38] = v37;
    a1[39] = v38;
    a1[40] = v39;
    a1[41] = v40;
    a1[42] = v33;
    a1[43] = v42;
    v4 = v109;
    a1[44] = v41;
    a1[45] = v43;
    a1[46] = v98;
    a1[47] = v99;
    a1[48] = v101;
    a1[49] = v103;
    a1[50] = __dsta;
  }

  v44 = a2[52];
  if (v44 == 1)
  {
    v45 = *(a2 + 57);
    *(a1 + 55) = *(a2 + 55);
    *(a1 + 57) = v45;
    *(a1 + 472) = *(a2 + 472);
    v46 = *(a2 + 53);
    *(a1 + 51) = *(a2 + 51);
    *(a1 + 53) = v46;
    goto LABEL_31;
  }

  *(a1 + 102) = *(a2 + 102);
  *(a1 + 412) = *(a2 + 412);
  if (v44)
  {
    v47 = a2[53];
    a1[52] = v44;
    a1[53] = v47;

    v48 = a2[54];
    if (v48)
    {
      goto LABEL_25;
    }

LABEL_28:
    *(a1 + 27) = *(a2 + 27);
    v50 = a2[56];
    if (v50)
    {
      goto LABEL_26;
    }

LABEL_29:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_30;
  }

  *(a1 + 26) = *(a2 + 26);
  v48 = a2[54];
  if (!v48)
  {
    goto LABEL_28;
  }

LABEL_25:
  v49 = a2[55];
  a1[54] = v48;
  a1[55] = v49;

  v50 = a2[56];
  if (!v50)
  {
    goto LABEL_29;
  }

LABEL_26:
  v51 = a2[57];
  a1[56] = v50;
  a1[57] = v51;

LABEL_30:
  a1[58] = a2[58];
  *(a1 + 472) = *(a2 + 472);
LABEL_31:
  v52 = a2[61];
  a1[60] = a2[60];
  a1[61] = v52;
  a1[62] = a2[62];
  *(a1 + 504) = *(a2 + 504);
  v53 = a2[64];

  if (v53)
  {
    v54 = a2[65];
    a1[64] = v53;
    a1[65] = v54;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 67, a2 + 67, 0x130uLL);
    goto LABEL_46;
  }

  a1[67] = a2[67];
  a1[68] = a2[68];
  *(a1 + 552) = *(a2 + 552);
  a1[70] = a2[70];
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 592) = *(a2 + 592);
  v55 = a1 + 75;
  v56 = a2 + 75;
  v57 = a2[78];

  if (!v57)
  {
    v59 = *(a2 + 77);
    *v55 = *v56;
    *(a1 + 77) = v59;
    a1[79] = a2[79];
LABEL_41:
    a1[80] = a2[80];

    goto LABEL_42;
  }

  if (v57 != 1)
  {
    a1[78] = v57;
    a1[79] = a2[79];
    (**(v57 - 8))(a1 + 75, (a2 + 75), v57);
    goto LABEL_41;
  }

  v58 = *(a2 + 77);
  *v55 = *v56;
  *(a1 + 77) = v58;
  *(a1 + 79) = *(a2 + 79);
LABEL_42:
  a1[81] = a2[81];
  *(a1 + 656) = *(a2 + 656);
  v60 = a1 + 83;
  v61 = a2 + 83;
  v62 = a2[97];
  if (v62 == 1)
  {
    v63 = *(a2 + 97);
    *(a1 + 95) = *(a2 + 95);
    *(a1 + 97) = v63;
    *(a1 + 99) = *(a2 + 99);
    *(a1 + 808) = *(a2 + 808);
    v64 = *(a2 + 89);
    *(a1 + 87) = *(a2 + 87);
    *(a1 + 89) = v64;
    v65 = *(a2 + 93);
    *(a1 + 91) = *(a2 + 91);
    *(a1 + 93) = v65;
    v66 = *(a2 + 85);
    *v60 = *v61;
    *(a1 + 85) = v66;
  }

  else
  {
    *v60 = *v61;
    *(a1 + 672) = *(a2 + 672);
    a1[85] = a2[85];
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    a1[87] = a2[87];
    v67 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v67;
    a1[92] = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    *(a1 + 768) = *(a2 + 768);
    a1[97] = v62;
    *(a1 + 49) = *(a2 + 49);
    a1[100] = a2[100];
    *(a1 + 808) = *(a2 + 808);
  }

  a1[102] = a2[102];
  a1[103] = a2[103];
  a1[104] = a2[104];

LABEL_46:
  v68 = a1 + 105;
  v69 = a2 + 105;
  v70 = a2[108];
  if (!v70)
  {
    v72 = *(a2 + 107);
    *v68 = *v69;
    *(a1 + 107) = v72;
    a1[109] = a2[109];
    v73 = a2[110];
    if (!v73)
    {
LABEL_52:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_53;
    }

LABEL_50:
    v74 = a2[111];
    a1[110] = v73;
    a1[111] = v74;

    goto LABEL_53;
  }

  if (v70 != 1)
  {
    a1[108] = v70;
    a1[109] = a2[109];
    (**(v70 - 8))(v68, v69);
    v73 = a2[110];
    if (!v73)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v71 = *(a2 + 107);
  *v68 = *v69;
  *(a1 + 107) = v71;
  *(a1 + 109) = *(a2 + 109);
  a1[111] = a2[111];
LABEL_53:
  v75 = a2[112];
  a1[112] = v75;
  a1[113] = a2[113];
  a1[114] = a2[114];
  a1[115] = a2[115];
  a1[116] = a2[116];
  a1[117] = a2[117];
  a1[118] = a2[118];
  *(a1 + 476) = *(a2 + 476);
  *(a1 + 954) = *(a2 + 954);
  v76 = *(v4 + 112);
  __dst = a1 + v76;
  v77 = a2 + v76;
  v78 = type metadata accessor for CommandOperation(0);
  v102 = *(v78 - 8);
  v104 = *(v102 + 48);
  v79 = v75;
  v80 = v77;

  if (v104(v77, 1, v78))
  {
    type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    memcpy(__dst, v77, *(*(v81 - 8) + 64));
    v82 = v109;
  }

  else
  {
    *__dst = *v77;
    v83 = *(v78 + 20);
    v84 = v78;
    v85 = &__dst[v83];
    v86 = &v80[v83];
    v105 = v80;
    v87 = *&v80[v83];
    v88 = *(v86 + 1);
    v89 = v86[16];
    outlined copy of Text.Storage(v87, v88, v89);
    *v85 = v87;
    *(v85 + 1) = v88;
    v85[16] = v89;
    *(v85 + 3) = *(v86 + 3);
    v90 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v91 = type metadata accessor for UUID();
    v100 = *(*(v91 - 8) + 16);

    v100(&v85[v90], &v86[v90], v91);
    v92 = *(v84 + 24);
    v93 = &__dst[v92];
    v94 = &v105[v92];
    if (*v94)
    {
      v95 = v94[1];
      *v93 = *v94;
      v93[1] = v95;
    }

    else
    {
      *v93 = *v94;
    }

    v82 = v109;
    (*(v102 + 56))(__dst, 0, 1, v84);
  }

  *(a1 + v82[29]) = *(a2 + v82[29]);
  *(a1 + v82[30]) = *(a2 + v82[30]);
  *(a1 + v82[31]) = *(a2 + v82[31]);
  *(a1 + v82[32]) = *(a2 + v82[32]);
  *(a1 + v82[33]) = *(a2 + v82[33]);
  *(a1 + v82[34]) = *(a2 + v82[34]);
  v96 = *(v108 + 56);

  v96(a1, 0, 1, v82);
LABEL_60:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for TabContextMenuKey.Storage(void **a1, void **a2)
{
  if (a1 != a2)
  {
    outlined destroy of TabContextMenuKey.Storage.Guts(a1, type metadata accessor for TabContextMenuKey.Storage.Guts);
    type metadata accessor for TabContextMenuKey.Storage.Guts(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_61:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v4 = type metadata accessor for PlatformItemList.Item(0);
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(a2, 1, v4))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_61;
    }

    v128 = v5;
    v7 = *a2;
    *a1 = *a2;
    v8 = a2[1];
    a1[1] = v8;
    a1[2] = a2[2];
    a1[3] = a2[3];
    *(a1 + 32) = *(a2 + 32);
    a1[5] = a2[5];
    a1[6] = a2[6];
    *(a1 + 56) = *(a2 + 56);
    v9 = a2[24];
    v10 = v7;
    v11 = v8;

    if (v9 >> 1 == 4294967294)
    {
      v12 = *(a2 + 4);
      v13 = *(a2 + 5);
      v14 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v14;
      *(a1 + 4) = v12;
      *(a1 + 5) = v13;
      v15 = *(a2 + 8);
      v16 = *(a2 + 9);
      v17 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v17;
      *(a1 + 8) = v15;
      *(a1 + 9) = v16;
      v18 = *(a2 + 12);
      v19 = *(a2 + 13);
      v20 = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 13) = v19;
      *(a1 + 14) = v20;
      *(a1 + 12) = v18;
      if (a2[33])
      {
LABEL_8:
        a1[32] = a2[32];
        a1[33] = a2[33];
        v21 = a2[34];

        if (v21 >= 2)
        {
          v22 = v21;
        }

        a1[34] = v21;
        v23 = *(a2 + 70);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 70) = v23;
        *(a1 + 285) = *(a2 + 285);
        *(a1 + 286) = *(a2 + 286);
        a1[36] = a2[36];
        a1[37] = a2[37];

LABEL_19:
        v40 = a2[42];
        v129 = v4;
        if (v40 >> 2 == 0xFFFFFFFF)
        {
          v41 = *(a2 + 19);
          v42 = *(a2 + 21);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 21) = v42;
          *(a1 + 19) = v41;
          v43 = *(a2 + 22);
          v44 = *(a2 + 23);
          v45 = *(a2 + 24);
          a1[50] = a2[50];
          *(a1 + 23) = v44;
          *(a1 + 24) = v45;
          *(a1 + 22) = v43;
        }

        else
        {
          v46 = a2[38];
          v47 = a2[39];
          v48 = a2[40];
          v49 = a2[41];
          v51 = a2[43];
          v50 = a2[44];
          v52 = a2[45];
          v118 = a2[46];
          v119 = a2[47];
          v121 = a2[48];
          v123 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v46, v47, v48, v49, v40, v51, v50, v52, v118, v119, v121, v123, __dsta);
          a1[38] = v46;
          a1[39] = v47;
          a1[40] = v48;
          a1[41] = v49;
          a1[42] = v40;
          a1[43] = v51;
          v4 = v129;
          a1[44] = v50;
          a1[45] = v52;
          a1[46] = v118;
          a1[47] = v119;
          a1[48] = v121;
          a1[49] = v123;
          a1[50] = __dsta;
        }

        if (a2[52] == 1)
        {
          *(a1 + 51) = *(a2 + 51);
          v53 = *(a2 + 53);
          v54 = *(a2 + 55);
          v55 = *(a2 + 57);
          *(a1 + 472) = *(a2 + 472);
          *(a1 + 55) = v54;
          *(a1 + 57) = v55;
          *(a1 + 53) = v53;
          goto LABEL_32;
        }

        *(a1 + 408) = *(a2 + 408);
        *(a1 + 409) = *(a2 + 409);
        *(a1 + 410) = *(a2 + 410);
        *(a1 + 411) = *(a2 + 411);
        *(a1 + 412) = *(a2 + 412);
        v56 = a2[52];
        if (v56)
        {
          v57 = a2[53];
          a1[52] = v56;
          a1[53] = v57;

          v58 = a2[54];
          if (v58)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v58 = a2[54];
          if (v58)
          {
LABEL_26:
            v59 = a2[55];
            a1[54] = v58;
            a1[55] = v59;

            v60 = a2[56];
            if (v60)
            {
LABEL_27:
              v61 = a2[57];
              a1[56] = v60;
              a1[57] = v61;

LABEL_31:
              a1[58] = a2[58];
              *(a1 + 472) = *(a2 + 472);
LABEL_32:
              a1[60] = a2[60];
              a1[61] = a2[61];
              a1[62] = a2[62];
              *(a1 + 504) = *(a2 + 504);
              v62 = a2[64];

              if (v62)
              {
                v63 = a2[65];
                a1[64] = v62;
                a1[65] = v63;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 67, a2 + 67, 0x130uLL);
                goto LABEL_47;
              }

              a1[67] = a2[67];
              a1[68] = a2[68];
              *(a1 + 552) = *(a2 + 552);
              a1[70] = a2[70];
              *(a1 + 568) = *(a2 + 568);
              v64 = *(a2 + 36);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 36) = v64;
              v65 = a1 + 75;
              v66 = a2 + 75;
              v67 = a2[78];

              if (v67)
              {
                if (v67 == 1)
                {
                  v68 = *v66;
                  v69 = *(a2 + 79);
                  *(a1 + 77) = *(a2 + 77);
                  *(a1 + 79) = v69;
                  *v65 = v68;
LABEL_43:
                  v72 = a2[81];
                  *(a1 + 656) = *(a2 + 656);
                  a1[81] = v72;
                  v73 = a1 + 83;
                  v74 = a2 + 83;
                  if (a2[97] == 1)
                  {
                    v75 = *(a2 + 85);
                    *v73 = *v74;
                    *(a1 + 85) = v75;
                    v76 = *(a2 + 87);
                    v77 = *(a2 + 89);
                    v78 = *(a2 + 93);
                    *(a1 + 91) = *(a2 + 91);
                    *(a1 + 93) = v78;
                    *(a1 + 87) = v76;
                    *(a1 + 89) = v77;
                    v79 = *(a2 + 95);
                    v80 = *(a2 + 97);
                    v81 = *(a2 + 99);
                    *(a1 + 808) = *(a2 + 808);
                    *(a1 + 97) = v80;
                    *(a1 + 99) = v81;
                    *(a1 + 95) = v79;
                  }

                  else
                  {
                    v82 = *v74;
                    *(a1 + 672) = *(a2 + 672);
                    *v73 = v82;
                    v83 = a2[85];
                    *(a1 + 688) = *(a2 + 688);
                    a1[85] = v83;
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 690) = *(a2 + 690);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = a2[87];
                    a1[88] = a2[88];
                    a1[89] = a2[89];
                    a1[90] = a2[90];
                    a1[91] = a2[91];
                    a1[92] = a2[92];
                    *(a1 + 744) = *(a2 + 744);
                    *(a1 + 745) = *(a2 + 745);
                    a1[94] = a2[94];
                    a1[95] = a2[95];
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = a2[97];
                    v84 = *(a2 + 49);
                    a1[100] = a2[100];
                    *(a1 + 49) = v84;
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = a2[102];
                  a1[103] = a2[103];
                  a1[104] = a2[104];

LABEL_47:
                  v85 = a1 + 105;
                  v86 = a2 + 105;
                  v87 = a2[108];
                  if (v87)
                  {
                    if (v87 == 1)
                    {
                      v88 = *v86;
                      v89 = *(a2 + 107);
                      v90 = *(a2 + 109);
                      a1[111] = a2[111];
                      *(a1 + 107) = v89;
                      *(a1 + 109) = v90;
                      *v85 = v88;
LABEL_54:
                      v95 = a2[112];
                      a1[112] = v95;
                      a1[113] = a2[113];
                      a1[114] = a2[114];
                      a1[115] = a2[115];
                      a1[116] = a2[116];
                      a1[117] = a2[117];
                      a1[118] = a2[118];
                      *(a1 + 952) = *(a2 + 952);
                      *(a1 + 953) = *(a2 + 953);
                      *(a1 + 954) = *(a2 + 954);
                      v96 = *(v4 + 112);
                      __dst = a1 + v96;
                      v97 = a2 + v96;
                      v98 = type metadata accessor for CommandOperation(0);
                      v122 = *(v98 - 8);
                      v124 = *(v122 + 48);
                      v99 = v95;
                      v100 = v97;

                      if (v124(v97, 1, v98))
                      {
                        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v97, *(*(v101 - 8) + 64));
                        v102 = v129;
                      }

                      else
                      {
                        *__dst = *v97;
                        v103 = *(v98 + 20);
                        v104 = v98;
                        v105 = &__dst[v103];
                        v106 = &v100[v103];
                        v125 = v100;
                        v107 = *&v100[v103];
                        v108 = *(v106 + 1);
                        v109 = v106[16];
                        outlined copy of Text.Storage(v107, v108, v109);
                        *v105 = v107;
                        *(v105 + 1) = v108;
                        v105[16] = v109;
                        *(v105 + 3) = *(v106 + 3);
                        v110 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v111 = type metadata accessor for UUID();
                        v120 = *(*(v111 - 8) + 16);

                        v120(&v105[v110], &v106[v110], v111);
                        v112 = *(v104 + 24);
                        v113 = &__dst[v112];
                        v114 = &v125[v112];
                        if (*v114)
                        {
                          v115 = v114[1];
                          *v113 = *v114;
                          v113[1] = v115;
                        }

                        else
                        {
                          *v113 = *v114;
                        }

                        v102 = v129;
                        (*(v122 + 56))(__dst, 0, 1, v104);
                      }

                      *(a1 + v102[29]) = *(a2 + v102[29]);
                      *(a1 + v102[30]) = *(a2 + v102[30]);
                      *(a1 + v102[31]) = *(a2 + v102[31]);
                      *(a1 + v102[32]) = *(a2 + v102[32]);
                      *(a1 + v102[33]) = *(a2 + v102[33]);
                      *(a1 + v102[34]) = *(a2 + v102[34]);
                      v116 = *(v128 + 56);

                      v116(a1, 0, 1, v102);
                      goto LABEL_61;
                    }

                    a1[108] = v87;
                    a1[109] = a2[109];
                    (**(v87 - 1))(v85, v86);
                    v93 = a2[110];
                    if (!v93)
                    {
LABEL_53:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    v91 = *v86;
                    v92 = *(a2 + 107);
                    a1[109] = a2[109];
                    *v85 = v91;
                    *(a1 + 107) = v92;
                    v93 = a2[110];
                    if (!v93)
                    {
                      goto LABEL_53;
                    }
                  }

                  v94 = a2[111];
                  a1[110] = v93;
                  a1[111] = v94;

                  goto LABEL_54;
                }

                a1[78] = v67;
                a1[79] = a2[79];
                (**(v67 - 1))(a1 + 75, a2 + 75, v67);
              }

              else
              {
                v70 = *v66;
                v71 = *(a2 + 77);
                a1[79] = a2[79];
                *v65 = v70;
                *(a1 + 77) = v71;
              }

              a1[80] = a2[80];

              goto LABEL_43;
            }

LABEL_30:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_31;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v60 = a2[56];
        if (v60)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v24 = *(a2 + 72);
      if (v24 == 255)
      {
        v26 = a2[8];
        *(a1 + 72) = *(a2 + 72);
        a1[8] = v26;
      }

      else
      {
        v25 = a2[8];
        outlined copy of GraphicsImage.Contents(v25, *(a2 + 72));
        a1[8] = v25;
        *(a1 + 72) = v24;
      }

      a1[10] = a2[10];
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
      v27 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v27;
      v28 = *(a2 + 17);
      v29 = *(a2 + 19);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 19) = v29;
      *(a1 + 17) = v28;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v30 = a2[24];
      if (v30 >> 1 == 0xFFFFFFFF)
      {
        v31 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v31;
      }

      else
      {
        v32 = a2[22];
        v33 = a2[23];
        v34 = a2[25];
        outlined copy of AccessibilityImageLabel(v32, v33, a2[24], v34);
        a1[22] = v32;
        a1[23] = v33;
        a1[24] = v30;
        a1[25] = v34;
      }

      a1[26] = a2[26];
      a1[27] = a2[27];
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v35 = *(a2 + 57);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 57) = v35;
      v36 = a2[30];
      a1[30] = v36;
      *(a1 + 124) = *(a2 + 124);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v37 = v36;
      if (a2[33])
      {
        goto LABEL_8;
      }
    }

    v38 = *(a2 + 16);
    v39 = *(a2 + 18);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 18) = v39;
    *(a1 + 16) = v38;
    goto LABEL_19;
  }

  return a1;
}

_OWORD *initializeWithTake for TabContextMenuKey.Storage(_OWORD *a1, _OWORD *a2)
{
  v4 = type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v5);
  }

  else
  {
    v7 = type metadata accessor for PlatformItemList.Item(0);
    v8 = *(v7 - 1);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v11 = a2[13];
      a1[12] = a2[12];
      a1[13] = v11;
      a1[14] = a2[14];
      *(a1 + 235) = *(a2 + 235);
      v12 = a2[9];
      a1[8] = a2[8];
      a1[9] = v12;
      v13 = a2[11];
      a1[10] = a2[10];
      a1[11] = v13;
      v14 = a2[5];
      a1[4] = a2[4];
      a1[5] = v14;
      v15 = a2[7];
      a1[6] = a2[6];
      a1[7] = v15;
      v16 = a2[17];
      a1[16] = a2[16];
      a1[17] = v16;
      v17 = a2[23];
      a1[22] = a2[22];
      a1[23] = v17;
      a1[24] = a2[24];
      *(a1 + 50) = *(a2 + 50);
      v18 = a2[19];
      a1[18] = a2[18];
      a1[19] = v18;
      v19 = a2[21];
      a1[20] = a2[20];
      a1[21] = v19;
      v20 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v20;
      *(a1 + 472) = *(a2 + 472);
      v21 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v21;
      a1[30] = a2[30];
      *(a1 + 489) = *(a2 + 489);
      a1[32] = a2[32];
      *(a1 + 528) = *(a2 + 528);
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v22 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v22;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v23 = v7[28];
      v24 = a1 + v23;
      v25 = a2 + v23;
      v26 = type metadata accessor for CommandOperation(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v25, 1, v26))
      {
        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v24, v25, *(*(v28 - 8) + 64));
      }

      else
      {
        *v24 = *v25;
        v29 = *(v26 + 20);
        v30 = &v24[v29];
        v37 = v24;
        v31 = &v25[v29];
        v32 = *&v25[v29 + 16];
        *v30 = *&v25[v29];
        v30[1] = v32;
        v38 = v8;
        v33 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v34 = type metadata accessor for UUID();
        v35 = v30 + v33;
        v36 = &v31[v33];
        v8 = v38;
        (*(*(v34 - 8) + 32))(v35, v36, v34);
        *&v37[*(v26 + 24)] = *&v25[*(v26 + 24)];
        (*(v27 + 56))();
      }

      *(a1 + v7[29]) = *(a2 + v7[29]);
      *(a1 + v7[30]) = *(a2 + v7[30]);
      *(a1 + v7[31]) = *(a2 + v7[31]);
      *(a1 + v7[32]) = *(a2 + v7[32]);
      *(a1 + v7[33]) = *(a2 + v7[33]);
      *(a1 + v7[34]) = *(a2 + v7[34]);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_OWORD *assignWithTake for TabContextMenuKey.Storage(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TabContextMenuKey.Storage.Guts(a1, type metadata accessor for TabContextMenuKey.Storage.Guts);
  v4 = type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = type metadata accessor for PlatformItemList.Item(0);
    v8 = *(v7 - 1);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v11 = a2[13];
      a1[12] = a2[12];
      a1[13] = v11;
      a1[14] = a2[14];
      *(a1 + 235) = *(a2 + 235);
      v12 = a2[9];
      a1[8] = a2[8];
      a1[9] = v12;
      v13 = a2[11];
      a1[10] = a2[10];
      a1[11] = v13;
      v14 = a2[5];
      a1[4] = a2[4];
      a1[5] = v14;
      v15 = a2[7];
      a1[6] = a2[6];
      a1[7] = v15;
      v16 = a2[17];
      a1[16] = a2[16];
      a1[17] = v16;
      v17 = a2[23];
      a1[22] = a2[22];
      a1[23] = v17;
      a1[24] = a2[24];
      *(a1 + 50) = *(a2 + 50);
      v18 = a2[19];
      a1[18] = a2[18];
      a1[19] = v18;
      v19 = a2[21];
      a1[20] = a2[20];
      a1[21] = v19;
      v20 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v20;
      *(a1 + 472) = *(a2 + 472);
      v21 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v21;
      a1[30] = a2[30];
      *(a1 + 489) = *(a2 + 489);
      a1[32] = a2[32];
      *(a1 + 528) = *(a2 + 528);
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v22 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v22;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v23 = v7[28];
      v24 = a1 + v23;
      v25 = a2 + v23;
      v26 = type metadata accessor for CommandOperation(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v25, 1, v26))
      {
        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v24, v25, *(*(v28 - 8) + 64));
      }

      else
      {
        *v24 = *v25;
        v29 = *(v26 + 20);
        v30 = &v24[v29];
        v37 = v24;
        v31 = &v25[v29];
        v32 = *&v25[v29 + 16];
        *v30 = *&v25[v29];
        v30[1] = v32;
        v38 = v8;
        v33 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v34 = type metadata accessor for UUID();
        v35 = v30 + v33;
        v36 = &v31[v33];
        v8 = v38;
        (*(*(v34 - 8) + 32))(v35, v36, v34);
        *&v37[*(v26 + 24)] = *&v25[*(v26 + 24)];
        (*(v27 + 56))();
      }

      *(a1 + v7[29]) = *(a2 + v7[29]);
      *(a1 + v7[30]) = *(a2 + v7[30]);
      *(a1 + v7[31]) = *(a2 + v7[31]);
      *(a1 + v7[32]) = *(a2 + v7[32]);
      *(a1 + v7[33]) = *(a2 + v7[33]);
      *(a1 + v7[34]) = *(a2 + v7[34]);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v5 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v5);
}

uint64_t type metadata completion function for TabContextMenuKey.Storage(uint64_t a1)
{
  result = type metadata accessor for TabContextMenuKey.Storage.Guts(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TabContextMenuKey.Storage.Guts(void **a1, void **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_62:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v7 = type metadata accessor for PlatformItemList.Item(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
      goto LABEL_62;
    }

    v111 = v8;
    v112 = v7;
    v10 = *a2;
    v11 = a2[1];
    *a1 = *a2;
    a1[1] = v11;
    v12 = a2[3];
    a1[2] = a2[2];
    a1[3] = v12;
    *(a1 + 32) = *(a2 + 32);
    v13 = a2[6];
    a1[5] = a2[5];
    a1[6] = v13;
    *(a1 + 56) = *(a2 + 56);
    v14 = a2[24];
    v15 = v10;
    v16 = v11;

    if (v14 >> 1 == 4294967294)
    {
      v17 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v17;
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      v18 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v18;
      v19 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v19;
      v20 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v20;
      v21 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v21;
      v22 = a2[33];
      if (v22)
      {
LABEL_9:
        a1[32] = a2[32];
        a1[33] = v22;
        v23 = a2[34];

        if (v23 >= 2)
        {
          v24 = v23;
        }

        a1[34] = v23;
        *(a1 + 70) = *(a2 + 70);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 285) = *(a2 + 285);
        v25 = a2[37];
        a1[36] = a2[36];
        a1[37] = v25;

LABEL_20:
        v36 = a2[42];
        if (v36 >> 2 == 0xFFFFFFFF)
        {
          v37 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v37;
          a1[50] = a2[50];
          v38 = *(a2 + 20);
          *(a1 + 19) = *(a2 + 19);
          *(a1 + 20) = v38;
          v39 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v39;
        }

        else
        {
          v40 = a2[38];
          v41 = a2[39];
          v42 = a2[40];
          v43 = a2[43];
          v44 = a2[44];
          v45 = a2[45];
          v100 = a2[41];
          v101 = a2[46];
          v102 = a2[47];
          v104 = a2[48];
          v106 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v40, v41, v42, v100, v36, v43, v44, v45, v101, v102, v104, v106, __dsta);
          a1[38] = v40;
          a1[39] = v41;
          a1[40] = v42;
          a1[41] = v100;
          a1[42] = v36;
          a1[43] = v43;
          a1[44] = v44;
          a1[45] = v45;
          a1[46] = v101;
          a1[47] = v102;
          a1[48] = v104;
          a1[49] = v106;
          a1[50] = __dsta;
        }

        v46 = a2[52];
        if (v46 == 1)
        {
          v47 = *(a2 + 57);
          *(a1 + 55) = *(a2 + 55);
          *(a1 + 57) = v47;
          *(a1 + 472) = *(a2 + 472);
          v48 = *(a2 + 53);
          *(a1 + 51) = *(a2 + 51);
          *(a1 + 53) = v48;
          goto LABEL_33;
        }

        *(a1 + 102) = *(a2 + 102);
        *(a1 + 412) = *(a2 + 412);
        if (v46)
        {
          v49 = a2[53];
          a1[52] = v46;
          a1[53] = v49;

          v50 = a2[54];
          if (v50)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v50 = a2[54];
          if (v50)
          {
LABEL_27:
            v51 = a2[55];
            a1[54] = v50;
            a1[55] = v51;

            v52 = a2[56];
            if (v52)
            {
LABEL_28:
              v53 = a2[57];
              a1[56] = v52;
              a1[57] = v53;

LABEL_32:
              a1[58] = a2[58];
              *(a1 + 472) = *(a2 + 472);
LABEL_33:
              v54 = a2[61];
              a1[60] = a2[60];
              a1[61] = v54;
              a1[62] = a2[62];
              *(a1 + 504) = *(a2 + 504);
              v55 = a2[64];

              if (v55)
              {
                v56 = a2[65];
                a1[64] = v55;
                a1[65] = v56;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 67, a2 + 67, 0x130uLL);
                goto LABEL_48;
              }

              a1[67] = a2[67];
              a1[68] = a2[68];
              *(a1 + 552) = *(a2 + 552);
              a1[70] = a2[70];
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 36) = *(a2 + 36);
              *(a1 + 592) = *(a2 + 592);
              v57 = a1 + 75;
              v58 = a2 + 75;
              v59 = a2[78];

              if (v59)
              {
                if (v59 == 1)
                {
                  v60 = *(a2 + 77);
                  *v57 = *v58;
                  *(a1 + 77) = v60;
                  *(a1 + 79) = *(a2 + 79);
LABEL_44:
                  a1[81] = a2[81];
                  *(a1 + 656) = *(a2 + 656);
                  v62 = a1 + 83;
                  v63 = a2 + 83;
                  v64 = a2[97];
                  if (v64 == 1)
                  {
                    v65 = *(a2 + 97);
                    *(a1 + 95) = *(a2 + 95);
                    *(a1 + 97) = v65;
                    *(a1 + 99) = *(a2 + 99);
                    *(a1 + 808) = *(a2 + 808);
                    v66 = *(a2 + 89);
                    *(a1 + 87) = *(a2 + 87);
                    *(a1 + 89) = v66;
                    v67 = *(a2 + 93);
                    *(a1 + 91) = *(a2 + 91);
                    *(a1 + 93) = v67;
                    v68 = *(a2 + 85);
                    *v62 = *v63;
                    *(a1 + 85) = v68;
                  }

                  else
                  {
                    *v62 = *v63;
                    *(a1 + 672) = *(a2 + 672);
                    a1[85] = a2[85];
                    *(a1 + 688) = *(a2 + 688);
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = a2[87];
                    v69 = *(a2 + 45);
                    *(a1 + 44) = *(a2 + 44);
                    *(a1 + 45) = v69;
                    a1[92] = a2[92];
                    *(a1 + 372) = *(a2 + 372);
                    *(a1 + 47) = *(a2 + 47);
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = v64;
                    *(a1 + 49) = *(a2 + 49);
                    a1[100] = a2[100];
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = a2[102];
                  a1[103] = a2[103];
                  a1[104] = a2[104];

LABEL_48:
                  v70 = a1 + 105;
                  v71 = a2 + 105;
                  v72 = a2[108];
                  if (v72)
                  {
                    if (v72 == 1)
                    {
                      v73 = *(a2 + 107);
                      *v70 = *v71;
                      *(a1 + 107) = v73;
                      *(a1 + 109) = *(a2 + 109);
                      a1[111] = a2[111];
LABEL_55:
                      v77 = a2[112];
                      a1[112] = v77;
                      a1[113] = a2[113];
                      a1[114] = a2[114];
                      a1[115] = a2[115];
                      a1[116] = a2[116];
                      a1[117] = a2[117];
                      a1[118] = a2[118];
                      *(a1 + 476) = *(a2 + 476);
                      *(a1 + 954) = *(a2 + 954);
                      v78 = v112[28];
                      __dst = a1 + v78;
                      v79 = a2 + v78;
                      v80 = type metadata accessor for CommandOperation(0);
                      v105 = *(v80 - 8);
                      v107 = *(v105 + 48);
                      v81 = v77;

                      if (v107(v79, 1, v80))
                      {
                        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v79, *(*(v82 - 8) + 64));
                        v83 = v112;
                        v84 = v111;
                      }

                      else
                      {
                        *__dst = *v79;
                        v85 = *(v80 + 20);
                        v86 = &__dst[v85];
                        v87 = &v79[v85];
                        v108 = v79;
                        v88 = v80;
                        v89 = *v87;
                        v90 = *(v87 + 1);
                        v91 = v87[16];
                        outlined copy of Text.Storage(*v87, v90, v91);
                        *v86 = v89;
                        *(v86 + 1) = v90;
                        v86[16] = v91;
                        *(v86 + 3) = *(v87 + 3);
                        v92 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v93 = type metadata accessor for UUID();
                        v103 = *(*(v93 - 8) + 16);

                        v103(&v86[v92], &v87[v92], v93);
                        v94 = *(v88 + 24);
                        v95 = &__dst[v94];
                        v96 = &v108[v94];
                        if (*v96)
                        {
                          v97 = v96[1];
                          *v95 = *v96;
                          v95[1] = v97;
                        }

                        else
                        {
                          *v95 = *v96;
                        }

                        v83 = v112;
                        v84 = v111;
                        (*(v105 + 56))(__dst, 0, 1, v88);
                      }

                      *(a1 + v83[29]) = *(a2 + v83[29]);
                      *(a1 + v83[30]) = *(a2 + v83[30]);
                      *(a1 + v83[31]) = *(a2 + v83[31]);
                      *(a1 + v83[32]) = *(a2 + v83[32]);
                      *(a1 + v83[33]) = *(a2 + v83[33]);
                      *(a1 + v83[34]) = *(a2 + v83[34]);
                      v98 = *(v84 + 56);

                      v98(a1, 0, 1, v83);
                      goto LABEL_62;
                    }

                    a1[108] = v72;
                    a1[109] = a2[109];
                    (**(v72 - 1))(v70, v71);
                    v75 = a2[110];
                    if (!v75)
                    {
LABEL_54:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v74 = *(a2 + 107);
                    *v70 = *v71;
                    *(a1 + 107) = v74;
                    a1[109] = a2[109];
                    v75 = a2[110];
                    if (!v75)
                    {
                      goto LABEL_54;
                    }
                  }

                  v76 = a2[111];
                  a1[110] = v75;
                  a1[111] = v76;

                  goto LABEL_55;
                }

                a1[78] = v59;
                a1[79] = a2[79];
                (**(v59 - 1))(a1 + 75, a2 + 75, v59);
              }

              else
              {
                v61 = *(a2 + 77);
                *v57 = *v58;
                *(a1 + 77) = v61;
                a1[79] = a2[79];
              }

              a1[80] = a2[80];

              goto LABEL_44;
            }

LABEL_31:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_32;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v52 = a2[56];
        if (v52)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v26 = *(a2 + 72);
      if (v26 == 255)
      {
        a1[8] = a2[8];
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v27 = a2[8];
        outlined copy of GraphicsImage.Contents(v27, *(a2 + 72));
        a1[8] = v27;
        *(a1 + 72) = v26;
        v14 = a2[24];
      }

      a1[10] = a2[10];
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 19) = *(a2 + 19);
      *(a1 + 84) = *(a2 + 84);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v14 >> 1 == 0xFFFFFFFF)
      {
        v28 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v28;
      }

      else
      {
        v29 = a2[22];
        v30 = a2[23];
        v31 = a2[25];
        outlined copy of AccessibilityImageLabel(v29, v30, v14, v31);
        a1[22] = v29;
        a1[23] = v30;
        a1[24] = v14;
        a1[25] = v31;
      }

      v32 = a2[27];
      a1[26] = a2[26];
      a1[27] = v32;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 232) = *(a2 + 232);
      v33 = a2[30];
      a1[30] = v33;
      *(a1 + 124) = *(a2 + 124);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v34 = v33;
      v22 = a2[33];
      if (v22)
      {
        goto LABEL_9;
      }
    }

    v35 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v35;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_20;
  }

  v6 = *a2;
  *a1 = *a2;
  a1 = &v6[(v5 + 16) & ~v5];

  return a1;
}

double destroy for TabContextMenuKey.Storage.Guts(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v3 = type metadata accessor for PlatformItemList.Item(0);
    if ((*(*(v3 - 8) + 48))(a1, 1, v3))
    {
      return result;
    }

    v5 = *(a1 + 192);
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v7 = *(a1 + 72);
      if (v7 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v7);
        v5 = *(a1 + 192);
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v6 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v5, *(a1 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(a1 + 264))
    {

      v8 = *(a1 + 272);
      if (v8 >= 2)
      {
      }
    }

    v9 = *(a1 + 336);
    if (v9 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v9, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
    }

    v10 = *(a1 + 416);
    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_22;
      }
    }

    if (*(a1 + 432))
    {
    }

    if (*(a1 + 448))
    {
    }

LABEL_22:

    if (*(a1 + 512))
    {
    }

    if (!*(a1 + 816))
    {
LABEL_32:
      v12 = *(a1 + 864);
      if (v12)
      {
        if (v12 == 1)
        {
LABEL_37:

          v13 = a1 + *(v3 + 112);
          v14 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            v15 = v13 + *(v14 + 20);
            outlined consume of Text.Storage(*v15, *(v15 + 8), *(v15 + 16));

            v16 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v17 = type metadata accessor for UUID();
            (*(*(v17 - 8) + 8))(v15 + v16, v17);
            if (*(v13 + *(v14 + 24)))
            {
            }
          }

          goto LABEL_40;
        }

        __swift_destroy_boxed_opaque_existential_1((a1 + 840));
      }

      if (*(a1 + 880))
      {
      }

      goto LABEL_37;
    }

    v11 = *(a1 + 624);
    if (v11)
    {
      if (v11 == 1)
      {
LABEL_29:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 600));
    }

    goto LABEL_29;
  }

LABEL_40:

  return result;
}

void *initializeWithCopy for TabContextMenuKey.Storage.Guts(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;

    goto LABEL_60;
  }

  v5 = type metadata accessor for PlatformItemList.Item(0);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_60;
  }

  v8 = *a2;
  v9 = a2[1];
  *a1 = *a2;
  a1[1] = v9;
  v10 = a2[3];
  a1[2] = a2[2];
  a1[3] = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = a2[6];
  a1[5] = a2[5];
  a1[6] = v11;
  *(a1 + 56) = *(a2 + 56);
  v12 = a2[24];
  v13 = v8;
  v14 = v9;

  if (v12 >> 1 != 4294967294)
  {
    v24 = *(a2 + 72);
    if (v24 == 255)
    {
      a1[8] = a2[8];
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v25 = a2[8];
      outlined copy of GraphicsImage.Contents(v25, *(a2 + 72));
      a1[8] = v25;
      *(a1 + 72) = v24;
      v12 = a2[24];
    }

    a1[10] = a2[10];
    *(a1 + 11) = *(a2 + 11);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v12 >> 1 == 0xFFFFFFFF)
    {
      v26 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v26;
    }

    else
    {
      v27 = a2[22];
      v28 = a2[23];
      v29 = a2[25];
      outlined copy of AccessibilityImageLabel(v27, v28, v12, v29);
      a1[22] = v27;
      a1[23] = v28;
      a1[24] = v12;
      a1[25] = v29;
    }

    v30 = a2[27];
    a1[26] = a2[26];
    a1[27] = v30;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    *(a1 + 232) = *(a2 + 232);
    v31 = a2[30];
    a1[30] = v31;
    *(a1 + 124) = *(a2 + 124);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v32 = v31;
    v20 = a2[33];
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_17:
    v33 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v33;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_18;
  }

  v15 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v15;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v16 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v16;
  v17 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v17;
  v18 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v18;
  v19 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v19;
  v20 = a2[33];
  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_7:
  a1[32] = a2[32];
  a1[33] = v20;
  v21 = a2[34];

  if (v21 >= 2)
  {
    v22 = v21;
  }

  a1[34] = v21;
  *(a1 + 70) = *(a2 + 70);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v23 = a2[37];
  a1[36] = a2[36];
  a1[37] = v23;

LABEL_18:
  v34 = a2[42];
  v110 = v5;
  v109 = v6;
  if (v34 >> 2 == 0xFFFFFFFF)
  {
    v35 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v35;
    a1[50] = a2[50];
    v36 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v36;
    v37 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v37;
  }

  else
  {
    v38 = a2[38];
    v39 = a2[39];
    v40 = a2[40];
    v41 = a2[41];
    v43 = a2[43];
    v42 = a2[44];
    v44 = a2[45];
    v99 = a2[46];
    v100 = a2[47];
    v102 = a2[48];
    v104 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v38, v39, v40, v41, v34, v43, v42, v44, v99, v100, v102, v104, __dsta);
    a1[38] = v38;
    a1[39] = v39;
    a1[40] = v40;
    a1[41] = v41;
    a1[42] = v34;
    a1[43] = v43;
    v5 = v110;
    a1[44] = v42;
    a1[45] = v44;
    a1[46] = v99;
    a1[47] = v100;
    a1[48] = v102;
    a1[49] = v104;
    a1[50] = __dsta;
  }

  v45 = a2[52];
  if (v45 == 1)
  {
    v46 = *(a2 + 57);
    *(a1 + 55) = *(a2 + 55);
    *(a1 + 57) = v46;
    *(a1 + 472) = *(a2 + 472);
    v47 = *(a2 + 53);
    *(a1 + 51) = *(a2 + 51);
    *(a1 + 53) = v47;
    goto LABEL_31;
  }

  *(a1 + 102) = *(a2 + 102);
  *(a1 + 412) = *(a2 + 412);
  if (v45)
  {
    v48 = a2[53];
    a1[52] = v45;
    a1[53] = v48;

    v49 = a2[54];
    if (v49)
    {
      goto LABEL_25;
    }

LABEL_28:
    *(a1 + 27) = *(a2 + 27);
    v51 = a2[56];
    if (v51)
    {
      goto LABEL_26;
    }

LABEL_29:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_30;
  }

  *(a1 + 26) = *(a2 + 26);
  v49 = a2[54];
  if (!v49)
  {
    goto LABEL_28;
  }

LABEL_25:
  v50 = a2[55];
  a1[54] = v49;
  a1[55] = v50;

  v51 = a2[56];
  if (!v51)
  {
    goto LABEL_29;
  }

LABEL_26:
  v52 = a2[57];
  a1[56] = v51;
  a1[57] = v52;

LABEL_30:
  a1[58] = a2[58];
  *(a1 + 472) = *(a2 + 472);
LABEL_31:
  v53 = a2[61];
  a1[60] = a2[60];
  a1[61] = v53;
  a1[62] = a2[62];
  *(a1 + 504) = *(a2 + 504);
  v54 = a2[64];

  if (v54)
  {
    v55 = a2[65];
    a1[64] = v54;
    a1[65] = v55;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 67, a2 + 67, 0x130uLL);
    goto LABEL_46;
  }

  a1[67] = a2[67];
  a1[68] = a2[68];
  *(a1 + 552) = *(a2 + 552);
  a1[70] = a2[70];
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 592) = *(a2 + 592);
  v56 = a1 + 75;
  v57 = a2 + 75;
  v58 = a2[78];

  if (!v58)
  {
    v60 = *(a2 + 77);
    *v56 = *v57;
    *(a1 + 77) = v60;
    a1[79] = a2[79];
LABEL_41:
    a1[80] = a2[80];

    goto LABEL_42;
  }

  if (v58 != 1)
  {
    a1[78] = v58;
    a1[79] = a2[79];
    (**(v58 - 8))(a1 + 75, (a2 + 75), v58);
    goto LABEL_41;
  }

  v59 = *(a2 + 77);
  *v56 = *v57;
  *(a1 + 77) = v59;
  *(a1 + 79) = *(a2 + 79);
LABEL_42:
  a1[81] = a2[81];
  *(a1 + 656) = *(a2 + 656);
  v61 = a1 + 83;
  v62 = a2 + 83;
  v63 = a2[97];
  if (v63 == 1)
  {
    v64 = *(a2 + 97);
    *(a1 + 95) = *(a2 + 95);
    *(a1 + 97) = v64;
    *(a1 + 99) = *(a2 + 99);
    *(a1 + 808) = *(a2 + 808);
    v65 = *(a2 + 89);
    *(a1 + 87) = *(a2 + 87);
    *(a1 + 89) = v65;
    v66 = *(a2 + 93);
    *(a1 + 91) = *(a2 + 91);
    *(a1 + 93) = v66;
    v67 = *(a2 + 85);
    *v61 = *v62;
    *(a1 + 85) = v67;
  }

  else
  {
    *v61 = *v62;
    *(a1 + 672) = *(a2 + 672);
    a1[85] = a2[85];
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    a1[87] = a2[87];
    v68 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v68;
    a1[92] = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    *(a1 + 768) = *(a2 + 768);
    a1[97] = v63;
    *(a1 + 49) = *(a2 + 49);
    a1[100] = a2[100];
    *(a1 + 808) = *(a2 + 808);
  }

  a1[102] = a2[102];
  a1[103] = a2[103];
  a1[104] = a2[104];

LABEL_46:
  v69 = a1 + 105;
  v70 = a2 + 105;
  v71 = a2[108];
  if (!v71)
  {
    v73 = *(a2 + 107);
    *v69 = *v70;
    *(a1 + 107) = v73;
    a1[109] = a2[109];
    v74 = a2[110];
    if (!v74)
    {
LABEL_52:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_53;
    }

LABEL_50:
    v75 = a2[111];
    a1[110] = v74;
    a1[111] = v75;

    goto LABEL_53;
  }

  if (v71 != 1)
  {
    a1[108] = v71;
    a1[109] = a2[109];
    (**(v71 - 8))(v69, v70);
    v74 = a2[110];
    if (!v74)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v72 = *(a2 + 107);
  *v69 = *v70;
  *(a1 + 107) = v72;
  *(a1 + 109) = *(a2 + 109);
  a1[111] = a2[111];
LABEL_53:
  v76 = a2[112];
  a1[112] = v76;
  a1[113] = a2[113];
  a1[114] = a2[114];
  a1[115] = a2[115];
  a1[116] = a2[116];
  a1[117] = a2[117];
  a1[118] = a2[118];
  *(a1 + 476) = *(a2 + 476);
  *(a1 + 954) = *(a2 + 954);
  v77 = *(v5 + 112);
  __dst = a1 + v77;
  v78 = a2 + v77;
  v79 = type metadata accessor for CommandOperation(0);
  v103 = *(v79 - 8);
  v105 = *(v103 + 48);
  v80 = v76;
  v81 = v78;

  if (v105(v78, 1, v79))
  {
    type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    memcpy(__dst, v78, *(*(v82 - 8) + 64));
    v83 = v110;
  }

  else
  {
    *__dst = *v78;
    v84 = *(v79 + 20);
    v85 = v79;
    v86 = &__dst[v84];
    v87 = &v81[v84];
    v106 = v81;
    v88 = *&v81[v84];
    v89 = *(v87 + 1);
    v90 = v87[16];
    outlined copy of Text.Storage(v88, v89, v90);
    *v86 = v88;
    *(v86 + 1) = v89;
    v86[16] = v90;
    *(v86 + 3) = *(v87 + 3);
    v91 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v92 = type metadata accessor for UUID();
    v101 = *(*(v92 - 8) + 16);

    v101(&v86[v91], &v87[v91], v92);
    v93 = *(v85 + 24);
    v94 = &__dst[v93];
    v95 = &v106[v93];
    if (*v95)
    {
      v96 = v95[1];
      *v94 = *v95;
      v94[1] = v96;
    }

    else
    {
      *v94 = *v95;
    }

    v83 = v110;
    (*(v103 + 56))(__dst, 0, 1, v85);
  }

  *(a1 + v83[29]) = *(a2 + v83[29]);
  *(a1 + v83[30]) = *(a2 + v83[30]);
  *(a1 + v83[31]) = *(a2 + v83[31]);
  *(a1 + v83[32]) = *(a2 + v83[32]);
  *(a1 + v83[33]) = *(a2 + v83[33]);
  *(a1 + v83[34]) = *(a2 + v83[34]);
  v97 = *(v109 + 56);

  v97(a1, 0, 1, v83);
LABEL_60:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for TabContextMenuKey.Storage.Guts(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of TabContextMenuKey.Storage.Guts(a1, type metadata accessor for TabContextMenuKey.Storage.Guts);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_61:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v5 = type metadata accessor for PlatformItemList.Item(0);
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(a2, 1, v5))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v7 - 8) + 64));
      goto LABEL_61;
    }

    v129 = v6;
    v8 = *a2;
    *a1 = *a2;
    v9 = a2[1];
    a1[1] = v9;
    a1[2] = a2[2];
    a1[3] = a2[3];
    *(a1 + 32) = *(a2 + 32);
    a1[5] = a2[5];
    a1[6] = a2[6];
    *(a1 + 56) = *(a2 + 56);
    v10 = a2[24];
    v11 = v8;
    v12 = v9;

    if (v10 >> 1 == 4294967294)
    {
      v13 = *(a2 + 4);
      v14 = *(a2 + 5);
      v15 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v15;
      *(a1 + 4) = v13;
      *(a1 + 5) = v14;
      v16 = *(a2 + 8);
      v17 = *(a2 + 9);
      v18 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v18;
      *(a1 + 8) = v16;
      *(a1 + 9) = v17;
      v19 = *(a2 + 12);
      v20 = *(a2 + 13);
      v21 = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 13) = v20;
      *(a1 + 14) = v21;
      *(a1 + 12) = v19;
      if (a2[33])
      {
LABEL_8:
        a1[32] = a2[32];
        a1[33] = a2[33];
        v22 = a2[34];

        if (v22 >= 2)
        {
          v23 = v22;
        }

        a1[34] = v22;
        v24 = *(a2 + 70);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 70) = v24;
        *(a1 + 285) = *(a2 + 285);
        *(a1 + 286) = *(a2 + 286);
        a1[36] = a2[36];
        a1[37] = a2[37];

LABEL_19:
        v41 = a2[42];
        v130 = v5;
        if (v41 >> 2 == 0xFFFFFFFF)
        {
          v42 = *(a2 + 19);
          v43 = *(a2 + 21);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 21) = v43;
          *(a1 + 19) = v42;
          v44 = *(a2 + 22);
          v45 = *(a2 + 23);
          v46 = *(a2 + 24);
          a1[50] = a2[50];
          *(a1 + 23) = v45;
          *(a1 + 24) = v46;
          *(a1 + 22) = v44;
        }

        else
        {
          v47 = a2[38];
          v48 = a2[39];
          v49 = a2[40];
          v50 = a2[41];
          v52 = a2[43];
          v51 = a2[44];
          v53 = a2[45];
          v119 = a2[46];
          v120 = a2[47];
          v122 = a2[48];
          v124 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v47, v48, v49, v50, v41, v52, v51, v53, v119, v120, v122, v124, __dsta);
          a1[38] = v47;
          a1[39] = v48;
          a1[40] = v49;
          a1[41] = v50;
          a1[42] = v41;
          a1[43] = v52;
          v5 = v130;
          a1[44] = v51;
          a1[45] = v53;
          a1[46] = v119;
          a1[47] = v120;
          a1[48] = v122;
          a1[49] = v124;
          a1[50] = __dsta;
        }

        if (a2[52] == 1)
        {
          *(a1 + 51) = *(a2 + 51);
          v54 = *(a2 + 53);
          v55 = *(a2 + 55);
          v56 = *(a2 + 57);
          *(a1 + 472) = *(a2 + 472);
          *(a1 + 55) = v55;
          *(a1 + 57) = v56;
          *(a1 + 53) = v54;
          goto LABEL_32;
        }

        *(a1 + 408) = *(a2 + 408);
        *(a1 + 409) = *(a2 + 409);
        *(a1 + 410) = *(a2 + 410);
        *(a1 + 411) = *(a2 + 411);
        *(a1 + 412) = *(a2 + 412);
        v57 = a2[52];
        if (v57)
        {
          v58 = a2[53];
          a1[52] = v57;
          a1[53] = v58;

          v59 = a2[54];
          if (v59)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v59 = a2[54];
          if (v59)
          {
LABEL_26:
            v60 = a2[55];
            a1[54] = v59;
            a1[55] = v60;

            v61 = a2[56];
            if (v61)
            {
LABEL_27:
              v62 = a2[57];
              a1[56] = v61;
              a1[57] = v62;

LABEL_31:
              a1[58] = a2[58];
              *(a1 + 472) = *(a2 + 472);
LABEL_32:
              a1[60] = a2[60];
              a1[61] = a2[61];
              a1[62] = a2[62];
              *(a1 + 504) = *(a2 + 504);
              v63 = a2[64];

              if (v63)
              {
                v64 = a2[65];
                a1[64] = v63;
                a1[65] = v64;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 67, a2 + 67, 0x130uLL);
                goto LABEL_47;
              }

              a1[67] = a2[67];
              a1[68] = a2[68];
              *(a1 + 552) = *(a2 + 552);
              a1[70] = a2[70];
              *(a1 + 568) = *(a2 + 568);
              v65 = *(a2 + 36);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 36) = v65;
              v66 = a1 + 75;
              v67 = a2 + 75;
              v68 = a2[78];

              if (v68)
              {
                if (v68 == 1)
                {
                  v69 = *v67;
                  v70 = *(a2 + 79);
                  *(a1 + 77) = *(a2 + 77);
                  *(a1 + 79) = v70;
                  *v66 = v69;
LABEL_43:
                  v73 = a2[81];
                  *(a1 + 656) = *(a2 + 656);
                  a1[81] = v73;
                  v74 = a1 + 83;
                  v75 = a2 + 83;
                  if (a2[97] == 1)
                  {
                    v76 = *(a2 + 85);
                    *v74 = *v75;
                    *(a1 + 85) = v76;
                    v77 = *(a2 + 87);
                    v78 = *(a2 + 89);
                    v79 = *(a2 + 93);
                    *(a1 + 91) = *(a2 + 91);
                    *(a1 + 93) = v79;
                    *(a1 + 87) = v77;
                    *(a1 + 89) = v78;
                    v80 = *(a2 + 95);
                    v81 = *(a2 + 97);
                    v82 = *(a2 + 99);
                    *(a1 + 808) = *(a2 + 808);
                    *(a1 + 97) = v81;
                    *(a1 + 99) = v82;
                    *(a1 + 95) = v80;
                  }

                  else
                  {
                    v83 = *v75;
                    *(a1 + 672) = *(a2 + 672);
                    *v74 = v83;
                    v84 = a2[85];
                    *(a1 + 688) = *(a2 + 688);
                    a1[85] = v84;
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 690) = *(a2 + 690);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    a1[87] = a2[87];
                    a1[88] = a2[88];
                    a1[89] = a2[89];
                    a1[90] = a2[90];
                    a1[91] = a2[91];
                    a1[92] = a2[92];
                    *(a1 + 744) = *(a2 + 744);
                    *(a1 + 745) = *(a2 + 745);
                    a1[94] = a2[94];
                    a1[95] = a2[95];
                    *(a1 + 768) = *(a2 + 768);
                    a1[97] = a2[97];
                    v85 = *(a2 + 49);
                    a1[100] = a2[100];
                    *(a1 + 49) = v85;
                    *(a1 + 808) = *(a2 + 808);
                  }

                  a1[102] = a2[102];
                  a1[103] = a2[103];
                  a1[104] = a2[104];

LABEL_47:
                  v86 = a1 + 105;
                  v87 = a2 + 105;
                  v88 = a2[108];
                  if (v88)
                  {
                    if (v88 == 1)
                    {
                      v89 = *v87;
                      v90 = *(a2 + 107);
                      v91 = *(a2 + 109);
                      a1[111] = a2[111];
                      *(a1 + 107) = v90;
                      *(a1 + 109) = v91;
                      *v86 = v89;
LABEL_54:
                      v96 = a2[112];
                      a1[112] = v96;
                      a1[113] = a2[113];
                      a1[114] = a2[114];
                      a1[115] = a2[115];
                      a1[116] = a2[116];
                      a1[117] = a2[117];
                      a1[118] = a2[118];
                      *(a1 + 952) = *(a2 + 952);
                      *(a1 + 953) = *(a2 + 953);
                      *(a1 + 954) = *(a2 + 954);
                      v97 = *(v5 + 112);
                      __dst = a1 + v97;
                      v98 = a2 + v97;
                      v99 = type metadata accessor for CommandOperation(0);
                      v123 = *(v99 - 8);
                      v125 = *(v123 + 48);
                      v100 = v96;
                      v101 = v98;

                      if (v125(v98, 1, v99))
                      {
                        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v98, *(*(v102 - 8) + 64));
                        v103 = v130;
                      }

                      else
                      {
                        *__dst = *v98;
                        v104 = *(v99 + 20);
                        v105 = v99;
                        v106 = &__dst[v104];
                        v107 = &v101[v104];
                        v126 = v101;
                        v108 = *&v101[v104];
                        v109 = *(v107 + 1);
                        v110 = v107[16];
                        outlined copy of Text.Storage(v108, v109, v110);
                        *v106 = v108;
                        *(v106 + 1) = v109;
                        v106[16] = v110;
                        *(v106 + 3) = *(v107 + 3);
                        v111 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v112 = type metadata accessor for UUID();
                        v121 = *(*(v112 - 8) + 16);

                        v121(&v106[v111], &v107[v111], v112);
                        v113 = *(v105 + 24);
                        v114 = &__dst[v113];
                        v115 = &v126[v113];
                        if (*v115)
                        {
                          v116 = v115[1];
                          *v114 = *v115;
                          v114[1] = v116;
                        }

                        else
                        {
                          *v114 = *v115;
                        }

                        v103 = v130;
                        (*(v123 + 56))(__dst, 0, 1, v105);
                      }

                      *(a1 + v103[29]) = *(a2 + v103[29]);
                      *(a1 + v103[30]) = *(a2 + v103[30]);
                      *(a1 + v103[31]) = *(a2 + v103[31]);
                      *(a1 + v103[32]) = *(a2 + v103[32]);
                      *(a1 + v103[33]) = *(a2 + v103[33]);
                      *(a1 + v103[34]) = *(a2 + v103[34]);
                      v117 = *(v129 + 56);

                      v117(a1, 0, 1, v103);
                      goto LABEL_61;
                    }

                    a1[108] = v88;
                    a1[109] = a2[109];
                    (**(v88 - 1))(v86, v87);
                    v94 = a2[110];
                    if (!v94)
                    {
LABEL_53:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    v92 = *v87;
                    v93 = *(a2 + 107);
                    a1[109] = a2[109];
                    *v86 = v92;
                    *(a1 + 107) = v93;
                    v94 = a2[110];
                    if (!v94)
                    {
                      goto LABEL_53;
                    }
                  }

                  v95 = a2[111];
                  a1[110] = v94;
                  a1[111] = v95;

                  goto LABEL_54;
                }

                a1[78] = v68;
                a1[79] = a2[79];
                (**(v68 - 1))(a1 + 75, a2 + 75, v68);
              }

              else
              {
                v71 = *v67;
                v72 = *(a2 + 77);
                a1[79] = a2[79];
                *v66 = v71;
                *(a1 + 77) = v72;
              }

              a1[80] = a2[80];

              goto LABEL_43;
            }

LABEL_30:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_31;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v61 = a2[56];
        if (v61)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v25 = *(a2 + 72);
      if (v25 == 255)
      {
        v27 = a2[8];
        *(a1 + 72) = *(a2 + 72);
        a1[8] = v27;
      }

      else
      {
        v26 = a2[8];
        outlined copy of GraphicsImage.Contents(v26, *(a2 + 72));
        a1[8] = v26;
        *(a1 + 72) = v25;
      }

      a1[10] = a2[10];
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
      v28 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v28;
      v29 = *(a2 + 17);
      v30 = *(a2 + 19);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 19) = v30;
      *(a1 + 17) = v29;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v31 = a2[24];
      if (v31 >> 1 == 0xFFFFFFFF)
      {
        v32 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v32;
      }

      else
      {
        v33 = a2[22];
        v34 = a2[23];
        v35 = a2[25];
        outlined copy of AccessibilityImageLabel(v33, v34, a2[24], v35);
        a1[22] = v33;
        a1[23] = v34;
        a1[24] = v31;
        a1[25] = v35;
      }

      a1[26] = a2[26];
      a1[27] = a2[27];
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v36 = *(a2 + 57);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 57) = v36;
      v37 = a2[30];
      a1[30] = v37;
      *(a1 + 124) = *(a2 + 124);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v38 = v37;
      if (a2[33])
      {
        goto LABEL_8;
      }
    }

    v39 = *(a2 + 16);
    v40 = *(a2 + 18);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 18) = v40;
    *(a1 + 16) = v39;
    goto LABEL_19;
  }

  return a1;
}

_OWORD *initializeWithTake for TabContextMenuKey.Storage.Guts(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for PlatformItemList.Item(0);
    v9 = *(v8 - 1);
    if ((*(v9 + 48))(a2, 1, v8))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v12 = a2[13];
      a1[12] = a2[12];
      a1[13] = v12;
      a1[14] = a2[14];
      *(a1 + 235) = *(a2 + 235);
      v13 = a2[9];
      a1[8] = a2[8];
      a1[9] = v13;
      v14 = a2[11];
      a1[10] = a2[10];
      a1[11] = v14;
      v15 = a2[5];
      a1[4] = a2[4];
      a1[5] = v15;
      v16 = a2[7];
      a1[6] = a2[6];
      a1[7] = v16;
      v17 = a2[17];
      a1[16] = a2[16];
      a1[17] = v17;
      v18 = a2[23];
      a1[22] = a2[22];
      a1[23] = v18;
      a1[24] = a2[24];
      *(a1 + 50) = *(a2 + 50);
      v19 = a2[19];
      a1[18] = a2[18];
      a1[19] = v19;
      v20 = a2[21];
      a1[20] = a2[20];
      a1[21] = v20;
      v21 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v21;
      *(a1 + 472) = *(a2 + 472);
      v22 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v22;
      a1[30] = a2[30];
      *(a1 + 489) = *(a2 + 489);
      a1[32] = a2[32];
      *(a1 + 528) = *(a2 + 528);
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v23 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v23;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v24 = v8[28];
      v25 = a1 + v24;
      v26 = a2 + v24;
      v27 = type metadata accessor for CommandOperation(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27))
      {
        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v25, v26, *(*(v29 - 8) + 64));
      }

      else
      {
        *v25 = *v26;
        v30 = *(v27 + 20);
        v31 = &v25[v30];
        v38 = v25;
        v32 = &v26[v30];
        v33 = *&v26[v30 + 16];
        *v31 = *&v26[v30];
        v31[1] = v33;
        v39 = v9;
        v34 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v35 = type metadata accessor for UUID();
        v36 = v31 + v34;
        v37 = &v32[v34];
        v9 = v39;
        (*(*(v35 - 8) + 32))(v36, v37, v35);
        *&v38[*(v27 + 24)] = *&v26[*(v27 + 24)];
        (*(v28 + 56))();
      }

      *(a1 + v8[29]) = *(a2 + v8[29]);
      *(a1 + v8[30]) = *(a2 + v8[30]);
      *(a1 + v8[31]) = *(a2 + v8[31]);
      *(a1 + v8[32]) = *(a2 + v8[32]);
      *(a1 + v8[33]) = *(a2 + v8[33]);
      *(a1 + v8[34]) = *(a2 + v8[34]);
      (*(v9 + 56))(a1, 0, 1, v8);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_OWORD *assignWithTake for TabContextMenuKey.Storage.Guts(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TabContextMenuKey.Storage.Guts(a1, type metadata accessor for TabContextMenuKey.Storage.Guts);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for PlatformItemList.Item(0);
    v9 = *(v8 - 1);
    if ((*(v9 + 48))(a2, 1, v8))
    {
      type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v12 = a2[13];
      a1[12] = a2[12];
      a1[13] = v12;
      a1[14] = a2[14];
      *(a1 + 235) = *(a2 + 235);
      v13 = a2[9];
      a1[8] = a2[8];
      a1[9] = v13;
      v14 = a2[11];
      a1[10] = a2[10];
      a1[11] = v14;
      v15 = a2[5];
      a1[4] = a2[4];
      a1[5] = v15;
      v16 = a2[7];
      a1[6] = a2[6];
      a1[7] = v16;
      v17 = a2[17];
      a1[16] = a2[16];
      a1[17] = v17;
      v18 = a2[23];
      a1[22] = a2[22];
      a1[23] = v18;
      a1[24] = a2[24];
      *(a1 + 50) = *(a2 + 50);
      v19 = a2[19];
      a1[18] = a2[18];
      a1[19] = v19;
      v20 = a2[21];
      a1[20] = a2[20];
      a1[21] = v20;
      v21 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v21;
      *(a1 + 472) = *(a2 + 472);
      v22 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v22;
      a1[30] = a2[30];
      *(a1 + 489) = *(a2 + 489);
      a1[32] = a2[32];
      *(a1 + 528) = *(a2 + 528);
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v23 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v23;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 953) = *(a2 + 953);
      v24 = v8[28];
      v25 = a1 + v24;
      v26 = a2 + v24;
      v27 = type metadata accessor for CommandOperation(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27))
      {
        type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v25, v26, *(*(v29 - 8) + 64));
      }

      else
      {
        *v25 = *v26;
        v30 = *(v27 + 20);
        v31 = &v25[v30];
        v38 = v25;
        v32 = &v26[v30];
        v33 = *&v26[v30 + 16];
        *v31 = *&v26[v30];
        v31[1] = v33;
        v39 = v9;
        v34 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v35 = type metadata accessor for UUID();
        v36 = v31 + v34;
        v37 = &v32[v34];
        v9 = v39;
        (*(*(v35 - 8) + 32))(v36, v37, v35);
        *&v38[*(v27 + 24)] = *&v26[*(v27 + 24)];
        (*(v28 + 56))();
      }

      *(a1 + v8[29]) = *(a2 + v8[29]);
      *(a1 + v8[30]) = *(a2 + v8[30]);
      *(a1 + v8[31]) = *(a2 + v8[31]);
      *(a1 + v8[32]) = *(a2 + v8[32]);
      *(a1 + v8[33]) = *(a2 + v8[33]);
      *(a1 + v8[34]) = *(a2 + v8[34]);
      (*(v9 + 56))(a1, 0, 1, v8);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void type metadata completion function for TabContextMenuKey.Storage.Guts(uint64_t a1)
{
  type metadata accessor for TabContextMenuKey.Storage?(319, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

void type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SwipeActionsUseTraitKeyInput>, lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput, &type metadata for SwipeActionsUseTraitKeyInput, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t static PlatformItemContextMenuModifier._makeViewList(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a3;
  v51 = *MEMORY[0x1E69E9840];
  v35 = *a1;
  type metadata accessor for PlatformItemContextMenuModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a5 - 8) + 64))
  {
    closure #1 in static PlatformItemContextMenuModifier._makeViewList(modifier:inputs:body:)(1, a5, a6, v9);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v11 = a2[1];
  v44[0] = *a2;
  v44[1] = v11;
  v13 = *a2;
  v12 = a2[1];
  v44[2] = a2[2];
  v38 = v13;
  v39 = v12;
  v40 = a2[2];
  outlined init with copy of _GraphInputs(v44, &v45);
  _ViewInputs.init(withoutGeometry:)();
  v14 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v45, 1, &v38);
  MEMORY[0x1EEE9AC00](v14);
  *&v45 = &type metadata for AllPlatformItemListFlags;
  *(&v45 + 1) = a5;
  *&v46 = &protocol witness table for AllPlatformItemListFlags;
  *(&v46 + 1) = a6;
  v15 = type metadata accessor for PlatformItemListGenerator(0, &v45);
  v31 = v15;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v15);
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v38, closure #1 in Attribute.init<A>(_:)partial apply, v30, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  v49 = v42;
  v50[0] = v43[0];
  *(v50 + 12) = *(v43 + 12);
  v45 = v38;
  v46 = v39;
  v47 = v40;
  v48 = v41;
  (*(*(v15 - 8) + 8))(&v45, v15);
  v18 = v36;
  outlined init with copy of _ViewListInputs(a2, &v38);
  if (*(&v42 + 1))
  {
    v36 = *(&v42 + 1);
    LOBYTE(v37) = v43[0] & 1;
    *(&v42 + 1) = 0;
    LOBYTE(v43[0]) = 0;
    specialized Set._Variant.insert(_:)(&v34, &type metadata for TabContextMenuKey);
    v19 = v36;
    v20 = v37;

    *(&v42 + 1) = v19;
    LOBYTE(v43[0]) = v20;
  }

  if (one-time initialization token for menuOrder != -1)
  {
    swift_once();
  }

  v34 = static CachedEnvironment.ID.menuOrder;
  swift_beginAccess();
  v21 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v22 = _ViewListInputs.traits.getter();
  v23 = *MEMORY[0x1E698D3F8];
  if ((v22 & 0x100000000) == 0)
  {
    v23 = v22;
  }

  v36 = __PAIR64__(v21, v18);
  v37 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = type metadata accessor for PlatformItemContextMenuModifier.WriteTrait(0, a5, a6, v24);
  v31 = v25;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemContextMenuModifier<A>.WriteTrait, v25);
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v36, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21, v30, v25, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  LOBYTE(v36) = 0;
  v28 = _ViewListInputs.traits.setter();
  v33(v28, &v38);
  return outlined destroy of _ViewListInputs(&v38);
}

uint64_t closure #1 in static PlatformItemContextMenuModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for PlatformItemContextMenuModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t PlatformItemContextMenuModifier.WriteTrait.value.getter@<X0>(unint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v43 = a1;
  v48 = a3;
  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v40 - v4;
  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for TabContextMenuKey.Storage?, type metadata accessor for TabContextMenuKey.Storage);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v40 - v6;
  v7 = type metadata accessor for PlatformItemList.Item(0);
  v44 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *AGGraphGetValue();
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v69);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9[32] = 0;
  *(v9 + 3) = 0;
  *(v9 + 8) = 0u;
  *(v9 + 5) = -1;
  v9[56] = 1;
  v10 = v78;
  *(v9 + 12) = v77;
  *(v9 + 13) = v10;
  *(v9 + 14) = v79[0];
  *(v9 + 235) = *(v79 + 11);
  v11 = v74;
  *(v9 + 8) = v73;
  *(v9 + 9) = v11;
  v12 = v76;
  *(v9 + 10) = v75;
  *(v9 + 11) = v12;
  v13 = v70;
  *(v9 + 4) = v69;
  *(v9 + 5) = v13;
  v14 = v72;
  *(v9 + 6) = v71;
  *(v9 + 7) = v14;
  *(v9 + 19) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 17) = 0u;
  *(v9 + 18) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 42) = 0x3FFFFFFFCLL;
  *(v9 + 344) = 0u;
  *(v9 + 360) = 0u;
  *(v9 + 376) = 0u;
  *(v9 + 392) = 0u;
  *(v9 + 51) = 0;
  *(v9 + 52) = 1;
  *(v9 + 424) = 0u;
  *(v9 + 440) = 0u;
  *(v9 + 456) = 0u;
  v9[472] = 0;
  *(v9 + 60) = 0;
  *(v9 + 488) = 0u;
  v9[504] = 0;
  *(v9 + 32) = 0u;
  v9[528] = 4;
  *(v9 + 536) = 0u;
  *(v9 + 552) = 0u;
  *(v9 + 568) = 0u;
  *(v9 + 584) = 0u;
  *(v9 + 600) = 0u;
  *(v9 + 616) = 0u;
  *(v9 + 632) = 0u;
  *(v9 + 648) = 0u;
  *(v9 + 664) = 0u;
  *(v9 + 680) = 0u;
  *(v9 + 696) = 0u;
  *(v9 + 712) = 0u;
  *(v9 + 728) = 0u;
  *(v9 + 744) = 0u;
  *(v9 + 760) = 0u;
  *(v9 + 776) = 0u;
  *(v9 + 792) = 0u;
  *(v9 + 808) = 0u;
  *(v9 + 824) = 0u;
  *(v9 + 840) = 0u;
  *(v9 + 107) = 0;
  *(v9 + 108) = 1;
  *(v9 + 118) = 0;
  *(v9 + 872) = 0u;
  *(v9 + 888) = 0u;
  *(v9 + 904) = 0u;
  *(v9 + 920) = 0u;
  *(v9 + 953) = 773;
  v15 = v7[28];
  v16 = type metadata accessor for CommandOperation(0);
  (*(*(v16 - 8) + 56))(&v9[v15], 1, 1, v16);
  v9[v7[29]] = 0;
  v9[v7[30]] = 0;
  v9[v7[31]] = 2;
  v41 = v7[32];
  v9[v41] = 0;
  v9[v7[33]] = 0;
  v40 = v7[34];
  *v9 = 0;
  v17 = *(v9 + 13);
  v80[8] = *(v9 + 12);
  v80[9] = v17;
  v81[0] = *(v9 + 14);
  *(v81 + 11) = *(v9 + 235);
  v18 = *(v9 + 9);
  v80[4] = *(v9 + 8);
  v80[5] = v18;
  v19 = *(v9 + 11);
  v80[6] = *(v9 + 10);
  v80[7] = v19;
  v20 = *(v9 + 5);
  v80[0] = *(v9 + 4);
  v80[1] = v20;
  v21 = *(v9 + 7);
  v80[2] = *(v9 + 6);
  v80[3] = v21;
  v22 = v42;

  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_2(v80, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v23 = v78;
  *(v9 + 12) = v77;
  *(v9 + 13) = v23;
  *(v9 + 14) = v79[0];
  *(v9 + 235) = *(v79 + 11);
  v24 = v74;
  *(v9 + 8) = v73;
  *(v9 + 9) = v24;
  v25 = v76;
  *(v9 + 10) = v75;
  *(v9 + 11) = v25;
  v26 = v70;
  *(v9 + 4) = v69;
  *(v9 + 5) = v26;
  v27 = v72;
  *(v9 + 6) = v71;
  *(v9 + 7) = v27;
  v28 = *(v9 + 456);
  v82[2] = *(v9 + 440);
  v82[3] = v28;
  v83 = v9[472];
  v29 = *(v9 + 424);
  v82[0] = *(v9 + 408);
  v82[1] = v29;
  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_2(v82, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v9 + 408) = xmmword_18CD633F0;
  *(v9 + 424) = 0u;
  *(v9 + 440) = 0u;
  *(v9 + 456) = 0u;
  v9[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(&v50, (v9 + 536));
  *&v9[v40] = 0;
  *(v9 + 6) = 0;
  *(v9 + 117) = v22;
  v9[952] = 0;
  v30 = *(v9 + 24);
  v54 = *(v9 + 23);
  v55 = v30;
  *&v56 = *(v9 + 50);
  v31 = *(v9 + 20);
  v50 = *(v9 + 19);
  v51 = v31;
  v32 = *(v9 + 22);
  v52 = *(v9 + 21);
  v53 = v32;
  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_2(&v50, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  *(v9 + 19) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 42) = 0x3FFFFFFFCLL;
  *(v9 + 344) = 0u;
  *(v9 + 360) = 0u;
  *(v9 + 376) = 0u;
  *(v9 + 392) = 0u;
  Value = AGGraphGetValue();
  v34 = v45;
  v9[v41] = *Value;
  if (*MEMORY[0x1E698D3F8] == v34 || (AGGraphGetValue(), (v35 = ) == 0))
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v49 = v35;
  }

  v36 = v46;
  outlined init with copy of PlatformItemList.Item(v9, v46);
  (*(v44 + 56))(v36, 0, 1, v7);
  v37 = v47;
  outlined init with take of PlatformItemList.Item?(v36, v47);
  type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  swift_storeEnumTagMultiPayload();
  v38 = type metadata accessor for TabContextMenuKey.Storage(0);
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  ViewTraitCollection.subscript.setter();
  result = outlined destroy of TabContextMenuKey.Storage.Guts(v9, type metadata accessor for PlatformItemList.Item);
  *v48 = v49;
  return result;
}

uint64_t outlined destroy of TabContextMenuKey.Storage.Guts(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(*v3 + 88))();
  v8 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(*v3 + 96);
    v10 = 1;
    while (v8 != v9())
    {
      (*(*v3 + 104))(v13, v8);
      v8 = (*(*v3 + 120))(v8);
      v11 = v13[1];
      *a2 = v13[0];
      *(a2 + 16) = v11;
      *(a2 + 32) = v14;
      if (a3 == v10)
      {
        goto LABEL_12;
      }

      a2 += 40;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v10 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = a4 + 32;
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        result = outlined init with copy of FocusStoreList.Item(v10, v8);
        if (v11 == v9)
        {
          goto LABEL_11;
        }

        v8 += 72;
        ++v9;
        v10 += 72;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, _OWORD *a2, uint64_t a3)
{
  result = (*(*v3 + 88))();
  v8 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(*v3 + 96);
    v10 = 1;
    while (v8 != v9())
    {
      (*(*v3 + 104))(&v13, v8);
      v8 = (*(*v3 + 120))(v8);
      v11 = v14[0];
      *a2 = v13;
      a2[1] = v11;
      *(a2 + 25) = *(v14 + 9);
      if (a3 == v10)
      {
        goto LABEL_12;
      }

      a2 += 3;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v10 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = result;
  v7 = *(a4 + 16);
  if (!a2)
  {
    v14 = *(a4 + 16);
    v7 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v7 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      v9 = a2;
      v10 = 0;
      while (v7 + v10 <= *(a4 + 16))
      {
        v11 = type metadata accessor for IntelligenceElement();
        v12 = *(v11 - 8);
        v13 = *(v12 + 72);
        result = (*(v12 + 16))(v9, a4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v13 * (v7 + v10 - 1), v11);
        if (a3 + v10 == 1)
        {
          v14 = v7 + v10 - 1;
          goto LABEL_13;
        }

        v9 += v13;
        --v10;
        if (!(v7 + v10))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v14 = 0;
LABEL_14:
    *v6 = a4;
    v6[1] = v14;
    return v7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t static TableColumnContent._tableColumnCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v3;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 72))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t _s7SwiftUI18TableColumnContentPAA0cD4Body_0cD14SortComparatorQZAERtzAD_0C8RowValueQZAHRtzrlE05_makeE07content6inputsAA01_cD7OutputsVAA06_GraphJ0VyxG_AA01_cD6InputsVtFZs5NeverO_Tt2B5(int a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E73E0];
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for Map<Never, Never>, v3, v3, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<Never, Never> and conformance Map<A, B>();
  v4 = Attribute.init<A>(body:value:flags:update:)();

  return _s7SwiftUI18TableColumnContentPAA0cD4Body_0cD14SortComparatorQZAERtzAD_0C8RowValueQZAHRtzrlE05_makeE07content6inputsAA01_cD7OutputsVAA06_GraphJ0VyxG_AA01_cD6InputsVtFZs5NeverO_Tt2B5(v4, a2);
}

uint64_t static TableColumnContent<>._makeContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v6;
  v22[4] = *(a2 + 64);
  v23 = *(a2 + 80);
  v7 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _GraphValue();
  v20 = a3;
  v21 = a4;
  v13 = _GraphValue.value.getter();
  v14 = partial apply for specialized closure #1 in Attribute.subscript.getter;
  KeyPath = swift_getKeyPath();
  v17 = AssociatedTypeWitness;
  v18 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v18);
  v9 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v16, v18, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

  _GraphValue.init(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 64))(&v13, v22, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t protocol witness for static TableColumnContent._makeContent(content:inputs:) in conformance Never(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI18TableColumnContentPAA0cD4Body_0cD14SortComparatorQZAERtzAD_0C8RowValueQZAHRtzrlE05_makeE07content6inputsAA01_cD7OutputsVAA06_GraphJ0VyxG_AA01_cD6InputsVtFZs5NeverO_Tt2B5(v2, v6);
}

double protocol witness for static TupleDescriptor.typeCache.getter in conformance TableColumnDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance TableColumnDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TableColumnDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance TableColumnDescriptor(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

uint64_t TableColumnListKey.ConcatenatedTableColumnList.count.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of _Benchmark(i, v8);
      v4 = v9;
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      result = (*(v5 + 8))(v4, v5);
      v7 = __OFADD__(v2, result);
      v2 += result;
      if (v7)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v8);
      if (!--v1)
      {
        return v2;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t TableColumnListKey.ConcatenatedTableColumnList.visitColumns<A>(applying:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 1;
  }

  v8 = 0;
  v9 = *a2;
  for (i = a3 + 32; ; i += 40)
  {
    outlined init with copy of _Benchmark(i, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    result = (*(v12 + 8))(v11, v12);
    v14 = v8 + result;
    if (__OFADD__(v8, result))
    {
      break;
    }

    if (v9 < v14)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_12;
      }

      v18 = (v9 - v8) & ~((v9 - v8) >> 63);
      v15 = v20;
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if (((*(v16 + 16))(a1, &v18, a4, a5, v15, v16) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v19);
        return 0;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v8 = v14;
    if (!--v5)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance TableColumnListKey(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v7);
  a2(v6, v4);
  result = specialized TableColumnListKey.ConcatenatedTableColumnList.init(_:_:)(v7, v6);
  *(a1 + 24) = &unk_1EFFEB4D0;
  *(a1 + 32) = &protocol witness table for TableColumnListKey.ConcatenatedTableColumnList;
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TableColumnID()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnID(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int __swiftcall AnyTableColumnIDs.index(before:)(Swift::Int before)
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall AnyTableColumnIDs.index(after:)(Swift::Int after)
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance AnyTableColumnIDs@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 112))(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance AnyTableColumnIDs(uint64_t *a1)
{
  result = (*(**v1 + 112))(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 88))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnyTableColumnIDs(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  (*(**v2 + 104))(*a2);
  return protocol witness for Collection.subscript.read in conformance AnyTableColumnIDs;
}

void protocol witness for Collection.subscript.read in conformance AnyTableColumnIDs(void **a1)
{
  v1 = *a1;
  outlined destroy of AccessibilityRelationshipScope.Key(*a1);

  free(v1);
}

void protocol witness for Collection.subscript.getter in conformance AnyTableColumnIDs(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = (*(*v6 + 88))();
  v8 = (*(*v6 + 96))();
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

uint64_t protocol witness for Collection.indices.getter in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = (*(*v3 + 88))();
  result = (*(*v3 + 96))();
  if (result < v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance AnyTableColumnIDs@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    v7 = (*(*v6 + 88))();
    result = (*(*v6 + 96))();
    if (v5 >= v7 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance AnyTableColumnIDs@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance AnyTableColumnIDs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  v6 = *(*v5 + 88);
  v7 = v6();
  v8 = *(*v5 + 96);
  result = v8();
  if (v3 < v7 || result < v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = (v6)(result);
  result = v8();
  if (v4 < v11 || result < v4)
  {
    goto LABEL_12;
  }

  result = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance AnyTableColumnIDs@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 120))(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance AnyTableColumnIDs(uint64_t *a1)
{
  result = (*(**v1 + 120))(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AnyTableColumnIDs@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = (*(*v3 + 88))();
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AnyTableColumnIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyTableColumnIDs, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AnyTableColumnIDs()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t WrappedTableColumnIDs.startIndex.getter(void (*a1)(uint64_t *__return_ptr, uint64_t, void))
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + *(v3 + 144), v4, v6);
  a1(&v11, v4, *(*(*(v3 + 136) + 8) + 8));
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t WrappedTableColumnIDs.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 128);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15[-v9 - 8];
  (*(v7 + 16))(&v15[-v9 - 8], v2 + *(v5 + 144), v6, v8);
  v16 = a1;
  v11 = dispatch thunk of Collection.subscript.read();
  outlined init with copy of DropInfo(v12, a2);
  v11(v15, 0);
  return (*(v7 + 8))(v10, v6);
}

Swift::Int __swiftcall WrappedTableColumnIDs.index(before:)(Swift::Int before)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](before);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, v1 + *(v3 + 144), v4, v6);
  v10[0] = before;
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v5 + 8))(v8, v4);
  return v10[1];
}

Swift::Int __swiftcall WrappedTableColumnIDs.index(after:)(Swift::Int after)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](after);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, v1 + *(v3 + 144), v4, v6);
  v10[0] = after;
  dispatch thunk of Collection.index(after:)();
  (*(v5 + 8))(v8, v4);
  return v10[1];
}

__n128 static TableColumnConfiguration.Key.value(in:)@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = MEMORY[0x1E697FE38];
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDefaultVisibilityKey>, &type metadata for TableColumnDefaultVisibilityKey, &protocol witness table for TableColumnDefaultVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnDefaultVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDefaultVisibilityKey>, &type metadata for TableColumnDefaultVisibilityKey, &protocol witness table for TableColumnDefaultVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();

    v4 = v12.n128_u8[0];
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnCustomizationIDKey>, &type metadata for TableColumnCustomizationIDKey, &protocol witness table for TableColumnCustomizationIDKey, v3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnCustomizationIDKey>, &type metadata for TableColumnCustomizationIDKey, &protocol witness table for TableColumnCustomizationIDKey);

    PropertyList.Tracker.value<A>(_:for:)();

    v8 = v12;
    v9 = v13;
    v5 = v14;
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey>, &type metadata for TableColumnDisabledCustomizationBehaviorKey, &protocol witness table for TableColumnDisabledCustomizationBehaviorKey, v3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey>, &type metadata for TableColumnDisabledCustomizationBehaviorKey, &protocol witness table for TableColumnDisabledCustomizationBehaviorKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v6 = MEMORY[0x1E697FE38];
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDefaultVisibilityKey>, &type metadata for TableColumnDefaultVisibilityKey, &protocol witness table for TableColumnDefaultVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnDefaultVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDefaultVisibilityKey>, &type metadata for TableColumnDefaultVisibilityKey, &protocol witness table for TableColumnDefaultVisibilityKey);
    PropertyList.subscript.getter();
    v4 = v12.n128_u8[0];
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnCustomizationIDKey>, &type metadata for TableColumnCustomizationIDKey, &protocol witness table for TableColumnCustomizationIDKey, v6);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnCustomizationIDKey>, &type metadata for TableColumnCustomizationIDKey, &protocol witness table for TableColumnCustomizationIDKey);
    PropertyList.subscript.getter();
    v8 = v12;
    v9 = v13;
    v5 = v14;
    _sSnySiGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey>, &type metadata for TableColumnDisabledCustomizationBehaviorKey, &protocol witness table for TableColumnDisabledCustomizationBehaviorKey, v6);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey>, &type metadata for TableColumnDisabledCustomizationBehaviorKey, &protocol witness table for TableColumnDisabledCustomizationBehaviorKey);
    PropertyList.subscript.getter();
  }

  lazy protocol witness table accessor for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key();
  EnvironmentValues.subscript.getter();
  lazy protocol witness table accessor for type TableColumnAlignment.Resolved.TextAlignmentKey and conformance TableColumnAlignment.Resolved.TextAlignmentKey();
  EnvironmentValues.subscript.getter();
  *a2 = v4;
  result = v8;
  *(a2 + 24) = v9;
  *(a2 + 8) = v8;
  *(a2 + 40) = v5;
  *(a2 + 48) = v11;
  *(a2 + 56) = v10;
  *(a2 + 57) = v10;
  return result;
}

double specialized implicit closure #1 in _GraphInputs.tableColumnConfiguration.getter@<D0>(_OWORD *a3@<X8>)
{
  lazy protocol witness table accessor for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key();
  EnvironmentValues.subscript.getter();
  *a3 = v5;
  a3[1] = v6;
  a3[2] = *v7;
  result = *&v7[10];
  *(a3 + 42) = *&v7[10];
  return result;
}

uint64_t default associated conformance accessor for TableColumnContent.TableColumnContent.TableColumnSortComparator: SortComparator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t default associated conformance accessor for TableColumnContent.TableColumnContent.TableRowValue: Identifiable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t initializeWithCopy for _TableColumnInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 20);

  return a1;
}

uint64_t assignWithCopy for _TableColumnInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];

  *(a1 + 24) = *(a2 + 6);
  *(a1 + 28) = *(a2 + 7);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 9);
  *(a1 + 40) = a2[5];

  *(a1 + 48) = a2[6];

  *(a1 + 56) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 15);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 17);
  *(a1 + 72) = *(a2 + 18);
  *(a1 + 76) = *(a2 + 19);
  *(a1 + 80) = *(a2 + 20);
  return a1;
}

__n128 __swift_memcpy84_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for _TableColumnInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for _TableColumnInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _TableColumnInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 84) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnID and conformance TableColumnID()
{
  result = lazy protocol witness table cache variable for type TableColumnID and conformance TableColumnID;
  if (!lazy protocol witness table cache variable for type TableColumnID and conformance TableColumnID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnID, &type metadata for TableColumnID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnID and conformance TableColumnID);
  }

  return result;
}

void type metadata accessor for IndexingIterator<AnyTableColumnIDs>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyTableColumnIDs();
    v8 = lazy protocol witness table accessor for type IndexingIterator<AnyTableColumnIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableColumnIDs and conformance AnyTableColumnIDs, v7, type metadata accessor for AnyTableColumnIDs, protocol conformance descriptor for AnyTableColumnIDs);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_2(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_3(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v6 = v5;
    v7 = lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v7;
    result = swift_getWitnessTable(a2, v6, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyTableColumnIDs and conformance AnyTableColumnIDs(uint64_t a1, uint64_t a2)
{
  return lazy protocol witness table accessor for type IndexingIterator<AnyTableColumnIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableColumnIDs and conformance AnyTableColumnIDs, a2, type metadata accessor for AnyTableColumnIDs, protocol conformance descriptor for AnyTableColumnIDs);
}

{
  return lazy protocol witness table accessor for type IndexingIterator<AnyTableColumnIDs> and conformance IndexingIterator<A>(&lazy protocol witness table cache variable for type AnyTableColumnIDs and conformance AnyTableColumnIDs, a2, type metadata accessor for AnyTableColumnIDs, protocol conformance descriptor for AnyTableColumnIDs);
}

uint64_t lazy protocol witness table accessor for type Slice<AnyTableColumnIDs> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<AnyTableColumnIDs>(255);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<AnyTableColumnIDs> and conformance IndexingIterator<A>(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

BOOL specialized static TableColumnConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = a1[40];
  v7 = *(a1 + 6);
  v8 = a1[56];
  v9 = a1[57];
  v11 = *(a2 + 1);
  v10 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  v14 = a2[40];
  v15 = *(a2 + 6);
  v16 = a2[56];
  v17 = a2[57];
  if (v6 == 255)
  {
    if (v14 == 255)
    {
      return v7 == v15 && v8 == v16 && v9 == v17;
    }

LABEL_14:
    outlined copy of TableColumnCustomizationID?(*(a1 + 1), v2, v4, v5, v6);
    outlined copy of TableColumnCustomizationID?(v11, v10, v12, v13, v14);
    outlined consume of TableColumnCustomizationID?(v3, v2, v4, v5, v6);
    outlined consume of TableColumnCustomizationID?(v11, v10, v12, v13, v14);
    return 0;
  }

  if (v14 == 255)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (v3 != v11 || v2 != v10)
    {
      v18 = a1[57];
      v19 = a1[56];
      v20 = *(a1 + 6);
      v21 = a2[57];
      v22 = *(a2 + 6);
      v23 = a2[56];
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v23;
      v15 = v22;
      v17 = v21;
      v7 = v20;
      v8 = v19;
      v9 = v18;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

    if (v4 != v12 || v5 != v13)
    {
LABEL_19:
      v26 = v9;
      v27 = v8;
      v28 = v7;
      v29 = v17;
      v30 = v15;
      v31 = v16;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v31;
      v15 = v30;
      v17 = v29;
      v7 = v28;
      v8 = v27;
      v9 = v26;
      if (v32)
      {
        return v7 == v15 && v8 == v16 && v9 == v17;
      }

      return 0;
    }
  }

  else
  {
    if (v14)
    {
      return 0;
    }

    if (v3 != v11 || v2 != v10)
    {
      goto LABEL_19;
    }
  }

  return v7 == v15 && v8 == v16 && v9 == v17;
}

void *specialized TableColumnListKey.ConcatenatedTableColumnList.init(_:_:)(void *a1, void *a2)
{
  outlined init with copy of _Benchmark(a1, v9);
  type metadata accessor for TableColumnList();
  if (swift_dynamicCast())
  {
    v4 = v10;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<TableColumnList>(0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD63400;
    outlined init with copy of _Benchmark(a1, v4 + 32);
  }

  v10 = v4;
  outlined init with copy of _Benchmark(a2, v9);
  if (swift_dynamicCast())
  {
    specialized Array.append<A>(contentsOf:)(v8);
    __swift_destroy_boxed_opaque_existential_1(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  else
  {
    outlined init with copy of _Benchmark(a2, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
    }

    __swift_destroy_boxed_opaque_existential_1(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *(v4 + 16) = v6 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v9, v4 + 40 * v6 + 32);
  }

  return v4;
}

void type metadata accessor for _ContiguousArrayStorage<TableColumnList>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<TableColumnList>)
  {
    type metadata accessor for TableColumnList();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableColumnList>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key()
{
  result = lazy protocol witness table cache variable for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key;
  if (!lazy protocol witness table cache variable for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnConfiguration.Key, &type metadata for TableColumnConfiguration.Key, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnConfiguration.Key and conformance TableColumnConfiguration.Key);
  }

  return result;
}

uint64_t destroy for TableColumnConfiguration(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 != 255)
  {
    return outlined consume of TableColumnCustomizationID.Base(*(result + 8), *(result + 16), *(result + 24), *(result + 32), v1 & 1);
  }

  return result;
}

uint64_t initializeWithCopy for TableColumnConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v3 = *(a2 + 40);
  if (v3 == 255)
  {
    v10 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v10;
    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = v3 & 1;
    v9 = result;
    outlined copy of TableColumnCustomizationID.Base(v4, v5, v6, v7, v3 & 1);
    result = v9;
    *(v9 + 8) = v4;
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
  }

  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t assignWithCopy for TableColumnConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 40);
  if (*(a1 + 40) == 255)
  {
    if (v4 == 255)
    {
      v22 = *(a2 + 8);
      v23 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v23;
      *(a1 + 8) = v22;
    }

    else
    {
      v15 = *(a2 + 8);
      v16 = *(a2 + 16);
      v17 = *(a2 + 24);
      v18 = *(a2 + 32);
      v19 = v4 & 1;
      outlined copy of TableColumnCustomizationID.Base(v15, v16, v17, v18, v4 & 1);
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      *(a1 + 24) = v17;
      *(a1 + 32) = v18;
      *(a1 + 40) = v19;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of TableColumnCustomizationID(a1 + 8);
    v20 = *(a2 + 40);
    v21 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v21;
    *(a1 + 40) = v20;
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    v9 = v4 & 1;
    outlined copy of TableColumnCustomizationID.Base(v5, v6, v7, v8, v4 & 1);
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    outlined consume of TableColumnCustomizationID.Base(v10, v11, v12, v13, v14);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  return a1;
}

uint64_t assignWithTake for TableColumnConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v3 = *(result + 40);
  if (v3 == 255)
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v4 = *(a2 + 40);
    if (v4 == 255)
    {
      v10 = result;
      outlined destroy of TableColumnCustomizationID(result + 8);
      result = v10;
      *(v10 + 8) = *(a2 + 8);
      *(v10 + 24) = *(a2 + 24);
      *(v10 + 40) = *(a2 + 40);
    }

    else
    {
      v6 = *(result + 8);
      v5 = *(result + 16);
      v7 = *(result + 24);
      v8 = *(result + 32);
      *(result + 8) = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 40) = v4 & 1;
      v9 = result;
      outlined consume of TableColumnCustomizationID.Base(v6, v5, v7, v8, v3 & 1);
      result = v9;
    }
  }

  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t getEnumTagSinglePayload for TableColumnConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[58])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableColumnConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnConfiguration and conformance TableColumnConfiguration()
{
  result = lazy protocol witness table cache variable for type TableColumnConfiguration and conformance TableColumnConfiguration;
  if (!lazy protocol witness table cache variable for type TableColumnConfiguration and conformance TableColumnConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnConfiguration, &type metadata for TableColumnConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnConfiguration and conformance TableColumnConfiguration);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnDisabledCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_3(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key()
{
  result = lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key;
  if (!lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnAlignment.Resolved.Key, &type metadata for TableColumnAlignment.Resolved.Key, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnAlignment.Resolved.Key and conformance TableColumnAlignment.Resolved.Key);
  }

  return result;
}