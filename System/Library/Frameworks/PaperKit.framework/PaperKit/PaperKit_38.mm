void CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Color(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - v16;
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.Attributes.init()();
  if (*(a1 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v19)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v18, &v54);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
      if (swift_dynamicCast())
      {
        v48[0] = v7;
        countAndFlagsBits = name.value._countAndFlagsBits;
        swift_getKeyPath();
        v21 = a2;
        v22 = countAndFlagsBits;
        Font.init(_:)(&v54, v22);
        name = v54._name;
        familyName = v54._familyName;
        pointSize_low = LODWORD(v54.pointSize);
        rawValue = v54.traits.rawValue;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
        lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
        v7 = v48[0];
        CRAttributedString.Attributes.subscript.setter();

        a2 = v21;
      }
    }
  }

  if (*(a1 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(), (v24 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v23, &v54), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888), (swift_dynamicCast() & 1) != 0))
  {
    v25 = a2;
    v26 = name.value._countAndFlagsBits;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }

    v25 = a2;
    v26 = [objc_opt_self() blackColor];
    if (!v26)
    {
      goto LABEL_19;
    }
  }

  v48[2] = a3;
  v48[1] = swift_getKeyPath();
  v27 = v26;
  Color.init(cgColor:)([v27 CGColor], v14);

  v28 = *(v7 + 48);
  if (v28(v14, 1, v6))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v29 = 1;
  }

  else
  {
    outlined init with take of Color(v14, v9);
    if (v25)
    {
      v48[0] = v7;
      v30 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      v31 = static PKInkingTool.convertColor(_:from:to:)();

      v32 = [v31 CGColor];
      v33 = v49;
      Color.init(cgColor:)(v32, v49);
      if (v28(v33, 1, v6) == 1)
      {
        __break(1u);
        return;
      }

      outlined init with take of Color(v33, v17);
      v7 = v48[0];
    }

    else
    {
      outlined init with copy of Color(v9, v17);
    }

    outlined destroy of Color(v9);
    v29 = 0;
  }

  (*(v7 + 56))(v17, v29, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
  CRAttributedString.Attributes.subscript.setter();

LABEL_19:
  if (*(a1 + 16))
  {
    v34 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v35)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v34, &v54);
      if (swift_dynamicCast())
      {
        if (name.value._countAndFlagsBits)
        {
          swift_getKeyPath();
          LOBYTE(v54._name.value._countAndFlagsBits) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
          lazy protocol witness table accessor for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute();
          CRAttributedString.Attributes.subscript.setter();
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v36 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v37)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v36, &v54);
      if (swift_dynamicCast())
      {
        if (name.value._countAndFlagsBits)
        {
          swift_getKeyPath();
          LOBYTE(v54._name.value._countAndFlagsBits) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
          lazy protocol witness table accessor for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute();
          CRAttributedString.Attributes.subscript.setter();
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v38 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v39)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v38, &v54);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
      if (swift_dynamicCast())
      {
        v40 = name.value._countAndFlagsBits;
        if ([name.value._countAndFlagsBits baseWritingDirection])
        {
          swift_getKeyPath();
          v54._name.value._countAndFlagsBits = [v40 baseWritingDirection];
          LOBYTE(v54._name.value._object) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
          lazy protocol witness table accessor for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute();
          CRAttributedString.Attributes.subscript.setter();
        }

        v41 = [v40 alignment];
        if (v41 != (2 * ([v40 baseWritingDirection] == 1)))
        {
          swift_getKeyPath();
          v54._name.value._countAndFlagsBits = [v40 alignment];
          LOBYTE(v54._name.value._object) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
          lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
          CRAttributedString.Attributes.subscript.setter();
        }
      }
    }
  }

  if (*(a1 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(), (v43 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v42, &v54), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8), (swift_dynamicCast() & 1) != 0))
  {
    v44 = name.value._countAndFlagsBits;
    if (*(a1 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(), (v46 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v45, &v54);

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v47 = name.value._countAndFlagsBits;
        swift_getKeyPath();
        v54._name.value._countAndFlagsBits = MEMORY[0x1DA6CD420](v47);
        LOBYTE(v54._name.value._object) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
        lazy protocol witness table accessor for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute();
        CRAttributedString.Attributes.subscript.setter();
        [v44 setLineBreakMode_];

        return;
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t CRAttributedString<>.apply(_:)(double *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = *a1;
  v14 = a1[1];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v28 = v1;
  CRAttributedString.runs.getter();
  v34 = v12;
  v35 = v10;
  CRAttributedString.Runs.next()();
  v15 = *(v4 + 48);
  if (v15(v9, 1, v3) != 1)
  {
    v32 = *(v4 + 32);
    v33 = v4 + 32;
    v17 = sqrt(v13 * v13 + v14 * v14);
    v31 = (v4 + 8);
    v26 = v3;
    v25 = v9;
    v24 = v15;
    v32(v6, v9, v3);
    while (1)
    {
      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
      CRAttributedString.Runs.Run.subscript.getter();

      v18 = v38;
      if (v38 != 1)
      {
        v19 = v39;
        v29 = v40;
        v30 = v42;
        v20 = v37;
        *&v21 = v17 * *&v41;
        CRAttributedString.Runs.Run.range.getter();
        swift_getKeyPath();
        v37 = v20;
        v38 = v18;
        v39 = v19;
        v15 = v24;
        v9 = v25;
        v40 = v29;
        v41 = v21;
        v42 = v30;
        v22 = CRAttributedString.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
        v3 = v26;
        CRAttributedString.Substring.subscript.setter();
        v22(v36, 0);
      }

      (*v31)(v6, v3);
      CRAttributedString.Runs.next()();
      if (v15(v9, 1, v3) == 1)
      {
        break;
      }

      v32(v6, v9, v3);
    }
  }

  return (*(v23 + 8))(v34, v35);
}

double CRAttributedString.Runs<>.maxHDRHeadroom.getter()
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v36 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v1 = &v35 - v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  (*(v12 + 16))(&v35 - v22, v45, v11, v21);
  v37 = v23;
  outlined init with copy of LazySequence<CRAttributedString<TextAttributeScope>.Runs>(v23, v19);
  v38 = v12;
  (*(v12 + 32))(v44, v19, v11);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
  dispatch thunk of Sequence.makeIterator()();
  v24 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
  v44 = v16;
  v45 = v11;
  v42 = v24;
  dispatch thunk of IteratorProtocol.next()();
  v25 = v46;
  v40 = *(v46 + 48);
  v41 = v46 + 48;
  v26 = 0.0;
  if (v40(v10, 1, v5) != 1)
  {
    v39 = *(v25 + 32);
    v28 = (v36 + 8);
    v46 = v25 + 32;
    v29 = (v25 + 8);
    v30 = v43;
    v39(v7, v10, v5);
    while (1)
    {
      CRAttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
      CRAttributedString.Attributes.subscript.getter();

      (*v28)(v1, v30);
      v32 = type metadata accessor for Color(0);
      if ((*(*(v32 - 8) + 48))(v4, 1, v32) == 1)
      {
        (*v29)(v7, v5);
        outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v31 = 0.0;
      }

      else
      {
        CGColorGetContentHeadroom();
        v34 = v33;
        (*v29)(v7, v5);
        v31 = v34;
        outlined destroy of Color(v4);
      }

      if (v26 <= v31)
      {
        v26 = v31;
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v40(v10, 1, v5) == 1)
      {
        break;
      }

      v39(v7, v10, v5);
    }
  }

  (*(v38 + 8))(v44, v45);
  outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  return v26;
}

CGColorRef CRAttributedString.Attributes<>.nsAttributes(darkMode:)(int a1)
{
  v76 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v73 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v73 - v8);
  v10 = type metadata accessor for Color(0);
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v93 = v14;
  v15 = *MEMORY[0x1E69DB648];
  swift_getKeyPath();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  v16 = *(&v88 + 1);
  v80 = v1;
  if (*(&v88 + 1) == 1)
  {
    v90 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  }

  else
  {
    v75 = v13;
    v74 = v4;
    v17 = v15;
    v19 = v89;
    v18 = v90;
    v20 = v88;
    v82 = v88;
    v83 = v89;
    v84 = v90;
    v85 = v91;
    v86 = v92;
    v21 = Font.platformFont.getter();
    v22 = v18;
    v15 = v17;
    v4 = v74;
    v13 = v75;
    outlined consume of Font?(v20, v16, v19, v22);
    v90 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
    if (v21)
    {
      *&v88 = v21;
      v23 = v79;
      goto LABEL_8;
    }
  }

  v23 = v79;
  if (one-time initialization token for textBoxDefaultFont != -1)
  {
    swift_once();
  }

  *&v88 = static UIConstants.textBoxDefaultFont;
  v24 = static UIConstants.textBoxDefaultFont;
LABEL_8:
  outlined init with take of Any(&v88, &v82);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = v14;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v15, isUniquelyReferenced_nonNull_native);
  v93 = v87;
  v26 = *MEMORY[0x1E69DB650];
  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
  v27 = v26;
  CRAttributedString.Attributes.subscript.getter();

  v29 = v77;
  v28 = v78;
  v30 = *(v78 + 48);
  if (v30(v23, 1, v77) != 1)
  {
    outlined init with take of Color(v23, v9);
    (*(v28 + 56))(v9, 0, 1, v29);
LABEL_19:
    if (v30(v9, 1, v29) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      specialized Dictionary._Variant.removeValue(forKey:)(v27, &v88);

      outlined destroy of StocksKitCurrencyCache.Provider?(&v88, &_sypSgMd, &_sypSgMR);
LABEL_26:
      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (v88 != 2 && (v88 & 1) != 0)
      {
        v42 = *MEMORY[0x1E69DB758];
        v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v90 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        *&v88 = v43;
        outlined init with take of Any(&v88, &v82);
        v44 = v93;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v87 = v44;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v42, v45);
        v93 = v87;
      }

      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (v88 != 2 && (v88 & 1) != 0)
      {
        v46 = *MEMORY[0x1E69DB6B8];
        v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v90 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        *&v88 = v47;
        outlined init with take of Any(&v88, &v82);
        v48 = v93;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v87 = v48;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v46, v49);
        v93 = v87;
      }

      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute();
      CRAttributedString.Attributes.subscript.getter();

      v50 = MEMORY[0x1E69DB660];
      v51 = MEMORY[0x1E69E63B0];
      v52 = MEMORY[0x1E69DB688];
      if ((BYTE8(v88) & 1) == 0)
      {
        v53 = *MEMORY[0x1E69DB660];
        v90 = MEMORY[0x1E69E63B0];
        outlined init with take of Any(&v88, &v82);
        v54 = v93;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v87 = v54;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v53, v55);
        v56 = v87;
        v57 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
        [v57 setLineBreakMode_];
        v58 = *v52;
        v90 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
        *&v88 = v57;
        outlined init with take of Any(&v88, &v82);
        v59 = v57;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v87 = v56;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v58, v60);

        v93 = v87;
      }

      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (BYTE8(v88))
      {
        v61 = 0;
      }

      else
      {
        v62 = v88;
        v63 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
        v61 = v63;
        if (v63)
        {
          [v63 setAlignment_];
        }
      }

      swift_getKeyPath();
      lazy protocol witness table accessor for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if ((BYTE8(v88) & 1) == 0)
      {
        v64 = v88;
        if (v61 || (v61 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init]) != 0)
        {
          if ([v61 alignment] == 4)
          {
            [v61 setAlignment_];
          }

          [v61 setBaseWritingDirection_];
        }
      }

      swift_getKeyPath();
      CRAttributedString.Attributes.subscript.getter();

      if (BYTE8(v88))
      {
        if (!v61)
        {
          return v93;
        }

        v65 = v61;
        v66 = v93;
      }

      else
      {
        v67 = *v50;
        v90 = v51;
        outlined init with take of Any(&v88, &v82);
        v68 = v93;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v87 = v68;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v67, v69);
        v66 = v87;
        if (!v61)
        {
          v61 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
          if (!v61)
          {
            return v66;
          }
        }

        [v61 setLineBreakMode_];
        v65 = v61;
      }

      v70 = *v52;
      v90 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
      *&v88 = v65;
      outlined init with take of Any(&v88, &v82);
      v71 = v65;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v66;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v70, v72);

      return v87;
    }

    if ((v76 & 1) == 0)
    {
      outlined init with copy of Color(v9, v13);
      goto LABEL_25;
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    v38 = static PKInkingTool.convertColor(_:from:to:)();

    Color.init(cgColor:)([v38 CGColor], v4);
    result = (v30)(v4, 1, v29);
    if (result != 1)
    {

      outlined init with take of Color(v4, v13);
LABEL_25:
      outlined destroy of Color(v9);
      v39 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      outlined destroy of Color(v13);
      v90 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      *&v88 = v39;
      outlined init with take of Any(&v88, &v82);
      v40 = v93;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v27, v41);

      v93 = v87;
      goto LABEL_26;
    }

    goto LABEL_54;
  }

  if ((v76 & 1) == 0)
  {
    v36 = 1;
LABEL_17:
    (*(v28 + 56))(v9, v36, 1, v29);
    if (v30(v23, 1, v29) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    }

    goto LABEL_19;
  }

  v31 = *(v29 + 20);
  v32 = type metadata accessor for UnknownValueProperties();
  (*(*(v32 - 8) + 56))(v9 + v31, 1, 1, v32);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (!result)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v34 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (result)
  {
    v35 = result;

    v36 = 0;
    *v9 = v35;
    v28 = v78;
    v23 = v79;
    goto LABEL_17;
  }

LABEL_55:
  __break(1u);
  return result;
}

char *CRAttributedString<>.updateAttribute<A>(_:range:keypath:)(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v32 = a3;
  v33 = a1;
  v30 = a4;
  v8 = *(*a4 + *MEMORY[0x1E69E6CE8] + 8);
  v31 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v18 = (*(a5 + 24))(v8, a5, v15);
  v29 = v5;
  if ((v18 & 1) == 0)
  {
    v23 = v32;
LABEL_5:
    (*(a5 + 16))(v8, a5);
    swift_getAssociatedConformanceWitness();
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    result = (*(v13 + 8))(v17, AssociatedTypeWitness);
    v25 = &a2[v23];
    v26 = __OFADD__(a2, v23);
    if (v24)
    {
      if (!v26)
      {
        if (v25 >= a2)
        {
          (*(v13 + 56))(v12, 1, 1, AssociatedTypeWitness);
LABEL_15:

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
          v27 = CRAttributedString.subscript.modify();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
          CRAttributedString.Substring.subscript.setter();
          v27(v34, 0);
          return a2;
        }

        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v26)
    {
      if (v25 >= a2)
      {
        (*(v13 + 16))(v12, v33, AssociatedTypeWitness);
        (*(v13 + 56))(v12, 0, 1, AssociatedTypeWitness);
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v19 = CRAttributedString.attributedString.getter();
  result = [v19 string];
  if (result)
  {
    v21 = result;

    a2 = [v21 paragraphRangeForRange_];
    v23 = v22;

    goto LABEL_5;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *CRAttributedString<>.updateAttribute<A>(in:newValue:keypath:)(void (**a1)(char *, uint64_t), uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v77 = a3;
  v78 = a4;
  v67 = a2;
  v75 = a5;
  v10 = *a5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v64 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v59 - v14;
  v81 = a6;
  v66 = *(v10 + *MEMORY[0x1E69E6CE8] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v24;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v26 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = (&v59 - v27);
  if (NSNotFound.getter() == a1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v65 = v26;
  v28 = v17;
  v17 = a1 + v67;
  if (__OFADD__(a1, v67))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v60 = v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v61 = a1;
  v62 = v29;
  CRAttributedString.subscript.getter();
  a1 = v82;
  CRAttributedString.Substring.runs.getter();
  v23[1](v25, v22);
  v30 = v80;
  CRAttributedString.Runs.next()();
  v71 = *(v28 + 6);
  v72 = v28 + 48;
  if (v71(v30, 1, v16) != 1)
  {
    v38 = *(v28 + 4);
    v37 = v28 + 32;
    v69 = (v64 + 8);
    v70 = v38;
    v23 = (v63 + 8);
    a1 = (v37 - 24);
    v25 = MEMORY[0x1E69E7CC0];
    v68 = v7;
    while (1)
    {
      v39 = v37;
      v70(v19, v30, v16);
      v40 = v73;
      CRAttributedString.Runs.Run.attributes.getter();
      v41 = v76;
      v77(v40);
      (*v69)(v40, v79);
      v17 = v19;
      v42 = CRAttributedString.Runs.Run.range.getter();
      if (__OFSUB__(v43, v42))
      {
        break;
      }

      v44 = CRAttributedString<>.updateAttribute<A>(_:range:keypath:)(v41, v42, v43 - v42, v75, v81);
      v46 = v45;
      (*v23)(v41, AssociatedTypeWitness);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v48 = *(v25 + 2);
      v47 = *(v25 + 3);
      if (v48 >= v47 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v25);
      }

      (*a1)(v19, v16);
      *(v25 + 2) = v48 + 1;
      v49 = &v25[16 * v48];
      *(v49 + 4) = v44;
      *(v49 + 5) = v46;
      v30 = v80;
      CRAttributedString.Runs.next()();
      v50 = v71(v30, 1, v16);
      v7 = v68;
      v37 = v39;
      if (v50 == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_5:
  (*(v65 + 8))(v82, v83);
  if ((*(v81 + 24))())
  {
    v31 = CRAttributedString.attributedString.getter();
    v32 = [v31 string];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (!v33 && v35 == 0xE000000000000000)
    {

      return v25;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v51 & 1) == 0 && !v67)
    {
      v52 = CRAttributedString.count.getter();
      v23 = v61;
      if (v52 >= v61)
      {
        v17 = v7;
        if (!__OFSUB__(CRAttributedString.count.getter(), 1))
        {
          a1 = v60;
          CRAttributedString.attributes(at:effectiveRange:)();
          v53 = v76;
          v77(a1);
          v17 = CRAttributedString<>.updateAttribute<A>(_:range:keypath:)(v53, v23, 0, v75, v81);
          v23 = v54;
          (*(v63 + 8))(v53, AssociatedTypeWitness);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v7 = v64;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_23:
            v57 = *(v25 + 2);
            v56 = *(v25 + 3);
            if (v57 >= v56 >> 1)
            {
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v25);
            }

            (*(v7 + 8))(a1, v79);
            *(v25 + 2) = v57 + 1;
            v58 = &v25[16 * v57];
            *(v58 + 4) = v17;
            *(v58 + 5) = v23;
            return v25;
          }

LABEL_30:
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }
  }

  return v25;
}

void one-time initialization function for defaultValue()
{
  v0 = type metadata accessor for Color(0);
  __swift_allocate_value_buffer(v0, static TextAttributeScope.ColorAttribute.defaultValue);
  v1 = __swift_project_value_buffer(v0, static TextAttributeScope.ColorAttribute.defaultValue);
  v2 = *(v0 + 20);
  v3 = type metadata accessor for UnknownValueProperties();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v4 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (v4)
  {
    v5 = v4;
    CGColorRef.calculateMinimumHeadroom.getter();
    v6 = CGColorCreateWithContentHeadroom();
    if (v6)
    {
      v7 = v6;

      *v1 = v7;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static TextAttributeScope.ColorAttribute.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Color(0);
  v3 = __swift_project_value_buffer(v2, static TextAttributeScope.ColorAttribute.defaultValue);

  return outlined init with copy of Color(v3, a1);
}

uint64_t protocol witness for static CRDefaultedAttributeStringKey.defaultValue.getter in conformance TextAttributeScope.ColorAttribute@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Color(0);
  v3 = __swift_project_value_buffer(v2, static TextAttributeScope.ColorAttribute.defaultValue);

  return outlined init with copy of Color(v3, a1);
}

float one-time initialization function for defaultValue()
{
  if (one-time initialization token for textBoxDefaultFont != -1)
  {
    swift_once();
  }

  v0 = static UIConstants.textBoxDefaultFont;
  v1 = [v0 fontName];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = static UIConstants.textBoxDefaultFont;
  v6 = [v5 familyName];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = static UIConstants.textBoxDefaultFont;
  [v10 pointSize];
  v12 = v11;

  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  LOBYTE(v10) = String.hasPrefix(_:)(v13);

  if (v10)
  {

    v2 = 0;
    v4 = 0;
  }

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  v15 = String.hasPrefix(_:)(v14);

  if (v15)
  {

    v7 = 0;
    v9 = 0;
  }

  result = v12;
  static TextAttributeScope.FontAttribute.defaultValue = v2;
  qword_1EC7A2EB0 = v4;
  qword_1EC7A2EB8 = v7;
  qword_1EC7A2EC0 = v9;
  dword_1EC7A2EC8 = LODWORD(result);
  qword_1EC7A2ED0 = 0;
  return result;
}

double static TextAttributeScope.FontAttribute.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EC7A2EC0;
  v2 = dword_1EC7A2EC8;
  v3 = qword_1EC7A2ED0;
  *a1 = static TextAttributeScope.FontAttribute.defaultValue;
  *(a1 + 8) = *&qword_1EC7A2EB0;
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;

  return result;
}

double protocol witness for static CRDefaultedAttributeStringKey.defaultValue.getter in conformance TextAttributeScope.FontAttribute@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EC7A2EC0;
  v2 = dword_1EC7A2EC8;
  v3 = qword_1EC7A2ED0;
  *a1 = static TextAttributeScope.FontAttribute.defaultValue;
  *(a1 + 8) = *&qword_1EC7A2EB0;
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;

  return result;
}

uint64_t one-time initialization function for attributeTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9Coherence28CRAttributeStringDecodingKey_pXptGMd, &_ss23_ContiguousArrayStorageCySS_9Coherence28CRAttributeStringDecodingKey_pXptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FF30;
  *(inited + 32) = 0x726F6C6F63;
  *(inited + 40) = 0xE500000000000000;
  v1 = lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
  *(inited + 48) = &type metadata for TextAttributeScope.ColorAttribute;
  *(inited + 56) = v1;
  *(inited + 64) = 1953394534;
  *(inited + 72) = 0xE400000000000000;
  v2 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  *(inited + 80) = &type metadata for TextAttributeScope.FontAttribute;
  *(inited + 88) = v2;
  *(inited + 96) = 0x6E696C7265646E75;
  *(inited + 104) = 0xE900000000000065;
  v3 = lazy protocol witness table accessor for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute();
  *(inited + 112) = &type metadata for TextAttributeScope.UnderlineAttribute;
  *(inited + 120) = v3;
  strcpy((inited + 128), "strikethrough");
  *(inited + 142) = -4864;
  v4 = lazy protocol witness table accessor for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute();
  *(inited + 144) = &type metadata for TextAttributeScope.StrikethroughAttribute;
  *(inited + 152) = v4;
  *(inited + 160) = 0x6E656D6E67696C61;
  *(inited + 168) = 0xE900000000000074;
  v5 = lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
  *(inited + 176) = &type metadata for TextAttributeScope.AlignmentAttribute;
  *(inited + 184) = v5;
  *(inited + 192) = 0x6F69746365726964;
  *(inited + 200) = 0xE90000000000006ELL;
  v6 = lazy protocol witness table accessor for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute();
  *(inited + 208) = &type metadata for TextAttributeScope.WritingDirectionAttribute;
  *(inited + 216) = v6;
  *(inited + 224) = 1852990827;
  *(inited + 232) = 0xE400000000000000;
  v7 = lazy protocol witness table accessor for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute();
  *(inited + 240) = &type metadata for TextAttributeScope.KernAttribute;
  *(inited + 248) = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9Coherence28CRAttributeStringDecodingKey_pXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence28CRAttributeStringDecodingKey_pXmTtMd, &_sSS_9Coherence28CRAttributeStringDecodingKey_pXmTtMR);
  result = swift_arrayDestroy();
  static TextAttributeScope.attributeTypes = v8;
  return result;
}

double static TextAttributeScope.attributeTypes.getter()
{
  if (one-time initialization token for attributeTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static TextAttributeScope.attributeTypes.setter(uint64_t a1)
{
  if (one-time initialization token for attributeTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TextAttributeScope.attributeTypes = a1;

  return result;
}

double (*static TextAttributeScope.attributeTypes.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for attributeTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return PaperMarkupViewController._directTouchMode.modify;
}

double key path getter for static TextAttributeScope.attributeTypes : TextAttributeScope.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for attributeTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static TextAttributeScope.attributeTypes;

  return result;
}

double key path setter for static TextAttributeScope.attributeTypes : TextAttributeScope.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for attributeTypes;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TextAttributeScope.attributeTypes = v1;

  return result;
}

double protocol witness for static CRAttributeStringAttributeScope.attributeTypes.getter in conformance TextAttributeScope()
{
  if (one-time initialization token for attributeTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance NSWritingDirection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance NSWritingDirection()
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance NSWritingDirection(uint64_t a1, uint64_t a2)
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance NSWritingDirection(uint64_t a1)
{
  v2 = _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);
  v3 = _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);
  v4 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance NSWritingDirection(uint64_t a1, uint64_t a2)
{
  v4 = _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSWritingDirection and conformance NSWritingDirection, type metadata accessor for NSWritingDirection, &protocol conformance descriptor for NSWritingDirection);
  v5 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance NSTextAlignment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance NSTextAlignment()
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance NSTextAlignment(uint64_t a1, uint64_t a2)
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance NSTextAlignment(uint64_t a1)
{
  v2 = _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);
  v3 = _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);
  v4 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance NSTextAlignment(uint64_t a1, uint64_t a2)
{
  v4 = _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSTextAlignment and conformance NSTextAlignment, type metadata accessor for NSTextAlignment, &protocol conformance descriptor for NSTextAlignment);
  v5 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

void closure #1 in CRAttributedString.Runs<>.familyNames.getter(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  CRAttributedString.Runs.Run.attributes.getter();
  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v6 = v11;
  if (v11 == 1 || (v8 = v12, v7 = v13, v9 = v10, , outlined consume of Font?(v9, v6, v8, v7), !v7))
  {

    v7 = 0xE900000000000061;
    v8 = 0x63697465766C6548;
  }

  *a1 = v8;
  a1[1] = v7;
}

void closure #1 in CRAttributedString.Runs<>.fontSizes.getter(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  CRAttributedString.Runs.Run.attributes.getter();
  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  (*(v3 + 8))(v5, v2);
  if (v9 == 1)
  {
    if (one-time initialization token for textBoxDefaultPointSize != -1)
    {
      swift_once();
    }

    v6 = *&static UIConstants.textBoxDefaultPointSize;
    v7 = v6;
  }

  else
  {
    v7 = *&v12;
    outlined consume of Font?(v8, v9, v10, v11);
  }

  *a1 = v7;
  *(a1 + 4) = 0;
}

void closure #1 in CRAttributedString.Runs<>.isBold.getter(uint64_t a1@<X0>, uint64_t (*a2)(__n128)@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v42 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v44 = a1;
  CRAttributedString.Runs.Run.attributes.getter();
  swift_getKeyPath();
  v17 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  v18 = *(v7 + 8);
  v18(v15, v6);
  if (v52 == 1)
  {
    v19 = 0;
LABEL_9:
    *a4 = v19;
    return;
  }

  v40 = v9;
  v41 = a4;
  outlined consume of Font?(v51, v52, v53, v54);
  v39 = v16;
  CRAttributedString.Runs.Run.attributes.getter();
  swift_getKeyPath();
  v38 = v17;
  CRAttributedString.Attributes.subscript.getter();
  v37 = v18;
  v18(v12, v6);
  v20 = v52;
  if (v52 == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = v55;
    v21 = v56;
    v24 = v53;
    v23 = v54;
    v25 = v51;

    v45 = v25;
    v46 = v20;
    v47 = v24;
    v48 = v23;
    v49 = v22;
    v50 = v21;
    v27 = (v43)(v26);
    outlined consume of Font?(v25, v20, v24, v23);
    if ((v27 & 1) == 0)
    {
      v19 = 2;
      goto LABEL_8;
    }

    v28 = v40;
    CRAttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    CRAttributedString.Attributes.subscript.getter();
    v37(v28, v6);
    v29 = v52;
    if (v52 != 1)
    {
      v30 = v56;
      v32 = v53;
      v31 = v54;
      v33 = v51;

      v34 = v42;
      swift_beginAccess();
      v35 = *v34;
      outlined consume of Font?(v33, v29, v32, v31);
      v19 = (v35 & ~v30) == 0;
LABEL_8:
      a4 = v41;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void closure #1 in CRAttributedString.Runs<>.supportsBold.getter(uint64_t (*a1)(uint64_t)@<X1>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  CRAttributedString.Runs.Run.attributes.getter();
  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  v8 = (*(v5 + 8))(v7, v4);
  v9 = v18;
  if (v18 == 1)
  {
    v10 = 1;
  }

  else
  {
    v12 = v19;
    v11 = v20;
    v13 = v17;
    v14[0] = v17;
    v14[1] = v18;
    v14[2] = v19;
    v14[3] = v20;
    v15 = v21;
    v16 = v22;
    v10 = a1(v8);
    outlined consume of Font?(v13, v9, v12, v11);
  }

  *a2 = v10 & 1;
}

void closure #1 in CRAttributedString.Runs<>.isUndlerline.getter(uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  a2();
  CRAttributedString.Runs.Run.subscript.getter();

  *a3 = v5 & 1;
}

uint64_t closure #1 in CRAttributedString.Runs<>.alignments.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  CRAttributedString.Runs.Run.attributes.getter();
  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
  CRAttributedString.Attributes.subscript.getter();

  result = (*(v3 + 8))(v5, v2);
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  *a1 = v7;
  return result;
}

uint64_t closure #1 in CRAttributedString.Runs<>.fontColors.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = type metadata accessor for Color(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  CRAttributedString.Runs.Run.attributes.getter();
  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
  CRAttributedString.Attributes.subscript.getter();
  (*(v12 + 8))(v14, v11);
  v15 = *(v2 + 48);
  if (v15(v10, 1, v1) == 1)
  {
    v16 = v19;
    if (one-time initialization token for textBoxDefaultTextColor != -1)
    {
      swift_once();
    }

    Color.init(cgColor:)([static UIConstants.textBoxDefaultTextColor CGColor], v7);
    if (v15(v7, 1, v1))
    {
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      __break(1u);
    }

    else
    {

      outlined init with take of Color(v7, v4);
      outlined init with take of Color(v4, v16);
      result = v15(v10, 1, v1);
      if (result != 1)
      {
        return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      }
    }
  }

  else
  {

    return outlined init with take of Color(v10, v19);
  }

  return result;
}

void closure #1 in CRAttributedString<>.init(nsAttributedString:scale:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 == 1.0 || a3 == 0.0)
  {
  }

  else
  {
    v6 = *(a1 + 16);

    if (v6)
    {
      v7 = *MEMORY[0x1E69DB648];
      v8 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v9)
      {
        outlined init with copy of Any(*(a1 + 56) + 32 * v8, &v16);
        v10 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
        if (swift_dynamicCast())
        {
          v11 = v15[0];
          [v15[0] pointSize];
          v13 = [v15[0] fontWithSize_];
          v17 = v10;
          *&v16 = v13;
          outlined init with take of Any(&v16, v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v7, isUniquelyReferenced_nonNull_native);
        }
      }
    }
  }

  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(a1, 0, a2);
}

id CRAttributedString<>.nsAttributedString.getter()
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v26 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v11 = CRAttributedString.attributedString.getter();
  v12 = [v11 string];

  if (!v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x1DA6CCED0](v13);
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString_];

  CRAttributedString.runs.getter();
  v34 = v10;
  v35 = v8;
  CRAttributedString.Runs.next()();
  v29 = *(v2 + 48);
  v30 = v2 + 48;
  if (v29(v7, 1, v1) == 1)
  {
LABEL_7:
    (*(v27 + 8))(v34, v35);
    return v33;
  }

  else
  {
    v15 = *(v2 + 32);
    v14 = v2 + 32;
    v28 = v15;
    v16 = (v26 + 8);
    v17 = (v14 - 24);
    while (1)
    {
      v18 = v14;
      v28(v4, v7, v1);
      v19 = v31;
      CRAttributedString.Runs.Run.attributes.getter();
      CRAttributedString.Attributes<>.nsAttributes(darkMode:)(0);
      (*v16)(v19, v32);
      v20 = CRAttributedString.Runs.Run.range.getter();
      CRAttributedString.Runs.Run.range.getter();
      v22 = v21;
      result = CRAttributedString.Runs.Run.range.getter();
      v24 = v22 - result;
      if (__OFSUB__(v22, result))
      {
        break;
      }

      type metadata accessor for NSAttributedStringKey(0);
      _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v33 addAttributes:isa range:{v20, v24}];

      (*v17)(v4, v1);
      CRAttributedString.Runs.next()();
      v14 = v18;
      if (v29(v7, 1, v1) == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TextAttributeScope.ColorAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for TextAttributeScope.FontAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Font and conformance Font()
{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TextAttributeScope.UnderlineAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for TextAttributeScope.StrikethroughAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for TextAttributeScope.WritingDirectionAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.WritingDirectionAttribute and conformance TextAttributeScope.WritingDirectionAttribute);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TextAttributeScope.AlignmentAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TextAttributeScope.KernAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.KernAttribute and conformance TextAttributeScope.KernAttribute);
  }

  return result;
}

