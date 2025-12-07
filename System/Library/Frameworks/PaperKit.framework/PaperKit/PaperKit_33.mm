Swift::Void __swiftcall Image.setContentsBounds(_:)(PaperKit::Quad *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - v6);
  topRight = a1->topRight;
  *v7 = a1->topLeft;
  v7[1] = topRight;
  bottomRight = a1->bottomRight;
  v7[2] = a1->bottomLeft;
  v7[3] = bottomRight;
  v10 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

uint64_t Image.init(url:imageWidth:assetManager:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for Image(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v18);
  v21 = (v7 + 8);
  v22 = (v17 + 48);
  if ((v27 & 1) == 0)
  {
    Image.init(url:targetPageSize:assetManager:)(v9, v26, v26, 0, v28, v12);
    (*v21)(a1, v6);
    if ((*v22)(v12, 1, v16))
    {
      goto LABEL_3;
    }

LABEL_5:
    outlined init with take of Image(v12, v20, type metadata accessor for Image);
    v24 = v29;
    outlined init with take of Image(v20, v29, type metadata accessor for Image);
    v23 = 0;
    return (*(v17 + 56))(v24, v23, 1, v16);
  }

  Image.init(url:targetPageSize:assetManager:)(v9, 0.0, 0.0, 1, v28, v15);
  (*v21)(a1, v6);
  v12 = v15;
  if (!(*v22)(v15, 1, v16))
  {
    goto LABEL_5;
  }

LABEL_3:
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  v23 = 1;
  v24 = v29;
  return (*(v17 + 56))(v24, v23, 1, v16);
}

uint64_t Image.init(url:targetPageSize:assetManager:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, double a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a5;
  v97 = a4;
  v94 = a3;
  v93 = a2;
  v107 = a1;
  v113 = a6;
  v112 = type metadata accessor for URL();
  v108 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v98 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ImageMetadata(0);
  MEMORY[0x1EEE9AC00](v109);
  v106 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v92 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v92 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v102);
  v114 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v92 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v92 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v99);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v92 - v25;
  v27 = type metadata accessor for Image(0);
  v110 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v116 = 0u;
  *v117 = 0u;
  CRRegister.init(wrappedValue:)();
  v30 = *(v27 + 20);
  v116 = 0u;
  *v117 = 0u;
  v96 = v30;
  CRRegister.init(wrappedValue:)();
  *&v116 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v31 = type metadata accessor for ContentsBounds(0);
  (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
  outlined init with copy of Date?(v26, v23, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v32 = type metadata accessor for ImageFilter(0);
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  outlined init with copy of Date?(v21, v100, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  lazy protocol witness table accessor for type ImageFilter? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  v33 = *(v27 + 36);
  v34 = type metadata accessor for CRAssetOrData(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v100 = v34;
  v99 = v36;
  v95 = v35 + 56;
  (v36)(v17, 1, 1);
  outlined init with copy of Date?(v17, v114, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  lazy protocol witness table accessor for type CRAssetOrData? and conformance <A> A?();
  v101 = v33;
  CRRegister.init(wrappedValue:)();
  v102 = v17;
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v116 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  CRRegister.init(wrappedValue:)();
  v116 = xmmword_1D405C100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  CRRegister.init(wrappedValue:)();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v38 = v103;
  (*(*(v37 - 8) + 56))(v103, 1, 1, v37);
  outlined init with copy of Date?(v38, v104, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  LODWORD(v116) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  v39 = v107;
  CROrderedSet.init()();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  v10[24] = 1;
  *(v10 + 4) = 0;
  v10[40] = 1;
  UnknownValueProperties.init()();
  outlined init with copy of ImageMetadata(v10, v106, type metadata accessor for ImageMetadata);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type ImageMetadata and conformance ImageMetadata, type metadata accessor for ImageMetadata, &protocol conformance descriptor for ImageMetadata);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ImageMetadata(v10, type metadata accessor for ImageMetadata);
  v116 = 0uLL;
  CRRegister.init(wrappedValue:)();
  v109 = v27;
  UnknownProperties.init()();
  URL._bridgeToObjectiveC()(v40);
  v42 = v41;
  v43 = CGImageSourceCreateWithURL(v41, 0);

  if (!v43)
  {

    (*(v108 + 8))(v39, v112);
    outlined destroy of ImageMetadata(v29, type metadata accessor for Image);
    v52 = 1;
    v53 = v113;
    return (*(v110 + 56))(v53, v52, 1, v109);
  }

  v44 = v108;
  v45 = CGImageSourceCopyPropertiesAtIndex(v43, 0, 0);
  v106 = v43;
  if (!v45)
  {
    v51 = 768;
    v54 = 768;
    goto LABEL_40;
  }

  v46 = v45;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = *MEMORY[0x1E696DED8];
  if ((v47 & 0xC000000000000001) == 0)
  {
    if (!*(v47 + 16))
    {
      v54 = 768;
      v51 = 768;
      goto LABEL_39;
    }

    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v48);
    if (v62)
    {
      v63 = *(*(v47 + 56) + 8 * v61);
      swift_unknownObjectRetain();

      *&v116 = v63;
      if (swift_dynamicCast())
      {
        v51 = v115;
LABEL_29:
        if (*(v47 + 16))
        {
          v64 = *MEMORY[0x1E696DEC8];

          v65 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
          if (v66)
          {
            v67 = *(*(v47 + 56) + 8 * v65);
            swift_unknownObjectRetain();

            *&v116 = v67;
            if (swift_dynamicCast())
            {
              v54 = v115;
LABEL_36:
              if (*(v47 + 16))
              {
                v68 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696DE78]);
                if (v69)
                {
                  v59 = *(*(v47 + 56) + 8 * v68);
                  swift_unknownObjectRetain();

                  goto LABEL_15;
                }
              }

              goto LABEL_39;
            }
          }

          else
          {
          }

          v54 = 768;
          goto LABEL_36;
        }

        v54 = 768;
LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
    }

    v51 = 768;
    goto LABEL_29;
  }

  v49 = v48;
  v50 = __CocoaDictionary.lookup(_:)();

  if (v50 && (*&v116 = v50, (swift_dynamicCast() & 1) != 0))
  {
    v51 = v115;
  }

  else
  {
    v51 = 768;
  }

  v55 = *MEMORY[0x1E696DEC8];

  v56 = v55;
  v57 = __CocoaDictionary.lookup(_:)();

  if (v57 && (*&v116 = v57, (swift_dynamicCast() & 1) != 0))
  {
    v54 = v115;
  }

  else
  {
    v54 = 768;
  }

  v58 = *MEMORY[0x1E696DE78];
  v59 = __CocoaDictionary.lookup(_:)();

  if (v59)
  {
LABEL_15:
    *&v116 = v59;
    if (swift_dynamicCast())
    {
      if (v115 <= 4)
      {
        v60 = v51;
      }

      else
      {
        v60 = v54;
      }

      if (v115 > 4)
      {
        v54 = v51;
      }

      v51 = v60;
    }
  }

LABEL_40:
  if (v97)
  {
    v70 = v51;
    v71 = v54;
  }

  else
  {
    v72 = v94 / v54;
    v73 = v93 / v51;
    v74 = v72 * 0.25;
    v75 = v72 * 1.4;
    if (v74 > v73)
    {
      v73 = v74;
    }

    if (v73 >= v75)
    {
      v73 = v75;
    }

    v76 = v73 * v51;
    v77 = v73 * v54;
    v78 = floor(v76);
    v79 = v76 - v78;
    v80 = ceil(v76);
    if (v79 < 0.49)
    {
      v70 = v78;
    }

    else
    {
      v70 = v80;
    }

    v81 = floor(v77);
    v82 = v77 - v81;
    v83 = ceil(v77);
    if (v82 < 0.49)
    {
      v71 = v81;
    }

    else
    {
      v71 = v83;
    }
  }

  v84 = v112;
  (*(v44 + 16))(v98, v39, v112);

  v85 = v102;
  CRAsset.init(url:coordinated:assetManager:)();
  v86 = v100;
  swift_storeEnumTagMultiPayload();
  v99(v85, 0, 1, v86);
  outlined init with copy of Date?(v85, v114, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v116 = 0uLL;
  v117[0] = v70;
  v117[1] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  v116 = 0uLL;
  v117[0] = v70;
  v117[1] = v71;
  CRRegister.wrappedValue.setter();
  URL._bridgeToObjectiveC()(v87);
  v89 = v88;
  v90 = CGImageSourceCreateWithURL(v88, 0);

  if (v90)
  {
    Image.loadMetadata(from:)(v90);

    (*(v44 + 8))(v39, v84);
  }

  else
  {
    (*(v44 + 8))(v39, v84);
  }

  v53 = v113;
  outlined init with take of Image(v29, v113, type metadata accessor for Image);
  v52 = 0;
  return (*(v110 + 56))(v53, v52, 1, v109);
}

uint64_t Image.init(url:scaledBoundsForMarkup:assetManager:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v30 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for Image(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v20);
  if (v34)
  {

    Image.init(url:targetPageSize:assetManager:)(v11, 0.0, 0.0, 1, a3, v17);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      (*(v9 + 8))(a1, v8);

LABEL_6:
      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
      return (*(v19 + 56))(v35, 1, 1, v18);
    }

    outlined init with take of Image(v17, v22, type metadata accessor for Image);
    v24 = v33;
    CRRegister.wrappedValue.getter();
    v25 = 1.0;
    if (v38 <= 0.0)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 1.0;
      if (v39 > 0.0)
      {
        v27 = v38 / v39;
        if (v38 / v39 <= 1.0)
        {
          v26 = 1024.0;
          v25 = v27 * 1024.0;
        }

        else
        {
          v25 = 1024.0;
          v26 = 1024.0 / v27;
        }

        if (v25 >= v38)
        {
          v25 = v38;
        }

        if (v26 >= v39)
        {
          v26 = v39;
        }
      }
    }

    v36 = 0;
    v37 = 0;
    v38 = v25;
    v39 = v26;
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v28 = v31;
    CRRegister.init(_:)();

    (*(v9 + 8))(a1, v8);
    (*(v32 + 40))(v22, v28, v24);
  }

  else
  {
    Image.init(url:targetPageSize:assetManager:)(v11, 0.0, 0.0, 1, a3, v14);
    (*(v9 + 8))(a1, v8);
    if ((*(v19 + 48))(v14, 1, v18))
    {
      v17 = v14;
      goto LABEL_6;
    }

    outlined init with take of Image(v14, v22, type metadata accessor for Image);
  }

  v29 = v35;
  outlined init with copy of ImageMetadata(v22, v35, type metadata accessor for Image);
  (*(v19 + 56))(v29, 0, 1, v18);
  return outlined destroy of ImageMetadata(v22, type metadata accessor for Image);
}

id Image.init(docCamInfo:inScan:targetPageSize:assetManager:)@<X0>(void *a1@<X0>, void *a2@<X1>, double a3@<X2>, double a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v111 = a6;
  v99 = a5;
  v95 = a4;
  v94 = a3;
  v107 = a7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = (&v88 - v11);
  *&v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  MEMORY[0x1EEE9AC00](v103);
  *&v102 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  *&v101 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v88 - v19;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v88 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v88 - v28;
  v30 = type metadata accessor for Image(0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  *&v100 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = MEMORY[0x1EEE9AC00](v33).n128_u64[0];
  v104 = &v88 - v35;
  v112 = a1;
  result = [a1 fullImageUUID];
  if (result)
  {
    v37 = result;
    v109 = a2;
    v38 = [a2 getImageURL_];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = *(v21 + 16);
    v105 = v29;
    v39(v26, v29, v20);
    v39(v23, v26, v20);
    v40 = v111;

    Image.init(url:targetPageSize:assetManager:)(v23, 0.0, 0.0, 1, v40, v17);
    v41 = *(v21 + 8);
    v42 = v20;
    v106 = v21 + 8;
    v41(v26, v20);
    v43 = *(v31 + 48);
    v110 = v30;
    if (v43(v17, 1, v30))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
      v44 = 1;
      v45 = v108;
    }

    else
    {
      v46 = v100;
      outlined init with take of Image(v17, v100, type metadata accessor for Image);
      v47 = v46;
      v45 = v108;
      outlined init with take of Image(v47, v108, type metadata accessor for Image);
      v44 = 0;
    }

    v48 = *(v31 + 56);
    v49 = v110;
    v108 = v31 + 56;
    v48(v45, v44, 1, v110);
    v50 = v43(v45, 1, v49);
    v51 = v109;
    if (v50)
    {
      v41(v105, v20);

      outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
      v52 = 1;
      v53 = v107;
      return (v48)(v53, v52, 1, v49);
    }

    v89 = v41;
    v54 = v104;
    outlined init with take of Image(v45, v104, type metadata accessor for Image);
    v55 = v112;
    v56 = [v112 currentFilter];
    v57 = v101;
    ImageFilter.init(docCameraFilter:)(v56, v101);
    outlined init with copy of Date?(v57, v102, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    lazy protocol witness table accessor for type ImageFilter? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    result = [v55 imageQuad];
    if (result)
    {
      v58 = result;
      [result topLeft];
      v103 = v59;
      v102 = v60;
      [v58 topRight];
      v100 = v61;
      v91 = v62;
      [v58 bottomLeft];
      v101 = v63;
      v93 = v64;
      [v58 bottomRight];
      v92 = v65;
      v90 = v66;

      v67 = v96;
      v68 = v102;
      *v96 = v103;
      v67[1] = v68;
      v69 = v91;
      v67[2] = v100;
      v67[3] = v69;
      v70 = v93;
      v67[4] = v101;
      v67[5] = v70;
      v71 = v90;
      v67[6] = v92;
      v67[7] = v71;
      v72 = type metadata accessor for ContentsBounds(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v72 - 8) + 56))(v67, 0, 1, v72);
      outlined init with copy of Date?(v67, v97, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      v73 = v105;
      if (v99)
      {
        v89(v105, v42);
      }

      else
      {
        v74 = v94;
        v75 = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.getter();
        v76 = v114;
        *&v77.f64[0] = v100;
        *&v77.f64[1] = v91;
        *&v78.f64[0] = v103;
        *&v78.f64[1] = v102;
        v79 = vmulq_f64(v78, v114);
        v114 = vmulq_f64(v77, v114);
        v113 = v79;
        *&v77.f64[0] = v92;
        *&v77.f64[1] = v90;
        *&v79.f64[0] = v101;
        *&v79.f64[1] = v93;
        v116 = vmulq_f64(v77, v76);
        v115 = vmulq_f64(v79, v76);
        *&v80 = Quad.perspectiveCorrectedSize.getter();
        v103 = v80;
        v102 = v81;
        CRRegister.wrappedValue.getter();
        v82 = v74 / *&v103;
        v83 = v75 / *&v102 * 1.4;
        if (v75 / *&v102 * 0.25 > v74 / *&v103)
        {
          v82 = v75 / *&v102 * 0.25;
        }

        if (v82 < v83)
        {
          v83 = v82;
        }

        *&v84.f64[0] = v103;
        *&v84.f64[1] = v102;
        v85 = vmulq_n_f64(v84, v83);
        v86 = v84;
        v87 = vrndmq_f64(v85);
        v113 = 0uLL;
        v114 = vdivq_f64(vmulq_f64(v114, vbslq_s8(vcgeq_f64(vsubq_f64(v85, v87), vdupq_n_s64(0x3FDF5C28F5C28F5CuLL)), vrndpq_f64(v85), v87)), v86);
        type metadata accessor for CGRect(0);
        _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
        CRRegister.init(wrappedValue:)();

        v89(v73, v42);
      }

      v53 = v107;
      outlined init with take of Image(v54, v107, type metadata accessor for Image);
      v52 = 0;
      v49 = v110;
      return (v48)(v53, v52, 1, v49);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Image.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 1;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Image.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAssetOrData(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.getter();
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    v9 = type metadata accessor for CRAsset();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    outlined init with copy of ImageMetadata(v8, v5, type metadata accessor for CRAssetOrData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ImageMetadata(v5, type metadata accessor for CRAssetOrData);
      v11 = type metadata accessor for CRAsset();
      (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }

    else
    {
      v12 = type metadata accessor for CRAsset();
      v13 = *(v12 - 8);
      (*(v13 + 32))(a1, v5, v12);
      (*(v13 + 56))(a1, 0, 1, v12);
    }

    return outlined destroy of ImageMetadata(v8, type metadata accessor for CRAssetOrData);
  }
}

uint64_t Image.renderedImage(in:bounds:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return Image.renderedImage(in:bounds:isHDRAllowed:)(a1, 1, a2, a3, a4, a5);
}

uint64_t Image.renderedImage(in:bounds:isHDRAllowed:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 160) = v6;
  *(v7 + 184) = a2;
  *(v7 + 144) = a5;
  *(v7 + 152) = a6;
  *(v7 + 128) = a3;
  *(v7 + 136) = a4;
  *(v7 + 120) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  *(v7 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Image.renderedImage(in:bounds:isHDRAllowed:), 0, 0);
}

uint64_t Image.renderedImage(in:bounds:isHDRAllowed:)()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  if (*(v0 + 112) != 0.0 || (v2 = *(v0 + 144), v1 = *(v0 + 152), v4 = *(v0 + 128), v3 = *(v0 + 136), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR), CRRegister.wrappedValue.getter(), v12.origin.x = v4, v12.origin.y = v3, v12.size.width = v2, v12.size.height = v1, !CGRectEqualToRect(v12, *(v0 + 16))) || (CRRegister.wrappedValue.getter(), CGRectGetWidth(*(v0 + 48)) <= 0.0) || (CRRegister.wrappedValue.getter(), CGRectGetHeight(*(v0 + 80)) <= 0.0) || specialized ContainerCanvasElement.hasMarkup(in:)(*(v0 + 120)))
  {
LABEL_8:

    v7 = *(v0 + 8);

    return v7(0);
  }

  v5 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.getter();
  v6 = type metadata accessor for CRAssetOrData(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 168), &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    goto LABEL_8;
  }

  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = Image.renderedImage(in:bounds:isHDRAllowed:);
  v10 = *(v0 + 184);

  return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(0x7FFFFFFFFFFFFFFFLL, 0, v10);
}

uint64_t Image.renderedImage(in:bounds:isHDRAllowed:)(uint64_t a1)
{
  v3 = *(*v1 + 168);
  v6 = *v1;

  outlined destroy of ImageMetadata(v3, type metadata accessor for CRAssetOrData);

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t outlined init with copy of ImageMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ImageMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

CGImageRef closure #1 in static Image.filterAndCrop(_:filter:crop:queue:)@<X0>(CGImageRef *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = specialized static Image._filterAndCrop(_:filter:crop:)(a2, a3, a4);
  *a1 = result;
  return result;
}

Swift::Int __swiftcall Image.quadImageMaxDimension(in:context:quad:)(__C::CGRect in, CGContextRef context, PaperKit::Quad *quad)
{
  y = quad->topLeft.y;
  x = quad->topLeft.x;
  v3 = quad->topRight.x;
  v4 = quad->topRight.y;
  v5 = quad->bottomLeft.x;
  v6 = quad->bottomLeft.y;
  v7 = quad->bottomRight.x;
  v8 = quad->bottomRight.y;
  v17 = CGContextConvertRectToDeviceSpace(context, in);
  width = v17.size.width;
  height = v17.size.height;
  v17.size.width = 0.0;
  v17.size.height = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  v17.origin.x = v5;
  v17.origin.y = v6;
  v21.origin.x = v7;
  v21.origin.y = v8;
  v18 = CGRectUnion(v17, v21);
  v22.size.width = 0.0;
  v22.size.height = 0.0;
  v22.origin.x = v3;
  v22.origin.y = v4;
  v19 = CGRectUnion(v18, v22);
  v23.size.width = 0.0;
  v23.size.height = 0.0;
  v23.origin.y = y;
  v23.origin.x = x;
  v20 = CGRectUnion(v19, v23);
  v11 = v20.size.width;
  v12 = v20.size.height;
  result = CGRectIsEmpty(v20);
  if ((result & 1) == 0)
  {
    width = width / v11;
    height = height / v12;
  }

  if (width > height)
  {
    v14 = width;
  }

  else
  {
    v14 = height;
  }

  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t Image.cgImageSource()()
{
  v1[8] = v0;
  v2 = type metadata accessor for CRAssetOrData(0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for CRAsset();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Image.cgImageSource(), 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.getter();
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[16];
    v6 = v0[17];
    v7 = v0[15];
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[14], &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    (*(v6 + 56))(v7, 1, 1, v5);
    goto LABEL_7;
  }

  outlined init with copy of ImageMetadata(v0[14], v0[12], type metadata accessor for CRAssetOrData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of ImageMetadata(v0[12], type metadata accessor for CRAssetOrData);
    v8 = 1;
  }

  else
  {
    (*(v0[17] + 32))(v0[15], v0[12], v0[16]);
    v8 = 0;
  }

  v9 = v0[16];
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  (*(v10 + 56))(v11, v8, 1, v9);
  outlined destroy of ImageMetadata(v12, type metadata accessor for CRAssetOrData);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
LABEL_7:
    v13 = v0[13];
    v14 = v0[9];
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[15], &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    CRRegister.wrappedValue.getter();
    v15 = v4(v13, 1, v14);
    v16 = v0[13];
    if (v15 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    }

    else
    {
      outlined init with copy of ImageMetadata(v16, v0[11], type metadata accessor for CRAssetOrData);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = v0[13];
      v19 = v0[11];
      if (EnumCaseMultiPayload == 1)
      {
        v20 = *v19;
        v21 = v19[1];
        v23 = v19[2];
        v22 = v19[3];
        outlined destroy of ImageMetadata(v0[13], type metadata accessor for CRAssetOrData);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMR);
        inited = swift_initStackObject();
        v25 = MEMORY[0x1E696E0A8];
        *(inited + 16) = xmmword_1D4058CF0;
        v26 = *v25;
        *(inited + 32) = v26;
        *(inited + 40) = 0;
        v27 = v26;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd, &_sSo11CFStringRefa_SbtMR);
        type metadata accessor for CFStringRef(0);
        _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v29 = Data._bridgeToObjectiveC()().super.isa;
        v30 = CGImageSourceCreateWithData(v29, isa);

        outlined consume of Data._Representation(v20, v21);
        outlined consume of Data._Representation(v23, v22);
LABEL_16:

        v33 = v0[1];

        return v33(v30);
      }

      outlined destroy of ImageMetadata(v19, type metadata accessor for CRAssetOrData);
      outlined destroy of ImageMetadata(v18, type metadata accessor for CRAssetOrData);
    }

    v30 = 0;
    goto LABEL_16;
  }

  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  v31 = swift_task_alloc();
  v0[19] = v31;
  *v31 = v0;
  v31[1] = Image.cgImageSource();

  return CRAsset.cgImageSource(waitIfUnavailable:)(0);
}

{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[20];

  v2 = v0[1];

  return v2(v1);
}

uint64_t Image.cgImageSource()(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](Image.cgImageSource(), 0, 0);
}

uint64_t Image.cgImage(maxDimensionInPixels:isHDRAllowed:tryCache:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 177) = a3;
  *(v4 + 176) = a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v3;
  v5 = type metadata accessor for CRAssetOrData(0);
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  *(v4 + 128) = swift_task_alloc();
  v6 = type metadata accessor for CRAsset();
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Image.cgImage(maxDimensionInPixels:isHDRAllowed:tryCache:), 0, 0);
}

uint64_t Image.cgImage(maxDimensionInPixels:isHDRAllowed:tryCache:)()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.getter();
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 120), &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    (*(v6 + 56))(v7, 1, 1, v5);
    goto LABEL_7;
  }

  outlined init with copy of ImageMetadata(*(v0 + 120), *(v0 + 104), type metadata accessor for CRAssetOrData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of ImageMetadata(*(v0 + 104), type metadata accessor for CRAssetOrData);
    v8 = 1;
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 136));
    v8 = 0;
  }

  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  (*(v10 + 56))(v11, v8, 1, v9);
  outlined destroy of ImageMetadata(v12, type metadata accessor for CRAssetOrData);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
