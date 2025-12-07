double AttributeContainer.update(_:to:in:)(__int16 a1, char a2, unint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
  AttributeContainer.subscript.getter();
  v8 = v19;
  if (!v19)
  {
    v21 = v5;
    v22 = v6;
    v8 = EnvironmentValues.effectiveFont.getter();
  }

  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  AttributeContainer.subscript.getter();
  if (v22 == 1)
  {
    getter of scope #1 in Dictionary<>.update(_:to:in:)(v7, &v19);
    v9 = AttributedString.Keys.contains(_:)();

    if ((v9 & 1) != 0 && (getter of scope #1 in Dictionary<>.update(_:to:in:)(v7, &v19), v10 = AttributedString.Keys.contains(_:)(), , (v10 & 1) == 0))
    {
      v11 = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v8;
  if ((a1 & 2) != 0)
  {
    v12 = Font.bold(_:)();

    if ((v11 & 1) == 0)
    {
      if (a2)
      {
        v13 = v21 | 2;
      }

      else
      {
        v13 = v21 & 0xFFFFFFFFFFFFFFFDLL;
      }

      v21 = v13;
    }
  }

  if (a1)
  {
    v14 = Font.italic(_:)();

    if ((v22 & 1) == 0)
    {
      if (a2)
      {
        v15 = v21 | 1;
      }

      else
      {
        v15 = v21 & 0xFFFFFFFFFFFFFFFELL;
      }

      v21 = v15;
    }
  }

  else
  {
    v14 = v12;
  }

  if ((a1 & 0x400) != 0)
  {
    v16 = Font.monospaced(_:)();

    if ((v22 & 1) == 0)
    {
      if (a2)
      {
        v17 = v21 | 4;
      }

      else
      {
        v17 = v21 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v21 = v17;
    }
  }

  else
  {
    v16 = v14;
  }

  v19 = v16;

  AttributeContainer.subscript.setter();
  v19 = v21;
  v20 = v22;
  AttributeContainer.subscript.setter();

  return result;
}

uint64_t _s7SwiftUI21TextFormattingControlV9canToggle33_1D08ED28859ED243BBEACA21C0966F88LL_2on9trueValue24inlinePresentationIntent5usingSbSo21NSAttributedStringKeya_10Foundation18AttributeContainerVxSo08NSInlinerS0VSgAA0cY8Resolver_ptSQRzlFZSo8NSNumberC_Tt4g5Tf4nnnne_n(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for AttributeContainer();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v60 = a7;
  v61 = a8;
  v45 = a8;
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  v21 = *(*(a7 - 8) + 16);
  v52 = boxed_opaque_existential_1;
  v21(boxed_opaque_existential_1, a6, a7);
  v50 = v17;
  v51 = v16;
  (*(v17 + 16))(v19, a2, v16);
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v57 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  *&v56 = a3;
  outlined init with take of Any(&v56, v55);
  v43 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a1;
  v54 = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, a1, isUniquelyReferenced_nonNull_native);
  v24 = v54;
  v58 = v54;
  v49 = a5;
  if ((a5 & 1) == 0)
  {
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    v26 = AttributeContainer.subscript.modify();
    if (*(v25 + 8) != 1)
    {
      *v25 |= a4;
    }

    v26(&v56, 0);
  }

  v42 = a4;
  v47 = v61;
  v48 = v60;
  v46 = __swift_project_boxed_opaque_existential_1(v59, v60);
  v27 = v45;
  v28 = *(v45 + 40);
  v28(v24, v19, 0, a7, v45);
  v44 = *(v27 + 32);
  v29 = v44(v19, a7, v27);
  if (*(v29 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(), (v31 & 1) != 0))
  {
    outlined init with copy of Any(*(v29 + 56) + 32 * v30, &v56);
  }

  else
  {

    v56 = 0u;
    v57 = 0u;
  }

  type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast() && (v32 = *&v55[0]) != 0)
  {
    v33 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v33 = 0;
  }

  specialized Dictionary._Variant.removeValue(forKey:)(&v56);
  outlined destroy of Any?(&v56);
  if ((v49 & 1) == 0)
  {
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    v35 = AttributeContainer.subscript.modify();
    if (*(v34 + 8) != 1)
    {
      *v34 &= ~v42;
    }

    v35(&v56, 0);
  }

  v28(v58, v19, 1, v48, v47);
  if (v33)
  {
    v36 = v44(v19, a7, v27);
    if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(), (v38 & 1) != 0))
    {
      outlined init with copy of Any(*(v36 + 56) + 32 * v37, &v56);
      (*(v50 + 8))(v19, v51);

      v39 = 0;
    }

    else
    {

      (*(v50 + 8))(v19, v51);
      v56 = 0u;
      v57 = 0u;
      v39 = 1;
    }

    outlined destroy of Any?(&v56);
  }

  else
  {
    (*(v50 + 8))(v19, v51);

    v39 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  return v39;
}

BOOL specialized static TextFormattingControl.canIncrementFontSize(on:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributeContainer();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a3;
  v73 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  v13 = *(*(a3 - 8) + 16);
  v63 = boxed_opaque_existential_1;
  v64 = a3;
  v13(boxed_opaque_existential_1, a2, a3);
  (*(v9 + 16))(v11, a1, v8);
  v14 = v72;
  v15 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v16 = static NSAttributedStringKey.kitFont.getter();
  (*(a4 + 32))(&v67, v16, v14, v15);

  v18 = v68;
  v17 = v69;
  v19 = __swift_project_boxed_opaque_existential_1(&v67, v68);
  v70[3] = v18;
  v70[4] = v17;
  v20 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(*(v18 - 1) + 16))(v20, v19, v18);
  __swift_destroy_boxed_opaque_existential_1(&v67);
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v62 = v17;
  v22 = *(*(v17 + 8) + 16);
  v61 = *(v17 + 8);
  v60 = v22;
  (v22)(&v67, a1, v18);
  if (!v68)
  {
    (*(v9 + 8))(v11, v8);
    outlined destroy of Any?(&v67);
LABEL_10:

    goto LABEL_14;
  }

  v59 = v8;
  v58 = v9;
  v23 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v58 + 8))(v11, v59);
    goto LABEL_10;
  }

  v57 = v23;
  v24 = *&v66[0];
  CTFontRef.pointSize.getter();
  v26 = v25;
  CopyWithAttributes = CTFontCreateCopyWithAttributes(v24, v25 + 1.0, 0, 0);
  v28 = static NSAttributedStringKey.kitFont.getter();
  type metadata accessor for CTFontRef(0);
  v54 = v29;
  v68 = v29;
  *&v67 = CopyWithAttributes;
  outlined init with take of Any(&v67, v66);
  v30 = CopyWithAttributes;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v28, isUniquelyReferenced_nonNull_native);

  v32 = v65;
  v33 = *(a4 + 8);
  v55 = *(v33 + 40);
  v55(v65, v11, 0, v64, v33);
  ValidatingTextAttributeDefinition.fixup(_:)(v11, v18, v62);
  v60(&v67, v11, v18, v61);
  if (!v68)
  {

    (*(v58 + 8))(v11, v59);
LABEL_12:
    outlined destroy of Any?(&v67);
    goto LABEL_13;
  }

  v56 = v32;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    (*(v58 + 8))(v11, v59);
LABEL_13:

    goto LABEL_14;
  }

  v34 = *&v66[0];
  CTFontRef.pointSize.getter();
  v36 = v35;

  if (v36 == v26)
  {

    goto LABEL_7;
  }

  if (v26 <= 1.0)
  {

    (*(v58 + 8))(v11, v59);

    v37 = 1;
    goto LABEL_15;
  }

  v53 = v34;
  v39 = CTFontCreateCopyWithAttributes(v24, v26 + -1.0, 0, 0);
  v51 = v24;

  v52 = static NSAttributedStringKey.kitFont.getter();
  v68 = v54;
  *&v67 = v39;
  outlined init with take of Any(&v67, v66);
  v54 = v39;
  v40 = v56;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v40;
  v42 = v52;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v52, v41);

  v55(v65, v11, 0, v64, v33);
  ValidatingTextAttributeDefinition.fixup(_:)(v11, v18, v62);
  v60(&v67, v11, v18, v61);
  if (!v68)
  {
    (*(v58 + 8))(v11, v59);

    goto LABEL_12;
  }

  v43 = v54;
  v44 = swift_dynamicCast();
  v45 = v58;
  v46 = v59;
  if (v44)
  {
    v47 = *&v66[0];
    CTFontRef.pointSize.getter();
    v49 = v48;

    (*(v45 + 8))(v11, v46);

    v37 = v49 != v26;
    goto LABEL_15;
  }

  (*(v58 + 8))(v11, v59);

LABEL_14:
  v37 = 0;
LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v37;
}

uint64_t specialized closure #9 in TextFormattingControl.canPerformModification(on:in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = type metadata accessor for AttributedString.LineHeight();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3;
  v22 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  static AttributedString.LineHeight.exact(points:)();
  v14 = *(a4 + 8);
  LOBYTE(a2) = specialized static TextFormattingControl.canSetLineHeight(to:on:using:)(v12, a1, boxed_opaque_existential_1, a3, v14);
  v15 = *(v10 + 8);
  v15(v12, v9);
  if (a2)
  {
    static AttributedString.LineHeight.exact(points:)();
    v16 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v17 = specialized static TextFormattingControl.canSetLineHeight(to:on:using:)(v12, a1, v16, a3, v14);
    v15(v12, v9);
  }

  else
  {
    v17 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17 & 1;
}

uint64_t specialized static TextFormattingControl.canSetLineHeight(to:on:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a2;
  v60 = a1;
  type metadata accessor for AttributedString.LineHeight?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for AttributedString.LineHeight();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v56 - v17;
  v18 = type metadata accessor for AttributeContainer();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v26;
  (*(v26 + 16))(v25, a3, a4, v23);
  v62 = v21;
  v63 = v19;
  v27 = *(v19 + 16);
  v28 = v57;
  v64 = v18;
  v27(v21, v57, v18);
  lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();
  v29 = static AttributedStringKey.nsAttributedStringKey.getter();
  v30 = *(a5 + 24);
  v58 = v29;
  v61 = a4;
  v31 = a4;
  v32 = a5;
  v30(v71, v29, v31, a5);
  v33 = v72;
  v34 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  (*(v34 + 16))(&v69, v28, v33, v34);
  if (v70)
  {
    v35 = swift_dynamicCast();
    v36 = *(v14 + 56);
    v36(v12, v35 ^ 1u, 1, v13);
    v37 = *(v14 + 48);
    if (v37(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v66, v12, v13);
      goto LABEL_7;
    }
  }

  else
  {
    outlined destroy of Any?(&v69);
    v36 = *(v14 + 56);
    v36(v12, 1, 1, v13);
  }

  static AttributedString.LineHeight.normal.getter();
  v37 = *(v14 + 48);
  if (v37(v12, 1, v13) != 1)
  {
    outlined destroy of Range<AttributedString.Index>(v12, type metadata accessor for AttributedString.LineHeight?);
  }

LABEL_7:
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v70 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
  (*(v14 + 16))(boxed_opaque_existential_1, v60, v13);
  outlined init with take of Any(&v69, v68);
  v40 = v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v38;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v40, isUniquelyReferenced_nonNull_native);

  v42 = v32;
  v43 = *(v32 + 40);
  v44 = v61;
  v45 = v62;
  v43(v67, v62, 0, v61, v42);

  (*(v59 + 8))(v25, v44);
  v46 = v72;
  v47 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  (*(v47 + 16))(&v69, v45, v46, v47);
  if (v70)
  {
    v48 = v65;
    v49 = swift_dynamicCast();
    v36(v48, v49 ^ 1u, 1, v13);
    if (v37(v48, 1, v13) != 1)
    {
      v51 = v56;
      (*(v14 + 32))(v56, v48, v13);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590], MEMORY[0x1E6965598]);
      v52 = v66;
      v53 = dispatch thunk of static Equatable.== infix(_:_:)();

      v54 = *(v14 + 8);
      v54(v51, v13);
      v54(v52, v13);
      (*(v63 + 8))(v45, v64);
      v50 = v53 ^ 1;
      goto LABEL_13;
    }

    (*(v14 + 8))(v66, v13);
    (*(v63 + 8))(v45, v64);
  }

  else
  {

    (*(v14 + 8))(v66, v13);
    (*(v63 + 8))(v45, v64);
    outlined destroy of Any?(&v69);
    v48 = v65;
    v36(v65, 1, 1, v13);
  }

  outlined destroy of Range<AttributedString.Index>(v48, type metadata accessor for AttributedString.LineHeight?);
  v50 = 0;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v50 & 1;
}

void _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

BOOL specialized static TextFormattingControl.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

    return a3 == a6;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return a3 == a6;
  }

  return 0;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI5ColorVSgG_So7UIColorCSgs5NeverOTg503_s7d3UI5f6VSgSo7g13CSgIggo_AdGs5H11OIegnrzr_TRAiMIggo_Tf1cn_nTf4ng_n(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1;
    v4 = a1 + 56;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(a1 + 36);
    v18 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v3 + 36))
      {
        goto LABEL_22;
      }

      a2(v10);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 = a1;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (a1 + 64 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            outlined consume of Set<UIOpenURLContext>.Index._Variant(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_18;
          }
        }

        outlined consume of Set<UIOpenURLContext>.Index._Variant(v5, v7, 0);
LABEL_18:
        v3 = a1;
      }

      ++v6;
      v5 = v8;
      if (v6 == v18)
      {
        return;
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
LABEL_25:
    __break(1u);
  }
}

unint64_t _s7SwiftUI21TextFormattingControlV9canChange33_1D08ED28859ED243BBEACA21C0966F88LL_2on4with2in5usingSbxm_10Foundation18AttributeContainerVSbSo23NSMutableParagraphStyleCcdAA17EnvironmentValuesVAA010ValidatingcS8Resolver_ptAJ19AttributedStringKeyRzlFAJ0S6ScopesO04CoreC0E04CoreC10AttributesV0c9AlignmentS0O_Ttt2g5Tf4nnen_nTf4nnnd_n(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v70 = a2;
  v81 = type metadata accessor for AttributedString.TextAlignment();
  v75 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributedString.TextAlignment?, AttributedString.TextAlignment?)(0);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.TextAlignment?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = type metadata accessor for AttributeContainer();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - v25;
  v99 = a4;
  v100 = a5;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v28 = *(*(a4 - 8) + 16);
  v79 = v27;
  v82 = a4;
  v28(v27, a3, a4);
  v29 = *(v22 + 16);
  v85 = v22 + 16;
  v84 = v29;
  v29(v26, a1, v21);
  v30 = v99;
  v31 = v100;
  __swift_project_boxed_opaque_existential_1(&v98, v99);
  v32 = static NSAttributedStringKey.kitParagraphStyle.getter();
  v83 = a5;
  (*(a5 + 32))(&v93, v32, v30, v31);

  v33 = v95;
  v34 = v96;
  v35 = __swift_project_boxed_opaque_existential_1(&v93, v95);
  v97[3] = v33;
  v97[4] = v34;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
  (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v35, v33);
  __swift_destroy_boxed_opaque_existential_1(&v93);
  ValidatingTextAttributeDefinition.fixup(_:)(v26, v33, v34);
  v78 = lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();
  AttributeContainer.subscript.getter();
  (*(*(v34 + 8) + 16))(&v93, v26, v33);
  if (!v95)
  {
    outlined destroy of Range<AttributedString.Index>(v20, type metadata accessor for AttributedString.TextAlignment?);
    (*(v22 + 8))(v26, v21);
    outlined destroy of Any?(&v93);
LABEL_23:
    v66 = 0;
    goto LABEL_24;
  }

  v86 = v22;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined destroy of Range<AttributedString.Index>(v20, type metadata accessor for AttributedString.TextAlignment?);
    (*(v86 + 8))(v26, v21);
    goto LABEL_23;
  }

  v77 = v20;
  v89 = v21;
  v90 = v92;
  v37 = *(v70 + 16);
  v38 = v86;
  if (!v37)
  {
LABEL_21:

    outlined destroy of Range<AttributedString.Index>(v77, type metadata accessor for AttributedString.TextAlignment?);
    (*(v38 + 8))(v26, v89);
    v66 = 1;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v97);
    __swift_destroy_boxed_opaque_existential_1(&v98);
    return v66;
  }

  v74 = *MEMORY[0x1E69DB688];
  v73 = (v75 + 6);
  v68 = (v75 + 4);
  v69 = (v75 + 1);
  v75 = (v86 + 8);
  v39 = v70 + 40;
  v72 = v26;
  while (1)
  {
    v40 = *(v39 - 8);

    [v90 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v41 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      outlined destroy of Range<AttributedString.Index>(v77, type metadata accessor for AttributedString.TextAlignment?);
      (*v75)(v26, v89);
      goto LABEL_23;
    }

    v42 = v92;
    v93 = v92;
    v40(&v92, &v93);

    if ((v92 & 1) == 0)
    {

      goto LABEL_6;
    }

    v43 = v88;
    v84(v88, v26, v89);
    v91[4] = v41;
    v44 = v74;
    v91[0] = v74;
    v91[1] = v42;
    type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>(0);
    v45 = static _DictionaryStorage.allocate(capacity:)();
    v46 = v44;
    v47 = v42;
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v91, &v93, type metadata accessor for (NSAttributedStringKey, Any));
    v48 = v93;
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v50)
    {
      break;
    }

    v45[(result >> 6) + 8] |= 1 << result;
    *(v45[6] + 8 * result) = v48;
    result = outlined init with take of Any(&v94, (v45[7] + 32 * result));
    v51 = v45[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_26;
    }

    v45[2] = v53;
    outlined destroy of Range<AttributedString.Index>(v91, type metadata accessor for (NSAttributedStringKey, Any));
    (*(*(v83 + 8) + 40))(v45, v43, 0, v82);

    v54 = v87;
    AttributeContainer.subscript.getter();
    v55 = *(v80 + 48);
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v54, v13, type metadata accessor for AttributedString.TextAlignment?);
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v77, &v13[v55], type metadata accessor for AttributedString.TextAlignment?);
    v56 = *v73;
    v57 = v81;
    if ((*v73)(v13, 1, v81) == 1)
    {

      outlined destroy of Range<AttributedString.Index>(v54, type metadata accessor for AttributedString.TextAlignment?);
      v58 = *v75;
      (*v75)(v43, v89);
      v59 = v56(&v13[v55], 1, v57);
      v26 = v72;
      if (v59 == 1)
      {

        outlined destroy of Range<AttributedString.Index>(v77, type metadata accessor for AttributedString.TextAlignment?);
        v58(v26, v89);
        outlined destroy of Range<AttributedString.Index>(v13, type metadata accessor for AttributedString.TextAlignment?);
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    v60 = v76;
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v13, v76, type metadata accessor for AttributedString.TextAlignment?);
    if (v56(&v13[v55], 1, v57) == 1)
    {

      outlined destroy of Range<AttributedString.Index>(v54, type metadata accessor for AttributedString.TextAlignment?);
      (*v75)(v88, v89);
      (*v69)(v60, v57);
      v26 = v72;
LABEL_16:
      outlined destroy of Range<AttributedString.Index>(v13, type metadata accessor for (AttributedString.TextAlignment?, AttributedString.TextAlignment?));
      v38 = v86;
      goto LABEL_6;
    }

    v61 = &v13[v55];
    v62 = v71;
    (*v68)(v71, v61, v57);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(&lazy protocol witness table cache variable for type AttributedString.TextAlignment and conformance AttributedString.TextAlignment, MEMORY[0x1E6965580], MEMORY[0x1E6965588]);
    v63 = dispatch thunk of static Equatable.== infix(_:_:)();

    v64 = *v69;
    (*v69)(v62, v57);
    outlined destroy of Range<AttributedString.Index>(v87, type metadata accessor for AttributedString.TextAlignment?);
    v65 = *v75;
    (*v75)(v88, v89);
    v64(v60, v57);
    outlined destroy of Range<AttributedString.Index>(v13, type metadata accessor for AttributedString.TextAlignment?);
    v38 = v86;
    v26 = v72;
    if (v63)
    {

      outlined destroy of Range<AttributedString.Index>(v77, type metadata accessor for AttributedString.TextAlignment?);
      v65(v26, v89);
      goto LABEL_23;
    }

LABEL_6:
    v39 += 16;
    if (!--v37)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t _s7SwiftUI21TextFormattingControlV9canChange33_1D08ED28859ED243BBEACA21C0966F88LL_2on4with2in5usingSbxm_10Foundation18AttributeContainerVSbSo23NSMutableParagraphStyleCcdAA17EnvironmentValuesVAA010ValidatingcS8Resolver_ptAJ19AttributedStringKeyRzlFAJ0S6ScopesOAAE0A12UIAttributesV0c13JustificationS0O_Ttt2g5Tf4nnen_nTf4nnnd_n(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for AttributeContainer();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v64 = a4;
  v65 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v18 = *(*(a4 - 8) + 16);
  v49 = boxed_opaque_existential_1;
  v50 = a4;
  v18(boxed_opaque_existential_1, a3, a4);
  v19 = *(v11 + 16);
  v53 = v11 + 16;
  v52 = v19;
  v19(v16, a1, v10);
  v20 = v64;
  v21 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v22 = static NSAttributedStringKey.kitParagraphStyle.getter();
  v51 = a5;
  (*(a5 + 32))(&v58, v22, v20, v21);

  v24 = v60;
  v23 = v61;
  v25 = __swift_project_boxed_opaque_existential_1(&v58, v60);
  v62[3] = v24;
  v62[4] = v23;
  v26 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(*(v24 - 8) + 16))(v26, v25, v24);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  ValidatingTextAttributeDefinition.fixup(_:)(v16, v24, v23);
  v48 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();
  AttributeContainer.subscript.getter();
  (*(*(v23 + 8) + 16))(&v58, v16, v24);
  if (!v60)
  {
    (*(v11 + 8))(v16, v10);
    outlined destroy of Any?(&v58);
LABEL_27:
    v45 = 0;
    goto LABEL_28;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_27;
  }

  v54 = v56;
  v27 = *(a2 + 16);
  v28 = v11;
  if (!v27)
  {
LABEL_24:
    (*(v28 + 8))(v16, v10);

    v45 = 1;
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v63);
    return v45;
  }

  v46 = *MEMORY[0x1E69DB688];
  v47 = (v11 + 8);
  v29 = a2 + 40;
  while (1)
  {
    v30 = *(v29 - 8);

    [v54 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v31 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*v47)(v16, v10);

      goto LABEL_26;
    }

    v32 = v56;
    v58 = v56;
    v30(&v56, &v58);

    if ((v56 & 1) == 0)
    {

      v28 = v11;
      goto LABEL_6;
    }

    v52(v13, v16, v10);
    v55[4] = v31;
    v33 = v46;
    v55[0] = v46;
    v55[1] = v32;
    type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>(0);
    v34 = static _DictionaryStorage.allocate(capacity:)();
    v35 = v33;
    v36 = v32;
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v55, &v58, type metadata accessor for (NSAttributedStringKey, Any));
    v37 = v58;
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v39)
    {
      break;
    }

    v34[(result >> 6) + 8] |= 1 << result;
    *(v34[6] + 8 * result) = v37;
    result = outlined init with take of Any(&v59, (v34[7] + 32 * result));
    v40 = v34[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_30;
    }

    v34[2] = v42;
    outlined destroy of Range<AttributedString.Index>(v55, type metadata accessor for (NSAttributedStringKey, Any));
    (*(*(v51 + 8) + 40))(v34, v13, 0, v50);

    AttributeContainer.subscript.getter();

    v43 = *v47;
    (*v47)(v13, v10);
    if (v58 == 3)
    {
      v28 = v11;
      if (v57 == 3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v28 = v11;
      if (v57 != 3)
      {
        if (v58 == 2)
        {
          if (v57 == 2)
          {
            goto LABEL_21;
          }
        }

        else if (v57 != 2)
        {
          v44 = v57 ^ v58;
          if ((v44 & 1) == 0 && ((v44 >> 8) & 1) == 0)
          {
LABEL_21:
            v43(v16, v10);
LABEL_26:

            goto LABEL_27;
          }
        }
      }
    }

LABEL_6:
    v29 += 16;
    if (!--v27)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized TextFormattingControl.canPerformModification(on:in:using:)(char *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v15, v16, v12);
  v18 = *a2;
  v17 = a2[1];
  v19 = *(a6 + 8);
  rawValue = TextAttributeResolver.potentiallyEffectfulModifications()().rawValue;
  v22 = 0;
  if (a4 > 31)
  {
    if (a4 > 127)
    {
      switch(a4)
      {
        case 128:
          if ((rawValue & 0x80) == 0)
          {
            goto LABEL_38;
          }

          v22 = _s7SwiftUI21TextFormattingControlV9canChange33_1D08ED28859ED243BBEACA21C0966F88LL_2on4with2in5usingSbxm_10Foundation18AttributeContainerVSbSo23NSMutableParagraphStyleCcdAA17EnvironmentValuesVAA010ValidatingcS8Resolver_ptAJ19AttributedStringKeyRzlFAJ0S6ScopesO04CoreC0E04CoreC10AttributesV0c9AlignmentS0O_Ttt2g5Tf4nnen_nTf4nnnd_n(a1, &outlined read-only object #0 of specialized TextFormattingControl.canPerformModification(on:in:using:), v14, a5, a6, *&v21.rawValue);
          type metadata accessor for ()();
          break;
        case 256:
          if ((rawValue & 0x100) == 0)
          {
            goto LABEL_38;
          }

          v22 = _s7SwiftUI21TextFormattingControlV9canChange33_1D08ED28859ED243BBEACA21C0966F88LL_2on4with2in5usingSbxm_10Foundation18AttributeContainerVSbSo23NSMutableParagraphStyleCcdAA17EnvironmentValuesVAA010ValidatingcS8Resolver_ptAJ19AttributedStringKeyRzlFAJ0S6ScopesOAAE0A12UIAttributesV0c13JustificationS0O_Ttt2g5Tf4nnen_nTf4nnnd_n(a1, &outlined read-only object #1 of specialized TextFormattingControl.canPerformModification(on:in:using:), v14, a5, a6);
          type metadata accessor for ()();
          break;
        case 512:
          if ((rawValue & 0x200) == 0)
          {
            goto LABEL_38;
          }

          v23 = specialized closure #9 in TextFormattingControl.canPerformModification(on:in:using:)(a1, v14, a5, a6, *&v21.rawValue);
          goto LABEL_29;
        default:
          goto LABEL_39;
      }

      swift_arrayDestroy();
      goto LABEL_39;
    }

    if (a4 != 32)
    {
      v22 = a4 == 64 && (rawValue & 0x40) != 0;
      goto LABEL_39;
    }

    if ((rawValue & 0x20) == 0)
    {
      goto LABEL_38;
    }

    v23 = specialized static TextFormattingControl.canIncrementFontSize(on:using:)(a1, v14, a5, a6);
LABEL_29:
    v22 = v23;
    goto LABEL_39;
  }

  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      if ((rawValue & 1) == 0)
      {
        goto LABEL_38;
      }

      v34 = v18;
      v35 = v17;
      v24 = 2;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_39;
      }

      if ((rawValue & 2) == 0)
      {
        goto LABEL_38;
      }

      v34 = v18;
      v35 = v17;
      v24 = 1;
    }

    v23 = ValidatingTextAttributeResolver.allowsFontTraitChange(_:on:in:)(v24, a1, &v34, a5, a6);
    goto LABEL_29;
  }

  switch(a4)
  {
    case 4:
      if ((rawValue & 4) == 0)
      {
        goto LABEL_38;
      }

      v25 = *MEMORY[0x1E69DB758];
      v26.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      v27 = v25;
      v28 = a1;
      isa = v26.super.super.isa;
      v30 = 0;
      v31 = 1;
LABEL_36:
      v22 = _s7SwiftUI21TextFormattingControlV9canToggle33_1D08ED28859ED243BBEACA21C0966F88LL_2on9trueValue24inlinePresentationIntent5usingSbSo21NSAttributedStringKeya_10Foundation18AttributeContainerVxSo08NSInlinerS0VSgAA0cY8Resolver_ptSQRzlFZSo8NSNumberC_Tt4g5Tf4nnnne_n(v27, v28, isa, v30, v31, v14, a5, v19);

      break;
    case 8:
      if ((rawValue & 8) == 0)
      {
        goto LABEL_38;
      }

      v32 = *MEMORY[0x1E69DB6B8];
      v26.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      v27 = v32;
      v28 = a1;
      isa = v26.super.super.isa;
      v30 = 32;
      v31 = 0;
      goto LABEL_36;
    case 16:
      if ((rawValue & 0x10) != 0)
      {
        if (one-time initialization token for validationColors != -1)
        {
          swift_once();
        }

        v23 = ValidatingTextAttributeResolver.allowsSettingForegroundColors(to:on:)(static TextFormattingControl.validationColors, a1, a5, a6);
        goto LABEL_29;
      }

LABEL_38:
      v22 = 0;
      break;
  }