uint64_t _sSo21NSAttributedStringKeyaABSHSCWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of LazySequence<CRAttributedString<TextAttributeScope>.Runs>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized CRAttributedString<>.updateAttribute<A>(in:newValue:keypath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a6;
  v82 = a4;
  v79 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v9 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v67 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v11 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v67 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
  v16 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v18 = &v67 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v68 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v67 - v19;
  result = NSNotFound.getter();
  if (result == a1)
  {
    goto LABEL_64;
  }

  if (__OFADD__(a1, a2))
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.subscript.getter();
  v21 = v80;
  CRAttributedString.Substring.runs.getter();
  (*(v16 + 8))(v18, v21);
  CRAttributedString.Runs.next()();
  v22 = *(v11 + 48);
  v23 = v81;
  v77 = v11 + 48;
  v76 = v22;
  if (v22(v15, 1, v81) != 1)
  {
    v26 = *(v11 + 32);
    v25 = v11 + 32;
    v75 = v26;
    v74 = (v9 + 8);
    v24 = MEMORY[0x1E69E7CC0];
    v70 = (v25 - 24);
    v69 = xmmword_1D405D330;
    v72 = v25;
    v27 = v85;
    v73 = a5;
    v71 = v15;
    while (1)
    {
      v75(v27, v15, v23);
      CRAttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      v87 = lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
      CRAttributedString.Attributes.subscript.getter();

      if (v97 == 1)
      {
        if (one-time initialization token for textBoxDefaultFont != -1)
        {
          swift_once();
        }

        Font.init(_:)(&v101, static UIConstants.textBoxDefaultFont);
        countAndFlagsBits = v101._familyName.value._countAndFlagsBits;
        object = v101._familyName.value._object;
        if (!v101._familyName.value._object)
        {
          goto LABEL_17;
        }
      }

      else
      {
        countAndFlagsBits = v98.value._countAndFlagsBits;
        object = v98.value._object;
        v101._name.value._countAndFlagsBits = v96;
        v101._name.value._object = v97;
        v101._familyName = v98;
        LODWORD(v101.pointSize) = v99;
        v101.traits.rawValue = rawValue;
        if (!v98.value._object)
        {
          goto LABEL_17;
        }
      }

      if (countAndFlagsBits == a5)
      {
        v30 = v86;
        v31 = a5;
        if (object == v86)
        {
          goto LABEL_28;
        }
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v30 = object;
        v31 = countAndFlagsBits;
        goto LABEL_28;
      }

LABEL_17:
      v32 = v86;

      v33._countAndFlagsBits = 46;
      v33._object = 0xE100000000000000;
      v34 = a5;
      if (String.hasPrefix(_:)(v33))
      {

        v34 = 0;
        v32 = 0;
      }

      v101._familyName.value._countAndFlagsBits = v34;
      v101._familyName.value._object = v32;
      v36 = v101._name.value._countAndFlagsBits;
      v35 = v101._name.value._object;
      v96 = v101._name.value._countAndFlagsBits;
      v97 = v101._name.value._object;
      v98.value._countAndFlagsBits = v34;
      v98.value._object = v32;
      *&v99 = v101.pointSize;
      rawValue = v101.traits.rawValue;
      v37 = Font.platformFont.getter();
      v38 = [v37 fontName];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v35 && (v39 == v36 && v35 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        v42._countAndFlagsBits = 46;
        v42._object = 0xE100000000000000;
        v43 = String.hasPrefix(_:)(v42);

        if (v43)
        {

          v39 = 0;
          v41 = 0;
        }

        v101._name.value._countAndFlagsBits = v39;
        v101._name.value._object = v41;
        v91 = v39;
        v92 = v41;
        familyName = v101._familyName;
        pointSize = v101.pointSize;
        v95 = v101.traits.rawValue;
        v44 = Font.platformFont.getter();
        v45 = [v44 familyName];

        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        Font.familyName.setter(v46, v48);
      }

      v31 = v101._familyName.value._countAndFlagsBits;
      v30 = v101._familyName.value._object;
LABEL_28:
      v88 = v24;
      v50 = v101._name.value._countAndFlagsBits;
      v49 = v101._name.value._object;
      v51 = v101.pointSize;
      v52 = v101.traits.rawValue;
      (*v74)(v89, v90);
      result = CRAttributedString.Runs.Run.range.getter();
      v54 = v53 - result;
      if (__OFSUB__(v53, result))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v55 = result;
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v56 = qword_1EC7A2EB8;
      v57 = qword_1EC7A2EC0;
      v58 = *&dword_1EC7A2EC8;
      v59 = qword_1EC7A2ED0;
      if (v49)
      {
        if (!qword_1EC7A2EB0)
        {
          goto LABEL_50;
        }

        if (v50 != static TextAttributeScope.FontAttribute.defaultValue || v49 != qword_1EC7A2EB0)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else if (qword_1EC7A2EB0)
      {
        goto LABEL_50;
      }

      if (v30)
      {
        if (!v57)
        {
          goto LABEL_50;
        }

        if (v31 != v56 || v30 != v57)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else if (v57)
      {
        goto LABEL_50;
      }

      if (v51 == v58 && v52 == v59)
      {
        if (__OFADD__(v55, v54))
        {
          goto LABEL_62;
        }

        if (v55 + v54 < v55)
        {
          goto LABEL_63;
        }

        v101._name = v69;
        memset(&v101._familyName, 0, 32);

        v60 = CRAttributedString.subscript.modify();
        CRAttributedString.Substring.subscript.setter();
        v60(&v96, 0);

        goto LABEL_53;
      }

LABEL_50:
      if (__OFADD__(v55, v54))
      {
        goto LABEL_60;
      }

      if (v55 + v54 < v55)
      {
        goto LABEL_61;
      }

      v101._name.value._countAndFlagsBits = v50;
      v101._name.value._object = v49;
      v101._familyName.value._countAndFlagsBits = v31;
      v101._familyName.value._object = v30;
      *&v101.pointSize = LODWORD(v51);
      v101.traits.rawValue = v52;

      v61 = CRAttributedString.subscript.modify();
      CRAttributedString.Substring.subscript.setter();
      v61(&v96, 0);

LABEL_53:

      v24 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5 = v73;
      v27 = v85;
      v15 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      }

      v64 = *(v24 + 2);
      v63 = *(v24 + 3);
      if (v64 >= v63 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v24);
      }

      v65 = v81;
      (*v70)(v27, v81);
      *(v24 + 2) = v64 + 1;
      v66 = &v24[16 * v64];
      *(v66 + 4) = v55;
      *(v66 + 5) = v54;
      v23 = v65;
      CRAttributedString.Runs.next()();
      if (v76(v15, 1, v65) == 1)
      {
        goto LABEL_5;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_5:
  (*(v68 + 8))(v83, v84);
  return v24;
}

uint64_t getEnumTagSinglePayload for StickerDropPreviewInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StickerDropPreviewInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

id specialized Canvas.stickerDropInteraction(_:previewForDropping:withDefault:)(void *a1, void *a2)
{
  v3 = v2;
  [a1 _suggestedTransform];
  v6 = CGAffineTransformDecompose(&v63, &transform);
  width = v63.scale.width;
  height = v63.scale.height;
  rotation = v63.rotation;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x450);
  v12 = (v11)(v6);
  v13 = 1.0;
  if (v12)
  {
    v14 = v12;
    [v12 zoomScale];
    v13 = v15;
  }

  (*((*v10 & *v3) + 0x858))(&transform);
  v16 = sqrt(vaddvq_f64(vmulq_f64(*&transform.a, *&transform.a)));
  if (v65)
  {
    v16 = 1.0;
  }

  v17 = 1.0 / (v13 * v16);
  CGAffineTransformMakeScale(&v63, width * v17, height * v17);
  dx = v63.translation.dx;
  dy = v63.translation.dy;
  v57 = *&v63.horizontalShear;
  scale = v63.scale;
  [a2 size];
  v63.scale = scale;
  *&v63.horizontalShear = v57;
  v63.translation.dx = dx;
  v63.translation.dy = dy;
  v20 = CGSizeApplyAffineTransform(v70, &v63);
  v21 = [a2 target];
  v22 = [v21 container];

  v23 = [a2 target];
  [v23 center];
  v25 = v24;
  v27 = v26;

  [v3 convertPoint:v22 fromCoordinateSpace:{v25, v27}];
  v29 = v28;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd, &_s8PaperKit10CanvasViewCyAA5ImageVGMR);
  if (swift_dynamicCastClass())
  {
    v32 = v11();
    if (v32)
    {
      v33 = v32;
      [v32 contentOffset];
      v35 = v34;
      v37 = v36;

      v29 = v29 + v35;
      v31 = v31 + v37;
    }

    goto LABEL_9;
  }

  type metadata accessor for PaperTextAttachmentView(0);
  if (swift_dynamicCastClass())
  {
LABEL_9:
    v29 = v17 * v29;
    v31 = v17 * v31;
  }

  v66 = v20;
  v67 = v29;
  v68 = v31;
  v69 = rotation;
  v38 = direct field offset for Canvas.stickerDropPreviewInfoMap;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v3 + v38);
  *(v3 + v38) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v66, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + v38) = v62;
  swift_endAccess();
  v40 = [a2 target];
  v41 = [v40 container];

  v42 = [a2 target];
  [v42 center];
  v44 = v43;
  v46 = v45;

  [a1 _suggestedTransform];
  v47 = v63.translation.dx;
  v48 = v63.translation.dy;
  v58 = *&v63.horizontalShear;
  v60 = v63.scale;
  v49 = objc_allocWithZone(MEMORY[0x1E69DC9A8]);
  v63.scale = v60;
  *&v63.horizontalShear = v58;
  v63.translation.dx = v47;
  v63.translation.dy = v48;
  v50 = [v49 initWithContainer:v41 center:&v63 transform:{v44, v46}];

  v51 = [a2 retargetedPreviewWithTarget_];
  v52 = type metadata accessor for StickerDragPreviewContainerView();
  v53 = objc_allocWithZone(v52);
  v54 = OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_isLifted;
  v53[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_isLifted] = 0;
  *&v53[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_meshView] = 0;
  *&v53[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_transformView] = 0;
  *&v53[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shineView] = 0;
  *&v53[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shadowView] = 0;
  v53[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_isDropAnimation] = 1;
  v53[v54] = 1;
  v61.receiver = v53;
  v61.super_class = v52;
  v55 = objc_msgSendSuper2(&v61, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v51 _setPreviewContainer_];

  return v51;
}

uint64_t ImageFilter.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
  type metadata accessor for ImageFilter(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ImageFilter.init(docCameraFilter:)@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImageFilter(0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    v13 = v5;
    switch(a1)
    {
      case 4u:
        v9 = 3;
        goto LABEL_13;
      case 3u:
        v9 = 2;
LABEL_13:
        *v8 = v9;
        v8[8] = 0;
        swift_storeEnumTagMultiPayload();
        outlined init with take of ImageFilter(v8, a2);
        return (*(v13 + 56))(a2, 0, 1, v4);
      case 2u:
        v9 = 1;
        goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1)
  {
    v13 = v5;
    v9 = 0;
    if (a1 == 1)
    {
      goto LABEL_13;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v10 = *(v5 + 56);

  return v10(a2, 1, 1, v4, v6);
}

uint64_t ImageFilter.basic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ImageFilter(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImageFilter(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = outlined destroy of ImageFilter(v6);
    v8 = 0;
    v9 = -1;
  }

  else
  {
    v8 = *v6;
    v9 = v6[8];
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t outlined init with copy of ImageFilter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageFilter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ImageFilter(uint64_t a1)
{
  v2 = type metadata accessor for ImageFilter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PaperKit::BasicImageFilter_optional __swiftcall BasicImageFilter.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance BasicImageFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
  lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance BasicImageFilter()
{
  lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
  lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance BasicImageFilter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
  lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance BasicImageFilter(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
  v3 = lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
  v4 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance BasicImageFilter(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
  v5 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

uint64_t ImageFilter.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ImageFilter(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImageFilter(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    v8 = type metadata accessor for AnyCRValue();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    outlined destroy of ImageFilter(v6);
    v11 = type metadata accessor for AnyCRValue();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t ImageFilter.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for CRValueObservableDifference();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ImageFilter(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterO_ACtMd, &_s8PaperKit11ImageFilterO_ACtMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - v17;
  v20 = &v31 + *(v19 + 56) - v17;
  outlined init with copy of ImageFilter(v4, &v31 - v17);
  outlined init with copy of ImageFilter(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1 || (outlined init with copy of ImageFilter(v18, v15), swift_getEnumCaseMultiPayload() == 1))
  {
    v21 = v32;
    (*(v10 + 56))(v32, 1, 1, v9);
    v22 = type metadata accessor for ImageFilter.ObservableDifference(0);
    (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit11ImageFilterO_ACtMd, &_s8PaperKit11ImageFilterO_ACtMR);
  }

  else
  {
    v24 = v15[8];
    v25 = *v20;
    v26 = v20[8];
    v35 = *v15;
    v36 = v24;
    v33 = v25;
    v34 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit16BasicImageFilterOGMd, &_s9Coherence12CRExtensibleOy8PaperKit16BasicImageFilterOGMR);
    lazy protocol witness table accessor for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>(&lazy protocol witness table cache variable for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>, MEMORY[0x1E69950E8]);
    lazy protocol witness table accessor for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>(&lazy protocol witness table cache variable for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>, MEMORY[0x1E69950F8]);
    CRValue<>.observableDifference(from:with:)();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
      outlined destroy of ImageFilter(v18);
      v27 = type metadata accessor for ImageFilter.ObservableDifference(0);
      return (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
    }

    else
    {
      v28 = *(v10 + 32);
      v28(v12, v8, v9);
      v29 = v32;
      v28(v32, v12, v9);
      (*(v10 + 56))(v29, 0, 1, v9);
      v30 = type metadata accessor for ImageFilter.ObservableDifference(0);
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      return outlined destroy of ImageFilter(v18);
    }
  }
}

uint64_t ImageFilter.visitReferences(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AnyCRValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageFilter(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImageFilter(v1, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
    (*(v3 + 32))(v5, &v8[*(v10 + 48)], v2);
    AnyCRValue.visitReferences(_:)();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t ImageFilter.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyCRValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageFilter(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImageFilter(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v10;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
    (*(v5 + 32))(v7, &v10[*(v13 + 48)], v4);
    *a2 = v12;
    AnyCRValue.copy(renamingReferences:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = v10[8];
    *a2 = v12;
    *(a2 + 8) = v14;
  }

  return swift_storeEnumTagMultiPayload();
}

void ImageFilter.init(from:)(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImageFilter(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  dispatch thunk of CRDecoder.valueContainer()();
  if (v2)
  {
  }

  else
  {
    v10 = dispatch thunk of CRDecoder.CRValueContainer.decodeTaggedContainer()();

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      *v6 = v10;
      AnyCRValue.init(from:)();

      swift_storeEnumTagMultiPayload();
      v11 = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit16BasicImageFilterOGMd, &_s9Coherence12CRExtensibleOy8PaperKit16BasicImageFilterOGMR);
      lazy protocol witness table accessor for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>(&lazy protocol witness table cache variable for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>, MEMORY[0x1E69950E8]);
      lazy protocol witness table accessor for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>(&lazy protocol witness table cache variable for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>, MEMORY[0x1E6995100]);
      CRValue<>.init(from:)();

      v12 = v14;
      *v9 = v13;
      v9[8] = v12;
      swift_storeEnumTagMultiPayload();
      v11 = v9;
    }

    outlined init with take of ImageFilter(v11, a2);
  }
}

void ImageFilter.encode(to:)()
{
  v2 = type metadata accessor for AnyCRValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageFilter(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CREncoder.valueContainer()();
  if (!v1)
  {
    outlined init with copy of ImageFilter(v0, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
      (*(v3 + 32))(v5, &v8[*(v9 + 48)], v2);
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v10 = v8[8];
      v11 = *v8;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit16BasicImageFilterOGMd, &_s9Coherence12CRExtensibleOy8PaperKit16BasicImageFilterOGMR);
      lazy protocol witness table accessor for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>(&lazy protocol witness table cache variable for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>, MEMORY[0x1E69950E8]);
      dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)();
      dispatch thunk of CREncoder.CRValueContainer.encode(tag:)();
    }
  }
}

uint64_t ImageFilter.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995278];
  v3 = type metadata accessor for CRCodableVersion();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance ImageFilter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnyCRValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImageFilter(v2, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR);
    (*(v4 + 32))(v6, &v9[*(v11 + 48)], v3);
    AnyCRValue.visitReferences(_:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t specialized static ImageFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCRValue();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for ImageFilter(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterO_ACtMd, &_s8PaperKit11ImageFilterO_ACtMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v20 = &v32 + *(v19 + 56) - v17;
  outlined init with copy of ImageFilter(a1, &v32 - v17);
  outlined init with copy of ImageFilter(a2, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of ImageFilter(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v15[8];
      v28 = *v20;
      v29 = v20[8];
      v38 = *v15;
      v39 = v27;
      v36 = v28;
      v37 = v29;
      lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
      v25 = static CRExtensible.== infix(_:_:)();
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  outlined init with copy of ImageFilter(v18, v12);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v35 + 8))(&v12[v21], v4);
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit11ImageFilterO_ACtMd, &_s8PaperKit11ImageFilterO_ACtMR);
LABEL_10:
    v25 = 0;
    return v25 & 1;
  }

  v22 = *v12;
  v33 = *v20;
  v34 = v22;
  v23 = v35;
  v24 = *(v35 + 32);
  v24(v9, &v12[v21], v4);
  v24(v6, &v20[v21], v4);
  if (v34 != v33)
  {
    v31 = *(v23 + 8);
    v31(v6, v4);
    v31(v9, v4);
    outlined destroy of ImageFilter(v18);
    goto LABEL_10;
  }

  v25 = static AnyCRValue.== infix(_:_:)();
  v26 = *(v23 + 8);
  v26(v6, v4);
  v26(v9, v4);
LABEL_7:
  outlined destroy of ImageFilter(v18);
  return v25 & 1;
}

uint64_t outlined init with take of ImageFilter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageFilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CRExtensible<BasicImageFilter> and conformance CRExtensible<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence12CRExtensibleOy8PaperKit16BasicImageFilterOGMd, &_s9Coherence12CRExtensibleOy8PaperKit16BasicImageFilterOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter()
{
  result = lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter;
  if (!lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter;
  if (!lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter;
  if (!lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter;
  if (!lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter;
  if (!lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicImageFilter and conformance BasicImageFilter);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ImageFilter and conformance ImageFilter(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageFilter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for ImageFilter(uint64_t a1)
{
  type metadata accessor for CRExtensible<BasicImageFilter>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (Int, AnyCRValue)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for CRExtensible<BasicImageFilter>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRExtensible<BasicImageFilter>)
  {
    lazy protocol witness table accessor for type BasicImageFilter and conformance BasicImageFilter();
    v1 = type metadata accessor for CRExtensible();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRExtensible<BasicImageFilter>);
    }
  }
}

uint64_t type metadata completion function for ImageFilter.ObservableDifference(uint64_t a1)
{
  v1 = type metadata accessor for CRValueObservableDifference();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t specialized static ImageHDRInfo.info(for:)(void *a1)
{
  v1 = a1;
  v2 = CGImageSourceCopyPropertiesAtIndex(v1, 0, 0);
  v3 = MEMORY[0x1E69E6530];
  if (v2)
  {
    v4 = v2;
    type metadata accessor for NSObject();
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, type metadata accessor for NSObject, MEMORY[0x1E69E81B8]);
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = *MEMORY[0x1E696DED8];
    if ((v5 & 0xC000000000000001) != 0)
    {

      v7 = v6;
      v8 = __CocoaDictionary.lookup(_:)();

      if (v8)
      {
        *&v48 = v8;
        if (swift_dynamicCast())
        {
          v9 = *MEMORY[0x1E696DEC8];
          v10 = __CocoaDictionary.lookup(_:)();

          if (!v10)
          {
            goto LABEL_14;
          }

          goto LABEL_6;
        }
      }

      goto LABEL_13;
    }

    if (!*(v5 + 16))
    {
LABEL_13:

      goto LABEL_14;
    }

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    if (v12)
    {
      v13 = *(*(v5 + 56) + 8 * v11);
      swift_unknownObjectRetain();

      *&v48 = v13;
      if (swift_dynamicCast())
      {
        if (*(v5 + 16))
        {
          v14 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696DEC8]);
          if (v15)
          {
            v10 = *(*(v5 + 56) + 8 * v14);
            swift_unknownObjectRetain();

LABEL_6:
            *&v48 = v10;
            swift_dynamicCast();
            goto LABEL_14;
          }
        }
      }

      goto LABEL_13;
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D40621E0;
  v17 = *MEMORY[0x1E696DFE8];
  *(inited + 32) = *MEMORY[0x1E696DFE8];
  v18 = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v19 = *MEMORY[0x1E696E0A8];
  *(inited + 64) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = 1;
  v20 = *MEMORY[0x1E696E0B8];
  *(inited + 104) = v18;
  *(inited + 112) = v20;
  *(inited + 120) = 1;
  v21 = *MEMORY[0x1E696E000];
  *(inited + 144) = v18;
  *(inited + 152) = v21;
  *(inited + 160) = 1;
  v22 = *MEMORY[0x1E696E100];
  *(inited + 184) = v18;
  *(inited + 192) = v22;
  *(inited + 224) = v3;
  *(inited + 200) = 256;
  v23 = v17;
  v24 = v19;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  v28 = *MEMORY[0x1E696E018];
  v29 = *MEMORY[0x1E696E028];
  type metadata accessor for CFStringRef(0);
  v49 = v30;
  *&v48 = v29;
  outlined init with take of Any(&v48, v47);
  v31 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v28, isUniquelyReferenced_nonNull_native);
  v33 = *MEMORY[0x1E696E020];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMR);
  v34 = swift_initStackObject();
  v35 = MEMORY[0x1E696D208];
  *(v34 + 16) = xmmword_1D4058CF0;
  v36 = *v35;
  *(v34 + 32) = v36;
  *(v34 + 40) = 1;
  v37 = v36;
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(v34);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Bool)(v34 + 32);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSbGMd, &_sSDySo11CFStringRefaSbGMR);
  *&v48 = v38;
  outlined init with take of Any(&v48, v47);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v33, v39);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v1, 0, isa);

  if (!ThumbnailAtIndex)
  {
    return 0;
  }

  v42 = CGImageGetColorSpace(ThumbnailAtIndex);
  v43 = v42;
  if (v42)
  {
    if ((MEMORY[0x1DA6CEC30](v42) & 1) != 0 || (v44 = 1.0, CGColorSpaceUsesExtendedRange(v43)))
    {
      CGImageGetContentHeadroom();
      v44 = v45;
      if (v45 == 0.0 && CGImageGetBitsPerComponent(ThumbnailAtIndex) >= 16)
      {
        v44 = 8.0;
      }
    }

    if (CGImageGetAlphaInfo(ThumbnailAtIndex) == kCGImageAlphaNoneSkipFirst || CGImageGetAlphaInfo(ThumbnailAtIndex) == kCGImageAlphaNoneSkipLast)
    {
    }

    else
    {
      CGImageGetAlphaInfo(ThumbnailAtIndex);
    }

    return *&v44;
  }

  else
  {

    return 0;
  }
}

uint64_t outlined destroy of (CFStringRef, Bool)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_SbtMd, &_sSo11CFStringRefa_SbtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double PaperDocumentPageElementView.cropBounds.getter()
{
  v1 = type metadata accessor for PaperDocumentPage(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd, &_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  Capsule.root.getter();
  (*(v5 + 8))(v7, v4);
  PaperDocumentPage.pdfContentsBounds.getter();
  v10 = v9;
  outlined destroy of PaperDocumentPage(v3);
  return v10;
}

void PaperDocumentPageElementView.cropBounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd, &_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v13 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  specialized CanvasElementView.commit()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    specialized CanvasElementView.updateFrame()();
  }

  else
  {
    [v4 transform];
    v15 = v26;
    v16 = v27;
    v18 = v25;
    v19 = v24;
    v24 = 0x3FF0000000000000uLL;
    *&v25 = 0;
    *(&v25 + 1) = 0x3FF0000000000000;
    v26 = 0;
    v27 = 0;
    [v4 setTransform_];
    v17 = (*(v10 + 16))(v12, v4 + v13, v9);
    MEMORY[0x1EEE9AC00](v17);
    *(&v18 - 4) = type metadata accessor for PaperDocumentPage(0);
    *(&v18 - 3) = lazy protocol witness table accessor for type PaperDocumentPage and conformance PaperDocumentPage();
    *(&v18 - 2) = &protocol witness table for PaperDocumentPage;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v10 + 8))(v12, v9);
    [v4 setFrame_];
    v25 = v18;
    v24 = v19;
    v26 = v15;
    v27 = v16;
    [v4 setTransform_];
  }
}

uint64_t closure #1 in PaperDocumentPageElementView.cropBounds.setter(double a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v18 - v12);
  v14 = Capsule.Ref.root.modify();
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v15 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  outlined init with copy of ContentsBounds?(v13, v10);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of ContentsBounds?(v13);
  v14(v19, 0);
  v16 = Capsule.Ref.root.modify();
  *v18 = a1;
  *&v18[1] = a2;
  *&v18[2] = a3;
  *&v18[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return v16(v19, 0);
}

id @objc PaperDocumentPageElementView.init(coder:)(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for PaperDocumentPageElementView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id PaperDocumentPageElementView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentPageElementView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PaperDocumentPageElementView(uint64_t a1)
{
  result = type metadata singleton initialization cache for PaperDocumentPageElementView;
  if (!type metadata singleton initialization cache for PaperDocumentPageElementView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaperDocumentPage and conformance PaperDocumentPage()
{
  result = lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage;
  if (!lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage)
  {
    type metadata accessor for PaperDocumentPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage);
  }

  return result;
}

uint64_t outlined init with copy of ContentsBounds?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ContentsBounds?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of PaperDocumentPage(uint64_t a1)
{
  v2 = type metadata accessor for PaperDocumentPage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TextStyles and conformance TextStyles()
{
  result = lazy protocol witness table cache variable for type TextStyles and conformance TextStyles;
  if (!lazy protocol witness table cache variable for type TextStyles and conformance TextStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextStyles and conformance TextStyles);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextStyles and conformance TextStyles;
  if (!lazy protocol witness table cache variable for type TextStyles and conformance TextStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextStyles and conformance TextStyles);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextStyles and conformance TextStyles;
  if (!lazy protocol witness table cache variable for type TextStyles and conformance TextStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextStyles and conformance TextStyles);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextStyles and conformance TextStyles;
  if (!lazy protocol witness table cache variable for type TextStyles and conformance TextStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextStyles and conformance TextStyles);
  }

  return result;
}

uint64_t PaperDocument.init<A>(url:in:assetManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMd, &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v30 - v11);
  v13 = type metadata accessor for CRAsset();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  type metadata accessor for PaperKitPDFDocument();
  static PaperKitPDFDocument._load(_:assetManager:)(a1, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMd, &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMR);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 8))(a1, v21);

    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMd, &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMR);
  }

  else
  {
    v30 = a4;
    v22 = *v12;
    (*(v14 + 32))(v19, v12 + *(v20 + 48), v13);
    (*(v14 + 16))(v16, v19, v13);
    PaperDocument.init<A>(pdfDocument:asset:in:assetManager:useProxyPages:)(v22, v16, v31, a3, 0, v9);
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 8))(a1, v23);
    (*(v14 + 8))(v19, v13);
    v24 = type metadata accessor for PaperDocument(0);
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v9, 1, v24))
    {
      v28 = v9;
      v29 = v30;
      _s8PaperKit0A8DocumentVWObTm_0(v28, v30, type metadata accessor for PaperDocument);
      return (*(v25 + 56))(v29, 0, 1, v24);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
    a4 = v30;
  }

  v26 = type metadata accessor for PaperDocument(0);
  return (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
}