LABEL_7:
    v13 = *(v0 + 112);
    v14 = *(v0 + 80);
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 128), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    CRRegister.wrappedValue.getter();
    v15 = v4(v13, 1, v14);
    v16 = *(v0 + 112);
    if (v15 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    }

    else
    {
      outlined init with copy of ImageMetadata(v16, *(v0 + 96), type metadata accessor for CRAssetOrData);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = *(v0 + 112);
      v19 = *(v0 + 96);
      if (EnumCaseMultiPayload == 1)
      {
        v39 = *(v0 + 177);
        v20 = *(v0 + 176);
        v21 = *(v0 + 64);
        v22 = *v19;
        v23 = v19[1];
        v25 = v19[2];
        v24 = v19[3];
        outlined destroy of ImageMetadata(v18, type metadata accessor for CRAssetOrData);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMR);
        inited = swift_initStackObject();
        v27 = MEMORY[0x1E696E0A8];
        *(inited + 16) = xmmword_1D4058CF0;
        v28 = *v27;
        *(inited + 32) = v28;
        *(inited + 40) = 0;
        v29 = v28;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd, &_sSo11CFStringRefa_SbtMR);
        type metadata accessor for CFStringRef(0);
        _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v31 = Data._bridgeToObjectiveC()().super.isa;
        v32 = CGImageSourceCreateWithData(v31, isa);

        v33 = specialized static CRAsset.loadImageSrc(_:digest:maxDimensionInPixels:isHDRAllowed:tryCache:)(v32, v22, v23, v21, v20, v39);
        outlined consume of Data._Representation(v22, v23);
        outlined consume of Data._Representation(v25, v24);
LABEL_16:

        v38 = *(v0 + 8);

        return v38(v33);
      }

      outlined destroy of ImageMetadata(v19, type metadata accessor for CRAssetOrData);
      outlined destroy of ImageMetadata(v18, type metadata accessor for CRAssetOrData);
    }

    v33 = 0;
    goto LABEL_16;
  }

  (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
  v34 = swift_task_alloc();
  *(v0 + 160) = v34;
  *v34 = v0;
  v34[1] = Image.cgImage(maxDimensionInPixels:isHDRAllowed:tryCache:);
  v35 = *(v0 + 176);
  v36 = *(v0 + 64);

  return CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(v36, 0, v35);
}

{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[21];

  v2 = v0[1];

  return v2(v1);
}

uint64_t Image.cgImage(maxDimensionInPixels:isHDRAllowed:tryCache:)(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](Image.cgImage(maxDimensionInPixels:isHDRAllowed:tryCache:), 0, 0);
}

uint64_t Image.supportsSavingAsHDR()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = Image.supportsSavingAsHDR();

  return Image.cgImageSource()();
}

{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = CGImageSourceGetType(*(v0 + 24));
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  v4 = *(v0 + 8);

  return v4(1);
}

uint64_t Image.supportsSavingAsHDR()(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](Image.supportsSavingAsHDR(), 0, 0);
}

uint64_t Image.renderImage(in:isTopLevel:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:)(a1, v3, 0, 0, v6);
}

uint64_t Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:)(uint64_t a1, char a2, char a3, char a4, __n128 a5)
{
  *(v6 + 888) = v5;
  *(v6 + 1046) = a4;
  *(v6 + 1045) = a3;
  *(v6 + 1044) = a2;
  *(v6 + 880) = a1;
  v7 = type metadata accessor for CGPathFillRule();
  *(v6 + 896) = v7;
  *(v6 + 904) = *(v7 - 8);
  *(v6 + 912) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  *(v6 + 920) = swift_task_alloc();
  v8 = type metadata accessor for ContentsBounds(0);
  *(v6 + 928) = v8;
  *(v6 + 936) = *(v8 - 8);
  *(v6 + 944) = swift_task_alloc();
  *(v6 + 952) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  *(v6 + 960) = swift_task_alloc();
  *(v6 + 968) = swift_task_alloc();
  *(v6 + 976) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:), 0, 0);
}

void Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:)()
{
  v43 = v0;
  if (*(v0 + 1044) == 1)
  {
    v1 = Image.pdfContentsBounds.getter();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for Image(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    v1 = *(v0 + 832);
    v3 = *(v0 + 840);
    v5 = *(v0 + 848);
    v7 = *(v0 + 856);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    v8 = *(v0 + 864);
  }

  *(v0 + 1016) = v7;
  *(v0 + 1008) = v5;
  *(v0 + 1000) = v3;
  *(v0 + 992) = v1;
  *(v0 + 984) = v8;
  specialized CanvasElement.maxDimensionInPixels(_:in:)(*(v0 + 880), v1, v3, v5, v7);
  v10 = v9;
  Type = CGContextGetType();
  if (Type != 1 && Type != 6)
  {
    v12 = *(v0 + 976);
    v13 = *(v0 + 936);
    v14 = *(v0 + 928);
    type metadata accessor for Image(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
    CRRegister.wrappedValue.getter();
    v15 = *(v13 + 48);
    v16 = v15(v12, 1, v14);
    v17 = *(v0 + 976);
    if (v16 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      goto LABEL_11;
    }

    outlined init with copy of ImageMetadata(v17, *(v0 + 952), type metadata accessor for ContentsBounds);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = *(v0 + 976);
    v20 = *(v0 + 952);
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of ImageMetadata(v20, type metadata accessor for ContentsBounds);
      outlined destroy of ImageMetadata(v19, type metadata accessor for ContentsBounds);
LABEL_11:
      v24 = *(v0 + 968);
      v25 = *(v0 + 928);
      CRRegister.wrappedValue.getter();
      v26 = v15(v24, 1, v25);
      v27 = *(v0 + 968);
      if (v26 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        goto LABEL_22;
      }

      outlined init with copy of ImageMetadata(v27, *(v0 + 944), type metadata accessor for ContentsBounds);
      v28 = swift_getEnumCaseMultiPayload();
      v29 = *(v0 + 968);
      v30 = *(v0 + 944);
      if (v28)
      {
        outlined destroy of ImageMetadata(v30, type metadata accessor for ContentsBounds);
        outlined destroy of ImageMetadata(v29, type metadata accessor for ContentsBounds);
        goto LABEL_22;
      }

      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v34 = v30[3];
      outlined destroy of ImageMetadata(*(v0 + 968), type metadata accessor for ContentsBounds);
      v46.origin.x = v31;
      v46.origin.y = v32;
      v46.size.width = v33;
      v46.size.height = v34;
      if (CGRectIsEmpty(v46))
      {
        goto LABEL_22;
      }

      v47.origin.x = v1;
      v47.origin.y = v3;
      v47.size.width = v5;
      v47.size.height = v7;
      Width = CGRectGetWidth(v47);
      v48.origin.x = v31;
      v48.origin.y = v32;
      v48.size.width = v33;
      v48.size.height = v34;
      v41 = Width / CGRectGetWidth(v48);
      v49.origin.x = v1;
      v49.origin.y = v3;
      v49.size.width = v5;
      v49.size.height = v7;
      Height = CGRectGetHeight(v49);
      v50.origin.x = v31;
      v50.origin.y = v32;
      v50.size.width = v33;
      v50.size.height = v34;
      v36 = Height / CGRectGetHeight(v50);
      if (v41 > v36)
      {
        v36 = v41;
      }

      if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v36 > -9.22337204e18)
      {
        if (v36 < 9.22337204e18)
        {
          v10 = v36;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v21 = *(v0 + 880);
    v22 = *(v20 + 16);
    quad.topLeft = *v20;
    quad.topRight = v22;
    v23 = *(v20 + 48);
    quad.bottomLeft = *(v20 + 32);
    quad.bottomRight = v23;
    outlined destroy of ImageMetadata(v19, type metadata accessor for ContentsBounds);
    v45.origin.x = v1;
    v45.origin.y = v3;
    v45.size.width = v5;
    v45.size.height = v7;
    v10 = Image.quadImageMaxDimension(in:context:quad:)(v45, v21, &quad);
  }

LABEL_22:
  v37 = swift_task_alloc();
  *(v0 + 1024) = v37;
  *v37 = v0;
  v37[1] = Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:);
  v38 = *(v0 + 1046);
  v39 = *(v0 + 1045);

  Image.cgImage(maxDimensionInPixels:isHDRAllowed:tryCache:)(v10, v39, v38);
}

uint64_t Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:)(uint64_t a1)
{
  *(*v1 + 1032) = a1;

  return MEMORY[0x1EEE6DFA0](Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:), 0, 0);
}

uint64_t Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:)()
{
  v90 = v0;
  v1 = *(v0 + 1032);
  if (v1)
  {
    type metadata accessor for Image(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
    CRRegister.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
    CRRegister.wrappedValue.getter();
    if (one-time initialization token for defaultFilterQueue != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 960);
    v3 = *(v0 + 920);
    v4 = defaultFilterQueue;
    v5 = swift_task_alloc();
    v5[2] = v1;
    v5[3] = v3;
    v5[4] = v2;
    type metadata accessor for CGImageRef(0);
    v6 = v4;
    OS_dispatch_queue.sync<A>(execute:)();

    v7 = *(v0 + 872);
    outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    Type = CGContextGetType();
    if (Type == 6 || Type == 1)
    {
      v9 = CGImageRef.jpegData(compressionQuality:)(0.9);
      if (v10 >> 60 != 15)
      {
        v11 = v9;
        v12 = v10;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v14 = CGDataProviderCreateWithCFData(isa);

        if (v14)
        {
          v15 = CGImageCreateWithJPEGDataProvider(v14, 0, 0, kCGRenderingIntentDefault);
          outlined consume of Data?(v11, v12);

          if (v15)
          {

            v7 = v15;
          }
        }

        else
        {
          outlined consume of Data?(v11, v12);
        }
      }
    }

    v16 = *(v0 + 1016);
    v17 = *(v0 + 1008);
    v88 = v17;
    v18 = *(v0 + 1000);
    v19 = *(v0 + 992);
    angle = *(v0 + 984);
    v20 = *(v0 + 880);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    CGContextSaveGState(v20);
    Width = CGImageGetWidth(v7);
    Height = CGImageGetHeight(v7);
    v92.origin.x = v19;
    v92.origin.y = v18;
    v92.size.width = v17;
    v92.size.height = v16;
    v23 = CGRectGetWidth(v92);
    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.width = Width;
    v93.size.height = Height;
    v24 = v23 / CGRectGetWidth(v93);
    v94.origin.x = v19;
    v94.origin.y = v18;
    v94.size.width = v17;
    v94.size.height = v16;
    v25 = CGRectGetHeight(v94);
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = Width;
    v95.size.height = Height;
    v26 = v25 / CGRectGetHeight(v95);
    if (v26 >= v24)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    v96.origin.x = v19;
    v96.origin.y = v18;
    v96.size.width = v88;
    v96.size.height = v16;
    MidX = CGRectGetMidX(v96);
    v75 = v19;
    v76 = v18;
    v97.origin.x = v19;
    v97.origin.y = v18;
    v97.size.width = v88;
    v77 = v16;
    v97.size.height = v16;
    v29 = v27 * Width;
    v30 = v27 * Height;
    v31 = MidX - v27 * Width * 0.5;
    v32 = CGRectGetMidY(v97) - v27 * Height * 0.5;
    v84 = v31 - v27 * Width * 0.0;
    v82 = v30;
    v83 = v32 - v30 * 0.0;
    v98.origin.x = v31;
    v98.origin.y = v32;
    v98.size.width = v27 * Width;
    v98.size.height = v30;
    v33 = CGRectGetMidX(v98);
    v99.origin.x = v31;
    v99.origin.y = v32;
    v99.size.width = v27 * Width;
    v99.size.height = v30;
    MidY = CGRectGetMidY(v99);
    CGAffineTransformMakeRotation(&v89, angle);
    anglea = *&v89.a;
    v80 = *&v89.c;
    tx = v89.tx;
    ty = v89.ty;
    CGAffineTransformMakeTranslation(&v89, -v33, -MidY);
    a = v89.a;
    b = v89.b;
    c = v89.c;
    d = v89.d;
    v40 = v89.tx;
    v41 = v89.ty;
    *(v0 + 16) = v89.a;
    *(v0 + 24) = b;
    *(v0 + 32) = c;
    *(v0 + 40) = d;
    *(v0 + 48) = v40;
    *(v0 + 56) = v41;
    *(v0 + 64) = anglea;
    *(v0 + 80) = v80;
    *(v0 + 96) = tx;
    *(v0 + 104) = ty;
    CGAffineTransformConcat(&v89, (v0 + 16), (v0 + 64));
    angleb = *&v89.a;
    v81 = *&v89.c;
    v42 = v89.tx;
    v79 = v89.ty;
    *(v0 + 112) = a;
    *(v0 + 120) = b;
    *(v0 + 128) = c;
    *(v0 + 136) = d;
    *(v0 + 144) = v40;
    *(v0 + 152) = v41;
    CGAffineTransformInvert(&v89, (v0 + 112));
    v43 = *&v89.a;
    v44 = *&v89.c;
    v45 = *&v89.tx;
    *(v0 + 160) = angleb;
    *(v0 + 176) = v81;
    *(v0 + 192) = v42;
    *(v0 + 200) = v79;
    *(v0 + 208) = v43;
    *(v0 + 224) = v44;
    *(v0 + 240) = v45;
    CGAffineTransformConcat(&v89, (v0 + 160), (v0 + 208));
    v46 = *&v89.a;
    v47 = *&v89.c;
    v48 = *&v89.tx;
    *(v0 + 256) = v29;
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
    *(v0 + 280) = v82;
    *(v0 + 288) = v84;
    *(v0 + 296) = v83;
    *(v0 + 304) = v46;
    *(v0 + 320) = v47;
    *(v0 + 336) = v48;
    CGAffineTransformConcat(&v89, (v0 + 256), (v0 + 304));
    v49 = *&v89.c;
    v50 = *&v89.tx;
    *(v0 + 352) = *&v89.a;
    *(v0 + 368) = v49;
    *(v0 + 384) = v50;
    CGContextConcatCTM(v20, (v0 + 352));
    v100.origin.x = 0.0;
    v100.origin.y = 0.0;
    v100.size.width = 1.0;
    v100.size.height = 1.0;
    MinY = CGRectGetMinY(v100);
    v101.origin.x = 0.0;
    v101.origin.y = 0.0;
    v101.size.width = 1.0;
    v101.size.height = 1.0;
    MaxY = CGRectGetMaxY(v101);
    *(v0 + 400) = 0x3FF0000000000000;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 424) = 0x3FF0000000000000;
    *(v0 + 432) = 0;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0x3FF0000000000000;
    *(v0 + 456) = 0;
    *(v0 + 464) = 0;
    *(v0 + 472) = 0xBFF0000000000000;
    *(v0 + 480) = 0;
    *(v0 + 488) = MinY + MaxY;
    CGAffineTransformConcat(&v89, (v0 + 400), (v0 + 448));
    v53 = *&v89.c;
    v54 = *&v89.tx;
    *(v0 + 496) = *&v89.a;
    *(v0 + 512) = v53;
    *(v0 + 528) = v54;
    CGContextConcatCTM(v20, (v0 + 496));
    if (v88 < 0.0)
    {
      v55 = *(v0 + 880);
      v102.origin.x = 0.0;
      v102.origin.y = 0.0;
      v102.size.width = 1.0;
      v102.size.height = 1.0;
      MinX = CGRectGetMinX(v102);
      v103.origin.x = 0.0;
      v103.origin.y = 0.0;
      v103.size.width = 1.0;
      v103.size.height = 1.0;
      MaxX = CGRectGetMaxX(v103);
      *(v0 + 688) = 0x3FF0000000000000;
      *(v0 + 696) = 0u;
      *(v0 + 712) = 0x3FF0000000000000;
      *(v0 + 720) = 0u;
      *(v0 + 736) = 0xBFF0000000000000;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0x3FF0000000000000;
      *(v0 + 768) = MinX + MaxX;
      *(v0 + 776) = 0;
      CGAffineTransformConcat(&v89, (v0 + 688), (v0 + 736));
      v58 = *&v89.c;
      v59 = *&v89.tx;
      *(v0 + 784) = *&v89.a;
      *(v0 + 800) = v58;
      *(v0 + 816) = v59;
      CGContextConcatCTM(v55, (v0 + 784));
    }

    if (*(v0 + 1016) < 0.0)
    {
      v60 = *(v0 + 880);
      v104.origin.x = 0.0;
      v104.origin.y = 0.0;
      v104.size.width = 1.0;
      v104.size.height = 1.0;
      v61 = CGRectGetMinY(v104);
      v105.origin.x = 0.0;
      v105.origin.y = 0.0;
      v105.size.width = 1.0;
      v105.size.height = 1.0;
      v62 = CGRectGetMaxY(v105);
      *(v0 + 544) = 0x3FF0000000000000;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0x3FF0000000000000;
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0x3FF0000000000000;
      *(v0 + 600) = 0u;
      *(v0 + 616) = 0xBFF0000000000000;
      *(v0 + 624) = 0;
      *(v0 + 632) = v61 + v62;
      CGAffineTransformConcat(&v89, (v0 + 544), (v0 + 592));
      v63 = *&v89.c;
      v64 = *&v89.tx;
      *(v0 + 640) = *&v89.a;
      *(v0 + 656) = v63;
      *(v0 + 672) = v64;
      CGContextConcatCTM(v60, (v0 + 640));
    }

    if ((*(v0 + 1044) & 1) == 0)
    {
      v65 = *(v0 + 912);
      v66 = *(v0 + 904);
      v67 = *(v0 + 896);
      v68 = *(v0 + 880);
      v106.origin.x = v75;
      v106.origin.y = v76;
      v106.size.width = v88;
      v106.size.height = v77;
      v69 = 4.0 / CGRectGetWidth(v106);
      v107.origin.x = v75;
      v107.origin.y = v76;
      v107.size.width = v88;
      v107.size.height = v77;
      v70 = 4.0 / CGRectGetHeight(v107);
      v108.origin.x = 0.0;
      v108.origin.y = 0.0;
      v108.size.width = 1.0;
      v108.size.height = 1.0;
      v71 = CGPathCreateWithRoundedRect(v108, v69, v70, 0);
      CGContextAddPath(v68, v71);

      (*(v66 + 104))(v65, *MEMORY[0x1E695EEB8], v67);
      CGContextRef.clip(using:)();
      (*(v66 + 8))(v65, v67);
    }

    v72 = *(v0 + 880);
    v109.origin.x = 0.0;
    v109.origin.y = 0.0;
    v109.size.width = 1.0;
    v109.size.height = 1.0;
    CGContextRef.draw(_:in:byTiling:)(v7, v109, 0);
    CGContextRestoreGState(v72);
  }

  v73 = *(v0 + 8);

  return v73();
}

void specialized CanvasElement.maxDimensionInPixels(_:in:)(CGContext *a1, double a2, double a3, double a4, double a5)
{
  v12 = CGContextConvertRectToDeviceSpace(a1, *&a2);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  Type = CGContextGetType();
  if (Type != 6 && Type != 1)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v10 = CGRectGetWidth(v13);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v11 = CGRectGetHeight(v14);
    if (v10 > v11)
    {
      v11 = v10;
    }

    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        return;
      }

LABEL_11:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t Image.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[43] = a6;
  v7[44] = v6;
  v7[41] = a4;
  v7[42] = a5;
  v7[39] = a1;
  v7[40] = a3;
  return MEMORY[0x1EEE6DFA0](Image.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t Image.render<A>(in:id:capsule:options:)()
{
  v35 = v0;
  v1 = *(v0 + 328);
  CGContextSaveGState(*(v0 + 312));
  v2 = *(v1 + 72);
  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + 312);
    type metadata accessor for Image(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    v37.origin.x = Image.pdfContentsBounds.getter();
    CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 16), v37);
    *(v0 + 64) = *(v0 + 16);
    v4 = *(v0 + 48);
    *(v0 + 80) = *(v0 + 32);
    *(v0 + 96) = v4;
    CGContextConcatCTM(v3, (v0 + 64));
  }

  v5 = *(v0 + 328);
  CGContextSaveGState(*(v0 + 312));
  v6 = *(v5 + 16);
  if (((v2 | v6 ^ 1) & 1) == 0)
  {
    v7 = *(v0 + 312);
    type metadata accessor for Image(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    v8 = *(v0 + 304);
    v9 = Image.pdfContentsBounds.getter();
    v11 = v10;
    v32 = v13;
    v33 = v12;
    CGAffineTransformMakeRotation(&v34, v8);
    a = v34.a;
    b = v34.b;
    c = v34.c;
    d = v34.d;
    tx = v34.tx;
    ty = v34.ty;
    *(v0 + 112) = v34.a;
    *(v0 + 120) = b;
    *(v0 + 128) = c;
    *(v0 + 136) = d;
    *(v0 + 144) = tx;
    *(v0 + 152) = ty;
    v38.origin.x = v9;
    v38.origin.y = v11;
    v38.size.height = v32;
    v38.size.width = v33;
    v39 = CGRectApplyAffineTransform(v38, (v0 + 112));
    CGAffineTransformMakeTranslation(&v34, v9 - v39.origin.x, v11 - v39.origin.y);
    v20 = *&v34.a;
    v21 = *&v34.c;
    v22 = *&v34.tx;
    *(v0 + 160) = a;
    *(v0 + 168) = b;
    *(v0 + 176) = c;
    *(v0 + 184) = d;
    *(v0 + 192) = tx;
    *(v0 + 200) = ty;
    *(v0 + 208) = v20;
    *(v0 + 224) = v21;
    *(v0 + 240) = v22;
    CGAffineTransformConcat(&v34, (v0 + 160), (v0 + 208));
    v23 = *&v34.c;
    v24 = *&v34.tx;
    *(v0 + 256) = *&v34.a;
    *(v0 + 272) = v23;
    *(v0 + 288) = v24;
    CGContextConcatCTM(v7, (v0 + 256));
  }

  v25 = *(v0 + 328);
  v26 = *(v25 + 124);
  v27 = *(v25 + 120);
  v28 = swift_task_alloc();
  *(v0 + 360) = v28;
  *v28 = v0;
  v28[1] = Image.render<A>(in:id:capsule:options:);
  v30 = *(v0 + 312);

  return Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:)(v30, v6, v26, v27, v29);
}

{

  return MEMORY[0x1EEE6DFA0](Image.render<A>(in:id:capsule:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 312));
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  v2 = type metadata accessor for Image(0);
  *v1 = v0;
  v1[1] = Image.render<A>(in:id:capsule:options:);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);

  return ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v6, v7, v4, v2, v5, &protocol witness table for Image, v3);
}

{

  return MEMORY[0x1EEE6DFA0](Image.render<A>(in:id:capsule:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 312));
  v1 = *(v0 + 8);

  return v1();
}