LABEL_39:
  (*(v11 + 8))(v14, a5);
  return v22 & 1;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21NSAttributedStringKeya_Say7SwiftUI21TextFormattingControlVGTt1g505_sSl7g6UIAA21ijk2V7c84RtzrlE22effectfulModifications2in2of11environmentScSyAA0C18EditorModificationVGqd___u13A16Attributede71_pAA17EnvironmentValuesVtYaSTRd__Sny10Foundation0nO0V5IndexVGADRtd__lFys31S12ContinuationVyAK_GXEfU_So012D60O3KeyaACcfu_33_24f0dd856df31afde49bf31cb3cb1132ACA_Tf3nnpk_nTf1nc_nTf4g_n(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v5 = *(i - 2);
    v6 = *i;
    v7 = *(i - 1);
    v8 = v5;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)();
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, 1);
      v1 = v30;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v29 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[24 * v21];
      *(v4 + 4) = v8;
      *(v4 + 5) = v7;
      *(v4 + 6) = v6;
    }

    else
    {
      type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextFormattingControl>, &type metadata for TextFormattingControl, MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_18CD63400;
      *(v24 + 32) = v8;
      *(v24 + 40) = v7;
      *(v24 + 48) = v6;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      *(v1[6] + 8 * v10) = v7;
      *(v1[7] + 8 * v10) = v24;
      v25 = v1[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v1[2] = v27;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  type metadata accessor for NSAttributedStringKey(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of Range<AttributedString.Index>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _SetStorage<Color?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<Color?>)
  {
    type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(255, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<Color?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Color? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Color? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Color? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(255, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Color and conformance Color();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C78], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Color? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for (AttributedString.TextAlignment?, AttributedString.TextAlignment?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AttributedString.TextAlignment?, AttributedString.TextAlignment?))
  {
    type metadata accessor for AttributedString.TextAlignment?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.TextAlignment?, AttributedString.TextAlignment?));
    }
  }
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t assignWithCopy for TextFormattingControl(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TextFormattingControl(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TextFormattingControl and conformance TextFormattingControl()
{
  result = lazy protocol witness table cache variable for type TextFormattingControl and conformance TextFormattingControl;
  if (!lazy protocol witness table cache variable for type TextFormattingControl and conformance TextFormattingControl)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextFormattingControl, &type metadata for TextFormattingControl, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextFormattingControl and conformance TextFormattingControl);
  }

  return result;
}

uint64_t type metadata accessor for DragLocationResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for DragLocationResponder;
  if (!type metadata singleton initialization cache for DragLocationResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DragLocationResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 216) = 0;
  ContentResponderHelper.init()();
  ViewTransform.init()();
  *(v1 + 224) = v5;
  *(v1 + 240) = v6;
  *(v1 + 256) = v7;
  static CGSize.invalidValue.getter();
  *(v1 + 272) = v2;
  *(v1 + 280) = v3;
  *(v1 + 288) = 1;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 2;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t DragLocationResponder.init(inputs:)(uint64_t a1)
{
  *(v1 + 216) = 0;
  ContentResponderHelper.init()();
  ViewTransform.init()();
  *(v1 + 224) = v5;
  *(v1 + 240) = v6;
  *(v1 + 256) = v7;
  static CGSize.invalidValue.getter();
  *(v1 + 272) = v2;
  *(v1 + 280) = v3;
  *(v1 + 288) = 1;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 2;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t DragLocationResponder.__ivar_destroyer()
{

  outlined destroy of CoordinateSpace(v0 + 288);
}

double DragLocationResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  outlined destroy of CoordinateSpace(v0 + 288);

  swift_deallocClassInstance();
  return result;
}

uint64_t vtable thunk for DefaultLayoutViewResponder.__allocating_init(inputs:) dispatching to DragLocationResponder.__allocating_init(inputs:)(uint64_t a1)
{
  type metadata accessor for DragLocationResponder(0);
  swift_allocObject();
  return DragLocationResponder.init(inputs:)(a1);
}

void HoverEffectGroup.init(id:in:behavior:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t destroy for HoverEffectGroup(uint64_t a1)
{
  outlined consume of HoverEffectGroupInfo.Identifier(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  result = *(a1 + 40);
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t initializeWithCopy for HoverEffectGroup(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of HoverEffectGroupInfo.Identifier(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = *(a2 + 25);
  v8 = *(a2 + 40);
  if ((v8 - 1) >= 2)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v8;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  return a1;
}

uint64_t assignWithCopy for HoverEffectGroup(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of HoverEffectGroupInfo.Identifier(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v11 = *(a1 + 24);
  *(a1 + 24) = v7;
  outlined consume of HoverEffectGroupInfo.Identifier(v8, v9, v10, v11);
  *(a1 + 25) = *(a2 + 25);
  v12 = *(a2 + 40) - 1;
  if ((*(a1 + 40) - 1) >= 2)
  {
    if (v12 >= 2)
    {
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      return a1;
    }

    outlined destroy of String?(a1 + 32);
    goto LABEL_6;
  }

  if (v12 < 2)
  {
LABEL_6:
    *(a1 + 32) = *(a2 + 32);
    return a1;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for HoverEffectGroup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of HoverEffectGroupInfo.Identifier(v6, v7, v8, v9);
  *(a1 + 25) = *(a2 + 25);
  if ((*(a1 + 40) - 1) >= 2)
  {
    v10 = *(a2 + 40);
    if ((v10 - 1) >= 2)
    {
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v10;

      return a1;
    }

    outlined destroy of String?(a1 + 32);
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectGroup(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 48))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

uint64_t destroy for HoverEffectGroup.Scope(uint64_t a1)
{
  result = *(a1 + 8);
  if ((result - 1) >= 2)
  {
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for HoverEffectGroup.Scope(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 - 1) >= 2)
  {
    *result = *a2;
    result[1] = v2;
    v3 = result;

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

void *assignWithCopy for HoverEffectGroup.Scope(void *result, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  if ((result[1] - 1) >= 2)
  {
    if (v2 < 2)
    {
      v3 = result;
      outlined destroy of String?(result);
      *v3 = *a2;
      return v3;
    }

    *result = *a2;
    v5 = result;
    result[1] = *(a2 + 8);
  }

  else
  {
    if (v2 < 2)
    {
      *result = *a2;
      return result;
    }

    *result = *a2;
    v5 = result;
    result[1] = *(a2 + 8);
  }

  return v5;
}

void *assignWithTake for HoverEffectGroup.Scope(void *result, void *a2)
{
  if ((result[1] - 1) >= 2)
  {
    v2 = a2[1];
    if ((v2 - 1) >= 2)
    {
      *result = *a2;
      result[1] = v2;
      v3 = result;
    }

    else
    {
      v3 = result;
      outlined destroy of String?(result);
      *v3 = *a2;
    }

    return v3;
  }

  else
  {
    *result = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverEffectGroup.Scope(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectGroup.Scope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for HoverEffectGroup.Identifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of HoverEffectGroupInfo.Identifier(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for HoverEffectGroup.Identifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of HoverEffectGroupInfo.Identifier(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  outlined consume of HoverEffectGroupInfo.Identifier(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for HoverEffectGroup.Identifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of HoverEffectGroupInfo.Identifier(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectGroup.Identifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectGroup.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEffectGroup.Identifier and conformance HoverEffectGroup.Identifier()
{
  result = lazy protocol witness table cache variable for type HoverEffectGroup.Identifier and conformance HoverEffectGroup.Identifier;
  if (!lazy protocol witness table cache variable for type HoverEffectGroup.Identifier and conformance HoverEffectGroup.Identifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverEffectGroup.Identifier, &type metadata for HoverEffectGroup.Identifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffectGroup.Identifier and conformance HoverEffectGroup.Identifier);
  }

  return result;
}

uint64_t destroy for AccessibilityDetachedPropertyModifier(void *a1)
{

  v2 = a1[11];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

LABEL_5:
  if (a1[30] != 1)
  {
  }
}

uint64_t initializeWithCopy for AccessibilityDetachedPropertyModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t assignWithCopy for AccessibilityDetachedPropertyModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  return a1;
}

uint64_t assignWithTake for AccessibilityDetachedPropertyModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = (a1 + 64);
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityDetachedPropertyModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 289))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityDetachedPropertyModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *TabContent.accessibility(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of AccessibilityProperties(a1, v8);
  v9 = a2;
  TabContent.modifier<A>(_:)(v8, a3, &type metadata for AccessibilityDetachedPropertyModifier, a4);
  return outlined destroy of AccessibilityDetachedPropertyModifier(v8);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance AccessibilityPropertyInput(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return static WeakAttribute.== infix(_:_:)();
  }
}

uint64_t static AccessibilityDetachedPropertyModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t (*a3)(int *))
{
  v7[17] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 37) & 0x10) == 0)
  {
    return a3(a1);
  }

  outlined init with copy of _ViewListInputs(a2, v7);
  lazy protocol witness table accessor for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  if (v6)
  {
    lazy protocol witness table accessor for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty();
  }

  else
  {
    lazy protocol witness table accessor for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties();
  }

  Attribute.init<A>(body:value:flags:update:)();
  AGCreateWeakAttribute();
  v5 = PropertyList.subscript.setter();
  (a3)(v5, v7);
  return outlined destroy of _ViewListInputs(v7);
}

void *AccessibilityDetachedPropertyModifier.MergedProperties.value.getter@<X0>(void *a3@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AccessibilityProperties(WeakValue, v7);
    memcpy(__dst, v7, sizeof(__dst));
  }

  else
  {
    memset(v7, 0, 288);
    AccessibilityProperties.init()();
  }

  if (*(AGGraphGetValue() + 288))
  {
    Value = AGGraphGetValue();
    outlined init with copy of AccessibilityDetachedPropertyModifier(Value, v7);
    AccessibilityProperties.merge(with:)(v7);
    outlined destroy of AccessibilityProperties(v7);
  }

  return memcpy(a3, __dst, 0x120uLL);
}

void *protocol witness for Rule.value.getter in conformance AccessibilityDetachedPropertyModifier.InitialProperty@<X0>(void *a1@<X8>)
{
  if (*(AGGraphGetValue() + 288) == 1)
  {
    Value = AGGraphGetValue();
    outlined init with copy of AccessibilityDetachedPropertyModifier(Value, __src);
    return memcpy(a1, __src, 0x120uLL);
  }

  else
  {

    return AccessibilityProperties.init()();
  }
}

uint64_t static AccessibilityDetachedPropertyWriterModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v29 = a2[2];
  v30 = v5;
  v31 = a2[4];
  v32 = *(a2 + 20);
  v6 = a2[1];
  v27 = *a2;
  v28 = v6;
  v7 = v5;
  v8 = DWORD2(v5);
  *&v21 = v5;
  DWORD2(v21) = DWORD2(v5);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 || (*&v21 = v7, DWORD2(v21) = v8, (PreferencesInputs.contains<A>(_:includeHostPreferences:)())) && (lazy protocol witness table accessor for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput(), PropertyList.subscript.getter(), (BYTE8(v21) & 1) == 0))
  {
    v10 = v21;
    v13 = v29;
    v14 = v30;
    v15 = v31;
    v16 = v32;
    v11 = v27;
    v12 = v28;
    *&v19[0] = 0;
    BYTE8(v19[0]) = 1;
    outlined init with copy of _ViewInputs(&v27, &v21);
    PropertyList.subscript.setter();
    *&v21 = v10;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier();
    Attribute.init<A>(body:value:flags:update:)();
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = v15;
    v18 = v16;
    v17[0] = v11;
    v17[1] = v12;
    outlined init with copy of _ViewInputs(v17, &v21);
    static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
    v19[2] = v13;
    v19[3] = v14;
    v19[4] = v15;
    v20 = v16;
    v19[0] = v11;
    v19[1] = v12;
    outlined destroy of _ViewInputs(v19);
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v21 = v11;
    v22 = v12;
    return outlined destroy of _ViewInputs(&v21);
  }

  else
  {
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    return a3();
  }
}

void *AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier.value.getter@<X0>(uint64_t *a2@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AccessibilityProperties(WeakValue, __src);
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    memset(__src, 0, 288);
    AccessibilityProperties.init()();
  }

  outlined init with copy of AccessibilityProperties(__dst, &v6);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(__dst);
  type metadata accessor for CoreInteractionViewParentGestureContainerProxy?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v4 = swift_allocObject();
  result = memcpy((v4 + 16), __src, 0x128uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput()
{
  result = lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput;
  if (!lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityPropertyInput, &unk_1F0008E58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput;
  if (!lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityPropertyInput, &unk_1F0008E58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPropertyInput and conformance AccessibilityPropertyInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier, &unk_1F0008E30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier and conformance AccessibilityDetachedPropertyWriterModifier.MakeAttachmentModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty()
{
  result = lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty;
  if (!lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityDetachedPropertyModifier.InitialProperty, &unk_1F0008DB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.InitialProperty and conformance AccessibilityDetachedPropertyModifier.InitialProperty);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties()
{
  result = lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties;
  if (!lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityDetachedPropertyModifier.MergedProperties, &unk_1F0008D88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDetachedPropertyModifier.MergedProperties and conformance AccessibilityDetachedPropertyModifier.MergedProperties);
  }

  return result;
}

uint64_t PlatformListViewBase.accessibilityNodes.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 56))();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for ModifiedContent();
  v15[0] = *(swift_getAssociatedConformanceWitness() + 8);
  v15[1] = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v15);
  v7 = type metadata accessor for _UIHostingView(0, v4, WitnessTable, v6);
  v8 = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v7);
  v9 = ViewRendererHost.accessibilityNodes.getter(v7, v8);

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
LABEL_9:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x18D00E9C0](0, v9);
    goto LABEL_7;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_7:
    v12 = v11;

    v13 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    swift_beginAccess();
    v14 = *&v12[v13];

    return v14;
  }

  __break(1u);
  return result;
}

void implicit closure #3 in PlatformListViewBase<>.hostPreferredLayoutAttributes(fitting:insets:)(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = [a1 traitCollection];
  v4 = [v3 layoutDirection];

  *a2 = v4 == 1;
}

double key path getter for EnvironmentValues.editMode : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double key path setter for EnvironmentValues.editMode : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EditModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);

  outlined copy of Binding<Int>?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t EditButton.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