double PaperDocument.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  CROrderedSet.init()();
  type metadata accessor for PaperDocument(0);
  v6 = type metadata accessor for CRAsset();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  outlined init with copy of Date?(v5, v2, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  UnknownProperties.init()();
  return result;
}

double PaperDocument.init<A>(in:)(uint64_t a1)
{
  v9[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  CROrderedSet.init()();
  type metadata accessor for PaperDocument(0);
  v7 = type metadata accessor for CRAsset();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  outlined init with copy of Date?(v6, v3, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  UnknownProperties.init()();

  return result;
}

uint64_t PaperDocument.init<A>(pdfDocument:asset:in:assetManager:useProxyPages:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v30 = a3;
  v31 = a4;
  v24 = a2;
  v25 = a1;
  v29 = a6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v28);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for PaperDocument(0);
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  CROrderedSet.init()();
  v14 = *(v11 + 20);
  v15 = type metadata accessor for CRAsset();
  v16 = *(v15 - 8);
  v23[0] = *(v16 + 56);
  (v23[0])(v10, 1, 1, v15);
  outlined init with copy of Date?(v10, v7, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v23[1] = v14;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v28 = v11;
  v17 = v24;
  UnknownProperties.init()();
  v18 = v25;
  if (PaperDocument.appendDocument<A>(_:asset:in:assetManager:useProxyPages:)(v25, v17, v30, v31, v26))
  {
    (*(v16 + 16))(v10, v17, v15);
    (v23[0])(v10, 0, 1, v15);
    outlined init with copy of Date?(v10, v7, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
    CRRegister.wrappedValue.setter();

    (*(v16 + 8))(v17, v15);
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    v19 = v29;
    _s8PaperKit0A8DocumentVWObTm_0(v13, v29, type metadata accessor for PaperDocument);
    v20 = 0;
    v21 = v19;
  }

  else
  {

    (*(v16 + 8))(v17, v15);
    outlined destroy of PaperDocument.Partial(v13, type metadata accessor for PaperDocument);
    v20 = 1;
    v21 = v29;
  }

  return (*(v27 + 56))(v21, v20, 1, v28);
}

uint64_t PaperDocument.export<A>(_:in:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = a1;
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  *v11 = v5;
  v11[1] = PaperDocument.export<A>(_:in:options:);

  return PaperDocument.newPDFDocument<A>(use:in:options:)((v5 + 16), a2, a3, a4, a5);
}

uint64_t PaperDocument.export<A>(_:in:options:)(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;

  outlined consume of PaperDocument.PDFDocumentUse(*(v3 + 16));
  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t PaperDocument.pdf.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  type metadata accessor for PaperDocument(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
}

uint64_t PaperDocument.exportNonMergable<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](PaperDocument.exportNonMergable<A>(_:in:), 0, 0);
}

uint64_t PaperDocument.exportNonMergable<A>(_:in:)()
{
  v1 = *(v0 + 152);
  *(v0 + 144) = v1 | 0x4000000000000000;
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = PaperDocument.exportNonMergable<A>(_:in:);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);

  return PaperDocument.newPDFDocument<A>(use:in:options:)((v0 + 144), v5, v0 + 16, v6, v4);
}

uint64_t PaperDocument.exportNonMergable<A>(_:in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  outlined destroy of StocksKitCurrencyCache.Provider?(v3 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
  outlined consume of PaperDocument.PDFDocumentUse(*(v3 + 144));
  v5 = *(v4 + 8);

  return v5(a1);
}

uint64_t PaperDocument.pages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PaperDocument.pages.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void (*PaperDocument.pdf.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PaperDocument(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PaperDocument.pdf.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PaperDocument(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  return a1(v2);
}

uint64_t key path getter for PaperDocument.$pdf : PaperDocument()
{
  type metadata accessor for PaperDocument(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PaperDocument.$pdf : PaperDocument(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PaperDocument.$pdf.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*PaperDocument.$pdf.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PaperDocument(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

BOOL PaperDocument.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for PaperDocument.Partial(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PaperDocument.Partial(v2, v23, type metadata accessor for PaperDocument.Partial);
  v51 = a1;
  v24 = PaperDocument.Partial.canMerge(delta:)(a1);
  outlined destroy of PaperDocument.Partial(v23, type metadata accessor for PaperDocument.Partial);
  if (v24)
  {
    v45 = v24;
    v46 = v11;
    v44 = v6;
    outlined init with copy of Date?(v2, v20, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    v25 = v2;
    v43 = v13;
    v26 = *(v13 + 48);
    v27 = v26(v20, 1, v12);
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    if (v27 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v51, v25, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    }

    else
    {
      outlined init with copy of Date?(v51, v17, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
      if (v26(v17, 1, v12) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
      }

      else
      {
        v28 = v43;
        v29 = v47;
        (*(v43 + 32))(v47, v17, v12);
        if (!v26(v25, 1, v12))
        {
          CROrderedSet.MergeableDelta.merge(delta:)();
        }

        (*(v28 + 8))(v29, v12);
      }
    }

    v30 = v50;
    v31 = *(v21 + 20);
    v32 = v46;
    outlined init with copy of Date?(v25 + v31, v46, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
    v33 = v49;
    v34 = *(v49 + 48);
    LODWORD(v30) = v34(v32, 1, v30);
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
    v35 = *(v21 + 20);
    if (v30 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v51 + v35, v25 + v31, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
      LOBYTE(v24) = v45;
    }

    else
    {
      v36 = v48;
      outlined init with copy of Date?(v51 + v35, v48, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
      v37 = v34(v36, 1, v50);
      LOBYTE(v24) = v45;
      if (v37 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
      }

      else
      {
        v38 = v44;
        v39 = v36;
        v40 = v50;
        (*(v33 + 32))(v44, v39, v50);
        if (!v34(v25 + v31, 1, v40))
        {
          CRRegister.merge(delta:)();
        }

        (*(v33 + 8))(v38, v40);
      }
    }
  }

  return v24;
}

BOOL PaperDocument.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v32 = a1;
  outlined init with copy of Date?(a1, v14, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    v11 = v14;
    v20 = v7;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    outlined init with copy of Date?(v33, v11, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    v20 = v7;
    if (v19(v11, 1, v15) != 1)
    {
      v26 = CROrderedSet.MergeableDelta.canMerge(delta:)();
      v27 = *(v16 + 8);
      v27(v18, v15);
      v27(v11, v15);
      v22 = v34;
      v21 = v35;
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

    (*(v16 + 8))(v18, v15);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  v22 = v34;
  v21 = v35;
LABEL_6:
  v23 = type metadata accessor for PaperDocument.Partial(0);
  outlined init with copy of Date?(v32 + *(v23 + 20), v6, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  v24 = *(v21 + 48);
  if (v24(v6, 1, v20) == 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
    return 1;
  }

  (*(v21 + 32))(v22, v6, v20);
  v6 = v31;
  outlined init with copy of Date?(v33 + *(v23 + 20), v31, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  if (v24(v6, 1, v20) == 1)
  {
    (*(v21 + 8))(v22, v20);
    goto LABEL_9;
  }

  v28 = CRRegister.canMerge(delta:)();
  v29 = *(v21 + 8);
  v29(v22, v20);
  v29(v6, v20);
  return (v28 & 1) != 0;
}

uint64_t PaperDocument.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  outlined init with copy of Date?(v2, &v15 - v7, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMR);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  }

  else
  {
    CROrderedSet.MergeableDelta.visitReferences(_:)();
    (*(v10 + 8))(v8, v9);
  }

  v11 = type metadata accessor for PaperDocument.Partial(0);
  outlined init with copy of Date?(v2 + *(v11 + 20), v5, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v13 + 8))(v5, v12);
}

double PaperDocument.Partial.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(a2, 1, 1, v8);
  v12 = *(type metadata accessor for PaperDocument.Partial(0) + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v35 = a2;
  v15(a2 + v12, 1, 1, v13);
  v17 = v36;
  dispatch thunk of CRDecoder.keyedContainer()();
  v36 = v17;
  if (v17)
  {

    v18 = v35;
  }

  else
  {
    v28 = v11;
    v29 = v8;
    v30 = v10;
    v31 = v12;
    v20 = v34;
    v26 = v16;
    v27 = v15;
    v32 = a1;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
      v21 = v36;
      CROrderedSet.MergeableDelta.init(from:)();
      v18 = v35;
      if (v21)
      {

        goto LABEL_3;
      }

      v36 = 0;
      v30(v20, 0, 1, v29);
      outlined assign with take of UUID?(v20, v18, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    }

    else
    {
      v18 = v35;
    }

    v22 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v23 = v33;
    v24 = v31;
    if (!v22)
    {

      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
    v25 = v36;
    CRRegister.init(from:)();

    if (!v25)
    {
      v27(v23, 0, 1, v13);
      outlined assign with take of UUID?(v23, v18 + v24, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
      return result;
    }
  }

LABEL_3:
  outlined destroy of PaperDocument.Partial(v18, type metadata accessor for PaperDocument.Partial);
  return result;
}

double PaperDocument.Partial.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v22 = v3;
    v23 = v6;
    v15 = v25;
    outlined init with copy of Date?(v25, v9, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.MergeableDelta and conformance CROrderedSet<A>.MergeableDelta, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMR, MEMORY[0x1E6995110]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v11 + 8))(v13, v10);
    }

    v16 = type metadata accessor for PaperDocument.Partial(0);
    v17 = v22;
    outlined init with copy of Date?(v15 + *(v16 + 20), v22, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
    v18 = v24;
    v19 = (*(v24 + 48))(v17, 1, v4);
    v20 = v23;
    if (v19 == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
    }

    else
    {
      (*(v18 + 32))(v23, v17, v4);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAsset?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v18 + 8))(v20, v4);
    }
  }

  return result;
}

uint64_t PaperDocument.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UnknownProperties();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  outlined init with copy of PaperDocument.Partial(v2, a2, type metadata accessor for PaperDocument);
  CROrderedSet.copy(renamingReferences:)();
  (*(v13 + 40))(a2, v15, v12);
  v16 = type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v17 = v21;
  v18 = *(v21 + 8);
  v18(v8, v6);
  (*(v17 + 16))(v8, v11, v6);
  CRRegister.projectedValue.setter();
  v18(v11, v6);
  v19 = v22;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v23 + 40))(a2 + *(v16 + 24), v19, v24);
}

uint64_t PaperDocument.observableDifference(from:with:)@<X0>(uint64_t a3@<X8>)
{
  v24 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.observableDifference(from:with:)();
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMR);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1 && (v18 = type metadata accessor for CRValueObservableDifference(), (*(*(v18 - 8) + 48))(v12, 1, v18) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    v19 = type metadata accessor for PaperDocument.ObservableDifference(0);
    (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  }

  else
  {
    v20 = v24;
    outlined init with copy of Date?(v15, v24, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    v21 = type metadata accessor for PaperDocument.ObservableDifference(0);
    outlined init with copy of Date?(v12, v20 + *(v21 + 20), &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMR);
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance PaperDocument(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.visitReferences(_:)();
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v2 + 8))(v4, v1);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PaperDocument.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.visitReferences(_:)();
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v2 + 8))(v4, v1);
  return UnknownProperties.visitReferences(_:)();
}

BOOL protocol witness for CRType.needToFinalizeTimestamps() in conformance PaperDocument()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v5 = CROrderedSet.needToFinalizeTimestamps()() || (CRRegister.projectedValue.getter(), v4 = CRRegister.needToFinalizeTimestamps()(), (*(v1 + 8))(v3, v0), v4) || UnknownProperties.needToFinalizeTimestamps()();
  return v5;
}

Swift::Bool __swiftcall PaperDocument.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v5 = CROrderedSet.needToFinalizeTimestamps()() || (type metadata accessor for PaperDocument(0), CRRegister.projectedValue.getter(), v4 = CRRegister.needToFinalizeTimestamps()(), (*(v1 + 8))(v3, v0), v4) || UnknownProperties.needToFinalizeTimestamps()();
  return v5;
}

uint64_t protocol witness for CRType.finalizeTimestamps(_:) in conformance PaperDocument(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.finalizeTimestamps(_:)();
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v3 + 16))(v5, v8, v2);
  CRRegister.projectedValue.setter();
  (*(v3 + 8))(v8, v2);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t PaperDocument.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.finalizeTimestamps(_:)();
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v3 + 16))(v5, v8, v2);
  CRRegister.projectedValue.setter();
  (*(v3 + 8))(v8, v2);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t PaperDocument.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v3 = type metadata accessor for UnknownProperties();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = (&v70 - v6);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v70 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v86 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v85 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v90 = (&v70 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v20 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  v21 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  v87 = v19;
  v88 = v21;
  v89 = v20;
  CROrderedSet.init()();
  v22 = type metadata accessor for PaperDocument(0);
  v23 = *(v22 + 20);
  v24 = type metadata accessor for CRAsset();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  outlined init with copy of Date?(v18, v15, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v25 = lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v84 = v23;
  v26 = a2;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v27 = *(v22 + 24);
  UnknownProperties.init()();
  v28 = v92;
  v29 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v28)
  {

    return outlined destroy of PaperDocument.Partial(v26, type metadata accessor for PaperDocument);
  }

  else
  {
    v72 = v25;
    v73 = a2;
    v31 = v90;
    v71 = v27;
    v32 = v91;
    v92 = v29;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v33 = v31;
      CROrderedSet.init(from:)();
      v34 = v73;
      (*(v80 + 40))(v73, v33, v81);
    }

    else
    {
      v34 = v73;
    }

    v35 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v36 = v32;
    v38 = v85;
    v37 = v86;
    v39 = v84;
    if (v35)
    {
      CRRegister.init(from:)();
      (*(v37 + 40))(v34 + v39, v38, v36);
    }

    v40 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v40);

    v95 = v41;
    specialized Set._Variant.remove(_:)(0x7365676170, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(6710384, 0xE300000000000000);

    v42 = v95 + 56;
    v43 = 1 << *(v95 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v95 + 56);
    v46 = (v43 + 63) >> 6;
    v47 = (v79 + 56);
    v91 = v95;

    v48 = 0;
    v90 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v49 = v48;
      if (!v45)
      {
        break;
      }

LABEL_16:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = (*(v91 + 48) + ((v48 << 10) | (16 * v50)));
      v53 = *v51;
      v52 = v51[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v55 = v82;
        v89 = *(v83 + 48);
        *v82 = v53;
        v55[1] = v52;

        AnyCRDT.init(from:)();

        (*v47)(v55, 0, 1, v83);
        v56 = v55;
        v57 = v74;
        outlined init with take of Range<AttributedString.Index>(v56, v74, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        outlined init with take of Range<AttributedString.Index>(v57, v75, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
        }

        v58 = v79;
        v60 = v90[2];
        v59 = v90[3];
        v61 = v75;
        if (v60 >= v59 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v90);
          v58 = v79;
          v90 = v63;
          v61 = v75;
        }

        v62 = v90;
        v90[2] = v60 + 1;
        outlined init with take of Range<AttributedString.Index>(v61, v62 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v60, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      }

      else
      {

        v54 = v82;
        (*v47)(v82, 1, 1, v83);
        outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
      }
    }

    while (1)
    {
      v48 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        v26 = v73;
        return outlined destroy of PaperDocument.Partial(v26, type metadata accessor for PaperDocument);
      }

      if (v48 >= v46)
      {
        break;
      }

      v45 = *(v42 + 8 * v48);
      ++v49;
      if (v45)
      {
        goto LABEL_16;
      }
    }

    v64 = v90;
    if (v90[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
      v65 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v65 = MEMORY[0x1E69E7CC8];
    }

    v66 = v73;
    v68 = v77;
    v67 = v78;
    v69 = v76;
    v94 = v65;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v64, 1, &v94);
    UnknownProperties.init(_:)();

    return (*(v68 + 40))(v66 + v71, v69, v67);
  }
}

void PaperDocument.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v5 - v3;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995138]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    type metadata accessor for PaperDocument(0);
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAsset?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v2 + 8))(v4, v1);
    UnknownProperties.encode(to:)();
  }
}