void Image.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, char *a5, uint64_t a6, char *a7, char *a8)
{
  v134 = a7;
  v135 = a8;
  v128 = a4;
  v129 = a6;
  v133 = a5;
  v127 = a2;
  v130 = type metadata accessor for CRAssetOrData(0);
  v11 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v122 = (&v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v131 = &v107 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR);
  v117 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v119 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v107 - v18;
  v19 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v111 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMR);
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v109 = &v107 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMR);
  v116 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v107 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  v110 = *(v23 - 8);
  v24 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v113 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v108 = &v107 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v107 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v132 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v107 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v125 = &v107 - v33;
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *a1;
  type metadata accessor for CanvasElementPDFAnnotation(0);
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v120 = v11;
    *(v38 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation) = 2;
    v126 = v8;
    v40 = *MEMORY[0x1E69780D8];
    v41 = a3;
    v42 = v40;
    v43 = v126;
    [v39 setType_];
    specialized CanvasElement.renderFrame(in:)();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    Height = v50;
    v52 = [v39 page];
    if (v52)
    {
      v53 = v52;
      [v52 boundsForBox_];
      v55 = v54;
      v57 = v56;

      v140.origin.x = v45;
      v140.origin.y = v47;
      v140.size.width = v49;
      v140.size.height = Height;
      MinX = CGRectGetMinX(v140);
      v141.origin.x = v45;
      v141.origin.y = v47;
      v141.size.width = v49;
      v141.size.height = Height;
      v59 = v57 + v55 + v55 - CGRectGetMaxY(v141);
      v142.origin.x = v45;
      v142.origin.y = v47;
      v142.size.width = v49;
      v142.size.height = Height;
      Width = CGRectGetWidth(v142);
      v143.origin.x = v45;
      v143.origin.y = v47;
      v143.size.width = v49;
      v143.size.height = Height;
      Height = CGRectGetHeight(v143);
      v49 = Width;
      v45 = MinX;
      v47 = v59;
    }

    v144.origin.x = v45;
    v144.origin.y = v47;
    v144.size.width = v49;
    v144.size.height = Height;
    v145 = CGRectIntegral(v144);
    [v39 setBounds_];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v35 + 8))(v37, v34);
    [v39 setModificationDate_];

    outlined init with copy of Date?(v127, v29, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v62 = v132;
    v63 = v30;
    if ((*(v132 + 48))(v29, 1, v30) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      goto LABEL_12;
    }

    v64 = v125;
    (*(v62 + 32))(v125, v29, v30);
    v65 = v121;
    v66 = v121;
    if (v121 >> 62)
    {
      if (v121 >> 62 != 1)
      {
        (*(v62 + 8))(v64, v63);
        goto LABEL_11;
      }

      v66 = v121 & 0x3FFFFFFFFFFFFFFFLL;
    }

    v127 = v66;
    (*(v62 + 16))(v107, v64, v63);
    outlined copy of PaperDocument.PDFDocumentUse(v65);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
    v67 = v123;
    CRRegister.init(_:)();
    v68 = static CRKeyPath.unique.getter();
    v69 = v62;
    MEMORY[0x1EEE9AC00](v68);
    v70 = v135;
    *(&v107 - 6) = v134;
    *(&v107 - 5) = v70;
    v71 = v133;
    *(&v107 - 4) = v64;
    *(&v107 - 3) = v71;
    *(&v107 - 2) = v67;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SharedTagged_10<TaggedCanvasElement>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMR, MEMORY[0x1E6995078]);
    v72 = v109;
    Capsule.init(id:initClosure:)();
    v73 = v112;
    v74 = v115;
    v75 = v114;
    (*(v112 + 32))(v115, v72, v114);
    (*(v73 + 56))(v74, 0, 1, v75);
    v76 = v108;
    (*(v69 + 56))(v108, 1, 1, v63);
    v77 = v119;
    outlined init with take of Range<AttributedString.Index>(v74, v119, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR);
    v78 = v113;
    outlined init with take of Range<AttributedString.Index>(v76, v113, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v79 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v121 = v63;
    v80 = v41;
    v81 = (v118 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = (*(v110 + 80) + v81 + 8) & ~*(v110 + 80);
    v83 = v82 + v24;
    v84 = (v82 + v24) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    outlined init with take of Range<AttributedString.Index>(v77, v85 + v79, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR);
    *(v85 + v81) = v127;
    v41 = v80;
    outlined init with take of Range<AttributedString.Index>(v78, v85 + v82, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    *(v85 + v83) = 1;
    v86 = v85 + v84;
    *(v86 + 8) = 0;
    *(v86 + 16) = 0;
    v87 = &v39[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
    v88 = *&v39[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation];
    v89 = *&v39[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation + 8];
    *v87 = partial apply for specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:);
    v87[1] = v85;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v88, v89);
    (*(v116 + 8))(v123, v124);
    (*(v132 + 8))(v125, v121);
LABEL_11:
    v43 = v126;
LABEL_12:
    v90 = v130;
    v91 = v131;
    v93 = v128;
    v92 = v129;
    v94 = type metadata accessor for Image(0);
    CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(v93, v43, v133, v92, v134, v94, v135, &protocol witness table for Image);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
    CRRegister.wrappedValue.getter();
    if ((*(v120 + 48))(v91, 1, v90) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    }

    else
    {
      v95 = v122;
      outlined init with copy of ImageMetadata(v91, v122, type metadata accessor for CRAssetOrData);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v96 = v95;
        v97 = *v95;
        v99 = v96[1];
        v98 = v96[2];
        v100 = v96[3];
        outlined destroy of ImageMetadata(v91, type metadata accessor for CRAssetOrData);
        outlined copy of Data._Representation(v98, v100);
        outlined consume of Data._Representation(v97, v99);
        outlined consume of Data._Representation(v98, v100);
        v101 = [objc_allocWithZone(MEMORY[0x1E698A9A0]) init];
        if (v101)
        {
          v102 = v101;
          v103 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
          outlined copy of Data._Representation(v98, v100);
          v104 = Data._bridgeToObjectiveC()().super.isa;
          v105 = [v103 initWithData_];

          outlined consume of Data._Representation(v98, v100);
          [v102 setImage_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
          CRRegister.wrappedValue.getter();
          [v102 setRectangle_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
          CRRegister.wrappedValue.getter();
          [v102 setRotationAngle_];
          outlined consume of Data._Representation(v98, v100);
          v106 = *&v39[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation];
          *&v39[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = v102;
        }

        else
        {

          outlined consume of Data._Representation(v98, v100);
        }
      }

      else
      {

        outlined destroy of ImageMetadata(v95, type metadata accessor for CRAssetOrData);
        outlined destroy of ImageMetadata(v91, type metadata accessor for CRAssetOrData);
      }
    }
  }
}

uint64_t closure #1 in Image.update<A>(use:ref:pdfAnnotation:in:capsule:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[1] = a4;
  v24[2] = a5;
  v26 = a6;
  v27 = a3;
  v24[3] = a2;
  v24[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v11 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0]);
  v13 = v24 - v12;
  v14 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1DA6CB7A0](v19);
  type metadata accessor for Image(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<Image> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR, MEMORY[0x1E69953B8]);
  Capsule.encapsulate<A>(_:)();
  Capsule.Ref.import<A>(_:)();
  (*(v11 + 8))(v13, v24[0]);
  v20 = type metadata accessor for CRAssetOrData(0);
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = Capsule.Ref.subscript.modify();
  outlined init with copy of Date?(v10, v25, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v21(v28, 0);
  (*(v16 + 8))(v18, v15);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMR);
  return (*(*(v22 - 8) + 16))(v26, v27, v22);
}

void Image.image(from:)(uint64_t a1)
{
  v10 = 0;
  NumberOfEntries = CGDisplayListGetNumberOfEntries();
  NumberOfEntriesOfType = CGDisplayListGetNumberOfEntriesOfType();
  if (NumberOfEntries != 1)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v3 = NumberOfEntriesOfType;
  v4 = 0;
  v5 = 0;
  if (v3 != 1)
  {
LABEL_6:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
    return;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in Image.image(from:);
  *(v6 + 24) = v5;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<Bool>) -> ();
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<Bool>) -> ();
  aBlock[3] = &block_descriptor_41;
  v7 = _Block_copy(aBlock);

  CGDisplayListEnumerateEntriesWithOptions();
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = partial apply for closure #1 in Image.image(from:);
    goto LABEL_6;
  }

  __break(1u);
}

void closure #1 in Image.image(from:)(uint64_t a1, uint64_t a2, void **a3)
{
  Image = CGDisplayListEntryImageGetImage();
  v5 = Image;
  if (Image)
  {
    v6 = Image;
  }

  v7 = *a3;
  *a3 = v5;
}

void Image.takeImage(from:assetManager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SHA256();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256Digest();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v39 - v17);
  Image.image(from:)(a1);
  if (v19)
  {
    v43 = v19;
    v20 = CGImageRef.imageData(compressionQuality:asPng:)(0, 1.0);
    if (v21 >> 60 == 15)
    {
      v22 = v43;
    }

    else
    {
      v41 = v3;
      if (a2)
      {
        v23 = v20;
        v24 = v21;
        swift_retain_n();
        outlined copy of Data?(v23, v24);
        CRAsset.init(data:assetManager:)();
        v25 = type metadata accessor for CRAssetOrData(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v25 - 8) + 56))(v18, 0, 1, v25);
        outlined init with copy of Date?(v18, v15, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
        type metadata accessor for Image(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
        CRRegister.wrappedValue.setter();

        outlined consume of Data?(v23, v24);
      }

      else
      {
        v26 = v20;
        v27 = v21;
        outlined copy of Data?(v20, v21);
        outlined copy of Data._Representation(v26, v27);
        v39 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
        dispatch thunk of HashFunction.init()();
        v40 = v26;
        outlined copy of Data._Representation(v26, v27);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v26, v27);
        v28 = v26;
        v29 = v27;
        outlined consume of Data?(v28, v27);
        dispatch thunk of HashFunction.finalize()();
        (*(v7 + 8))(v9, v6);
        _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
        v30 = Digest.makeIterator()();
        specialized _copySequenceToContiguousArray<A>(_:)(v30, v31);
        v33 = v32;

        v34 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v33);
        v36 = v35;

        v37 = v40;
        outlined consume of Data?(v40, v29);
        (*(v42 + 8))(v12, v10);
        *v18 = v34;
        v18[1] = v36;
        v18[2] = v37;
        v18[3] = v29;
        v38 = type metadata accessor for CRAssetOrData(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v38 - 8) + 56))(v18, 0, 1, v38);
        outlined init with copy of Date?(v18, v15, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
        type metadata accessor for Image(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
        CRRegister.wrappedValue.setter();

        outlined consume of Data?(v37, v29);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    }
  }
}

void Image.finishDecode(from:assetManager:)(void *a1, uint64_t a2)
{
  [a1 cacheAppearances];
  v4 = [a1 cachedAppearance_];
  if (v4)
  {
    oslog = v4;
    Image.takeImage(from:assetManager:)(oslog, a2);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = a1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_1D38C4000, oslog, v7, "Error decoding image from PDF Annotation: %@", v8, 0xCu);
      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1DA6D0660](v9, -1, -1);
      MEMORY[0x1DA6D0660](v8, -1, -1);
    }
  }
}