void EditButton.body.getter(uint64_t a1@<X8>)
{
  v33 = a1;
  type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 17);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 33) = v13;
  *v5 = 4;
  v15 = &v5[*(v3 + 44)];
  *v15 = partial apply for closure #1 in EditButton.body.getter;
  v15[1] = v14;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v16 = *(v3 + 48);

  outlined copy of Environment<Binding<EditMode>?>.Content(v10, v11, v12, v13);
  v17 = v12 | (v13 << 8);
  closure #2 in EditButton.body.getter(v10, v11, v12 | (v13 << 8), &v5[v16]);

  v18 = static Animation.easeOut(duration:)();
  specialized Environment.wrappedValue.getter(v10, v11, v17, &v38);
  v19 = v39;
  if (v39)
  {
    v20 = v38;
    v32 = v9;
    v35 = v38;
    v36 = v39;
    v37 = v40;
    type metadata accessor for Binding<EditMode>();
    MEMORY[0x18D00ACC0](&v34);
    v9 = v32;
    outlined consume of Binding<NavigationSplitViewColumn>?(v20, v19);
    v21 = v34;
  }

  else
  {
    v21 = 0;
  }

  outlined init with take of Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(v5, v9, type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>);
  v22 = &v9[*(v7 + 36)];
  *v22 = v18;
  v22[8] = v21;
  specialized Environment.wrappedValue.getter(v10, v11, v17, &v38);
  v23 = v39;
  if (v39)
  {
    v24 = v38;
    v35 = v38;
    v36 = v39;
    v37 = v40;
    type metadata accessor for Binding<EditMode>();
    MEMORY[0x18D00ACC0](&v34);
    outlined consume of Binding<NavigationSplitViewColumn>?(v24, v23);
    v25 = v34 != 0;
  }

  else
  {
    v25 = 0;
  }

  KeyPath = swift_getKeyPath();
  v27 = v9;
  v28 = v33;
  outlined init with take of Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(v27, v33, type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>);
  type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>, MEMORY[0x1E697E830]);
  v30 = v28 + *(v29 + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 0;
  *(v30 + 9) = v25;
}

void type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>)
  {
    type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>(255);
    v3 = v2;
    IsCheckmark = lazy protocol witness table accessor for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>();
    v6 = type metadata accessor for Button(a1, v3, IsCheckmark, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>);
    }
  }
}

void type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, MEMORY[0x1E697F960]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>)
  {
    type metadata accessor for Label<Text, Image>();
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleOnlyLabelStyle>, lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, &type metadata for TitleOnlyLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate();
    v5[1] = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>();
    v5[2] = MEMORY[0x1E6981138];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate()
{
  result = lazy protocol witness table cache variable for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate;
  if (!lazy protocol witness table cache variable for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoneButtonIsCheckmarkPredicate, &type metadata for DoneButtonIsCheckmarkPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>);
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleOnlyLabelStyle>, lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, &type metadata for TitleOnlyLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_2(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>, protocol conformance descriptor for Label<A, B>);
    v7[1] = a3();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>)
  {
    type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(255);
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for _AnimationModifier<EditMode>, lazy protocol witness table accessor for type EditMode and conformance EditMode, &type metadata for EditMode, MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>);
    }
  }
}

double closure #1 in EditButton.body.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = specialized Environment.wrappedValue.getter(a1, a2, a3 & 0x1FF, &v7);
  v4 = v8;
  if (v8)
  {
    v5 = v7;
    v6 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    MEMORY[0x1EEE9AC00](v6);
    withAnimation<A>(_:_:)();
    outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in EditButton.body.getter(uint64_t a1, uint64_t a2, char a3, double a4)
{
  type metadata accessor for Binding<EditMode>();
  MEMORY[0x18D00ACC0](&v5);
  LOBYTE(v5) = 2 * (v5 == 0);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

__n128 closure #2 in EditButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *&v24 = a1;
  *(&v24 + 1) = a2;
  v25 = a3;
  EditButton.editLabel.getter(&v20);
  v17 = v20;
  v18 = v21;
  v8 = v22;
  v26 = v23;
  specialized Environment.wrappedValue.getter(a1, a2, a3 & 0x1FF, &v20);
  v9 = *(&v20 + 1);
  if (*(&v20 + 1) && (v10 = v20, v24 = v20, LOBYTE(v25) = v21.n128_u8[0], type metadata accessor for Binding<EditMode>(), MEMORY[0x18D00ACC0](&v19), outlined consume of Binding<NavigationSplitViewColumn>?(v10, v9), v19))
  {
    v11 = static Text.System.done.getter();
  }

  else
  {
    v11 = static Text.System.edit.getter();
  }

  v15 = v26;
  result = v18;
  *a4 = v17;
  *(a4 + 16) = v18;
  *(a4 + 32) = v8;
  *(a4 + 40) = v15;
  *(a4 + 48) = v11;
  *(a4 + 56) = v12;
  *(a4 + 64) = v13 & 1;
  *(a4 + 72) = v14;
  return result;
}

void EditButton.editLabel.getter(uint64_t a1@<X8>)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), &v21);
  v3 = v22;
  if (v22 && (v4 = v21, v18 = v21, v19 = v22, v20 = v23, type metadata accessor for Binding<EditMode>(), MEMORY[0x18D00ACC0](&v17), outlined consume of Binding<NavigationSplitViewColumn>?(v4, v3), v17))
  {
    v5 = static Text.System.done.getter();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    specialized Image.init(systemName:)(0x72616D6B63656863, 0xE90000000000006BLL);
    v13 = 1;
  }

  else
  {
    v5 = static Text.System.edit.getter();
    v7 = v14;
    v9 = v15;
    v11 = v16;
    specialized Image.init(systemName:)(0x6C69636E6570, 0xE600000000000000);
    v13 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
}

uint64_t ToolbarItemTintColorModifier.body(content:)@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 1;
  if ((a2 & 0x100) != 0)
  {
    result = specialized Environment.wrappedValue.getter(a1, a2 & 1);
    if (!result)
    {
      result = static Color.accentColor.getter();
    }
  }

  else
  {
    result = 0;
  }

  *a3 = v4;
  *(a3 + 8) = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.effectiveTintColor : EnvironmentValues@<X0>(uint64_t *a2@<X8>)
{
  result = EnvironmentValues.effectiveTintColor.getter();
  *a2 = result;
  return result;
}

uint64_t outlined init with take of Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for Binding<EditMode>()
{
  if (!lazy cache variable for type metadata for Binding<EditMode>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<EditMode>);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for EditButton(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<Binding<EditMode>?>.Content(*a2, v4, v6, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return a1;
}

uint64_t assignWithCopy for EditButton(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<Binding<EditMode>?>.Content(*a2, v4, v6, v5);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>, StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_2(&lazy protocol witness table cache variable for type Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>> and conformance Button<A>, type metadata accessor for Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, protocol conformance descriptor for Button<A>);
    v5[1] = lazy protocol witness table accessor for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<DoneButtonIsCheckmarkPredicate, _ConditionalContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<TitleOnlyLabelStyle>>, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, Text>>, _AnimationModifier<EditMode>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>()
{
  result = lazy protocol witness table cache variable for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>;
  if (!lazy protocol witness table cache variable for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>)
  {
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for _AnimationModifier<EditMode>, lazy protocol witness table accessor for type EditMode and conformance EditMode, &type metadata for EditMode, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable(MEMORY[0x1E697F548], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AnimationModifier<EditMode> and conformance _AnimationModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type DoneButtonIsCheckmarkPredicate and conformance DoneButtonIsCheckmarkPredicate();
    v5[1] = lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<DoneButtonIsCheckmarkPredicate, ToolbarItemTintColorModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarItemTintColorModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarItemTintColorModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ToolbarItemTintColorModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ToolbarItemTintColorModifier@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ToolbarItemTintColorModifier.body(content:)(*v1, v2 | *(v1 + 8), a1);
}

uint64_t static ConditionalBridgingTintModifier._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, uint64_t (*a3)(void *, __int128 *))
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v34 = a2[2];
  v35 = v4;
  v36 = a2[4];
  v37 = *(a2 + 20);
  v5 = a2[1];
  v32 = *a2;
  v33 = v5;
  lazy protocol witness table accessor for type BarItemBridgedTint and conformance BarItemBridgedTint();
  v6 = PropertyList.subscript.getter();
  v7 = v26;
  if (v26 == *MEMORY[0x1E698D3F8])
  {
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    return a3(v6, &v26);
  }

  else
  {
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v16 = v32;
    v17 = v33;
    outlined init with copy of _ViewInputs(&v32, &v26);
    *&v26 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v7);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint();
    LODWORD(v26) = Attribute.init<A>(body:value:flags:update:)();
    PropertyList.subscript.setter();
    v22[2] = v18;
    v22[3] = v19;
    v22[4] = v20;
    v23 = v21;
    v22[0] = v16;
    v22[1] = v17;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v10 = v16;
    v11 = v17;
    v9 = outlined init with copy of _ViewInputs(v22, &v26);
    a3(v9, &v10);
    v24[2] = v12;
    v24[3] = v13;
    v24[4] = v14;
    v25 = v15;
    v24[0] = v10;
    v24[1] = v11;
    outlined destroy of _ViewInputs(v24);
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v26 = v16;
    v27 = v17;
    return outlined destroy of _ViewInputs(&v26);
  }
}

char *protocol witness for Rule.value.getter in conformance ConditionalBridgingTintModifier.ChildTint@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  v3 = 0;
  if (*result == 1)
  {
    result = AGGraphGetValue();
    v3 = *result;
  }

  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>(255);
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarItemTintColorKey>, &type metadata for ToolbarItemTintColorKey, &protocol witness table for ToolbarItemTintColorKey, MEMORY[0x1E6980750]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>)
  {
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ToolbarItemTintColorModifier>, lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier, &unk_1F0008FB0, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>);
    }
  }
}

void _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<EditModeKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = &protocol witness table for ConditionalBridgingTintModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, ConditionalBridgingTintModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI25LabelStyleWritingModifier33_8ADADA438F274FC671ACFFBCE6ADA2B4LLVyAA09TitleOnlycD0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ToolbarItemTintColorModifier>, lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier, &unk_1F0008FB0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EditModeKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarItemTintColorKey>, &type metadata for ToolbarItemTintColorKey, &protocol witness table for ToolbarItemTintColorKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint()
{
  result = lazy protocol witness table cache variable for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint;
  if (!lazy protocol witness table cache variable for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConditionalBridgingTintModifier.ChildTint, &unk_1F00090B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalBridgingTintModifier.ChildTint and conformance ConditionalBridgingTintModifier.ChildTint);
  }

  return result;
}

BOOL ShadowListUpdateRecorder.hasUncommittedUpdates.getter(uint64_t a1)
{
  v6[4] = *(v1 + *(a1 + 36));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[0] = AssociatedTypeWitness;
  v6[1] = MEMORY[0x1E69E6530];
  v6[2] = AssociatedConformanceWitness;
  v6[3] = MEMORY[0x1E69E6548];
  type metadata accessor for ListUpdate(255, v6);
  v4 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v4);
  return (Collection.isEmpty.getter() & 1) == 0;
}

uint64_t ShadowListUpdateRecorder.withBase(do:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3, v5, v7);
  a1(v9);
  (*(v6 + 24))(v3, v9, v5);
  return (*(v6 + 8))(v9, v5);
}

Swift::Void __swiftcall ShadowListUpdateRecorder.clearUpdates()()
{
  v5[4] = *(v1 + *(v0 + 36));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v5[0] = AssociatedTypeWitness;
  v5[1] = MEMORY[0x1E69E6530];
  v5[2] = AssociatedConformanceWitness;
  v5[3] = MEMORY[0x1E69E6548];
  type metadata accessor for ListUpdate(255, v5);
  v4 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v4);
  Array.append<A>(contentsOf:)();
  Array.removeAll(keepingCapacity:)(1);
}

uint64_t ShadowListUpdateRecorder.updateBase(to:)(uint64_t a1, uint64_t a2)
{
  result = ShadowListUpdateRecorder.hasUncommittedUpdates.getter(a2);
  if (result)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 16);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9[0] = AssociatedTypeWitness;
    v9[1] = MEMORY[0x1E69E6530];
    v9[2] = AssociatedConformanceWitness;
    v9[3] = MEMORY[0x1E69E6548];
    type metadata accessor for ListUpdate(255, v9);
    type metadata accessor for Array();
    Array.removeAll(keepingCapacity:)(1);
    return (*(*(v6 - 8) + 24))(v2, a1, v6);
  }

  return result;
}

uint64_t ShadowListUpdateRecorder.recordUpdate(_:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10[0] = AssociatedTypeWitness;
  v10[1] = MEMORY[0x1E69E6530];
  v10[2] = AssociatedConformanceWitness;
  v10[3] = MEMORY[0x1E69E6548];
  v5 = type metadata accessor for ListUpdate(0, v10);
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(v10 - v7, a1, v5, v6);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t ListUpdate.inverse.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v44 = &v43 - v6;
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + 16);
  v17(v16, v2, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v9 + 32))(v50, v16, v4);
      }

      else
      {
        v36 = swift_getTupleTypeMetadata2();
        v37 = *(v36 + 48);
        v38 = *(v9 + 32);
        v39 = v48;
        v38(v48, v16, v4);
        v40 = *(v36 + 48);
        v41 = &v16[v37];
        v42 = v50;
        v38(v50, v41, v4);
        v38(&v42[v40], v39, v4);
      }

      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v9 + 32))(v50, v16, v4);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v28 = TupleTypeMetadata2;
      v29 = swift_getTupleTypeMetadata2();
      v30 = *(v29 + 48);
      v31 = v44;
      v32 = *(v45 + 32);
      v32(v44, v16, v28);
      v33 = *(v29 + 48);
      v34 = &v16[v30];
      v35 = v50;
      v32(v50, v34, v28);
      v32(&v35[v33], v31, v28);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      (v17)(v50, v2, a1);
      return (*(v12 + 8))(v16, a1);
    }
  }

  else
  {
    v19 = v48;
    v20 = TupleTypeMetadata2;
    v21 = *(TupleTypeMetadata2 + 48);
    v45 = *(v9 + 32);
    (v45)(v48, v16, v4);
    v22 = *(v47 + 32);
    v23 = &v16[v21];
    v24 = v46;
    v22(v46, v23, v5);
    v25 = *(v20 + 48);
    v26 = v50;
    (v45)(v50, v19, v4);
    v22(&v26[v25], v24, v5);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, void (**a6)(char *, char *, uint64_t), char *a7)
{
  v121 = a3;
  v125 = a7;
  v126 = a4;
  v123 = a2;
  v96 = a1;
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  swift_getAssociatedTypeWitness();
  v105 = v9;
  v104 = v8;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v113 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v118 = v87 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v103 = v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v98 = v87 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v127[0] = AssociatedTypeWitness;
  v127[1] = MEMORY[0x1E69E6530];
  v117 = AssociatedConformanceWitness;
  v127[2] = AssociatedConformanceWitness;
  v127[3] = MEMORY[0x1E69E6548];
  v19 = type metadata accessor for ListUpdate(0, v127);
  v124 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v102 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v101 = v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v100 = v87 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v87 - v26;
  v28 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v87 - v29;
  v116 = a6;
  v120 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v31);
  v115 = v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(v125 + 1);
  v112 = swift_getAssociatedTypeWitness();
  v95 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v125 = v87 - v33;
  v108 = swift_getAssociatedTypeWitness();
  v94 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v35 = v87 - v34;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v92 = v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v87 - v40;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = v87 - v44;
  (*(v97 + 16))(v87 - v44, v121, AssociatedTypeWitness, v43);
  *&v45[*(TupleTypeMetadata2 + 48)] = v126;
  v93 = v37;
  v46 = *(v37 + 16);
  v91 = v45;
  v47 = v45;
  v48 = TupleTypeMetadata2;
  v90 = v37 + 16;
  v89 = v46;
  v46(v41, v47, TupleTypeMetadata2);
  v49 = *(v105 + 80);
  v107 = v35;
  v50 = v98;
  v126 = v41;
  v49(v41, v104);
  (*(v120 + 2))(v115, v123, v116);
  v51 = v112;
  dispatch thunk of Sequence.makeIterator()();
  v123 = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v52 = v124;
  v121 = *(v124 + 48);
  v122 = v124 + 48;
  if (v121(v30, 1, v19) != 1)
  {
    v59 = *(v52 + 32);
    v58 = v52 + 32;
    v120 = v59;
    v116 = (v58 - 16);
    v114 = (v97 + 8);
    v115 = (v97 + 32);
    v88 = (v97 + 40);
    v124 = v58;
    v119 = (v58 - 24);
    v109 = TupleTypeMetadata2;
    v99 = v30;
    v59(v27, v30, v19);
    while (1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 5:
          v71 = v102;
          (*v116)(v102, v27, v19);
          v72 = &v71[*(swift_getTupleTypeMetadata2() + 48)];
          v73 = *(v48 + 48);
          v74 = *&v71[v73];
          v75 = *&v72[v73];
          v110 = v74;
          v111 = v75;
          v76 = *v115;
          (*v115)(v118, v71, AssociatedTypeWitness);
          v77 = v113;
          v76(v113, v72, AssociatedTypeWitness);
          v78 = v126;
          if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v79 = dispatch thunk of static Equatable.== infix(_:_:)();
            v80 = v78;
            v48 = v109;
            v106 = *(v109 + 48);
            v81 = *&v80[v106];
            v82 = v110;
            if ((v79 & 1) != 0 && v110 == v81)
            {
              (*v114)(v118, AssociatedTypeWitness);
              v83 = v126;
              (*v88)(v126, v113, AssociatedTypeWitness);
              v51 = v112;
              *&v83[v106] = v111;
            }

            else
            {
              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && v82 < v81)
              {
                v87[1] = swift_getAssociatedConformanceWitness();
                v82 = v110;
                dispatch thunk of Collection.startIndex.getter();
                if (v127[0] < v81)
                {
                  dispatch thunk of BidirectionalCollection.formIndex(before:)();
                }
              }

              if (v111 >= v82)
              {
                LODWORD(v110) = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
              }

              else
              {
                LODWORD(v110) = 1;
              }

              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && ((v110 & 1) != 0 ? v81 >= v111 : v111 < v81))
              {
                swift_getAssociatedConformanceWitness();
                dispatch thunk of Collection.formIndex(after:)();
              }

              v86 = *v114;
              (*v114)(v113, AssociatedTypeWitness);
              v86(v118, AssociatedTypeWitness);
              v51 = v112;
            }
          }

          else
          {
            v84 = *v114;
            (*v114)(v77, AssociatedTypeWitness);
            v84(v118, AssociatedTypeWitness);
            v51 = v112;
            v48 = v109;
          }

          break;
        case 4:
          v66 = v50;
          v67 = v101;
          (*v116)(v101, v27, v19);
          v68 = *&v67[*(v48 + 48)];
          v69 = v103;
          (*v115)(v103, v67, AssociatedTypeWitness);
          v70 = v126;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            if (*&v70[*(v48 + 48)] >= v68)
            {
              swift_getAssociatedConformanceWitness();
              dispatch thunk of Collection.formIndex(after:)();
            }

            (*v114)(v69, AssociatedTypeWitness);
            v50 = v66;
            v48 = v109;
          }

          else
          {
            (*v114)(v69, AssociatedTypeWitness);
            v50 = v66;
          }

          v30 = v99;
          break;
        case 3:
          v61 = v100;
          (*v116)(v100, v27, v19);
          v62 = *&v61[*(v48 + 48)];
          (*v115)(v50, v61, AssociatedTypeWitness);
          v63 = v50;
          v64 = v126;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v65 = *&v64[*(v48 + 48)];
            if (v65 >= v62)
            {
              swift_getAssociatedConformanceWitness();
              v48 = v109;
              dispatch thunk of Collection.startIndex.getter();
              if (v127[0] < v65)
              {
                dispatch thunk of BidirectionalCollection.formIndex(before:)();
              }
            }

            v50 = v98;
            (*v114)(v98, AssociatedTypeWitness);
            v51 = v112;
          }

          else
          {
            (*v114)(v63, AssociatedTypeWitness);
            v50 = v63;
          }

          break;
      }

      (*v119)(v27, v19);
      dispatch thunk of IteratorProtocol.next()();
      if (v121(v30, 1, v19) == 1)
      {
        break;
      }

      v120(v27, v30, v19);
    }
  }

  (*(v95 + 8))(v125, v51);
  (*(v94 + 8))(v107, v108);
  v53 = *(v93 + 8);
  v53(v91, v48);
  v54 = v92;
  v55 = v126;
  v89(v92, v126, v48);
  v56 = *&v54[*(v48 + 48)];
  (*(v97 + 32))(v96, v54, AssociatedTypeWitness);
  v53(v55, v48);
  return v56;
}