uint64_t PaperDocument.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = v40 - v3;
  v4 = type metadata accessor for CRCodableVersion();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v40 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v48 = v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v40 - v16;
  v42 = type metadata accessor for PaperDocument(0);
  v49 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v18 = *MEMORY[0x1E6995288];
  v19 = *MEMORY[0x1E6995288];
  v47 = *(v5 + 104);
  v47(v14, v19, v4);
  v20 = static CRCodableVersion.== infix(_:_:)();
  v21 = *(v5 + 8);
  v21(v14, v4);
  if (v20)
  {
    return (*(v5 + 32))(v50, v17, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.minEncodingVersion.getter();
  v40[1] = lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v23 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v24 = (v23 & 1) == 0;
  if (v23)
  {
    v25 = v17;
  }

  else
  {
    v25 = v9;
  }

  if (v24)
  {
    v26 = v17;
  }

  else
  {
    v26 = v9;
  }

  v21(v25, v4);
  v41 = v18;
  v27 = *(v5 + 32);
  v28 = v48;
  v27(v48, v26, v4);
  v29 = v28;
  v30 = v27;
  v27(v17, v29, v4);
  v47(v14, v41, v4);
  v31 = static CRCodableVersion.== infix(_:_:)();
  v21(v14, v4);
  if (v31)
  {
    v32 = v50;
LABEL_14:
    v39 = v17;
    return v30(v32, v39, v4);
  }

  v33 = v21;
  v34 = v44;
  v35 = v46;
  CRRegister.projectedValue.getter();
  v36 = v43;
  CRRegister.minEncodingVersion.getter();
  (*(v45 + 8))(v34, v35);
  v37 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v38 = v50;
  if ((v37 & 1) == 0)
  {
    v33(v36, v4);
    v32 = v38;
    goto LABEL_14;
  }

  v33(v17, v4);
  v32 = v38;
  v39 = v36;
  return v30(v32, v39, v4);
}

uint64_t PaperDocument.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnknownProperties();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v36 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  v14 = a1;
  CROrderedSet.init()();
  v15 = type metadata accessor for PaperDocument(0);
  v16 = *(v15 + 20);
  v17 = type metadata accessor for CRAsset();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  outlined init with copy of Date?(v13, v10, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  v18 = v14;
  v29 = v8;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v19 = *(v15 + 24);
  v20 = v38;
  UnknownProperties.init()();
  v21 = v39;
  CROrderedSet.init(defaultState:)();
  if (v21)
  {
    return outlined destroy of PaperDocument.Partial(v14, type metadata accessor for PaperDocument);
  }

  v23 = v32;
  v22 = v33;
  v24 = v34;
  (*(v30 + 40))(v18, v20, v31);
  v25 = v35;
  CRRegister.init(defaultState:)();
  (*(v23 + 40))(v18 + v16, v25, v22);
  UnknownProperties.init(defaultState:)();
  return (*(v27 + 40))(v18 + v19, v24, v28);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PaperDocument()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR), (CROrderedSet.isDefaultState.getter()))
  {
    CRRegister.projectedValue.getter();
    v4 = CRRegister.isDefaultState.getter();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t PaperDocument.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  type metadata accessor for PaperDocument(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR), (CROrderedSet.isDefaultState.getter()))
  {
    CRRegister.projectedValue.getter();
    v4 = CRRegister.isDefaultState.getter();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t PaperDocument.init<A>(data:in:assetManager:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a3;
  v36 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMd, &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for CRAsset();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  type metadata accessor for PaperKitPDFDocument();
  v20 = a1;
  v21 = a1;
  v22 = a2;
  static PaperKitPDFDocument._load(_:assetManager:)(v21, a2, v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMd, &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMR);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {

    outlined consume of Data._Representation(v20, a2);
    v24 = &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMd;
    v25 = &_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtSgMR;
  }

  else
  {
    v26 = *v12;
    (*(v14 + 32))(v19, &v12[*(v23 + 48)], v13);
    (*(v14 + 16))(v16, v19, v13);

    v12 = v34;
    PaperDocument.init<A>(pdfDocument:asset:in:assetManager:useProxyPages:)(v26, v16, v35, a4, 0, v34);
    outlined consume of Data._Representation(v20, v22);

    (*(v14 + 8))(v19, v13);
    v27 = type metadata accessor for PaperDocument(0);
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v12, 1, v27))
    {
      v32 = v36;
      _s8PaperKit0A8DocumentVWObTm_0(v12, v36, type metadata accessor for PaperDocument);
      return (*(v28 + 56))(v32, 0, 1, v27);
    }

    v24 = &_s8PaperKit0A8DocumentVSgMd;
    v25 = &_s8PaperKit0A8DocumentVSgMR;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, v24, v25);
  v29 = v36;
  v30 = type metadata accessor for PaperDocument(0);
  return (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
}

uint64_t PaperDocument.appendDocument<A>(_:asset:in:assetManager:useProxyPages:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = [a1 isLocked];
  if (v10)
  {
    if (one-time initialization token for shared != -1)
    {
      v10 = swift_once();
    }

    v11 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v10);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v11 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v16);
    os_unfair_lock_unlock(v11 + 4);
    if (!*(&v16 + 1))
    {
      return 0;
    }

    v13 = MEMORY[0x1DA6CCED0](v16, *(&v16 + 1));

    v14 = [a1 unlockWithPassword_];

    if (!v14)
    {
      return 0;
    }
  }

  PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)(a1, a2, a3, a4, a5 & 1);
  return 1;
}

void PaperDocument.pageSizeForInserting<A>(at:in:)(uint64_t a1)
{
  PaperDocument.pageGeometryForInserting<A>(at:in:)(a1, &v3.a);
  v1 = *&v3.a;
  v2 = *&v3.c;
  CGAffineTransformMakeRotation(&v3, v3.tx);
  v4.origin = v1;
  v4.size = v2;
  CGRectApplyAffineTransform(v4, &v3);
}

uint64_t PaperDocument.pageGeometryForInserting<A>(at:in:)@<X0>(uint64_t a1@<X0>, double *a5@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  if (a1 < 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
    result = CROrderedSet.count.getter();
    if (a1 + 1 >= result)
    {
      v14 = 0.0;
      v20 = 0x4088C00000000000;
      v18 = 0x4083200000000000;
      v16 = 0;
      v24 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  }

  CROrderedSet.subscript.getter();
  SharedTagged_3.subscript.getter();
  (*(v8 + 8))(v10, v7);
  v12 = v28;
  v13 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v14 = (*(v13 + 56))(v12, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v28;
  v22 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v23 = (*(v22 + 64))(v21, v22);
  if ((v23 - 1) < 8)
  {
    v24 = qword_1D406EEF8[v23 - 1];
    result = __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_6:
    *a5 = v14;
    *(a5 + 1) = v16;
    *(a5 + 2) = v18;
    *(a5 + 3) = v20;
    *(a5 + 4) = v24;
    return result;
  }

  v25 = v23;
  type metadata accessor for CGImagePropertyOrientation(0);
  v26[1] = v25;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id PaperDocument.create<A>(page:fromDocument:asset:in:assetManager:useProxyPages:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v91) = a6;
  v70 = a5;
  v87 = a4;
  v90 = a3;
  v92 = a2;
  v9 = type metadata accessor for CRKeyPath();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v81 = &v69 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit0C12DocumentPageVGMd, &_s9Coherence3RefVy8PaperKit0C12DocumentPageVGMR);
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v69 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v69 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v72);
  v77 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v71);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v26 = type metadata accessor for PaperDocumentPage(0);
  MEMORY[0x1EEE9AC00](v26);
  v78 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v88 = *(v31 - 8);
  v89 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v86 = &v69 - v32;
  v33 = type metadata accessor for PDFPageID(0);
  v73 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v36 + 20);
  v38 = type metadata accessor for CRAsset();
  (*(*(v38 - 8) + 16))(&v35[v37], v90, v38);
  v90 = v35;
  *v35 = a1;
  if ((v91 & 1) == 0)
  {
    v63 = [v92 pageAtIndex_];
    if (v63)
    {
      v64 = v63;
      type metadata accessor for PaperKitPDFPage(0);
      if (swift_dynamicCastClass())
      {
        v62 = v86;
        v65 = v90;
        PaperKitPDFPage.decodePaperPage<A>(pageID:in:assetManager:)(v90, v87, v70, v86);

        outlined destroy of PaperDocument.Partial(v65, type metadata accessor for PDFPageID);
        goto LABEL_8;
      }
    }

    outlined destroy of PaperDocument.Partial(v90, type metadata accessor for PDFPageID);
    v68 = 1;
    v67 = v88;
    v66 = v89;
    return (*(v67 + 56))(a7, v68, 1, v66);
  }

  v39 = v92;
  result = [v92 pageAtIndex_];
  if (result)
  {
    v41 = result;
    v91 = v33;
    v70 = a7;
    v69 = [result rotation];

    result = [v39 pageAtIndex_];
    if (result)
    {
      v42 = result;
      [result boundsForBox_];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      type metadata accessor for CGRect(0);
      lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      v93 = 0u;
      v94 = 0u;
      CRRegister.init(wrappedValue:)();
      v93 = 0u;
      v94 = 0u;
      CRRegister.init(wrappedValue:)();
      v51 = type metadata accessor for ContentsBounds(0);
      (*(*(v51 - 8) + 56))(v25, 1, 1, v51);
      outlined init with copy of Date?(v25, v22, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      v92 = v26[7];
      LODWORD(v93) = 1;
      type metadata accessor for CGImagePropertyOrientation(0);
      lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
      CRRegister.init(wrappedValue:)();
      v71 = v26[8];
      v73 = *(v73 + 56);
      (v73)(v20, 1, 1, v91);
      v52 = v77;
      outlined init with copy of Date?(v20, v77, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
      v54 = v74;
      (*(*(v53 - 8) + 56))(v74, 1, 1, v53);
      outlined init with copy of Date?(v54, v75, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      v76 = v26[10];
      *&v93 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
      CROrderedSet.init()();
      *&v93 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
      lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      v95.origin.x = v44;
      v95.origin.y = v46;
      v95.size.width = v48;
      v95.size.height = v50;
      v96.origin.x = v44;
      v96.origin.y = v46;
      v96.size.width = v48;
      v96.size.height = v50;
      PaperDocumentPage.setContentsBounds(_:fullBounds:)(v95, v96);
      v55 = v90;
      outlined init with copy of PaperDocument.Partial(v90, v20, type metadata accessor for PDFPageID);
      (v73)(v20, 0, 1, v91);
      outlined init with copy of Date?(v20, v52, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      LODWORD(v93) = specialized CGImagePropertyOrientation.init(rotationAngle:)(v69 / 180.0 * 3.14159265);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.setter();
      *&v93 = 32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
      CRRegister.wrappedValue.setter();
      LOBYTE(v93) = 2;
      v56 = v78;
      outlined init with copy of PaperDocument.Partial(v30, v78, type metadata accessor for PaperDocumentPage);
      v57 = v81;
      (*(v83 + 56))(v81, 1, 1, v84);
      v58 = lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage, &protocol conformance descriptor for PaperDocumentPage);

      v60 = v79;
      MEMORY[0x1DA6CC020](v59, v56, v57, v26, v58);
      v61 = v82;
      Ref.id.getter();
      (*(v80 + 8))(v60, v61);
      lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
      v62 = v86;
      SharedTagged_3.init(_:id:)();
      outlined destroy of PaperDocument.Partial(v30, type metadata accessor for PaperDocumentPage);
      outlined destroy of PaperDocument.Partial(v55, type metadata accessor for PDFPageID);
      a7 = v70;
LABEL_8:
      v67 = v88;
      v66 = v89;
      (*(v88 + 32))(a7, v62, v89);
      v68 = 0;
      return (*(v67 + 56))(a7, v68, 1, v66);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PaperDocument.newPDFDocument<A>(use:in:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[40] = a5;
  v6[41] = v5;
  v6[38] = a3;
  v6[39] = a4;
  v6[37] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMR);
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMR);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v6[47] = v9;
  v6[48] = *(v9 - 8);
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVy9Coherence12CROrderedSetVyAC14SharedTagged_3Vy8PaperKit0gH4PageVGGGMd, &_ss18EnumeratedSequenceVy9Coherence12CROrderedSetVyAC14SharedTagged_3Vy8PaperKit0gH4PageVGGGMR);
  v6[50] = swift_task_alloc();
  v6[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMR);
  v6[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v10 = type metadata accessor for PageId(0);
  v6[59] = v10;
  v6[60] = *(v10 - 8);
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v11 = type metadata accessor for PDFPageID(0);
  v6[64] = v11;
  v6[65] = *(v11 - 8);
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v6[78] = v12;
  v6[79] = *(v12 - 8);
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v6[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMR);
  v6[88] = v13;
  v6[89] = *(v13 - 8);
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v14 = type metadata accessor for CRAsset();
  v6[95] = v14;
  v6[96] = *(v14 - 8);
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  v6[104] = *a1;

  return MEMORY[0x1EEE6DFA0](PaperDocument.newPDFDocument<A>(use:in:options:), 0, 0);
}

uint64_t PaperDocument.newPDFDocument<A>(use:in:options:)()
{
  v287 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = swift_allocObject();
  *(v0 + 840) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = swift_allocObject();
  *(v0 + 848) = v6;
  *(v6 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_SiTt0g5Tf4g_n(v5);
  *(v0 + 1032) = *(type metadata accessor for PaperDocument(0) + 20);
  *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  CRRegister.wrappedValue.getter();
  v7 = *(v1 + 48);
  *(v0 + 864) = v7;
  *(v0 + 872) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v3, 1, v2) != 1)
  {
    (*(*(v0 + 768) + 32))(*(v0 + 824), *(v0 + 752), *(v0 + 760));
    v26 = swift_task_alloc();
    *(v0 + 880) = v26;
    *v26 = v0;
    v26[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
    v27 = *(v0 + 824);
    v28 = v4;
    v29 = v6;
LABEL_10:

    return loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)(v27, v28, v29);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 752), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v8 = *(v0 + 696);
  v9 = *(v0 + 632);
  v10 = *(v0 + 624);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  v12 = *(v9 + 48);
  v11 = v9 + 48;
  *(v0 + 896) = v12;
  if (v12(v8, 1, v10) != 1)
  {
    *(v0 + 904) = *(*(v0 + 632) + 32);
    do
    {
      v40 = *(v0 + 616);
      v41 = *(v0 + 520);
      v42 = *(v0 + 512);
      (*(v0 + 904))(*(v0 + 672), *(v0 + 696), *(v0 + 624));
      SharedTagged_3.subscript.getter();
      v43 = *(v0 + 120);
      v44 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v43);
      (*(v44 + 112))(v43, v44);
      if ((*(v41 + 48))(v40, 1, v42) == 1)
      {
        v31 = *(v0 + 768);
        v32 = *(v0 + 760);
        v33 = *(v0 + 744);
        v34 = *(v0 + 616);
        (*(*(v0 + 632) + 8))(*(v0 + 672), *(v0 + 624));
        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
        outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        (*(v31 + 56))(v33, 1, 1, v32);
      }

      else
      {
        v45 = *(v0 + 864);
        v46 = *(v0 + 768);
        v47 = *(v0 + 760);
        v48 = *(v0 + 744);
        v49 = *(v0 + 616);
        (*(v46 + 16))(v48, v49 + *(*(v0 + 512) + 20), v47);
        outlined destroy of PaperDocument.Partial(v49, type metadata accessor for PDFPageID);
        (*(v46 + 56))(v48, 0, 1, v47);
        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
        if (v45(v48, 1, v47) != 1)
        {
          (*(*(v0 + 768) + 32))(*(v0 + 816), *(v0 + 744), *(v0 + 760));
          v58 = swift_task_alloc();
          *(v0 + 912) = v58;
          *v58 = v0;
          v58[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
          v29 = *(v0 + 848);
          v28 = *(v0 + 840);
          v27 = *(v0 + 816);
          goto LABEL_10;
        }

        (*(*(v0 + 632) + 8))(*(v0 + 672), *(v0 + 624));
      }

      v35 = *(v0 + 896);
      v36 = *(v0 + 696);
      v37 = *(v0 + 624);
      v38 = *(v0 + 632) + 48;
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 744), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      CROrderedSet.Iterator.next()();
      v39 = v37;
      v11 = v38;
    }

    while (v35(v36, 1, v39) != 1);
  }

  *(v0 + 928) = v11 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = *(v0 + 864);
  v14 = *(v0 + 760);
  v15 = *(v0 + 736);
  v264 = *(*(v0 + 712) + 8);
  v264(*(v0 + 728), *(v0 + 704));
  CRRegister.wrappedValue.getter();
  if (v13(v15, 1, v14) != 1)
  {
    v50 = *(v0 + 840);
    (*(*(v0 + 768) + 32))(*(v0 + 808), *(v0 + 736), *(v0 + 760));
    swift_beginAccess();
    v51 = *(v50 + 16);
    if (*(v51 + 16))
    {
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 808));
      if (v53)
      {
        v54 = *(v0 + 808);
        v55 = *(v0 + 768);
        v56 = *(v0 + 760);
        v57 = *(*(v51 + 56) + 8 * v52);
        goto LABEL_41;
      }
    }

    goto LABEL_132;
  }

  v16 = *(v0 + 848);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 736), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  swift_beginAccess();
  v17 = *(v16 + 16);
  v18 = v17 + 64;
  v19 = -1 << *(v17 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v281 = *(v16 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = __clz(__rbit64(v21));
    v24 = (v21 - 1) & v21;
    v25 = (63 - v19) >> 6;
  }

  else
  {
    v59 = 0;
    v25 = (63 - v19) >> 6;
    do
    {
      if (v25 - 1 == v59)
      {
        v87 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];
        goto LABEL_42;
      }

      v22 = v59 + 1;
      v60 = *(v17 + 72 + 8 * v59);
      v21 -= 64;
      ++v59;
    }

    while (!v60);
    v24 = (v60 - 1) & v60;
    v23 = __clz(__rbit64(v60)) - v21;
  }

  v61 = *(v0 + 768);
  v62 = *(v0 + 584);
  v63 = *(v0 + 576);
  v64 = *(v0 + 552);
  v271 = *(v61 + 72);
  v273 = *(v61 + 16);
  v273(v63, *(v281 + 48) + v271 * v23, *(v0 + 760));
  v275 = v64;
  *(v63 + *(v64 + 48)) = *(*(v281 + 56) + 8 * v23);
  v65 = &_s9Coherence7CRAssetV3key_Si5valuetMd;
  outlined init with take of Range<AttributedString.Index>(v63, v62, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);

  v280 = v18;
LABEL_30:
  if (v24)
  {
    v66 = v65;
    v67 = v22;
    goto LABEL_36;
  }

  while (1)
  {
    v67 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    if (v67 >= v25)
    {
      break;
    }

    v24 = *(v18 + 8 * v67);
    ++v22;
    if (v24)
    {
      v66 = v65;
LABEL_36:
      v68 = *(v0 + 584);
      v69 = *(v0 + 568);
      v70 = *(v0 + 560);
      v71 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v72 = v71 | (v67 << 6);
      v273(v70, *(v281 + 48) + v72 * v271, *(v0 + 760));
      *(v70 + *(v275 + 48)) = *(*(v281 + 56) + 8 * v72);
      v65 = v66;
      outlined init with take of Range<AttributedString.Index>(v70, v69, v66, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      if (*(v68 + *(v275 + 48)) >= *(v69 + *(v275 + 48)))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 568), v66, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      }

      else
      {
        v73 = *(v0 + 584);
        v74 = *(v0 + 568);
        outlined destroy of StocksKitCurrencyCache.Provider?(v73, v66, &_s9Coherence7CRAssetV3key_Si5valuetMR);
        outlined init with take of Range<AttributedString.Index>(v74, v73, v66, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      }

      v22 = v67;
      v18 = v280;
      goto LABEL_30;
    }
  }

  v75 = *(v0 + 840);
  v76 = *(v0 + 800);
  v77 = *(v0 + 792);
  v78 = *(v0 + 768);
  v79 = *(v0 + 760);
  v80 = *(v0 + 592);
  v81 = *(v0 + 584);

  outlined init with take of Range<AttributedString.Index>(v81, v80, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
  v82 = *(v78 + 32);
  v82(v77, v80, v79);
  v82(v76, v77, v79);
  swift_beginAccess();
  v83 = *(v75 + 16);
  if (!*(v83 + 16) || (v84 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 800)), (v85 & 1) == 0))
  {
LABEL_133:
    v170 = swift_endAccess();
    __break(1u);
LABEL_134:
    __break(1u);
    return MEMORY[0x1EEDF52A8](v170, v171, v172, v173, v174);
  }

  v54 = *(v0 + 800);
  v55 = *(v0 + 768);
  v56 = *(v0 + 760);
  v57 = *(*(v83 + 56) + 8 * v84);
LABEL_41:
  swift_endAccess();
  v86 = *(v55 + 8);
  v87 = v57;
  v86(v54, v56);
LABEL_42:
  *(v0 + 936) = v87;
  v88 = v87;
  v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v90 = [v88 pageCount];

  if ((v90 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    swift_endAccess();
    __break(1u);
    goto LABEL_133;
  }

  v272 = v88;
  if (!v90)
  {
    goto LABEL_71;
  }

  v91 = 0;
  v282 = (*(v0 + 480) + 48);
  v92 = *(v0 + 520);
  v265 = (v92 + 56);
  v267 = *(v0 + 472);
  v262 = v92;
  v276 = v90;
  v278 = (v92 + 48);
  do
  {
    v269 = v89;
    v93 = v91;
    while (1)
    {
      if (v93 >= v90)
      {
        goto LABEL_122;
      }

      v91 = (v93 + 1);
      if (__OFADD__(v93, 1))
      {
        goto LABEL_123;
      }

      if (one-time initialization token for lock != -1)
      {
        swift_once();
      }

      v94 = static PaperKitPDFDocument.lock;
      v95 = swift_task_alloc();
      *(v95 + 16) = v88;
      *(v95 + 24) = v93;
      v96 = swift_task_alloc();
      *(v96 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
      *(v96 + 24) = v95;
      os_unfair_lock_lock(v94 + 4);
      closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v97);
      v98 = *(v0 + 464);
      v99 = *(v0 + 472);
      os_unfair_lock_unlock(v94 + 4);

      v100 = *v282;
      if ((*v282)(v98, 1, v99) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 464), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        v101 = [v88 pageAtIndex_];
        if (!v101)
        {
          goto LABEL_131;
        }

        v102 = v101;
        v103 = *(v0 + 472);
        v104 = *(v0 + 456);
        type metadata accessor for PaperKitPDFPage(0);
        v105 = swift_dynamicCastClassUnconditional();
        v106 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        swift_beginAccess();
        outlined init with copy of Date?(v105 + v106, v104, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

        if (v100(v104, 1, v103) == 1)
        {
          v107 = *(v0 + 504);
          v108 = *(v0 + 512);
          outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 456), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
          (*v265)(v107, 1, 1, v108);
          v109 = *(v267 + 20);
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
          (*(*(v110 - 8) + 56))(v107 + v109, 1, 1, v110);
        }

        else
        {
          _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 456), *(v0 + 504), type metadata accessor for PageId);
        }

        v88 = v272;
        v91 = (v93 + 1);
      }

      else
      {
        _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 464), *(v0 + 504), type metadata accessor for PageId);
      }

      v111 = *(v0 + 608);
      v113 = *(v0 + 504);
      v112 = *(v0 + 512);
      outlined init with copy of Date?(v113, v111, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      outlined destroy of PaperDocument.Partial(v113, type metadata accessor for PageId);
      v114 = (*v278)(v111, 1, v112);
      v115 = *(v0 + 608);
      if (v114 != 1)
      {
        break;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      ++v93;
      v90 = v276;
      if (v91 == v276)
      {
        v89 = v269;
        goto LABEL_71;
      }
    }

    v116 = *(v0 + 544);
    v117 = *(v0 + 536);
    _s8PaperKit0A8DocumentVWObTm_0(v115, v116, type metadata accessor for PDFPageID);
    outlined init with copy of PaperDocument.Partial(v116, v117, type metadata accessor for PDFPageID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v286[0] = v269;
    v120 = specialized __RawDictionaryStorage.find<A>(_:)(v117);
    v121 = v269[2];
    v122 = (v119 & 1) == 0;
    v123 = v121 + v122;
    if (__OFADD__(v121, v122))
    {
      goto LABEL_129;
    }

    v124 = v119;
    if (v269[3] >= v123)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v269 = v286[0];
      }
    }

    else
    {
      v125 = *(v0 + 536);
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v123, isUniquelyReferenced_nonNull_native);
      v269 = v286[0];
      v126 = specialized __RawDictionaryStorage.find<A>(_:)(v125);
      if ((v124 & 1) != (v127 & 1))
      {
        goto LABEL_124;
      }

      v120 = v126;
    }

    v128 = *(v0 + 544);
    v129 = *(v0 + 536);
    if (v124)
    {
      *(v269[7] + 8 * v120) = v93;
      v89 = v269;
      outlined destroy of PaperDocument.Partial(v129, type metadata accessor for PDFPageID);
      outlined destroy of PaperDocument.Partial(v128, type metadata accessor for PDFPageID);
    }

    else
    {
      v269[(v120 >> 6) + 8] |= 1 << v120;
      outlined init with copy of PaperDocument.Partial(v129, v269[6] + *(v262 + 72) * v120, type metadata accessor for PDFPageID);
      *(v269[7] + 8 * v120) = v93;
      v89 = v269;
      outlined destroy of PaperDocument.Partial(v129, type metadata accessor for PDFPageID);
      outlined destroy of PaperDocument.Partial(v128, type metadata accessor for PDFPageID);
      v130 = v269[2];
      v131 = __OFADD__(v130, 1);
      v132 = v130 + 1;
      if (v131)
      {
        goto LABEL_130;
      }

      v269[2] = v132;
    }

    v90 = v276;
  }

  while (v91 != v276);
LABEL_71:
  v270 = v89;
  *(v0 + 944) = v89;
  v133 = *(v0 + 896);
  v134 = *(v0 + 688);
  v135 = *(v0 + 624);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  if (v133(v134, 1, v135) != 1)
  {
    v148 = *(v0 + 632);
    v149 = *(v148 + 32);
    v148 += 32;
    v150 = *(v0 + 520);
    v277 = (v150 + 48);
    v279 = v149;
    v266 = *(v0 + 472);
    v268 = (*(v0 + 480) + 48);
    v259 = (v150 + 56);
    v274 = (v148 - 24);
    v260 = (v148 - 16);
    do
    {
      v155 = *(v0 + 600);
      v156 = *(v0 + 512);
      v279(*(v0 + 664), *(v0 + 688), *(v0 + 624));
      SharedTagged_3.subscript.getter();
      v157 = *(v0 + 80);
      v158 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v157);
      (*(v158 + 112))(v157, v158);
      if ((*v277)(v155, 1, v156) == 1)
      {
        v151 = *(v0 + 600);
        (*v274)(*(v0 + 664), *(v0 + 624));
        outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      }

      else
      {
        _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 600), *(v0 + 528), type metadata accessor for PDFPageID);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        if (*(v270 + 16))
        {
          v159 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 528));
          if (v160)
          {
            v161 = *(*(v270 + 56) + 8 * v159);
            if (one-time initialization token for lock != -1)
            {
              swift_once();
            }

            v162 = static PaperKitPDFDocument.lock;
            v163 = swift_task_alloc();
            *(v163 + 16) = v272;
            *(v163 + 24) = v161;
            v164 = swift_task_alloc();
            *(v164 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
            *(v164 + 24) = v163;
            os_unfair_lock_lock(v162 + 4);
            closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v165);
            v166 = v161;
            v167 = *(v0 + 472);
            v168 = *(v0 + 448);
            os_unfair_lock_unlock(v162 + 4);

            v169 = *v268;
            if ((*v268)(v168, 1, v167) == 1)
            {
              outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 448), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
              v170 = [v272 pageAtIndex_];
              if (!v170)
              {
                goto LABEL_134;
              }

              v175 = v170;
              v176 = *(v0 + 472);
              v177 = *(v0 + 440);
              type metadata accessor for PaperKitPDFPage(0);
              v178 = swift_dynamicCastClassUnconditional();
              v179 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
              swift_beginAccess();
              outlined init with copy of Date?(v178 + v179, v177, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

              if (v169(v177, 1, v176) == 1)
              {
                v180 = *(v0 + 512);
                v181 = *(v0 + 496);
                outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 440), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
                (*v259)(v181, 1, 1, v180);
                v182 = v266;
                v183 = *(v266 + 20);
                v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
                (*(*(v184 - 8) + 56))(v181 + v183, 1, 1, v184);
                goto LABEL_92;
              }

              v187 = *(v0 + 496);
              v188 = *(v0 + 440);
            }

            else
            {
              v187 = *(v0 + 496);
              v188 = *(v0 + 448);
            }

            _s8PaperKit0A8DocumentVWObTm_0(v188, v187, type metadata accessor for PageId);
            v182 = v266;