uint64_t (*protocol witness for ContainerCanvasElement.bounds.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for ContainerCanvasElement.pdfContentsBounds.setter in conformance Image(double a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v16 - v12);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v14 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  outlined init with copy of Date?(v13, v10, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

uint64_t Image.setContentsBounds(_:)(double a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v16 - v12);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v14 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  outlined init with copy of Date?(v13, v10, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

void (*protocol witness for ContainerCanvasElement.pdfContentsBounds.modify in conformance Image(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Image.pdfContentsBounds.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t (*Image.pdfContentsBounds.modify(float64_t **a1))()
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
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(v6);
    v7 = malloc(v6);
  }

  *(v5 + 48) = v7;
  *v5 = Image.pdfContentsBounds.getter();
  *(v5 + 8) = v8;
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  return Image.pdfContentsBounds.modify;
}

void Image.pdfContentsBounds.modify(_OWORD **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  v3 = *(*a1 + 6);
  v4 = (*a1)[1];
  *v3 = **a1;
  v3[1] = v4;
  v5 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  outlined init with copy of Date?(v3, v2, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  free(v3);
  free(v2);

  free(v1);
}

double protocol witness for ContainerCanvasElement.drawing.getter in conformance Image()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  CRRegister.wrappedValue.getter();
  return result;
}

uint64_t protocol witness for ContainerCanvasElement.drawing.setter in conformance Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
}

uint64_t (*protocol witness for ContainerCanvasElement.drawing.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for ContainerCanvasElement.subelements.getter in conformance Image@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ContainerCanvasElement.subelements.setter in conformance Image(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.orientation.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance Image@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 1;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance Image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return Image.render<A>(in:id:capsule:options:)(a1, v13, a3, a4, a5, a6);
}

uint64_t Image.pdfPageID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PDFPageID(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Image.shared(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v7[15] = 1;
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  return SharedTagged_3.init(_:id:)();
}

uint64_t key path setter for Image.pdfContentsBounds : Image(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - v6);
  v8 = a1[1];
  *v7 = *a1;
  v7[1] = v8;
  v9 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

uint64_t closure #1 in Image.renderPage(pdfPage:box:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in Image.renderPage(pdfPage:box:context:), 0, 0);
}

uint64_t closure #1 in Image.renderPage(pdfPage:box:context:)()
{
  v16 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  CGContextSaveGState(v2);
  [v1 boundsForBox_];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxY = CGRectGetMaxY(v19);
  *(v0 + 16) = 0x3FF0000000000000;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0x3FF0000000000000;
  *(v0 + 64) = 0x3FF0000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = xmmword_1D405A660;
  *(v0 + 104) = MinY + MaxY;
  CGAffineTransformConcat(&v15, (v0 + 16), (v0 + 64));
  v9 = *&v15.c;
  v10 = *&v15.tx;
  *(v0 + 112) = *&v15.a;
  *(v0 + 128) = v9;
  *(v0 + 144) = v10;
  CGContextConcatCTM(v2, (v0 + 112));
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = closure #1 in Image.renderPage(pdfPage:box:context:);
  v13 = *(v0 + 160);

  return Image.renderImage(in:isTopLevel:isHDRAllowed:tryCache:)(v13, 1, 0, 0, v12);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in Image.renderPage(pdfPage:box:context:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 160));
  OS_dispatch_semaphore.signal()();
  v1 = *(v0 + 8);

  return v1();
}

char *Image.update<A>(pdfPage:id:use:in:options:)(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v65 = a7;
  v66 = a4;
  v67 = a6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v46 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v46 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v46 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v46 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v46 - v17;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v46 - v18;
  v19 = type metadata accessor for Image(0);
  v64 = *(v19 - 1);
  v20 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a3;
  type metadata accessor for PaperKitPDFPage(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v24 = result;
    v47 = a2;
    v63 = a1;
    specialized PaperPage.updateCropAndRotation(pdfPage:updateMediaBox:)(v24, 1);
    outlined init with copy of Date?(a5, v74, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
    if (v75 != 1)
    {
      v71 = v19;
      v72 = &protocol witness table for Image;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
      outlined init with copy of ImageMetadata(v8, boxed_opaque_existential_1, type metadata accessor for Image);
      outlined assign with take of UUID?(&v68, &v76, &_s8PaperKit0A10Renderable_pSgMd, &_s8PaperKit0A10Renderable_pSgMR);
    }

    v73 = v22;
    outlined init with copy of Date?(v74, &v68, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
    v46 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    PaperPage<>.updateAnnotations<A>(in:use:capsule:options:)(v24, &v73, v66, &v68, v19, v67, v46, &protocol witness table for Image, &protocol witness table for Image, v65);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v68, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
    if (v22 == 0x8000000000000000)
    {
      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
    }

    else
    {
      outlined copy of PaperDocument.PDFDocumentUse(v22);
      outlined consume of PaperDocument.PDFDocumentUse(v22);
      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      outlined init with copy of ImageMetadata(v8, &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Image);
      v27 = (*(v64 + 80) + 16) & ~*(v64 + 80);
      v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      outlined init with take of Image(v21, v29 + v27, type metadata accessor for Image);
      *(v29 + v28) = v26;
      v30 = &v24[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render];
      v31 = *&v24[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render];
      v32 = *&v24[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render + 8];
      *v30 = partial apply for closure #1 in Image.update<A>(pdfPage:id:use:in:options:);
      v30[1] = v29;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v31, v32);

      if (!(v22 >> 62))
      {
        outlined init with copy of ImageMetadata(v8, v21, type metadata accessor for Image);
        v33 = type metadata accessor for ContentsBounds(0);
        (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
        lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
        v34 = v22;
        v35 = v48;
        CRRegister.init(_:)();
        (*(v49 + 40))(&v21[v19[7]], v35, v51);
        v36 = type metadata accessor for CRAssetOrData(0);
        (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
        lazy protocol witness table accessor for type CRAssetOrData? and conformance <A> A?();
        v37 = v53;
        CRRegister.init(_:)();
        (*(v54 + 40))(&v21[v19[9]], v37, v56);
        v38 = type metadata accessor for ImageFilter(0);
        (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
        lazy protocol witness table accessor for type ImageFilter? and conformance <A> A?();
        v39 = v58;
        CRRegister.init(_:)();
        (*(v59 + 40))(&v21[v19[8]], v39, v61);
        v68 = Image.pdfContentsBounds.getter();
        v69 = v40;
        v70 = v41;
        v71 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.setter();
        v68 = Image.pdfContentsBounds.getter();
        v69 = v43;
        v70 = v44;
        v71 = v45;
        CRRegister.wrappedValue.setter();
        PaperKitPDFPage.encodePaperPage<A, B>(_:_:id:capsule:)(v34, v21, v47, v66, v19, v67, v46, &protocol witness table for Image, &protocol witness table for Image, v65);
        outlined consume of PaperDocument.PDFDocumentUse(v22);

        outlined destroy of ImageMetadata(v21, type metadata accessor for Image);
        return outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
      }
    }

    return outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
  }

  return result;
}

void closure #1 in Image.update<A>(pdfPage:id:use:in:options:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Image(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = dispatch_semaphore_create(0);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    outlined init with copy of ImageMetadata(a3, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Image);
    v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a2;
    v17[5] = v13;
    outlined init with take of Image(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for Image);
    *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
    v18 = v13;
    v19 = a2;
    v20 = v14;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in Image.renderPage(pdfPage:box:context:), v17);

    OS_dispatch_semaphore.wait()();
  }
}

BOOL Image.finishDecode(from:pageID:assetManager:)(void *a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  *&v19 = MEMORY[0x1EEE9AC00](v18 - 8).n128_u64[0];
  v21 = &v46 - v20;
  [a1 boundsForBox_];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v50 = a1;
  [a1 boundsForBox_];
  v54.origin.x = v30;
  v54.origin.y = v31;
  v54.size.width = v32;
  v54.size.height = v33;
  v53.origin.x = v23;
  v53.origin.y = v25;
  v53.size.width = v27;
  v53.size.height = v29;
  result = CGRectEqualToRect(v53, v54);
  if (result)
  {
    CRRegister.wrappedValue.getter();
    if (CGRect.almostEqual(_:threshold:)(v52.origin.x, v52.origin.y, v52.size.width, v52.size.height, 1.0, v23, v25, v27, v29))
    {
      v35 = type metadata accessor for ContentsBounds(0);
      (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
      v46 = type metadata accessor for Image(0);
      CRRegister.projectedValue.getter();
      specialized CRRegister<>.setIfDifferent(_:)(v21);
      outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      (*(v12 + 16))(v14, v17, v11);
      CRRegister.projectedValue.setter();
      (*(v12 + 8))(v17, v11);
      CRRegister.projectedValue.getter();
      CRRegister.value.getter();
      v55.origin.x = v23;
      v55.origin.y = v25;
      v55.size.width = v27;
      v55.size.height = v29;
      if (!CGRectEqualToRect(v52, v55))
      {
        v52.origin.x = v23;
        v52.origin.y = v25;
        v52.size.width = v27;
        v52.size.height = v29;
        CRRegister.value.setter();
      }

      v36 = v49;
      v37 = *(v49 + 16);
      v38 = v47;
      v37(v47, v10, v4);
      CRRegister.projectedValue.setter();
      v39 = *(v36 + 8);
      v39(v10, v4);
      v40 = v48;
      CRRegister.projectedValue.getter();
      CRRegister.value.getter();
      v56.origin.x = v23;
      v56.origin.y = v25;
      v56.size.width = v27;
      v56.size.height = v29;
      if (!CGRectEqualToRect(v52, v56))
      {
        v52.origin.x = v23;
        v52.origin.y = v25;
        v52.size.width = v27;
        v52.size.height = v29;
        CRRegister.value.setter();
      }

      v37(v38, v40, v4);
      CRRegister.projectedValue.setter();
      v39(v40, v4);
      v41 = v50;
      LODWORD(v52.origin.x) = specialized CGImagePropertyOrientation.init(rotationAngle:)([v50 rotation] / 180.0 * 3.14159265);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.setter();
      v42 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
      v43 = CGDisplayListCreateWithRect();
      v44 = CGDisplayListContextCreate();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24PDFPageDrawWithBoxOptiona_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for PDFPageDrawWithBoxOption(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption, &protocol conformance descriptor for PDFPageDrawWithBoxOption);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v41 drawWithBox:0 inContext:v44 withOptions:isa];

      Image.takeImage(from:assetManager:)(v43, v51);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Image.asyncHdrHeadroom<A>(in:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = Image.asyncHdrHeadroom<A>(in:);

  return Image.cgImageSource()();
}

uint64_t Image.asyncHdrHeadroom<A>(in:)(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](Image.asyncHdrHeadroom<A>(in:), 0, 0);
}

uint64_t Image.asyncHdrHeadroom<A>(in:)(__n128 a1)
{
  v2 = *(v1 + 24);
  v3 = 0;
  if (v2)
  {
    v4 = specialized static ImageHDRInfo.info(for:)(*(v1 + 24));
    v6 = v5;

    if (v6)
    {
      v3 = v4;
    }
  }

  v7 = *(v1 + 8);
  a1.n128_u64[0] = v3;

  return v7(a1);
}

uint64_t (*protocol witness for PaperPage.frame.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for PaperPage.bounds.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.orientation.getter in conformance Image()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double protocol witness for CanvasElement.orientation.setter in conformance Image(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*protocol witness for PaperPage.orientation.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

double protocol witness for CanvasElement.rotation.getter in conformance Image()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double protocol witness for CanvasElement.rotation.setter in conformance Image(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*protocol witness for PaperPage.rotation.modify in conformance Image(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for PaperPage.pdfPageID.getter in conformance Image@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PDFPageID(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for PaperPage.shared(_:) in conformance Image(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v7[15] = 1;
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  return SharedTagged_3.init(_:id:)();
}

uint64_t Image.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Image.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v175 = a2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v165 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v164 = v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v162 = v124 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v161 = v124 - v9;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v160 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v159 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v157 = v124 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v156 = v124 - v14;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v155 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v154 = v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v152 = v124 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v151 = v124 - v19;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v150 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v149 = v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v147 = v124 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v146 = v124 - v24;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v171 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v169 = v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v167 = v124 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v166 = v124 - v29;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v145 = *(v143 - 1);
  MEMORY[0x1EEE9AC00](v143);
  v144 = v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v142 = v124 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v141 = v124 - v34;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v140 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v139 = v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v137 = v124 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v136 = v124 - v39;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v135 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v134 = v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v132 = v124 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v131 = v124 - v44;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v130 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v129 = v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v127 = v124 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v126 = v124 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = v124 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = v124 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = v124 - v58;
  v177 = type metadata accessor for MergeResult();
  v174 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v61 = v124 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  v176 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v62 = *(v51 + 8);
  v62(v59, v50);
  v63 = *(v51 + 16);
  v124[1] = v51 + 16;
  v125 = v63;
  v124[0] = v53;
  v63(v53, v56, v50);
  CRRegister.projectedValue.setter();
  v62(v56, v50);
  MergeResult.merge(_:)();
  v64 = *(v174 + 8);
  v174 += 8;
  v172 = v64;
  v64(v61, v177);
  v173 = type metadata accessor for Image(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v62(v59, v50);
  v125(v124[0], v56, v50);
  CRRegister.projectedValue.setter();
  v62(v56, v50);
  MergeResult.merge(_:)();
  v172(v61, v177);
  v65 = v126;
  v66 = v128;
  CRRegister.projectedValue.getter();
  v170 = v3;
  v67 = v127;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v68 = v130;
  v69 = *(v130 + 8);
  v69(v65, v66);
  (*(v68 + 16))(v129, v67, v66);
  CRRegister.projectedValue.setter();
  v69(v67, v66);
  MergeResult.merge(_:)();
  v172(v61, v177);
  v70 = v131;
  v71 = v133;
  CRRegister.projectedValue.getter();
  v72 = v132;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v73 = v135;
  v74 = *(v135 + 8);
  v74(v70, v71);
  (*(v73 + 16))(v134, v72, v71);
  CRRegister.projectedValue.setter();
  v74(v72, v71);
  MergeResult.merge(_:)();
  v172(v61, v177);
  v75 = v136;
  v76 = v138;
  CRRegister.projectedValue.getter();
  v77 = v137;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v78 = v140;
  v79 = *(v140 + 8);
  v79(v75, v76);
  (*(v78 + 16))(v139, v77, v76);
  CRRegister.projectedValue.setter();
  v79(v77, v76);
  MergeResult.merge(_:)();
  v80 = v172;
  v172(v61, v177);
  v81 = v141;
  v82 = v143;
  CRRegister.projectedValue.getter();
  v83 = v142;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v84 = v145;
  v85 = v145[1];
  v85(v81, v82);
  (v84[2])(v144, v83, v82);
  CRRegister.projectedValue.setter();
  v85(v83, v82);
  MergeResult.merge(_:)();
  v80(v61, v177);
  v86 = v166;
  v87 = v168;
  CRRegister.projectedValue.getter();
  v88 = v167;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v89 = v171;
  v90 = (v171 + 8);
  v91 = *(v171 + 8);
  v91(v86, v87);
  v143 = v91;
  v144 = v90;
  v92 = *(v89 + 16);
  v171 = v89 + 16;
  v145 = v92;
  (v92)(v169, v88, v87);
  CRRegister.projectedValue.setter();
  v91(v88, v87);
  MergeResult.merge(_:)();
  v93 = v172;
  v172(v61, v177);
  v94 = v146;
  v95 = v148;
  CRRegister.projectedValue.getter();
  v96 = v147;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v97 = v150;
  v98 = *(v150 + 8);
  v98(v94, v95);
  (*(v97 + 16))(v149, v96, v95);
  CRRegister.projectedValue.setter();
  v98(v96, v95);
  MergeResult.merge(_:)();
  v93(v61, v177);
  v99 = v151;
  v100 = v153;
  CRRegister.projectedValue.getter();
  v101 = v152;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v102 = v155;
  v103 = *(v155 + 8);
  v103(v99, v100);
  (*(v102 + 16))(v154, v101, v100);
  CRRegister.projectedValue.setter();
  v103(v101, v100);
  MergeResult.merge(_:)();
  v172(v61, v177);
  v104 = v156;
  v105 = v158;
  CRRegister.projectedValue.getter();
  v106 = v157;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v107 = v160;
  v108 = *(v160 + 8);
  v108(v104, v105);
  (*(v107 + 16))(v159, v106, v105);
  CRRegister.projectedValue.setter();
  v108(v106, v105);
  MergeResult.merge(_:)();
  v109 = v177;
  v110 = v172;
  v172(v61, v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.merge(_:)();
  MergeResult.merge(_:)();
  v110(v61, v109);
  v111 = v161;
  v112 = v163;
  CRRegister.projectedValue.getter();
  v113 = v162;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v114 = v165;
  v115 = *(v165 + 8);
  v115(v111, v112);
  (*(v114 + 16))(v164, v113, v112);
  CRRegister.projectedValue.setter();
  v115(v113, v112);
  MergeResult.merge(_:)();
  v172(v61, v177);
  v116 = v166;
  v117 = v168;
  CRRegister.projectedValue.getter();
  v118 = v167;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v119 = v116;
  v120 = v143;
  (v143)(v119, v117);
  (v145)(v169, v118, v117);
  CRRegister.projectedValue.setter();
  v120(v118, v117);
  MergeResult.merge(_:)();
  v121 = v177;
  v122 = v172;
  v172(v61, v177);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v122(v61, v121);
}

uint64_t Image.actionUndoingDifference(from:)@<X0>(uint64_t a2@<X8>)
{
  v163 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v4 = *(v3 - 8);
  v161 = v3;
  v162 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v160 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v128 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v170 = &v128 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v171 = &v128 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v158 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v128 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v172 = &v128 - v16;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v154 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v128 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v173 = &v128 - v21;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v150 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v146 = &v128 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v174 = &v128 - v26;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v169 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v164 = &v128 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v147 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v175 = &v128 - v33;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v145 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v142 = &v128 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v176 = &v128 - v38;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v140 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v137 = &v128 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMR);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v177 = &v128 - v43;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v136 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v128 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v133 = &v128 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMR);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v178 = &v128 - v48;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v132 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v128 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v129 = &v128 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v167 = &v128 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v128 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v128 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v63 = &v128 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v141 = &v128 - v65;
  v128 = v2;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v66 = *(v55 + 8);
  v66(v57, v54);
  v66(v60, v54);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v168 = v63;
  CRRegister.actionUndoingDifference(from:)();
  v66(v57, v54);
  v66(v60, v54);
  v67 = v129;
  v68 = v131;
  CRRegister.projectedValue.getter();
  v69 = v130;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v70 = *(v132 + 8);
  v70(v69, v68);
  v70(v67, v68);
  v71 = v133;
  v72 = v135;
  CRRegister.projectedValue.getter();
  v73 = v134;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v74 = *(v136 + 8);
  v74(v73, v72);
  v74(v71, v72);
  v75 = v137;
  v76 = v139;
  CRRegister.projectedValue.getter();
  v77 = v138;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v78 = *(v140 + 8);
  v78(v77, v76);
  v78(v75, v76);
  v79 = v142;
  v80 = v144;
  CRRegister.projectedValue.getter();
  v81 = v143;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v82 = *(v145 + 8);
  v82(v81, v80);
  v82(v79, v80);
  v83 = v164;
  v84 = v166;
  CRRegister.projectedValue.getter();
  v85 = v165;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v86 = *(v169 + 8);
  v169 += 8;
  v86(v85, v84);
  v86(v83, v84);
  v87 = v146;
  v88 = v149;
  CRRegister.projectedValue.getter();
  v89 = v148;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v90 = *(v150 + 8);
  v90(v89, v88);
  v90(v87, v88);
  v91 = v151;
  v92 = v153;
  CRRegister.projectedValue.getter();
  v93 = v152;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v94 = *(v154 + 8);
  v94(v93, v92);
  v94(v91, v92);
  v95 = v155;
  v96 = v157;
  CRRegister.projectedValue.getter();
  v97 = v156;
  CRRegister.projectedValue.getter();
  v98 = v147;
  CRRegister.actionUndoingDifference(from:)();
  v99 = *(v158 + 8);
  v99(v97, v96);
  v99(v95, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.actionUndoingDifference(from:)();
  v100 = v159;
  v101 = v161;
  CRRegister.projectedValue.getter();
  v102 = v160;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v103 = *(v162 + 8);
  v103(v102, v101);
  v104 = v101;
  v105 = v141;
  v103(v100, v104);
  v106 = v164;
  v107 = v166;
  CRRegister.projectedValue.getter();
  v108 = v165;
  CRRegister.projectedValue.getter();
  v109 = v98;
  CRRegister.actionUndoingDifference(from:)();
  v86(v108, v107);
  v86(v106, v107);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  v111 = *(*(v110 - 8) + 48);
  if (v111(v105, 1, v110) == 1 && v111(v168, 1, v110) == 1 && (v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMR), (*(*(v112 - 8) + 48))(v167, 1, v112) == 1) && (v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMR), (*(*(v113 - 8) + 48))(v178, 1, v113) == 1) && (v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GMR), (*(*(v114 - 8) + 48))(v177, 1, v114) == 1) && (v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GMR), (*(*(v115 - 8) + 48))(v176, 1, v115) == 1) && (v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMR), v117 = *(*(v116 - 8) + 48), v117(v175, 1, v116) == 1) && (v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GMR), (*(*(v118 - 8) + 48))(v174, 1, v118) == 1) && (v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMR), (*(*(v119 - 8) + 48))(v173, 1, v119) == 1) && (v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMR), (*(*(v120 - 8) + 48))(v172, 1, v120) == 1) && (v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR), (*(*(v121 - 8) + 48))(v171, 1, v121) == 1) && (v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GMR), (*(*(v122 - 8) + 48))(v170, 1, v122) == 1) && v117(v98, 1, v116) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v123 = type metadata accessor for Image.MutatingAction(0);
    (*(*(v123 - 8) + 56))(v163, 1, 1, v123);
    v124 = v167;
  }

  else
  {
    v125 = v163;
    outlined init with copy of Date?(v105, v163, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v126 = type metadata accessor for Image.MutatingAction(0);
    outlined init with copy of Date?(v168, v125 + v126[5], &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v124 = v167;
    outlined init with copy of Date?(v167, v125 + v126[6], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v178, v125 + v126[7], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMR);
    outlined init with copy of Date?(v177, v125 + v126[8], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMR);
    outlined init with copy of Date?(v176, v125 + v126[9], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMR);
    outlined init with copy of Date?(v175, v125 + v126[10], &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
    outlined init with copy of Date?(v174, v125 + v126[11], &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMR);
    outlined init with copy of Date?(v173, v125 + v126[12], &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
    outlined init with copy of Date?(v172, v125 + v126[13], &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v171, v125 + v126[14], &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    outlined init with copy of Date?(v170, v125 + v126[15], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMR);
    outlined init with copy of Date?(v109, v125 + v126[16], &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    (*(*(v126 - 1) + 56))(v125, 0, 1, v126);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v170, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v171, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v172, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v173, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v174, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v175, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v176, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v177, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v178, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v168, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
}

uint64_t Image.apply(_:)(uint64_t a1)
{
  v114 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v100 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v99 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v113 = &v80 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v110 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v103 = *(v12 - 8);
  v104 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v80 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v119 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v80 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v97 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v80 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v80 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v80 - v27;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v82 = &v80 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v80 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageV14MutatingActionVSgMd, &_s8PaperKit5ImageV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v80 - v39;
  v41 = type metadata accessor for Image.MutatingAction(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v80 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v114, v40, &_s8PaperKit5ImageV14MutatingActionVSgMd, &_s8PaperKit5ImageV14MutatingActionVSgMR);
  v45 = *(v42 + 48);
  v118 = v41;
  if (v45(v40, 1, v41) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s8PaperKit5ImageV14MutatingActionVSgMd, &_s8PaperKit5ImageV14MutatingActionVSgMR);
  }

  v47 = v44;
  outlined init with take of Image(v40, v44, type metadata accessor for Image.MutatingAction);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v81 = *(v32 + 16);
  v81(v34, v37, v31);
  CRRegister.projectedValue.setter();
  v80 = *(v32 + 8);
  v80(v37, v31);
  v114 = type metadata accessor for Image(0);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v81(v34, v37, v31);
  CRRegister.projectedValue.setter();
  v80(v37, v31);
  v48 = v82;
  v49 = v85;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v50 = v84;
  (*(v84 + 16))(v83, v48, v49);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v48, v49);
  v51 = v86;
  v52 = v89;
  CRRegister.projectedValue.getter();
  v53 = v47;
  CRRegister.apply(_:)();
  v54 = v88;
  (*(v88 + 16))(v87, v51, v52);
  CRRegister.projectedValue.setter();
  (*(v54 + 8))(v51, v52);
  v55 = v91;
  v56 = v94;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v57 = v93;
  (*(v93 + 16))(v92, v55, v56);
  CRRegister.projectedValue.setter();
  (*(v57 + 8))(v55, v56);
  v58 = v95;
  v59 = v98;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v60 = v97;
  (*(v97 + 16))(v96, v58, v59);
  CRRegister.projectedValue.setter();
  (*(v60 + 8))(v58, v59);
  v61 = v115;
  v62 = v117;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v63 = v119;
  v64 = *(v119 + 16);
  v97 = v119 + 16;
  v98 = v64;
  (v64)(v116, v61, v62);
  CRRegister.projectedValue.setter();
  v65 = *(v63 + 8);
  v119 = v63 + 8;
  v96 = v65;
  (v65)(v61, v62);
  v66 = v101;
  v67 = v104;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v68 = v103;
  (*(v103 + 16))(v102, v66, v67);
  CRRegister.projectedValue.setter();
  (*(v68 + 8))(v66, v67);
  v69 = v105;
  v70 = v108;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v71 = v107;
  (*(v107 + 16))(v106, v69, v70);
  CRRegister.projectedValue.setter();
  (*(v71 + 8))(v69, v70);
  v72 = v109;
  v73 = v112;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v74 = v111;
  (*(v111 + 16))(v110, v72, v73);
  CRRegister.projectedValue.setter();
  (*(v74 + 8))(v72, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.apply(_:)();
  v75 = v113;
  v76 = v90;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v77 = v100;
  (*(v100 + 16))(v99, v75, v76);
  CRRegister.projectedValue.setter();
  (*(v77 + 8))(v75, v76);
  v78 = v115;
  v79 = v117;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (v98)(v116, v78, v79);
  CRRegister.projectedValue.setter();
  (v96)(v78, v79);
  return outlined destroy of ImageMetadata(v53, type metadata accessor for Image.MutatingAction);
}

uint64_t Image.hasDelta(from:)(uint64_t a1)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v95 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v95 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v112 = *(v12 - 8);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v95 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v115 = *(v16 - 8);
  v116 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v120 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v123 = *(v24 - 8);
  v124 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v121 = &v95 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v127 = *(v28 - 8);
  v128 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v126 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v95 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v129 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v95 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v95 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v95 - v43;
  v131 = v1;
  CRRegister.projectedValue.getter();
  v130 = a1;
  CRRegister.projectedValue.getter();
  v45 = CRRegister.hasDelta(from:)();
  v46 = *(v39 + 8);
  v46(v41, v38);
  v46(v44, v38);
  if (v45 & 1) != 0 || (v96 = v20, v47 = type metadata accessor for Image(0), CRRegister.projectedValue.getter(), v97 = v47, CRRegister.projectedValue.getter(), v48 = CRRegister.hasDelta(from:)(), v46(v41, v38), v46(v44, v38), (v48) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v49 = CRRegister.hasDelta(from:)(), v50 = *(v129 + 8), v50(v34, v32), v50(v37, v32), (v49) || (v51 = v125, v52 = v128, CRRegister.projectedValue.getter(), v53 = v126, CRRegister.projectedValue.getter(), v54 = CRRegister.hasDelta(from:)(), v55 = *(v127 + 8), v55(v53, v52), v55(v51, v52), (v54) || (v56 = v121, v57 = v124, CRRegister.projectedValue.getter(), v58 = v122, CRRegister.projectedValue.getter(), v59 = CRRegister.hasDelta(from:)(), v60 = *(v123 + 8), v60(v58, v57), v60(v56, v57), (v59) || (v61 = v118, v62 = v96, CRRegister.projectedValue.getter(), v63 = v119, CRRegister.projectedValue.getter(), v64 = CRRegister.hasDelta(from:)(), v65 = *(v120 + 8), v65(v63, v62), v65(v61, v62), (v64) || (v67 = v116, v66 = v117, CRRegister.projectedValue.getter(), v68 = v114, CRRegister.projectedValue.getter(), v69 = CRRegister.hasDelta(from:)(), v70 = *(v115 + 8), v70(v68, v67), v70(v66, v67), (v69) || (v71 = v110, v72 = v113, CRRegister.projectedValue.getter(), v73 = v111, CRRegister.projectedValue.getter(), v74 = CRRegister.hasDelta(from:)(), v75 = *(v112 + 8), v75(v73, v72), v75(v71, v72), (v74) || (v76 = v106, v77 = v109, CRRegister.projectedValue.getter(), v78 = v107, CRRegister.projectedValue.getter(), v79 = CRRegister.hasDelta(from:)(), v80 = *(v108 + 8), v80(v78, v77), v80(v76, v77), (v79) || (v81 = v102, v82 = v105, CRRegister.projectedValue.getter(), v83 = v103, CRRegister.projectedValue.getter(), v84 = CRRegister.hasDelta(from:)(), v85 = *(v104 + 8), v85(v83, v82), v85(v81, v82), (v84) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR), (CROrderedSet.hasDelta(from:)()) || (v86 = v98, v87 = v101, CRRegister.projectedValue.getter(), v88 = v99, CRRegister.projectedValue.getter(), v89 = CRRegister.hasDelta(from:)(), v90 = *(v100 + 8), v90(v88, v87), v90(v86, v87), (v89) || (v91 = v117, CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v92 = CRRegister.hasDelta(from:)(), v70(v68, v67), v70(v91, v67), (v92))
  {
    v93 = 1;
  }

  else
  {
    v93 = UnknownProperties.hasDelta(from:)();
  }

  return v93 & 1;
}

uint64_t Image.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnknownProperties();
  v152 = *(v5 - 8);
  v153 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v151 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v8 = *(v7 - 8);
  v149 = v7;
  v150 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v148 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v113 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v13 = *(v12 - 8);
  v145 = v12;
  v146 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v144 = &v113 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v15 - 8);
  v142 = v15;
  v143 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v141 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v113 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v139 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v113 - v22;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v135 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v132 = &v113 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v27 = *(v26 - 8);
  v158 = v26;
  v159 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v156 = &v113 - v30;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v131 = *(v130 - 1);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v128 = &v113 - v33;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v127 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v124 = &v113 - v36;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v123 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v120 = &v113 - v39;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v119 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v116 = &v113 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v113 - v48;
  v154 = a2;
  outlined init with copy of ImageMetadata(v2, a2, type metadata accessor for Image);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v50 = *(v44 + 8);
  v50(v46, v43);
  v114 = *(v44 + 16);
  v114(v46, v49, v43);
  CRRegister.projectedValue.setter();
  v50(v49, v43);
  v51 = type metadata accessor for Image(0);
  v155 = v2;
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v50(v46, v43);
  v114(v46, v49, v43);
  v52 = v154;
  CRRegister.projectedValue.setter();
  v50(v49, v43);
  v53 = v117;
  v54 = v118;
  CRRegister.projectedValue.getter();
  v55 = v116;
  v56 = a1;
  CRRegister.copy(renamingReferences:)();
  v57 = v119;
  v58 = *(v119 + 8);
  v58(v53, v54);
  (*(v57 + 16))(v53, v55, v54);
  v59 = v52;
  CRRegister.projectedValue.setter();
  v58(v55, v54);
  v60 = v121;
  v61 = v122;
  CRRegister.projectedValue.getter();
  v62 = v120;
  CRRegister.copy(renamingReferences:)();
  v63 = v123;
  v64 = *(v123 + 8);
  v64(v60, v61);
  (*(v63 + 16))(v60, v62, v61);
  CRRegister.projectedValue.setter();
  v64(v62, v61);
  v65 = v125;
  v66 = v126;
  CRRegister.projectedValue.getter();
  v67 = v124;
  CRRegister.copy(renamingReferences:)();
  v68 = v127;
  v69 = *(v127 + 8);
  v69(v65, v66);
  (*(v68 + 16))(v65, v67, v66);
  CRRegister.projectedValue.setter();
  v69(v67, v66);
  v70 = v129;
  v71 = v130;
  CRRegister.projectedValue.getter();
  v72 = v128;
  v115 = v56;
  CRRegister.copy(renamingReferences:)();
  v73 = v131;
  v74 = v131[1];
  v74(v70, v71);
  (v73[2])(v70, v72, v71);
  v113 = v51;
  CRRegister.projectedValue.setter();
  v74(v72, v71);
  v76 = v157;
  v75 = v158;
  CRRegister.projectedValue.getter();
  v77 = v156;
  CRRegister.copy(renamingReferences:)();
  v78 = v159;
  v79 = (v159 + 8);
  v80 = *(v159 + 8);
  v80(v76, v75);
  v130 = v80;
  v129 = v79;
  v81 = *(v78 + 16);
  v159 = v78 + 16;
  v131 = v81;
  (v81)(v76, v77, v75);
  v82 = v113;
  CRRegister.projectedValue.setter();
  v80(v77, v75);
  v83 = v82;
  v84 = v133;
  v85 = v134;
  CRRegister.projectedValue.getter();
  v86 = v132;
  CRRegister.copy(renamingReferences:)();
  v87 = v135;
  v88 = *(v135 + 8);
  v88(v84, v85);
  (*(v87 + 16))(v84, v86, v85);
  CRRegister.projectedValue.setter();
  v88(v86, v85);
  v89 = v137;
  v90 = v138;
  CRRegister.projectedValue.getter();
  v91 = v136;
  CRRegister.copy(renamingReferences:)();
  v92 = v139;
  v93 = *(v139 + 8);
  v93(v89, v90);
  (*(v92 + 16))(v89, v91, v90);
  CRRegister.projectedValue.setter();
  v93(v91, v90);
  v95 = v141;
  v94 = v142;
  CRRegister.projectedValue.getter();
  v96 = v140;
  CRRegister.copy(renamingReferences:)();
  v97 = v143;
  v98 = *(v143 + 8);
  v98(v95, v94);
  (*(v97 + 16))(v95, v96, v94);
  CRRegister.projectedValue.setter();
  v98(v96, v94);
  v100 = v144;
  v99 = v145;
  CROrderedSet.copy(renamingReferences:)();
  (*(v146 + 40))(v59 + *(v83 + 56), v100, v99);
  v102 = v148;
  v101 = v149;
  CRRegister.projectedValue.getter();
  v103 = v147;
  CRRegister.copy(renamingReferences:)();
  v104 = v150;
  v105 = *(v150 + 8);
  v105(v102, v101);
  (*(v104 + 16))(v102, v103, v101);
  CRRegister.projectedValue.setter();
  v105(v103, v101);
  v107 = v157;
  v106 = v158;
  CRRegister.projectedValue.getter();
  v108 = v156;
  CRRegister.copy(renamingReferences:)();
  v109 = v130;
  (v130)(v107, v106);
  (v131)(v107, v108, v106);
  v110 = v154;
  CRRegister.projectedValue.setter();
  v109(v108, v106);
  v111 = v151;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v152 + 40))(v110 + *(v83 + 68), v111, v153);
}

uint64_t Image.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v97 = type metadata accessor for UnknownProperties();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v105 = &v93 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v111 = &v93 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v116 = &v93 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v120 = &v93 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v123 = &v93 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v101 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v93 - v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v134 = &v93 - v11;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v138 = &v93 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v144 = &v93 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v147 = &v93 - v14;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v93 - v17;
  v158 = type metadata accessor for ImageMetadata(0);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v93 - v20;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v159);
  v154 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v153 = &v93 - v23;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v152 = &v93 - v26;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  MEMORY[0x1EEE9AC00](v162);
  v151 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v93 - v35;
  type metadata accessor for CGRect(0);
  v38 = v37;
  v39 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v165 = 0u;
  v166 = 0u;
  v167 = v38;
  v164 = v39;
  CRRegister.init(wrappedValue:)();
  v40 = type metadata accessor for Image(0);
  v41 = v40[5];
  v165 = 0u;
  v166 = 0u;
  v146 = v41;
  CRRegister.init(wrappedValue:)();
  v42 = v40[6];
  *&v165 = 0;
  v43 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v140 = v42;
  v145 = v43;
  CRRegister.init(wrappedValue:)();
  v44 = v40[7];
  v45 = type metadata accessor for ContentsBounds(0);
  (*(*(v45 - 8) + 56))(v36, 1, 1, v45);
  outlined init with copy of Date?(v36, v33, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v46 = lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  v135 = v44;
  v141 = v31;
  v139 = v46;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v47 = v40[8];
  v48 = type metadata accessor for ImageFilter(0);
  (*(*(v48 - 8) + 56))(v30, 1, 1, v48);
  outlined init with copy of Date?(v30, v151, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  v49 = lazy protocol witness table accessor for type ImageFilter? and conformance <A> A?();
  v131 = v47;
  v151 = v49;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  v50 = v40[9];
  v51 = type metadata accessor for CRAssetOrData(0);
  v52 = v152;
  (*(*(v51 - 8) + 56))(v152, 1, 1, v51);
  outlined init with copy of Date?(v52, v160, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v53 = lazy protocol witness table accessor for type CRAssetOrData? and conformance <A> A?();
  v126 = v50;
  v130 = v53;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v54 = v40[10];
  v165 = 0uLL;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v160 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  v152 = v54;
  CRRegister.init(wrappedValue:)();
  v56 = v40[11];
  v165 = xmmword_1D405C100;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v58 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v117 = v56;
  v122 = v57;
  v121 = v58;
  CRRegister.init(wrappedValue:)();
  v59 = v40[12];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v61 = v153;
  (*(*(v60 - 8) + 56))(v153, 1, 1, v60);
  outlined init with copy of Date?(v61, v154, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v62 = lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v113 = v59;
  v154 = v62;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v63 = v40[13];
  LODWORD(v165) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  v65 = v64;
  v66 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  v108 = v63;
  v153 = v65;
  v112 = v66;
  CRRegister.init(wrappedValue:)();
  v67 = v40[14];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v69 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  v70 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  v102 = v67;
  v107 = v68;
  v106 = v69;
  CROrderedSet.init()();
  v71 = v40[15];
  v72 = v155;
  *(v155 + 1) = 0;
  *(v72 + 16) = 0;
  *v72 = 0;
  *(v72 + 24) = 1;
  *(v72 + 32) = 0;
  *(v72 + 40) = 1;
  UnknownValueProperties.init()();
  outlined init with copy of ImageMetadata(v72, v156, type metadata accessor for ImageMetadata);
  v73 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type ImageMetadata and conformance ImageMetadata, type metadata accessor for ImageMetadata, &protocol conformance descriptor for ImageMetadata);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ImageMetadata(v72, type metadata accessor for ImageMetadata);
  v74 = v40[16];
  v165 = 0uLL;
  CRRegister.init(wrappedValue:)();
  v75 = v40[17];
  UnknownProperties.init()();
  v76 = v157;
  CRRegister.init(defaultState:)();
  if (v76)
  {
    return outlined destroy of ImageMetadata(a1, type metadata accessor for Image);
  }

  v155 = v73;
  v156 = v70;
  v94 = v74;
  v93 = v75;
  v95 = v71;
  v157 = v55;
  v77 = v147;
  v78 = a1;
  v79 = *(v148 + 40);
  v79(v78, v163, v150);
  CRRegister.init(defaultState:)();
  v79(v78 + v146, v149, v150);
  CRRegister.init(defaultState:)();
  (*(v142 + 40))(v78 + v140, v77, v143);
  v80 = v144;
  CRRegister.init(defaultState:)();
  v81 = v78;
  (*(v136 + 40))(v78 + v135, v80, v137);
  v82 = v138;
  CRRegister.init(defaultState:)();
  (*(v132 + 40))(v81 + v131, v82, v133);
  v83 = v134;
  CRRegister.init(defaultState:)();
  (*(v127 + 40))(v81 + v126, v83, v128);
  v84 = v129;
  CRRegister.init(defaultState:)();
  v85 = v84;
  v87 = v125 + 40;
  v86 = *(v125 + 40);
  v86(&v152[v81], v85, v124);
  v88 = v123;
  CRRegister.init(defaultState:)();
  (*(v118 + 40))(v81 + v117, v88, v119);
  v89 = v120;
  CRRegister.init(defaultState:)();
  v125 = v87;
  (*(v114 + 40))(v81 + v113, v89, v115);
  v90 = v116;
  CRRegister.init(defaultState:)();
  v91 = *(v109 + 40);
  v167 = v81;
  v91(v81 + v108, v90, v110);
  CROrderedSet.init(defaultState:)();
  (*(v103 + 40))(v167 + v102, v111, v104);
  CRRegister.init(defaultState:)();
  (*(v99 + 40))(v167 + v95, v105, v100);
  CRRegister.init(defaultState:)();
  v86((v167 + v94), v101, v124);
  UnknownProperties.init(defaultState:)();
  return (*(v96 + 40))(v167 + v93, v98, v97);
}

uint64_t Image.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v57 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v56 = &v54 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v74 = *(v12 - 8);
  v75 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v78 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  type metadata accessor for Image(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (v55 = v0, CRRegister.projectedValue.getter(), v24 = CRRegister.isDefaultState.getter(), v25 = *(v21 + 8), v25(v23, v20), (v24) && (CRRegister.projectedValue.getter(), v26 = CRRegister.isDefaultState.getter(), v25(v23, v20), (v26) && (CRRegister.projectedValue.getter(), v27 = CRRegister.isDefaultState.getter(), (*(v78 + 8))(v19, v17), (v27) && (v28 = v77, CRRegister.projectedValue.getter(), v29 = CRRegister.isDefaultState.getter(), (*(v76 + 8))(v16, v28), (v29) && (v30 = v73, v31 = v75, CRRegister.projectedValue.getter(), v32 = CRRegister.isDefaultState.getter(), (*(v74 + 8))(v30, v31), (v32) && (v33 = v70, v34 = v72, CRRegister.projectedValue.getter(), v35 = CRRegister.isDefaultState.getter(), (*(v71 + 8))(v33, v34), (v35) && (v36 = v67, v37 = v69, CRRegister.projectedValue.getter(), v38 = CRRegister.isDefaultState.getter(), v39 = *(v68 + 8), v39(v36, v37), (v38) && (v40 = v64, v41 = v66, CRRegister.projectedValue.getter(), v42 = CRRegister.isDefaultState.getter(), (*(v65 + 8))(v40, v41), (v42) && (v43 = v61, v44 = v63, CRRegister.projectedValue.getter(), v45 = CRRegister.isDefaultState.getter(), (*(v62 + 8))(v43, v44), (v45) && (v46 = v58, v47 = v60, CRRegister.projectedValue.getter(), v48 = CRRegister.isDefaultState.getter(), (*(v59 + 8))(v46, v47), (v48) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR), (CROrderedSet.isDefaultState.getter()) && (v49 = v56, v50 = v55, CRRegister.projectedValue.getter(), v51 = CRRegister.isDefaultState.getter(), (*(v57 + 8))(v49, v50), (v51))
  {
    CRRegister.projectedValue.getter();
    v52 = CRRegister.isDefaultState.getter();
    v39(v36, v37);
  }

  else
  {
    v52 = 0;
  }

  return v52 & 1;
}

uint64_t Image.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v2 = *(v1 - 8);
  v72 = v1;
  v73 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v71 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v5 = *(v4 - 8);
  v69 = v4;
  v70 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v11 = *(v10 - 8);
  v63 = v10;
  v64 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v49 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v17 = *(v16 - 8);
  v57 = v16;
  v58 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v49 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v49 - v21;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v49 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v49 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v49 - v28;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v30 = *(v27 + 8);
  v30(v29, v26);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v30(v29, v26);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v49 + 8))(v25, v23);
  v31 = v50;
  v32 = v51;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v52 + 8))(v31, v32);
  v34 = v53;
  v33 = v54;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v55 + 8))(v34, v33);
  v36 = v56;
  v35 = v57;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v58 + 8))(v36, v35);
  v38 = v59;
  v37 = v60;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v39 = *(v61 + 8);
  v39(v38, v37);
  v41 = v62;
  v40 = v63;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v64 + 8))(v41, v40);
  v43 = v65;
  v42 = v66;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v67 + 8))(v43, v42);
  v45 = v68;
  v44 = v69;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v70 + 8))(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.visitReferences(_:)();
  v47 = v71;
  v46 = v72;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v73 + 8))(v47, v46);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v39(v38, v37);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t Image.newRefs(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v3 = *(v2 - 8);
  v131 = v2;
  v132 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v130 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v101 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  v127 = v7;
  v128 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v13 = *(v12 - 8);
  v123 = v12;
  v124 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v101 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v18 = *(v17 - 8);
  v119 = v17;
  v120 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v118 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v101 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v23 = *(v22 - 8);
  v135 = v22;
  v136 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v101 - v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v116 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v113 = &v101 - v29;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v109 = &v101 - v32;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v108 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v105 = &v101 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v104 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v103 = &v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v102 = &v101 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v101 - v45;
  v137 = MEMORY[0x1E69E7CD0];
  v101 = v1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v47 = CRRegister.newRefs(from:)();
  v48 = *(v41 + 8);
  v48(v43, v40);
  v48(v46, v40);
  specialized Set.formUnion<A>(_:)(v47);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v49 = CRRegister.newRefs(from:)();
  v48(v43, v40);
  v48(v46, v40);
  specialized Set.formUnion<A>(_:)(v49);
  v50 = v102;
  CRRegister.projectedValue.getter();
  v51 = v103;
  CRRegister.projectedValue.getter();
  v52 = CRRegister.newRefs(from:)();
  v53 = *(v104 + 8);
  v53(v51, v36);
  v53(v50, v36);
  specialized Set.formUnion<A>(_:)(v52);
  v54 = v105;
  v55 = v107;
  CRRegister.projectedValue.getter();
  v56 = v106;
  CRRegister.projectedValue.getter();
  v57 = CRRegister.newRefs(from:)();
  v58 = *(v108 + 8);
  v58(v56, v55);
  v58(v54, v55);
  specialized Set.formUnion<A>(_:)(v57);
  v59 = v109;
  v60 = v111;
  CRRegister.projectedValue.getter();
  v61 = v110;
  CRRegister.projectedValue.getter();
  v62 = CRRegister.newRefs(from:)();
  v63 = *(v112 + 8);
  v63(v61, v60);
  v63(v59, v60);
  specialized Set.formUnion<A>(_:)(v62);
  v64 = v113;
  v65 = v115;
  CRRegister.projectedValue.getter();
  v66 = v114;
  CRRegister.projectedValue.getter();
  v67 = CRRegister.newRefs(from:)();
  v68 = *(v116 + 8);
  v68(v66, v65);
  v68(v64, v65);
  specialized Set.formUnion<A>(_:)(v67);
  v69 = v133;
  v70 = v135;
  CRRegister.projectedValue.getter();
  v71 = v134;
  CRRegister.projectedValue.getter();
  v72 = CRRegister.newRefs(from:)();
  v73 = *(v136 + 8);
  v136 += 8;
  v73(v71, v70);
  v73(v69, v70);
  specialized Set.formUnion<A>(_:)(v72);
  v74 = v117;
  v75 = v119;
  CRRegister.projectedValue.getter();
  v76 = v118;
  CRRegister.projectedValue.getter();
  v77 = CRRegister.newRefs(from:)();
  v78 = *(v120 + 8);
  v78(v76, v75);
  v78(v74, v75);
  specialized Set.formUnion<A>(_:)(v77);
  v79 = v121;
  v80 = v123;
  CRRegister.projectedValue.getter();
  v81 = v122;
  CRRegister.projectedValue.getter();
  v82 = CRRegister.newRefs(from:)();
  v83 = *(v124 + 8);
  v83(v81, v80);
  v83(v79, v80);
  specialized Set.formUnion<A>(_:)(v82);
  v84 = v125;
  v85 = v127;
  CRRegister.projectedValue.getter();
  v86 = v126;
  CRRegister.projectedValue.getter();
  v87 = CRRegister.newRefs(from:)();
  v88 = *(v128 + 8);
  v88(v86, v85);
  v88(v84, v85);
  specialized Set.formUnion<A>(_:)(v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v89 = CROrderedSet.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v89);
  v90 = v129;
  v91 = v131;
  CRRegister.projectedValue.getter();
  v92 = v130;
  CRRegister.projectedValue.getter();
  v93 = CRRegister.newRefs(from:)();
  v94 = *(v132 + 8);
  v94(v92, v91);
  v94(v90, v91);
  specialized Set.formUnion<A>(_:)(v93);
  v95 = v133;
  v96 = v135;
  CRRegister.projectedValue.getter();
  v97 = v134;
  CRRegister.projectedValue.getter();
  v98 = CRRegister.newRefs(from:)();
  v73(v97, v96);
  v73(v95, v96);
  specialized Set.formUnion<A>(_:)(v98);
  v99 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v99);
  return v137;
}

Swift::Bool __swiftcall Image.needToFinalizeTimestamps()()
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v56 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v74 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v78 = *(v14 - 8);
  v79 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  v80 = v0;
  CRRegister.projectedValue.getter();
  v25 = CRRegister.needToFinalizeTimestamps()();
  v26 = *(v22 + 8);
  v26(v24, v21);
  v54 = v25 || (v57 = v10, type metadata accessor for Image(0), CRRegister.projectedValue.getter(), v27 = CRRegister.needToFinalizeTimestamps()(), v26(v24, v21), v27) || (CRRegister.projectedValue.getter(), v28 = CRRegister.needToFinalizeTimestamps()(), (*(v18 + 8))(v20, v17), v28) || (v29 = v79, CRRegister.projectedValue.getter(), v30 = CRRegister.needToFinalizeTimestamps()(), (*(v78 + 8))(v16, v29), v30) || (v31 = v75, v32 = v77, CRRegister.projectedValue.getter(), v33 = CRRegister.needToFinalizeTimestamps()(), (*(v76 + 8))(v31, v32), v33) || (v34 = v73, v35 = v57, CRRegister.projectedValue.getter(), v36 = CRRegister.needToFinalizeTimestamps()(), (*(v74 + 8))(v34, v35), v36) || (v37 = v70, v38 = v72, CRRegister.projectedValue.getter(), v39 = CRRegister.needToFinalizeTimestamps()(), v40 = *(v71 + 8), v40(v37, v38), v39) || (v41 = v67, v42 = v69, CRRegister.projectedValue.getter(), v43 = CRRegister.needToFinalizeTimestamps()(), (*(v68 + 8))(v41, v42), v43) || (v44 = v64, v45 = v66, CRRegister.projectedValue.getter(), v46 = CRRegister.needToFinalizeTimestamps()(), (*(v65 + 8))(v44, v45), v46) || (v47 = v61, v48 = v63, CRRegister.projectedValue.getter(), v49 = CRRegister.needToFinalizeTimestamps()(), (*(v62 + 8))(v47, v48), v49) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR), CROrderedSet.needToFinalizeTimestamps()()) || (v50 = v58, v51 = v60, CRRegister.projectedValue.getter(), v52 = CRRegister.needToFinalizeTimestamps()(), (*(v59 + 8))(v50, v51), v52) || (CRRegister.projectedValue.getter(), v53 = CRRegister.needToFinalizeTimestamps()(), v40(v37, v38), v53) || UnknownProperties.needToFinalizeTimestamps()();
  return v54;
}