uint64_t ShadowListUpdateRecorder.applyUpdates<A>(_:to:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a6@<X8>)
{
  v112 = a2;
  v113 = a1;
  v109 = a6;
  v7 = *(a3 + 16);
  v100 = *(a3 + 24);
  v103 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v107 = &v82 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  v11 = swift_getAssociatedTypeWitness();
  v108 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v82 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v82 - v22;
  v96 = v10;
  v98 = AssociatedTypeWitness;
  v23 = swift_getAssociatedConformanceWitness();
  v116[0] = v11;
  v116[1] = MEMORY[0x1E69E6530];
  v115 = v23;
  v116[2] = v23;
  v116[3] = MEMORY[0x1E69E6548];
  v24 = type metadata accessor for ListUpdate(0, v116);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v82 - v26;
  v28 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v99 = &v82 - v29;
  v30 = a4;
  v31 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = swift_getAssociatedTypeWitness();
  v82 = *(v114 - 8);
  v35 = MEMORY[0x1EEE9AC00](v114);
  v37 = &v82 - v36;
  v38 = *(v108 + 16);
  v88 = v108 + 16;
  v87 = v38;
  (v38)(v109, v112, v11, v35);
  (*(v31 + 16))(v34, v113, v30);
  v39 = v107;
  v40 = v99;
  dispatch thunk of Sequence.makeIterator()();
  v41 = v106;
  v42 = swift_getAssociatedConformanceWitness();
  v113 = v37;
  v43 = v42;
  dispatch thunk of IteratorProtocol.next()();
  v111 = *(v25 + 48);
  v112 = v25 + 48;
  if (v111(v40, 1, v24) != 1)
  {
    v46 = *(v25 + 32);
    v45 = v25 + 32;
    v110 = v46;
    v47 = (v108 + 32);
    v101 = v100 + 56;
    v95 = (v102 + 1);
    v108 += 8;
    v90 = (v45 - 24);
    v97 = v43;
    v102 = v47;
    v91 = v24;
    v104 = v45;
    v83 = v27;
    v46(v27, v40, v24);
    while (1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v56 = *v47;
        v57 = v93;
        v56(v93, v27, v11);
        if (dispatch thunk of static Comparable.<= infix(_:_:)())
        {
          (*(v100 + 56))(v103);
          v58 = v98;
          dispatch thunk of Collection.formIndex(after:)();
          v59 = v58;
          v39 = v107;
          (*v95)(v107, v59);
        }

        (*v108)(v57, v11);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload)
      {
        (*v90)(v27, v24);
        goto LABEL_5;
      }

      (*v47)(v105, v27, v11);
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v49 = v100;
        v50 = v108;
        v86 = *(v100 + 56);
        v86(v103, v100);
        v51 = v89;
        v52 = v39;
        v53 = v98;
        dispatch thunk of Collection.startIndex.getter();
        v85 = *v95;
        v85(v52, v53);
        v54 = dispatch thunk of static Comparable.> infix(_:_:)();
        v55 = *v50;
        (*v50)(v51, v11);
        if (v54)
        {
          v86(v103, v49);
          dispatch thunk of BidirectionalCollection.formIndex(before:)();
          v85(v52, v53);
          v55(v105, v11);
          v39 = v52;
          v41 = v106;
          v40 = v99;
          v47 = v102;
          v27 = v83;
          v24 = v91;
          goto LABEL_5;
        }

        v39 = v52;
        v40 = v99;
        v47 = v102;
        v27 = v83;
        v24 = v91;
        v55(v105, v11);
      }

      else
      {
        (*v108)(v105, v11);
      }

      v41 = v106;
LABEL_5:
      dispatch thunk of IteratorProtocol.next()();
      if (v111(v40, 1, v24) == 1)
      {
        return (*(v82 + 8))(v113, v114);
      }

      v110(v27, v40, v24);
    }

    v60 = *(swift_getTupleTypeMetadata2() + 48);
    v61 = *v47;
    (*v47)(v41, v27, v11);
    v62 = v94;
    v61(v94, &v27[v60], v11);
    v63 = v109;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v64 = *v108;
      (*v108)(v41, v11);
      v64(v63, v11);
      v24 = v91;
      v61(v63, v62, v11);
      v39 = v107;
      v40 = v99;
      goto LABEL_5;
    }

    v65 = v92;
    v87(v92, v63, v11);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v66 = v107;
      v86 = *(v100 + 56);
      (v86)(v103);
      v67 = v89;
      v68 = v98;
      dispatch thunk of Collection.startIndex.getter();
      v69 = *v95;
      v70 = v66;
      v62 = v94;
      v71 = v68;
      v65 = v92;
      (*v95)(v70, v71);
      v72 = dispatch thunk of static Comparable.> infix(_:_:)();
      (*v108)(v67, v11);
      if (v72)
      {
        v73 = v107;
        v86(v103, v100);
        v74 = v98;
        dispatch thunk of BidirectionalCollection.formIndex(before:)();
        v75 = v73;
        v62 = v94;
        v76 = v74;
        v65 = v92;
        v69(v75, v76);
      }
    }

    if (dispatch thunk of static Comparable.> infix(_:_:)())
    {
      if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
      {
LABEL_23:
        v77 = *v108;
        (*v108)(v65, v11);
        v77(v62, v11);
        v41 = v106;
        v77(v106, v11);
        v39 = v107;
LABEL_27:
        v40 = v99;
LABEL_28:
        v47 = v102;
        goto LABEL_5;
      }
    }

    else if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      goto LABEL_23;
    }

    v78 = v62;
    v79 = v107;
    (*(v100 + 56))(v103);
    v80 = v98;
    dispatch thunk of Collection.formIndex(after:)();
    (*v95)(v79, v80);
    v81 = *v108;
    (*v108)(v65, v11);
    v81(v78, v11);
    v41 = v106;
    v81(v106, v11);
    v39 = v79;
    goto LABEL_27;
  }

  return (*(v82 + 8))(v113, v114);
}

Swift::Int __swiftcall ShadowRowCollection.index(before:)(Swift::Int before)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.startIndex.getter();
  if (v3 == before)
  {
    dispatch thunk of Collection.startIndex.getter();
  }

  else
  {
    dispatch thunk of BidirectionalCollection.index(before:)();
  }

  return v3;
}

uint64_t ShadowRowCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v26 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v26 - v12;
  v15 = *(v14 + 48);
  v16 = *(a2 + 40);
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v7, v6, v17);
  v19 = ShadowListUpdateRecorder.initialIndex(_:)(v13, v3 + v16, a1, updated);
  *&v13[v15] = v19;
  v20 = v26;
  (*(v6 + 80))(v13, v7, v6);
  v30 = v19;
  swift_getAssociatedConformanceWitness();
  v21 = dispatch thunk of Collection.subscript.read();
  v23 = v22;
  v24 = swift_getAssociatedTypeWitness();
  (*(*(v24 - 8) + 16))(v28, v23, v24);
  v21(v29, 0);
  (*(v27 + 8))(v20, AssociatedTypeWitness);
  return (*(v11 + 8))(v13, TupleTypeMetadata2);
}

Swift::Int protocol witness for BidirectionalCollection.index(before:) in conformance ShadowRowCollection<A>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ShadowRowCollection.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.formIndex(before:) in conformance ShadowRowCollection<A>(Swift::Int *a1)
{
  result = ShadowRowCollection.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ShadowRowCollection<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))()
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
  v6[4] = ShadowRowCollection.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance ShadowRowCollection<A>;
}

void (*ShadowRowCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  ShadowRowCollection.subscript.getter(a2, a3, v8);
  return ShadowRowCollection.subscript.read;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance ShadowRowCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, a4);

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, WitnessTable);
}

void protocol witness for Collection.distance(from:to:) in conformance ShadowRowCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, a3);

  JUMPOUT(0x18D00C6C0);
}

Swift::Int protocol witness for Collection.index(after:) in conformance ShadowRowCollection<A>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ShadowRowCollection.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ShadowRowCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, a1);
  v6 = *(type metadata accessor for IndexingIterator() + 36);
  v7 = ShadowRowCollection.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ShadowRowCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t ShadowSectionCollection.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = a1;
  v21 = a3;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v18 = v3;
  v14 = *(v3 + 56);
  v14(v4, v3, v11);
  dispatch thunk of Collection.startIndex.getter();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v16 = v5;
  swift_getAssociatedConformanceWitness();
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v20 + 8))(v8, AssociatedTypeWitness);
  (v14)(v4, v18);
  if (v5)
  {
    dispatch thunk of Collection.startIndex.getter();
  }

  else
  {
    dispatch thunk of BidirectionalCollection.index(before:)();
  }

  return (v19)(v13, v9);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance ShadowSectionCollection<A>@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance ShadowSectionCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowSectionCollection<A>, a4);

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, WitnessTable);
}

void protocol witness for Collection.distance(from:to:) in conformance ShadowSectionCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for ShadowSectionCollection<A>, a3);

  JUMPOUT(0x18D00C6C0);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ShadowSectionCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable(protocol conformance descriptor for ShadowSectionCollection<A>, a1);
  type metadata accessor for IndexingIterator();
  ShadowSectionCollection.startIndex.getter(a1);
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ShadowSectionCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowSectionCollection<A>, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ShadowRowCollection<A>(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_getWitnessTable(a3, a1);
  v5 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v3, a1);
  return v5;
}