LABEL_92:
            v189 = *(v0 + 496);
            v190 = *(v0 + 432);
            outlined init with copy of Date?(v189 + *(v182 + 20), v190, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
            outlined destroy of PaperDocument.Partial(v189, type metadata accessor for PageId);
            v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
            v192 = *(v191 - 8);
            v193 = (*(v192 + 48))(v190, 1, v191);
            outlined destroy of StocksKitCurrencyCache.Provider?(v190, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
            v194 = *(v0 + 664);
            if (v193 == 1)
            {
              v261 = *(v0 + 624);
              v263 = *(v0 + 528);
              v195 = *(v0 + 488);
              v196 = *(v0 + 424);
              (*v260)(*(v0 + 656), v194);
              lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
              WeakTagged_3.init(_:)();
              (*(v192 + 56))(v196, 0, 1, v191);
              PaperKitPDFDocument.subscript.getter(v166, v195);
              outlined assign with take of UUID?(v196, &v195[*(v266 + 20)], &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
              PaperKitPDFDocument.subscript.setter(v195, v166);
              outlined destroy of PaperDocument.Partial(v263, type metadata accessor for PDFPageID);
              (*v274)(v194, v261);
            }

            else
            {
              v197 = *(v0 + 624);
              outlined destroy of PaperDocument.Partial(*(v0 + 528), type metadata accessor for PDFPageID);
              (*v274)(v194, v197);
            }

            goto LABEL_78;
          }
        }

        v185 = *(v0 + 664);
        v186 = *(v0 + 624);
        outlined destroy of PaperDocument.Partial(*(v0 + 528), type metadata accessor for PDFPageID);
        (*v274)(v185, v186);
      }

LABEL_78:
      v152 = *(v0 + 896);
      v153 = *(v0 + 688);
      v154 = *(v0 + 624);
      CROrderedSet.Iterator.next()();
    }

    while (v152(v153, 1, v154) != 1);
  }

  v136 = *(v0 + 840);
  v137 = *(v0 + 832);
  v138 = *(v0 + 320);
  v139 = *(v0 + 312);
  v140 = *(v0 + 296);
  v264(*(v0 + 720), *(v0 + 704));
  swift_beginAccess();
  v141 = *(v136 + 16);
  v286[0] = v137;
  v142 = PaperDocument.update<A>(_:in:otherDocuments:use:)(v272, v140, v141, v286, v139, v138);
  *(v0 + 952) = v142;
  v143 = *(v142 + 32);
  *(v0 + 1040) = v143;
  v144 = -1;
  v145 = -1 << v143;
  if (-(-1 << v143) < 64)
  {
    v144 = ~(-1 << -(-1 << v143));
  }

  v146 = v144 & *(v142 + 56);
  if (v146)
  {
    v147 = 0;
LABEL_98:
    *(v0 + 968) = v147;
    *(v0 + 960) = v146;
    v200 = *(v0 + 784);
    v201 = *(v0 + 776);
    v202 = *(v0 + 768);
    v203 = *(v0 + 760);
    v204 = *(v142 + 48) + *(v202 + 72) * (__clz(__rbit64(v146)) | (v147 << 6));
    v205 = *(v202 + 16);
    *(v0 + 976) = v205;
    *(v0 + 984) = (v202 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v205(v200, v204, v203);
    (*(v202 + 32))(v201, v200, v203);
    v206 = swift_task_alloc();
    *(v0 + 992) = v206;
    *(v206 + 16) = v201;
    v207 = swift_task_alloc();
    *(v0 + 1000) = v207;
    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd, _s8PaperKit0aB11PDFDocumentCSgMR);
    *v207 = v0;
    v207[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
    v172 = &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:);
    v170 = (v0 + 280);
    v171 = 1;
    v173 = v206;

    return MEMORY[0x1EEDF52A8](v170, v171, v172, v173, v174);
  }

  v198 = 0;
  v199 = ((63 - v145) >> 6) - 1;
  while (v199 != v198)
  {
    v147 = v198 + 1;
    v146 = *(v142 + 8 * v198++ + 64);
    if (v146)
    {
      goto LABEL_98;
    }
  }

  v208 = *(v0 + 832);
  v210 = *(v0 + 312);
  v209 = *(v0 + 320);
  v212 = *(v0 + 296);
  v211 = *(v0 + 304);

  v286[0] = v208;
  PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v212, v286, v211, v210, v209);
  if (v208 != 0x8000000000000000)
  {
    v213 = *(v0 + 832);
    v215 = *(v0 + 408);
    v214 = *(v0 + 416);
    v217 = *(v0 + 392);
    v216 = *(v0 + 400);
    v218 = *(v0 + 376);
    v219 = *(v0 + 384);
    v220 = *(v0 + 328);
    outlined copy of PaperDocument.PDFDocumentUse(v213);
    outlined consume of PaperDocument.PDFDocumentUse(v213);
    outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
    (*(v219 + 16))(v216, v220, v218);
    (*(v219 + 32))(v217, v216, v218);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995150]);
    dispatch thunk of Sequence.makeIterator()();
    v221 = *(v215 + 36);
    *(v0 + 1036) = v221;
    *(v214 + v221) = 0;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMR, MEMORY[0x1E6995120]);
    v283 = 0;
    v222 = &selRef_PDFView;
    while (1)
    {
      v223 = *(v0 + 896);
      v224 = *(v0 + 680);
      v225 = *(v0 + 624);
      dispatch thunk of IteratorProtocol.next()();
      if (v223(v224, 1, v225) == 1)
      {
        v226 = *(v0 + 360);
        v227 = *(v0 + 336);
        v228 = *(v0 + 344);
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 680), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
        (*(v228 + 56))(v226, 1, 1, v227);
        v229 = v283;
      }

      else
      {
        v230 = *(v0 + 648);
        v231 = *(v0 + 624);
        v232 = *(v0 + 352);
        v233 = *(v0 + 336);
        v234 = *(*(v0 + 632) + 32);
        v234(v230, *(v0 + 680), v231);
        v235 = *(v233 + 48);
        *v232 = v283;
        v234(v232 + v235, v230, v231);
        v229 = v283 + 1;
        if (__OFADD__(v283, 1))
        {
          goto LABEL_128;
        }

        v236 = *(v0 + 352);
        v237 = *(v0 + 360);
        v238 = *(v0 + 336);
        v239 = *(v0 + 344);
        *(*(v0 + 416) + *(v0 + 1036)) = v229;
        outlined init with take of Range<AttributedString.Index>(v236, v237, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMR);
        (*(v239 + 56))(v237, 0, 1, v238);
        v222 = &selRef_PDFView;
      }

      *(v0 + 1008) = v229;
      v240 = *(v0 + 368);
      v241 = *(v0 + 336);
      v242 = *(v0 + 344);
      outlined init with take of Range<AttributedString.Index>(*(v0 + 360), v240, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMR);
      if ((*(v242 + 48))(v240, 1, v241) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 416), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMR);
        goto LABEL_118;
      }

      v243 = *(v0 + 936);
      v244 = *(v0 + 368);
      v245 = *v244;
      (*(*(v0 + 632) + 32))(*(v0 + 640), &v244[*(*(v0 + 336) + 48)], *(v0 + 624));
      v246 = [v243 v222[383]];
      *(v0 + 1016) = v246;
      if (v246)
      {
        v247 = v246;
        type metadata accessor for PaperKitPDFPage(0);
        v248 = swift_dynamicCastClass();
        if (v248)
        {
          v249 = v248;
          v250 = *(v0 + 832);
          SharedTagged_3.subscript.getter();
          v251 = *(v0 + 40);
          v252 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v251);
          *(v0 + 288) = v250;
          v284 = (*(v252 + 168) + **(v252 + 168));
          v253 = swift_task_alloc();
          *(v0 + 1024) = v253;
          *v253 = v0;
          v253[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
          v254 = *(v0 + 312);
          v255 = *(v0 + 320);
          v256 = *(v0 + 296);
          v257 = *(v0 + 304);

          return v284(v249, v0 + 288, v256, v257, v254, v255, v251, v252);
        }
      }

      v283 = v229;
      (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
    }
  }

  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_118:

  v285 = *(v0 + 936);

  v258 = *(v0 + 8);

  return v258(v285);
}

{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = PaperDocument.newPDFDocument<A>(use:in:options:);
  }

  else
  {
    v2 = PaperDocument.newPDFDocument<A>(use:in:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v278 = v0;
  (*(*(v0 + 768) + 8))(*(v0 + 824), *(v0 + 760));
  v1 = *(v0 + 888);
  v2 = *(v0 + 696);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  v6 = *(v3 + 48);
  v5 = v3 + 48;
  *(v0 + 896) = v6;
  if (v6(v2, 1, v4) != 1)
  {
    *(v0 + 904) = *(*(v0 + 632) + 32);
    do
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 520);
      v29 = *(v0 + 512);
      (*(v0 + 904))(*(v0 + 672), *(v0 + 696), *(v0 + 624));
      SharedTagged_3.subscript.getter();
      v30 = *(v0 + 120);
      v31 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v30);
      (*(v31 + 112))(v30, v31);
      if ((*(v28 + 48))(v27, 1, v29) == 1)
      {
        v20 = *(v0 + 768);
        v21 = *(v0 + 760);
        v22 = *(v0 + 744);
        v23 = *(v0 + 616);
        (*(*(v0 + 632) + 8))(*(v0 + 672), *(v0 + 624));
        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
        outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        (*(v20 + 56))(v22, 1, 1, v21);
      }

      else
      {
        v32 = *(v0 + 864);
        v33 = *(v0 + 768);
        v34 = *(v0 + 760);
        v35 = *(v0 + 744);
        v36 = *(v0 + 616);
        (*(v33 + 16))(v35, v36 + *(*(v0 + 512) + 20), v34);
        outlined destroy of PaperDocument.Partial(v36, type metadata accessor for PDFPageID);
        (*(v33 + 56))(v35, 0, 1, v34);
        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
        if (v32(v35, 1, v34) != 1)
        {
          (*(*(v0 + 768) + 32))(*(v0 + 816), *(v0 + 744), *(v0 + 760));
          v45 = swift_task_alloc();
          *(v0 + 912) = v45;
          *v45 = v0;
          v45[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
          v46 = *(v0 + 848);
          v47 = *(v0 + 840);
          v48 = *(v0 + 816);

          return loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)(v48, v47, v46);
        }

        (*(*(v0 + 632) + 8))(*(v0 + 672), *(v0 + 624));
      }

      v24 = *(v0 + 896);
      v25 = *(v0 + 696);
      v26 = *(v0 + 624);
      v5 = *(v0 + 632) + 48;
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 744), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      CROrderedSet.Iterator.next()();
    }

    while (v24(v25, 1, v26) != 1);
  }

  *(v0 + 928) = v5 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = *(v0 + 864);
  v8 = *(v0 + 760);
  v9 = *(v0 + 736);
  v252 = *(*(v0 + 712) + 8);
  v252(*(v0 + 728), *(v0 + 704));
  CRRegister.wrappedValue.getter();
  if (v7(v9, 1, v8) != 1)
  {
    v37 = *(v0 + 840);
    (*(*(v0 + 768) + 32))(*(v0 + 808), *(v0 + 736), *(v0 + 760));
    swift_beginAccess();
    v38 = *(v37 + 16);
    if (!*(v38 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 808)), (v40 & 1) == 0))
    {
LABEL_138:
      swift_endAccess();
      __break(1u);
LABEL_139:
      v159 = swift_endAccess();
      __break(1u);
LABEL_140:
      __break(1u);
      return MEMORY[0x1EEDF52A8](v159, v160, v161, v162, v163);
    }

    v41 = *(v0 + 808);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(*(v38 + 56) + 8 * v39);
    goto LABEL_37;
  }

  v10 = *(v0 + 848);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 736), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  swift_beginAccess();
  v11 = *(v10 + 16);
  v12 = v11 + 64;
  v13 = -1 << *(v11 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v272 = *(v10 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = __clz(__rbit64(v15));
    v18 = (v15 - 1) & v15;
    v19 = (63 - v13) >> 6;
LABEL_24:
    v52 = *(v0 + 768);
    v257 = *(v0 + 584);
    v53 = *(v0 + 576);
    v54 = *(v0 + 552);
    v260 = *(v52 + 72);
    v263 = *(v52 + 16);
    v263(v53, *(v272 + 48) + v260 * v17, *(v0 + 760));
    v266 = v54;
    *(v53 + *(v54 + 48)) = *(*(v272 + 56) + 8 * v17);
    outlined init with take of Range<AttributedString.Index>(v53, v257, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);

    v270 = v1;
    while (v18)
    {
      v55 = v16;
LABEL_32:
      v56 = *(v0 + 584);
      v57 = *(v0 + 568);
      v58 = *(v0 + 560);
      v59 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v60 = v59 | (v55 << 6);
      v263(v58, *(v272 + 48) + v60 * v260, *(v0 + 760));
      *(v58 + *(v266 + 48)) = *(*(v272 + 56) + 8 * v60);
      outlined init with take of Range<AttributedString.Index>(v58, v57, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      if (*(v56 + *(v266 + 48)) >= *(v57 + *(v266 + 48)))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 568), &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      }

      else
      {
        v61 = *(v0 + 584);
        v62 = *(v0 + 568);
        outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
        outlined init with take of Range<AttributedString.Index>(v62, v61, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      }

      v16 = v55;
      v1 = v270;
    }

    while (1)
    {
      v55 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      if (v55 >= v19)
      {
        break;
      }

      v18 = *(v12 + 8 * v55);
      ++v16;
      if (v18)
      {
        goto LABEL_32;
      }
    }

    v63 = *(v0 + 840);
    v64 = *(v0 + 800);
    v65 = *(v0 + 792);
    v66 = *(v0 + 768);
    v67 = *(v0 + 760);
    v68 = *(v0 + 592);
    v69 = *(v0 + 584);

    outlined init with take of Range<AttributedString.Index>(v69, v68, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
    v70 = *(v66 + 32);
    v70(v65, v68, v67);
    v70(v64, v65, v67);
    swift_beginAccess();
    v71 = *(v63 + 16);
    if (!*(v71 + 16))
    {
      goto LABEL_139;
    }

    v72 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 800));
    if ((v73 & 1) == 0)
    {
      goto LABEL_139;
    }

    v41 = *(v0 + 800);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(*(v71 + 56) + 8 * v72);
LABEL_37:
    swift_endAccess();
    v74 = *(v42 + 8);
    v75 = v44;
    v74(v41, v43);
    goto LABEL_38;
  }

  v50 = 0;
  v19 = (63 - v13) >> 6;
  while (v19 - 1 != v50)
  {
    v16 = v50 + 1;
    v51 = *(v11 + 72 + 8 * v50);
    v15 -= 64;
    ++v50;
    if (v51)
    {
      v18 = (v51 - 1) & v51;
      v17 = __clz(__rbit64(v51)) - v15;
      goto LABEL_24;
    }
  }

  v75 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];
LABEL_38:
  *(v0 + 936) = v75;
  v76 = v75;
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v78 = [v76 pageCount];
  v273 = v76;

  if ((v78 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v78)
  {
    v261 = v77;
    v79 = 0;
    v268 = (*(v0 + 480) + 48);
    v80 = *(v0 + 520);
    v253 = (v80 + 56);
    v255 = *(v0 + 472);
    v250 = v80;
    v81 = (v80 + 48);
    v264 = (v80 + 48);
    v258 = v78;
    do
    {
      while (1)
      {
        if (v79 >= v78)
        {
          goto LABEL_128;
        }

        if (__OFADD__(v79, 1))
        {
          goto LABEL_129;
        }

        if (one-time initialization token for lock != -1)
        {
          swift_once();
        }

        v82 = static PaperKitPDFDocument.lock;
        v83 = swift_task_alloc();
        *(v83 + 16) = v273;
        *(v83 + 24) = v79;
        v84 = swift_task_alloc();
        *(v84 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
        *(v84 + 24) = v83;
        os_unfair_lock_lock(v82 + 4);
        closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v85);
        if (v1)
        {
          v122 = v82 + 4;
          goto LABEL_70;
        }

        v271 = (v79 + 1);
        v86 = *(v0 + 464);
        v87 = *(v0 + 472);
        os_unfair_lock_unlock(v82 + 4);

        v88 = *v268;
        if ((*v268)(v86, 1, v87) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 464), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
          v89 = [v273 pageAtIndex_];
          if (!v89)
          {
            goto LABEL_137;
          }

          v90 = v89;
          v91 = *(v0 + 472);
          v92 = *(v0 + 456);
          type metadata accessor for PaperKitPDFPage(0);
          v93 = swift_dynamicCastClassUnconditional();
          v94 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
          swift_beginAccess();
          outlined init with copy of Date?(v93 + v94, v92, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

          if (v88(v92, 1, v91) == 1)
          {
            v95 = *(v0 + 504);
            v96 = *(v0 + 512);
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 456), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
            (*v253)(v95, 1, 1, v96);
            v97 = *(v255 + 20);
            v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
            (*(*(v98 - 8) + 56))(v95 + v97, 1, 1, v98);
          }

          else
          {
            _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 456), *(v0 + 504), type metadata accessor for PageId);
          }

          v78 = v258;
          v81 = v264;
        }

        else
        {
          _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 464), *(v0 + 504), type metadata accessor for PageId);
        }

        v99 = *(v0 + 608);
        v101 = *(v0 + 504);
        v100 = *(v0 + 512);
        outlined init with copy of Date?(v101, v99, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        outlined destroy of PaperDocument.Partial(v101, type metadata accessor for PageId);
        v102 = (*v81)(v99, 1, v100);
        v103 = *(v0 + 608);
        if (v102 != 1)
        {
          break;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        v1 = 0;
        ++v79;
        if (v271 == v78)
        {
          goto LABEL_73;
        }
      }

      v104 = *(v0 + 544);
      v105 = *(v0 + 536);
      _s8PaperKit0A8DocumentVWObTm_0(v103, v104, type metadata accessor for PDFPageID);
      outlined init with copy of PaperDocument.Partial(v104, v105, type metadata accessor for PDFPageID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v277[0] = v261;
      v107 = specialized __RawDictionaryStorage.find<A>(_:)(v105);
      v109 = v261[2];
      v110 = (v108 & 1) == 0;
      v111 = __OFADD__(v109, v110);
      v112 = v109 + v110;
      if (v111)
      {
        goto LABEL_135;
      }

      v113 = v108;
      if (v261[3] >= v112)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = v107;
          specialized _NativeDictionary.copy()();
          v107 = v121;
          v261 = v277[0];
        }
      }

      else
      {
        v114 = *(v0 + 536);
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v112, isUniquelyReferenced_nonNull_native);
        v261 = v277[0];
        v107 = specialized __RawDictionaryStorage.find<A>(_:)(v114);
        if ((v113 & 1) != (v115 & 1))
        {
          goto LABEL_130;
        }
      }

      v116 = *(v0 + 544);
      v117 = *(v0 + 536);
      if (v113)
      {
        *(v261[7] + 8 * v107) = v79;
        outlined destroy of PaperDocument.Partial(v117, type metadata accessor for PDFPageID);
        outlined destroy of PaperDocument.Partial(v116, type metadata accessor for PDFPageID);
      }

      else
      {
        v261[(v107 >> 6) + 8] |= 1 << v107;
        v118 = v107;
        outlined init with copy of PaperDocument.Partial(v117, v261[6] + *(v250 + 72) * v107, type metadata accessor for PDFPageID);
        *(v261[7] + 8 * v118) = v79;
        outlined destroy of PaperDocument.Partial(v117, type metadata accessor for PDFPageID);
        outlined destroy of PaperDocument.Partial(v116, type metadata accessor for PDFPageID);
        v119 = v261[2];
        v111 = __OFADD__(v119, 1);
        v120 = v119 + 1;
        if (v111)
        {
          goto LABEL_136;
        }

        v261[2] = v120;
      }

      ++v79;
      v1 = 0;
    }

    while (v271 != v78);
LABEL_73:
    v77 = v261;
  }

  v262 = v77;
  *(v0 + 944) = v77;
  v123 = *(v0 + 896);
  v124 = *(v0 + 688);
  v125 = *(v0 + 624);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  if (v123(v124, 1, v125) == 1)
  {
LABEL_75:
    v126 = *(v0 + 840);
    v127 = *(v0 + 832);
    v128 = *(v0 + 320);
    v129 = *(v0 + 312);
    v130 = *(v0 + 296);
    v252(*(v0 + 720), *(v0 + 704));
    swift_beginAccess();
    v131 = *(v126 + 16);
    v277[0] = v127;
    v132 = PaperDocument.update<A>(_:in:otherDocuments:use:)(v273, v130, v131, v277, v129, v128);
    *(v0 + 952) = v132;
    v133 = *(v132 + 32);
    *(v0 + 1040) = v133;
    v134 = -1;
    v135 = -1 << v133;
    if (-(-1 << v133) < 64)
    {
      v134 = ~(-1 << -(-1 << v133));
    }

    v136 = v134 & *(v132 + 56);
    if (!v136)
    {
      v187 = 0;
      v188 = ((63 - v135) >> 6) - 1;
      while (v188 != v187)
      {
        v137 = v187 + 1;
        v136 = *(v132 + 8 * v187++ + 64);
        if (v136)
        {
          goto LABEL_103;
        }
      }

      v197 = *(v0 + 832);
      v199 = *(v0 + 312);
      v198 = *(v0 + 320);
      v201 = *(v0 + 296);
      v200 = *(v0 + 304);

      v277[0] = v197;
      PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v201, v277, v200, v199, v198);
      if (v197 != 0x8000000000000000)
      {
        v202 = *(v0 + 832);
        v204 = *(v0 + 408);
        v203 = *(v0 + 416);
        v206 = *(v0 + 392);
        v205 = *(v0 + 400);
        v207 = *(v0 + 376);
        v208 = *(v0 + 384);
        v209 = *(v0 + 328);
        outlined copy of PaperDocument.PDFDocumentUse(v202);
        outlined consume of PaperDocument.PDFDocumentUse(v202);
        outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
        (*(v208 + 16))(v205, v209, v207);
        (*(v208 + 32))(v206, v205, v207);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995150]);
        dispatch thunk of Sequence.makeIterator()();
        v210 = *(v204 + 36);
        *(v0 + 1036) = v210;
        *(v203 + v210) = 0;
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMR, MEMORY[0x1E6995120]);
        v274 = 0;
        while (1)
        {
          v211 = *(v0 + 896);
          v212 = *(v0 + 680);
          v213 = *(v0 + 624);
          dispatch thunk of IteratorProtocol.next()();
          if (v211(v212, 1, v213) == 1)
          {
            v214 = *(v0 + 360);
            v215 = *(v0 + 336);
            v216 = *(v0 + 344);
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 680), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
            (*(v216 + 56))(v214, 1, 1, v215);
            v217 = v274;
          }

          else
          {
            v218 = *(v0 + 648);
            v219 = *(v0 + 624);
            v220 = *(v0 + 352);
            v221 = *(v0 + 336);
            v222 = *(*(v0 + 632) + 32);
            v222(v218, *(v0 + 680), v219);
            v223 = *(v221 + 48);
            *v220 = v274;
            v222(v220 + v223, v218, v219);
            v217 = v274 + 1;
            if (__OFADD__(v274, 1))
            {
              goto LABEL_134;
            }

            v224 = *(v0 + 352);
            v225 = *(v0 + 360);
            v226 = *(v0 + 336);
            v227 = *(v0 + 344);
            *(*(v0 + 416) + *(v0 + 1036)) = v217;
            outlined init with take of Range<AttributedString.Index>(v224, v225, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMR);
            (*(v227 + 56))(v225, 0, 1, v226);
          }

          *(v0 + 1008) = v217;
          v228 = *(v0 + 368);
          v229 = *(v0 + 336);
          v230 = *(v0 + 344);
          outlined init with take of Range<AttributedString.Index>(*(v0 + 360), v228, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMR);
          if ((*(v230 + 48))(v228, 1, v229) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 416), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMR);
            goto LABEL_121;
          }

          v231 = *(v0 + 936);
          v232 = *(v0 + 368);
          v233 = *v232;
          (*(*(v0 + 632) + 32))(*(v0 + 640), &v232[*(*(v0 + 336) + 48)], *(v0 + 624));
          v234 = [v231 pageAtIndex_];
          *(v0 + 1016) = v234;
          if (v234)
          {
            v235 = v234;
            type metadata accessor for PaperKitPDFPage(0);
            v236 = swift_dynamicCastClass();
            if (v236)
            {
              v238 = v236;
              v239 = *(v0 + 832);
              SharedTagged_3.subscript.getter();
              v240 = *(v0 + 40);
              v241 = *(v0 + 48);
              __swift_project_boxed_opaque_existential_1((v0 + 16), v240);
              *(v0 + 288) = v239;
              v276 = (*(v241 + 168) + **(v241 + 168));
              v242 = swift_task_alloc();
              *(v0 + 1024) = v242;
              *v242 = v0;
              v242[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
              v243 = *(v0 + 312);
              v244 = *(v0 + 320);
              v245 = *(v0 + 296);
              v246 = *(v0 + 304);

              return v276(v238, v0 + 288, v245, v246, v243, v244, v240, v241);
            }
          }

          v274 = v217;
          (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
        }
      }

      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_121:

      v275 = *(v0 + 936);

      v237 = *(v0 + 8);

      return v237(v275);
    }

    v137 = 0;