uint64_t Image.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v3 = *(v2 - 8);
  v111 = v2;
  v112 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v110 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v109 = v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  v107 = v7;
  v108 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v106 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v13 = *(v12 - 8);
  v103 = v12;
  v104 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v102 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v101 = v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v18 = *(v17 - 8);
  v99 = v17;
  v100 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v98 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = v79 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v23 = *(v22 - 8);
  v115 = v22;
  v116 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v114 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v113 = v79 - v26;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v96 = *(v95 - 1);
  MEMORY[0x1EEE9AC00](v95);
  v94 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v93 = v79 - v29;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v89 = v79 - v32;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v85 = v79 - v35;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v81 = v79 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v79 - v44;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v80 = *(v40 + 16);
  v80(v42, v45, v39);
  CRRegister.projectedValue.setter();
  v46 = *(v40 + 8);
  v46(v45, v39);
  v79[1] = type metadata accessor for Image(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v80(v42, v45, v39);
  CRRegister.projectedValue.setter();
  v46(v45, v39);
  v47 = v81;
  v48 = v83;
  CRRegister.projectedValue.getter();
  v49 = a1;
  CRRegister.finalizeTimestamps(_:)();
  v50 = v84;
  (*(v84 + 16))(v82, v47, v48);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v47, v48);
  v51 = v85;
  v52 = v87;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v53 = v88;
  (*(v88 + 16))(v86, v51, v52);
  CRRegister.projectedValue.setter();
  (*(v53 + 8))(v51, v52);
  v54 = v89;
  v55 = v91;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v56 = v92;
  (*(v92 + 16))(v90, v54, v55);
  CRRegister.projectedValue.setter();
  (*(v56 + 8))(v54, v55);
  v57 = v93;
  v58 = v95;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v59 = v96;
  (*(v96 + 16))(v94, v57, v58);
  CRRegister.projectedValue.setter();
  (*(v59 + 8))(v57, v58);
  v60 = v113;
  v61 = v115;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v62 = v116;
  v96 = *(v116 + 16);
  (v96)(v114, v60, v61);
  CRRegister.projectedValue.setter();
  v63 = *(v62 + 8);
  v116 = v62 + 8;
  v95 = v63;
  (v63)(v60, v61);
  v64 = v97;
  v65 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v66 = v100;
  (*(v100 + 16))(v98, v64, v65);
  CRRegister.projectedValue.setter();
  (*(v66 + 8))(v64, v65);
  v67 = v101;
  v68 = v103;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v69 = v104;
  (*(v104 + 16))(v102, v67, v68);
  CRRegister.projectedValue.setter();
  (*(v69 + 8))(v67, v68);
  v70 = v105;
  v71 = v107;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v72 = v108;
  (*(v108 + 16))(v106, v70, v71);
  CRRegister.projectedValue.setter();
  (*(v72 + 8))(v70, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.finalizeTimestamps(_:)();
  v73 = v109;
  v74 = v111;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v75 = v112;
  (*(v112 + 16))(v110, v73, v74);
  CRRegister.projectedValue.setter();
  (*(v75 + 8))(v73, v74);
  v76 = v113;
  v77 = v115;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (v96)(v114, v76, v77);
  CRRegister.projectedValue.setter();
  (v95)(v76, v77);
  return MEMORY[0x1DA6CBA30](v49);
}

uint64_t Image.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v284 = a1;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v229 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v228 = v222 - v2;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v235 = v222 - v3;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v241 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v240 = v222 - v4;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v246 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v245 = v222 - v5;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v257 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v225 = v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v250 = v222 - v8;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v254 = v222 - v9;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v261 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v260 = v222 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v266 = *(v11 - 8);
  v267 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v265 = v222 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v271 = *(v13 - 8);
  v272 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v270 = v222 - v14;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v285 = *(v277 - 1);
  MEMORY[0x1EEE9AC00](v277);
  v274 = v222 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v276 = v222 - v17;
  v18 = type metadata accessor for CRCodableVersion();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v224 = v222 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v226 = v222 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v227 = v222 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v231 = v222 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v232 = v222 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v233 = v222 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v234 = v222 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v238 = v222 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v239 = v222 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v243 = v222 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v244 = v222 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v248 = v222 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v249 = v222 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v252 = v222 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v253 = v222 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v258 = v222 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v259 = v222 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v263 = v222 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v264 = v222 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v268 = v222 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v269 = v222 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v222 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v273 = v222 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v68 = v222 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v222 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = v222 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v222 - v76;
  v275 = type metadata accessor for Image(0);
  v282 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v78 = *(v19 + 104);
  v279 = *MEMORY[0x1E6995288];
  v280 = v19 + 104;
  v278 = v78;
  v78(v74);
  v283 = v77;
  v79 = static CRCodableVersion.== infix(_:_:)();
  v81 = v19 + 8;
  v80 = *(v19 + 8);
  v281 = v74;
  v82 = v74;
  v83 = v18;
  v80(v82, v18);
  if (v79)
  {
    return (*(v19 + 32))(v284, v283, v18);
  }

  v86 = v276;
  v85 = v277;
  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v87 = *(v285 + 8);
  v285 += 8;
  v223 = v87;
  v87(v86, v85);
  v88 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v89 = v283;
  v276 = v88;
  v90 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v91 = (v90 & 1) == 0;
  if (v90)
  {
    v92 = v89;
  }

  else
  {
    v92 = v68;
  }

  if (v91)
  {
    v93 = v89;
  }

  else
  {
    v93 = v68;
  }

  v80(v92, v83);
  v96 = *(v19 + 32);
  v94 = v19 + 32;
  v95 = v96;
  v96(v71, v93, v83);
  v96(v89, v71, v83);
  v97 = v281;
  v278(v281, v279, v83);
  v98 = static CRCodableVersion.== infix(_:_:)();
  v80(v97, v83);
  if (v98)
  {
    return v95(v284, v89, v83);
  }

  v99 = v81;
  v100 = v274;
  v222[1] = v99;
  v101 = v277;
  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v102 = v100;
  v103 = v80;
  v223(v102, v101);
  v104 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v105 = (v104 & 1) == 0;
  if (v104)
  {
    v106 = v89;
  }

  else
  {
    v106 = v63;
  }

  if (v105)
  {
    v107 = v89;
  }

  else
  {
    v107 = v63;
  }

  v80(v106, v83);
  v108 = v273;
  v95(v273, v107, v83);
  v285 = v94;
  v95(v89, v108, v83);
  v109 = v281;
  v278(v281, v279, v83);
  v110 = static CRCodableVersion.== infix(_:_:)();
  v80(v109, v83);
  if (v110)
  {
    goto LABEL_18;
  }

  v112 = v270;
  v113 = v272;
  CRRegister.projectedValue.getter();
  v114 = v268;
  CRRegister.minEncodingVersion.getter();
  (*(v271 + 8))(v112, v113);
  v115 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v116 = (v115 & 1) == 0;
  if (v115)
  {
    v117 = v89;
  }

  else
  {
    v117 = v114;
  }

  if (v116)
  {
    v118 = v89;
  }

  else
  {
    v118 = v114;
  }

  v80(v117, v83);
  v119 = v269;
  v95(v269, v118, v83);
  v95(v89, v119, v83);
  v120 = v281;
  v278(v281, v279, v83);
  v121 = static CRCodableVersion.== infix(_:_:)();
  v80(v120, v83);
  v122 = v284;
  if (v121 & 1) != 0 || ((v123 = v265, v124 = v267, CRRegister.projectedValue.getter(), v125 = v263, CRRegister.minEncodingVersion.getter(), (*(v266 + 8))(v123, v124), v126 = dispatch thunk of static Comparable.>= infix(_:_:)(), v127 = (v126 & 1) == 0) ? (v128 = v125) : (v128 = v89), v127 ? (v129 = v89) : (v129 = v125), (v80(v128, v83), v130 = v264, v95(v264, v129, v83), v95(v89, v130, v83), v131 = v281, v278(v281, v279, v83), v132 = static CRCodableVersion.== infix(_:_:)(), v80(v131, v83), (v132) || ((v133 = v260, v134 = v262, CRRegister.projectedValue.getter(), v135 = v258, CRRegister.minEncodingVersion.getter(), (*(v261 + 8))(v133, v134), v136 = dispatch thunk of static Comparable.>= infix(_:_:)(), v137 = (v136 & 1) == 0) ? (v138 = v135) : (v138 = v89), v137 ? (v139 = v89) : (v139 = v135), v80(v138, v83), v140 = v259, v95(v259, v139, v83), v95(v89, v140, v83), v141 = v281, v278(v281, v279, v83), v142 = static CRCodableVersion.== infix(_:_:)(), v80(v141, v83), (v142)))
  {
    v111 = v122;
    return v95(v111, v89, v83);
  }

  v143 = v254;
  v144 = v256;
  CRRegister.projectedValue.getter();
  v145 = v252;
  CRRegister.minEncodingVersion.getter();
  (*(v255 + 8))(v143, v144);
  v146 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v147 = (v146 & 1) == 0;
  v148 = (v146 & 1) != 0 ? v89 : v145;
  v149 = v147 ? v89 : v145;
  v80(v148, v83);
  v150 = v253;
  v95(v253, v149, v83);
  v95(v89, v150, v83);
  v151 = v281;
  v278(v281, v279, v83);
  v152 = static CRCodableVersion.== infix(_:_:)();
  v80(v151, v83);
  if (v152)
  {
LABEL_18:
    v111 = v284;
    return v95(v111, v89, v83);
  }

  v153 = v250;
  v154 = v251;
  CRRegister.projectedValue.getter();
  v155 = v248;
  CRRegister.minEncodingVersion.getter();
  v156 = *(v257 + 8);
  v257 += 8;
  v277 = v156;
  (v156)(v153, v154);
  v157 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v158 = (v157 & 1) == 0;
  if (v157)
  {
    v159 = v89;
  }

  else
  {
    v159 = v155;
  }

  if (v158)
  {
    v160 = v89;
  }

  else
  {
    v160 = v155;
  }

  v80(v159, v83);
  v161 = v249;
  v95(v249, v160, v83);
  v95(v89, v161, v83);
  v162 = v281;
  v278(v281, v279, v83);
  v163 = static CRCodableVersion.== infix(_:_:)();
  v80(v162, v83);
  v164 = v284;
  if (v163)
  {
    goto LABEL_92;
  }

  v165 = v245;
  v166 = v247;
  CRRegister.projectedValue.getter();
  v167 = v243;
  CRRegister.minEncodingVersion.getter();
  (*(v246 + 8))(v165, v166);
  v168 = v283;
  v169 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v170 = (v169 & 1) == 0;
  v171 = (v169 & 1) != 0 ? v168 : v167;
  v172 = v170 ? v168 : v167;
  v103(v171, v83);
  v173 = v244;
  v95(v244, v172, v83);
  v95(v168, v173, v83);
  v174 = v281;
  v278(v281, v279, v83);
  v175 = static CRCodableVersion.== infix(_:_:)();
  v103(v174, v83);
  if (v175)
  {
    goto LABEL_92;
  }

  v176 = v240;
  v177 = v242;
  CRRegister.projectedValue.getter();
  v178 = v238;
  CRRegister.minEncodingVersion.getter();
  (*(v241 + 8))(v176, v177);
  v179 = v283;
  v180 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v181 = (v180 & 1) == 0;
  v182 = (v180 & 1) != 0 ? v179 : v178;
  v183 = v181 ? v179 : v178;
  v103(v182, v83);
  v184 = v239;
  v95(v239, v183, v83);
  v95(v179, v184, v83);
  v185 = v281;
  v278(v281, v279, v83);
  v186 = static CRCodableVersion.== infix(_:_:)();
  v103(v185, v83);
  if (v186)
  {
    goto LABEL_92;
  }

  v187 = v235;
  v188 = v237;
  CRRegister.projectedValue.getter();
  v189 = v233;
  CRRegister.minEncodingVersion.getter();
  (*(v236 + 8))(v187, v188);
  v190 = v283;
  v191 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v192 = (v191 & 1) == 0;
  v193 = (v191 & 1) != 0 ? v190 : v189;
  v194 = v192 ? v190 : v189;
  v103(v193, v83);
  v195 = v234;
  v95(v234, v194, v83);
  v95(v190, v195, v83);
  v196 = v281;
  v278(v281, v279, v83);
  v197 = static CRCodableVersion.== infix(_:_:)();
  v103(v196, v83);
  if (v197)
  {
    goto LABEL_92;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v198 = v231;
  CROrderedSet.minEncodingVersion.getter();
  v199 = v283;
  v200 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v201 = (v200 & 1) == 0;
  if (v200)
  {
    v202 = v199;
  }

  else
  {
    v202 = v198;
  }

  if (v201)
  {
    v198 = v199;
  }

  v103(v202, v83);
  v203 = v232;
  v95(v232, v198, v83);
  v95(v199, v203, v83);
  v204 = v281;
  v278(v281, v279, v83);
  v205 = static CRCodableVersion.== infix(_:_:)();
  v103(v204, v83);
  if (v205)
  {
    goto LABEL_92;
  }

  v206 = v228;
  v207 = v230;
  CRRegister.projectedValue.getter();
  v208 = v226;
  CRRegister.minEncodingVersion.getter();
  (*(v229 + 8))(v206, v207);
  v209 = v283;
  v210 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v211 = (v210 & 1) == 0;
  v212 = (v210 & 1) != 0 ? v209 : v208;
  if (v211)
  {
    v208 = v209;
  }

  v103(v212, v83);
  v213 = v227;
  v95(v227, v208, v83);
  v95(v209, v213, v83);
  v214 = v281;
  v278(v281, v279, v83);
  v215 = static CRCodableVersion.== infix(_:_:)();
  v103(v214, v83);
  if (v215)
  {
LABEL_92:
    v216 = v164;
    v217 = v283;
  }

  else
  {
    v218 = v225;
    v219 = v251;
    CRRegister.projectedValue.getter();
    v220 = v224;
    CRRegister.minEncodingVersion.getter();
    (v277)(v218, v219);
    v221 = v283;
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v103(v221, v83);
      v216 = v164;
      v217 = v220;
    }

    else
    {
      v103(v220, v83);
      v216 = v164;
      v217 = v221;
    }
  }

  return v95(v216, v217, v83);
}