uint64_t *initializeBufferWithCopyOfBuffer for ShadowRowCollection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v24 = *(v4 + 64);
  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v5 = *(v23 + 80);
  v6 = *(v23 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64) + 7;
  v11 = v9 | *(v4 + 80) & 0xF8 | v5;
  if (v11 > 7 || ((*(v8 + 80) | v5 | *(v4 + 80)) & 0x100000) != 0 || ((v10 + ((v6 + ((v25 + v5) & ~v5) + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = (v14 + (((v11 | 7) + 16) & ~(v11 | 7)));
  }

  else
  {
    v22 = v7;
    (*(v4 + 16))(a1, a2, v3);
    v15 = a1;
    v16 = ((a1 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = (a1 + (v25 | v5)) & ~v5;
    v19 = (a2 + (v25 | v5)) & ~v5;
    v20 = *(v23 + 16);

    v20(v18, v19, AssociatedTypeWitness);
    (*(v8 + 16))((v18 + v6 + v9) & ~v9, (v19 + v6 + v9) & ~v9, v22);
    *((v10 + ((v18 + v6 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8) = *((v10 + ((v19 + v6 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  }

  return v15;
}

uint64_t initializeWithCopy for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 16);
  v13 = v11 + 16;
  v14 = *(v11 + 80);
  v15 = v9 + v14 + 8;
  v16 = (v15 + a1) & ~v14;
  v17 = (v15 + a2) & ~v14;

  v12(v16, v17, AssociatedTypeWitness);
  v18 = *(v13 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = v20 + 16;
  v22 = *(v20 + 80);
  v23 = (v18 + v22 + v16) & ~v22;
  v24 = (v18 + v22 + v17) & ~v22;
  (*(v20 + 16))(v23, v24, v19);
  *((*(v21 + 48) + 7 + v23) & 0xFFFFFFFFFFFFFFF8) = *((*(v21 + 48) + 7 + v24) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  v14 = (v13 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 24))(v14, v15, AssociatedTypeWitness);
  v16 = *(v11 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = v18 + 24;
  v20 = *(v18 + 80);
  v21 = (v16 + v20 + v14) & ~v20;
  v22 = (v16 + v20 + v15) & ~v20;
  (*(v18 + 24))(v21, v22, v17);
  *((*(v19 + 40) + 7 + v21) & 0xFFFFFFFFFFFFFFF8) = *((*(v19 + 40) + 7 + v22) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = v11 + 32;
  v13 = *(v11 + 80);
  v14 = v9 + v13 + 8;
  v15 = (v14 + a1) & ~v13;
  v16 = (v14 + a2) & ~v13;
  (*(v11 + 32))(v15, v16, AssociatedTypeWitness);
  v17 = *(v12 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = v19 + 32;
  v21 = *(v19 + 80);
  v22 = (v17 + v21 + v15) & ~v21;
  v23 = (v17 + v21 + v16) & ~v21;
  (*(v19 + 32))(v22, v23, v18);
  *((*(v20 + 32) + 7 + v22) & 0xFFFFFFFFFFFFFFF8) = *((*(v20 + 32) + 7 + v23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  v14 = (v13 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 40))(v14, v15, AssociatedTypeWitness);
  v16 = *(v11 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = v18 + 40;
  v20 = *(v18 + 80);
  v21 = (v16 + v20 + v14) & ~v20;
  v22 = (v16 + v20 + v15) & ~v20;
  (*(v18 + 40))(v21, v22, v17);
  *((*(v19 + 24) + 7 + v21) & 0xFFFFFFFFFFFFFFF8) = *((*(v19 + 24) + 7 + v22) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShadowRowCollection(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v33 = *(v4 + 84);
  if (v33 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v32 = *(v6 + 84);
  if (v32 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v4 + 64);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  if (*(v9 + 84) <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  v15 = *(v6 + 64) + v12;
  if (v13 >= a2)
  {
    goto LABEL_33;
  }

  v16 = ((*(*(v8 - 8) + 64) + ((v15 + (v14 & ~v11)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v5 == v13)
  {
    if (v33 < 0x7FFFFFFF)
    {
      v28 = *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }

    else
    {
      v25 = *(v4 + 48);

      return v25(a1);
    }
  }

  else
  {
    v26 = (a1 + v14) & ~v11;
    if (v32 == v13)
    {
      v27 = *(v6 + 48);

      return v27(v26, v32, AssociatedTypeWitness);
    }

    else
    {
      v29 = *(v9 + 48);
      v30 = (v15 + v26) & ~v12;

      return v29(v30);
    }
  }
}

void storeEnumTagSinglePayload for ShadowRowCollection(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v27 = v4;
  v29 = *(v4 + 84);
  if (v29 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v28 = *(v6 + 84);
  if (v28 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v4 + 64);
  if (*(v8 + 84) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v6 + 80);
  v13 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  v14 = *(v8 + 80);
  v15 = *(v6 + 64) + v14;
  v16 = ((*(v8 + 64) + ((v15 + (v13 & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (((*(v8 + 64) + ((v15 + (v13 & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v11 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (a2 > v11)
  {
    if (v16)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v11;
    }

    if (v16)
    {
      v21 = ~v11 + a2;
      bzero(a1, v16);
      *a1 = v21;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        *(a1 + v16) = v20;
      }

      else
      {
        *(a1 + v16) = v20;
      }
    }

    else if (v19)
    {
      *(a1 + v16) = v20;
    }

    return;
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v19 == 2)
  {
    *(a1 + v16) = 0;
    goto LABEL_40;
  }

  *(a1 + v16) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v5 == v11)
  {
    if (v29 < 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = a2 - 1;
      }

      *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) = v24;
      return;
    }

    v22 = *(v27 + 56);
    v23 = a1;
    goto LABEL_46;
  }

  v23 = ((a1 + v13) & ~v12);
  if (v28 == v11)
  {
    v22 = *(v6 + 56);
LABEL_46:

    v22(v23);
    return;
  }

  v25 = *(v9 + 56);
  v26 = (v23 + v15) & ~v14;

  v25(v26);
}

uint64_t *initializeBufferWithCopyOfBuffer for ShadowSectionCollection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    v10 = v6 + 8;
    (*(v4 + 16))(a1);
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithCopy for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  *((a1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *((a1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  *((a1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShadowSectionCollection(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_BYTE *storeEnumTagSinglePayload for ShadowSectionCollection(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t assignWithCopy for HostingControllerOverrides(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 2)
  {
    if (v4 == 2)
    {
      outlined destroy of PushTarget(a1);
      v6 = *(a2 + 9);
      *a1 = *a2;
      *(a1 + 9) = v6;
      goto LABEL_9;
    }

    swift_unknownObjectWeakCopyAssign();
LABEL_8:
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = v7;
    goto LABEL_9;
  }

  if (v4 != 2)
  {
    swift_unknownObjectWeakCopyInit();
    goto LABEL_8;
  }

  v5 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v5;
LABEL_9:
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for HostingControllerOverrides(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HostingControllerOverrides(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA22InspectorBarManagement33_DB4085A53F7E00BD5F11F3B74D2A8BAELLV_Tt1B5(int a1, uint64_t *a2)
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
    PropertyList.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateProperties<InspectorBarManagement>, &type metadata for InspectorBarManagement, &protocol witness table for InspectorBarManagement, type metadata accessor for UpdateProperties);
    lazy protocol witness table accessor for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>();
    Attribute.init<A>(body:value:flags:update:)();
    AGCreateWeakAttribute();
    return PropertyList.subscript.setter();
  }

  else
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateEnvironment<InspectorBarManagement>, &type metadata for InspectorBarManagement, &protocol witness table for InspectorBarManagement, type metadata accessor for UpdateEnvironment);
    lazy protocol witness table accessor for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>();
    Attribute.init<A>(body:value:flags:update:)();
    return _GraphInputs.environment.setter();
  }
}

uint64_t _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5(int a1, uint64_t *a2)
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
    PropertyList.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateProperties<UpdateBridgesToAllowedBehaviors>, &type metadata for UpdateBridgesToAllowedBehaviors, &protocol witness table for UpdateBridgesToAllowedBehaviors, type metadata accessor for UpdateProperties);
    lazy protocol witness table accessor for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>();
    Attribute.init<A>(body:value:flags:update:)();
    AGCreateWeakAttribute();
    return PropertyList.subscript.setter();
  }

  else
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>, &type metadata for UpdateBridgesToAllowedBehaviors, &protocol witness table for UpdateBridgesToAllowedBehaviors, type metadata accessor for UpdateEnvironment);
    lazy protocol witness table accessor for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>();
    Attribute.init<A>(body:value:flags:update:)();
    return _GraphInputs.environment.setter();
  }
}

uint64_t _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA025NavigationCommonTransformeF0V_Tt1B5(int a1, uint64_t *a2)
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
    PropertyList.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateProperties<NavigationCommonTransformBridgeProperties>, &type metadata for NavigationCommonTransformBridgeProperties, &protocol witness table for NavigationCommonTransformBridgeProperties, type metadata accessor for UpdateProperties);
    lazy protocol witness table accessor for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>();
    Attribute.init<A>(body:value:flags:update:)();
    AGCreateWeakAttribute();
    return PropertyList.subscript.setter();
  }

  else
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(0, &lazy cache variable for type metadata for UpdateEnvironment<NavigationCommonTransformBridgeProperties>, &type metadata for NavigationCommonTransformBridgeProperties, &protocol witness table for NavigationCommonTransformBridgeProperties, type metadata accessor for UpdateEnvironment);
    lazy protocol witness table accessor for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>();
    Attribute.init<A>(body:value:flags:update:)();
    return _GraphInputs.environment.setter();
  }
}

unint64_t lazy protocol witness table accessor for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors()
{
  result = lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors;
  if (!lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerAllowedBehaviors, &type metadata for HostingControllerAllowedBehaviors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors;
  if (!lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerAllowedBehaviors, &type metadata for HostingControllerAllowedBehaviors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors;
  if (!lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerAllowedBehaviors, &type metadata for HostingControllerAllowedBehaviors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors;
  if (!lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerAllowedBehaviors, &type metadata for HostingControllerAllowedBehaviors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerAllowedBehaviors and conformance HostingControllerAllowedBehaviors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HostingControllerBridges and conformance HostingControllerBridges()
{
  result = lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges;
  if (!lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerBridges, &type metadata for HostingControllerBridges, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges;
  if (!lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerBridges, &type metadata for HostingControllerBridges, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges;
  if (!lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerBridges, &type metadata for HostingControllerBridges, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges;
  if (!lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerBridges, &type metadata for HostingControllerBridges, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingControllerBridges and conformance HostingControllerBridges);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance UpdateBridgesToAllowedBehaviors(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = v4;
  v6 = *(a2 + 48);
  v26 = *(a2 + 64);
  v7 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v7;
  v19 = v24;
  v20 = v6;
  v21 = *(a2 + 64);
  v8 = *a1;
  v27 = *(a2 + 80);
  v22 = *(a2 + 80);
  v17 = v23[0];
  v18 = v5;
  outlined init with copy of _ViewInputs(v23, v32);
  _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5(v8, &v17);
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v29 = v22;
  v28[0] = v17;
  v28[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v28, v32);
  a3(v9, &v11);
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v31 = v16;
  v30[0] = v11;
  v30[1] = v12;
  outlined destroy of _ViewInputs(v30);
  v32[2] = v19;
  v32[3] = v20;
  v32[4] = v21;
  v33 = v22;
  v32[0] = v17;
  v32[1] = v18;
  return outlined destroy of _ViewInputs(v32);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UpdateBridgesToAllowedBehaviors(int *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v7);
  Inputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5 = _s7SwiftUI33ViewGraphBridgePropertiesModifierPAAE11_makeInputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5(v4, v7);
  a3(Inputs8modifier6inputsyAA01_D5ValueVyxG_AA01_dI0VztFZAA31UpdateBridgesToAllowedBehaviorsV_Tt1B5, v7);
  return outlined destroy of _ViewListInputs(v7);
}

unint64_t HostingControllerOverrides.debugDescription.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    _print_unlocked<A, B>(_:_:)();
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    }

    v2[2] = v4 + 1;
    v5 = &v2[4 * v4];
    v5[4] = 7758190;
    v5[5] = 0xE300000000000000;
    v5[6] = 0;
    v5[7] = 0xE000000000000000;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    _print_unlocked<A, B>(_:_:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    }

    v9 = v2[2];
    v8 = v2[3];
    if (v9 >= v8 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v2);
    }

    v2[2] = v9 + 1;
    v10 = &v2[4 * v9];
    v10[4] = 0x74696C7073;
    v10[5] = 0xE500000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(32);

  type metadata accessor for (String, String)();
  v12 = MEMORY[0x18D00CC60](v2, v11);
  MEMORY[0x18D00C9B0](v12);

  MEMORY[0x18D00C9B0](62, 0xE100000000000000);

  return 0xD00000000000001DLL;
}

void type metadata accessor for (String, String)()
{
  if (!lazy cache variable for type metadata for (String, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, String));
    }
  }
}

void type metadata accessor for (PushTarget?, PushTarget?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PushTarget?, PushTarget?))
  {
    type metadata accessor for PushTarget?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PushTarget?, PushTarget?));
    }
  }
}

unint64_t lazy protocol witness table accessor for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>;
  if (!lazy protocol witness table cache variable for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>, &type metadata for UpdateBridgesToAllowedBehaviors, &protocol witness table for UpdateBridgesToAllowedBehaviors, type metadata accessor for UpdateEnvironment);
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateEnvironment<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateEnvironment<UpdateBridgesToAllowedBehaviors> and conformance UpdateEnvironment<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>()
{
  result = lazy protocol witness table cache variable for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>;
  if (!lazy protocol witness table cache variable for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateProperties<UpdateBridgesToAllowedBehaviors>, &type metadata for UpdateBridgesToAllowedBehaviors, &protocol witness table for UpdateBridgesToAllowedBehaviors, type metadata accessor for UpdateProperties);
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateProperties<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateProperties<UpdateBridgesToAllowedBehaviors> and conformance UpdateProperties<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>;
  if (!lazy protocol witness table cache variable for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateEnvironment<NavigationCommonTransformBridgeProperties>, &type metadata for NavigationCommonTransformBridgeProperties, &protocol witness table for NavigationCommonTransformBridgeProperties, type metadata accessor for UpdateEnvironment);
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateEnvironment<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateEnvironment<NavigationCommonTransformBridgeProperties> and conformance UpdateEnvironment<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>()
{
  result = lazy protocol witness table cache variable for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>;
  if (!lazy protocol witness table cache variable for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateProperties<NavigationCommonTransformBridgeProperties>, &type metadata for NavigationCommonTransformBridgeProperties, &protocol witness table for NavigationCommonTransformBridgeProperties, type metadata accessor for UpdateProperties);
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateProperties<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateProperties<NavigationCommonTransformBridgeProperties> and conformance UpdateProperties<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>;
  if (!lazy protocol witness table cache variable for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateEnvironment<InspectorBarManagement>, &type metadata for InspectorBarManagement, &protocol witness table for InspectorBarManagement, type metadata accessor for UpdateEnvironment);
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateEnvironment<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateEnvironment<InspectorBarManagement> and conformance UpdateEnvironment<A>);
  }

  return result;
}

void type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>()
{
  result = lazy protocol witness table cache variable for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>;
  if (!lazy protocol witness table cache variable for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>)
  {
    type metadata accessor for UpdateEnvironment<UpdateBridgesToAllowedBehaviors>(255, &lazy cache variable for type metadata for UpdateProperties<InspectorBarManagement>, &type metadata for InspectorBarManagement, &protocol witness table for InspectorBarManagement, type metadata accessor for UpdateProperties);
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateProperties<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateProperties<InspectorBarManagement> and conformance UpdateProperties<A>);
  }

  return result;
}

void LinearGaugeStyle.init(tint:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

double ComplicationLinearGaugeStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *v2;
  v15 = *a1;
  v16 = v4;
  v17 = v5;
  v18 = v6;

  AccessoryLinearGauge.init(configuration:gradient:)(&v15, v7, v19);
  v8 = v19[11];
  a2[10] = v19[10];
  a2[11] = v8;
  a2[12] = v20[0];
  *(a2 + 201) = *(v20 + 9);
  v9 = v19[7];
  a2[6] = v19[6];
  a2[7] = v9;
  v10 = v19[9];
  a2[8] = v19[8];
  a2[9] = v10;
  v11 = v19[3];
  a2[2] = v19[2];
  a2[3] = v11;
  v12 = v19[5];
  a2[4] = v19[4];
  a2[5] = v12;
  result = *v19;
  v14 = v19[1];
  *a2 = v19[0];
  a2[1] = v14;
  return result;
}

double protocol witness for GaugeStyle.makeBody(configuration:) in conformance ComplicationLinearGaugeStyle@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *v2;
  v15 = *a1;
  v16 = v4;
  v17 = v5;
  v18 = v6;

  AccessoryLinearGauge.init(configuration:gradient:)(&v15, v7, v19);
  v8 = v19[11];
  a2[10] = v19[10];
  a2[11] = v8;
  a2[12] = v20[0];
  *(a2 + 201) = *(v20 + 9);
  v9 = v19[7];
  a2[6] = v19[6];
  a2[7] = v9;
  v10 = v19[9];
  a2[8] = v19[8];
  a2[9] = v10;
  v11 = v19[3];
  a2[2] = v19[2];
  a2[3] = v11;
  v12 = v19[5];
  a2[4] = v19[4];
  a2[5] = v12;
  result = *v19;
  v14 = v19[1];
  *a2 = v19[0];
  a2[1] = v14;
  return result;
}

void type metadata accessor for FocusedValueModifier<Bool?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FocusedValueModifier<Bool?>)
  {
    type metadata accessor for Bool?();
    v5 = type metadata accessor for FocusedValueModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for FocusedValueModifier<Bool?>);
    }
  }
}

uint64_t type metadata completion function for PrintedViewModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t FocusedValues.isPrintableContent.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 2)
  {
    if ((*(v4 + 8) & 2) != 0)
    {
      if (one-time initialization token for scene == -1)
      {
LABEL_6:
        type metadata accessor for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>(0, a2, a3, a4);
        lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>(v5, v6, v7, v8);

        return PropertyList.subscript.setter();
      }
    }

    else if (one-time initialization token for view == -1)
    {
      goto LABEL_6;
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PrintedViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PrintedViewModifier<A>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>)
  {
    v4 = type metadata accessor for FocusedValuePropertyKey(0, &type metadata for FocusedValues.__Key_isPrintableContent, &protocol witness table for FocusedValues.__Key_isPrintableContent, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>;
  if (!lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>)
  {
    type metadata accessor for FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValuePropertyKey<A>, v7, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_isPrintableContent> and conformance FocusedValuePropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithCopy for MultimodalNavigationStackViewHost(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for MultimodalNavigationStackViewHost(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;

  return a1;
}

_OWORD *assignWithTake for MultimodalNavigationStackViewHost(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void key path getter for EnvironmentValues.keyboardAppearance : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.keyboardAppearance : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t MultimodalNavigationStack.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  outlined init with copy of NavigationAuthority(v1 + 88, &v75);
  Strong = swift_weakLoadStrong();
  outlined destroy of NavigationAuthority(&v75);
  if (!Strong || (swift_beginAccess(), v6 = Strong[8], v74[6] = Strong[7], v74[7] = v6, v74[8] = Strong[9], *(&v74[8] + 10) = *(Strong + 154), v7 = Strong[4], v74[2] = Strong[3], v74[3] = v7, v8 = Strong[6], v74[4] = Strong[5], v74[5] = v8, v9 = Strong[2], v74[0] = Strong[1], v74[1] = v9, outlined init with copy of EquatableNavigationTitle?(v74, v91, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , *&v79[96] = v74[6], *&v79[112] = v74[7], *&v79[128] = v74[8], *&v79[138] = *(&v74[8] + 10), *&v79[32] = v74[2], *&v79[48] = v74[3], *&v79[64] = v74[4], *&v79[80] = v74[5], *v79 = v74[0], *&v79[16] = v74[1], getEnumTag for AccessibilityActionCategory.Category(v79) == 1))
  {
    memset(v91, 0, 448);
LABEL_4:
    v10 = *(v3 + 72);
    v11 = *(v3 + 80);
    if (v10 == 4)
    {
      LOBYTE(v10) = 0;
    }

    *&v95[0] = *(v3 + 64);
    BYTE8(v95[0]) = v10;
    *&v95[1] = v11;
    LOBYTE(v95[28]) = 0;
    goto LABEL_7;
  }

  v54 = *(v3 + 64);
  v55 = *(v3 + 80);
  v56 = *(v3 + 72);
  v95[6] = *&v79[96];
  v95[7] = *&v79[112];
  v95[8] = *&v79[128];
  *(&v95[8] + 10) = *&v79[138];
  v95[2] = *&v79[32];
  v95[3] = *&v79[48];
  v95[4] = *&v79[64];
  v95[5] = *&v79[80];
  v95[0] = *v79;
  v95[1] = *&v79[16];
  NavigationState.stackContent(for:)(v54, v56, v55, v91);
  _sypSgWOhTm_7(v74, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
  if (v91[448] == 255)
  {
    goto LABEL_4;
  }

  memcpy(v95, v91, 0x1C1uLL);
LABEL_7:
  v12 = NavigationState.Base.count.getter();
  outlined init with copy of NavigationState.Base(v95, v79);
  MultimodalNavigationStack.rootView.getter(v74);
  outlined init with copy of MultimodalNavigationStack(v3, v91);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  outlined init with take of MultimodalNavigationStack(v91, v13 + 24);
  outlined init with copy of NavigationState.Base(v79, v91);
  type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  v15 = v74[4];
  v16 = v74[5];
  v17 = v74[2];
  *(v14 + 80) = v74[3];
  *(v14 + 96) = v15;
  *(v14 + 112) = v16;
  v18 = v74[0];
  v19 = v74[1];
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = v18;
  *(v14 + 128) = v74[6];
  *(v14 + 48) = v19;
  *(v14 + 64) = v17;
  outlined destroy of NavigationState.StackContent.Views(v79);
  v92 = partial apply for closure #1 in MultimodalNavigationStack.body.getter;
  v93 = v13;
  v94 = v14;
  v20 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v23)
  {
LABEL_45:
    outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v91, type metadata accessor for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>);
    v27 = MEMORY[0x1E69E7CC0];
LABEL_48:
    outlined init with copy of NavigationState.StackContent(v95, a1 + 8);
    outlined init with copy of NavigationAuthority(v3 + 88, a1 + 464);
    v57 = *(v3 + 144);
    v58 = *(v3 + 152);
    v59 = *(v3 + 160);
    v60 = *(v3 + 168);
    *v91 = *(v3 + 136);
    v91[8] = v57;
    *&v91[16] = v58;
    v91[24] = v59;
    *&v91[32] = v60;
    type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    outlined destroy of NavigationState.StackContent(v95);
    v61 = *v79;
    v62 = v79[8];
    v63 = *&v79[16];
    v64 = v79[24];
    *a1 = v27;
    *(a1 + 488) = v61;
    *(a1 + 496) = v62;
    *(a1 + 504) = v63;
    *(a1 + 512) = v64;
    *(a1 + 520) = swift_getKeyPath();
    *(a1 + 528) = 0;
    result = swift_getKeyPath();
    *(a1 + 536) = result;
    *(a1 + 544) = 0;
    *(a1 + 552) = 0;
    *(a1 + 560) = 0;
    *(a1 + 568) = 1;
    *(a1 + 576) = 0;
    *(a1 + 584) = 0;
    *(a1 + 592) = 0;
    *(a1 + 608) = 0;
    *(a1 + 600) = 0;
    return result;
  }

  v24 = 0;
  v25 = 0;
  do
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v20, v25 & 1, v21, v22);
    ++v24;
  }

  while ((v25 & 1) == 0 || v22 < 2u);
  if (!v26)
  {
    goto LABEL_45;
  }

  v70 = v3;
  v71 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
  v27 = v78;
  v28 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v26 < 0)
  {
    goto LABEL_57;
  }

  v32 = v28;
  v2 = v29;
  v33 = v30;
  v69 = a1;
  v34 = 0;
  v72 = v24;
  v35 = v31;
  while (1)
  {
    v36 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    if (v39)
    {
      break;
    }

    if (v2)
    {
      goto LABEL_59;
    }

    if (v32 < v36)
    {
      goto LABEL_50;
    }

    if (v36 >= v32)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          if (v38 == 1 && v33 < v37)
          {
            goto LABEL_55;
          }
        }

        else if (v38 != 2 || v37)
        {
          goto LABEL_54;
        }
      }

      else if (v38)
      {
        if (v38 != 2)
        {
          goto LABEL_60;
        }
      }

      else if (v33 < v37)
      {
        goto LABEL_56;
      }
    }

    v40 = outlined init with copy of NavigationState.Base(v91, v79);
    v73 = v35;
    if (v90)
    {
      if (v90 == 1)
      {
        v67 = v89;
        v66 = v88;
        outlined consume of ResolvedNavigationDestinations?(v80, v81, v82, v83, v84, v85, v86, v87);
        memcpy(v74, v79, 0x163uLL);
        if (v32)
        {
          goto LABEL_62;
        }

        v41 = v33;
        specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(0, 0, v33, v35, v74, 0, v76);
      }

      else
      {
        v42 = *v79;
        v96[2] = *&v79[40];
        v96[3] = *&v79[56];
        v97 = *&v79[72];
        v96[0] = *&v79[8];
        v96[1] = *&v79[24];
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        if (*(*v79 + 16) < v32)
        {
          goto LABEL_52;
        }

        *&v74[0] = *v79;
        MEMORY[0x1EEE9AC00](v40);
        v67 = v74;
        v68 = v96;
        v43 = v71;
        v44 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), &v66, 0, v32);
        v71 = v43;
        if (v32 >= *(v42 + 16))
        {
          goto LABEL_53;
        }

        v45 = v44;
        outlined init with copy of NavigationColumnState(v42 + 360 * v32 + 32, v74);

        v41 = v33;
        specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(v32, 0, v33, v73, v74, v45, v76);
        _sypSgWOhTm_7(v96, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
      }

      outlined destroy of NavigationColumnState(v74);
    }

    else
    {
      v41 = v33;
      specialized NavigationState.StackContent.Views.ViewsSequence.initialRootView(for:)(*v79, v79[8], *&v79[16], v76);
    }

    *v79 = v34;
    *&v79[40] = v76[2];
    *&v79[56] = v76[3];
    *&v79[72] = v77[0];
    *&v79[81] = *(v77 + 9);
    *&v79[8] = v76[0];
    *&v79[24] = v76[1];
    outlined init with copy of (offset: Int, element: NavigationState.StackContent.PositionedView)(v79, v74, type metadata accessor for (offset: Int, element: NavigationState.StackContent.PositionedView));
    v46 = *(&v74[0] + 1);

    outlined destroy of NavigationState.StackContent.PositionedView(v74 + 8);
    outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v79, type metadata accessor for (offset: Int, element: NavigationState.StackContent.PositionedView));
    v78 = v27;
    v48 = *(v27 + 16);
    v47 = *(v27 + 24);
    if (v48 >= v47 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
      v27 = v78;
    }

    *(v27 + 16) = v48 + 1;
    v49 = v27 + 16 * v48;
    *(v49 + 32) = v46;
    *(v49 + 40) = v34;
    specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v32, 0, v41, v73);
    v32 = v50;
    v2 = v51;
    v33 = v52;
    v35 = v53;
    if (v72 == ++v34)
    {
      outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v91, type metadata accessor for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>);
      a1 = v69;
      v3 = v70;
      goto LABEL_48;
    }
  }

LABEL_58:
  if (v2)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  __break(1u);
LABEL_62:
  LODWORD(v68) = 0;
  v67 = 894;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MultimodalNavigationStack.rootView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  outlined init with copy of NavigationAuthority(v1 + 88, v37);
  Strong = swift_weakLoadStrong();
  outlined destroy of NavigationAuthority(v37);
  if (!Strong || (swift_beginAccess(), v5 = Strong[8], v25 = Strong[7], v6 = Strong[9], v26 = v5, v27[0] = v6, *(v27 + 10) = *(Strong + 154), v7 = Strong[4], v21 = Strong[3], v22 = v7, v8 = Strong[6], v23 = Strong[5], v24 = v8, v9 = Strong[2], v19 = Strong[1], v20 = v9, outlined init with copy of EquatableNavigationTitle?(&v19, __dst, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v34 = v25, v35 = v26, v36[0] = v27[0], *(v36 + 10) = *(v27 + 10), v30 = v21, v31 = v22, v32 = v23, v33 = v24, v28 = v19, v29 = v20, getEnumTag for AccessibilityActionCategory.Category(&v28) == 1) || (v10 = *(v2 + 64), v11 = *(v2 + 80), v12 = *(v2 + 72), __dst[6] = v34, __dst[7] = v35, __dst[8] = v36[0], *(&__dst[8] + 10) = *(v36 + 10), __dst[2] = v30, __dst[3] = v31, __dst[4] = v32, __dst[5] = v33, __dst[0] = v28, __dst[1] = v29, NavigationState.stackContent(for:)(v10, v12, v11, __src), _sypSgWOhTm_7(&v19, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), __src[448] == 255))
  {
    v13 = *(v2 + 72);
    v14 = *(v2 + 80);
    if (v13 == 4)
    {
      LOBYTE(v13) = 0;
    }

    *&__dst[0] = *(v2 + 64);
    BYTE8(__dst[0]) = v13;
    *&__dst[1] = v14;
    LOBYTE(__dst[28]) = 0;
  }

  else
  {
    memcpy(__dst, __src, 0x1C1uLL);
  }

  v15 = NavigationState.Base.count.getter();
  v16 = static HorizontalAlignment.center.getter();
  outlined init with copy of _VariadicView_Children(v2, a1 + 24);
  *a1 = v16;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v17 = specialized Environment.wrappedValue.getter(*(v2 + 120), *(v2 + 128));
  result = outlined destroy of NavigationState.StackContent(__dst);
  *(a1 + 88) = v17;
  *(a1 + 96) = v15 == 1;
  return result;
}

void closure #1 in MultimodalNavigationStack.body.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *a1 + 1 == a2;
    type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    *a4 = v5;
    *(a4 + 8) = v6;
    *(a4 + 16) = v8;
    *(a4 + 32) = v9;
    *(a4 + 40) = v10;
    *(a4 + 48) = v11;
    *(a4 + 56) = v12;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0u;
    *(a4 + 88) = 1;
    *(a4 + 96) = 0;
    *(a4 + 104) = 0u;
    *(a4 + 120) = 0;
    *(a4 + 121) = v8;
    *(a4 + 124) = *(&v8 + 3);
    *(a4 + 128) = 0u;
    *(a4 + 144) = 1;
    *(a4 + 152) = 0u;
    *(a4 + 168) = 1;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 1;
    *(a4 + 200) = 0;
    *(a4 + 208) = 1;
    *(a4 + 216) = 0;
    *(a4 + 224) = 0;
    *(a4 + 232) = 0;
    *(a4 + 240) = swift_getKeyPath();
    *(a4 + 248) = 0;
    *(a4 + 256) = swift_getKeyPath();
    *(a4 + 264) = 0;
    *(a4 + 272) = swift_getKeyPath();
    *(a4 + 280) = 0;
    *(a4 + 288) = 0x403E000000000000;
    static Color.black.getter();
    v7 = Color.opacity(_:)();

    *(a4 + 296) = v7;
  }
}

void closure #1 in RootItemModifier.body(content:)(__int128 *a1, uint64_t a2, double a3)
{
  *&v24 = specialized RootItemModifier.localizedApplicationName()();
  *(&v24 + 1) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  v17 = [v14 _applicationIconImageForBundleIdentifier_format_scale_];
  if (v17)
  {
    type metadata accessor for ImageProviderBox<UIImage>(0);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.ResizableProvider>, lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider, MEMORY[0x1E6981670], MEMORY[0x1E697E9B8]);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 1;
    if (one-time initialization token for clarityUINavigationAppIconShadow != -1)
    {
      v23 = v19;
      swift_once();
      v19 = v23;
    }

    v20 = v11 & 1;
    *&v24 = v19;
    *(&v24 + 1) = static Color.clarityUINavigationAppIconShadow;
    v25 = xmmword_18CDF5D50;
    *&v26[0] = 0x3FF0000000000000;
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ShadowEffect>, MEMORY[0x1E6981748], MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>();

    v21 = AnyView.init<A>(_:)();
    v22 = a1[1];
    v24 = *a1;
    v25 = v22;
    v26[0] = a1[2];
    *(v26 + 9) = *(a1 + 41);
    _sypSgWOhTm_7(&v24, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    *a1 = v7;
    *(a1 + 1) = v9;
    *(a1 + 2) = v20;
    *(a1 + 3) = v13;
    *(a1 + 4) = 1;
    *(a1 + 40) = 5;
    *(a1 + 6) = v21;
    *(a1 + 56) = 3;
    if (v13 != 1)
    {

      outlined consume of ListItemTint?(1);
      *(a1 + 4) = a2;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance RootItemModifier@<X0>(void (**a1)(__int128 *a1, uint64_t a2)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a1 = partial apply for closure #1 in RootItemModifier.body(content:);
  a1[1] = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BarTransitionProgress(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
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

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t StackItemModifier.body(content:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v21 = v2;
  memcpy(__dst, v1, sizeof(__dst));
  v3 = BYTE8(__dst[0]);
  v20 = specialized Environment.wrappedValue.getter(*&__dst[17], SBYTE8(__dst[17]));
  closure #1 in StackItemModifier.body(content:)(__dst, __src);
  memcpy(v30, __src, 0x161uLL);
  memcpy(v31, __src, 0x161uLL);
  outlined init with copy of TaskPriority?(v30, v27, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>);
  outlined destroy of TaskPriority?(v31, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>);
  memcpy(&v25[6], v30, 0x161uLL);
  if (one-time initialization token for clarityUIContentBackground != -1)
  {
    swift_once();
  }

  v19 = Color.opacity(_:)();
  v18 = static Edge.Set.all.getter();
  v4 = *&__dst[0];
  if (*&__dst[0])
  {
    v5 = static AnyTransition.move(edge:)();
  }

  else
  {
    v5 = static AnyTransition.identity.getter();
  }

  v17 = v5;
  AccessibilityProperties.init()();
  if (v3)
  {
    *&v27[7] = 0x400000000;
  }

  else
  {
    *&v27[7] = 0x400000004;
  }

  BYTE8(v27[7]) = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v27);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v16 = swift_allocObject();
  memcpy((v16 + 16), __src, 0x128uLL);
  memcpy(v26, v25, sizeof(v26));
  v6 = swift_allocObject();
  memcpy((v6 + 16), __dst, 0x130uLL);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __dst, 0x130uLL);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __dst, 0x130uLL);
  KeyPath = swift_getKeyPath();
  v27[0] = __dst[14];
  outlined init with copy of StackItemModifier(__dst, __src);
  outlined init with copy of StackItemModifier(__dst, __src);
  outlined init with copy of StackItemModifier(__dst, __src);
  v10 = MEMORY[0x1E6981790];
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (LOBYTE(__src[0]))
  {
    v11 = 12;
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(__src[0]) = v3;
  BYTE1(__src[0]) = v20 & 1;
  memcpy(__src + 2, v26, 0x167uLL);
  __src[46] = v19;
  LOBYTE(__src[47]) = v18;
  __src[48] = v17;
  *&__src[49] = v4;
  LOBYTE(__src[50]) = v3;
  __src[51] = v16;
  __src[52] = 0;
  __src[53] = partial apply for closure #2 in StackItemModifier.body(content:);
  __src[54] = v6;
  __src[55] = partial apply for closure #3 in StackItemModifier.body(content:);
  __src[56] = v7;
  __src[57] = partial apply for closure #4 in StackItemModifier.body(content:);
  __src[58] = v8;
  __src[59] = KeyPath;
  __src[60] = v11;
  v27[0] = *(&__dst[11] + 8);
  v27[1] = *(&__dst[12] + 8);
  *&v27[2] = *(&__dst[13] + 1);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, v10);
  State.wrappedValue.getter();
  v12 = swift_allocObject();
  memcpy((v12 + 16), __dst, 0x130uLL);
  outlined init with copy of StackItemModifier(__dst, v27);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActi, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<MultimodalCustomKeyb, type metadata accessor for _EnvironmentKeyWritingModifier<UIKeyboardAppearance>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _Preference();
  lazy protocol witness table accessor for type BarTransitionProgress and conformance BarTransitionProgress();
  View.onChange<A>(of:initial:_:)();

  memcpy(v23, __src, sizeof(v23));
  outlined destroy of TaskPriority?(v23, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActi, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<MultimodalCustomKeyb, type metadata accessor for _EnvironmentKeyWritingModifier<UIKeyboardAppearance>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>);
  memcpy(v22, v27, sizeof(v22));
  v13 = swift_allocObject();
  memcpy((v13 + 16), __dst, 0x130uLL);
  outlined init with copy of StackItemModifier(__dst, __src);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionM( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigati,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKe,  MEMORY[0x1E69805D0]);
  View.onChange<A>(of:initial:_:)();

  memcpy(v24, v22, sizeof(v24));
  outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v24, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>);
  v14 = swift_allocObject();
  memcpy((v14 + 16), __dst, 0x130uLL);
  memcpy(v21, __src, 0x270uLL);
  *(v21 + 78) = partial apply for closure #6 in StackItemModifier.body(content:);
  *(v21 + 79) = v14;
  *(v21 + 40) = 0u;
  return outlined init with copy of StackItemModifier(__dst, v22);
}

__n128 closure #1 in StackItemModifier.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0x130uLL);
  KeyPath = swift_getKeyPath();
  v6 = *(a1 + 296);
  v7 = *(a1 + 288);
  outlined init with copy of StackItemModifier(a1, &v38);

  v8 = static Alignment.center.getter();
  LOBYTE(v66) = 0;
  *&v49 = KeyPath;
  BYTE8(v49) = 0;
  *&v50 = v6;
  *(&v50 + 1) = v7;
  v52 = 0;
  v51 = 0;
  *&v53 = v8;
  *(&v53 + 1) = v9;
  v62 = v49;
  v63 = v50;
  v64 = 0u;
  v65 = v53;
  v54 = KeyPath;
  v55 = 0;
  v56 = v6;
  v57 = v7;
  v59 = 0;
  v58 = 0;
  v60 = v8;
  v61 = v9;
  outlined init with copy of (offset: Int, element: NavigationState.StackContent.PositionedView)(&v49, &v38, type metadata accessor for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>);
  outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(&v54, type metadata accessor for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>);
  v10 = *(a1 + 200);
  v66 = *(a1 + 184);
  v67 = v10;
  *&v68 = *(a1 + 216);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v25 = v38;
  v24 = v39;
  v11 = BYTE8(v39);
  v12 = v40;
  LOBYTE(v6) = BYTE8(v40);
  v75[0] = BYTE8(v39);
  v26[0] = BYTE8(v40);
  v13 = static HorizontalAlignment.center.getter();
  closure #3 in closure #1 in StackItemModifier.body(content:)(a1, v35);
  v70 = v35[4];
  v71 = v36;
  v66 = v35[0];
  v67 = v35[1];
  v68 = v35[2];
  v69 = v35[3];
  v72 = v37;
  v73 = xmmword_18CD6A6D0;
  LOWORD(v74) = 0;
  *(&v74 + 1) = v13;
  *&v48[119] = xmmword_18CD6A6D0;
  *&v48[135] = v74;
  *&v48[55] = v35[3];
  *&v48[87] = v36;
  *&v48[103] = v37;
  *&v48[23] = v35[1];
  *&v48[39] = v35[2];
  *&v48[71] = v35[4];
  *&v48[7] = v35[0];
  v42 = v35[4];
  v43 = v36;
  LOBYTE(v27) = 0;
  v38 = v35[0];
  v39 = v35[1];
  v40 = v35[2];
  v41 = v35[3];
  v44 = v37;
  v45 = xmmword_18CD6A6D0;
  v46 = 0;
  v47 = v13;
  outlined init with copy of _InsetViewModifier<MultimodalNavigationTitleBar>(&v66, &v30);
  outlined destroy of _InsetViewModifier<MultimodalNavigationTitleBar>(&v38);
  v14 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v14;
  v34 = *(a1 + 128);
  v15 = *(a1 + 80);
  v30 = *(a1 + 64);
  v31 = v15;
  type metadata accessor for NavigationTitleStorage??(0, &lazy cache variable for type metadata for State<EquatableNavigationTitle?>, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  *(v35 + 8) = v27;
  *(&v35[1] + 8) = v28;
  *(&v35[2] + 8) = v29[0];
  *(&v35[3] + 1) = *(v29 + 9);
  *v75 = 0;
  *&v75[8] = v27;
  *&v75[24] = v28;
  *&v75[40] = v29[0];
  *&v75[49] = *(v29 + 9);
  LOBYTE(v34) = BYTE8(v29[1]);
  v32 = *&v75[32];
  v33 = *&v75[48];
  v30 = *v75;
  v31 = *&v75[16];
  *&v35[0] = 0;
  outlined init with copy of (offset: Int, element: NavigationState.StackContent.PositionedView)(v75, v26, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>);
  outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v35, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>);
  *a2 = partial apply for closure #1 in closure #1 in StackItemModifier.body(content:);
  *(a2 + 8) = 0;
  *(a2 + 16) = partial apply for closure #2 in closure #1 in StackItemModifier.body(content:);
  *(a2 + 24) = v4;
  v16 = v63;
  *(a2 + 32) = v62;
  *(a2 + 48) = v16;
  v17 = v65;
  *(a2 + 64) = v64;
  *(a2 + 80) = v17;
  *(a2 + 96) = v25;
  *(a2 + 112) = v24;
  *(a2 + 120) = v11;
  *(a2 + 128) = v12;
  *(a2 + 136) = v6;
  v18 = *&v48[112];
  *(a2 + 233) = *&v48[96];
  *(a2 + 249) = v18;
  *(a2 + 265) = *&v48[128];
  *(a2 + 280) = *&v48[143];
  v19 = *&v48[48];
  *(a2 + 169) = *&v48[32];
  *(a2 + 185) = v19;
  v20 = *&v48[80];
  *(a2 + 201) = *&v48[64];
  *(a2 + 217) = v20;
  v21 = *&v48[16];
  *(a2 + 137) = *v48;
  *(a2 + 153) = v21;
  v22 = v33;
  *(a2 + 320) = v32;
  *(a2 + 336) = v22;
  *(a2 + 352) = v34;
  result = v31;
  *(a2 + 288) = v30;
  *(a2 + 304) = result;
  return result;
}

void closure #1 in closure #1 in StackItemModifier.body(content:)(uint64_t a2@<X8>)
{
  GeometryProxy.safeAreaInsets.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = static Edge.Set.all.getter();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1;
  *(a2 + 56) = v11;
}

uint64_t closure #2 in closure #1 in StackItemModifier.body(content:)(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 3);
  if (v2 == 1)
  {
    v3 = *(a2 + 128);
    v15 = 0uLL;
    *&v16 = 0;
    *(&v16 + 1) = 1;
    memset(v17, 0, 25);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = *a1;
    v4 = *(a1 + 2);
    v17[0] = a1[2];
    *(v17 + 9) = *(a1 + 41);
    v5 = *(a2 + 128);
    *&v16 = v4;
    *(&v16 + 1) = v2;
    if (!v5)
    {
      v9 = v15;
      v10 = v16;
      v11[0] = v17[0];
      *(v11 + 9) = *(v17 + 9);
      v12 = *a1;
      *&v13 = *(a1 + 2);
      *(&v13 + 1) = v2;
      v14[0] = a1[2];
      *(v14 + 9) = *(a1 + 41);
      outlined init with copy of NavigationTitleStorage(&v12, &v8);
      v6 = &v9;
      return _sypSgWOhTm_7(v6, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    }

    v9 = *a1;
    *&v10 = *(a1 + 2);
    *(&v10 + 1) = v2;
    v11[0] = a1[2];
    *(v11 + 9) = *(a1 + 41);
    outlined init with copy of NavigationTitleStorage(&v9, &v12);
  }

  dispatch thunk of AnyLocation.set(_:transaction:)();
LABEL_7:
  v12 = v15;
  v13 = v16;
  v14[0] = v17[0];
  *(v14 + 9) = *(v17 + 9);
  v6 = &v12;
  return _sypSgWOhTm_7(v6, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
}

__n128 closure #3 in closure #1 in StackItemModifier.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  *v26 = *(a1 + 96);
  *&v26[16] = v4;
  v27 = *(a1 + 128);
  v5 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v5;
  type metadata accessor for NavigationTitleStorage??(0, &lazy cache variable for type metadata for State<EquatableNavigationTitle?>, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (*(&v29 + 1) == 1)
  {
    v24 = v28;
    v25 = v29;
    *v26 = v30[0];
    *&v26[9] = *(v30 + 9);
    _sypSgWOhTm_7(&v24, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    v19 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v17 = 0u;
    v18 = xmmword_18CD633F0;
  }

  else
  {
    v21 = v28;
    v22 = v29;
    *v23 = v30[0];
    *&v23[9] = *(v30 + 9);
    v24 = v28;
    v25 = v29;
    *v26 = v30[0];
    *&v26[9] = *(v30 + 9);
    outlined init with copy of NavigationTitleStorage(&v21, v20);
    _sypSgWOhTm_7(&v24, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    v17 = v21;
    v18 = v22;
    v6 = *&v23[8];
    v19 = *v23;
    v7 = *&v23[16];
    v8 = v23[24];
  }

  v24 = *(a1 + 136);
  *&v25 = *(a1 + 152);
  type metadata accessor for NavigationTitleStorage??(0, &lazy cache variable for type metadata for State<CGFloat?>, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v9 = v21.n128_u64[0];
  v10 = v21.n128_u8[8];
  v24 = *(a1 + 160);
  *&v25 = *(a1 + 176);
  State.wrappedValue.getter();
  v11 = v21.n128_u64[0];
  v12 = v21.n128_u8[8];
  v13 = *(a1 + 200);
  v24 = *(a1 + 184);
  v25 = v13;
  *v26 = *(a1 + 216);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v14 = v21.n128_u64[0];
  v15 = v21.n128_u8[8];
  result = v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  return result;
}

void closure #5 in StackItemModifier.body(content:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 200);
    v7[0] = *(a1 + 184);
    v7[1] = v2;
    *&v7[2] = *(a1 + 216);
    type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    outlined init with copy of StackItemModifier(a1, v7);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of StackItemModifier(a1);
    specialized Environment.wrappedValue.getter(*(a1 + 256), *(a1 + 264), v7);
    if (LOBYTE(v7[0]) == 1)
    {
      v3 = specialized Environment.wrappedValue.getter(*(a1 + 240), *(a1 + 248));
      if (v3)
      {
        v4 = v3;
        v5 = [v3 scene];

        if (v5)
        {
          v6 = [v5 _FBSScene];

          if (v6)
          {
            memcpy(v7, a1, sizeof(v7));
            StackItemModifier.updateScene(_:)(v6);
          }
        }
      }
    }
  }
}

void StackItemModifier.updateScene(_:)(void *a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v19 = [a1 clientSettings];
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v19 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {

    goto LABEL_8;
  }

  aBlock = v3;
  LOBYTE(v21) = v4;
  v22 = v5;
  LOBYTE(v23) = v6;
  v24 = v7;
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<BarTransitionProgress>, &type metadata for BarTransitionProgress, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  ObjectType = swift_getObjectType();
  v11 = COERCE_DOUBLE((*(v8 + 24))(ObjectType, v8));
  if ((v12 & 1) == 0)
  {
    if ((v27 & 1) != 0 || v11 != v26)
    {
      goto LABEL_15;
    }

LABEL_8:

    return;
  }

  if (v27)
  {
    goto LABEL_8;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](*&v11);
  *&v17[2] = v26;
  v18 = v27;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in StackItemModifier.updateScene(_:);
  *(v13 + 24) = v17;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in FBSScene.updateClarityUIClientSettings(_:);
  *(v14 + 24) = v13;
  v24 = partial apply for thunk for @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ();
  v25 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ();
  v23 = &block_descriptor_81;
  v15 = _Block_copy(&aBlock);

  [a1 updateClientSettingsWithBlock_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

__n128 static OnScrollStateChange._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v41 = a2[2];
  v42 = v6;
  v8 = a2[3];
  v43 = a2[4];
  v9 = a2[1];
  v39 = *a2;
  v40 = v9;
  v35 = v41;
  v36 = v8;
  v37 = a2[4];
  v10 = *a1;
  v44 = *(a2 + 20);
  v38 = *(a2 + 20);
  v33 = v39;
  v34 = v7;
  outlined init with copy of _ViewInputs(&v39, v47);
  PreferenceKeys.add(_:)();
  v45[2] = v35;
  v45[3] = v36;
  v45[4] = v37;
  v46 = v38;
  v45[0] = v33;
  v45[1] = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  v11 = outlined init with copy of _ViewInputs(v45, v47);
  a3(v26, v11, &v27);
  v47[2] = v29;
  v47[3] = v30;
  v47[4] = v31;
  v48 = v32;
  v47[0] = v27;
  v47[1] = v28;
  outlined destroy of _ViewInputs(v47);
  v13.n128_u64[0] = *(&v26[0] + 1);
  v12 = *&v26[0];
  *&v27 = *&v26[0];
  v25 = v13;
  DWORD2(v27) = DWORD2(v26[0]);
  v14 = PreferencesOutputs.subscript.getter();
  if ((v14 & 0x100000000) == 0)
  {
    v15 = v14;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v27 = v39;
    v28 = v40;
    v16 = _ViewInputs.position.getter();
    v17 = HIDWORD(v42);
    v23 = DWORD2(v40);
    v24 = DWORD2(v43);
    v26[0] = v39;
    v26[1] = v40;
    v26[2] = v41;
    v18 = _GraphInputs.pixelLength.getter();
    type metadata accessor for GraphHost();
    v19 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v20 = a4;
    v21 = *(v19 + 64);

    *&v27 = __PAIR64__(v15, v10);
    *(&v27 + 1) = __PAIR64__(v24, v16);
    *&v28 = __PAIR64__(v23, v17);
    *(&v28 + 1) = __PAIR64__(v21, v18);
    a4 = v20;
    *&v29 = 0xFFFFFFFFLL;
    BYTE8(v29) = 0;
    HIDWORD(v29) = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollStateActionBinding and conformance ScrollStateActionBinding();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphSetFlags();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  outlined destroy of _ViewInputs(&v27);
  *a4 = v12;
  result = v25;
  a4[1] = v25.n128_u64[0];
  return result;
}

void ScrollStateActionBinding.updateValue()()
{
  if (*(v0 + 44) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 44) = *AGGraphGetValue() >> 1;
    *(v0 + 32) = 0xFFFFFFFFLL;
    *(v0 + 40) = 0;
  }

  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  if (v2)
  {
    v3 = *Value;

    AGGraphClearUpdate();
    type metadata accessor for CGPoint(0);
    v4 = AGGraphGetValue();
    v5 = *v4;
    v6 = v4[1];
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    v7 = AGGraphGetValue();
    v30 = v7[1];
    v31 = *v7;
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    v8 = AGGraphGetValue();
    v9 = *v8;
    v10 = *(v8 + 8);

    v28 = *(v8 + 32);
    v29 = *(v8 + 16);
    v11 = AGGraphSetUpdate();
    LODWORD(v8) = *v0;
    v12 = *(v0 + 20);
    *(v56 + 4) = *(v0 + 4);
    *(&v56[1] + 4) = v12;
    v56[2] = *(v0 + 32);
    LODWORD(v56[0]) = v8;
    *v33 = v31;
    *&v33[16] = v30;
    v13 = MEMORY[0x18D00B390](v11);
    *&v49 = v9;
    *(&v49 + 1) = v10;
    v50 = v29;
    v51 = v28;
    ScrollStateActionBinding.findBestStates(in:position:size:transform:)(v3, &v49, &v34, v5, v6, v13, v14);

    v53 = v38;
    v54 = v39;
    v55[0] = v40[0];
    *(v55 + 13) = *(v40 + 13);
    v49 = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v49) == 1 && (v56[4] = v45, v56[5] = v46, v57[0] = v47[0], *(v57 + 13) = *(v47 + 13), v56[0] = v41, v56[1] = v42, v56[2] = v43, v56[3] = v44, _s7SwiftUI19ScrollGeometryStateVSgWOg(v56) == 1) || (UpdateCycleDetector.dispatch(label:isDebug:)() & 1) == 0)
    {
    }

    else
    {
      AGGraphClearUpdate();
      v15 = AGGraphGetValue();
      v17 = *v15;
      v16 = *(v15 + 8);
      *v33 = *(v15 + 16);
      *&v33[9] = *(v15 + 25);
      v48 = v17;
      outlined init with copy of Transaction(&v48, v32);

      AGGraphSetUpdate();
      v18 = swift_allocObject();
      v19 = v47[0];
      *(v18 + 272) = v46;
      *(v18 + 288) = v19;
      *(v18 + 301) = *(v47 + 13);
      *(v18 + 32) = *v33;
      *(v18 + 41) = *&v33[9];
      v20 = v45;
      *(v18 + 240) = v44;
      *(v18 + 256) = v20;
      v21 = v42;
      v22 = v43;
      v23 = v40[1];
      *(v18 + 192) = v41;
      *(v18 + 208) = v21;
      *(v18 + 224) = v22;
      v24 = v39;
      v25 = v40[0];
      *(v18 + 128) = v38;
      *(v18 + 144) = v24;
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      *(v18 + 160) = v25;
      *(v18 + 176) = v23;
      v26 = v35;
      *(v18 + 64) = v34;
      *(v18 + 80) = v26;
      v27 = v37;
      *(v18 + 96) = v36;
      *(v18 + 112) = v27;
      outlined init with copy of Transaction(&v48, v32);

      static Update.enqueueAction(reason:_:)();
      outlined destroy of Transaction(&v48);
    }
  }
}

double ScrollStateActionBinding.findBestStates(in:position:size:transform:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>, unint64_t a4@<D0>, unint64_t a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v71 = a2[1];
  v72 = *a2;
  v69 = *(a2 + 1);
  v70 = *(a2 + 2);
  _s7SwiftUI19ScrollGeometryStateVSgWOi0_(&v120);
  v110 = v124;
  v111 = v125;
  *v112 = v126[0];
  *&v112[13] = *(v126 + 13);
  v106 = v120;
  v107 = v121;
  v108 = v122;
  v109 = v123;
  v113 = v120;
  v114 = v121;
  v115 = v122;
  v116 = v123;
  v117 = v124;
  v118 = v125;
  v119[0] = v126[0];
  *(v119 + 13) = *(v126 + 13);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + (v12 << 7) + 17;
    v14 = v12 - 1;
    v15 = 0.5;
    v16 = 1.0;
    while (1)
    {
      v17 = *(v13 - 65);
      v18 = *(v13 - 33);
      v103 = *(v13 - 49);
      v104 = v18;
      v105 = *(v13 - 17);
      v19 = *(v13 - 97);
      v99 = *(v13 - 113);
      v100 = v19;
      v101 = *(v13 - 81);
      v102 = v17;
      v20 = *(v13 - 1);
      v21 = *v13;
      *(v98 + 7) = *(v13 + 7);
      v98[0] = v21;
      if ((v20 & 2) == 0)
      {
        goto LABEL_34;
      }

      v22 = *(v13 - 33);
      v90 = *(v13 - 49);
      v91 = v22;
      *v92 = *(v13 - 17);
      v23 = *(v13 - 97);
      v86 = *(v13 - 113);
      v87 = v23;
      v24 = *(v13 - 65);
      v88 = *(v13 - 81);
      v89 = v24;
      v92[16] = v20;
      *&v92[24] = *(v13 + 7);
      *&v92[17] = *v13;
      ScrollGeometryState.transform.getter();
      v25 = v79;
      if (v79 == 1)
      {
        goto LABEL_34;
      }

      v26 = *(&v79 + 1);
      v27 = v80;
      v28 = v81;
      rect.origin.y = 0.0;
      rect.origin.x = 0.0;
      rect.size.width = a6;
      rect.size.height = a7;
      *&v94 = v72;
      *(&v94 + 1) = v71;
      v95 = v69;
      v96 = v70;

      ViewTransform.appendPosition(_:)(__PAIR128__(a5, a4));
      *&v81 = 0;
      v79 = 0u;
      v80 = 0u;
      BYTE8(v81) = 2;
      v86 = v94;
      v87 = v95;
      v88 = v96;

      CGRect.convert(to:transform:)();

      outlined destroy of CoordinateSpace(&v79);
      v90 = v103;
      v91 = v104;
      *v92 = v105;
      v86 = v99;
      v87 = v100;
      v88 = v101;
      v89 = v102;
      ScrollGeometry.bounds.getter();
      v93.origin.x = 0.0;
      v93.origin.y = 0.0;
      v93.size.width = v29;
      v93.size.height = v30;
      *&v81 = 0;
      v79 = 0u;
      v80 = 0u;
      BYTE8(v81) = 2;
      *&v86 = v25;
      *(&v86 + 1) = v26;
      v87 = v27;
      v88 = v28;
      CGRect.convert(to:transform:)();
      outlined destroy of CoordinateSpace(&v79);
      v76 = *AGGraphGetValue();
      v127 = CGRectStandardize(rect);
      width = v127.size.width;
      v34.f64[0] = *&v76 * v15 + v127.origin.y;
      x = v127.origin.x;
      *&v127.origin.y = vaddq_f64(*&v127.origin.y, *&v127.size.height);
      v127.size.height = *&v76 * v15 + v127.origin.x;
      v33 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*&v76 * v15), 0), *&v127.origin.y);
      v34.f64[1] = v127.size.height;
      if (*&v76 == v16)
      {
        v78 = vrndmq_f64(v34);
        v35 = vrndaq_f64(vsubq_f64(vrndmq_f64(v33), v78));
      }

      else
      {
        v36 = vdupq_lane_s64(v76, 0);
        v78 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v34, v36)), *&v76);
        v35 = vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(vmulq_n_f64(vrndmq_f64(vdivq_f64(v33, v36)), *&v76), v78), v36)), *&v76);
      }

      v77 = v35;
      v74 = *AGGraphGetValue();
      v128 = CGRectStandardize(v93);
      v37 = v128.size.width;
      v40.f64[0] = *&v74 * v15 + v128.origin.y;
      v38 = v128.origin.x;
      *&v128.origin.y = vaddq_f64(*&v128.origin.y, *&v128.size.height);
      v128.size.height = *&v74 * v15 + v128.origin.x;
      v39 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*&v74 * v15), 0), *&v128.origin.y);
      v40.f64[1] = v128.size.height;
      if (*&v74 == v16)
      {
        v41 = vrndmq_f64(v40);
        v42 = vrndaq_f64(vsubq_f64(vrndmq_f64(v39), v41));
      }

      else
      {
        v43 = vdupq_lane_s64(v74, 0);
        v41 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v40, v43)), *&v74);
        v42 = vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(vmulq_n_f64(vrndmq_f64(vdivq_f64(v39, v43)), *&v74), v41), v43)), *&v74);
      }

      v73 = v42;
      v75 = v41;
      v42.i64[1] = v78.n128_i64[1];
      if ((v78.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (v41.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        v42.i64[0] = v41.i64[0];
        if (specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v42, 0.0000000149011612, v78, v41))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v44 = fabs(v78.n128_f64[0]);
        v45 = fabs(*v41.i64);
        if (v44 <= v45)
        {
          v44 = v45;
        }

        if (v44 <= 2.22507386e-308)
        {
          v44 = 2.22507386e-308;
        }

        if (fabs(vsubq_f64(v78, v41).f64[0]) < v44 * 0.0000000149011612)
        {
LABEL_20:
          v90 = v103;
          v91 = v104;
          *v92 = v105;
          v86 = v99;
          v87 = v100;
          v88 = v101;
          v89 = v102;
          v92[16] = v20;
          *&v92[24] = *(v98 + 7);
          *&v92[17] = v98[0];
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v86);
          v110 = v90;
          v111 = v91;
          *v112 = *v92;
          *&v112[13] = *&v92[13];
          v106 = v86;
          v107 = v87;
          v108 = v88;
          v109 = v89;
        }
      }

      *&v129.origin.x = v78.n128_u64[1];
      *&v129.origin.y = v78.n128_u64[0];
      v129.size.width = v77.f64[1];
      v129.size.height = v77.f64[0];
      MaxY = CGRectGetMaxY(v129);
      *&v130.size.height = v73.i64[0];
      *&v130.origin.x = v75.i64[1];
      *&v130.origin.y = v75.i64[0];
      *&v130.size.width = v73.i64[1];
      *v47.i64 = CGRectGetMaxY(v130);
      if ((*&MaxY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v47.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        v48.n128_f64[0] = MaxY;
        v59 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v47, 0.0000000149011612, v48, v49);
        outlined consume of EnvironmentValues?(v25, v26);
      }

      else
      {
        v50 = fabs(MaxY);
        v51 = a5;
        v52 = a7;
        v53 = fabs(*v47.i64);
        v54 = a4;
        v55 = a6;
        v56 = *v47.i64;
        outlined consume of EnvironmentValues?(v25, v26);
        if (v50 > v53)
        {
          v57 = v50;
        }

        else
        {
          v57 = v53;
        }

        a7 = v52;
        a5 = v51;
        v15 = 0.5;
        if (v57 <= 2.22507386e-308)
        {
          v57 = 2.22507386e-308;
        }

        v58 = vabdd_f64(MaxY, v56);
        a6 = v55;
        a4 = v54;
        v16 = 1.0;
        v59 = v58 < v57 * 0.0000000149011612;
      }

      if (v59)
      {
        v90 = v103;
        v91 = v104;
        *v92 = v105;
        v86 = v99;
        v87 = v100;
        v88 = v101;
        v89 = v102;
        v92[16] = v20;
        *&v92[24] = *(v98 + 7);
        *&v92[17] = v98[0];
        _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v86);
        v117 = v90;
        v118 = v91;
        v119[0] = *v92;
        *(v119 + 13) = *&v92[13];
        v113 = v86;
        v114 = v87;
        v115 = v88;
        v116 = v89;
      }

      v90 = v110;
      v91 = v111;
      *v92 = *v112;
      *&v92[13] = *&v112[13];
      v86 = v106;
      v87 = v107;
      v88 = v108;
      v89 = v109;
      if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v86) != 1)
      {
        v83 = v117;
        v84 = v118;
        v85[0] = v119[0];
        *(v85 + 13) = *(v119 + 13);
        v79 = v113;
        v80 = v114;
        v81 = v115;
        v82 = v116;
        if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v79) != 1)
        {
          break;
        }
      }