LABEL_103:
    *(v0 + 968) = v137;
    *(v0 + 960) = v136;
    v189 = *(v0 + 784);
    v190 = *(v0 + 776);
    v191 = *(v0 + 768);
    v192 = *(v0 + 760);
    v193 = *(v132 + 48) + *(v191 + 72) * (__clz(__rbit64(v136)) | (v137 << 6));
    v194 = *(v191 + 16);
    *(v0 + 976) = v194;
    *(v0 + 984) = (v191 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v194(v189, v193, v192);
    (*(v191 + 32))(v190, v189, v192);
    v195 = swift_task_alloc();
    *(v0 + 992) = v195;
    *(v195 + 16) = v190;
    v196 = swift_task_alloc();
    *(v0 + 1000) = v196;
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd, _s8PaperKit0aB11PDFDocumentCSgMR);
    *v196 = v0;
    v196[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
    v161 = &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:);
    v159 = (v0 + 280);
    v160 = 1;
    v162 = v195;

    return MEMORY[0x1EEDF52A8](v159, v160, v161, v162, v163);
  }

  v138 = *(v0 + 632);
  v139 = *(v138 + 32);
  v138 += 32;
  v269 = v139;
  v140 = *(v0 + 520);
  v267 = (v140 + 48);
  v256 = *(v0 + 472);
  v259 = (*(v0 + 480) + 48);
  v247 = (v140 + 56);
  v265 = (v138 - 24);
  v248 = (v138 - 16);
  while (1)
  {
    v145 = *(v0 + 600);
    v146 = *(v0 + 512);
    v269(*(v0 + 664), *(v0 + 688), *(v0 + 624));
    SharedTagged_3.subscript.getter();
    v147 = *(v0 + 80);
    v148 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v147);
    (*(v148 + 112))(v147, v148);
    if ((*v267)(v145, 1, v146) != 1)
    {
      break;
    }

    v141 = *(v0 + 600);
    (*v265)(*(v0 + 664), *(v0 + 624));
    outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_81:
    v142 = *(v0 + 896);
    v143 = *(v0 + 688);
    v144 = *(v0 + 624);
    CROrderedSet.Iterator.next()();
    if (v142(v143, 1, v144) == 1)
    {
      goto LABEL_75;
    }
  }

  _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 600), *(v0 + 528), type metadata accessor for PDFPageID);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (!*(v262 + 16) || (v149 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 528)), (v150 & 1) == 0))
  {
    v174 = *(v0 + 664);
    v175 = *(v0 + 624);
    outlined destroy of PaperDocument.Partial(*(v0 + 528), type metadata accessor for PDFPageID);
    (*v265)(v174, v175);
    goto LABEL_81;
  }

  v151 = *(*(v262 + 56) + 8 * v149);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v152 = static PaperKitPDFDocument.lock;
  v153 = swift_task_alloc();
  *(v153 + 16) = v273;
  *(v153 + 24) = v151;
  v154 = swift_task_alloc();
  *(v154 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
  *(v154 + 24) = v153;
  os_unfair_lock_lock(v152 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v155);
  if (!v1)
  {
    v156 = *(v0 + 472);
    v157 = *(v0 + 448);
    os_unfair_lock_unlock(v152 + 4);

    v158 = *v259;
    v254 = v151;
    if ((*v259)(v157, 1, v156) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 448), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      v159 = [v273 pageAtIndex_];
      if (!v159)
      {
        goto LABEL_140;
      }

      v164 = v159;
      v165 = *(v0 + 472);
      v166 = *(v0 + 440);
      type metadata accessor for PaperKitPDFPage(0);
      v167 = swift_dynamicCastClassUnconditional();
      v168 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      outlined init with copy of Date?(v167 + v168, v166, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

      if (v158(v166, 1, v165) == 1)
      {
        v169 = *(v0 + 512);
        v170 = *(v0 + 496);
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 440), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        (*v247)(v170, 1, 1, v169);
        v171 = v256;
        v172 = *(v256 + 20);
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
        (*(*(v173 - 8) + 56))(v170 + v172, 1, 1, v173);
LABEL_96:
        v178 = *(v0 + 496);
        v179 = *(v0 + 432);
        outlined init with copy of Date?(v178 + *(v171 + 20), v179, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        outlined destroy of PaperDocument.Partial(v178, type metadata accessor for PageId);
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
        v181 = *(v180 - 8);
        v182 = (*(v181 + 48))(v179, 1, v180);
        outlined destroy of StocksKitCurrencyCache.Provider?(v179, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        v183 = *(v0 + 664);
        if (v182 == 1)
        {
          v249 = *(v0 + 624);
          v251 = *(v0 + 528);
          v184 = *(v0 + 488);
          v185 = *(v0 + 424);
          (*v248)(*(v0 + 656), v183);
          lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
          WeakTagged_3.init(_:)();
          (*(v181 + 56))(v185, 0, 1, v180);
          PaperKitPDFDocument.subscript.getter(v254, v184);
          outlined assign with take of UUID?(v185, &v184[*(v256 + 20)], &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
          PaperKitPDFDocument.subscript.setter(v184, v254);
          outlined destroy of PaperDocument.Partial(v251, type metadata accessor for PDFPageID);
          (*v265)(v183, v249);
        }

        else
        {
          v186 = *(v0 + 624);
          outlined destroy of PaperDocument.Partial(*(v0 + 528), type metadata accessor for PDFPageID);
          (*v265)(v183, v186);
        }

        v1 = 0;
        goto LABEL_81;
      }

      v176 = *(v0 + 496);
      v177 = *(v0 + 440);
    }

    else
    {
      v176 = *(v0 + 496);
      v177 = *(v0 + 448);
    }

    _s8PaperKit0A8DocumentVWObTm_0(v177, v176, type metadata accessor for PageId);
    v171 = v256;
    goto LABEL_96;
  }

  v122 = v152 + 4;
LABEL_70:
  os_unfair_lock_unlock(v122);
}

{
  *(*v1 + 920) = v0;

  if (v0)
  {
    v2 = PaperDocument.newPDFDocument<A>(use:in:options:);
  }

  else
  {
    v2 = PaperDocument.newPDFDocument<A>(use:in:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v280 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 696);
  v3 = *(v0 + 672);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  (*(*(v0 + 768) + 8))(*(v0 + 816), *(v0 + 760));
  v6 = v4 + 48;
  (*(v4 + 8))(v3, v5);
  CROrderedSet.Iterator.next()();
  v7 = v1(v2, 1, v5);
  v8 = *(v0 + 920);
  while (v7 != 1)
  {
    v16 = *(v0 + 616);
    v17 = *(v0 + 520);
    v18 = *(v0 + 512);
    (*(v0 + 904))(*(v0 + 672), *(v0 + 696), *(v0 + 624));
    SharedTagged_3.subscript.getter();
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v19);
    (*(v20 + 112))(v19, v20);
    if ((*(v17 + 48))(v16, 1, v18) == 1)
    {
      v9 = *(v0 + 768);
      v10 = *(v0 + 760);
      v11 = *(v0 + 744);
      v12 = *(v0 + 616);
      (*(*(v0 + 632) + 8))(*(v0 + 672), *(v0 + 624));
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      (*(v9 + 56))(v11, 1, 1, v10);
    }

    else
    {
      v21 = *(v0 + 864);
      v22 = *(v0 + 768);
      v23 = *(v0 + 760);
      v24 = *(v0 + 744);
      v25 = *(v0 + 616);
      (*(v22 + 16))(v24, v25 + *(*(v0 + 512) + 20), v23);
      outlined destroy of PaperDocument.Partial(v25, type metadata accessor for PDFPageID);
      (*(v22 + 56))(v24, 0, 1, v23);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      if (v21(v24, 1, v23) != 1)
      {
        (*(*(v0 + 768) + 32))(*(v0 + 816), *(v0 + 744), *(v0 + 760));
        v47 = swift_task_alloc();
        *(v0 + 912) = v47;
        *v47 = v0;
        v47[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
        v48 = *(v0 + 848);
        v49 = *(v0 + 840);
        v50 = *(v0 + 816);

        return loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)(v50, v49, v48);
      }

      (*(*(v0 + 632) + 8))(*(v0 + 672), *(v0 + 624));
    }

    v13 = *(v0 + 896);
    v14 = *(v0 + 696);
    v15 = *(v0 + 624);
    v6 = *(v0 + 632) + 48;
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 744), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    CROrderedSet.Iterator.next()();
    v7 = v13(v14, 1, v15);
  }

  *(v0 + 928) = v6 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v26 = *(v0 + 864);
  v27 = *(v0 + 760);
  v28 = *(v0 + 736);
  v254 = *(*(v0 + 712) + 8);
  v254(*(v0 + 728), *(v0 + 704));
  CRRegister.wrappedValue.getter();
  if (v26(v28, 1, v27) != 1)
  {
    v39 = *(v0 + 840);
    (*(*(v0 + 768) + 32))(*(v0 + 808), *(v0 + 736), *(v0 + 760));
    swift_beginAccess();
    v40 = *(v39 + 16);
    if (!*(v40 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 808)), (v42 & 1) == 0))
    {
LABEL_138:
      swift_endAccess();
      __break(1u);
LABEL_139:
      v161 = swift_endAccess();
      __break(1u);
LABEL_140:
      __break(1u);
      return MEMORY[0x1EEDF52A8](v161, v162, v163, v164, v165);
    }

    v43 = *(v0 + 808);
    v44 = *(v0 + 768);
    v45 = *(v0 + 760);
    v46 = *(*(v40 + 56) + 8 * v41);
    goto LABEL_37;
  }

  v29 = *(v0 + 848);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 736), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  swift_beginAccess();
  v30 = *(v29 + 16);
  v31 = v30 + 64;
  v32 = -1 << *(v30 + 32);
  if (-v32 < 64)
  {
    v33 = ~(-1 << -v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v30 + 64);
  v274 = *(v29 + 16);
  if (v34)
  {
    v35 = 0;
    v36 = __clz(__rbit64(v34));
    v37 = (v34 - 1) & v34;
    v38 = (63 - v32) >> 6;
LABEL_24:
    v54 = *(v0 + 768);
    v259 = *(v0 + 584);
    v55 = *(v0 + 576);
    v56 = *(v0 + 552);
    v262 = *(v54 + 72);
    v265 = *(v54 + 16);
    v265(v55, *(v274 + 48) + v262 * v36, *(v0 + 760));
    v268 = v56;
    *(v55 + *(v56 + 48)) = *(*(v274 + 56) + 8 * v36);
    outlined init with take of Range<AttributedString.Index>(v55, v259, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);

    v272 = v8;
    while (v37)
    {
      v57 = v35;
LABEL_32:
      v58 = *(v0 + 584);
      v59 = *(v0 + 568);
      v60 = *(v0 + 560);
      v61 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v62 = v61 | (v57 << 6);
      v265(v60, *(v274 + 48) + v62 * v262, *(v0 + 760));
      *(v60 + *(v268 + 48)) = *(*(v274 + 56) + 8 * v62);
      outlined init with take of Range<AttributedString.Index>(v60, v59, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      if (*(v58 + *(v268 + 48)) >= *(v59 + *(v268 + 48)))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 568), &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      }

      else
      {
        v63 = *(v0 + 584);
        v64 = *(v0 + 568);
        outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
        outlined init with take of Range<AttributedString.Index>(v64, v63, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
      }

      v35 = v57;
      v8 = v272;
    }

    while (1)
    {
      v57 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      if (v57 >= v38)
      {
        break;
      }

      v37 = *(v31 + 8 * v57);
      ++v35;
      if (v37)
      {
        goto LABEL_32;
      }
    }

    v65 = *(v0 + 840);
    v66 = *(v0 + 800);
    v67 = *(v0 + 792);
    v68 = *(v0 + 768);
    v69 = *(v0 + 760);
    v70 = *(v0 + 592);
    v71 = *(v0 + 584);

    outlined init with take of Range<AttributedString.Index>(v71, v70, &_s9Coherence7CRAssetV3key_Si5valuetMd, &_s9Coherence7CRAssetV3key_Si5valuetMR);
    v72 = *(v68 + 32);
    v72(v67, v70, v69);
    v72(v66, v67, v69);
    swift_beginAccess();
    v73 = *(v65 + 16);
    if (!*(v73 + 16))
    {
      goto LABEL_139;
    }

    v74 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 800));
    if ((v75 & 1) == 0)
    {
      goto LABEL_139;
    }

    v43 = *(v0 + 800);
    v44 = *(v0 + 768);
    v45 = *(v0 + 760);
    v46 = *(*(v73 + 56) + 8 * v74);
LABEL_37:
    swift_endAccess();
    v76 = *(v44 + 8);
    v77 = v46;
    v76(v43, v45);
    goto LABEL_38;
  }

  v52 = 0;
  v38 = (63 - v32) >> 6;
  while (v38 - 1 != v52)
  {
    v35 = v52 + 1;
    v53 = *(v30 + 72 + 8 * v52);
    v34 -= 64;
    ++v52;
    if (v53)
    {
      v37 = (v53 - 1) & v53;
      v36 = __clz(__rbit64(v53)) - v34;
      goto LABEL_24;
    }
  }

  v77 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];
LABEL_38:
  *(v0 + 936) = v77;
  v78 = v77;
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v80 = [v78 pageCount];
  v275 = v78;

  if ((v80 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v80)
  {
    v263 = v79;
    v81 = 0;
    v270 = (*(v0 + 480) + 48);
    v82 = *(v0 + 520);
    v255 = (v82 + 56);
    v257 = *(v0 + 472);
    v252 = v82;
    v83 = (v82 + 48);
    v266 = (v82 + 48);
    v260 = v80;
    do
    {
      while (1)
      {
        if (v81 >= v80)
        {
          goto LABEL_128;
        }

        if (__OFADD__(v81, 1))
        {
          goto LABEL_129;
        }

        if (one-time initialization token for lock != -1)
        {
          swift_once();
        }

        v84 = static PaperKitPDFDocument.lock;
        v85 = swift_task_alloc();
        *(v85 + 16) = v275;
        *(v85 + 24) = v81;
        v86 = swift_task_alloc();
        *(v86 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
        *(v86 + 24) = v85;
        os_unfair_lock_lock(v84 + 4);
        closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v87);
        if (v8)
        {
          v124 = v84 + 4;
          goto LABEL_70;
        }

        v273 = (v81 + 1);
        v88 = *(v0 + 464);
        v89 = *(v0 + 472);
        os_unfair_lock_unlock(v84 + 4);

        v90 = *v270;
        if ((*v270)(v88, 1, v89) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 464), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
          v91 = [v275 pageAtIndex_];
          if (!v91)
          {
            goto LABEL_137;
          }

          v92 = v91;
          v93 = *(v0 + 472);
          v94 = *(v0 + 456);
          type metadata accessor for PaperKitPDFPage(0);
          v95 = swift_dynamicCastClassUnconditional();
          v96 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
          swift_beginAccess();
          outlined init with copy of Date?(v95 + v96, v94, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

          if (v90(v94, 1, v93) == 1)
          {
            v97 = *(v0 + 504);
            v98 = *(v0 + 512);
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 456), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
            (*v255)(v97, 1, 1, v98);
            v99 = *(v257 + 20);
            v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
            (*(*(v100 - 8) + 56))(v97 + v99, 1, 1, v100);
          }

          else
          {
            _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 456), *(v0 + 504), type metadata accessor for PageId);
          }

          v80 = v260;
          v83 = v266;
        }

        else
        {
          _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 464), *(v0 + 504), type metadata accessor for PageId);
        }

        v101 = *(v0 + 608);
        v103 = *(v0 + 504);
        v102 = *(v0 + 512);
        outlined init with copy of Date?(v103, v101, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        outlined destroy of PaperDocument.Partial(v103, type metadata accessor for PageId);
        v104 = (*v83)(v101, 1, v102);
        v105 = *(v0 + 608);
        if (v104 != 1)
        {
          break;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        v8 = 0;
        ++v81;
        if (v273 == v80)
        {
          goto LABEL_73;
        }
      }

      v106 = *(v0 + 544);
      v107 = *(v0 + 536);
      _s8PaperKit0A8DocumentVWObTm_0(v105, v106, type metadata accessor for PDFPageID);
      outlined init with copy of PaperDocument.Partial(v106, v107, type metadata accessor for PDFPageID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v279[0] = v263;
      v109 = specialized __RawDictionaryStorage.find<A>(_:)(v107);
      v111 = v263[2];
      v112 = (v110 & 1) == 0;
      v113 = __OFADD__(v111, v112);
      v114 = v111 + v112;
      if (v113)
      {
        goto LABEL_135;
      }

      v115 = v110;
      if (v263[3] >= v114)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v123 = v109;
          specialized _NativeDictionary.copy()();
          v109 = v123;
          v263 = v279[0];
        }
      }

      else
      {
        v116 = *(v0 + 536);
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, isUniquelyReferenced_nonNull_native);
        v263 = v279[0];
        v109 = specialized __RawDictionaryStorage.find<A>(_:)(v116);
        if ((v115 & 1) != (v117 & 1))
        {
          goto LABEL_130;
        }
      }

      v118 = *(v0 + 544);
      v119 = *(v0 + 536);
      if (v115)
      {
        *(v263[7] + 8 * v109) = v81;
        outlined destroy of PaperDocument.Partial(v119, type metadata accessor for PDFPageID);
        outlined destroy of PaperDocument.Partial(v118, type metadata accessor for PDFPageID);
      }

      else
      {
        v263[(v109 >> 6) + 8] |= 1 << v109;
        v120 = v109;
        outlined init with copy of PaperDocument.Partial(v119, v263[6] + *(v252 + 72) * v109, type metadata accessor for PDFPageID);
        *(v263[7] + 8 * v120) = v81;
        outlined destroy of PaperDocument.Partial(v119, type metadata accessor for PDFPageID);
        outlined destroy of PaperDocument.Partial(v118, type metadata accessor for PDFPageID);
        v121 = v263[2];
        v113 = __OFADD__(v121, 1);
        v122 = v121 + 1;
        if (v113)
        {
          goto LABEL_136;
        }

        v263[2] = v122;
      }

      ++v81;
      v8 = 0;
    }

    while (v273 != v80);
LABEL_73:
    v79 = v263;
  }

  v264 = v79;
  *(v0 + 944) = v79;
  v125 = *(v0 + 896);
  v126 = *(v0 + 688);
  v127 = *(v0 + 624);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  if (v125(v126, 1, v127) == 1)
  {
LABEL_75:
    v128 = *(v0 + 840);
    v129 = *(v0 + 832);
    v130 = *(v0 + 320);
    v131 = *(v0 + 312);
    v132 = *(v0 + 296);
    v254(*(v0 + 720), *(v0 + 704));
    swift_beginAccess();
    v133 = *(v128 + 16);
    v279[0] = v129;
    v134 = PaperDocument.update<A>(_:in:otherDocuments:use:)(v275, v132, v133, v279, v131, v130);
    *(v0 + 952) = v134;
    v135 = *(v134 + 32);
    *(v0 + 1040) = v135;
    v136 = -1;
    v137 = -1 << v135;
    if (-(-1 << v135) < 64)
    {
      v136 = ~(-1 << -(-1 << v135));
    }

    v138 = v136 & *(v134 + 56);
    if (!v138)
    {
      v190 = 0;
      v191 = ((63 - v137) >> 6) - 1;
      while (v191 != v190)
      {
        v139 = v190 + 1;
        v138 = *(v134 + 8 * v190++ + 64);
        if (v138)
        {
          goto LABEL_103;
        }
      }

      v200 = *(v0 + 832);
      v202 = *(v0 + 312);
      v201 = *(v0 + 320);
      v204 = *(v0 + 296);
      v203 = *(v0 + 304);

      v279[0] = v200;
      PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v204, v279, v203, v202, v201);
      if (v200 != 0x8000000000000000)
      {
        v205 = *(v0 + 832);
        v207 = *(v0 + 408);
        v206 = *(v0 + 416);
        v209 = *(v0 + 392);
        v208 = *(v0 + 400);
        v210 = *(v0 + 376);
        v211 = *(v0 + 384);
        v212 = *(v0 + 328);
        outlined copy of PaperDocument.PDFDocumentUse(v205);
        outlined consume of PaperDocument.PDFDocumentUse(v205);
        outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
        (*(v211 + 16))(v208, v212, v210);
        (*(v211 + 32))(v209, v208, v210);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995150]);
        dispatch thunk of Sequence.makeIterator()();
        v213 = *(v207 + 36);
        *(v0 + 1036) = v213;
        *(v206 + v213) = 0;
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMR, MEMORY[0x1E6995120]);
        v276 = 0;
        while (1)
        {
          v214 = *(v0 + 896);
          v215 = *(v0 + 680);
          v216 = *(v0 + 624);
          dispatch thunk of IteratorProtocol.next()();
          if (v214(v215, 1, v216) == 1)
          {
            v217 = *(v0 + 360);
            v218 = *(v0 + 336);
            v219 = *(v0 + 344);
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 680), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
            (*(v219 + 56))(v217, 1, 1, v218);
            v220 = v276;
          }

          else
          {
            v221 = *(v0 + 648);
            v222 = *(v0 + 624);
            v223 = *(v0 + 352);
            v224 = *(v0 + 336);
            v225 = *(*(v0 + 632) + 32);
            v225(v221, *(v0 + 680), v222);
            v226 = *(v224 + 48);
            *v223 = v276;
            v225(v223 + v226, v221, v222);
            v220 = v276 + 1;
            if (__OFADD__(v276, 1))
            {
              goto LABEL_134;
            }

            v227 = *(v0 + 352);
            v228 = *(v0 + 360);
            v229 = *(v0 + 336);
            v230 = *(v0 + 344);
            *(*(v0 + 416) + *(v0 + 1036)) = v220;
            outlined init with take of Range<AttributedString.Index>(v227, v228, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMR);
            (*(v230 + 56))(v228, 0, 1, v229);
          }

          *(v0 + 1008) = v220;
          v231 = *(v0 + 368);
          v232 = *(v0 + 336);
          v233 = *(v0 + 344);
          outlined init with take of Range<AttributedString.Index>(*(v0 + 360), v231, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMR);
          if ((*(v233 + 48))(v231, 1, v232) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 416), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMR);
            goto LABEL_124;
          }

          v234 = *(v0 + 936);
          v235 = *(v0 + 368);
          v236 = *v235;
          (*(*(v0 + 632) + 32))(*(v0 + 640), &v235[*(*(v0 + 336) + 48)], *(v0 + 624));
          v237 = [v234 pageAtIndex_];
          *(v0 + 1016) = v237;
          if (v237)
          {
            v238 = v237;
            type metadata accessor for PaperKitPDFPage(0);
            v239 = swift_dynamicCastClass();
            if (v239)
            {
              v240 = v239;
              v241 = *(v0 + 832);
              SharedTagged_3.subscript.getter();
              v242 = *(v0 + 40);
              v243 = *(v0 + 48);
              __swift_project_boxed_opaque_existential_1((v0 + 16), v242);
              *(v0 + 288) = v241;
              v277 = (*(v243 + 168) + **(v243 + 168));
              v244 = swift_task_alloc();
              *(v0 + 1024) = v244;
              *v244 = v0;
              v244[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
              v245 = *(v0 + 312);
              v246 = *(v0 + 320);
              v247 = *(v0 + 296);
              v248 = *(v0 + 304);

              return v277(v240, v0 + 288, v247, v248, v245, v246, v242, v243);
            }
          }

          v276 = v220;
          (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
        }
      }

      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_124:

      v278 = *(v0 + 936);

      v249 = *(v0 + 8);

      return v249(v278);
    }

    v139 = 0;