uint64_t Image.observableDifference(from:with:)@<X0>(uint64_t a3@<X8>)
{
  v4 = v3;
  v171 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v6 = *(v5 - 8);
  v169 = v5;
  v170 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v168 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v167 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v179 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v13 = *(v12 - 8);
  v165 = v12;
  v166 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v164 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v163 = &v135 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v162 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v159 = &v135 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v180 = &v135 - v21;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v158 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v135 - v24;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v178 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v173 = &v135 - v27;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v154 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v151 = &v135 - v30;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v149 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v146 = &v135 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMd, &_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v182 = &v135 - v35;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v144 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v140 = &v135 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v183 = &v135 - v40;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v139 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v135 = &v135 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v135 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v135 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v145 = &v135 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v143 = &v135 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v137 = &v135 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v181 = &v135 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v176 = &v135 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v177 = &v135 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v184 = &v135 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v185 = &v135 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v150 = &v135 - v68;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v69 = *(v45 + 8);
  v69(v47, v44);
  v69(v50, v44);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v69(v47, v44);
  v69(v50, v44);
  v70 = v135;
  v71 = v138;
  CRRegister.projectedValue.getter();
  v72 = v136;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v73 = *(v139 + 8);
  v73(v72, v71);
  v73(v70, v71);
  v74 = v4;
  v75 = v140;
  v76 = v142;
  CRRegister.projectedValue.getter();
  v77 = v141;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v78 = *(v144 + 8);
  v78(v77, v76);
  v78(v75, v76);
  v79 = v74;
  v80 = v146;
  v81 = v148;
  CRRegister.projectedValue.getter();
  v82 = v147;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v83 = *(v149 + 8);
  v83(v82, v81);
  v83(v80, v81);
  v84 = v151;
  v85 = v153;
  CRRegister.projectedValue.getter();
  v86 = v152;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v87 = *(v154 + 1);
  v87(v86, v85);
  v87(v84, v85);
  v88 = v173;
  v89 = v175;
  CRRegister.projectedValue.getter();
  v90 = v174;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v91 = *(v178 + 8);
  v178 += 8;
  v92 = v90;
  v93 = v91;
  v154 = v91;
  v91(v92, v89);
  v93(v88, v89);
  v94 = v155;
  v95 = v157;
  CRRegister.projectedValue.getter();
  v96 = v156;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v97 = *(v158 + 8);
  v97(v96, v95);
  v97(v94, v95);
  v172 = v79;
  v98 = v159;
  v99 = v161;
  CRRegister.projectedValue.getter();
  v100 = v160;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v101 = *(v162 + 8);
  v101(v100, v99);
  v101(v98, v99);
  v102 = v163;
  v103 = v165;
  CRRegister.projectedValue.getter();
  v104 = v164;
  CRRegister.projectedValue.getter();
  v105 = v137;
  CRRegister.observableDifference(from:with:)();
  v106 = *(v166 + 8);
  v106(v104, v103);
  v106(v102, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.observableDifference(from:with:)();
  v107 = v167;
  v108 = v169;
  CRRegister.projectedValue.getter();
  v109 = v168;
  CRRegister.projectedValue.getter();
  v110 = v143;
  CRRegister.observableDifference(from:with:)();
  v111 = *(v170 + 8);
  v112 = v109;
  v113 = v105;
  v111(v112, v108);
  v114 = v108;
  v115 = v145;
  v111(v107, v114);
  v116 = v110;
  v117 = v173;
  v118 = v175;
  CRRegister.projectedValue.getter();
  v119 = v174;
  CRRegister.projectedValue.getter();
  v120 = v150;
  CRRegister.observableDifference(from:with:)();
  v121 = v119;
  v122 = v154;
  v154(v121, v118);
  v122(v117, v118);
  v123 = type metadata accessor for CRValueObservableDifference();
  v124 = *(*(v123 - 8) + 48);
  if (v124(v120, 1, v123) == 1 && v124(v185, 1, v123) == 1 && v124(v184, 1, v123) == 1 && (v125 = type metadata accessor for ContentsBounds.ObservableDifference(0), (*(*(v125 - 8) + 48))(v183, 1, v125) == 1) && (v126 = type metadata accessor for ImageFilter.ObservableDifference(0), (*(*(v126 - 8) + 48))(v182, 1, v126) == 1) && v124(v177, 1, v123) == 1 && v124(v176, 1, v123) == 1 && v124(v181, 1, v123) == 1 && (v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMR), (*(*(v127 - 8) + 48))(v180, 1, v127) == 1) && v124(v113, 1, v123) == 1 && (v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR), (*(*(v128 - 8) + 48))(v179, 1, v128) == 1) && v124(v116, 1, v123) == 1 && v124(v115, 1, v123) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v129 = type metadata accessor for Image.ObservableDifference(0);
    (*(*(v129 - 8) + 56))(v171, 1, 1, v129);
    v130 = v176;
    v131 = v177;
  }

  else
  {
    v132 = v171;
    outlined init with copy of Date?(v120, v171, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v133 = type metadata accessor for Image.ObservableDifference(0);
    outlined init with copy of Date?(v185, v132 + v133[5], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v184, v132 + v133[6], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v183, v132 + v133[7], &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMR);
    outlined init with copy of Date?(v182, v132 + v133[8], &_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMd, &_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMR);
    v131 = v177;
    outlined init with copy of Date?(v177, v132 + v133[9], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v130 = v176;
    outlined init with copy of Date?(v176, v132 + v133[10], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v181, v132 + v133[11], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v180, v132 + v133[12], &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
    outlined init with copy of Date?(v113, v132 + v133[13], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v179, v132 + v133[14], &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    outlined init with copy of Date?(v116, v132 + v133[15], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v115, v132 + v133[16], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    (*(*(v133 - 1) + 56))(v132, 0, 1, v133);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v179, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v180, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v181, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v131, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v182, &_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMd, &_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v183, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v184, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v185, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

double Image.encode(to:)()
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v56 - v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v67 = *(v1 - 8);
  v68 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v66 = &v56 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v56 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v84 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v85 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v28 = v86;
  v29 = dispatch thunk of CREncoder.keyedContainer()();
  if (!v28)
  {
    v60 = v24;
    v61 = v22;
    v58 = v20;
    v59 = v18;
    v57 = v17;
    v56 = v15;
    v31 = v29;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    v86 = v31;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v32 = *(v61 + 8);
    v32(v27, v21);
    type metadata accessor for Image(0);
    v33 = v60;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v32(v33, v21);
    v34 = v58;
    v35 = v59;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v85 + 8))(v34, v35);
    v36 = v57;
    v37 = v56;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ContentsBounds?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v84 + 8))(v36, v37);
    v38 = v81;
    v39 = v83;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ImageFilter?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v82 + 8))(v38, v39);
    v40 = v78;
    v41 = v80;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAssetOrData?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v79 + 8))(v40, v41);
    v43 = v75;
    v42 = v76;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v45 = v77 + 8;
    v44 = *(v77 + 8);
    v44(v43, v42);
    v46 = v72;
    v47 = v73;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Data?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v74 + 8))(v47, v46);
    v48 = v69;
    v49 = v71;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v77 = v45;
    (*(v70 + 8))(v48, v49);
    v50 = v66;
    v51 = v68;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v67 + 8))(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR, MEMORY[0x1E6995138]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v52 = v63;
    v53 = v65;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ImageMetadata> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v64 + 8))(v52, v53);
    v54 = v62;
    v55 = v76;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v44(v54, v55);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t Image.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v242 = a1;
  v171 = type metadata accessor for UnknownProperties();
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v176 = (&v161 - v5);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v172 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v168 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v167 = &v161 - v8;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v178 = &v161 - v9;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v174 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v181 = &v161 - v10;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v186 = &v161 - v11;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v182 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v188 = &v161 - v12;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v161 - v13;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v177 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v161 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v228 = *(v17 - 8);
  v229 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v202 = &v161 - v18;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v219 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v207 = &v161 - v19;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v215 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v214 = &v161 - v20;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v216 = &v161 - v21;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v223 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v226 = &v161 - v24;
  v236 = type metadata accessor for ImageMetadata(0);
  MEMORY[0x1EEE9AC00](v236);
  v241 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v234 = &v161 - v27;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v237);
  v233 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v232 = &v161 - v30;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v239);
  v238 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v231 = &v161 - v33;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  MEMORY[0x1EEE9AC00](v240);
  v230 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v161 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v161 - v42;
  type metadata accessor for CGRect(0);
  v45 = v44;
  v46 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v243 = 0u;
  v244 = 0u;
  CRRegister.init(wrappedValue:)();
  v47 = type metadata accessor for Image(0);
  v48 = v47[5];
  v243 = 0u;
  v244 = 0u;
  v213 = v48;
  v224 = v45;
  v225 = v46;
  CRRegister.init(wrappedValue:)();
  v49 = v47[6];
  *&v243 = 0;
  v50 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v218 = v49;
  v217 = v50;
  CRRegister.init(wrappedValue:)();
  v51 = v47[7];
  v52 = type metadata accessor for ContentsBounds(0);
  (*(*(v52 - 8) + 56))(v43, 1, 1, v52);
  outlined init with copy of Date?(v43, v40, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v53 = lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  v203 = v51;
  v212 = v38;
  v211 = v53;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v54 = v47[8];
  v55 = type metadata accessor for ImageFilter(0);
  (*(*(v55 - 8) + 56))(v37, 1, 1, v55);
  outlined init with copy of Date?(v37, v230, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  v56 = lazy protocol witness table accessor for type ImageFilter? and conformance <A> A?();
  v210 = v54;
  v230 = v56;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  v57 = v47[9];
  v58 = type metadata accessor for CRAssetOrData(0);
  v59 = v231;
  (*(*(v58 - 8) + 56))(v231, 1, 1, v58);
  outlined init with copy of Date?(v59, v238, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v60 = lazy protocol witness table accessor for type CRAssetOrData? and conformance <A> A?();
  v205 = v57;
  v201 = v60;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v61 = v47[10];
  v243 = 0uLL;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v62 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  v231 = v61;
  CRRegister.init(wrappedValue:)();
  v63 = v47[11];
  v243 = xmmword_1D405C100;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v65 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v199 = v63;
  v204 = v64;
  v194 = v65;
  CRRegister.init(wrappedValue:)();
  v66 = v47[12];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v68 = v232;
  (*(*(v67 - 8) + 56))(v232, 1, 1, v67);
  outlined init with copy of Date?(v68, v233, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v69 = lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v191 = v66;
  v187 = v69;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v70 = v47[13];
  LODWORD(v243) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  v72 = v71;
  v73 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  v232 = v70;
  v233 = v72;
  v185 = v73;
  CRRegister.init(wrappedValue:)();
  v74 = v47[14];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v76 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  v77 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  v173 = v74;
  v184 = v75;
  v183 = v76;
  CROrderedSet.init()();
  v78 = v47[15];
  v79 = v234;
  *(v234 + 1) = 0;
  *(v79 + 16) = 0;
  *v79 = 0;
  *(v79 + 24) = 1;
  *(v79 + 32) = 0;
  *(v79 + 40) = 1;
  UnknownValueProperties.init()();
  outlined init with copy of ImageMetadata(v79, v241, type metadata accessor for ImageMetadata);
  v80 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type ImageMetadata and conformance ImageMetadata, type metadata accessor for ImageMetadata, &protocol conformance descriptor for ImageMetadata);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ImageMetadata(v79, type metadata accessor for ImageMetadata);
  v81 = v47[16];
  v243 = 0uLL;
  CRRegister.init(wrappedValue:)();
  v82 = v47[17];
  v241 = a2;
  UnknownProperties.init()();
  v83 = v235;
  v84 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v83)
  {
LABEL_31:

    return outlined destroy of ImageMetadata(v241, type metadata accessor for Image);
  }

  else
  {
    v165 = v77;
    v166 = v80;
    v164 = v81;
    v163 = v78;
    v85 = v226;
    v234 = v62;
    v86 = v227;
    v87 = v228;
    v88 = v229;
    v162 = v82;
    v235 = v84;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      v89 = v88;
      (*(v221 + 40))(v241, v85, v222);
    }

    else
    {
      v89 = v88;
    }

    v90 = v87;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v91 = v223;
      CRRegister.init(from:)();
      v92 = v86;
      (*(v221 + 40))(v241 + v213, v91, v222);
    }

    else
    {
      v92 = v86;
    }

    v93 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v94 = v219;
    v95 = v218;
    if (v93)
    {
      v96 = v216;
      CRRegister.init(from:)();
      v97 = v220;
      (*(v208 + 40))(v241 + v95, v96, v209);
    }

    else
    {
      v97 = v220;
    }

    v98 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v99 = v215;
    v100 = v214;
    if (v98)
    {
      CRRegister.init(from:)();
      (*(v99 + 40))(v241 + v203, v100, v97);
    }

    v101 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v102 = v210;
    if (v101)
    {
      v103 = v207;
      CRRegister.init(from:)();
      (*(v94 + 40))(v241 + v102, v103, v92);
    }

    v104 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v105 = v206;
    v106 = v231;
    v107 = v205;
    if (v104)
    {
      v108 = v202;
      CRRegister.init(from:)();
      (*(v90 + 40))(v241 + v107, v108, v89);
    }

    v109 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v110 = v200;
    v111 = v199;
    if (v109)
    {
      v112 = v198;
      CRRegister.init(from:)();
      (*(v189 + 40))(&v106[v241], v112, v190);
    }

    v113 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v114 = v197;
    v115 = v196;
    v116 = v195;
    if (v113)
    {
      CRRegister.init(from:)();
      (*(v115 + 40))(v241 + v111, v116, v114);
    }

    v117 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v118 = v193;
    v119 = v192;
    v120 = v191;
    if (v117)
    {
      v121 = v188;
      CRRegister.init(from:)();
      (*(v182 + 40))(v241 + v120, v121, v110);
    }

    v122 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v123 = v232;
    if (v122)
    {
      v124 = v186;
      CRRegister.init(from:)();
      (*(v179 + 40))(&v123[v241], v124, v180);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v125 = v181;
      CROrderedSet.init(from:)();
      (*(v174 + 40))(v241 + v173, v125, v105);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v126 = v178;
      CRRegister.init(from:)();
      (*(v119 + 40))(v241 + v163, v126, v118);
    }

    v127 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v128 = v190;
    v129 = v189;
    v130 = v177;
    v131 = v164;
    if (v127)
    {
      CRRegister.init(from:)();
      (*(v129 + 40))(v241 + v131, v130, v128);
    }

    v133 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v239 = 0;
    v134 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v133);

    *&v243 = v134;
    specialized Set._Variant.remove(_:)(0x73646E756F62, 0xE600000000000000);

    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

    specialized Set._Variant.remove(_:)(0x73646E756F4263, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x7265746C6966, 0xE600000000000000);

    specialized Set._Variant.remove(_:)(0x6567616D69, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(1701667182, 0xE400000000000000);

    specialized Set._Variant.remove(_:)(7234919, 0xE300000000000000);

    specialized Set._Variant.remove(_:)(0x676E6977617264, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x7461746E6569726FLL, 0xEB000000006E6F69);

    specialized Set._Variant.remove(_:)(0x656D656C65627573, 0xEB0000000073746ELL);

    specialized Set._Variant.remove(_:)(0x617461646174656DLL, 0xE800000000000000);

    specialized Set._Variant.remove(_:)(0x7470697263736564, 0xEB000000006E6F69);

    v135 = v243;
    v136 = v243 + 56;
    v137 = 1 << *(v243 + 32);
    v138 = -1;
    if (v137 < 64)
    {
      v138 = ~(-1 << v137);
    }

    v139 = v138 & *(v243 + 56);
    v140 = (v137 + 63) >> 6;
    v141 = (v172 + 56);

    v142 = 0;
    v240 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v143 = v142;
      if (!v139)
      {
        break;
      }

LABEL_40:
      v144 = __clz(__rbit64(v139));
      v139 &= v139 - 1;
      v145 = (*(v135 + 48) + ((v142 << 10) | (16 * v144)));
      v147 = *v145;
      v146 = v145[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v238 = *(v175 + 48);
        v149 = v176;
        *v176 = v147;
        v149[1] = v146;

        v150 = v239;
        AnyCRDT.init(from:)();
        v239 = v150;
        if (v150)
        {
LABEL_55:

          swift_bridgeObjectRelease_n();
          return outlined destroy of ImageMetadata(v241, type metadata accessor for Image);
        }

        v151 = v176;
        (*v141)(v176, 0, 1, v175);
        v152 = v151;
        v153 = v167;
        outlined init with take of Range<AttributedString.Index>(v152, v167, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        outlined init with take of Range<AttributedString.Index>(v153, v168, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v240[2] + 1, 1, v240);
        }

        v155 = v240[2];
        v154 = v240[3];
        if (v155 >= v154 >> 1)
        {
          v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 1, 1, v240);
        }

        v156 = v240;
        v240[2] = v155 + 1;
        outlined init with take of Range<AttributedString.Index>(v168, v156 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v155, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      }

      else
      {

        v148 = v176;
        (*v141)(v176, 1, 1, v175);
        outlined destroy of StocksKitCurrencyCache.Provider?(v148, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
      }
    }

    while (1)
    {
      v142 = v143 + 1;
      if (__OFADD__(v143, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v142 >= v140)
      {
        break;
      }

      v139 = *(v136 + 8 * v142);
      ++v143;
      if (v139)
      {
        goto LABEL_40;
      }
    }

    v157 = v240;
    if (v240[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
      v158 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v158 = MEMORY[0x1E69E7CC8];
    }

    v245 = v158;
    v159 = v239;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v157, 1, &v245);
    if (v159)
    {

      goto LABEL_31;
    }

    v160 = v169;
    UnknownProperties.init(_:)();

    return (*(v170 + 40))(v241 + v162, v160, v171);
  }
}