LABEL_34:
      if (!v14)
      {
        break;
      }

      v13 -= 128;
      --v14;
    }
  }

  v60 = v118;
  a3[12] = v117;
  a3[13] = v60;
  a3[14] = v119[0];
  *(a3 + 237) = *(v119 + 13);
  v61 = v114;
  a3[8] = v113;
  a3[9] = v61;
  v62 = v116;
  a3[10] = v115;
  a3[11] = v62;
  v63 = v111;
  a3[4] = v110;
  a3[5] = v63;
  v64 = *&v112[16];
  a3[6] = *v112;
  a3[7] = v64;
  v65 = v107;
  *a3 = v106;
  a3[1] = v65;
  result = *&v108;
  v67 = v109;
  a3[2] = v108;
  a3[3] = v67;
  return result;
}

uint64_t closure #5 in ScrollStateActionBinding.updateValue()(void *a1, __int128 *a2)
{
  v2 = a2[5];
  v18 = a2[4];
  v19 = v2;
  v20[0] = a2[6];
  *(v20 + 13) = *(a2 + 109);
  v3 = a2[1];
  v14 = *a2;
  v15 = v3;
  v4 = a2[3];
  v16 = a2[2];
  v17 = v4;
  v5 = a2[13];
  v12[4] = a2[12];
  v12[5] = v5;
  v13[0] = a2[14];
  *(v13 + 13) = *(a2 + 237);
  v6 = a2[9];
  v12[0] = a2[8];
  v12[1] = v6;
  v7 = a2[11];
  v12[2] = a2[10];
  v12[3] = v7;
  *&v14 = specialized static ScrollStateActionBinding.barTransitionProgress(topState:bottomState:)(&v14, v12);
  BYTE8(v14) = v8 & 1;
  *&v15 = v9;
  BYTE8(v15) = v10 & 1;
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance StackItemLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance StackItemLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (v10[1])
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return specialized StackItemLayout.placeSubviews(in:proposal:subviews:cache:)(a5, a7, a8, a9, a10, a6, v11 | *v10);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RootItemModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _OWORD *))
{
  v7 = *a1;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v13 = v7;
  return (a7)(&v13, v11, a3, a4, a5, a6);
}