LABEL_103:
    *(v0 + 968) = v139;
    *(v0 + 960) = v138;
    v192 = *(v0 + 784);
    v193 = *(v0 + 776);
    v194 = *(v0 + 768);
    v195 = *(v0 + 760);
    v196 = *(v134 + 48) + *(v194 + 72) * (__clz(__rbit64(v138)) | (v139 << 6));
    v197 = *(v194 + 16);
    *(v0 + 976) = v197;
    *(v0 + 984) = (v194 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v197(v192, v196, v195);
    (*(v194 + 32))(v193, v192, v195);
    v198 = swift_task_alloc();
    *(v0 + 992) = v198;
    *(v198 + 16) = v193;
    v199 = swift_task_alloc();
    *(v0 + 1000) = v199;
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd, _s8PaperKit0aB11PDFDocumentCSgMR);
    *v199 = v0;
    v199[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
    v163 = &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:);
    v161 = (v0 + 280);
    v162 = 1;
    v164 = v198;

    return MEMORY[0x1EEDF52A8](v161, v162, v163, v164, v165);
  }

  v140 = *(v0 + 632);
  v141 = *(v140 + 32);
  v140 += 32;
  v271 = v141;
  v142 = *(v0 + 520);
  v269 = (v142 + 48);
  v258 = *(v0 + 472);
  v261 = (*(v0 + 480) + 48);
  v250 = (v142 + 56);
  v267 = (v140 - 24);
  v251 = (v140 - 16);
  while (1)
  {
    v147 = *(v0 + 600);
    v148 = *(v0 + 512);
    v271(*(v0 + 664), *(v0 + 688), *(v0 + 624));
    SharedTagged_3.subscript.getter();
    v149 = *(v0 + 80);
    v150 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v149);
    (*(v150 + 112))(v149, v150);
    if ((*v269)(v147, 1, v148) != 1)
    {
      break;
    }

    v143 = *(v0 + 600);
    (*v267)(*(v0 + 664), *(v0 + 624));
    outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_81:
    v144 = *(v0 + 896);
    v145 = *(v0 + 688);
    v146 = *(v0 + 624);
    CROrderedSet.Iterator.next()();
    if (v144(v145, 1, v146) == 1)
    {
      goto LABEL_75;
    }
  }

  _s8PaperKit0A8DocumentVWObTm_0(*(v0 + 600), *(v0 + 528), type metadata accessor for PDFPageID);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (!*(v264 + 16) || (v151 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 528)), (v152 & 1) == 0))
  {
    v176 = *(v0 + 664);
    v177 = *(v0 + 624);
    outlined destroy of PaperDocument.Partial(*(v0 + 528), type metadata accessor for PDFPageID);
    (*v267)(v176, v177);
    goto LABEL_81;
  }

  v153 = *(*(v264 + 56) + 8 * v151);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v154 = static PaperKitPDFDocument.lock;
  v155 = swift_task_alloc();
  *(v155 + 16) = v275;
  *(v155 + 24) = v153;
  v156 = swift_task_alloc();
  *(v156 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
  *(v156 + 24) = v155;
  os_unfair_lock_lock(v154 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v157);
  if (!v8)
  {
    v158 = *(v0 + 472);
    v159 = *(v0 + 448);
    os_unfair_lock_unlock(v154 + 4);

    v160 = *v261;
    v256 = v153;
    if ((*v261)(v159, 1, v158) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 448), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      v161 = [v275 pageAtIndex_];
      if (!v161)
      {
        goto LABEL_140;
      }

      v166 = v161;
      v167 = *(v0 + 472);
      v168 = *(v0 + 440);
      type metadata accessor for PaperKitPDFPage(0);
      v169 = swift_dynamicCastClassUnconditional();
      v170 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      outlined init with copy of Date?(v169 + v170, v168, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

      if (v160(v168, 1, v167) == 1)
      {
        v171 = *(v0 + 512);
        v172 = *(v0 + 496);
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 440), &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        (*v250)(v172, 1, 1, v171);
        v173 = v258;
        v174 = *(v258 + 20);
        v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
        (*(*(v175 - 8) + 56))(v172 + v174, 1, 1, v175);
LABEL_96:
        v180 = *(v0 + 496);
        v181 = *(v0 + 432);
        outlined init with copy of Date?(v180 + *(v173 + 20), v181, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        outlined destroy of PaperDocument.Partial(v180, type metadata accessor for PageId);
        v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
        v183 = *(v182 - 8);
        v184 = (*(v183 + 48))(v181, 1, v182);
        outlined destroy of StocksKitCurrencyCache.Provider?(v181, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        v185 = *(v0 + 664);
        if (v184 == 1)
        {
          v186 = *(v0 + 624);
          v253 = *(v0 + 528);
          v187 = *(v0 + 488);
          v188 = *(v0 + 424);
          (*v251)(*(v0 + 656), v185, v186);
          lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
          WeakTagged_3.init(_:)();
          (*(v183 + 56))(v188, 0, 1, v182);
          PaperKitPDFDocument.subscript.getter(v256, v187);
          outlined assign with take of UUID?(v188, &v187[*(v258 + 20)], &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
          PaperKitPDFDocument.subscript.setter(v187, v256);
          outlined destroy of PaperDocument.Partial(v253, type metadata accessor for PDFPageID);
          (*v267)(v185, v186);
        }

        else
        {
          v189 = *(v0 + 624);
          outlined destroy of PaperDocument.Partial(*(v0 + 528), type metadata accessor for PDFPageID);
          (*v267)(v185, v189);
        }

        v8 = 0;
        goto LABEL_81;
      }

      v178 = *(v0 + 496);
      v179 = *(v0 + 440);
    }

    else
    {
      v178 = *(v0 + 496);
      v179 = *(v0 + 448);
    }

    _s8PaperKit0A8DocumentVWObTm_0(v179, v178, type metadata accessor for PageId);
    v173 = v258;
    goto LABEL_96;
  }

  v124 = v154 + 4;
LABEL_70:
  os_unfair_lock_unlock(v124);
}

{
  v89 = v0;
  v1 = *(v0 + 280);
  if (v1 >= 2)
  {
    if (PaperKitPDFDocument.finishLoading(as:)(*(v0 + 776)))
    {
      v2 = *(v0 + 976);
      v3 = *(v0 + 776);
      v4 = *(v0 + 768);
      v5 = *(v0 + 760);
      v85 = *(v0 + 936);
      v84 = *(v0 + 320);
      v83 = *(v0 + 312);
      v81 = *(v0 + 832);
      v82 = *(v0 + 296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence7CRAssetV_8PaperKit0fG11PDFDocumentCtGMd, &_ss23_ContiguousArrayStorageCy9Coherence7CRAssetV_8PaperKit0fG11PDFDocumentCtGMR);
      v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMd, &_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMR) - 8);
      v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D4058CF0;
      v9 = v8 + v7;
      v10 = v6[14];
      v2(v9, v3, v5);
      *(v9 + v10) = v1;
      v11 = v1;
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(v8);
      swift_setDeallocating();
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMd, &_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMR);
      swift_deallocClassInstance();
      v88[0] = v81;
      PaperDocument.update<A>(_:in:otherDocuments:use:)(v85, v82, v12, v88, v83, v84);

      outlined consume of PaperKitPDFDocument??(v1);
      v13 = (*(v4 + 8))(v3, v5);
      goto LABEL_6;
    }

    outlined consume of PaperKitPDFDocument??(v1);
  }

  v13 = (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));
LABEL_6:
  v18 = *(v0 + 968);
  v19 = (*(v0 + 960) - 1) & *(v0 + 960);
  if (v19)
  {
    v13 = *(v0 + 952);
LABEL_12:
    *(v0 + 968) = v18;
    *(v0 + 960) = v19;
    v21 = *(v0 + 784);
    v22 = *(v0 + 776);
    v23 = *(v0 + 768);
    v24 = *(v0 + 760);
    v25 = *(v13 + 48) + *(v23 + 72) * (__clz(__rbit64(v19)) | (v18 << 6));
    v26 = *(v23 + 16);
    *(v0 + 976) = v26;
    *(v0 + 984) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v21, v25, v24);
    (*(v23 + 32))(v22, v21, v24);
    v27 = swift_task_alloc();
    *(v0 + 992) = v27;
    *(v27 + 16) = v22;
    v28 = swift_task_alloc();
    *(v0 + 1000) = v28;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd, _s8PaperKit0aB11PDFDocumentCSgMR);
    *v28 = v0;
    v28[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
    v15 = &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:);
    v13 = v0 + 280;
    v14 = 1;
    v16 = v27;

    return MEMORY[0x1EEDF52A8](v13, v14, v15, v16, v17);
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return MEMORY[0x1EEDF52A8](v13, v14, v15, v16, v17);
    }

    v13 = *(v0 + 952);
    if (v20 >= (((1 << *(v0 + 1040)) + 63) >> 6))
    {
      break;
    }

    v19 = *(v13 + 8 * v20 + 56);
    ++v18;
    if (v19)
    {
      v18 = v20;
      goto LABEL_12;
    }
  }

  v29 = *(v0 + 832);
  v31 = *(v0 + 312);
  v30 = *(v0 + 320);
  v33 = *(v0 + 296);
  v32 = *(v0 + 304);

  v88[0] = v29;
  PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v33, v88, v32, v31, v30);
  if (v29 != 0x8000000000000000)
  {
    v34 = *(v0 + 832);
    v36 = *(v0 + 408);
    v35 = *(v0 + 416);
    v38 = *(v0 + 392);
    v37 = *(v0 + 400);
    v39 = *(v0 + 376);
    v40 = *(v0 + 384);
    v41 = *(v0 + 328);
    outlined copy of PaperDocument.PDFDocumentUse(v34);
    outlined consume of PaperDocument.PDFDocumentUse(v34);
    outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
    (*(v40 + 16))(v37, v41, v39);
    (*(v40 + 32))(v38, v37, v39);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995150]);
    dispatch thunk of Sequence.makeIterator()();
    v42 = *(v36 + 36);
    *(v0 + 1036) = v42;
    *(v35 + v42) = 0;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMR, MEMORY[0x1E6995120]);
    v43 = 0;
    while (1)
    {
      v44 = *(v0 + 896);
      v45 = *(v0 + 680);
      v46 = *(v0 + 624);
      dispatch thunk of IteratorProtocol.next()();
      if (v44(v45, 1, v46) == 1)
      {
        v47 = *(v0 + 360);
        v48 = *(v0 + 336);
        v49 = *(v0 + 344);
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 680), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
        (*(v49 + 56))(v47, 1, 1, v48);
      }

      else
      {
        v50 = *(v0 + 648);
        v51 = *(v0 + 624);
        v52 = *(v0 + 352);
        v53 = *(v0 + 336);
        v54 = *(*(v0 + 632) + 32);
        v54(v50, *(v0 + 680), v51);
        v55 = *(v53 + 48);
        *v52 = v43;
        v13 = v54(&v52[v55], v50, v51);
        if (__OFADD__(v43++, 1))
        {
          goto LABEL_35;
        }

        v57 = *(v0 + 352);
        v58 = *(v0 + 360);
        v59 = *(v0 + 336);
        v60 = *(v0 + 344);
        *(*(v0 + 416) + *(v0 + 1036)) = v43;
        outlined init with take of Range<AttributedString.Index>(v57, v58, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMR);
        (*(v60 + 56))(v58, 0, 1, v59);
      }

      *(v0 + 1008) = v43;
      v61 = *(v0 + 368);
      v62 = *(v0 + 336);
      v63 = *(v0 + 344);
      outlined init with take of Range<AttributedString.Index>(*(v0 + 360), v61, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMR);
      if ((*(v63 + 48))(v61, 1, v62) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 416), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMR);
        goto LABEL_28;
      }

      v64 = *(v0 + 936);
      v65 = *(v0 + 368);
      v66 = *v65;
      (*(*(v0 + 632) + 32))(*(v0 + 640), &v65[*(*(v0 + 336) + 48)], *(v0 + 624));
      v67 = [v64 pageAtIndex_];
      *(v0 + 1016) = v67;
      if (v67)
      {
        v68 = v67;
        type metadata accessor for PaperKitPDFPage(0);
        v69 = swift_dynamicCastClass();
        if (v69)
        {
          v72 = *(v0 + 832);
          v73 = v69;
          SharedTagged_3.subscript.getter();
          v74 = *(v0 + 40);
          v75 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v74);
          *(v0 + 288) = v72;
          v87 = (*(v75 + 168) + **(v75 + 168));
          v76 = swift_task_alloc();
          *(v0 + 1024) = v76;
          *v76 = v0;
          v76[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
          v77 = *(v0 + 312);
          v78 = *(v0 + 320);
          v79 = *(v0 + 296);
          v80 = *(v0 + 304);

          return v87(v73, v0 + 288, v79, v80, v77, v78, v74, v75);
        }
      }

      (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
    }
  }

  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_28:

  v86 = *(v0 + 936);

  v70 = *(v0 + 8);

  return v70(v86);
}

{

  return MEMORY[0x1EEE6DFA0](PaperDocument.newPDFDocument<A>(use:in:options:), 0, 0);
}

{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = *(v0 + 1008);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMR, MEMORY[0x1E6995120]);
  while (1)
  {
    v5 = *(v0 + 896);
    v6 = *(v0 + 680);
    v7 = *(v0 + 624);
    dispatch thunk of IteratorProtocol.next()();
    if (v5(v6, 1, v7) == 1)
    {
      v8 = *(v0 + 360);
      v9 = *(v0 + 336);
      v10 = *(v0 + 344);
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 680), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    else
    {
      v11 = *(v0 + 648);
      v12 = *(v0 + 624);
      v13 = *(v0 + 352);
      v14 = *(v0 + 336);
      v15 = *(*(v0 + 632) + 32);
      v15(v11, *(v0 + 680), v12);
      v16 = *(v14 + 48);
      *v13 = v4;
      result = v15(&v13[v16], v11, v12);
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return result;
      }

      v19 = *(v0 + 352);
      v20 = *(v0 + 360);
      v21 = *(v0 + 336);
      v22 = *(v0 + 344);
      *(*(v0 + 416) + *(v0 + 1036)) = v4;
      outlined init with take of Range<AttributedString.Index>(v19, v20, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMR);
      (*(v22 + 56))(v20, 0, 1, v21);
    }

    *(v0 + 1008) = v4;
    v23 = *(v0 + 368);
    v24 = *(v0 + 336);
    v25 = *(v0 + 344);
    outlined init with take of Range<AttributedString.Index>(*(v0 + 360), v23, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMR);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v26 = *(v0 + 936);
    v27 = *(v0 + 368);
    v28 = *v27;
    (*(*(v0 + 632) + 32))(*(v0 + 640), &v27[*(*(v0 + 336) + 48)], *(v0 + 624));
    v29 = [v26 pageAtIndex_];
    *(v0 + 1016) = v29;
    if (v29)
    {
      v30 = v29;
      type metadata accessor for PaperKitPDFPage(0);
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v33 = *(v0 + 832);
        v34 = v31;
        SharedTagged_3.subscript.getter();
        v35 = *(v0 + 40);
        v36 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v35);
        *(v0 + 288) = v33;
        v43 = (*(v36 + 168) + **(v36 + 168));
        v37 = swift_task_alloc();
        *(v0 + 1024) = v37;
        *v37 = v0;
        v37[1] = PaperDocument.newPDFDocument<A>(use:in:options:);
        v38 = *(v0 + 312);
        v39 = *(v0 + 320);
        v40 = *(v0 + 296);
        v41 = *(v0 + 304);

        return v43(v34, v0 + 288, v40, v41, v38, v39, v35, v36);
      }
    }

    (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 416), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMR);

  v42 = *(v0 + 936);

  v32 = *(v0 + 8);

  return v32(v42);
}

{
  (*(v0[96] + 8))(v0[103], v0[95]);
  v1 = v0[111];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "Could not create PDFDocument.", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v8 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];

  v6 = v0[1];

  return v6(v8);
}

{
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[84];
  v5 = v0[79];
  v6 = v0[78];
  (*(v0[96] + 8))(v0[102], v0[95]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[115];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D38C4000, v9, v10, "Could not create PDFDocument.", v11, 2u);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  v14 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];

  v12 = v0[1];

  return v12(v14);
}

void PaperDocument.newPDFDocument<A>(use:in:options:)()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](PaperDocument.newPDFDocument<A>(use:in:options:), 0, 0);
  }
}

uint64_t outlined init with copy of PaperDocument.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PaperDocument.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = type metadata accessor for CRAsset();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:), 0, 0);
}

void loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)()
{
  v1 = v0[15];
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0[14]);
    if (v2)
    {
      v3 = v0[16];
      v4 = v0[14];
      swift_endAccess();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v3 + 16);
      *(v3 + 16) = 0x8000000000000000;
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      v9 = v6[2];
      v10 = (v7 & 1) == 0;
      v11 = v9 + v10;
      if (__OFADD__(v9, v10))
      {
        __break(1u);
      }

      else
      {
        v12 = v7;
        if (v6[3] >= v11)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          v13 = v0[14];
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, isUniquelyReferenced_nonNull_native);
          v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
          if ((v12 & 1) != (v15 & 1))
          {

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v8 = v14;
        }

        *(v0[16] + 16) = v6;
        if ((v12 & 1) == 0)
        {
          v18 = v0[19];
          (*(v0[18] + 16))(v18, v0[14], v0[17]);
          specialized _NativeDictionary._insert(at:key:value:)(v8, v18, 0, v6);
        }

        v19 = v6[7];
        v20 = *(v19 + 8 * v8);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (!v21)
        {
          *(v19 + 8 * v8) = v22;
          swift_endAccess();

          v23 = v0[1];

          v23();
          return;
        }
      }

      __break(1u);
      return;
    }
  }

  swift_endAccess();
  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:);
  v17 = v0[14];

  specialized static PaperKitPDFDocument._load(_:)(v17);
}

uint64_t loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:), 0, 0);
}