uint64_t Image.delta(_:from:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v187 = a3;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v186 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v185 = &v168 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v200 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v225 = &v168 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v199 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v226 = &v168 - v14;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v184 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v183 = &v168 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v198 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v227 = &v168 - v21;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v182 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v168 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v197 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v228 = &v168 - v28;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v180 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v179 = &v168 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v196 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v223 = &v168 - v35;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v215 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v205 = &v168 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v204 = &v168 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v195 = &v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v194 = &v168 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v224 = &v168 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v222 = &v168 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v48 = *(v47 - 8);
  v216 = v47;
  v217 = v48;
  MEMORY[0x1EEE9AC00](v47);
  v178 = &v168 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v177 = &v168 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v193 = &v168 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v230 = &v168 - v55;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v206 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v175 = &v168 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v174 = &v168 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v192 = &v168 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v231 = &v168 - v62;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v219 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v172 = &v168 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v171 = &v168 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v191 = &v168 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v232 = &v168 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v220 = *(v70 - 8);
  v221 = v70;
  MEMORY[0x1EEE9AC00](v70);
  v170 = &v168 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v169 = &v168 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v190 = &v168 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v233 = &v168 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v176 = *(v78 - 8);
  v79 = v176;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v168 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v168 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v85 - 8);
  v189 = &v168 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v188 = &v168 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v234 = &v168 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v201 = &v168 - v92;
  CRRegister.projectedValue.getter();
  v202 = a2;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v93 = *(v79 + 8);
  v93(v81, v78);
  v93(v84, v78);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v173 = v78;
  v93(v81, v78);
  v93(v84, v78);
  v94 = v169;
  v95 = v221;
  CRRegister.projectedValue.getter();
  v96 = v170;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v97 = *(v220 + 8);
  v97(v96, v95);
  v97(v94, v95);
  v98 = v171;
  v99 = v203;
  CRRegister.projectedValue.getter();
  v100 = v172;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v101 = *(v219 + 8);
  v101(v100, v99);
  v101(v98, v99);
  v102 = v174;
  v103 = v218;
  CRRegister.projectedValue.getter();
  v104 = v175;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v105 = *(v206 + 8);
  v105(v104, v103);
  v105(v102, v103);
  v106 = v177;
  v107 = v216;
  CRRegister.projectedValue.getter();
  v108 = v178;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v109 = *(v217 + 8);
  v109(v108, v107);
  v109(v106, v107);
  v110 = v204;
  v111 = v229;
  CRRegister.projectedValue.getter();
  v112 = v205;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v113 = v112;
  v178 = v215[1];
  v114 = v178;
  (v178)(v113, v111);
  v114(v110, v111);
  v115 = v179;
  v116 = v214;
  CRRegister.projectedValue.getter();
  v117 = v180;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v118 = *(v213 + 8);
  v118(v117, v116);
  v118(v115, v116);
  v119 = v181;
  v120 = v212;
  CRRegister.projectedValue.getter();
  v121 = v182;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v122 = *(v211 + 8);
  v122(v121, v120);
  v122(v119, v120);
  v123 = v183;
  v124 = v210;
  CRRegister.projectedValue.getter();
  v125 = v184;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v126 = *(v209 + 8);
  v126(v125, v124);
  v126(v123, v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.delta(_:from:)();
  v127 = v185;
  v128 = v208;
  CRRegister.projectedValue.getter();
  v129 = v186;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v130 = *(v207 + 8);
  v130(v129, v128);
  v131 = v128;
  v132 = v173;
  v130(v127, v131);
  v133 = v206;
  v134 = v204;
  v135 = v229;
  CRRegister.projectedValue.getter();
  v136 = v203;
  v137 = v205;
  CRRegister.projectedValue.getter();
  v138 = v201;
  CRRegister.delta(_:from:)();
  v139 = v178;
  (v178)(v137, v135);
  v139(v134, v135);
  v141 = v222;
  v140 = v223;
  v142 = v176;
  v143 = *(v176 + 48);
  if (v143(v138, 1, v132) == 1 && v143(v234, 1, v132) == 1 && (*(v220 + 48))(v233, 1, v221) == 1 && (*(v219 + 48))(v232, 1, v136) == 1 && (*(v133 + 48))(v231, 1, v218) == 1 && (*(v217 + 48))(v230, 1, v216) == 1 && (v144 = v215[6], v144(v141, 1, v229) == 1) && (*(v213 + 48))(v140, 1, v214) == 1 && (*(v211 + 48))(v228, 1, v212) == 1 && (*(v209 + 48))(v227, 1, v210) == 1 && (v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR), (*(*(v145 - 8) + 48))(v226, 1, v145) == 1) && (*(v207 + 48))(v225, 1, v208) == 1 && v144(v224, 1, v229) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v146 = type metadata accessor for Image.Partial(0);
    (*(*(v146 - 8) + 56))(v187, 1, 1, v146);
    v148 = v230;
    v147 = v231;
    v149 = v233;
  }

  else
  {
    outlined init with copy of Date?(v138, v188, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v234, v189, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v233, v190, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v232, v191, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    outlined init with copy of Date?(v231, v192, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
    outlined init with copy of Date?(v230, v193, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
    outlined init with copy of Date?(v141, v194, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    outlined init with copy of Date?(v140, v196, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
    outlined init with copy of Date?(v228, v197, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    outlined init with copy of Date?(v227, v198, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v226, v199, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    outlined init with copy of Date?(v225, v200, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
    outlined init with copy of Date?(v224, v195, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v150 = *(v142 + 56);
    v151 = v187;
    v150(v187, 1, 1, v132);
    v152 = type metadata accessor for Image.Partial(0);
    v153 = v132;
    v154 = v152;
    v205 = *(v152 + 20);
    v150(&v205[v151], 1, 1, v153);
    v204 = v154[6];
    (*(v220 + 56))(&v204[v151], 1, 1, v221);
    v221 = v154[7];
    (*(v219 + 56))(v151 + v221, 1, 1, v136);
    v220 = v154[8];
    (*(v133 + 56))(v151 + v220, 1, 1, v218);
    v219 = v154[9];
    (*(v217 + 56))(v151 + v219, 1, 1, v216);
    v218 = v154[10];
    v155 = v215[7];
    v156 = v229;
    v155(v151 + v218, 1, 1, v229);
    v217 = v154[11];
    (*(v213 + 56))(v151 + v217, 1, 1, v214);
    v157 = v154[12];
    (*(v211 + 56))(v151 + v157, 1, 1, v212);
    v158 = v154[13];
    (*(v209 + 56))(v151 + v158, 1, 1, v210);
    v159 = v154[14];
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
    (*(*(v160 - 8) + 56))(v151 + v159, 1, 1, v160);
    v161 = v154[15];
    (*(v207 + 56))(v151 + v161, 1, 1, v208);
    v162 = v154[16];
    v155(v151 + v162, 1, 1, v156);
    v148 = v230;
    outlined assign with take of UUID?(v188, v151, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v189, &v205[v151], &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v190, &v204[v151], &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v191, v151 + v221, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    outlined assign with take of UUID?(v192, v151 + v220, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
    outlined assign with take of UUID?(v193, v151 + v219, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
    outlined assign with take of UUID?(v194, v151 + v218, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    outlined assign with take of UUID?(v196, v151 + v217, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
    v163 = v151 + v157;
    v140 = v223;
    outlined assign with take of UUID?(v197, v163, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    outlined assign with take of UUID?(v198, v151 + v158, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    v164 = v151 + v159;
    v149 = v233;
    outlined assign with take of UUID?(v199, v164, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    outlined assign with take of UUID?(v200, v151 + v161, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
    v165 = v151 + v162;
    v147 = v231;
    outlined assign with take of UUID?(v195, v165, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v201, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v166 = v151;
    v141 = v222;
    (*(*(v154 - 1) + 56))(v166, 0, 1, v154);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v224, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v225, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v226, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v227, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v228, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v140, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v148, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v232, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v234, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
}

BOOL Image.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v171 = &v163 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v177 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v166 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v165 = &v163 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v175 = &v163 - v9;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v181 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v167 = &v163 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v196 = &v163 - v12;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v184 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v170 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v169 = &v163 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v189 = &v163 - v17;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v195 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v174 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v173 = &v163 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v188 = &v163 - v22;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v179 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v178 = &v163 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v168 = &v163 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v192 = &v163 - v29;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v201 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v164 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v185 = &v163 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v182 = &v163 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v215 = (&v163 - v36);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v205 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v187 = &v163 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v186 = &v163 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v214 = &v163 - v41;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v208 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v191 = &v163 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v190 = &v163 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v212 = &v163 - v46;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v213 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v199 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v198 = &v163 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v209 = &v163 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v210 = *(v52 - 8);
  v211 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v203 = &v163 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v202 = &v163 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v58 = &v163 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v163 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v206 = &v163 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v163 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v163 - v69;
  v216 = a1;
  outlined init with copy of Date?(a1, v61, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v71 = *(v63 + 48);
  v72 = v71(v61, 1, v62);
  v172 = v4;
  if (v72 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    (*(v63 + 32))(v70, v61, v62);
    CRRegister.projectedValue.getter();
    v73 = CRRegister.canMerge(delta:)();
    v74 = v58;
    v75 = *(v63 + 8);
    v75(v67, v62);
    v75(v70, v62);
    v58 = v74;
    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  v76 = type metadata accessor for Image.Partial(0);
  outlined init with copy of Date?(v216 + v76[5], v58, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v71(v58, 1, v62) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v77 = v215;
    v79 = v213;
    v78 = v214;
  }

  else
  {
    v80 = v206;
    (*(v63 + 32))(v206, v58, v62);
    type metadata accessor for Image(0);
    CRRegister.projectedValue.getter();
    v81 = CRRegister.canMerge(delta:)();
    v82 = *(v63 + 8);
    v82(v67, v62);
    v82(v80, v62);
    v78 = v214;
    v77 = v215;
    v79 = v213;
    if ((v81 & 1) == 0)
    {
      return 0;
    }
  }

  v83 = v209;
  outlined init with copy of Date?(v216 + v76[6], v209, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v85 = v210;
  v84 = v211;
  if ((*(v210 + 48))(v83, 1, v211) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v86 = v212;
  }

  else
  {
    v87 = v78;
    v88 = v77;
    v89 = v202;
    (*(v85 + 32))(v202, v83, v84);
    type metadata accessor for Image(0);
    v90 = v203;
    CRRegister.projectedValue.getter();
    v91 = CRRegister.canMerge(delta:)();
    v92 = *(v85 + 8);
    v92(v90, v84);
    v93 = v89;
    v77 = v88;
    v78 = v87;
    v92(v93, v84);
    v86 = v212;
    if ((v91 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v216 + v76[7], v86, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  v94 = v207;
  if ((v79[6])(v86, 1, v207) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    v95 = v208;
  }

  else
  {
    v96 = v198;
    v79[4](v198, v86, v94);
    type metadata accessor for Image(0);
    v97 = v199;
    CRRegister.projectedValue.getter();
    v98 = CRRegister.canMerge(delta:)();
    v99 = v79[1];
    (v99)(v97, v94);
    (v99)(v96, v94);
    v95 = v208;
    if ((v98 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v216 + v76[8], v78, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
  v100 = v204;
  if ((*(v95 + 48))(v78, 1, v204) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
    v101 = v205;
  }

  else
  {
    v102 = v190;
    (*(v95 + 32))(v190, v78, v100);
    type metadata accessor for Image(0);
    v103 = v191;
    CRRegister.projectedValue.getter();
    v104 = v100;
    v105 = CRRegister.canMerge(delta:)();
    v106 = *(v95 + 8);
    v106(v103, v104);
    v106(v102, v104);
    v101 = v205;
    if ((v105 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v216 + v76[9], v77, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
  v107 = v200;
  if ((*(v101 + 48))(v77, 1, v200) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
    v108 = v201;
  }

  else
  {
    v109 = v186;
    (*(v101 + 32))(v186, v77, v107);
    type metadata accessor for Image(0);
    v110 = v187;
    CRRegister.projectedValue.getter();
    v111 = v107;
    v112 = CRRegister.canMerge(delta:)();
    v113 = *(v101 + 8);
    v113(v110, v111);
    v113(v109, v111);
    v108 = v201;
    if ((v112 & 1) == 0)
    {
      return 0;
    }
  }

  v215 = v76;
  v114 = v192;
  outlined init with copy of Date?(v216 + v76[10], v192, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  v115 = v197;
  v213 = *(v108 + 48);
  v214 = (v108 + 48);
  if ((v213)(v114, 1, v197) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v116 = v196;
    v117 = v195;
    v118 = v194;
    v119 = v193;
  }

  else
  {
    v120 = v182;
    (*(v108 + 32))(v182, v114, v115);
    type metadata accessor for Image(0);
    v121 = v185;
    CRRegister.projectedValue.getter();
    v122 = CRRegister.canMerge(delta:)();
    v123 = *(v108 + 8);
    v123(v121, v115);
    v123(v120, v115);
    v116 = v196;
    v117 = v195;
    v118 = v194;
    v119 = v193;
    if ((v122 & 1) == 0)
    {
      return 0;
    }
  }

  v124 = v188;
  outlined init with copy of Date?(v216 + v215[11], v188, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  if ((*(v119 + 48))(v124, 1, v118) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
    v125 = v189;
  }

  else
  {
    v126 = v178;
    (*(v119 + 32))(v178, v124, v118);
    type metadata accessor for Image(0);
    v127 = v179;
    CRRegister.projectedValue.getter();
    v128 = CRRegister.canMerge(delta:)();
    v129 = *(v119 + 8);
    v129(v127, v118);
    v129(v126, v118);
    v125 = v189;
    if ((v128 & 1) == 0)
    {
      return 0;
    }
  }

  v130 = v215;
  outlined init with copy of Date?(v216 + v215[12], v125, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  v131 = v183;
  if ((*(v117 + 48))(v125, 1, v183) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    v132 = v184;
  }

  else
  {
    v133 = v173;
    (*(v117 + 32))(v173, v125, v131);
    type metadata accessor for Image(0);
    v134 = v174;
    CRRegister.projectedValue.getter();
    v135 = CRRegister.canMerge(delta:)();
    v136 = *(v117 + 8);
    v136(v134, v131);
    v130 = v215;
    v136(v133, v131);
    v132 = v184;
    if ((v135 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v216 + v130[13], v116, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  v137 = v180;
  if ((*(v132 + 48))(v116, 1, v180) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    v138 = v181;
  }

  else
  {
    v139 = v169;
    (*(v132 + 32))(v169, v116, v137);
    type metadata accessor for Image(0);
    v140 = v170;
    CRRegister.projectedValue.getter();
    v141 = v137;
    v142 = CRRegister.canMerge(delta:)();
    v143 = *(v132 + 8);
    v130 = v215;
    v143(v140, v141);
    v143(v139, v141);
    v138 = v181;
    if ((v142 & 1) == 0)
    {
      return 0;
    }
  }

  v144 = v175;
  outlined init with copy of Date?(v216 + v130[14], v175, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v145 = v176;
  if ((*(v138 + 48))(v144, 1, v176) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v144, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    v146 = v177;
  }

  else
  {
    v147 = v167;
    (*(v138 + 32))(v167, v144, v145);
    type metadata accessor for Image(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
    v148 = CROrderedSet.canMerge(delta:)();
    (*(v138 + 8))(v147, v145);
    v146 = v177;
    if ((v148 & 1) == 0)
    {
      return 0;
    }
  }

  v149 = v171;
  outlined init with copy of Date?(v216 + v130[15], v171, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
  v150 = v172;
  if ((*(v146 + 48))(v149, 1, v172) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
    v151 = v201;
  }

  else
  {
    v152 = v165;
    (*(v146 + 32))(v165, v149, v150);
    type metadata accessor for Image(0);
    v153 = v166;
    CRRegister.projectedValue.getter();
    v154 = CRRegister.canMerge(delta:)();
    v155 = *(v146 + 8);
    v155(v153, v150);
    v155(v152, v150);
    v151 = v201;
    if ((v154 & 1) == 0)
    {
      return 0;
    }
  }

  v156 = v168;
  outlined init with copy of Date?(v216 + v130[16], v168, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  v157 = v197;
  if ((v213)(v156, 1, v197) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v156, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    return 1;
  }

  v158 = v164;
  (*(v151 + 32))(v164, v156, v157);
  type metadata accessor for Image(0);
  v159 = v185;
  CRRegister.projectedValue.getter();
  v160 = CRRegister.canMerge(delta:)();
  v161 = *(v151 + 8);
  v161(v159, v157);
  v161(v158, v157);
  return (v160 & 1) != 0;
}

BOOL Image.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v230 = &v173[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v231 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v203 = &v173[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v202 = &v173[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v201 = &v173[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v227 = &v173[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v228 = *(v13 - 8);
  v229 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v200 = &v173[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v221 = &v173[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v222 = *(v17 - 8);
  v223 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v198 = &v173[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v197 = &v173[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v196 = &v173[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v218 = &v173[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v219 = *(v25 - 8);
  v220 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v195 = &v173[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v173[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v193 = &v173[-v30];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v215 = &v173[-v32];
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v192 = &v173[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v191 = &v173[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v190 = &v173[-v37];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v226 = &v173[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v214 = &v173[-v41];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v234 = *(v42 - 8);
  v235 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v199 = &v173[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v44);
  v225 = &v173[-v45];
  MEMORY[0x1EEE9AC00](v46);
  v224 = &v173[-v47];
  MEMORY[0x1EEE9AC00](v48);
  v189 = &v173[-v49];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v211 = &v173[-v51];
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v188 = &v173[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v187 = &v173[-v54];
  MEMORY[0x1EEE9AC00](v55);
  v186 = &v173[-v56];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v210 = &v173[-v58];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v232 = *(v59 - 8);
  v233 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v185 = &v173[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v61);
  v184 = &v173[-v62];
  MEMORY[0x1EEE9AC00](v63);
  v183 = &v173[-v64];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v207 = &v173[-v66];
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v182 = &v173[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v68);
  v181 = &v173[-v69];
  MEMORY[0x1EEE9AC00](v70);
  v180 = &v173[-v71];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v204 = &v173[-v73];
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v179 = &v173[-((v74 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v75);
  v178 = &v173[-v76];
  MEMORY[0x1EEE9AC00](v77);
  v177 = &v173[-v78];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v81 = &v173[-((v80 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v173[-v83];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v176 = &v173[-((v87 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v173[-v89];
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v173[-v92];
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v173[-v95];
  v97 = Image.canMerge(delta:)(a1);
  if (v97)
  {
    v174 = v97;
    v175 = v5;
    v236 = v1;
    v238 = a1;
    outlined init with copy of Date?(a1, v84, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v98 = *(v86 + 48);
    if (v98(v84, 1, v85) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v86 + 32))(v96, v84, v85);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v86 + 16))(v90, v93, v85);
      CRRegister.projectedValue.setter();
      v99 = *(v86 + 8);
      v99(v93, v85);
      v99(v96, v85);
    }

    v237 = type metadata accessor for Image.Partial(0);
    outlined init with copy of Date?(v238 + v237[5], v81, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v98(v81, 1, v85) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v100 = v176;
      (*(v86 + 32))(v176, v81, v85);
      type metadata accessor for Image(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v86 + 16))(v90, v93, v85);
      CRRegister.projectedValue.setter();
      v101 = *(v86 + 8);
      v101(v93, v85);
      v101(v100, v85);
    }

    v103 = v232;
    v102 = v233;
    v104 = v209;
    v105 = v208;
    v106 = v206;
    v107 = v205;
    v108 = v204;
    outlined init with copy of Date?(v238 + v237[6], v204, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    if ((*(v107 + 48))(v108, 1, v106) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v108, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v109 = v177;
      (*(v107 + 32))(v177, v108, v106);
      type metadata accessor for Image(0);
      v110 = v178;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v107 + 16))(v179, v110, v106);
      CRRegister.projectedValue.setter();
      v111 = *(v107 + 8);
      v112 = v110;
      v103 = v232;
      v111(v112, v106);
      v113 = v109;
      v102 = v233;
      v111(v113, v106);
    }

    v114 = v207;
    outlined init with copy of Date?(v238 + v237[7], v207, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    if ((*(v105 + 48))(v114, 1, v104) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    }

    else
    {
      v115 = v180;
      (*(v105 + 32))(v180, v114, v104);
      type metadata accessor for Image(0);
      v116 = v181;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v105 + 16))(v182, v116, v104);
      CRRegister.projectedValue.setter();
      v117 = *(v105 + 8);
      v117(v116, v104);
      v117(v115, v104);
    }

    v118 = v210;
    outlined init with copy of Date?(v238 + v237[8], v210, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
    if ((v103[6])(v118, 1, v102) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
    }

    else
    {
      v119 = v103[4];
      v120 = v103;
      v121 = v183;
      v119(v183, v118, v102);
      type metadata accessor for Image(0);
      v122 = v184;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (v120[2])(v185, v122, v102);
      CRRegister.projectedValue.setter();
      v123 = v120[1];
      v123(v122, v102);
      v123(v121, v102);
    }

    v124 = v211;
    v125 = v212;
    v126 = v213;
    outlined init with copy of Date?(v238 + v237[9], v211, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
    if ((*(v125 + 48))(v124, 1, v126) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
    }

    else
    {
      v128 = v186;
      (*(v125 + 32))(v186, v124, v126);
      type metadata accessor for Image(0);
      v129 = v187;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v125 + 16))(v188, v129, v126);
      CRRegister.projectedValue.setter();
      v130 = *(v125 + 8);
      v130(v129, v126);
      v130(v128, v126);
    }

    v127 = v214;
    outlined init with copy of Date?(v238 + v237[10], v214, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    v132 = v234;
    v131 = v235;
    v232 = *(v234 + 48);
    v233 = v234 + 48;
    if ((v232)(v127, 1, v235) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    }

    else
    {
      v133 = v189;
      (*(v132 + 32))(v189, v127, v131);
      type metadata accessor for Image(0);
      v134 = v224;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v132 + 16))(v225, v134, v131);
      CRRegister.projectedValue.setter();
      v135 = *(v132 + 8);
      v135(v134, v131);
      v135(v133, v131);
    }

    v136 = v222;
    v137 = v223;
    v138 = v215;
    v139 = v217;
    outlined init with copy of Date?(v238 + v237[11], v215, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
    v140 = v216;
    if ((*(v216 + 48))(v138, 1, v139) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
    }

    else
    {
      v141 = v190;
      (*(v140 + 32))(v190, v138, v139);
      type metadata accessor for Image(0);
      v142 = v191;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v140 + 16))(v192, v142, v139);
      CRRegister.projectedValue.setter();
      v143 = *(v140 + 8);
      v143(v142, v139);
      v143(v141, v139);
    }

    v144 = v218;
    v145 = v219;
    v146 = v220;
    outlined init with copy of Date?(v238 + v237[12], v218, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    if ((*(v145 + 48))(v144, 1, v146) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v144, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    }

    else
    {
      v148 = v193;
      (*(v145 + 32))(v193, v144, v146);
      type metadata accessor for Image(0);
      v149 = v194;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v145 + 16))(v195, v149, v146);
      CRRegister.projectedValue.setter();
      v150 = *(v145 + 8);
      v150(v149, v146);
      v150(v148, v146);
    }

    v147 = v221;
    v151 = v235;
    outlined init with copy of Date?(v238 + v237[13], v221, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    if ((*(v136 + 48))(v147, 1, v137) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v152 = *(v136 + 32);
      v153 = v136;
      v154 = v196;
      v152(v196, v147, v137);
      type metadata accessor for Image(0);
      v155 = v197;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v153 + 16))(v198, v155, v137);
      CRRegister.projectedValue.setter();
      v156 = *(v153 + 8);
      v156(v155, v137);
      v156(v154, v137);
    }

    v157 = v227;
    v158 = v228;
    v159 = v231;
    outlined init with copy of Date?(v238 + v237[14], v227, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    v160 = v229;
    if ((*(v158 + 48))(v157, 1, v229) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v157, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    }

    else
    {
      v161 = v200;
      (*(v158 + 32))(v200, v157, v160);
      type metadata accessor for Image(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
      CROrderedSet.merge(delta:)();
      (*(v158 + 8))(v161, v160);
    }

    v162 = v230;
    outlined init with copy of Date?(v238 + v237[15], v230, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
    v163 = v175;
    if ((*(v159 + 48))(v162, 1, v175) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v162, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
    }

    else
    {
      v164 = v201;
      (*(v159 + 32))(v201, v162, v163);
      type metadata accessor for Image(0);
      v165 = v202;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v159 + 16))(v203, v165, v163);
      CRRegister.projectedValue.setter();
      v166 = *(v159 + 8);
      v151 = v235;
      v166(v165, v163);
      v166(v164, v163);
    }

    v167 = v234;
    v168 = v226;
    outlined init with copy of Date?(v238 + v237[16], v226, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    if ((v232)(v168, 1, v151) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v168, &_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
    }

    else
    {
      v169 = v199;
      (*(v167 + 32))(v199, v168, v151);
      type metadata accessor for Image(0);
      v170 = v224;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v167 + 16))(v225, v170, v151);
      CRRegister.projectedValue.setter();
      v171 = *(v167 + 8);
      v171(v170, v151);
      v171(v169, v151);
    }

    LOBYTE(v97) = v174;
  }

  return v97;
}

uint64_t protocol witness for CRDT.context.getter in conformance Image(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance Image(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

void specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, a2, a3, a4, a5, a6, a7, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMR, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGMR);
}

{
  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, a2, a3, a4, a5, a6, a7, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMR);
}

void specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v94 = a7;
  v86 = a6;
  v93 = a5;
  v90 = a4;
  v88 = a3;
  v100 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = &v81 - v14;
  v85 = type metadata accessor for CRKeyPath();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v81 - v17;
  v18 = type metadata accessor for CRCodableVersion();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v81 - v23;
  v97 = a8;
  v99 = a9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v81 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  v98 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  strcpy(&v102, "/AAPL:AKExtras");
  HIBYTE(v102) = -18;
  v33 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v96 = a1;
  v34 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104[0] = v102;
  v104[1] = v103;
  v35 = v97;
  v92 = v26;
  if (*(&v103 + 1))
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
    if (swift_dynamicCast())
    {
      v95 = v101;
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_sypSgMd, &_sypSgMR);
  }

  v36 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  strcpy(v104, "/AAPL:AKExtras");
  HIBYTE(v104[0]) = -18;
  v37 = v36;
  [v96 __swift_setObject_forKeyedSubscript_];
  v95 = v37;

  swift_unknownObjectRelease();
LABEL_9:
  v38 = v99;
  outlined init with copy of Date?(v100, v29, v35, v99);
  v39 = v98;
  v89 = *(v98 + 48);
  if (v89(v29, 1, v30) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, v35, v38);
    v40 = v38;
    v41 = v95;
  }

  else
  {
    (*(v39 + 32))(v32, v29, v30);
    v42 = *(v19 + 104);
    v42(v21, *MEMORY[0x1E6995288], v18);
    if (Capsule.minAppFormatVersion.getter() >= 7)
    {
      (*(v19 + 8))(v21, v18);
      v42(v21, *MEMORY[0x1E6995290], v18);
    }

    v43 = v87;
    (*(v19 + 32))(v87, v21, v18);
    v44 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
    v45 = v43;
    v47 = v46;
    (*(v19 + 8))(v45, v18);
    v48 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v44, v47);
    v49 = MEMORY[0x1DA6CCED0](v48._countAndFlagsBits, v48._object);

    v50 = MEMORY[0x1DA6CCED0](1263554607, 0xE400000000000000);
    v41 = v95;
    [v95 setObject:v49 forKey:v50];

    (*(v39 + 8))(v32, v30);
    v35 = v97;
    v40 = v99;
  }

  v51 = v91;
  outlined init with copy of Date?(v90, v91, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  }

  else
  {
    v54 = v82;
    MEMORY[0x1DA6CB7A0](v52);
    (*(v53 + 8))(v51, v52);
    v55 = v84;
    v56 = *(v84 + 32);
    v97 = v30;
    v57 = v41;
    v58 = v83;
    v59 = v54;
    v60 = v85;
    v56(v83, v59, v85);
    v61 = CRKeyPath.rawValue.getter();
    v63 = v62;
    v64 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v61, v63);
    v65 = MEMORY[0x1DA6CCED0](v64._countAndFlagsBits, v64._object);

    v66 = MEMORY[0x1DA6CCED0](0x44494B50502FLL, 0xE600000000000000);
    [v57 setObject:v65 forKey:v66];

    v67 = v58;
    v41 = v57;
    v30 = v97;
    (*(v55 + 8))(v67, v60);
    v40 = v99;
  }

  v68 = v94;
  v69 = v92;
  outlined init with copy of Date?(v100, v92, v35, v40);
  if (v89(v69, 1, v30) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v69, v35, v40);
LABEL_20:
    if ((v93 & 1) == 0)
    {
      goto LABEL_25;
    }

    v72 = 4;
    goto LABEL_24;
  }

  v71 = Capsule.minAppFormatVersion.getter();
  (*(v98 + 8))(v69, v30);
  if (v71 < 7)
  {
    goto LABEL_20;
  }

  if ((v93 & 1) == 0)
  {
    goto LABEL_25;
  }

  v72 = 5;
LABEL_24:
  v73 = NSDictionary.paperKitHash(version:includeAPPL:)(v72, 0, v70);
  v75 = v74;
  v76 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v73, v75);
  v77 = MEMORY[0x1DA6CCED0](v76._countAndFlagsBits, v76._object);

  v78 = MEMORY[0x1DA6CCED0](0x687361484B50502FLL, 0xE800000000000000);
  [v41 setObject:v77 forKey:v78];

LABEL_25:
  if (v68)
  {
    v79 = MEMORY[0x1DA6CCED0](v86, v68);
    v80 = MEMORY[0x1DA6CCED0](0x657079544B50502FLL, 0xE800000000000000);
    [v41 setObject:v79 forKey:v80];
  }

  else
  {
    v80 = v41;
  }
}

CGImageRef partial apply for closure #1 in static Image.filterAndCrop(_:filter:crop:queue:)@<X0>(CGImageRef *a1@<X8>)
{
  result = specialized static Image._filterAndCrop(_:filter:crop:)(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t specialized static Image.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v130 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v96 = v95 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = v95 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v104 = v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  v110 = *(v12 - 8);
  v111 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v109 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v108 = v95 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v112 = *(v16 - 8);
  v113 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v115 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v114 = v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v118 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v117 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v116 = v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  v121 = *(v24 - 8);
  v122 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v120 = v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v119 = v95 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v125 = *(v28 - 8);
  v126 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v124 = v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v123 = v95 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v128 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v127 = v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v95 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v95 - v42;
  v129 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v38 + 8);
  v44(v40, v37);
  v44(v43, v37);
  if ((a1 & 1) != 0
    && (v95[0] = v20, v45 = type metadata accessor for Image(0), CRRegister.projectedValue.getter(), v95[1] = v45, CRRegister.projectedValue.getter(), v46 = dispatch thunk of static Equatable.== infix(_:_:)(), v44(v40, v37), v44(v43, v37), (v46 & 1) != 0)
    && (CRRegister.projectedValue.getter(), v47 = v127, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]), v48 = dispatch thunk of static Equatable.== infix(_:_:)(), v49 = *(v128 + 8), v49(v47, v32), v49(v36, v32), (v48 & 1) != 0)
    && (v50 = v123, v51 = v126, CRRegister.projectedValue.getter(), v52 = v124, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ContentsBounds?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR, MEMORY[0x1E6995090]), v53 = dispatch thunk of static Equatable.== infix(_:_:)(), v54 = *(v125 + 8), v54(v52, v51), v54(v50, v51), (v53 & 1) != 0)
    && (v55 = v119, v56 = v122, CRRegister.projectedValue.getter(), v57 = v120, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ImageFilter?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR, MEMORY[0x1E6995090]), v58 = dispatch thunk of static Equatable.== infix(_:_:)(), v59 = *(v121 + 8), v59(v57, v56), v59(v55, v56), (v58 & 1) != 0)
    && (v60 = v116, v61 = v95[0], CRRegister.projectedValue.getter(), v62 = v117, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAssetOrData?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR, MEMORY[0x1E6995090]), v63 = dispatch thunk of static Equatable.== infix(_:_:)(), v64 = *(v118 + 8), v64(v62, v61), v64(v60, v61), (v63 & 1) != 0)
    && (v66 = v113, v65 = v114, CRRegister.projectedValue.getter(), v67 = v115, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR, MEMORY[0x1E6995090]), v68 = dispatch thunk of static Equatable.== infix(_:_:)(), v69 = *(v112 + 8), v69(v67, v66), v69(v65, v66), (v68 & 1) != 0)
    && (v70 = v108, v71 = v111, CRRegister.projectedValue.getter(), v72 = v109, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Data?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR, MEMORY[0x1E6995090]), v73 = dispatch thunk of static Equatable.== infix(_:_:)(), v74 = *(v110 + 8), v74(v72, v71), v74(v70, v71), (v73 & 1) != 0)
    && (v75 = v104, v76 = v107, CRRegister.projectedValue.getter(), v77 = v105, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR, MEMORY[0x1E6995090]), v78 = dispatch thunk of static Equatable.== infix(_:_:)(), v79 = *(v106 + 8), v79(v77, v76), v79(v75, v76), (v78 & 1) != 0)
    && (v80 = v100, v81 = v103, CRRegister.projectedValue.getter(), v82 = v101, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]), v83 = dispatch thunk of static Equatable.== infix(_:_:)(), v84 = *(v102 + 8), v84(v82, v81), v84(v80, v81), (v83 & 1) != 0)
    && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR, MEMORY[0x1E6995148]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0)
    && (v85 = v96, v86 = v99, CRRegister.projectedValue.getter(), v87 = v97, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ImageMetadata> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR, MEMORY[0x1E6995090]), v88 = dispatch thunk of static Equatable.== infix(_:_:)(), v89 = *(v98 + 8), v89(v87, v86), v89(v85, v86), (v88 & 1) != 0)
    && (v90 = v114, CRRegister.projectedValue.getter(), v91 = v115, CRRegister.projectedValue.getter(), v92 = dispatch thunk of static Equatable.== infix(_:_:)(), v69(v91, v66), v69(v90, v66), (v92 & 1) != 0))
  {
    v93 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v93 = 0;
  }

  return v93 & 1;
}

void partial apply for closure #1 in Image.update<A>(pdfPage:id:use:in:options:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for Image(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in Image.update<A>(pdfPage:id:use:in:options:)(a1, a2, v2 + v6, v7);
}

uint64_t outlined init with take of Image(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for Image(uint64_t a1)
{
  type metadata accessor for CRRegister<CGRect>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRRegister<CGFloat>(319);
    if (v2 <= 0x3F)
    {
      _s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMaTm_0(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR, lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?);
      if (v3 <= 0x3F)
      {
        _s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMaTm_0(319, &lazy cache variable for type metadata for CRRegister<ImageFilter?>, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR, lazy protocol witness table accessor for type ImageFilter? and conformance <A> A?);
        if (v4 <= 0x3F)
        {
          _s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMaTm_0(319, &lazy cache variable for type metadata for CRRegister<CRAssetOrData?>, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR, lazy protocol witness table accessor for type CRAssetOrData? and conformance <A> A?);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CRRegister<String?>(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CRRegister<Data?>(319);
              if (v7 <= 0x3F)
              {
                _s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMaTm_0(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR, lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for CRRegister<CGImagePropertyOrientation>(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for CRRegister<ImageMetadata>(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for UnknownProperties();
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for CRRegister<Data?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<Data?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<Data?>);
    }
  }
}

void _s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for CRRegister();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for CRRegister<ImageMetadata>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<ImageMetadata>)
  {
    type metadata accessor for ImageMetadata(255);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type ImageMetadata and conformance ImageMetadata, type metadata accessor for ImageMetadata, &protocol conformance descriptor for ImageMetadata);
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<ImageMetadata>);
    }
  }
}

void type metadata completion function for Image.ObservableDifference(uint64_t a1)
{
  _s9Coherence27CRValueObservableDifferenceOSgMaTm_1(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
  if (v1 <= 0x3F)
  {
    _s9Coherence27CRValueObservableDifferenceOSgMaTm_1(319, &lazy cache variable for type metadata for ContentsBounds.ObservableDifference?, type metadata accessor for ContentsBounds.ObservableDifference);
    if (v2 <= 0x3F)
    {
      _s9Coherence27CRValueObservableDifferenceOSgMaTm_1(319, &lazy cache variable for type metadata for ImageFilter.ObservableDifference?, type metadata accessor for ImageFilter.ObservableDifference);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for Ref<PKDrawingStruct>.ObservableDifference?, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.ObservableDifference?, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void _s9Coherence27CRValueObservableDifferenceOSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata completion function for Image.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ImageFilter?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CRAssetOrData?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Data?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMR);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGImagePropertyOrientation>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMR);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MutatingAction?, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ImageMetadata>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GMR);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for Image.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>?, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ImageFilter?>?, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CRAssetOrData?>?, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String?>?, &_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Data?>?, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>?, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGImagePropertyOrientation>?, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MergeableDelta?, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ImageMetadata>?, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t partial apply for closure #1 in Image.renderPage(pdfPage:box:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Image(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in Image.renderPage(pdfPage:box:context:)(a1, v7, v8, v9, v10, v1 + v6, v11);
}

double block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

CGImageRef specialized static Image._filterAndCrop(_:filter:crop:)(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v71 = a1;
  v4 = type metadata accessor for ImageFilter(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v64 - v8;
  v9 = type metadata accessor for ContentsBounds(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v64 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - v21;
  v23 = *(v5 + 48);
  v66 = v4;
  v67 = v5 + 48;
  v24 = v23(a2, 1, v4, v20);
  v25 = v70;
  if (v24 != 1 || (*(v10 + 48))(v70, 1, v9) != 1)
  {
    v65 = a2;
    outlined init with copy of Date?(v25, v22, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v28 = *(v10 + 48);
    if (v28(v22, 1, v9) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      v29 = v66;
      goto LABEL_14;
    }

    outlined init with copy of ImageMetadata(v22, v15, type metadata accessor for ContentsBounds);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v64 = v23;
      outlined destroy of ImageMetadata(v15, type metadata accessor for ContentsBounds);
      v29 = v66;
      v23 = v64;
      outlined destroy of ImageMetadata(v22, type metadata accessor for ContentsBounds);
LABEL_14:
      outlined init with copy of Date?(v25, v18, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      if (v28(v18, 1, v9) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        v46 = v71;
        v43 = v65;
      }

      else
      {
        v47 = v29;
        outlined init with copy of ImageMetadata(v18, v12, type metadata accessor for ContentsBounds);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v43 = v65;
        if (EnumCaseMultiPayload)
        {
          outlined destroy of ImageMetadata(v12, type metadata accessor for ContentsBounds);
          outlined destroy of ImageMetadata(v18, type metadata accessor for ContentsBounds);
          v46 = v71;
        }

        else
        {
          v49 = *v12;
          v50 = v12[1];
          v51 = v12[2];
          v52 = v12[3];
          outlined destroy of ImageMetadata(v18, type metadata accessor for ContentsBounds);
          v53 = objc_autoreleasePoolPush();
          Width = CGImageGetWidth(v71);
          Height = CGImageGetHeight(v71);
          v73.origin.x = CGRect.rounded(scale:)(1.0, v49 * Width, v50 * Height, v51 * Width, v52 * Height);
          v46 = CGImageCreateWithImageInRect(v71, v73);
          if (!v46)
          {
            v46 = v71;
          }

          objc_autoreleasePoolPop(v53);
          v29 = v47;
        }
      }

LABEL_24:
      v56 = v68;
      outlined init with copy of Date?(v43, v68, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
      if ((v23)(v56, 1, v29) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
        return v46;
      }

      outlined init with copy of ImageMetadata(v56, v69, type metadata accessor for ImageFilter);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined destroy of ImageMetadata(v69, type metadata accessor for ImageFilter);
        outlined destroy of ImageMetadata(v56, type metadata accessor for ImageFilter);
        return v46;
      }

      v57 = *v69;
      v58 = *(v69 + 8);
      outlined destroy of ImageMetadata(v56, type metadata accessor for ImageFilter);
      if (v58)
      {
        return v46;
      }

      v59 = objc_autoreleasePoolPush();
      v60 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
      v61 = [objc_opt_self() filteredImage:v60 imageFilterType:v57 + 1];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 CGImage];

        v60 = v46;
        if (!v63)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v63 = v46;
      }

      v46 = v63;
LABEL_34:
      objc_autoreleasePoolPop(v59);
      return v46;
    }

    v30 = *v15;
    v31 = v15[1];
    v32 = v15[2];
    v33 = v15[3];
    v34 = v15[4];
    v35 = v15[5];
    v36 = v15[6];
    v37 = v15[7];
    outlined destroy of ImageMetadata(v22, type metadata accessor for ContentsBounds);
    result = [objc_allocWithZone(MEMORY[0x1E699A328]) initWithBottomLeft:v34 bottomRight:v35 topLeft:v36 topRight:{v37, v30, v31, v32, v33}];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v38 = result;
    v39 = objc_autoreleasePoolPush();
    v40 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v41 = [v40 initWithCGImage_];
    v42 = [objc_opt_self() perspectiveCorrectedImageFromImage:v41 normalizedImageQuad:v38];
    v43 = v65;
    v29 = v66;
    if (v42)
    {
      v44 = v66;
      v45 = v42;
      v46 = [v42 CGImage];

      v29 = v44;
      if (v46)
      {
LABEL_23:
        objc_autoreleasePoolPop(v39);

        goto LABEL_24;
      }
    }

    else
    {
    }

    v46 = v71;
    goto LABEL_23;
  }

  v26 = v71;

  return v26;
}

unint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSObject and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSObject and conformance NSObject)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSObject and conformance NSObject);
  }

  return result;
}

void AsyncCache.deinit()
{
  v1 = *v0;
  v86 = *(*v0 + 88);
  v2 = v86;
  v3 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v57 - v4;
  v83 = type metadata accessor for CheckedContinuation();
  v85 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v57 - v5;
  v6 = *(v1 + 80);
  v7 = type metadata accessor for AsyncCache.CacheState(0, v6, v2, *(v1 + 96));
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v57 - v12;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v57 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = type metadata accessor for Optional();
  v17 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  swift_beginAccess();
  v57 = v0;
  v23 = v0[14];
  v24 = v22;
  v25 = *(v23 + 64);
  v75 = v23 + 64;
  v26 = 1 << *(v23 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v25;
  v58 = (v26 + 63) >> 6;
  v73 = TupleTypeMetadata2 - 8;
  v65 = v13 + 16;
  v64 = v8 + 16;
  v63 = v13 + 32;
  v72 = (v17 + 32);
  v80 = v86 - 8;
  v81 = v85 + 16;
  v78 = (v8 + 32);
  v79 = v85 + 8;
  v69 = v8;
  v62 = (v8 + 8);
  v67 = v13;
  v71 = (v13 + 8);
  v70 = v23;

  v29 = 0;
  v76 = v19;
  v77 = TupleTypeMetadata2;
  v87 = v24;
  v61 = v6;
  v60 = v7;
  v59 = v10;
  while (v28)
  {
    v30 = v29;
LABEL_17:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v70;
    v36 = v67;
    (*(v67 + 16))(v66, *(v70 + 48) + *(v67 + 72) * v34, v6);
    v37 = *(v35 + 56);
    v38 = v69;
    v39 = v68;
    (*(v69 + 16))(v68, v37 + *(v69 + 72) * v34, v7);
    v40 = *(v77 + 48);
    v41 = *(v36 + 32);
    TupleTypeMetadata2 = v77;
    v19 = v76;
    v41();
    (*(v38 + 32))(&v19[v40], v39, v7);
    v42 = 0;
    v24 = v87;
LABEL_18:
    v43 = *(TupleTypeMetadata2 - 8);
    (*(v43 + 56))(v19, v42, 1, TupleTypeMetadata2);
    (*v72)(v24, v19, v74);
    if ((*(v43 + 48))(v24, 1, TupleTypeMetadata2) == 1)
    {

      swift_defaultActor_destroy();
      return;
    }

    (*v78)(v10, &v24[*(TupleTypeMetadata2 + 48)], v7);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v44 = *v10;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v45 = 0;
      v47 = v44 + 64;
      v46 = *(v44 + 64);
      v88 = v44;
      v48 = 1 << *(v44 + 32);
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v50 = v49 & v46;
      v51 = (v48 + 63) >> 6;
      if ((v49 & v46) != 0)
      {
        do
        {
          v52 = v45;
LABEL_29:
          v53 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v54 = v85;
          v55 = v82;
          v56 = v83;
          (*(v85 + 16))(v82, *(v88 + 56) + *(v85 + 72) * (v53 | (v52 << 6)), v83);
          (*(*(v86 - 8) + 56))(v84, 1, 1);
          CheckedContinuation.resume(returning:)();
          (*(v54 + 8))(v55, v56);
          v24 = v87;
        }

        while (v50);
      }

      while (1)
      {
        v52 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v52 >= v51)
        {

          v6 = v61;
          v7 = v60;
          v10 = v59;
          v19 = v76;
          TupleTypeMetadata2 = v77;
          goto LABEL_6;
        }

        v50 = *(v47 + 8 * v52);
        ++v45;
        if (v50)
        {
          v45 = v52;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    (*v62)(v10, v7);
LABEL_6:
    (*v71)(v24, v6);
  }

  if (v58 <= v29 + 1)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v58;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v58)
    {
      v28 = 0;
      v42 = 1;
      v29 = v32;
      goto LABEL_18;
    }

    v28 = *(v75 + 8 * v30);
    ++v29;
    if (v28)
    {
      v29 = v30;
      goto LABEL_17;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t AsyncCache.__deallocating_deinit()
{
  AsyncCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata completion function for AsyncCache.CacheState(uint64_t a1)
{
  type metadata accessor for UUID();
  type metadata accessor for Optional();
  type metadata accessor for CheckedContinuation();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  result = type metadata accessor for Dictionary();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncCache.CacheState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 24) - 8) + 80) + 8) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 24) - 8) + 80) + 8) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for AsyncCache.CacheState(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 80) + 8) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

void specialized AppearanceStreamViewSupport.updateAppearanceStreamView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - v4;
  v6 = *&v0[direct field offset for ShapeView.appearanceStreamView];
  if (v6)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
    swift_beginAccess();
    v42 = *(v3 + 16);
    v8 = v42(v5, &v0[v7], v2);
    MEMORY[0x1EEE9AC00](v8);
    v41 = type metadata accessor for Shape(0);
    *(&v37 - 4) = v41;
    v40 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
    *(&v37 - 3) = v40;
    *(&v37 - 2) = &protocol witness table for Shape;
    swift_getKeyPath();
    v9 = v6;
    Capsule.subscript.getter();

    v10 = *(v3 + 8);
    v10(v5, v2);
    if ((LOBYTE(v43) & 0x20) != 0)
    {
      v39 = v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      v38 = v9;
      if (Strong)
      {
        v12 = Strong;
        [Strong bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v46.origin.x = v14;
        v46.origin.y = v16;
        v46.size.width = v18;
        v46.size.height = v20;
        v47 = CGRectIntegral(v46);
      }

      else
      {
        [v9 frame];
      }

      width = v47.size.width;
      height = v47.size.height;
      type metadata accessor for ShapeView(0);
      v23 = protocol witness for AppearanceStreamViewSupport.appearanceStreamOffset.getter in conformance ShapeView();
      v25 = v24;
      v26 = v42;
      v27 = v42(v5, &v1[v7], v2);
      MEMORY[0x1EEE9AC00](v27);
      v28 = v41;
      v37 = v7;
      v29 = v40;
      *(&v37 - 4) = v41;
      *(&v37 - 3) = v29;
      *(&v37 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v30 = v39;
      v39(v5, v2);
      v31 = v45 - height - v25;
      v32 = v26(v5, &v1[v37], v2);
      MEMORY[0x1EEE9AC00](v32);
      *(&v37 - 4) = v28;
      *(&v37 - 3) = v29;
      *(&v37 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v30(v5, v2);
      v33 = v43;
      v34 = v44;
      [v1 frame];
      v9 = v38;
      [v38 setFrame_];
    }

    else
    {
      [v9 removeFromSuperview];
      ShapeView.appearanceStreamView.setter(0);
    }
  }
}

id specialized CanvasElementView.modelCoordinateSpace.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for TextBox(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd, _s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for LoupeElement(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement, &protocol conformance descriptor for LoupeElement);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Image(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for GraphElement(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement, &protocol conformance descriptor for GraphElement);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Link(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link, &protocol conformance descriptor for Link);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd, &_s9Coherence7CapsuleVy8PaperKit9SignatureVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Signature(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Paper(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd, &_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for PaperDocumentPage(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage, &protocol conformance descriptor for PaperDocumentPage);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for UnknownCanvasElement(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement, &protocol conformance descriptor for UnknownCanvasElement);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Shape(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

uint64_t specialized CanvasElementView.accessibilityDescription()()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v44._object = 0x80000001D408AFE0;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._object = 0x80000001D408AFC0;
  v44._countAndFlagsBits = 0xD000000000000040;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, paperKitBundle, v4, v44);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2A0);
  v6(v38, v5._countAndFlagsBits, v5._object);
  CGAffineTransform.decompose(initialRotation:)(&v40, 0.0);
  v7 = v40;
  v8 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D405C990;
  v10 = MEMORY[0x1E69E7DE0];
  *(v9 + 56) = MEMORY[0x1E69E7DE0];
  v11 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  *(v9 + 64) = v11;
  *(v9 + 32) = v7;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v8;
  v35 = static String.localizedStringWithFormat(_:_:)();
  v36 = v12;

  v13._countAndFlagsBits = 0xD000000000000012;
  v45._object = 0x80000001D408B050;
  v13._object = 0x80000001D408B030;
  v45._countAndFlagsBits = 0xD00000000000003CLL;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, isa, v15, v45);
  (v6)(v39);
  CGAffineTransform.decompose(initialRotation:)(&v40, 0.0);
  v16 = v40;
  v17 = v41;
  v18 = v42;
  v19 = v43;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D405C990;
  v47.origin.x = v16;
  v47.origin.y = v17;
  v47.size.width = v18;
  v47.size.height = v19;
  Width = CGRectGetWidth(v47);
  *(v20 + 56) = v10;
  *(v20 + 64) = v11;
  *(v20 + 32) = Width;
  v48.origin.x = v16;
  v48.origin.y = v17;
  v48.size.width = v18;
  v48.size.height = v19;
  Height = CGRectGetHeight(v48);
  *(v20 + 96) = v10;
  *(v20 + 104) = v11;
  *(v20 + 72) = Height;
  v23 = static String.localizedStringWithFormat(_:_:)();
  v25 = v24;

  v46._object = 0x80000001D408B0B0;
  v26._object = 0x80000001D408B090;
  v46._countAndFlagsBits = 0xD000000000000040;
  v26._countAndFlagsBits = 0xD000000000000016;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, isa, v28, v46);
  (v6)(&v40);
  CGAffineTransform.decompose(initialRotation:)(v37, 0.0);
  v29 = *&v37[4] / 3.14159265 * 180.0;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D4058CF0;
  *(v30 + 56) = MEMORY[0x1E69E7DE0];
  *(v30 + 64) = v11;
  *(v30 + 32) = v29;
  v31 = static String.localizedStringWithFormat(_:_:)();
  v33 = v32;

  v37[0] = v35;
  v37[1] = v36;
  MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
  MEMORY[0x1DA6CD010](v23, v25);

  MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
  MEMORY[0x1DA6CD010](v31, v33);

  return v37[0];
}

id ShapeView.shapeLayer.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id ShapeView.groupLayer.getter()
{
  v1 = direct field offset for ShapeView.$__lazy_storage_$_groupLayer;
  v2 = *(v0 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer);
  if (v2)
  {
    v3 = *(v0 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer);
  }

  else
  {
    v4 = ShapeView.startLineEndLayer.getter();
    v5 = *MEMORY[0x1E69797F8];
    [v4 setFillRule_];

    v6 = ShapeView.endLineEndLayer.getter();
    [v6 setFillRule_];

    v7 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    v8 = ShapeView.shapeLayer.getter();
    [v7 addSublayer_];

    [v7 addSublayer_];
    [v7 addSublayer_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}