void *StackItemsView.body.getter@<X0>(char *a2@<X8>)
{
  v3 = v2;
  v4 = static Alignment.center.getter();
  v47 = v5;
  v48 = v4;
  v6 = *v2;
  *&v57[0] = *v2;
  outlined init with copy of StackItemsView(v2, &v52);
  v7 = swift_allocObject();
  outlined init with take of StackItemsView(&v52, v7 + 16);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for [StackItem], &type metadata for StackItem, MEMORY[0x1E69E62F8]);
  type metadata accessor for ModifiedContent<Image, _ShadowEffect>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, AccessibilityAttachmentModifier>, MEMORY[0x1E6981910], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type [StackItem] and conformance [A]();
  lazy protocol witness table accessor for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v8 = lazy protocol witness table accessor for type StackItem and conformance StackItem();

  v38 = v8;
  ForEach<>.init(_:content:)();
  v46 = v52;
  v44 = v54;
  v45 = v53;
  v42 = v56;
  v43 = v55;
  v9 = *(v2 + 592);
  LOBYTE(v52) = *(v2 + 584);
  *(&v52 + 1) = v9;
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v10 = 0;
  if ((v57[0] & 1) == 0)
  {
    if (one-time initialization token for clarityUINavigationTransition != -1)
    {
      swift_once();
    }
  }

  v41 = v10;
  v11 = *(v6 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    *&v52 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v52;
    v13 = *(v52 + 16);
    v14 = (v6 + 40);
    do
    {
      v16 = *v14;
      v14 += 2;
      v15 = v16;
      *&v52 = v12;
      v17 = *(v12 + 24);
      if (v13 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v13 + 1, 1);
        v12 = v52;
      }

      *(v12 + 16) = v13 + 1;
      *(v12 + 8 * v13++ + 32) = v15;
      --v11;
    }

    while (v11);
  }

  v18 = *(v2 + 576);
  LOBYTE(v57[0]) = *(v2 + 568);
  *(&v57[0] + 1) = v18;
  State.projectedValue.getter();
  v19 = v52;
  v20 = v53;
  v21 = *(v2 + 560);
  LOBYTE(v57[0]) = *(v2 + 552);
  *(&v57[0] + 1) = v21;
  State.projectedValue.getter();
  v22 = v52;
  v40 = v53;
  v39 = *(v2 + 504);
  v23 = *(v2 + 512);
  outlined init with copy of StackItemsView(v2, &v52);
  v24 = swift_allocObject();
  outlined init with take of StackItemsView(&v52, v24 + 16);
  v57[0] = v19;
  LOBYTE(v57[1]) = v20;
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v50);
  v25 = v50[0];

  LOBYTE(__src[0]) = v23;
  KeyPath = swift_getKeyPath();
  BYTE1(v50[0]) = 0;
  v27 = swift_getKeyPath();
  v28 = __src[0];
  v29 = BYTE1(v50[0]);
  v30 = swift_getKeyPath();
  *&__src[0] = v48;
  *(&__src[0] + 1) = v47;
  __src[1] = v46;
  *&__src[2] = v45;
  *(&__src[2] + 1) = v44;
  *&__src[3] = v43;
  *(&__src[3] + 1) = v42;
  *&__src[4] = v41;
  *(&__src[4] + 1) = v12;
  LOBYTE(__src[5]) = v25;
  *(&__src[5] + 8) = v22;
  BYTE8(__src[6]) = v40;
  *&__src[7] = v39;
  BYTE8(__src[7]) = v28;
  *&__src[8] = partial apply for closure #3 in StackItemsView.body.getter;
  *(&__src[8] + 1) = v24;
  *&__src[9] = KeyPath;
  BYTE8(__src[9]) = v29;
  *&__src[10] = v27;
  BYTE8(__src[10]) = 0;
  memset(&__src[11], 0, 72);
  *(&__src[15] + 1) = v30;
  LOBYTE(__src[16]) = 1;
  outlined init with copy of StackItemsView(v3, &v52);
  v31 = swift_allocObject();
  outlined init with take of StackItemsView(&v52, v31 + 16);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>();
  View.onChange<A>(of:initial:_:)();

  memcpy(v50 + 1, __src, 0x101uLL);
  outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(v50 + 1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>);
  memcpy(__src, v57, sizeof(__src));
  v32 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for didPerformBackButtonPress != -1)
  {
    swift_once();
  }

  type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>, _AppearanceActionModifier>>(0);
  v34 = v33;
  NSNotificationCenter.publisher(for:object:)();

  outlined init with copy of StackItemsView(v3, &v52);
  v35 = swift_allocObject();
  outlined init with take of StackItemsView(&v52, v35 + 16);
  result = memcpy(a2, __src, 0x140uLL);
  v37 = &a2[*(v34 + 56)];
  *v37 = partial apply for closure #5 in StackItemsView.body.getter;
  *(v37 + 1) = v35;
  return result;
}

double closure #1 in closure #1 in StackItemsView.body.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(*a2 + 16);
  if (v5 && a1[1] == *(*a2 + 16 + 16 * v5 + 8))
  {
    AccessibilityProperties.init()();
    v6 = 0x400000000;
  }

  else
  {
    AccessibilityProperties.init()();
    v6 = 0x400000004;
  }

  v11 = v6;
  v12 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v10);
  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);
  *a3 = v4;
  a3[1] = v7;
  a3[2] = 0;

  return result;
}

void closure #3 in StackItemsView.body.getter(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() activeInstance];
    if (v1)
    {
      v11 = v1;
      [v1 dismissKeyboard];
    }

    else
    {
      __break(1u);
    }
  }

  else if (NavigationState.Base.count.getter() >= 2)
  {
    NavigationState.StackContent.topKey.getter();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    static Transaction.current.getter();
    static Transaction.current.getter();
    v8 = Transaction.disablesAnimations.getter();

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = Transaction.disablesAnimations.getter();
    }

    static Transaction.current.getter();
    v10 = Transaction.animation.getter();

    if (!v10)
    {
      v10 = Transaction.animation.getter();
    }

    v12 = 1;
    v13 = 0;
    v14 = 9;
    v15 = v3;
    v16 = v5;
    v17 = v7;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v9 & 1;
    v22 = v10;
    NavigationAuthority.enqueueRequest(_:)(&v12);
    outlined destroy of NavigationRequest(&v12);
  }
}

uint64_t StackItemsView.navigateBack(isAnimated:)(char a1)
{
  v2 = v1;
  type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  result = NavigationState.Base.count.getter();
  if (result >= 2)
  {
    if ((a1 & 1) == 0)
    {
      v8 = *(v1 + 592);
      LOBYTE(v25) = 1;
      if (v8)
      {
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }

      v9 = *(v2 + 608);
      v25 = *(v2 + 600);
      v26 = v9;
      type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(0, &lazy cache variable for type metadata for State<Task<(), Error>?>, type metadata accessor for Task<(), Error>?, MEMORY[0x1E6981790]);
      State.wrappedValue.getter();
      v10 = v36;
      if (v36)
      {
        v11 = type metadata accessor for Error();
        MEMORY[0x18D00D010](v10, MEMORY[0x1E69E7CA8] + 8, v11, MEMORY[0x1E69E7288]);
      }

      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      outlined init with copy of StackItemsView(v2, &v25);
      type metadata accessor for MainActor();
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      *(v14 + 16) = v13;
      *(v14 + 24) = v15;
      outlined init with take of StackItemsView(&v25, v14 + 32);
      v25 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in StackItemsView.navigateBack(isAnimated:), v14);
      if (v9)
      {
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }
    }

    NavigationState.StackContent.topKey.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    static Transaction.current.getter();
    static Transaction.current.getter();
    v22 = Transaction.disablesAnimations.getter();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v23 = Transaction.disablesAnimations.getter();
    }

    static Transaction.current.getter();
    v24 = Transaction.animation.getter();

    if (!v24)
    {
      v24 = Transaction.animation.getter();
    }

    v25 = 1;
    LOBYTE(v26) = 0;
    v27 = 9;
    v28 = v17;
    v29 = v19;
    v30 = v21;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v23 & 1;
    v35 = v24;
    NavigationAuthority.enqueueRequest(_:)(&v25);
    return outlined destroy of NavigationRequest(&v25);
  }

  return result;
}

void closure #4 in StackItemsView.body.getter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  specialized AccessibilityCoreNotification.post()(0, 0);
  specialized Environment.wrappedValue.getter(*(a3 + 520), *(a3 + 528), &v5);
  if (v5 == 1)
  {
    StackItemsView.updateClientSettings(numberOfStackItems:)(v4);
  }
}

void StackItemsView.updateClientSettings(numberOfStackItems:)(uint64_t a1)
{
  v21 = MEMORY[0x1E69E7CC0];
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = a1;
    if (a1)
    {
      type metadata accessor for PropertyListEncoder();
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        swift_allocObject();
        PropertyListEncoder.init()();
        lazy protocol witness table accessor for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle();
        v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v7 = v6;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v9 = *(v4 + 2);
        v8 = *(v4 + 3);
        if (v9 >= v8 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
        }

        *(v4 + 2) = v9 + 1;
        v10 = &v4[16 * v9];
        *(v10 + 4) = v5;
        *(v10 + 5) = v7;
        v21 = v4;
        --v3;
      }

      while (v3);
    }

    v11 = specialized Environment.wrappedValue.getter(*(v2 + 536), *(v2 + 544));
    if (!v11 || (v12 = v11, v13 = [v11 scene], v12, !v13) || (v14 = objc_msgSend(v13, sel__FBSScene), v13, !v14) || (MEMORY[0x1EEE9AC00](v15), v19[2] = &v21, v16 = swift_allocObject(), *(v16 + 16) = partial apply for closure #1 in StackItemsView.updateClientSettings(numberOfStackItems:), *(v16 + 24) = v19, v17 = swift_allocObject(), *(v17 + 16) = closure #1 in FBSScene.updateClarityUIClientSettings(_:)partial apply, *(v17 + 24) = v16, aBlock[4] = thunk for @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ()partial apply, aBlock[5] = v17, aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 1107296256, aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> (), aBlock[3] = &block_descriptor_93_1, v18 = _Block_copy(aBlock), , , objc_msgSend(v14, sel_updateClientSettingsWithBlock_, v18), _Block_release(v18), LOBYTE(v18) = swift_isEscapingClosureAtFileLocation(), v14, , , (v18 & 1) == 0))
    {

      return;
    }
  }

  __break(1u);
}

uint64_t closure #5 in StackItemsView.body.getter()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  *&v7 = 0x646574616D696E61;
  *(&v7 + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v3 & 1) == 0))
  {

    outlined destroy of AnyHashable(v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v2, &v7);
  outlined destroy of AnyHashable(v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    _sypSgWOhTm_7(&v7, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v4 = 1;
    return StackItemsView.navigateBack(isAnimated:)(v4);
  }

  v4 = v6[0];
  return StackItemsView.navigateBack(isAnimated:)(v4);
}

uint64_t closure #1 in StackItemsView.navigateBack(isAnimated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = closure #1 in StackItemsView.navigateBack(isAnimated:);

  return MEMORY[0x1EEE6DA60](300000000);
}