uint64_t loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[19];
    v3 = v0[16];
    v4 = v0[14];
    (*(v0[18] + 16))(v2, v4, v0[17]);
    swift_beginAccess();
    v5 = v1;
    specialized Dictionary.subscript.setter(v1, v2);
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v4, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v11;
    swift_endAccess();
  }

  else
  {
    v8 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    swift_allocError();
    *v9 = 0x4620464450206F4ELL;
    v9[1] = 0xEB00000000656C69;
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E6995188], v8);
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t PaperDocument.update<A>(_:in:otherDocuments:use:)(unsigned int (**a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v324 = a6;
  v323 = a5;
  v346 = a1;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMR);
  MEMORY[0x1EEE9AC00](v321);
  v320 = (&v265 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v319 = &v265 - v12;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy8PaperKit0E8DocumentV010PDFPageAndE4PageVGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVy8PaperKit0E8DocumentV010PDFPageAndE4PageVGGMR);
  MEMORY[0x1EEE9AC00](v276);
  v306 = &v265 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVys20CollectionDifferenceVy8PaperKit0E8DocumentV010PDFPageAndE4PageVGGMd, &_ss12LazySequenceVys20CollectionDifferenceVy8PaperKit0E8DocumentV010PDFPageAndE4PageVGGMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v272 = &v265 - v15;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGAOGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGAOGMR);
  MEMORY[0x1EEE9AC00](v273);
  v274 = (&v265 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v275 = &v265 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy8PaperKit0C8DocumentV010PDFPageAndC4PageVGMd, &_ss20CollectionDifferenceVy8PaperKit0C8DocumentV010PDFPageAndC4PageVGMR);
  v284 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v286 = &v265 - v20;
  v21 = type metadata accessor for CRAsset();
  v278 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v266 = &v265 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v267 = &v265 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v289 = &v265 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v288 = &v265 - v28;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSg_ADtMd, &_s8PaperKit9PDFPageIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v303);
  v302 = &v265 - v29;
  v30 = type metadata accessor for PDFPageID(0);
  v282 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v299 = (&v265 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v283 = (&v265 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v337 = &v265 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v304 = &v265 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v295 = &v265 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v290 = (&v265 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v312 = &v265 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v317 = &v265 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v340 = (&v265 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v341 = (&v265 - v49);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v325 = *(v338 - 1);
  MEMORY[0x1EEE9AC00](v338);
  v311 = &v265 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v305 = &v265 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v322 = &v265 - v54;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMR);
  v271 = *(v327 - 8);
  MEMORY[0x1EEE9AC00](v327);
  v326 = &v265 - v55;
  v329 = type metadata accessor for CRKeyPath();
  v269 = *(v329 - 8);
  MEMORY[0x1EEE9AC00](v329);
  v287 = &v265 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v316 = &v265 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v313 = &v265 - v60;
  v61 = type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  v339 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v301 = &v265 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v297 = &v265 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v336 = &v265 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v335 = (&v265 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v334 = &v265 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v333 = &v265 - v72;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v281 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v296 = &v265 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v332 = &v265 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v298 = &v265 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v285 = &v265 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v293 = &v265 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v315 = &v265 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v310 = &v265 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v265 - v87;
  v348 = type metadata accessor for PageId(0);
  v280 = *(v348 - 8);
  MEMORY[0x1EEE9AC00](v348);
  v314 = &v265 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *a4;
  v349 = v323;
  v350 = v324;
  v318 = a2;
  v351 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v344 = v61;
  v270 = CROrderedSet.map<A>(_:)();
  v359 = a3;
  v268 = a3;

  result = [v346 pageCount];
  if (result < 0)
  {
    goto LABEL_113;
  }

  v300 = v90;
  v294 = v21;
  v328 = v19;
  v345 = v30;
  v347 = 0;
  v279 = v6;
  v277 = v91;
  if (result)
  {
    v93 = 0;
    v342 = (v280 + 48);
    v292 = (v282 + 56);
    v291 = (v281 + 56);
    v330 = (v281 + 48);
    v309 = (v281 + 32);
    v308 = (v281 + 16);
    v94 = MEMORY[0x1E69E7CC0];
    v307 = (v281 + 8);
    v95 = v314;
    for (i = result; i != v93; result = i)
    {
      v98 = v94;
      v99 = v347;
      if (one-time initialization token for lock != -1)
      {
        result = swift_once();
      }

      v100 = static PaperKitPDFDocument.lock;
      MEMORY[0x1EEE9AC00](result);
      v101 = v346;
      *(&v265 - 2) = v346;
      *(&v265 - 1) = v93;
      MEMORY[0x1EEE9AC00](v102);
      *(&v265 - 2) = partial apply for closure #1 in PaperKitPDFDocument.subscript.getter;
      *(&v265 - 1) = v103;
      os_unfair_lock_lock(v100 + 4);
      partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v104);
      v347 = v99;
      os_unfair_lock_unlock(v100 + 4);
      v105 = *v342;
      v106 = v348;
      if ((*v342)(v88, 1, v348) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v88, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        result = [v101 pageAtIndex_];
        if (!result)
        {
          goto LABEL_114;
        }

        v107 = result;
        type metadata accessor for PaperKitPDFPage(0);
        v108 = swift_dynamicCastClassUnconditional();
        v109 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        swift_beginAccess();
        v110 = v108 + v109;
        v111 = v310;
        outlined init with copy of Date?(v110, v310, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

        v106 = v348;
        v94 = v98;
        if (v105(v111, 1, v348) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
          v95 = v314;
          (*v292)(v314, 1, 1, v345);
          v112 = v343;
          (*v291)(&v95[*(v106 + 20)], 1, 1, v343);
        }

        else
        {
          v95 = v314;
          _s8PaperKit0A8DocumentVWObTm_0(v111, v314, type metadata accessor for PageId);
          v112 = v343;
        }

        v113 = v333;
      }

      else
      {
        _s8PaperKit0A8DocumentVWObTm_0(v88, v95, type metadata accessor for PageId);
        v112 = v343;
        v94 = v98;
        v113 = v333;
      }

      outlined init with copy of Date?(&v95[*(v106 + 20)], v113, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      if ((*v330)(v113, 1, v112) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        outlined init with copy of Date?(v95, v336, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        LOBYTE(v352) = 2;
        static CRKeyPath.unique.getter();
        lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
        WeakTagged_3.init(_:id:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
        }

        v115 = v94[2];
        v114 = v94[3];
        v116 = v115 + 1;
        if (v115 >= v114 >> 1)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v94);
        }

        v96 = &v358;
      }

      else
      {
        v117 = v332;
        (*v309)(v332, v113, v112);
        v118 = v334;
        outlined init with copy of Date?(v95, v334, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        (*v308)(&v118[*(v344 + 20)], v117, v112);
        outlined init with copy of PaperDocument.Partial(v118, v335, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
        }

        v115 = v94[2];
        v119 = v94[3];
        v116 = v115 + 1;
        if (v115 >= v119 >> 1)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v115 + 1, 1, v94);
        }

        outlined destroy of PaperDocument.Partial(v334, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
        (*v307)(v332, v112);
        v96 = v357;
      }

      v97 = *(v96 - 32);
      ++v93;
      outlined destroy of PaperDocument.Partial(v95, type metadata accessor for PageId);
      v94[2] = v116;
      _s8PaperKit0A8DocumentVWObTm_0(v97, v94 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v115, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
    }
  }

  else
  {
    v94 = MEMORY[0x1E69E7CC0];
  }

  v309 = v94;
  v356 = MEMORY[0x1E69E7CD0];
  CROrderedSet.makeIterator()();
  v120 = v346;
  v336 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  swift_beginAccess();
  v121 = v322;
  CROrderedSet.Iterator.next()();
  v122 = v325;
  v123 = *(v325 + 48);
  v124 = v338;
  v333 = (v325 + 48);
  v332 = v123;
  if ((v123)(v121, 1, v338) == 1)
  {
LABEL_27:
    (*(v271 + 8))(v326, v327);
    v352 = v270;
    v355 = v309;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit0A8DocumentV010PDFPageAndA4PageVGMd, &_sSay8PaperKit0A8DocumentV010PDFPageAndA4PageVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PaperDocument.PDFPageAndPaperPage] and conformance [A], &_sSay8PaperKit0A8DocumentV010PDFPageAndA4PageVGMd, &_sSay8PaperKit0A8DocumentV010PDFPageAndA4PageVGMR, MEMORY[0x1E69E6310]);
    lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type PaperDocument.PDFPageAndPaperPage and conformance PaperDocument.PDFPageAndPaperPage, type metadata accessor for PaperDocument.PDFPageAndPaperPage, &protocol conformance descriptor for PaperDocument.PDFPageAndPaperPage);
    v125 = v286;
    BidirectionalCollection<>.difference<A>(from:)();

    v126 = v284;
    v127 = *(v284 + 16);
    v128 = v272;
    v129 = v125;
    v130 = v328;
    v127(v272, v129, v328);
    v131 = *(v126 + 32);
    v132 = v274;
    v131(v274, v128, v130);
    v133 = (v132 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys20CollectionDifferenceVy8PaperKit0F8DocumentV010PDFPageAndF4PageVG9Coherence7CRAssetVSgGMd, &_ss15LazyMapSequenceVys20CollectionDifferenceVy8PaperKit0F8DocumentV010PDFPageAndF4PageVG9Coherence7CRAssetVSgGMR) + 44));
    *v133 = closure #3 in PaperDocument.update<A>(_:in:otherDocuments:use:);
    v133[1] = 0;
    v134 = (v132 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGMR) + 36));
    *v134 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
    v134[1] = 0;
    v135 = (v132 + *(v273 + 44));
    *v135 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
    v135[1] = 0;
    v136 = v120;
    v137 = v275;
    v342 = v136;
    specialized Sequence.first(where:)(v132, &v359, v136, v275);
    outlined destroy of StocksKitCurrencyCache.Provider?(v132, &_ss15LazyMapSequenceVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGAOGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABys20CollectionDifferenceVy8PaperKit0G8DocumentV010PDFPageAndG4PageVG9Coherence7CRAssetVSgGGAOGMR);

    v138 = v278;
    v139 = v294;
    if ((*(v278 + 48))(v137, 1, v294) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v137, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      v140 = v306;
    }

    else
    {
      v216 = v267;
      (*(v138 + 32))(v267, v137, v139);
      v217 = v266;
      (*(v138 + 16))(v266, v216, v139);
      v218 = v268;
      v140 = v306;
      if (*(v268 + 16) && (v219 = specialized __RawDictionaryStorage.find<A>(_:)(v216), (v220 & 1) != 0))
      {
        [*(*(v218 + 56) + 8 * v219) copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for PaperKitPDFDocument();
        if (swift_dynamicCast())
        {
          v221 = v355;
        }

        else
        {
          v221 = 0;
        }
      }

      else
      {
        v221 = 0;
      }

      swift_beginAccess();
      specialized Dictionary.subscript.setter(v221, v217);
      swift_endAccess();
      (*(v138 + 8))(v216, v294);
    }

    v222 = v328;
    v127(v140, v286, v328);
    v223 = *(v276 + 36);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<PaperDocument.PDFPageAndPaperPage> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy8PaperKit0C8DocumentV010PDFPageAndC4PageVGMd, &_ss20CollectionDifferenceVy8PaperKit0C8DocumentV010PDFPageAndC4PageVGMR, MEMORY[0x1E69E6F00]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v224 = v301;
    v225 = v342;
    if (*(v140 + v223) == v352)
    {
LABEL_85:
      outlined destroy of StocksKitCurrencyCache.Provider?(v140, &_ss16IndexingIteratorVys20CollectionDifferenceVy8PaperKit0E8DocumentV010PDFPageAndE4PageVGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVy8PaperKit0E8DocumentV010PDFPageAndE4PageVGGMR);
      (*(v284 + 8))(v286, v222);
      v226 = v356;

      return v226;
    }

    v346 = (v282 + 48);
    v341 = (v282 + 56);
    v340 = (v281 + 16);
    v339 = v281 + 56;
    v338 = (v280 + 56);
    v335 = (v138 + 16);
    v334 = (v138 + 8);
    v337 = v300 >> 62;
    v336 = v300 & 0x3FFFFFFFFFFFFFFFLL;
    v347 = v223;
    while (1)
    {
      v230 = dispatch thunk of Collection.subscript.read();
      v231 = v319;
      outlined init with copy of Date?(v232, v319, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMR);
      v230(&v352, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v233 = v320;
      outlined init with take of Range<AttributedString.Index>(v231, v320, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMR);
      LODWORD(v230) = swift_getEnumCaseMultiPayload();
      v234 = *v233;
      v235 = v233 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_8PaperKit0B8DocumentV010PDFPageAndB4PageV7elementSiSg14associatedWithtMd, &_sSi6offset_8PaperKit0B8DocumentV010PDFPageAndB4PageV7elementSiSg14associatedWithtMR) + 48);
      if (v230 != 1)
      {
        break;
      }

      v227 = v235;
      [v225 removePageAtIndex_];
      v228 = v227;
      v222 = v328;
      v229 = v347;
LABEL_87:
      outlined destroy of PaperDocument.Partial(v228, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v140 + v229) == v352)
      {
        goto LABEL_85;
      }
    }

    _s8PaperKit0A8DocumentVWObTm_0(v235, v224, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
    v236 = v304;
    outlined init with copy of Date?(v224, v304, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    if ((*v346)(v236, 1, v345) != 1)
    {
      v247 = v299;
      _s8PaperKit0A8DocumentVWObTm_0(v236, v299, type metadata accessor for PDFPageID);
      v248 = *(v344 + 20);
      v249 = specialized closure #2 in PaperDocument.update<A>(_:in:otherDocuments:use:)(v247, v224 + v248, v225, &v359);
      if (v249)
      {
        v250 = v249;
        v242 = v249;
      }

      else
      {
        v251 = v300;
        if (v300 == 0x8000000000000000)
        {
          outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
          outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
          type metadata accessor for PaperKitPDFPage(0);
          if (one-time initialization token for blankPageImage != -1)
          {
            swift_once();
          }

          v252 = v224;
          result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage_];
          if (!result)
          {
            goto LABEL_116;
          }
        }

        else
        {
          v252 = v224;
          outlined copy of PaperDocument.PDFDocumentUse(v300);
          outlined consume of PaperDocument.PDFDocumentUse(v251);
          outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
          result = [objc_allocWithZone(type metadata accessor for PaperKitPDFPage(0)) init];
        }

        v242 = result;
        [v242 setBounds:0 forBox:{0.0, 0.0, 612.0, 792.0}];
        v253 = v298;
        v254 = v345;
        (*v341)(v298, 1, 1, v345);
        v255 = v348;
        v256 = *(v348 + 20);
        v257 = v252 + v248;
        v258 = v343;
        (*v340)(v253 + v256, v257, v343);
        (*v339)(v253 + v256, 0, 1, v258);
        (*v338)(v253, 0, 1, v255);
        v259 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        swift_beginAccess();
        outlined assign with take of UUID?(v253, &v242[v259], &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        swift_endAccess();
        v247 = v299;
        v260 = v289;
        v261 = v294;
        (*v335)(v289, v299 + *(v254 + 20), v294);
        v262 = v288;
        v263 = v260;
        v224 = v301;
        specialized Set._Variant.insert(_:)(v288, v263);
        (*v334)(v262, v261);
        v250 = 0;
        v225 = v342;
      }

      outlined destroy of PaperDocument.Partial(v247, type metadata accessor for PDFPageID);
      v264 = v250;
      v222 = v328;
      goto LABEL_110;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v236, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    v237 = v300;
    v238 = v300;
    v239 = v348;
    if (v337 && (v238 = v336, v337 != 1))
    {
      v241 = v328;
      if (v300 == 0x8000000000000000)
      {
        outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
        outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
        type metadata accessor for PaperKitPDFPage(0);
        if (one-time initialization token for blankPageImage != -1)
        {
          swift_once();
        }

        result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage_];
        v239 = v348;
        if (!result)
        {
          goto LABEL_117;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v240 = v238;
      v241 = v328;
    }

    outlined consume of PaperDocument.PDFDocumentUse(v237);
    outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
    result = [objc_allocWithZone(type metadata accessor for PaperKitPDFPage(0)) init];
LABEL_94:
    v242 = result;
    [v242 setBounds:0 forBox:{0.0, 0.0, 612.0, 792.0}];
    v243 = v298;
    (*v341)(v298, 1, 1, v345);
    v244 = *(v239 + 20);
    v224 = v301;
    v245 = v343;
    (*v340)(v243 + v244, &v301[*(v344 + 20)], v343);
    (*v339)(v243 + v244, 0, 1, v245);
    (*v338)(v243, 0, 1, v239);
    v246 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
    swift_beginAccess();
    outlined assign with take of UUID?(v243, &v242[v246], &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
    swift_endAccess();
    v222 = v241;
    v225 = v342;
LABEL_110:
    v229 = v347;
    [v225 insertPage:v242 atIndex:v234];

    v228 = v224;
    v140 = v306;
    goto LABEL_87;
  }

  v142 = *(v122 + 32);
  v141 = v122 + 32;
  i = v142;
  v307 = (v280 + 48);
  v335 = (v269 + 8);
  v342 = (v282 + 56);
  v277 = (v281 + 56);
  v330 = (v280 + 56);
  v314 = (v282 + 48);
  v313 = (v141 - 24);
  v310 = (v141 - 16);
  v292 = (v281 + 8);
  v291 = (v278 + 16);
  v279 = (v278 + 8);
  v143 = v341;
  v325 = v141;
  v144 = v305;
  (v142)(v305, v121, v124);
  while (1)
  {
    v146 = v316;
    MEMORY[0x1DA6CB6F0](v124);
    v147 = *&v120[v336];
    if (!*(v147 + 16))
    {
      goto LABEL_42;
    }

    v148 = specialized __RawDictionaryStorage.find<A>(_:)(v146);
    if ((v149 & 1) == 0)
    {

LABEL_42:
      v334 = *v335;
      (v334)(v146, v329);
      v168 = v315;
      (*v330)(v315, 1, 1, v348);
      outlined destroy of StocksKitCurrencyCache.Provider?(v168, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      v169 = v345;
      (*v342)(v143, 1, 1, v345);
      goto LABEL_47;
    }

    v150 = *(*(v147 + 56) + 8 * v148);

    if (one-time initialization token for lock != -1)
    {
      v151 = swift_once();
    }

    v152 = static PaperKitPDFDocument.lock;
    MEMORY[0x1EEE9AC00](v151);
    *(&v265 - 2) = v120;
    *(&v265 - 1) = v150;
    MEMORY[0x1EEE9AC00](v153);
    *(&v265 - 2) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
    *(&v265 - 1) = v154;
    os_unfair_lock_lock(v152 + 4);
    v155 = v120;
    v156 = v293;
    v157 = v347;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v158);
    v347 = v157;
    os_unfair_lock_unlock(v152 + 4);
    v159 = *v307;
    v160 = v348;
    if ((*v307)(v156, 1, v348) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v156, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      result = [v155 pageAtIndex_];
      v161 = v341;
      if (!result)
      {
        goto LABEL_115;
      }

      v162 = result;
      v334 = *v335;
      (v334)(v146, v329);
      type metadata accessor for PaperKitPDFPage(0);
      v163 = swift_dynamicCastClassUnconditional();
      v164 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      v165 = v163 + v164;
      v166 = v285;
      outlined init with copy of Date?(v165, v285, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

      v160 = v348;
      if (v159(v166, 1, v348) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v166, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        v167 = v315;
        (*v342)(v315, 1, 1, v345);
        (*v277)(v167 + *(v160 + 20), 1, 1, v343);
      }

      else
      {
        v167 = v315;
        _s8PaperKit0A8DocumentVWObTm_0(v166, v315, type metadata accessor for PageId);
      }

      v124 = v338;
    }

    else
    {
      v334 = *v335;
      (v334)(v146, v329);
      v167 = v315;
      _s8PaperKit0A8DocumentVWObTm_0(v156, v315, type metadata accessor for PageId);
      v161 = v341;
      v124 = v338;
    }

    (*v330)(v167, 0, 1, v160);
    outlined init with copy of Date?(v167, v161, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    outlined destroy of PaperDocument.Partial(v167, type metadata accessor for PageId);
    v169 = v345;
LABEL_47:
    SharedTagged_3.subscript.getter();
    v170 = v144;
    v171 = v124;
    v172 = v353;
    v173 = v354;
    __swift_project_boxed_opaque_existential_1(&v352, v353);
    v174 = v340;
    (*(v173 + 112))(v172, v173);
    __swift_destroy_boxed_opaque_existential_0(&v352);
    v175 = v317;
    outlined init with copy of Date?(v174, v317, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    v176 = *v314;
    if ((*v314)(v175, 1, v169) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v174, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      v143 = v341;
      outlined destroy of StocksKitCurrencyCache.Provider?(v341, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      (*v313)(v170, v171);
      outlined destroy of StocksKitCurrencyCache.Provider?(v175, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      v120 = v346;
      v124 = v171;
      v144 = v170;
      goto LABEL_31;
    }

    v177 = v175;
    v178 = v337;
    _s8PaperKit0A8DocumentVWObTm_0(v177, v337, type metadata accessor for PDFPageID);
    v179 = v312;
    outlined init with copy of PaperDocument.Partial(v178, v312, type metadata accessor for PDFPageID);
    v180 = *v342;
    (*v342)(v179, 0, 1, v169);
    v181 = *(v303 + 48);
    v182 = v302;
    outlined init with copy of Date?(v179, v302, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    v143 = v341;
    outlined init with copy of Date?(v341, v182 + v181, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    if (v176(v182, 1, v169) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v179, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      if (v176(v182 + v181, 1, v169) == 1)
      {
        outlined destroy of PaperDocument.Partial(v337, type metadata accessor for PDFPageID);
        outlined destroy of StocksKitCurrencyCache.Provider?(v340, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        v144 = v305;
        v124 = v338;
        (*v313)(v305, v338);
        outlined destroy of StocksKitCurrencyCache.Provider?(v182, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
LABEL_69:
        v120 = v346;
        goto LABEL_31;
      }

      goto LABEL_53;
    }

    v183 = v290;
    outlined init with copy of Date?(v182, v290, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    if (v176(v182 + v181, 1, v169) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v312, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      outlined destroy of PaperDocument.Partial(v183, type metadata accessor for PDFPageID);
LABEL_53:
      v184 = v182;
      v185 = &_s8PaperKit9PDFPageIDVSg_ADtMd;
      v186 = &_s8PaperKit9PDFPageIDVSg_ADtMR;
LABEL_54:
      outlined destroy of StocksKitCurrencyCache.Provider?(v184, v185, v186);
      v187 = v337;
      v124 = v338;
      goto LABEL_55;
    }

    v206 = v182 + v181;
    v207 = v283;
    _s8PaperKit0A8DocumentVWObTm_0(v206, v283, type metadata accessor for PDFPageID);
    if (*v183 != *v207)
    {
      outlined destroy of PaperDocument.Partial(v207, type metadata accessor for PDFPageID);
      outlined destroy of StocksKitCurrencyCache.Provider?(v312, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      outlined destroy of PaperDocument.Partial(v183, type metadata accessor for PDFPageID);
      v184 = v182;
      v185 = &_s8PaperKit9PDFPageIDVSgMd;
      v186 = &_s8PaperKit9PDFPageIDVSgMR;
      goto LABEL_54;
    }

    v208 = static CRAsset.== infix(_:_:)();
    outlined destroy of PaperDocument.Partial(v207, type metadata accessor for PDFPageID);
    outlined destroy of StocksKitCurrencyCache.Provider?(v312, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    outlined destroy of PaperDocument.Partial(v183, type metadata accessor for PDFPageID);
    outlined destroy of StocksKitCurrencyCache.Provider?(v182, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    v187 = v337;
    v124 = v338;
    if (v208)
    {
      outlined destroy of PaperDocument.Partial(v337, type metadata accessor for PDFPageID);
      outlined destroy of StocksKitCurrencyCache.Provider?(v340, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      v144 = v305;
      (*v313)(v305, v124);
      goto LABEL_69;
    }

LABEL_55:
    v308 = v180;
    v188 = *v310;
    v189 = v305;
    (*v310)(v311, v305, v124);
    lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
    v190 = v296;
    WeakTagged_3.init(_:)();
    v191 = v346;
    v192 = v124;
    v193 = specialized closure #2 in PaperDocument.update<A>(_:in:otherDocuments:use:)(v187, v190, v346, &v359);
    (*v292)(v190, v343);
    if (!v193)
    {
      v202 = v289;
      v203 = v294;
      (*v291)(v289, v187 + *(v169 + 20), v294);
      v204 = v288;
      v205 = v202;
      v143 = v341;
      specialized Set._Variant.insert(_:)(v288, v205);
      (*v279)(v204, v203);
      v144 = v189;
LABEL_64:
      v197 = v297;
      goto LABEL_67;
    }

    v194 = v287;
    MEMORY[0x1DA6CB6F0](v192);
    v195 = *&v191[v336];
    v144 = v189;
    if (!*(v195 + 16))
    {

      (v334)(v194, v329);
      v169 = v345;
      goto LABEL_64;
    }

    v196 = specialized __RawDictionaryStorage.find<A>(_:)(v194);
    v197 = v297;
    if (v198)
    {
      v199 = *(*(v195 + 56) + 8 * v196);
      (v334)(v194, v329);

      v200 = v346;
      [v346 removePageAtIndex_];
      v201 = v199;
      v143 = v341;
      [v200 insertPage:v193 atIndex:v201];
    }

    else
    {

      (v334)(v194, v329);
    }

    v169 = v345;
LABEL_67:
    outlined init with copy of Date?(v143, v197, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    v124 = v338;
    v188(v311, v144, v338);
    WeakTagged_3.init(_:)();
    v209 = v309;
    v210 = specialized Collection<>.firstIndex(of:)(v197, v309);
    if (v211)
    {
      outlined destroy of PaperDocument.Partial(v197, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
      outlined destroy of PaperDocument.Partial(v337, type metadata accessor for PDFPageID);
      outlined destroy of StocksKitCurrencyCache.Provider?(v340, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      (*v313)(v144, v124);
      goto LABEL_69;
    }

    v212 = v210;
    v213 = v337;
    v214 = v295;
    outlined init with copy of PaperDocument.Partial(v337, v295, type metadata accessor for PDFPageID);
    (v308)(v214, 0, 1, v169);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v209 = specialized _ArrayBuffer._consumeAndCreateNew()(v209);
    }

    v124 = v338;
    v120 = v346;
    outlined destroy of PaperDocument.Partial(v197, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
    outlined destroy of PaperDocument.Partial(v213, type metadata accessor for PDFPageID);
    outlined destroy of StocksKitCurrencyCache.Provider?(v340, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    result = (*v313)(v144, v124);
    if ((v212 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v212 >= v209[2])
    {
      goto LABEL_112;
    }

    v215 = (*(v339 + 80) + 32) & ~*(v339 + 80);
    v309 = v209;
    outlined assign with take of UUID?(v295, v209 + v215 + *(v339 + 72) * v212, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
LABEL_31:
    v145 = v322;
    CROrderedSet.Iterator.next()();
    if ((v332)(v145, 1, v124) == 1)
    {
      goto LABEL_27;
    }

    (i)(v144, v145, v124);
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

uint64_t PaperDocument.PDFPageAndPaperPage.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for PDFPageID(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Date?(v1, v4, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    MEMORY[0x1DA6CD010](0xD000000000000010, 0x80000001D408C640);
    type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1DA6CD010](125, 0xE100000000000000);
    return v19;
  }

  else
  {
    _s8PaperKit0A8DocumentVWObTm_0(v4, v8, type metadata accessor for PDFPageID);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    MEMORY[0x1DA6CD010](0x3A6664707BLL, 0xE500000000000000);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v17 = 979857531;
    v18 = 0xE400000000000000;
    v16[1] = *v8;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1DA6CD010](v10);

    MEMORY[0x1DA6CD010](0x3A7465737361202CLL, 0xE800000000000000);
    v11 = CRAsset.digest.getter();
    v13 = v12;
    v14 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v11, v13);
    MEMORY[0x1DA6CD010](v14._countAndFlagsBits, v14._object);

    MEMORY[0x1DA6CD010](125, 0xE100000000000000);
    MEMORY[0x1DA6CD010](v17, v18);

    MEMORY[0x1DA6CD010](0x3A7265706170202CLL, 0xE800000000000000);
    type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1DA6CD010](125, 0xE100000000000000);
    v9 = v19;
    outlined destroy of PaperDocument.Partial(v8, type metadata accessor for PDFPageID);
  }

  return v9;
}

uint64_t PaperDocument.PDFPageAndPaperPage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PDFPageID(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of Date?(v2, &v11 - v8, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    _s8PaperKit0A8DocumentVWObTm_0(v9, v6, type metadata accessor for PDFPageID);
    Hasher._combine(_:)(1u);
    MEMORY[0x1DA6CE810](*v6);
    type metadata accessor for CRAsset();
    lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of PaperDocument.Partial(v6, type metadata accessor for PDFPageID);
  }

  type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_3<TaggedPaperPage> and conformance WeakTagged_3<A>, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995168]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PaperDocument.PDFPageAndPaperPage.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PDFPageID(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  Hasher.init(_seed:)();
  outlined init with copy of Date?(v1, v8, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    _s8PaperKit0A8DocumentVWObTm_0(v8, v5, type metadata accessor for PDFPageID);
    Hasher._combine(_:)(1u);
    MEMORY[0x1DA6CE810](*v5);
    type metadata accessor for CRAsset();
    lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of PaperDocument.Partial(v5, type metadata accessor for PDFPageID);
  }

  type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_3<TaggedPaperPage> and conformance WeakTagged_3<A>, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995168]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PaperDocument.PDFPageAndPaperPage(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PDFPageID(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  Hasher.init(_seed:)();
  outlined init with copy of Date?(v2, v9, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    _s8PaperKit0A8DocumentVWObTm_0(v9, v6, type metadata accessor for PDFPageID);
    Hasher._combine(_:)(1u);
    MEMORY[0x1DA6CE810](*v6);
    type metadata accessor for CRAsset();
    lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of PaperDocument.Partial(v6, type metadata accessor for PDFPageID);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_3<TaggedPaperPage> and conformance WeakTagged_3<A>, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995168]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t closure #1 in PaperDocument.update<A>(_:in:otherDocuments:use:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - v7;
  SharedTagged_3.subscript.getter();
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v10 + 112))(v9, v10);
  (*(v6 + 16))(v8, a1, v5);
  type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  WeakTagged_3.init(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

char *specialized closure #2 in PaperDocument.update<A>(_:in:otherDocuments:use:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v107 = a4;
  v109 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v95 - v9;
  v108 = type metadata accessor for PDFPageID(0);
  v10 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v99 = (&v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSg_ADtMd, &_s8PaperKit9PDFPageIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v95 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v104 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v100 = (&v95 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v95 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v95 - v25;
  v26 = type metadata accessor for CRKeyPath();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  MEMORY[0x1DA6CB4C0]();
  v30 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  swift_beginAccess();
  v31 = *&a3[v30];
  if (!*(v31 + 16))
  {
    goto LABEL_8;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
  if ((v33 & 1) == 0)
  {

LABEL_8:
    (*(v27 + 8))(v29, v26);
    goto LABEL_9;
  }

  v34 = *(v31 + 56);
  v98 = a2;
  v35 = *(v34 + 8 * v32);

  v36 = v35;
  a2 = v98;
  v37 = [a3 pageAtIndex_];
  (*(v27 + 8))(v29, v26);
  if (v37)
  {
    type metadata accessor for PaperKitPDFPage(0);
    v38 = swift_dynamicCastClass();
    v39 = v37;
    if (v38)
    {
      v40 = v38;
      v96 = v39;
      v41 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      outlined init with copy of Date?(&v40[v41], v16, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      v42 = type metadata accessor for PageId(0);
      if ((*(*(v42 - 8) + 48))(v16, 1, v42))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        v43 = *(v10 + 56);
        v44 = v102;
        v45 = v10;
        v46 = v108;
        v43(v102, 1, 1, v108);
      }

      else
      {
        v44 = v102;
        outlined init with copy of Date?(v16, v102, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        v45 = v10;
        v46 = v108;
      }

      outlined init with copy of PaperDocument.Partial(v109, v23, type metadata accessor for PDFPageID);
      (*(v45 + 56))(v23, 0, 1, v46);
      v83 = *(v12 + 48);
      v84 = v103;
      outlined init with copy of Date?(v44, v103, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      v85 = v84;
      outlined init with copy of Date?(v23, v84 + v83, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
      v97 = v45;
      v86 = v44;
      v87 = *(v45 + 48);
      if (v87(v85, 1, v46) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        v85 = v103;
        outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        if (v87(v85 + v83, 1, v46) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
          return v40;
        }
      }

      else
      {
        v88 = v100;
        outlined init with copy of Date?(v85, v100, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        if (v87(v85 + v83, 1, v46) != 1)
        {
          v92 = v99;
          _s8PaperKit0A8DocumentVWObTm_0(v85 + v83, v99, type metadata accessor for PDFPageID);
          if (*v88 == *v92)
          {
            v93 = v88;
            v94 = static CRAsset.== infix(_:_:)();
            outlined destroy of PaperDocument.Partial(v92, type metadata accessor for PDFPageID);
            outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
            outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
            outlined destroy of PaperDocument.Partial(v93, type metadata accessor for PDFPageID);
            outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
            a2 = v98;
            if (v94)
            {
              return v40;
            }

            goto LABEL_35;
          }

          outlined destroy of PaperDocument.Partial(v92, type metadata accessor for PDFPageID);
          outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
          outlined destroy of PaperDocument.Partial(v88, type metadata accessor for PDFPageID);
          v91 = v85;
          v89 = &_s8PaperKit9PDFPageIDVSgMd;
          v90 = &_s8PaperKit9PDFPageIDVSgMR;
LABEL_34:
          outlined destroy of StocksKitCurrencyCache.Provider?(v91, v89, v90);
          a2 = v98;
LABEL_35:

          v10 = v97;
          goto LABEL_9;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        outlined destroy of PaperDocument.Partial(v88, type metadata accessor for PDFPageID);
      }

      v89 = &_s8PaperKit9PDFPageIDVSg_ADtMd;
      v90 = &_s8PaperKit9PDFPageIDVSg_ADtMR;
      v91 = v85;
      goto LABEL_34;
    }
  }

LABEL_9:
  v47 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  swift_beginAccess();
  v48 = *&a3[v47];
  v50 = v108;
  v49 = v109;
  if (!*(v48 + 16))
  {
    goto LABEL_16;
  }

  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
  if ((v52 & 1) == 0)
  {

    goto LABEL_16;
  }

  v53 = *(*(v48 + 56) + 8 * v51);

  v54 = [a3 pageAtIndex_];
  if (!v54)
  {
LABEL_16:
    v67 = v107;
    swift_beginAccess();
    v68 = *v67;
    if (!*(*v67 + 16) || (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v49 + *(v50 + 20)), (v70 & 1) == 0))
    {
      swift_endAccess();
      return 0;
    }

    v71 = *(*(v68 + 56) + 8 * v69);
    swift_endAccess();
    v72 = *v49;
    v55 = v71;
    result = [v55 pageAtIndex_];
    if (result)
    {
      v73 = result;
      v74 = a2;
      [result copy];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for PaperKitPDFPage(0);
      swift_dynamicCast();
      v75 = v110;
      v76 = v104;
      outlined init with copy of PaperDocument.Partial(v49, v104, type metadata accessor for PDFPageID);
      (*(v10 + 56))(v76, 0, 1, v50);
      v77 = v75 + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      v78 = type metadata accessor for PageId(0);
      v79 = *(*(v78 - 8) + 48);
      result = v79(v77, 1, v78);
      v80 = v105;
      if (result != 1)
      {
        v40 = v75;
        outlined assign with take of UUID?(v76, v77, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
        swift_endAccess();
        v81 = v106;
        v82 = *(v106 - 8);
        (*(v82 + 16))(v80, v74, v106);
        (*(v82 + 56))(v80, 0, 1, v81);
        swift_beginAccess();
        result = v79(v77, 1, v78);
        if (result != 1)
        {
          v65 = v77 + *(v78 + 20);
          v66 = v80;
          goto LABEL_22;
        }

        goto LABEL_42;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v55 = v54;
  type metadata accessor for PaperKitPDFPage(0);
  v56 = swift_dynamicCastClass();
  if (!v56)
  {

    goto LABEL_16;
  }

  [v56 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v57 = v110;
  v58 = v106;
  v59 = *(v106 - 8);
  v60 = v101;
  (*(v59 + 16))(v101, a2, v106);
  (*(v59 + 56))(v60, 0, 1, v58);
  v61 = &v57[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId];
  swift_beginAccess();
  v62 = type metadata accessor for PageId(0);
  result = (*(*(v62 - 8) + 48))(v61, 1, v62);
  if (result != 1)
  {
    v64 = *(v62 + 20);
    v40 = v57;
    v65 = &v61[v64];
    v66 = v60;
LABEL_22:
    outlined assign with take of UUID?(v66, v65, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    swift_endAccess();

    return v40;
  }

LABEL_43:
  __break(1u);
  return result;
}