uint64_t closure #1 in StackItemsView.navigateBack(isAnimated:)()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in StackItemsView.navigateBack(isAnimated:);
  }

  else
  {
    v4 = closure #1 in StackItemsView.navigateBack(isAnimated:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

{
  v1 = *(v0 + 16);

  v2 = *(v1 + 592);
  *(v0 + 56) = 0;
  if (v2)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  outlined init with copy of TaskPriority?(a3, v23 - v11, &lazy cache variable for type metadata for TaskPriority?, v8, v9, type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    outlined destroy of TaskPriority?(v12, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

__n128 static NavigationTitleActionModifier._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v36 = a2[2];
  v37 = v6;
  v8 = a2[3];
  v38 = a2[4];
  v9 = a2[1];
  v34 = *a2;
  v35 = v9;
  v30 = v36;
  v31 = v8;
  v32 = a2[4];
  v10 = *a1;
  v39 = *(a2 + 20);
  v33 = *(a2 + 20);
  v28 = v34;
  v29 = v7;
  outlined init with copy of _ViewInputs(&v34, &v25);
  PreferenceKeys.add(_:)();
  v40[2] = v30;
  v40[3] = v31;
  v40[4] = v32;
  v41 = v33;
  v40[0] = v28;
  v40[1] = v29;
  *&v26[16] = v30;
  *&v26[32] = v31;
  *&v26[48] = v32;
  *&v26[64] = v33;
  v25 = v28;
  *v26 = v29;
  v11 = outlined init with copy of _ViewInputs(v40, v23);
  a3(v23, v11, &v25);
  v42[2] = *&v26[16];
  v42[3] = *&v26[32];
  v42[4] = *&v26[48];
  v43 = *&v26[64];
  v42[0] = v25;
  v42[1] = *v26;
  outlined destroy of _ViewInputs(v42);
  v13.n128_u64[0] = *(&v23[0] + 1);
  v12 = *&v23[0];
  *&v25 = *&v23[0];
  v20 = v13;
  DWORD2(v25) = DWORD2(v23[0]);
  v14 = PreferencesOutputs.subscript.getter();
  if ((v14 & 0x100000000) == 0)
  {
    v15 = v14;
    v16 = DWORD2(v35);
    type metadata accessor for GraphHost();
    v17 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v18 = *(v17 + 64);

    *&v25 = __PAIR64__(v15, v10);
    *(&v25 + 1) = __PAIR64__(v18, v16);
    *v26 = 0xFFFFFFFFLL;
    v26[8] = 0;
    *&v26[9] = v21;
    v26[11] = v22;
    memset(&v26[12], 0, 28);
    *&v26[40] = 2;
    memset(&v26[48], 0, 24);
    v27 = 0;
    v23[2] = 0u;
    v23[3] = *&v26[32];
    v24[0] = 0uLL;
    *(v24 + 9) = *&v26[57];
    v23[0] = v25;
    v23[1] = *v26;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type NavigationTitleBinder and conformance NavigationTitleBinder();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of NavigationTitleBinder(&v25);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  *&v26[16] = v30;
  *&v26[32] = v31;
  *&v26[48] = v32;
  *&v26[64] = v33;
  v25 = v28;
  *v26 = v29;
  outlined destroy of _ViewInputs(&v25);
  *a4 = v12;
  result = v20;
  a4[1] = v20.n128_u64[0];
  return result;
}

void NavigationTitleBinder.updateValue()()
{
  if (*(v0 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 28) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0xFFFFFFFFLL;
    *(v0 + 24) = 0;
    *&v48[9] = *(v0 + 73);
    v1 = *(v0 + 64);
    v47 = *(v0 + 48);
    *v48 = v1;
    v46 = *(v0 + 32);
    outlined destroy of NavigationTitleStorage??(&v46);
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 2;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = 0;
    *(v0 + 88) = 0;
  }

  type metadata accessor for State<BarTransitionProgress>(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v4 = Value[1];
  v3 = Value[2];
  v5 = *Value;
  *&v70[9] = *(Value + 41);
  v69 = v4;
  *v70 = v3;
  v68 = v5;
  v6 = Value[1];
  v65 = *Value;
  v66 = v6;
  v67[0] = Value[2];
  *(v67 + 9) = *(Value + 41);
  if (v7)
  {
    v8 = *(v0 + 56);
    if ((v8 - 1) >= 2)
    {
      v38 = *(v0 + 32);
      *&v39 = *(v0 + 48);
      *v41 = *(v0 + 64);
      v9 = *v41;
      *&v41[9] = *(v0 + 73);
      v46 = v38;
      *&v47 = v39;
      *(&v47 + 1) = v8;
      *v48 = v9;
      *&v48[9] = *&v41[9];
      outlined init with copy of EquatableNavigationTitle?(&v46, &v43, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      v61 = v38;
      v62 = v39;
      v63 = v8;
      v64[0] = *v41;
      *(v64 + 9) = *&v41[9];
    }

    else
    {
      v61 = 0uLL;
      v8 = 1;
      v62 = 0;
      v63 = 1;
      memset(v64, 0, 25);
    }

    v10 = *(&v69 + 1);
    if (*(&v69 + 1) == 1)
    {
      v59 = v61;
      v60 = v62;
      v58[0] = v64[0];
      *(v58 + 9) = *(v64 + 9);
      if (v8 == 1)
      {
        v46 = v61;
        *&v47 = v62;
        *(&v47 + 1) = 1;
        *v48 = v64[0];
        *&v48[9] = *(v64 + 9);
        outlined init with copy of EquatableNavigationTitle?(&v68, &v43, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        v11 = &lazy cache variable for type metadata for EquatableNavigationTitle?;
        v12 = &unk_1F0009780;
        v13 = &v46;
LABEL_21:
        _sypSgWOhTm_7(v13, v11, v12);
        return;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v19 = 0;
      v18 = 0;
      v20 = 0;
    }

    else
    {
      v14 = v70[24];
      v16 = *&v70[8];
      v15 = *&v70[16];
      v17 = *v70;
      v18 = *(&v68 + 1);
      v19 = v69;
      v20 = v68;
      v59 = v61;
      v60 = v62;
      v58[0] = v64[0];
      *(v58 + 9) = *(v64 + 9);
      if (v8 == 1)
      {
        v29 = *v70;
        v30 = *&v70[16];
        v31 = v70[24];
        outlined init with copy of EquatableNavigationTitle?(&v68, &v46, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        outlined init with copy of EquatableNavigationTitle?(&v68, &v46, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        outlined init with copy of EquatableNavigationTitle?(&v68, &v46, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        outlined init with copy of EquatableNavigationTitle?(&v61, &v46, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
        goto LABEL_15;
      }
    }

    v46 = v59;
    *&v47 = v60;
    *(&v47 + 1) = v8;
    *v48 = v58[0];
    *&v48[9] = *(v58 + 9);
    v43 = v59;
    v44 = v47;
    v45[0] = *v48;
    *(v45 + 9) = *(v58 + 9);
    if (*(&v69 + 1) != 1)
    {
      *&v33 = v20;
      *(&v33 + 1) = v18;
      *&v34 = v19;
      *(&v34 + 1) = *(&v69 + 1);
      *v35 = v17;
      *&v35[8] = v16;
      *&v35[16] = v15;
      v35[24] = v14;
      outlined init with copy of EquatableNavigationTitle?(&v68, v32, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      outlined init with copy of EquatableNavigationTitle?(&v68, v32, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      outlined init with copy of EquatableNavigationTitle?(&v68, v32, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      outlined init with copy of EquatableNavigationTitle?(&v61, v32, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
      outlined init with copy of EquatableNavigationTitle?(&v46, v32, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
      v28 = specialized static EquatableNavigationTitle.== infix(_:_:)(&v43, &v33);
      v36[0] = v33;
      v36[1] = v34;
      v37[0] = *v35;
      *(v37 + 9) = *&v35[9];
      outlined destroy of EquatableNavigationTitle(v36);
      v38 = v43;
      v39 = v44;
      v40[0] = v45[0];
      *(v40 + 9) = *(v45 + 9);
      outlined destroy of EquatableNavigationTitle(&v38);
      *v41 = v59;
      *&v41[16] = v60;
      *&v41[24] = v8;
      v42[0] = v58[0];
      *(v42 + 9) = *(v58 + 9);
      _sypSgWOhTm_7(v41, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
      if (v28)
      {
        _sypSgWOhTm_7(&v68, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        _sypSgWOhTm_7(&v61, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
        v13 = &v68;
        v11 = &lazy cache variable for type metadata for NavigationTitleStorage?;
        v12 = &type metadata for NavigationTitleStorage;
        goto LABEL_21;
      }

LABEL_16:
      v21 = *(v0 + 48);
      v46 = *(v0 + 32);
      v47 = v21;
      *v48 = *(v0 + 64);
      *&v48[9] = *(v0 + 73);
      outlined init with copy of EquatableNavigationTitle?(&v68, &v43, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      outlined destroy of NavigationTitleStorage??(&v46);
      v22 = v66;
      *(v0 + 32) = v65;
      *(v0 + 48) = v22;
      *(v0 + 64) = v67[0];
      *(v0 + 73) = *(v67 + 9);
      if (UpdateCycleDetector.dispatch(label:isDebug:)())
      {
        AGGraphClearUpdate();
        v23 = AGGraphGetValue();
        v25 = *v23;
        v24 = v23[1];

        AGGraphSetUpdate();
        LOBYTE(v43) = 17;
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = v24;
        v27 = v69;
        *(v26 + 32) = v68;
        *(v26 + 48) = v27;
        *(v26 + 64) = *v70;
        *(v26 + 73) = *&v70[9];

        static Update.enqueueAction(reason:_:)();
        _sypSgWOhTm_7(&v68, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
        _sypSgWOhTm_7(&v61, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);

        return;
      }

      _sypSgWOhTm_7(&v68, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      _sypSgWOhTm_7(&v68, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
      v11 = &lazy cache variable for type metadata for EquatableNavigationTitle?;
      v12 = &unk_1F0009780;
      v13 = &v61;
      goto LABEL_21;
    }

    *&v29 = v17;
    *(&v29 + 1) = v16;
    v30 = v15;
    v31 = v14;
    *v41 = v46;
    *&v41[16] = v47;
    v42[0] = *v48;
    *(v42 + 9) = *&v48[9];
    outlined init with copy of EquatableNavigationTitle?(&v68, &v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    outlined init with copy of EquatableNavigationTitle?(&v68, &v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    outlined init with copy of EquatableNavigationTitle?(&v68, &v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    outlined init with copy of EquatableNavigationTitle?(&v61, &v38, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    outlined init with copy of EquatableNavigationTitle?(&v46, &v38, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780);
    outlined destroy of EquatableNavigationTitle(v41);
LABEL_15:
    v46 = v59;
    *&v47 = v60;
    *(&v47 + 1) = v8;
    *v48 = v58[0];
    *&v48[9] = *(v58 + 9);
    *v49 = *v57;
    *&v49[3] = *&v57[3];
    v50 = v20;
    v51 = v18;
    v52 = v19;
    v53 = v10;
    v54 = v29;
    v55 = v30;
    v56 = v31;
    outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(&v46, type metadata accessor for (EquatableNavigationTitle?, EquatableNavigationTitle?));
    goto LABEL_16;
  }
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance MultimodalNavigationTitleHorizontalPaddingKey(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 8) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t specialized FloatingPoint.isAlmostEqual(to:tolerance:)(int8x16_t a1, double a2, __n128 a3, int8x16_t a4)
{
  if ((a3.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (a1.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(a1, a2, a3, a4);
  }

  v4 = fabs(a3.n128_f64[0]);
  v5 = fabs(*a1.i64);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (v4 <= 2.22507386e-308)
  {
    v4 = 2.22507386e-308;
  }

  return vabdd_f64(a3.n128_f64[0], *a1.i64) < v4 * a2;
}

uint64_t specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(int8x16_t a1, double a2, __n128 a3, int8x16_t a4)
{
  while (1)
  {
    a4.i64[0] = a3.n128_u64[0];
    v4 = a3.n128_u64[0] & 0x7FF0000000000000;
    v5 = a3.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
    if ((a3.n128_u64[0] & 0x7FF0000000000000) == 0x7FF0000000000000 && v5 != 0)
    {
      return 0;
    }

    a3.n128_u64[0] = a1.i64[0];
    v7 = (a1.i64[0] >> 52) & 0x7FF;
    v8 = a1.i64[0] & 0xFFFFFFFFFFFFFLL;
    if ((a1.i64[0] & 0xFFFFFFFFFFFFFLL) != 0 && v7 == 2047)
    {
      return 0;
    }

    a1.i64[0] = a4.i64[0];
    if (!v5)
    {
      a1.i64[0] = a4.i64[0];
      if (v4 == 0x7FF0000000000000)
      {
        break;
      }
    }
  }

  if (!v8 && v7 == 2047)
  {
    return *a4.i64 == a3.n128_f64[0];
  }

  a1.i64[0] = 0x7FE0000000000000;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = vbslq_s8(vnegq_f64(v10), a1, a4);
  *a1.i64 = a3.n128_f64[0] * 0.5;
  if (!(v7 | v8))
  {
    *a1.i64 = a3.n128_f64[0];
  }

  if (v7 == 2047)
  {
    *a1.i64 = a3.n128_f64[0];
  }

  a3.n128_u64[0] = v11.i64[0];
  return specialized FloatingPoint.isAlmostEqual(to:tolerance:)(a1, a2, a3, v11);
}

uint64_t specialized static EquatableNavigationTitle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v22 = a1[1];
  v23 = *a1;
  outlined copy of Text?(*a1, v22, v2, v3);
  outlined copy of Transaction?(v4);

  v24 = v5;
  v25 = v8;
  v10 = v8;
  v11 = v7;
  outlined copy of Text?(v5, v6, v10, v7);
  v26 = v9;
  outlined copy of Transaction?(v9);

  v12 = EnvironmentValues.init()();
  v27 = v32;
  v28 = v33;
  if (v3)
  {
    v30 = 0;
    v31 = 0;
    MEMORY[0x18D009CB0](&v29, v12);
    v13 = Text.resolveString(in:with:idiom:)();
    v15 = v14;
    outlined consume of Text?(v23, v22, v2, v3);
    outlined consume of ListItemTint?(v4);

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    outlined consume of Text?(v24, v6, v25, 0);
    outlined consume of ListItemTint?(v26);

    if (v15)
    {
      goto LABEL_10;
    }

    v19 = 0;
LABEL_12:

    if (!v19)
    {
      return 1;
    }

    goto LABEL_13;
  }

  outlined consume of Text?(v23, v22, v2, 0);
  outlined consume of ListItemTint?(v4);

  v13 = 0;
  v15 = 0;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  v32 = v27;
  v33 = v28;
  v30 = 0;
  v31 = 0;
  MEMORY[0x18D009CB0](&v29, v16);
  v17 = Text.resolveString(in:with:idiom:)();
  v19 = v18;
  outlined consume of Text?(v24, v6, v25, v11);
  outlined consume of ListItemTint?(v26);

  if (!v15)
  {
    goto LABEL_12;
  }

  if (!v19)
  {
LABEL_10:

LABEL_13:

    return 0;
  }

  if (v13 == v17 && v15 == v19)
  {

    return 1;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v21 & 1;
  }
}

id specialized MultimodalNavigationStackViewHost.makeUIViewController(context:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _UISecureHostingController(0, v3, *(v7 + 24), v8);
  (*(v1 + 32))();
  v12 = specialized _UISecureHostingController.__allocating_init(rootView:)(v6, v9, v10, v11);
  (*(v4 + 8))(v6, v3);
  result = [v12 view];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v16 = specialized UIHostingController.host.getter();
    v17 = v2[1];
    v20[0] = *v2;
    v20[1] = v17;
    v21 = 0;
    v18 = v16;
    v19 = v12;
    _UIHostingView.explicitSafeAreaInsets.setter(v20);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized MultimodalNavigationStackViewHost.updateUIViewController(_:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = specialized UIHostingController.host.getter();
  v9 = *(v2 + 1);
  v12[0] = *v2;
  v12[1] = v9;
  v13 = 0;
  v10 = v8;
  _UIHostingView.explicitSafeAreaInsets.setter(v12);

  v3[4]();
  specialized UIHostingController.rootView.setter(v7);
  return (*(v5 + 8))(v7, v4);
}

double destroy for MultimodalNavigationStack(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(a1 + 120), *(a1 + 128));

  return result;
}

uint64_t initializeWithCopy for MultimodalNavigationStack(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v7 = v5;

  swift_weakCopyInit();
  v8 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;
  v9 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  v10 = *(a2 + 128);

  outlined copy of Environment<Selector?>.Content(v9, v10);
  *(a1 + 120) = v9;
  *(a1 + 128) = v10;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t assignWithCopy for MultimodalNavigationStack(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  swift_weakCopyAssign();
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  v7 = *(a2 + 120);
  v8 = *(a2 + 128);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 120);
  v10 = *(a1 + 128);
  *(a1 + 120) = v7;
  *(a1 + 128) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v11;
  LOBYTE(v11) = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v11;
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t initializeWithTake for MultimodalNavigationStack(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  swift_weakTakeInit();
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t assignWithTake for MultimodalNavigationStack(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  swift_weakTakeAssign();
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  v7 = *(a2 + 128);
  v8 = *(a1 + 120);
  v9 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t outlined init with take of MultimodalNavigationStack(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v6;
  *a2 = v4;
  *(a2 + 16) = v5;
  v7 = a1[4];
  *(a2 + 80) = *(a1 + 10);
  *(a2 + 64) = v7;
  swift_weakTakeInit();
  *(a2 + 96) = a1[6];
  *(a2 + 112) = *(a1 + 14);
  v8 = *(a1 + 15);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 120) = v8;
  v9 = *(a1 + 136);
  v10 = *(a1 + 152);
  *(a2 + 168) = *(a1 + 21);
  *(a2 + 152) = v10;
  *(a2 + 136) = v9;
  return a2;
}

void type metadata accessor for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(255);
    lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>, protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>);
    v1 = type metadata accessor for EnumeratedSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>);
    }
  }
}

void type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>(255);
    v5[0] = v2;
    v5[1] = &type metadata for StackItemModifier;
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier> and conformance <> ModifiedContent<A, B>();
    v5[3] = lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier();
    v3 = type metadata accessor for NavigationState.StackContent.Views.ViewsSequence(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>);
    }
  }
}

uint64_t outlined init with copy of EquatableNavigationTitle?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for State<BarTransitionProgress>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *assignWithCopy for StackItem(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for StackItem(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

double destroy for StackItemModifier(uint64_t a1)
{

  v2 = *(a1 + 88);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_7;
    }

    outlined consume of Text.Storage(*(a1 + 64), *(a1 + 72), *(a1 + 80));
  }

  if (*(a1 + 96) != 1)
  {
  }

LABEL_7:

  outlined consume of Environment<NSManagedObjectContext>.Content(*(a1 + 240), *(a1 + 248));
  outlined consume of Environment<Selector?>.Content(*(a1 + 256), *(a1 + 264));
  outlined consume of Environment<Selector?>.Content(*(a1 + 272), *(a1 + 280));

  return result;
}

uint64_t initializeWithCopy for StackItemModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      goto LABEL_9;
    }

    v8 = *(a2 + 64);
    v9 = *(a2 + 72);
    v10 = *(a2 + 80);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 64) = v8;
    *(a1 + 72) = v9;
    *(a1 + 80) = v10;
    *(a1 + 88) = v5;
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
  }

  v11 = *(a2 + 96);
  if (v11 != 1)
  {
  }

  *(a1 + 96) = v11;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

LABEL_9:
  v12 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v12;
  *(a1 + 144) = *(a2 + 144);
  v13 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v13;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  v14 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  v15 = *(a2 + 248);

  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v14, v15);
  *(a1 + 240) = v14;
  *(a1 + 248) = v15;
  v16 = *(a2 + 256);
  v17 = *(a2 + 264);
  outlined copy of Environment<Selector?>.Content(v16, v17);
  *(a1 + 256) = v16;
  *(a1 + 264) = v17;
  v18 = *(a2 + 272);
  v19 = *(a2 + 280);
  outlined copy of Environment<Selector?>.Content(v18, v19);
  *(a1 + 272) = v18;
  *(a1 + 280) = v19;
  v20 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v20;

  return a1;
}

uint64_t assignWithCopy for StackItemModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  v6 = *(a1 + 88);
  v7 = *(a2 + 88);
  if (v6 != 1)
  {
    if (v7 == 1)
    {
      outlined destroy of EquatableNavigationTitle(a1 + 64);
      v12 = *(a2 + 80);
      v11 = *(a2 + 96);
      v13 = *(a2 + 64);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v12;
      *(a1 + 96) = v11;
      *(a1 + 64) = v13;
      goto LABEL_28;
    }

    if (v6)
    {
      if (v7)
      {
        v14 = *(a2 + 64);
        v15 = *(a2 + 72);
        v16 = *(a2 + 80);
        outlined copy of Text.Storage(v14, v15, v16);
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        v19 = *(a1 + 80);
        *(a1 + 64) = v14;
        *(a1 + 72) = v15;
        *(a1 + 80) = v16;
        outlined consume of Text.Storage(v17, v18, v19);
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        outlined destroy of Text(a1 + 64);
        v28 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v28;
      }
    }

    else if (v7)
    {
      v25 = *(a2 + 64);
      v26 = *(a2 + 72);
      v27 = *(a2 + 80);
      outlined copy of Text.Storage(v25, v26, v27);
      *(a1 + 64) = v25;
      *(a1 + 72) = v26;
      *(a1 + 80) = v27;
      *(a1 + 88) = *(a2 + 88);
    }

    else
    {
      v29 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v29;
    }

    v30 = (a1 + 96);
    v31 = *(a2 + 96);
    if (*(a1 + 96) == 1)
    {
      if (v31 != 1)
      {
        *v30 = v31;

        goto LABEL_27;
      }

      v32 = 1;
    }

    else
    {
      if (v31 != 1)
      {
        *v30 = v31;

        goto LABEL_27;
      }

      outlined destroy of Transaction(a1 + 96);
      v32 = *(a2 + 96);
    }

    *v30 = v32;
LABEL_27:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);

    *(a1 + 120) = *(a2 + 120);
    goto LABEL_28;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v8 = *(a2 + 64);
      v9 = *(a2 + 80);
      v10 = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v9;
      *(a1 + 96) = v10;
      *(a1 + 64) = v8;
      goto LABEL_28;
    }

    v21 = *(a2 + 64);
    v22 = *(a2 + 72);
    v23 = *(a2 + 80);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 64) = v21;
    *(a1 + 72) = v22;
    *(a1 + 80) = v23;
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v20 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v20;
  }

  v24 = *(a2 + 96);
  if (v24 != 1)
  {
  }

  *(a1 + 96) = v24;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

LABEL_28:
  *(a1 + 128) = *(a2 + 128);

  v33 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v33;
  *(a1 + 152) = *(a2 + 152);

  v34 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v34;
  *(a1 + 176) = *(a2 + 176);

  v35 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v35;
  LOBYTE(v35) = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v35;
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  v36 = *(a2 + 240);
  v37 = *(a2 + 248);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v36, v37);
  v38 = *(a1 + 240);
  v39 = *(a1 + 248);
  *(a1 + 240) = v36;
  *(a1 + 248) = v37;
  outlined consume of Environment<NSManagedObjectContext>.Content(v38, v39);
  v40 = *(a2 + 256);
  v41 = *(a2 + 264);
  outlined copy of Environment<Selector?>.Content(v40, v41);
  v42 = *(a1 + 256);
  v43 = *(a1 + 264);
  *(a1 + 256) = v40;
  *(a1 + 264) = v41;
  outlined consume of Environment<Selector?>.Content(v42, v43);
  v44 = *(a2 + 272);
  v45 = *(a2 + 280);
  outlined copy of Environment<Selector?>.Content(v44, v45);
  v46 = *(a1 + 272);
  v47 = *(a1 + 280);
  *(a1 + 272) = v44;
  *(a1 + 280) = v45;
  outlined consume of Environment<Selector?>.Content(v46, v47);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  return a1;
}