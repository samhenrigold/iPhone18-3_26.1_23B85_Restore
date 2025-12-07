Swift::Void __swiftcall PaperDocumentPage.setContentsBounds(_:)(PaperKit::Quad *a1)
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
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

void PaperDocumentPage.init(contentsBounds:fullBounds:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, double a7, CGFloat a8)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v32 - v16;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v33);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v32 - v26;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v36 = 0u;
  v37 = 0u;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for PaperDocumentPage(0);
  v36 = 0u;
  v37 = 0u;
  CRRegister.init(wrappedValue:)();
  v28 = type metadata accessor for ContentsBounds(0);
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  outlined init with copy of Date?(v27, v24, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  LODWORD(v36) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v29 = type metadata accessor for PDFPageID(0);
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  outlined init with copy of Date?(v21, v18, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v31 = v32;
  (*(*(v30 - 8) + 56))(v32, 1, 1, v30);
  outlined init with copy of Date?(v31, v34, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  *&v36 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  CROrderedSet.init()();
  *&v36 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  v39.origin.y = a6;
  v39.size.height = a8;
  PaperDocumentPage.setContentsBounds(_:fullBounds:)(v38, v39);
}

Swift::Void __swiftcall PaperDocumentPage.setContentsBounds(_:fullBounds:)(__C::CGRect _, __C::CGRect fullBounds)
{
  height = fullBounds.size.height;
  y = fullBounds.origin.y;
  v4 = _.size.height;
  width = _.size.width;
  v6 = _.origin.y;
  x = _.origin.x;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v29 - v21);
  v32.origin.x = x;
  v32.origin.y = v6;
  v32.size.width = width;
  v32.size.height = v4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = x;
  v33.origin.y = v6;
  v33.size.width = width;
  v33.size.height = v4;
  v24 = y + y + height - CGRectGetMaxY(v33);
  v34.origin.x = x;
  v34.origin.y = v6;
  v34.size.width = width;
  v34.size.height = v4;
  v25 = CGRectGetWidth(v34);
  v35.origin.x = x;
  v35.origin.y = v6;
  v35.size.width = width;
  v35.size.height = v4;
  v26 = CGRectGetHeight(v35);
  *v22 = MinX;
  v22[1] = v24;
  v22[2] = v25;
  v22[3] = v26;
  v27 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v22);
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  (*(v14 + 16))(v16, v19, v13);
  CRRegister.projectedValue.setter();
  (*(v14 + 8))(v19, v13);
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v36.origin.x = MinX;
  v36.origin.y = v24;
  v36.size.width = v25;
  v36.size.height = v26;
  if (!CGRectEqualToRect(v31, v36))
  {
    v31.origin.x = MinX;
    v31.origin.y = v24;
    v31.size.width = v25;
    v31.size.height = v26;
    CRRegister.value.setter();
  }

  v28 = v30;
  (*(v30 + 16))(v29, v12, v8);
  CRRegister.projectedValue.setter();
  (*(v28 + 8))(v12, v8);
}

uint64_t static PaperDocumentPage.create<A>(pdfPage:pageID:in:assetManager:importedElements:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v74 = a4;
  v73 = a3;
  v70 = a2;
  v84 = a1;
  v79 = a5;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  v75 = v5;
  v76 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v63 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit0C12DocumentPageVGMd, &_s9Coherence3RefVy8PaperKit0C12DocumentPageVGMR);
  v78 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v68 = &v63 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v67);
  v64 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v63 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v65);
  v80 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v26 = type metadata accessor for PaperDocumentPage(0);
  MEMORY[0x1EEE9AC00](v26);
  v69 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v86 = 0u;
  v87 = 0u;
  CRRegister.init(wrappedValue:)();
  v86 = 0u;
  v87 = 0u;
  CRRegister.init(wrappedValue:)();
  v31 = type metadata accessor for ContentsBounds(0);
  (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  outlined init with copy of Date?(v25, v22, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  LODWORD(v86) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v66 = v26[8];
  v82 = type metadata accessor for PDFPageID(0);
  v32 = *(v82 - 8);
  v81 = *(v32 + 56);
  v83 = v32 + 56;
  v81(v19, 1, 1, v82);
  outlined init with copy of Date?(v19, v80, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v34 = v63;
  (*(*(v33 - 8) + 56))(v63, 1, 1, v33);
  outlined init with copy of Date?(v34, v64, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  *&v86 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v67 = v26[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  CROrderedSet.init()();
  v35 = v26[12];
  *&v86 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  v65 = v35;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v36 = v84;
  [v84 boundsForBox_];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  [v36 boundsForBox_];
  v89.origin.y = v45;
  v89.size.height = v46;
  v88.origin.x = v38;
  v88.origin.y = v40;
  v88.size.width = v42;
  v88.size.height = v44;
  PaperDocumentPage.setContentsBounds(_:fullBounds:)(v88, v89);
  LODWORD(v86) = specialized CGImagePropertyOrientation.init(rotationAngle:)([v36 rotation] / 180.0 * 3.14159265);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  v64 = type metadata accessor for PDFPageID;
  v47 = v70;
  outlined init with copy of PaperDocumentPage(v70, v19, type metadata accessor for PDFPageID);
  v81(v19, 0, 1, v82);
  outlined init with copy of Date?(v19, v80, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  ContainerCanvasElement.importElements<A>(_:in:)(v74, v73, v26, &protocol witness table for PaperDocumentPage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v48 = v75;
  *&v86 = CROrderedSet.map<A>(_:)();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  CRRegister.wrappedValue.setter();
  v49 = v69;
  outlined init with copy of PaperDocumentPage(v30, v69, type metadata accessor for PaperDocumentPage);
  v50 = v72;
  (*(v76 + 56))(v72, 1, 1, v48);
  v51 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage, &protocol conformance descriptor for PaperDocumentPage);

  v53 = v68;
  MEMORY[0x1DA6CC020](v52, v49, v50, v26, v51);
  v54 = v47;
  v55 = v77;
  outlined init with copy of PaperDocumentPage(v54, v77, v64);
  v81(v55, 0, 1, v82);
  v56 = type metadata accessor for PageId(0);
  v57 = *(v56 + 20);
  LOBYTE(v86) = 2;
  Ref.id.getter();
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  WeakTagged_3.init(_:id:)();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  (*(*(v58 - 8) + 56))(v55 + v57, 0, 1, v58);
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v59 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  v60 = v84;
  swift_beginAccess();
  outlined assign with take of UUID?(v55, &v60[v59], &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  swift_endAccess();
  CRRegister.wrappedValue.getter();
  if (*&v60[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState])
  {
  }

  else
  {
    *&v60[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState] = v86;
  }

  LOBYTE(v86) = 2;
  v61 = v85;
  Ref.id.getter();
  SharedTagged_3.init(_:id:)();
  (*(v78 + 8))(v53, v61);
  return outlined destroy of PaperDocumentPage.Partial(v30, type metadata accessor for PaperDocumentPage);
}

uint64_t ContainerCanvasElement.importElements<A>(_:in:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = result;
    v9 = *(type metadata accessor for AnnotationImporter.ImportedElement(0) - 8);
    v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      result = ContainerCanvasElement.addImportedElement<A>(_:in:)(v10, a2, a3, a4);
      v10 += v11;
      --v4;
    }

    while (v4);
  }

  return result;
}

void PaperDocumentPage.update<A>(pdfPage:id:use:in:options:)(void *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v61 = a7;
  v62 = a6;
  v59 = a2;
  v60 = a5;
  v63 = a4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v58 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for PaperDocumentPage(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for PaperKitPDFPage(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v53 = v13;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
    CRRegister.wrappedValue.getter();
    if ((v73 & 0x20) != 0)
    {
    }

    else
    {
      v52 = v22;
      PaperDocumentPage.pdfContentsBounds.getter();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v21 boundsForBox_];
      v32 = v31;
      v34 = v33;
      v77.origin.x = v24;
      v77.origin.y = v26;
      v77.size.width = v28;
      v77.size.height = v30;
      MinX = CGRectGetMinX(v77);
      v78.origin.x = v24;
      v78.origin.y = v26;
      v78.size.width = v28;
      v78.size.height = v30;
      v36 = v34 + v32 + v32 - CGRectGetMaxY(v78);
      v79.origin.x = v24;
      v79.origin.y = v26;
      v79.size.width = v28;
      v79.size.height = v30;
      Width = CGRectGetWidth(v79);
      v80.origin.x = v24;
      v80.origin.y = v26;
      v80.size.width = v28;
      v80.size.height = v30;
      Height = CGRectGetHeight(v80);
      [v21 boundsForBox_];
      if (!CGRect.almostEqual(_:threshold:)(MinX, v36, Width, Height, 1.0, v39, v40, v41, v42))
      {
        [v21 setBounds:1 forBox:{MinX, v36, Width, Height}];
      }

      v43 = specialized PaperPage.axisAlignedRotationInDegrees.getter();
      if ([v21 rotation] != v43)
      {
        [v21 setRotation_];
      }

      CRRegister.wrappedValue.getter();
      if (*&v21[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState])
      {
      }

      else
      {
        *&v21[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState] = v73;
      }

      outlined init with copy of Date?(v60, &v66, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
      if (*(&v66 + 1) == 1)
      {
        *(&v73 + 1) = 0;
        memset(v76, 0, 45);
        LOWORD(v73) = 1;
        BYTE2(v73) = 0;
        LOBYTE(v74[0]) = 0;
        *(v74 + 8) = 0u;
        *(&v74[1] + 8) = 0u;
        BYTE8(v74[2]) = 1;
        *&v75 = 0;
        BYTE8(v75) = 0;
      }

      else
      {
        v75 = v70;
        v76[0] = v71;
        v76[1] = v72[0];
        *(&v76[1] + 13) = *(v72 + 13);
        v73 = v66;
        v74[0] = v67;
        v74[1] = v68;
        v74[2] = v69;
      }

      *(&v67 + 1) = v16;
      *&v68 = &protocol witness table for PaperDocumentPage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
      outlined init with copy of PaperDocumentPage(v8, boxed_opaque_existential_1, type metadata accessor for PaperDocumentPage);
      outlined assign with take of UUID?(&v66, v76, &_s8PaperKit0A10Renderable_pSgMd, &_s8PaperKit0A10Renderable_pSgMR);
      v65 = v19;
      outlined init with copy of PaperRenderableOptions(&v73, &v66);
      v45 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage, &protocol conformance descriptor for PaperDocumentPage);
      v46 = v61;
      v47 = v62;
      v60 = v45;
      PaperPage<>.updateAnnotations<A>(in:use:capsule:options:)(v21, &v65, v63, &v66, v16, v62, v45, &protocol witness table for PaperDocumentPage, &protocol witness table for PaperDocumentPage, v61);
      outlined destroy of StocksKitCurrencyCache.Provider?(&v66, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
      if (v19 >> 62)
      {
      }

      else
      {
        outlined init with copy of PaperDocumentPage(v8, v18, type metadata accessor for PaperDocumentPage);
        v48 = type metadata accessor for PDFPageID(0);
        (*(*(v48 - 8) + 56))(v55, 1, 1, v48);
        lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
        v51 = v19;
        CRRegister.init(_:)();
        (*(v54 + 40))(&v18[*(v16 + 32)], v15, v53);
        *&v66 = MEMORY[0x1E69E7CC0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
        lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
        v49 = v57;
        CRRegister.init(_:)();
        (*(v58 + 40))(&v18[*(v16 + 48)], v49, v64);
        PaperKitPDFPage.encodePaperPage<A, B>(_:_:id:capsule:)(v51, v18, v59, v63, v16, v47, v60, &protocol witness table for PaperDocumentPage, &protocol witness table for PaperDocumentPage, v46);
        outlined consume of PaperDocument.PDFDocumentUse(v19);

        outlined destroy of PaperDocumentPage.Partial(v18, type metadata accessor for PaperDocumentPage);
      }

      outlined destroy of PaperRenderableOptions(&v73);
    }
  }
}

void *PaperDocumentPage.updateFrom<A>(pdfPage:in:)(void *a1, uint64_t a2)
{
  type metadata accessor for PaperKitPDFPage(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    v6 = a1;
    v7 = PaperDocumentPage.updateAnnotationsFrom<A>(_:in:)(v5, a2);

    return (v7 & 1);
  }

  return result;
}

uint64_t PaperDocumentPage.updateAnnotationsFrom<A>(_:in:)(void *a1, uint64_t a2)
{
  v157 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v148 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v147 - v4;
  v154 = type metadata accessor for PDFAnnotationElement(0);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMR);
  v147 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v147 - v6;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd, &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMR);
  MEMORY[0x1EEE9AC00](v173);
  v161 = (&v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v172 = &v147 - v9;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence9CRKeyPathVGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence9CRKeyPathVGGMR);
  MEMORY[0x1EEE9AC00](v149);
  v11 = &v147 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy9Coherence9CRKeyPathVGMd, &_ss20CollectionDifferenceVy9Coherence9CRKeyPathVGMR);
  v160 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v147 - v13;
  v14 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v169 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v166 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v147 - v19;
  v21 = type metadata accessor for CRKeyPath();
  v182 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v147 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v188 = (&v147 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v186 = &v147 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v147 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v147 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v168 = &v147 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v176 = &v147 - v37;
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_So13PDFAnnotationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v39 = *(type metadata accessor for PaperDocumentPage(0) + 44);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v165 = v2;
  v164 = v39;
  v163 = v40;
  v192 = v21;
  v158 = CROrderedSet.map<A>(_:)();
  v41 = [a1 annotations];
  type metadata accessor for PDFAnnotation();
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v42;
  if (v42 >> 62)
  {
    goto LABEL_74;
  }

  v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v183 = v11;
  v174 = v12;
  if (!v44)
  {

    v109 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v45 = 0;
  *&v181 = v43 & 0xC000000000000001;
  v162 = v43 & 0xFFFFFFFFFFFFFF8;
  v167 = (v182 + 48);
  v184 = (v182 + 32);
  v189 = (v182 + 16);
  v180 = (v182 + 8);
  v171 = (v182 + 56);
  v191 = MEMORY[0x1E69E7CC0];
  v179 = v20;
  v12 = v192;
  v178 = v43;
  v177 = v44;
  v190 = v31;
  while (1)
  {
    if (v181)
    {
      v49 = MEMORY[0x1DA6CE0C0](v45);
    }

    else
    {
      if (v45 >= *(v162 + 16))
      {
        goto LABEL_70;
      }

      v49 = *(v43 + 8 * v45 + 32);
    }

    v50 = v49;
    v11 = &_s9Coherence9CRKeyPathVSgMd;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      v146 = v43;
      v44 = __CocoaSet.count.getter();
      v43 = v146;
      goto LABEL_3;
    }

    v187 = (v45 + 1);
    type metadata accessor for CanvasElementPDFAnnotation(0);
    v51 = swift_dynamicCastClass();
    if (v51)
    {
      v52 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
      v53 = v51;
      swift_beginAccess();
      v54 = v53 + v52;
      v12 = v192;
      outlined init with copy of Date?(v54, v20, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      v55 = (*v167)(v20, 1, v12);
      v56 = v191;
      if (v55 != 1)
      {
        v57 = *v184;
        v58 = v176;
        (*v184)(v176, v20, v12);
        v59 = *v189;
        (*v189)(v168, v58, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
        }

        v61 = v56[2];
        v60 = v56[3];
        if (v61 >= v60 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v56);
        }

        v56[2] = v61 + 1;
        v62 = *(v182 + 80);
        v191 = v56;
        v63 = v56 + ((v62 + 32) & ~v62);
        v11 = *(v182 + 72);
        v64 = v192;
        v57(&v63[v11 * v61], v168, v192);
        v65 = v170;
        v59(v170, v176, v64);
        v66 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v193 = v38;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v65);
        v68 = v38[2];
        v69 = (v43 & 1) == 0;
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_72;
        }

        v20 = v43;
        v71 = v38[3];
        v185 = v59;
        if (v71 >= v70)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v70, isUniquelyReferenced_nonNull_native);
          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v170);
          if ((v20 & 1) != (v73 & 1))
          {
            break;
          }

          v12 = v72;
        }

        v38 = v193;
        if (v20)
        {
          v100 = v193[7];
          v101 = *(v100 + 8 * v12);
          *(v100 + 8 * v12) = v66;

          v102 = *v180;
          v12 = v192;
          (*v180)(v170, v192);
          v102(v176, v12);
        }

        else
        {
          v193[(v12 >> 6) + 8] |= 1 << v12;
          v103 = v170;
          v104 = v192;
          v185(v38[6] + v12 * v11, v170, v192);
          *(v38[7] + 8 * v12) = v66;
          v12 = v104;

          v105 = *v180;
          (*v180)(v103, v104);
          v105(v176, v104);
          v106 = v38[2];
          v93 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v93)
          {
            goto LABEL_73;
          }

          v38[2] = v107;
        }

        goto LABEL_7;
      }
    }

    else
    {
      (*v171)(v20, 1, 1, v12);
      v56 = v191;
    }

    v185 = v38;
    v31 = &_s9Coherence9CRKeyPathVSgMd;
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    v74 = [v50 pdfAnnotationUUID];
    v75 = v12;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v190;
    CRKeyPath.init(_:)();
    v77 = swift_dynamicCastClass();
    v12 = v189;
    v20 = *v189;
    if (v77)
    {
      v78 = v77;
      v79 = v166;
      (v20)(v166, v76, v75);
      (*v171)(v79, 0, 1, v75);
      v80 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
      swift_beginAccess();
      v81 = v50;
      v82 = v78 + v80;
      v12 = v189;
      v83 = v79;
      v56 = v191;
      outlined assign with take of UUID?(v83, v82, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      swift_endAccess();

      v76 = v190;
    }

    (v20)(v186, v76, v75);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
    }

    v85 = v56[2];
    v84 = v56[3];
    if (v85 >= v84 >> 1)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v56);
    }

    v56[2] = v85 + 1;
    v86 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v191 = v56;
    v87 = v56 + v86;
    v11 = *(v182 + 72);
    (*(v182 + 32))(&v87[v11 * v85], v186, v75);
    v88 = v188;
    (v20)(v188, v190, v75);
    v38 = v185;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v193 = v38;
    v90 = specialized __RawDictionaryStorage.find<A>(_:)(v88);
    v91 = v38[2];
    v92 = (v43 & 1) == 0;
    v93 = __OFADD__(v91, v92);
    v94 = v91 + v92;
    if (v93)
    {
      goto LABEL_67;
    }

    v95 = v43;
    if (v38[3] >= v94)
    {
      if ((v89 & 1) == 0)
      {
        v108 = v90;
        specialized _NativeDictionary.copy()();
        v90 = v108;
      }

      goto LABEL_36;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, v89);
    v90 = specialized __RawDictionaryStorage.find<A>(_:)(v188);
    if ((v95 & 1) != (v96 & 1))
    {
      break;
    }

LABEL_36:
    v31 = v190;
    v38 = v193;
    if (v95)
    {
      v46 = v193[7];
      v47 = *(v46 + 8 * v90);
      *(v46 + 8 * v90) = v50;

      v12 = v192;
    }

    else
    {
      v193[(v90 >> 6) + 8] |= 1 << v90;
      v97 = v90;
      v12 = v192;
      (v20)(v38[6] + v90 * v11, v188, v192);
      *(v38[7] + 8 * v97) = v50;
      v98 = v38[2];
      v93 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (v93)
      {
        goto LABEL_71;
      }

      v38[2] = v99;
    }

    v48 = *v180;
    (*v180)(v188, v12);
    v48(v31, v12);
LABEL_7:
    v11 = v183;
    v20 = v179;
    ++v45;
    v43 = v178;
    if (v187 == v177)
    {

      v12 = v174;
      v109 = v191;
LABEL_47:
      v191 = v109;
      v193 = v109;
      v194 = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A], &_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR, MEMORY[0x1E69E6310]);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954D0]);
      v110 = v159;
      BidirectionalCollection<>.difference<A>(from:)();
      (*(v160 + 16))(v11, v110, v12);
      v111 = *(v149 + 36);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<CRKeyPath> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy9Coherence9CRKeyPathVGMd, &_ss20CollectionDifferenceVy9Coherence9CRKeyPathVGMR, MEMORY[0x1E69E6F00]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v113 = v161;
      if (*(v11 + v111) == v193)
      {
LABEL_49:
        outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence9CRKeyPathVGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence9CRKeyPathVGGMR);

        v114 = v159;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        (*(v160 + 8))(v114, v12);

        return v193 != v194;
      }

      v189 = (v182 + 32);
      v190 = (v182 + 8);
      v185 = (v182 + 56);
      v186 = (v182 + 16);
      v184 = (v147 + 8);
      v20 = &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd;
      v182 = v148 + 8;
      *&v112 = 138412290;
      v181 = v112;
      while (1)
      {
        v116 = dispatch thunk of Collection.subscript.read();
        v117 = v172;
        v31 = &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMR;
        outlined init with copy of Date?(v118, v172, &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd, &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMR);
        v116(&v193, 0);
        dispatch thunk of Collection.formIndex(after:)();
        outlined init with take of Range<AttributedString.Index>(v117, v113, &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd, &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMR);
        LODWORD(v116) = swift_getEnumCaseMultiPayload();
        v119 = *v113;
        v12 = v113;
        v120 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence9CRKeyPathV7elementSiSg14associatedWithtMd, &_sSi6offset_9Coherence9CRKeyPathV7elementSiSg14associatedWithtMR) + 48);
        if (v116 == 1)
        {
          CROrderedSet.remove(at:)(v119);
          (*v190)(v12 + v120, v192);
          v113 = v12;
        }

        else
        {
          v121 = v175;
          (*v189)(v175, v12 + v120, v192);
          if (!v38[2])
          {
            goto LABEL_68;
          }

          v113 = v12;
          v122 = specialized __RawDictionaryStorage.find<A>(_:)(v121);
          if ((v43 & 1) == 0)
          {
            goto LABEL_69;
          }

          v123 = *(v38[7] + 8 * v122);
          if ([v123 isSynthesizedFormField])
          {
            (*v190)(v175, v192);
          }

          else
          {
            if (!PDFAnnotation.shouldMirrorAsPDFAnnotationElement()())
            {
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v135 = v38;
              v136 = type metadata accessor for Logger();
              __swift_project_value_buffer(v136, logger);
              v137 = v123;
              v138 = Logger.logObject.getter();
              v139 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v138, v139))
              {
                v140 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                *v140 = v181;
                *(v140 + 4) = v137;
                *v141 = v137;
                v142 = v137;
                _os_log_impl(&dword_1D38C4000, v138, v139, "PaperKit trying to update unknown annotation type: %@", v140, 0xCu);
                outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x1DA6D0660](v141, -1, -1);
                v143 = v140;
                v113 = v161;
                MEMORY[0x1DA6D0660](v143, -1, -1);
                v144 = v142;
              }

              else
              {
                v144 = v138;
                v138 = v137;
              }

              v11 = v183;
              v145 = v192;

              (*v190)(v175, v145);
              v12 = v174;
              v38 = v135;
              goto LABEL_52;
            }

            v124 = v123;
            v188 = v124;
            v125 = v157;

            v126 = v153;
            PDFAnnotationElement.init(_:)(v124);
            v187 = *v186;
            v127 = v166;
            v128 = v192;
            v187(v166, v175, v192);
            (*v185)(v127, 0, 1, v128);
            v129 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement, &protocol conformance descriptor for PDFAnnotationElement);
            v130 = v151;
            MEMORY[0x1DA6CC020](v125, v126, v127, v154, v129);
            v131 = v130;
            v11 = v183;
            (*v184)(v131, v152);
            LOBYTE(v193) = 8;
            v132 = v175;
            v187(v150, v175, v128);
            v20 = &_ss20CollectionDifferenceV6ChangeOy9Coherence9CRKeyPathV_GMd;
            lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
            v133 = v155;
            SharedTagged_10.init(_:id:)();
            CROrderedSet.insert(_:at:)();

            v134 = v133;
            v113 = v161;
            (*v182)(v134, v156);
            (*v190)(v132, v128);
          }
        }

        v12 = v174;
LABEL_52:
        dispatch thunk of Collection.endIndex.getter();
        if (*(v11 + v111) == v193)
        {
          goto LABEL_49;
        }
      }
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void PaperDocumentPage.rotation.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  if ((v0 - 1) >= 8)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

void key path getter for PaperDocumentPage.rotation : PaperDocumentPage(void *a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  if ((v2 - 1) >= 8)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a1 = qword_1D4062198[v2 - 1];
  }
}

double key path setter for PaperDocumentPage.rotation : PaperDocumentPage(double *a1)
{
  specialized CGImagePropertyOrientation.init(rotationAngle:)(*a1);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double PaperDocumentPage.rotation.setter(double a1)
{
  specialized CGImagePropertyOrientation.init(rotationAngle:)(a1);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double (*PaperDocumentPage.rotation.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(a1 + 28) = *(type metadata accessor for PaperDocumentPage(0) + 28);
  *(a1 + 16) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v3 = *(a1 + 24);
  if ((v3 - 1) >= 8)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    *(a1 + 24) = v3;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a1 = qword_1D4062198[v3 - 1];
    return PaperDocumentPage.rotation.modify;
  }

  return result;
}

double PaperDocumentPage.rotation.modify(uint64_t a1)
{
  *(a1 + 24) = specialized CGImagePropertyOrientation.init(rotationAngle:)(*a1);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t PaperDocumentPage.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 7;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t PaperDocumentPage.pageIndex.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v6 - v1);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  CRRegister.wrappedValue.getter();
  v3 = type metadata accessor for PDFPageID(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    return 0;
  }

  else
  {
    v4 = *v2;
    outlined destroy of PaperDocumentPage.Partial(v2, type metadata accessor for PDFPageID);
  }

  return v4;
}

uint64_t PaperDocumentPage.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PaperDocumentPage.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[88] = v6;
  v7[87] = a6;
  v7[86] = a5;
  v7[85] = a4;
  v7[84] = a3;
  v7[83] = a2;
  v7[82] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v7[89] = swift_task_alloc();
  v8 = type metadata accessor for PDFPageID(0);
  v7[90] = v8;
  v7[91] = *(v8 - 8);
  v7[92] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PaperDocumentPage.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t PaperDocumentPage.render<A>(in:id:capsule:options:)()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  *(v0 + 744) = type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  CRRegister.wrappedValue.getter();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 712), &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    outlined init with copy of PaperRenderableOptions(*(v0 + 680), v0 + 16);

    *(v0 + 80) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
    CRRegister.wrappedValue.getter();
    if ((*(v0 + 640) & 0x20) != 0)
    {
      outlined destroy of PaperRenderableOptions(v0 + 16);

      v15 = *(v0 + 8);

      return v15();
    }

    else
    {
      v4 = swift_task_alloc();
      *(v0 + 768) = v4;
      *v4 = v0;
      v4[1] = PaperDocumentPage.render<A>(in:id:capsule:options:);
      v5 = *(v0 + 744);
      v6 = *(v0 + 696);
      v7 = *(v0 + 688);
      v8 = *(v0 + 672);
      v9 = *(v0 + 656);

      return ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v9, v8, v0 + 16, v5, v7, &protocol witness table for PaperDocumentPage, v6);
    }
  }

  else
  {
    v11 = *(v0 + 736);
    v12 = *(v0 + 720);
    outlined init with take of PDFPageID(*(v0 + 712), v11, type metadata accessor for PDFPageID);
    v13 = *(v12 + 20);
    v14 = swift_task_alloc();
    *(v0 + 752) = v14;
    *v14 = v0;
    v14[1] = PaperDocumentPage.render<A>(in:id:capsule:options:);

    return specialized static PaperKitPDFDocument._load(_:)(v11 + v13);
  }
}

{
  v34 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 736);
  if (v1)
  {
    v3 = [*(v0 + 760) pageAtIndex_];

    outlined destroy of PaperDocumentPage.Partial(v2, type metadata accessor for PDFPageID);
    if (v3)
    {
      type metadata accessor for PaperKitPDFPage(0);
      v1 = swift_dynamicCastClass();
      if (v1)
      {
        v4 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
        CRRegister.wrappedValue.getter();
        if ((*(v0 + 648) & 0x20) == 0)
        {
          v5 = *(v0 + 696);
          v6 = *(v0 + 688);
          v7 = *(v0 + 672);
          v8 = *(v0 + 664);
          *&v33.a = 0x8000000000000008;
          *(v0 + 144) = xmmword_1D405D330;
          *(v0 + 160) = 0u;
          *(v0 + 176) = 0u;
          *(v0 + 192) = 0u;
          *(v0 + 208) = 0u;
          *(v0 + 224) = 0u;
          *(v0 + 240) = 0u;
          *(v0 + 253) = 0u;
          PaperDocumentPage.update<A>(pdfPage:id:use:in:options:)(v1, v8, &v33, v7, v0 + 144, v6, v5);
          outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 144, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
        }

        v9 = *(v0 + 680);
        CGContextSaveGState(*(v0 + 656));
        if (*(v9 + 16) == 1 && (*(*(v0 + 680) + 72) & 1) == 0)
        {
          v10 = *(v0 + 656);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
          CRRegister.wrappedValue.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
          CRRegister.wrappedValue.getter();
          CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 272), *(v0 + 608));
          v11 = *(v0 + 288);
          *(v0 + 560) = *(v0 + 272);
          *(v0 + 576) = v11;
          *(v0 + 592) = *(v0 + 304);
          CGContextConcatCTM(v10, (v0 + 560));
        }

        v12 = *(v0 + 656);
        [v1 boundsForBox_];
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        MinY = CGRectGetMinY(v36);
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        MaxY = CGRectGetMaxY(v37);
        *(v0 + 320) = 0x3FF0000000000000;
        *(v0 + 328) = 0;
        *(v0 + 336) = 0;
        *(v0 + 344) = 0x3FF0000000000000;
        *(v0 + 352) = 0;
        *(v0 + 360) = 0;
        *(v0 + 368) = 0x3FF0000000000000;
        *(v0 + 376) = 0;
        *(v0 + 384) = 0;
        *(v0 + 392) = 0xBFF0000000000000;
        *(v0 + 400) = 0;
        *(v0 + 408) = MinY + MaxY;
        CGAffineTransformConcat(&v33, (v0 + 320), (v0 + 368));
        v19 = *&v33.c;
        v20 = *&v33.tx;
        *(v0 + 416) = *&v33.a;
        *(v0 + 432) = v19;
        *(v0 + 448) = v20;
        CGContextConcatCTM(v12, (v0 + 416));
        [v1 transformForBox_];
        v21 = *&v33.c;
        v22 = *&v33.tx;
        *(v0 + 464) = *&v33.a;
        *(v0 + 480) = v21;
        *(v0 + 496) = v22;
        CGAffineTransformInvert(&v33, (v0 + 464));
        v23 = *&v33.c;
        v24 = *&v33.tx;
        *(v0 + 512) = *&v33.a;
        *(v0 + 528) = v23;
        *(v0 + 544) = v24;
        CGContextConcatCTM(v12, (v0 + 512));
        [v1 drawWithBox:1 inContext:v12];
        CGContextRestoreGState(v12);
      }

      else
      {
      }
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    outlined destroy of PaperDocumentPage.Partial(*(v0 + 736), type metadata accessor for PDFPageID);
  }

  outlined init with copy of PaperRenderableOptions(*(v0 + 680), v0 + 16);

  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.getter();
  if ((*(v0 + 640) & 0x20) != 0)
  {
    outlined destroy of PaperRenderableOptions(v0 + 16);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 768) = v25;
    *v25 = v0;
    v25[1] = PaperDocumentPage.render<A>(in:id:capsule:options:);
    v26 = *(v0 + 744);
    v27 = *(v0 + 696);
    v28 = *(v0 + 688);
    v29 = *(v0 + 672);
    v30 = *(v0 + 656);

    return ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v30, v29, v0 + 16, v26, v28, &protocol witness table for PaperDocumentPage, v27);
  }
}

{

  return MEMORY[0x1EEE6DFA0](PaperDocumentPage.render<A>(in:id:capsule:options:), 0, 0);
}

{
  outlined destroy of PaperRenderableOptions(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PaperDocumentPage.render<A>(in:id:capsule:options:)(uint64_t a1)
{
  *(*v1 + 760) = a1;

  return MEMORY[0x1EEE6DFA0](PaperDocumentPage.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t (*protocol witness for ContainerCanvasElement.bounds.modify in conformance PaperDocumentPage(uint64_t *a1))()
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

uint64_t PaperDocumentPage.pdfContentsBounds.getter()
{
  v0 = type metadata accessor for ContentsBounds(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  }

  outlined init with copy of PaperDocumentPage(v6, v3, type metadata accessor for ContentsBounds);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PaperDocumentPage.Partial(v3, type metadata accessor for ContentsBounds);
  }

  return outlined destroy of PaperDocumentPage.Partial(v6, type metadata accessor for ContentsBounds);
}

uint64_t protocol witness for ContainerCanvasElement.pdfContentsBounds.setter in conformance PaperDocumentPage(double a1, double a2, double a3, double a4)
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

uint64_t PaperDocumentPage.setContentsBounds(_:)(double a1, double a2, double a3, double a4)
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
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

uint64_t (*protocol witness for ContainerCanvasElement.pdfContentsBounds.modify in conformance PaperDocumentPage(uint64_t **a1))()
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
  v2[4] = PaperDocumentPage.pdfContentsBounds.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*PaperDocumentPage.pdfContentsBounds.modify(uint64_t *a1))()
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
    v5[5] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[6] = v7;
  PaperDocumentPage.pdfContentsBounds.getter();
  *v5 = v8;
  v5[1] = v9;
  v5[2] = v10;
  v5[3] = v11;
  return PaperDocumentPage.pdfContentsBounds.modify;
}

void PaperDocumentPage.pdfContentsBounds.modify(_OWORD **a1)
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
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  free(v3);
  free(v2);

  free(v1);
}

double protocol witness for ContainerCanvasElement.drawing.getter in conformance PaperDocumentPage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  CRRegister.wrappedValue.getter();
  return result;
}

uint64_t protocol witness for ContainerCanvasElement.drawing.setter in conformance PaperDocumentPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
}

uint64_t (*protocol witness for ContainerCanvasElement.drawing.modify in conformance PaperDocumentPage(uint64_t *a1))()
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

uint64_t protocol witness for ContainerCanvasElement.subelements.getter in conformance PaperDocumentPage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ContainerCanvasElement.subelements.setter in conformance PaperDocumentPage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance PaperDocumentPage(uint64_t *a1))()
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

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance PaperDocumentPage(uint64_t *a1))()
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
  *(v2 + 32) = PaperDocumentPage.rotation.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for CanvasElement.orientation.modify in conformance PaperDocumentPage(uint64_t *a1))()
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

double protocol witness for CanvasElement.flags.getter in conformance PaperDocumentPage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.getter();
  return result;
}

double protocol witness for CanvasElement.flags.setter in conformance PaperDocumentPage(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*protocol witness for CanvasElement.flags.modify in conformance PaperDocumentPage(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance PaperDocumentPage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 7;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

double protocol witness for PaperRenderable.frame.getter in conformance PaperDocumentPage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return PaperDocumentPage.render<A>(in:id:capsule:options:)(a1, a2, a3, a4, a5, a6);
}

uint64_t PaperDocumentPage.shared(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v7[15] = 2;
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  return SharedTagged_3.init(_:id:)();
}

uint64_t key path setter for PaperDocumentPage.pdfContentsBounds : PaperDocumentPage(_OWORD *a1)
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
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
}

double protocol witness for CanvasElement.frame.setter in conformance PaperDocumentPage(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*protocol witness for PaperPage.frame.modify in conformance PaperDocumentPage(uint64_t *a1))()
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

uint64_t (*protocol witness for PaperPage.bounds.modify in conformance PaperDocumentPage(uint64_t *a1))()
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

uint64_t protocol witness for CanvasElement.orientation.getter in conformance PaperDocumentPage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double protocol witness for CanvasElement.orientation.setter in conformance PaperDocumentPage(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*protocol witness for PaperPage.orientation.modify in conformance PaperDocumentPage(uint64_t *a1))()
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

double protocol witness for CanvasElement.rotation.setter in conformance PaperDocumentPage(double a1)
{
  specialized CGImagePropertyOrientation.init(rotationAngle:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*protocol witness for PaperPage.rotation.modify in conformance PaperDocumentPage(uint64_t *a1))()
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
  *(v2 + 32) = PaperDocumentPage.rotation.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

double protocol witness for PaperPage.pdfPageID.getter in conformance PaperDocumentPage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  CRRegister.wrappedValue.getter();
  return result;
}

uint64_t protocol witness for PaperPage.shared(_:) in conformance PaperDocumentPage(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v7[15] = 2;
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  return SharedTagged_3.init(_:id:)();
}

void ContainerCanvasElement.importAnnotations<A>(from:in:assetManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PaperKitPDFPage(0);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    ContainerCanvasElement._importAnnotations<A>(from:in:assetManager:)(v11, a2, a3, a4, a5);
  }
}

double ContainerCanvasElement._importAnnotations<A>(from:in:assetManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 boundsForBox_];
  static AnnotationImporter._importAnnotations<A>(from:in:assetManager:scale:mediaBox:)(a1, a2, a3, 1.0, v10, v11, v12, v13);
  ContainerCanvasElement.importElements<A>(_:in:)(v14, a2, a4, a5);

  return result;
}

uint64_t PaperDocumentPage.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PaperDocumentPage.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t PaperDocumentPage.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v114 = v86 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v113 = v86 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v112 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v111 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = v86 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v108 = v86 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v107 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v106 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v104 = v86 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v103 = v86 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v101 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = v86 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v98 = v86 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v97 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = v86 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v93 = v86 - v28;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v91 = v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v89 = v86 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v88 = v86 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v118 = v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = v86 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v86 - v41;
  v121 = type metadata accessor for MergeResult();
  v124 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v44 = v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v45 = *(v35 + 8);
  v45(v42, v34);
  v46 = *(v35 + 16);
  v86[1] = v35 + 16;
  v87 = v46;
  v46(v118, v39, v34);
  CRRegister.projectedValue.setter();
  v45(v39, v34);
  v47 = v45;
  MergeResult.merge(_:)();
  v120 = *(v124 + 8);
  v124 += 8;
  v120(v44, v121);
  v48 = type metadata accessor for PaperDocumentPage(0);
  v123 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v47(v42, v34);
  v87(v118, v39, v34);
  CRRegister.projectedValue.setter();
  v47(v39, v34);
  MergeResult.merge(_:)();
  v49 = v120;
  v120(v44, v121);
  v119 = v48;
  v50 = v88;
  v51 = v90;
  CRRegister.projectedValue.getter();
  v52 = v89;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v53 = v92;
  v54 = *(v92 + 8);
  v54(v50, v51);
  (*(v53 + 16))(v91, v52, v51);
  CRRegister.projectedValue.setter();
  v54(v52, v51);
  MergeResult.merge(_:)();
  v49(v44, v121);
  v55 = v93;
  v56 = v95;
  CRRegister.projectedValue.getter();
  v57 = v94;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v58 = v97;
  v59 = *(v97 + 8);
  v59(v55, v56);
  (*(v58 + 16))(v96, v57, v56);
  CRRegister.projectedValue.setter();
  v59(v57, v56);
  MergeResult.merge(_:)();
  v120(v44, v121);
  v60 = v98;
  v61 = v100;
  CRRegister.projectedValue.getter();
  v62 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v63 = v102;
  v64 = *(v102 + 8);
  v64(v60, v61);
  (*(v63 + 16))(v101, v62, v61);
  CRRegister.projectedValue.setter();
  v64(v62, v61);
  MergeResult.merge(_:)();
  v65 = v121;
  v120(v44, v121);
  v66 = v103;
  v67 = v105;
  CRRegister.projectedValue.getter();
  v68 = v104;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v69 = v107;
  v70 = *(v107 + 8);
  v70(v66, v67);
  (*(v69 + 16))(v106, v68, v67);
  CRRegister.projectedValue.setter();
  v70(v68, v67);
  MergeResult.merge(_:)();
  v120(v44, v65);
  v71 = v108;
  v72 = v110;
  CRRegister.projectedValue.getter();
  v73 = v109;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v74 = v112;
  v75 = *(v112 + 8);
  v75(v71, v72);
  (*(v74 + 16))(v111, v73, v72);
  CRRegister.projectedValue.setter();
  v75(v73, v72);
  MergeResult.merge(_:)();
  v77 = v120;
  v76 = v121;
  v120(v44, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.merge(_:)();
  MergeResult.merge(_:)();
  v77(v44, v76);
  v78 = v113;
  v79 = v115;
  CRRegister.projectedValue.getter();
  v80 = v114;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v81 = v117;
  v82 = *(v117 + 8);
  v82(v78, v79);
  (*(v81 + 16))(v116, v80, v79);
  CRRegister.projectedValue.setter();
  v82(v80, v79);
  MergeResult.merge(_:)();
  v84 = v120;
  v83 = v121;
  v120(v44, v121);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v84(v44, v83);
}

uint64_t PaperDocumentPage.actionUndoingDifference(from:)@<X0>(uint64_t a2@<X8>)
{
  v123 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v3 = *(v2 - 8);
  v121 = v2;
  v122 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v120 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v119 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v110 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v109 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v12 = *(v11 - 8);
  v117 = v11;
  v118 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v95 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v126 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v19 = *(v18 - 8);
  v113 = v18;
  v114 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v95 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v127 = &v95 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v108 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v95 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v128 = &v95 - v29;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v104 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v100 = &v95 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v129 = &v95 - v34;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v96 = &v95 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v125 = &v95 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v95 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v124 = &v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v102 = &v95 - v50;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v51 = *(v41 + 8);
  v51(v43, v40);
  v51(v46, v40);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v51(v43, v40);
  v51(v46, v40);
  v52 = v96;
  v53 = v98;
  CRRegister.projectedValue.getter();
  v54 = v97;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v55 = *(v99 + 8);
  v55(v54, v53);
  v55(v52, v53);
  v56 = v100;
  v57 = v103;
  CRRegister.projectedValue.getter();
  v58 = v101;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v59 = *(v104 + 8);
  v59(v58, v57);
  v59(v56, v57);
  v60 = v105;
  v61 = v107;
  CRRegister.projectedValue.getter();
  v62 = v106;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v63 = *(v108 + 8);
  v63(v62, v61);
  v63(v60, v61);
  v64 = v111;
  v65 = v113;
  CRRegister.projectedValue.getter();
  v66 = v112;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v67 = *(v114 + 8);
  v67(v66, v65);
  v67(v64, v65);
  v68 = v115;
  v69 = v117;
  CRRegister.projectedValue.getter();
  v70 = v116;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v71 = *(v118 + 8);
  v71(v70, v69);
  v71(v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v72 = v109;
  CROrderedSet.actionUndoingDifference(from:)();
  v73 = v119;
  v74 = v121;
  CRRegister.projectedValue.getter();
  v75 = v102;
  v76 = v120;
  CRRegister.projectedValue.getter();
  v77 = v110;
  CRRegister.actionUndoingDifference(from:)();
  v78 = *(v122 + 8);
  v78(v76, v74);
  v79 = v73;
  v80 = v124;
  v78(v79, v74);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  v82 = *(*(v81 - 8) + 48);
  if (v82(v75, 1, v81) == 1 && v82(v80, 1, v81) == 1 && (v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMR), (*(*(v83 - 8) + 48))(v125, 1, v83) == 1) && (v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMR), (*(*(v84 - 8) + 48))(v129, 1, v84) == 1) && (v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GMR), (*(*(v85 - 8) + 48))(v128, 1, v85) == 1) && (v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMR), (*(*(v86 - 8) + 48))(v127, 1, v86) == 1) && (v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMR), (*(*(v87 - 8) + 48))(v126, 1, v87) == 1) && (v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR), (*(*(v88 - 8) + 48))(v72, 1, v88) == 1) && (v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GMR), (*(*(v89 - 8) + 48))(v77, 1, v89) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v90 = type metadata accessor for PaperDocumentPage.MutatingAction(0);
    (*(*(v90 - 8) + 56))(v123, 1, 1, v90);
    v91 = v125;
  }

  else
  {
    v92 = v123;
    outlined init with copy of Date?(v75, v123, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v93 = type metadata accessor for PaperDocumentPage.MutatingAction(0);
    outlined init with copy of Date?(v80, v92 + v93[5], &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v91 = v125;
    outlined init with copy of Date?(v125, v92 + v93[6], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMR);
    outlined init with copy of Date?(v129, v92 + v93[7], &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v128, v92 + v93[8], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMR);
    outlined init with copy of Date?(v127, v92 + v93[9], &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
    outlined init with copy of Date?(v126, v92 + v93[10], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMR);
    outlined init with copy of Date?(v72, v92 + v93[11], &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    outlined init with copy of Date?(v77, v92 + v93[12], &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    (*(*(v93 - 1) + 56))(v92, 0, 1, v93);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v126, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
}

uint64_t PaperDocumentPage.apply(_:)(uint64_t a1)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v2 = *(v1 - 8);
  v75 = v1;
  v76 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v70 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v61 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A12DocumentPageV14MutatingActionVSgMd, &_s8PaperKit0A12DocumentPageV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v61 - v33;
  v35 = type metadata accessor for PaperDocumentPage.MutatingAction(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v90, v34, &_s8PaperKit0A12DocumentPageV14MutatingActionVSgMd, &_s8PaperKit0A12DocumentPageV14MutatingActionVSgMR);
  v39 = *(v36 + 48);
  v90 = v35;
  if (v39(v34, 1, v35) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit0A12DocumentPageV14MutatingActionVSgMd, &_s8PaperKit0A12DocumentPageV14MutatingActionVSgMR);
  }

  outlined init with take of PDFPageID(v34, v38, type metadata accessor for PaperDocumentPage.MutatingAction);
  CRRegister.projectedValue.getter();
  v62 = v38;
  CRRegister.apply(_:)();
  v65 = *(v26 + 16);
  v65(v28, v31, v25);
  CRRegister.projectedValue.setter();
  v64 = *(v26 + 8);
  v64(v31, v25);
  v63 = type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v65(v28, v31, v25);
  CRRegister.projectedValue.setter();
  v64(v31, v25);
  v41 = v66;
  v42 = v69;
  CRRegister.projectedValue.getter();
  v43 = v62;
  CRRegister.apply(_:)();
  v44 = v68;
  (*(v68 + 16))(v67, v41, v42);
  CRRegister.projectedValue.setter();
  (*(v44 + 8))(v41, v42);
  v45 = v71;
  v46 = v74;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v47 = v73;
  (*(v73 + 16))(v72, v45, v46);
  CRRegister.projectedValue.setter();
  (*(v47 + 8))(v45, v46);
  v48 = v77;
  v49 = v80;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v50 = v79;
  (*(v79 + 16))(v78, v48, v49);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v48, v49);
  v51 = v81;
  v52 = v84;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v53 = v83;
  (*(v83 + 16))(v82, v51, v52);
  CRRegister.projectedValue.setter();
  (*(v53 + 8))(v51, v52);
  v54 = v85;
  v55 = v88;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v56 = v87;
  (*(v87 + 16))(v86, v54, v55);
  CRRegister.projectedValue.setter();
  (*(v56 + 8))(v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.apply(_:)();
  v57 = v89;
  v58 = v75;
  CRRegister.projectedValue.getter();
  v59 = v43;
  CRRegister.apply(_:)();
  v60 = v76;
  (*(v76 + 16))(v70, v57, v58);
  CRRegister.projectedValue.setter();
  (*(v60 + 8))(v57, v58);
  return outlined destroy of PaperDocumentPage.Partial(v59, type metadata accessor for PaperDocumentPage.MutatingAction);
}

uint64_t PaperDocumentPage.hasDelta(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v90 = *(v20 - 8);
  v91 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v70 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v92 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v70 - v35;
  v94 = v1;
  CRRegister.projectedValue.getter();
  v93 = a1;
  CRRegister.projectedValue.getter();
  v37 = CRRegister.hasDelta(from:)();
  v38 = *(v31 + 8);
  v38(v33, v30);
  v38(v36, v30);
  if (v37 & 1) != 0 || (v71 = v17, v39 = type metadata accessor for PaperDocumentPage(0), CRRegister.projectedValue.getter(), v72 = v39, CRRegister.projectedValue.getter(), v40 = CRRegister.hasDelta(from:)(), v38(v33, v30), v38(v36, v30), (v40) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v41 = CRRegister.hasDelta(from:)(), v42 = *(v92 + 8), v42(v26, v24), v42(v29, v24), (v41) || (v43 = v88, v44 = v91, CRRegister.projectedValue.getter(), v45 = v89, CRRegister.projectedValue.getter(), v46 = CRRegister.hasDelta(from:)(), v47 = *(v90 + 8), v47(v45, v44), v47(v43, v44), (v46) || (v48 = v85, v49 = v87, CRRegister.projectedValue.getter(), v50 = v71, CRRegister.projectedValue.getter(), v51 = CRRegister.hasDelta(from:)(), v52 = *(v86 + 8), v52(v50, v49), v52(v48, v49), (v51) || (v53 = v81, v54 = v84, CRRegister.projectedValue.getter(), v55 = v82, CRRegister.projectedValue.getter(), v56 = CRRegister.hasDelta(from:)(), v57 = *(v83 + 8), v57(v55, v54), v57(v53, v54), (v56) || (v58 = v77, v59 = v80, CRRegister.projectedValue.getter(), v60 = v78, CRRegister.projectedValue.getter(), v61 = CRRegister.hasDelta(from:)(), v62 = *(v79 + 8), v62(v60, v59), v62(v58, v59), (v61) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR), (CROrderedSet.hasDelta(from:)()) || (v63 = v73, v64 = v76, CRRegister.projectedValue.getter(), v65 = v74, CRRegister.projectedValue.getter(), v66 = CRRegister.hasDelta(from:)(), v67 = *(v75 + 8), v67(v65, v64), v67(v63, v64), (v66))
  {
    v68 = 1;
  }

  else
  {
    v68 = UnknownProperties.hasDelta(from:)();
  }

  return v68 & 1;
}

uint64_t PaperDocumentPage.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v75 = type metadata accessor for UnknownProperties();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v68 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v86 = &v68 - v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v90 = &v68 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v94 = &v68 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v97 = &v68 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v103 = &v68 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v108 = &v68 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v68 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v68 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v117);
  v112 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  type metadata accessor for CGRect(0);
  v119 = v26;
  v27 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v120 = 0u;
  v121 = 0u;
  v118 = v27;
  CRRegister.init(wrappedValue:)();
  v28 = type metadata accessor for PaperDocumentPage(0);
  v29 = v28[5];
  v120 = 0u;
  v121 = 0u;
  v107 = v29;
  CRRegister.init(wrappedValue:)();
  v30 = v28[6];
  v31 = type metadata accessor for ContentsBounds(0);
  (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  outlined init with copy of Date?(v25, v22, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v32 = lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  v100 = v30;
  v104 = v32;
  v105 = v20;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v33 = v28[7];
  LODWORD(v120) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  v35 = v34;
  v36 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  v106 = v33;
  v99 = v35;
  v98 = v36;
  CRRegister.init(wrappedValue:)();
  v37 = v28[8];
  v38 = type metadata accessor for PDFPageID(0);
  (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
  outlined init with copy of Date?(v19, v112, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v39 = lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  v91 = v37;
  v112 = v39;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v40 = v28[9];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v42 = v113;
  (*(*(v41 - 8) + 56))(v113, 1, 1, v41);
  outlined init with copy of Date?(v42, v114, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v43 = lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v87 = v40;
  v114 = v43;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v44 = v28[10];
  *&v120 = 0;
  v45 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  v83 = v44;
  v113 = v45;
  CRRegister.init(wrappedValue:)();
  v46 = v28[11];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v48 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  v49 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  v82 = v47;
  CROrderedSet.init()();
  v50 = v28[12];
  *&v120 = MEMORY[0x1E69E7CC0];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
  v52 = lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  CRRegister.init(wrappedValue:)();
  v53 = v28[13];
  UnknownProperties.init()();
  v54 = v115;
  CRRegister.init(defaultState:)();
  if (v54)
  {
    return outlined destroy of PaperDocumentPage.Partial(a1, type metadata accessor for PaperDocumentPage);
  }

  v73 = v49;
  v70 = v52;
  v71 = v51;
  v115 = v48;
  v68 = v53;
  v69 = v50;
  v72 = v46;
  v56 = v106;
  v55 = v107;
  v57 = v108;
  v58 = *(v109 + 40);
  v58(a1, v122, v111);
  CRRegister.init(defaultState:)();
  v58(a1 + v55, v110, v111);
  CRRegister.init(defaultState:)();
  (*(v101 + 40))(a1 + v100, v57, v102);
  v59 = v103;
  CRRegister.init(defaultState:)();
  v60 = a1;
  (*(v95 + 40))(a1 + v56, v59, v96);
  v61 = v97;
  CRRegister.init(defaultState:)();
  (*(v92 + 40))(v60 + v91, v61, v93);
  v62 = v94;
  CRRegister.init(defaultState:)();
  (*(v88 + 40))(v60 + v87, v62, v89);
  v63 = v90;
  CRRegister.init(defaultState:)();
  (*(v84 + 40))(v60 + v83, v63, v85);
  v64 = v86;
  CROrderedSet.init(defaultState:)();
  (*(v79 + 40))(v60 + v72, v64, v80);
  v65 = v81;
  CRRegister.init(defaultState:)();
  (*(v76 + 40))(v60 + v69, v65, v77);
  v66 = v78;
  UnknownProperties.init(defaultState:)();
  return (*(v74 + 40))(v60 + v68, v66, v75);
}

uint64_t PaperDocumentPage.isDefaultState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v40 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v51 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  type metadata accessor for PaperDocumentPage(0);
  v52 = v0;
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (v38 = v1, CRRegister.projectedValue.getter(), v19 = CRRegister.isDefaultState.getter(), v20 = *(v16 + 8), v20(v18, v15), (v19) && (CRRegister.projectedValue.getter(), v21 = CRRegister.isDefaultState.getter(), v20(v18, v15), (v21) && (CRRegister.projectedValue.getter(), v22 = CRRegister.isDefaultState.getter(), (*(v51 + 8))(v14, v12), (v22) && (CRRegister.projectedValue.getter(), v23 = CRRegister.isDefaultState.getter(), (*(v50 + 8))(v11, v9), (v23) && (v24 = v47, v25 = v49, CRRegister.projectedValue.getter(), v26 = CRRegister.isDefaultState.getter(), (*(v48 + 8))(v24, v25), (v26) && (v27 = v44, v28 = v46, CRRegister.projectedValue.getter(), v29 = CRRegister.isDefaultState.getter(), (*(v45 + 8))(v27, v28), (v29) && (v30 = v41, v31 = v43, CRRegister.projectedValue.getter(), v32 = CRRegister.isDefaultState.getter(), (*(v42 + 8))(v30, v31), (v32) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR), (CROrderedSet.isDefaultState.getter()))
  {
    v33 = v38;
    v34 = v39;
    CRRegister.projectedValue.getter();
    v35 = CRRegister.isDefaultState.getter();
    (*(v40 + 8))(v34, v33);
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t PaperDocumentPage.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v2 = *(v1 - 8);
  v49 = v1;
  v50 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v35 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v23 = *(v20 + 8);
  v23(v22, v19);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v23(v22, v19);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v35 + 8))(v18, v16);
  v25 = v36;
  v24 = v37;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v38 + 8))(v25, v24);
  v27 = v39;
  v26 = v40;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v41 + 8))(v27, v26);
  v29 = v42;
  v28 = v43;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v44 + 8))(v29, v28);
  v31 = v45;
  v30 = v46;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v47 + 8))(v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.visitReferences(_:)();
  v33 = v48;
  v32 = v49;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v50 + 8))(v33, v32);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t PaperDocumentPage.newRefs(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v3 = *(v2 - 8);
  v95 = v2;
  v96 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v94 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v8 = *(v7 - 8);
  v91 = v7;
  v92 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v18 = *(v17 - 8);
  v83 = v17;
  v84 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v23 = *(v22 - 8);
  v79 = v22;
  v80 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v78 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v73 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v76 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v75 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v74 = &v73 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v73 - v36;
  v97 = MEMORY[0x1E69E7CD0];
  v73 = v1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v38 = CRRegister.newRefs(from:)();
  v39 = *(v32 + 8);
  v39(v34, v31);
  v39(v37, v31);
  specialized Set.formUnion<A>(_:)(v38);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v40 = CRRegister.newRefs(from:)();
  v39(v34, v31);
  v39(v37, v31);
  specialized Set.formUnion<A>(_:)(v40);
  v41 = v74;
  CRRegister.projectedValue.getter();
  v42 = v75;
  CRRegister.projectedValue.getter();
  v43 = CRRegister.newRefs(from:)();
  v44 = *(v76 + 8);
  v44(v42, v27);
  v44(v41, v27);
  specialized Set.formUnion<A>(_:)(v43);
  v45 = v77;
  v46 = v79;
  CRRegister.projectedValue.getter();
  v47 = v78;
  CRRegister.projectedValue.getter();
  v48 = CRRegister.newRefs(from:)();
  v49 = *(v80 + 8);
  v49(v47, v46);
  v49(v45, v46);
  specialized Set.formUnion<A>(_:)(v48);
  v50 = v81;
  v51 = v83;
  CRRegister.projectedValue.getter();
  v52 = v82;
  CRRegister.projectedValue.getter();
  v53 = CRRegister.newRefs(from:)();
  v54 = *(v84 + 8);
  v54(v52, v51);
  v54(v50, v51);
  specialized Set.formUnion<A>(_:)(v53);
  v55 = v85;
  v56 = v87;
  CRRegister.projectedValue.getter();
  v57 = v86;
  CRRegister.projectedValue.getter();
  v58 = CRRegister.newRefs(from:)();
  v59 = *(v88 + 8);
  v59(v57, v56);
  v59(v55, v56);
  specialized Set.formUnion<A>(_:)(v58);
  v60 = v89;
  v61 = v91;
  CRRegister.projectedValue.getter();
  v62 = v90;
  CRRegister.projectedValue.getter();
  v63 = CRRegister.newRefs(from:)();
  v64 = *(v92 + 8);
  v64(v62, v61);
  v64(v60, v61);
  specialized Set.formUnion<A>(_:)(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v65 = CROrderedSet.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v65);
  v66 = v93;
  v67 = v95;
  CRRegister.projectedValue.getter();
  v68 = v94;
  CRRegister.projectedValue.getter();
  v69 = CRRegister.newRefs(from:)();
  v70 = *(v96 + 8);
  v70(v68, v67);
  v70(v66, v67);
  specialized Set.formUnion<A>(_:)(v69);
  v71 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v71);
  return v97;
}

Swift::Bool __swiftcall PaperDocumentPage.needToFinalizeTimestamps()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v55 = v0;
  CRRegister.projectedValue.getter();
  v20 = CRRegister.needToFinalizeTimestamps()();
  v21 = *(v17 + 8);
  v21(v19, v16);
  v38 = v20 || (v41 = v9, type metadata accessor for PaperDocumentPage(0), CRRegister.projectedValue.getter(), v22 = CRRegister.needToFinalizeTimestamps()(), v21(v19, v16), v22) || (CRRegister.projectedValue.getter(), v23 = CRRegister.needToFinalizeTimestamps()(), (*(v13 + 8))(v15, v12), v23) || (v24 = v41, CRRegister.projectedValue.getter(), v25 = CRRegister.needToFinalizeTimestamps()(), (*(v54 + 8))(v11, v24), v25) || (v26 = v51, v27 = v53, CRRegister.projectedValue.getter(), v28 = CRRegister.needToFinalizeTimestamps()(), (*(v52 + 8))(v26, v27), v28) || (v29 = v48, v30 = v50, CRRegister.projectedValue.getter(), v31 = CRRegister.needToFinalizeTimestamps()(), (*(v49 + 8))(v29, v30), v31) || (v32 = v45, v33 = v47, CRRegister.projectedValue.getter(), v34 = CRRegister.needToFinalizeTimestamps()(), (*(v46 + 8))(v32, v33), v34) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR), CROrderedSet.needToFinalizeTimestamps()()) || (v35 = v42, v36 = v44, CRRegister.projectedValue.getter(), v37 = CRRegister.needToFinalizeTimestamps()(), (*(v43 + 8))(v35, v36), v37) || UnknownProperties.needToFinalizeTimestamps()();
  return v38;
}

uint64_t PaperDocumentPage.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v3 = *(v2 - 8);
  v82 = v2;
  v83 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v81 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v77 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v13 = *(v12 - 8);
  v74 = v12;
  v75 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v73 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v72 = v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v18 = *(v17 - 8);
  v70 = v17;
  v71 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v69 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v68 = v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v65 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v64 = v58 - v26;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v60 = v58 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v58 - v35;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v59 = *(v31 + 16);
  v59(v33, v36, v30);
  CRRegister.projectedValue.setter();
  v37 = *(v31 + 8);
  v37(v36, v30);
  v58[1] = type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v59(v33, v36, v30);
  CRRegister.projectedValue.setter();
  v37(v36, v30);
  v38 = v60;
  v39 = v62;
  CRRegister.projectedValue.getter();
  v40 = a1;
  CRRegister.finalizeTimestamps(_:)();
  v41 = v63;
  (*(v63 + 16))(v61, v38, v39);
  CRRegister.projectedValue.setter();
  (*(v41 + 8))(v38, v39);
  v42 = v64;
  v43 = v66;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v44 = v67;
  (*(v67 + 16))(v65, v42, v43);
  CRRegister.projectedValue.setter();
  (*(v44 + 8))(v42, v43);
  v45 = v68;
  v46 = v70;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v47 = v71;
  (*(v71 + 16))(v69, v45, v46);
  CRRegister.projectedValue.setter();
  (*(v47 + 8))(v45, v46);
  v48 = v72;
  v49 = v74;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v50 = v75;
  (*(v75 + 16))(v73, v48, v49);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v48, v49);
  v51 = v76;
  v52 = v78;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v53 = v79;
  (*(v79 + 16))(v77, v51, v52);
  CRRegister.projectedValue.setter();
  (*(v53 + 8))(v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.finalizeTimestamps(_:)();
  v54 = v80;
  v55 = v82;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v56 = v83;
  (*(v83 + 16))(v81, v54, v55);
  CRRegister.projectedValue.setter();
  (*(v56 + 8))(v54, v55);
  return MEMORY[0x1DA6CBA30](v40);
}

uint64_t PaperDocumentPage.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v193 = a1;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v150 - v2;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v150 - v3;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v150 - v4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v150 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v176 = *(v6 - 8);
  v177 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v150 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v181 = *(v8 - 8);
  v182 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v150 - v9;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v194 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v150 - v12;
  v14 = type metadata accessor for CRCodableVersion();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v156 = &v150 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v150 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v150 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v159 = &v150 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v163 = &v150 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v150 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v168 = &v150 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v169 = &v150 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v150 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v174 = &v150 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v178 = &v150 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v179 = &v150 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v183 = &v150 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v184 = &v150 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v150 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v150 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v150 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v150 - v55;
  v186 = type metadata accessor for PaperDocumentPage(0);
  v192 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v57 = *(v15 + 104);
  v189 = *MEMORY[0x1E6995288];
  v190 = v15 + 104;
  v188 = v57;
  v57(v53);
  v58 = static CRCodableVersion.== infix(_:_:)();
  v59 = *(v15 + 8);
  v191 = v53;
  v59(v53, v14);
  if (v58)
  {
    return (*(v15 + 32))(v193, v56, v14);
  }

  v61 = v187;
  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v62 = *(v194 + 8);
  v194 += 8;
  v151 = v62;
  v62(v13, v61);
  v63 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v64 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v65 = (v64 & 1) == 0;
  if (v64)
  {
    v66 = v56;
  }

  else
  {
    v66 = v47;
  }

  if (v65)
  {
    v67 = v56;
  }

  else
  {
    v67 = v47;
  }

  v59(v66, v14);
  v70 = *(v15 + 32);
  v69 = v15 + 32;
  v68 = v70;
  v70(v50, v67, v14);
  v70(v56, v50, v14);
  v71 = v191;
  v188(v191, v189, v14);
  v72 = static CRCodableVersion.== infix(_:_:)();
  v59(v71, v14);
  if (v72)
  {
    return v68(v193, v56, v14);
  }

  v150 = v69;
  v73 = v185;
  v74 = v187;
  CRRegister.projectedValue.getter();
  v75 = v68;
  v76 = v183;
  CRRegister.minEncodingVersion.getter();
  v151(v73, v74);
  v194 = v63;
  v77 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v78 = (v77 & 1) == 0;
  if (v77)
  {
    v79 = v56;
  }

  else
  {
    v79 = v76;
  }

  if (v78)
  {
    v80 = v56;
  }

  else
  {
    v80 = v76;
  }

  v81 = v75;
  v59(v79, v14);
  v82 = v184;
  v75(v184, v80, v14);
  v75(v56, v82, v14);
  v83 = v191;
  v188(v191, v189, v14);
  v84 = static CRCodableVersion.== infix(_:_:)();
  v59(v83, v14);
  v85 = v193;
  if (v84)
  {
    return v81(v85, v56, v14);
  }

  v86 = v59;
  v87 = v180;
  v88 = v182;
  CRRegister.projectedValue.getter();
  v89 = v178;
  CRRegister.minEncodingVersion.getter();
  (*(v181 + 8))(v87, v88);
  v90 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v91 = (v90 & 1) == 0;
  if (v90)
  {
    v92 = v56;
  }

  else
  {
    v92 = v89;
  }

  if (v91)
  {
    v93 = v56;
  }

  else
  {
    v93 = v89;
  }

  v86(v92, v14);
  v94 = v179;
  v75(v179, v93, v14);
  v75(v56, v94, v14);
  v95 = v191;
  v188(v191, v189, v14);
  v96 = static CRCodableVersion.== infix(_:_:)();
  v86(v95, v14);
  if (v96)
  {
    goto LABEL_60;
  }

  v97 = v175;
  v98 = v177;
  CRRegister.projectedValue.getter();
  v99 = v173;
  CRRegister.minEncodingVersion.getter();
  (*(v176 + 8))(v97, v98);
  v100 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v101 = (v100 & 1) == 0;
  v102 = (v100 & 1) != 0 ? v56 : v99;
  v103 = v101 ? v56 : v99;
  v86(v102, v14);
  v104 = v174;
  v81(v174, v103, v14);
  v81(v56, v104, v14);
  v105 = v191;
  v188(v191, v189, v14);
  v106 = static CRCodableVersion.== infix(_:_:)();
  v86(v105, v14);
  if (v106)
  {
    goto LABEL_60;
  }

  v107 = v170;
  v108 = v172;
  CRRegister.projectedValue.getter();
  v109 = v168;
  CRRegister.minEncodingVersion.getter();
  (*(v171 + 8))(v107, v108);
  v110 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v111 = (v110 & 1) == 0;
  v112 = (v110 & 1) != 0 ? v56 : v109;
  v113 = v111 ? v56 : v109;
  v86(v112, v14);
  v114 = v169;
  v81(v169, v113, v14);
  v81(v56, v114, v14);
  v115 = v191;
  v188(v191, v189, v14);
  v116 = static CRCodableVersion.== infix(_:_:)();
  v86(v115, v14);
  if (v116)
  {
    goto LABEL_60;
  }

  v117 = v165;
  v118 = v167;
  CRRegister.projectedValue.getter();
  v119 = v163;
  CRRegister.minEncodingVersion.getter();
  (*(v166 + 8))(v117, v118);
  v120 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v121 = (v120 & 1) == 0;
  v122 = (v120 & 1) != 0 ? v56 : v119;
  v123 = v121 ? v56 : v119;
  v86(v122, v14);
  v124 = v164;
  v81(v164, v123, v14);
  v81(v56, v124, v14);
  v125 = v191;
  v188(v191, v189, v14);
  v126 = static CRCodableVersion.== infix(_:_:)();
  v86(v125, v14);
  if (v126)
  {
    goto LABEL_60;
  }

  v127 = v160;
  v128 = v162;
  CRRegister.projectedValue.getter();
  v129 = v158;
  CRRegister.minEncodingVersion.getter();
  (*(v161 + 8))(v127, v128);
  v130 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v131 = (v130 & 1) == 0;
  v132 = (v130 & 1) != 0 ? v56 : v129;
  v133 = v131 ? v56 : v129;
  v86(v132, v14);
  v134 = v159;
  v81(v159, v133, v14);
  v81(v56, v134, v14);
  v135 = v191;
  v188(v191, v189, v14);
  v136 = static CRCodableVersion.== infix(_:_:)();
  v86(v135, v14);
  if (v136)
  {
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v137 = v156;
  CROrderedSet.minEncodingVersion.getter();
  v138 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v139 = (v138 & 1) == 0;
  if (v138)
  {
    v140 = v56;
  }

  else
  {
    v140 = v137;
  }

  if (v139)
  {
    v137 = v56;
  }

  v86(v140, v14);
  v141 = v157;
  v81(v157, v137, v14);
  v81(v56, v141, v14);
  v142 = v191;
  v188(v191, v189, v14);
  v143 = static CRCodableVersion.== infix(_:_:)();
  v86(v142, v14);
  if (v143)
  {
LABEL_60:
    v85 = v193;
    return v81(v85, v56, v14);
  }

  v144 = v86;
  v145 = v153;
  v146 = v155;
  CRRegister.projectedValue.getter();
  v147 = v152;
  CRRegister.minEncodingVersion.getter();
  (*(v154 + 8))(v145, v146);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v144(v56, v14);
    v148 = v193;
    v149 = v147;
  }

  else
  {
    v144(v147, v14);
    v148 = v193;
    v149 = v56;
  }

  return v81(v148, v149, v14);
}

uint64_t PaperDocumentPage.observableDifference(from:with:)@<X0>(uint64_t a3@<X8>)
{
  v117 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v4 = *(v3 - 8);
  v115 = v3;
  v116 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v11 = *(v10 - 8);
  v111 = v10;
  v112 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v16 = *(v15 - 8);
  v107 = v15;
  v108 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v89 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v119 = &v89 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v104 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v89 - v24;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v99 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v89 - v27;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v89 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v121 = &v89 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v89 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v90 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v120 = &v89 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v118 = &v89 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v122 = &v89 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v98 = &v89 - v49;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v50 = *(v34 + 8);
  v50(v36, v33);
  v50(v39, v33);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v50(v36, v33);
  v50(v39, v33);
  v51 = v91;
  v52 = v93;
  CRRegister.projectedValue.getter();
  v53 = v92;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v54 = *(v94 + 8);
  v54(v53, v52);
  v54(v51, v52);
  v55 = v95;
  v56 = v97;
  CRRegister.projectedValue.getter();
  v57 = v96;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v58 = *(v99 + 8);
  v58(v57, v56);
  v58(v55, v56);
  v59 = v100;
  v60 = v102;
  CRRegister.projectedValue.getter();
  v61 = v101;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v62 = *(v104 + 8);
  v62(v61, v60);
  v62(v59, v60);
  v63 = v105;
  v64 = v107;
  CRRegister.projectedValue.getter();
  v65 = v106;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v66 = *(v108 + 8);
  v66(v65, v64);
  v66(v63, v64);
  v67 = v109;
  v68 = v111;
  CRRegister.projectedValue.getter();
  v69 = v110;
  CRRegister.projectedValue.getter();
  v70 = v90;
  CRRegister.observableDifference(from:with:)();
  v71 = *(v112 + 8);
  v71(v69, v68);
  v71(v67, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v72 = v103;
  CROrderedSet.observableDifference(from:with:)();
  v73 = v113;
  v74 = v115;
  CRRegister.projectedValue.getter();
  v75 = v114;
  CRRegister.projectedValue.getter();
  v76 = v98;
  CRRegister.observableDifference(from:with:)();
  v77 = *(v116 + 8);
  v77(v75, v74);
  v77(v73, v74);
  v78 = v123;
  v79 = type metadata accessor for CRValueObservableDifference();
  v80 = *(*(v79 - 8) + 48);
  if (v80(v76, 1, v79) == 1 && v80(v122, 1, v79) == 1 && (v81 = type metadata accessor for ContentsBounds.ObservableDifference(0), (*(*(v81 - 8) + 48))(v121, 1, v81) == 1) && v80(v118, 1, v79) == 1 && v80(v120, 1, v79) == 1 && (v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMR), (*(*(v82 - 8) + 48))(v119, 1, v82) == 1) && v80(v70, 1, v79) == 1 && (v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR), (*(*(v83 - 8) + 48))(v72, 1, v83) == 1) && v78 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v84 = type metadata accessor for PaperDocumentPage.ObservableDifference(0);
    (*(*(v84 - 8) + 56))(v117, 1, 1, v84);
    v85 = v118;
  }

  else
  {
    v86 = v117;
    outlined init with copy of Date?(v76, v117, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v87 = type metadata accessor for PaperDocumentPage.ObservableDifference(0);
    outlined init with copy of Date?(v122, v86 + v87[5], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v121, v86 + v87[6], &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMR);
    v85 = v118;
    outlined init with copy of Date?(v118, v86 + v87[7], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v120, v86 + v87[8], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v119, v86 + v87[9], &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
    outlined init with copy of Date?(v70, v86 + v87[10], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v72, v86 + v87[11], &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    *(v86 + v87[12]) = v78;
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    (*(*(v87 - 1) + 56))(v86, 0, 1, v87);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v121, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v122, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

double PaperDocumentPage.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v46 = *(v0 - 8);
  v47 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v45 = &v39 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v57 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = v59;
  v22 = dispatch thunk of CREncoder.keyedContainer()();
  if (!v21)
  {
    v43 = v17;
    v44 = v15;
    v41 = v13;
    v42 = v11;
    v39 = v8;
    v40 = v10;
    v24 = v22;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    v59 = v24;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v25 = *(v44 + 8);
    v25(v20, v14);
    type metadata accessor for PaperDocumentPage(0);
    v26 = v43;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v25(v26, v14);
    v28 = v41;
    v27 = v42;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ContentsBounds?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v58 + 8))(v28, v27);
    v29 = v39;
    v30 = v40;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v57 + 8))(v30, v29);
    v31 = v54;
    v32 = v56;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFPageID?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v55 + 8))(v31, v32);
    v33 = v51;
    v34 = v53;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v52 + 8))(v33, v34);
    v35 = v48;
    v36 = v50;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v49 + 8))(v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR, MEMORY[0x1E6995138]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v37 = v45;
    v38 = v47;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<[CRKeyPath]> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v46 + 8))(v37, v38);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t PaperDocumentPage.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a1;
  v143 = type metadata accessor for UnknownProperties();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v148 = (&v134 - v5);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v144 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v140 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v134 - v8;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v134 - v9;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v166 = &v134 - v10;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v146 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v158 = &v134 - v11;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v161 = &v134 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v163 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v182 = *(v14 - 8);
  v183 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v167 = &v134 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v175 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v174 = &v134 - v16;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v134 - v19;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v191);
  v188 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v187 = &v134 - v22;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v190);
  v186 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v134 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v134 - v31;
  type metadata accessor for CGRect(0);
  v34 = v33;
  v35 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v194 = 0u;
  v195 = 0u;
  CRRegister.init(wrappedValue:)();
  v36 = type metadata accessor for PaperDocumentPage(0);
  v37 = v36[5];
  v194 = 0u;
  v195 = 0u;
  v168 = v37;
  v184 = v35;
  v185 = v34;
  CRRegister.init(wrappedValue:)();
  v38 = v36[6];
  v39 = type metadata accessor for ContentsBounds(0);
  (*(*(v39 - 8) + 56))(v32, 1, 1, v39);
  outlined init with copy of Date?(v32, v29, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v40 = lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  v178 = v38;
  v173 = v27;
  v172 = v40;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v41 = v36[7];
  LODWORD(v194) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  v43 = v42;
  v44 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  v171 = v41;
  v170 = v43;
  v169 = v44;
  CRRegister.init(wrappedValue:)();
  v45 = v36[8];
  v46 = type metadata accessor for PDFPageID(0);
  (*(*(v46 - 8) + 56))(v26, 1, 1, v46);
  outlined init with copy of Date?(v26, v186, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v47 = lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?();
  v164 = v45;
  v162 = v47;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v48 = v36[9];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v50 = v187;
  (*(*(v49 - 8) + 56))(v187, 1, 1, v49);
  outlined init with copy of Date?(v50, v188, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v51 = lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v186 = v48;
  v188 = v51;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v52 = v36[10];
  *&v194 = 0;
  v53 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  v187 = v52;
  v157 = v53;
  CRRegister.init(wrappedValue:)();
  v54 = v36[11];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v56 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  v57 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  v145 = v54;
  v152 = v55;
  CROrderedSet.init()();
  v58 = v36[12];
  *&v194 = MEMORY[0x1E69E7CC0];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]();
  CRRegister.init(wrappedValue:)();
  v60 = v36[13];
  v192 = a2;
  UnknownProperties.init()();
  v61 = v189;
  v62 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v61)
  {

    v98 = v192;
    return outlined destroy of PaperDocumentPage.Partial(v98, type metadata accessor for PaperDocumentPage);
  }

  else
  {
    v137 = v57;
    v138 = v56;
    v136 = v59;
    v135 = v58;
    v63 = v179;
    v64 = v180;
    v66 = v181;
    v65 = v182;
    v67 = v183;
    v134 = v60;
    v189 = v62;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      v68 = v67;
      (*(v176 + 40))(v192, v63, v177);
    }

    else
    {
      v68 = v67;
    }

    v69 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v70 = v65;
    v71 = v178;
    if (v69)
    {
      v72 = v64;
      CRRegister.init(from:)();
      v73 = v66;
      v74 = v192;
      (*(v176 + 40))(v192 + v168, v72, v177);
      v71 = v178;
    }

    else
    {
      v73 = v66;
      v74 = v192;
    }

    v75 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v76 = v175;
    v77 = v174;
    if (v75)
    {
      CRRegister.init(from:)();
      (*(v76 + 40))(v74 + v71, v77, v73);
    }

    v78 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v79 = v186;
    v80 = v171;
    if (v78)
    {
      v81 = v167;
      CRRegister.init(from:)();
      (*(v70 + 40))(v192 + v80, v81, v68);
    }

    v82 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v83 = v166;
    v84 = v165;
    v85 = v164;
    if (v82)
    {
      v86 = v163;
      CRRegister.init(from:)();
      (*(v159 + 40))(v192 + v85, v86, v160);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v87 = v161;
      CRRegister.init(from:)();
      (*(v153 + 40))(v192 + v79, v87, v154);
    }

    v88 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v89 = v187;
    if (v88)
    {
      v90 = v158;
      CRRegister.init(from:)();
      (*(v146 + 40))(&v89[v192], v90, v84);
    }

    v91 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v92 = v156;
    v93 = v155;
    if (v91)
    {
      CROrderedSet.init(from:)();
      (*(v93 + 40))(v192 + v145, v83, v92);
    }

    v94 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v95 = v151;
    v96 = v150;
    v97 = v149;
    if (v94)
    {
      CRRegister.init(from:)();
      (*(v96 + 40))(v192 + v135, v97, v95);
    }

    v100 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v190 = 0;
    v101 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v100);

    *&v194 = v101;
    specialized Set._Variant.remove(_:)(0x73646E756F62, 0xE600000000000000);

    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x73646E756F4263, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x7461746E6569726FLL, 0xEB000000006E6F69);

    specialized Set._Variant.remove(_:)(0x65676150666470, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x676E6977617264, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x7367616C66, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x656D656C65627573, 0xEB0000000073746ELL);

    specialized Set._Variant.remove(_:)(0x7344496F6E6E61, 0xE700000000000000);

    v102 = v194;
    v103 = v194 + 56;
    v104 = 1 << *(v194 + 32);
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    v106 = v105 & *(v194 + 56);
    v107 = (v104 + 63) >> 6;
    v108 = (v144 + 56);

    v109 = 0;
    v191 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v110 = v109;
      v111 = v192;
      if (!v106)
      {
        break;
      }

LABEL_31:
      v112 = __clz(__rbit64(v106));
      v106 &= v106 - 1;
      v113 = (*(v102 + 48) + ((v109 << 10) | (16 * v112)));
      v115 = *v113;
      v114 = v113[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v117 = v147;
        v188 = *(v147 + 48);
        v118 = v148;
        *v148 = v115;
        v118[1] = v114;
        v119 = v118;

        v120 = v190;
        AnyCRDT.init(from:)();
        v190 = v120;
        if (v120)
        {
LABEL_46:

          swift_bridgeObjectRelease_n();
          v98 = v192;
          return outlined destroy of PaperDocumentPage.Partial(v98, type metadata accessor for PaperDocumentPage);
        }

        (*v108)(v119, 0, 1, v117);
        v121 = v139;
        outlined init with take of Range<AttributedString.Index>(v119, v139, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        outlined init with take of Range<AttributedString.Index>(v121, v140, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v191[2] + 1, 1, v191);
        }

        v122 = v144;
        v124 = v191[2];
        v123 = v191[3];
        v125 = v140;
        if (v124 >= v123 >> 1)
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1, v191);
          v125 = v140;
        }

        v126 = v191;
        v191[2] = v124 + 1;
        outlined init with take of Range<AttributedString.Index>(v125, v126 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v124, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      }

      else
      {

        v116 = v148;
        (*v108)(v148, 1, 1, v147);
        outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
      }
    }

    while (1)
    {
      v109 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v109 >= v107)
      {
        break;
      }

      v106 = *(v103 + 8 * v109);
      ++v110;
      if (v106)
      {
        goto LABEL_31;
      }
    }

    v127 = v191;
    if (v191[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
      v128 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v128 = MEMORY[0x1E69E7CC8];
    }

    v129 = v143;
    v130 = v142;
    v131 = v141;
    v132 = v134;
    v196 = v128;
    v133 = v190;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v127, 1, &v196);
    if (v133)
    {

      v98 = v111;
      return outlined destroy of PaperDocumentPage.Partial(v98, type metadata accessor for PaperDocumentPage);
    }

    UnknownProperties.init(_:)();

    return (*(v130 + 40))(v111 + v132, v131, v129);
  }
}

uint64_t PaperDocumentPage.delta(_:from:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v156 = *(v4 - 8);
  v157 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v141 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v140 = v127 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v151 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v154 = v127 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v150 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v153 = v127 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v158 = *(v16 - 8);
  v159 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v139 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v138 = v127 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v149 = v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v169 = v127 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v160 = *(v24 - 8);
  v161 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v137 = v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v136 = v127 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v148 = v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v170 = v127 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v162 = *(v32 - 8);
  v163 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v135 = v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v134 = v127 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v147 = v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v171 = v127 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v41 = *(v40 - 8);
  v164 = v40;
  v165 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v133 = v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v131 = v127 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v146 = v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v168 = v127 - v48;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v166 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v129 = v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v128 = v127 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v145 = v127 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v167 = v127 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v130 = v56;
  v132 = *(v56 - 8);
  v57 = v132;
  MEMORY[0x1EEE9AC00](v56);
  v59 = v127 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v127 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v144 = v127 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v143 = v127 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v172 = v127 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v152 = v127 - v70;
  CRRegister.projectedValue.getter();
  v127[1] = a2;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v71 = *(v57 + 8);
  v71(v59, v56);
  v71(v62, v56);
  type metadata accessor for PaperDocumentPage(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v71(v59, v56);
  v71(v62, v56);
  v72 = v128;
  v73 = v155;
  CRRegister.projectedValue.getter();
  v74 = v129;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v75 = *(v166 + 8);
  v75(v74, v73);
  v75(v72, v73);
  v76 = v131;
  v77 = v164;
  CRRegister.projectedValue.getter();
  v78 = v133;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v79 = *(v165 + 8);
  v79(v78, v77);
  v79(v76, v77);
  v80 = v134;
  v81 = v163;
  CRRegister.projectedValue.getter();
  v82 = v135;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v83 = *(v162 + 8);
  v83(v82, v81);
  v83(v80, v81);
  v84 = v136;
  v85 = v161;
  CRRegister.projectedValue.getter();
  v86 = v137;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v87 = *(v160 + 8);
  v87(v86, v85);
  v87(v84, v85);
  v88 = v138;
  v89 = v159;
  CRRegister.projectedValue.getter();
  v90 = v139;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v91 = *(v158 + 8);
  v91(v90, v89);
  v92 = v89;
  v93 = v168;
  v91(v88, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v94 = v153;
  CROrderedSet.delta(_:from:)();
  v95 = v140;
  v96 = v157;
  CRRegister.projectedValue.getter();
  v97 = v167;
  v98 = v141;
  CRRegister.projectedValue.getter();
  v99 = v154;
  v100 = v98;
  CRRegister.delta(_:from:)();
  v101 = *(v156 + 8);
  v102 = v100;
  v103 = v155;
  v101(v102, v96);
  v104 = v95;
  v105 = v152;
  v101(v104, v96);
  v106 = v132;
  v107 = *(v132 + 48);
  v108 = v130;
  if (v107(v105, 1) == 1 && (v107)(v172, 1, v108) == 1 && (*(v166 + 48))(v97, 1, v103) == 1 && (*(v165 + 48))(v93, 1, v164) == 1 && (*(v162 + 48))(v171, 1, v163) == 1 && (*(v160 + 48))(v170, 1, v161) == 1 && (*(v158 + 48))(v169, 1, v159) == 1 && (v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR), (*(*(v109 - 8) + 48))(v94, 1, v109) == 1) && (*(v156 + 48))(v99, 1, v157) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v110 = type metadata accessor for PaperDocumentPage.Partial(0);
    (*(*(v110 - 8) + 56))(v142, 1, 1, v110);
  }

  else
  {
    outlined init with copy of Date?(v105, v143, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v172, v144, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v97, v145, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    outlined init with copy of Date?(v93, v146, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v171, v147, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    outlined init with copy of Date?(v170, v148, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    outlined init with copy of Date?(v169, v149, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    outlined init with copy of Date?(v94, v150, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    outlined init with copy of Date?(v99, v151, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    v111 = *(v106 + 56);
    v112 = v142;
    v111(v142, 1, 1, v108);
    v113 = type metadata accessor for PaperDocumentPage.Partial(0);
    v141 = v113[5];
    v111(&v141[v112], 1, 1, v108);
    v140 = v113[6];
    (*(v166 + 56))(&v140[v112], 1, 1, v103);
    v114 = v113[7];
    (*(v165 + 56))(v112 + v114, 1, 1, v164);
    v115 = v113[8];
    (*(v162 + 56))(v112 + v115, 1, 1, v163);
    v116 = v113[9];
    (*(v160 + 56))(v112 + v116, 1, 1, v161);
    v117 = v113[10];
    (*(v158 + 56))(v112 + v117, 1, 1, v159);
    v118 = v113[11];
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
    (*(*(v119 - 8) + 56))(v112 + v118, 1, 1, v119);
    v120 = v113[12];
    (*(v156 + 56))(v112 + v120, 1, 1, v157);
    outlined assign with take of UUID?(v143, v112, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v144, &v141[v112], &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v145, &v140[v112], &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    outlined assign with take of UUID?(v146, v112 + v114, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v147, v112 + v115, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    v121 = v112 + v116;
    v99 = v154;
    outlined assign with take of UUID?(v148, v121, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    v122 = v112 + v117;
    v94 = v153;
    outlined assign with take of UUID?(v149, v122, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    outlined assign with take of UUID?(v150, v112 + v118, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    outlined assign with take of UUID?(v151, v112 + v120, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v123 = *(*(v113 - 1) + 56);
    v124 = v112;
    v125 = v113;
    v97 = v167;
    v93 = v168;
    v123(v124, 0, 1, v125);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v169, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v170, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v171, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v172, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
}

BOOL PaperDocumentPage.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v125 = &v115 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v126 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v115 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v130 = &v115 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v131 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v118 = &v115 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v135 = &v115 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v136 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v120 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v115 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v149 = &v115 - v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v140 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v123 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v115 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v150 = &v115 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v143 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v128 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v115 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v147 = &v115 - v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v148 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v133 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v115 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v144 = &v115 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v145 = *(v33 - 8);
  v146 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v137 = &v115 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v115 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v141 = &v115 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v115 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v115 - v50;
  v153 = a1;
  outlined init with copy of Date?(a1, v42, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v52 = *(v44 + 48);
  v53 = v52(v42, 1, v43);
  v151 = v1;
  if (v53 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    (*(v44 + 32))(v51, v42, v43);
    CRRegister.projectedValue.getter();
    v54 = CRRegister.canMerge(delta:)();
    v55 = *(v44 + 8);
    v55(v48, v43);
    v55(v51, v43);
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  v152 = type metadata accessor for PaperDocumentPage.Partial(0);
  outlined init with copy of Date?(v153 + v152[5], v39, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v52(v39, 1, v43) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v56 = v150;
    v58 = v148;
    v57 = v149;
    v59 = v147;
  }

  else
  {
    v60 = v141;
    (*(v44 + 32))(v141, v39, v43);
    type metadata accessor for PaperDocumentPage(0);
    CRRegister.projectedValue.getter();
    v61 = CRRegister.canMerge(delta:)();
    v62 = *(v44 + 8);
    v62(v48, v43);
    v62(v60, v43);
    v57 = v149;
    v56 = v150;
    v59 = v147;
    v58 = v148;
    if ((v61 & 1) == 0)
    {
      return 0;
    }
  }

  v63 = v144;
  outlined init with copy of Date?(v153 + v152[6], v144, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  v64 = v145;
  v65 = v146;
  if ((*(v145 + 48))(v63, 1, v146) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  }

  else
  {
    v66 = v137;
    (*(v64 + 32))(v137, v63, v65);
    type metadata accessor for PaperDocumentPage(0);
    v67 = v57;
    v68 = v138;
    CRRegister.projectedValue.getter();
    v69 = CRRegister.canMerge(delta:)();
    v70 = *(v64 + 8);
    v71 = v68;
    v57 = v67;
    v70(v71, v65);
    v72 = v66;
    v56 = v150;
    v70(v72, v65);
    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  v73 = v153;
  outlined init with copy of Date?(v153 + v152[7], v59, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  v74 = v142;
  if ((*(v58 + 48))(v59, 1, v142) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    v75 = v143;
  }

  else
  {
    v76 = v132;
    (*(v58 + 32))(v132, v59, v74);
    type metadata accessor for PaperDocumentPage(0);
    v77 = v133;
    CRRegister.projectedValue.getter();
    v78 = v74;
    v79 = CRRegister.canMerge(delta:)();
    v80 = *(v58 + 8);
    v80(v77, v78);
    v80(v76, v78);
    v75 = v143;
    if ((v79 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[8], v56, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  v81 = v139;
  if ((*(v75 + 48))(v56, 1, v139) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    v82 = v140;
  }

  else
  {
    v83 = v127;
    (*(v75 + 32))(v127, v56, v81);
    type metadata accessor for PaperDocumentPage(0);
    v84 = v128;
    CRRegister.projectedValue.getter();
    v85 = v81;
    v86 = CRRegister.canMerge(delta:)();
    v87 = *(v75 + 8);
    v87(v84, v85);
    v87(v83, v85);
    v82 = v140;
    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[9], v57, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  v88 = v134;
  if ((*(v82 + 48))(v57, 1, v134) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    v90 = v135;
    v89 = v136;
  }

  else
  {
    v91 = v122;
    (*(v82 + 32))(v122, v57, v88);
    type metadata accessor for PaperDocumentPage(0);
    v92 = v123;
    CRRegister.projectedValue.getter();
    v93 = CRRegister.canMerge(delta:)();
    v94 = *(v82 + 8);
    v94(v92, v88);
    v94(v91, v88);
    v90 = v135;
    v89 = v136;
    if ((v93 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[10], v90, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  v95 = v129;
  if ((*(v89 + 48))(v90, 1, v129) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    v96 = v131;
    v97 = v130;
  }

  else
  {
    v98 = v119;
    (*(v89 + 32))(v119, v90, v95);
    type metadata accessor for PaperDocumentPage(0);
    v99 = v120;
    CRRegister.projectedValue.getter();
    v100 = CRRegister.canMerge(delta:)();
    v101 = *(v89 + 8);
    v101(v99, v95);
    v101(v98, v95);
    v96 = v131;
    v97 = v130;
    if ((v100 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[11], v97, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v102 = v124;
  if ((*(v96 + 48))(v97, 1, v124) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    v103 = v126;
    v104 = v125;
  }

  else
  {
    v105 = v118;
    (*(v96 + 32))(v118, v97, v102);
    v106 = v102;
    type metadata accessor for PaperDocumentPage(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
    v107 = CROrderedSet.canMerge(delta:)();
    (*(v96 + 8))(v105, v106);
    v103 = v126;
    v104 = v125;
    if ((v107 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v73 + v152[12], v104, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  v108 = v121;
  if ((*(v103 + 48))(v104, 1, v121) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    return 1;
  }

  v109 = v116;
  (*(v103 + 32))(v116, v104, v108);
  type metadata accessor for PaperDocumentPage(0);
  v110 = v117;
  CRRegister.projectedValue.getter();
  v111 = v108;
  v112 = CRRegister.canMerge(delta:)();
  v113 = *(v103 + 8);
  v113(v110, v111);
  v113(v109, v111);
  return (v112 & 1) != 0;
}

BOOL PaperDocumentPage.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v159 = &v120[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v160 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v141 = &v120[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v120[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v120[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v157 = &v120[-v12];
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
  v162 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v138 = &v120[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v154 = &v120[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v155 = *(v16 - 8);
  v156 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v120[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v136 = &v120[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v120[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v151 = &v120[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v152 = *(v24 - 8);
  v153 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v120[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v120[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v132 = &v120[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v149 = &v120[-v31];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v161 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v131 = &v120[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v130 = &v120[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v129 = &v120[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v146 = &v120[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v147 = *(v39 - 8);
  v148 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v128 = &v120[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v127 = &v120[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v126 = &v120[-v44];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v142 = &v120[-v46];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v125 = &v120[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v124 = &v120[-v49];
  MEMORY[0x1EEE9AC00](v50);
  v143 = &v120[-v51];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = &v120[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v120[-v56];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v123 = &v120[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v120[-v62];
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v120[-v65];
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v120[-v68];
  v70 = PaperDocumentPage.canMerge(delta:)(a1);
  if (v70)
  {
    v121 = v70;
    v122 = v5;
    v164 = v1;
    v165 = a1;
    outlined init with copy of Date?(a1, v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v71 = *(v59 + 48);
    if (v71(v57, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v59 + 32))(v69, v57, v58);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v59 + 16))(v63, v66, v58);
      CRRegister.projectedValue.setter();
      v72 = *(v59 + 8);
      v72(v66, v58);
      v72(v69, v58);
    }

    v73 = type metadata accessor for PaperDocumentPage.Partial(0);
    outlined init with copy of Date?(v165 + v73[5], v54, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v71(v54, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v74 = v123;
      (*(v59 + 32))(v123, v54, v58);
      type metadata accessor for PaperDocumentPage(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v59 + 16))(v63, v66, v58);
      CRRegister.projectedValue.setter();
      v75 = *(v59 + 8);
      v75(v66, v58);
      v75(v74, v58);
    }

    v76 = v161;
    v78 = v147;
    v77 = v148;
    v79 = v144;
    v80 = v142;
    v81 = v165;
    outlined init with copy of Date?(v165 + v73[6], v142, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    v82 = v145;
    v83 = (*(v79 + 48))(v80, 1, v145);
    v163 = v73;
    if (v83 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
    }

    else
    {
      (*(v79 + 32))(v143, v80, v82);
      type metadata accessor for PaperDocumentPage(0);
      v84 = v124;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v79 + 16))(v125, v84, v82);
      v73 = v163;
      CRRegister.projectedValue.setter();
      v85 = *(v79 + 8);
      v86 = v84;
      v81 = v165;
      v85(v86, v82);
      v76 = v161;
      v85(v143, v82);
    }

    v87 = v146;
    outlined init with copy of Date?(v81 + v73[7], v146, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    if ((*(v78 + 48))(v87, 1, v77) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v88 = v126;
      (*(v78 + 32))(v126, v87, v77);
      type metadata accessor for PaperDocumentPage(0);
      v89 = v127;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v78 + 16))(v128, v89, v77);
      v73 = v163;
      CRRegister.projectedValue.setter();
      v90 = *(v78 + 8);
      v90(v89, v77);
      v90(v88, v77);
    }

    v91 = v149;
    v92 = v150;
    v93 = v152;
    outlined init with copy of Date?(v81 + v73[8], v149, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    if ((*(v76 + 48))(v91, 1, v92) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGSgMR);
    }

    else
    {
      v94 = v129;
      (*(v76 + 32))(v129, v91, v92);
      type metadata accessor for PaperDocumentPage(0);
      v95 = v130;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v76 + 16))(v131, v95, v92);
      v81 = v165;
      CRRegister.projectedValue.setter();
      v96 = *(v76 + 8);
      v96(v95, v92);
      v96(v94, v92);
    }

    v97 = v151;
    v98 = v155;
    v99 = v153;
    outlined init with copy of Date?(v81 + v163[9], v151, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    if ((*(v93 + 48))(v97, 1, v99) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
    }

    else
    {
      v101 = v132;
      (*(v93 + 32))(v132, v97, v99);
      type metadata accessor for PaperDocumentPage(0);
      v102 = v133;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v93 + 16))(v134, v102, v99);
      CRRegister.projectedValue.setter();
      v103 = *(v93 + 8);
      v103(v102, v99);
      v103(v101, v99);
    }

    v100 = v154;
    v104 = v163;
    outlined init with copy of Date?(v81 + v163[10], v154, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    v105 = v156;
    if ((*(v98 + 48))(v100, 1, v156) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
    }

    else
    {
      v106 = v135;
      (*(v98 + 32))(v135, v100, v105);
      type metadata accessor for PaperDocumentPage(0);
      v107 = v136;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v98 + 16))(v137, v107, v105);
      v81 = v165;
      CRRegister.projectedValue.setter();
      v108 = *(v98 + 8);
      v108(v107, v105);
      v108(v106, v105);
    }

    v109 = v157;
    v110 = v158;
    v111 = v160;
    outlined init with copy of Date?(v81 + v104[11], v157, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    if ((*(v162 + 48))(v109, 1, v110) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
    }

    else
    {
      v112 = v162;
      v113 = v138;
      (*(v162 + 32))(v138, v109, v110);
      type metadata accessor for PaperDocumentPage(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
      CROrderedSet.merge(delta:)();
      (*(v112 + 8))(v113, v110);
    }

    v114 = v159;
    outlined init with copy of Date?(v81 + v104[12], v159, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    v115 = v122;
    if ((*(v111 + 48))(v114, 1, v122) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGSgMR);
    }

    else
    {
      v116 = v139;
      (*(v111 + 32))(v139, v114, v115);
      type metadata accessor for PaperDocumentPage(0);
      v117 = v140;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v111 + 16))(v141, v117, v115);
      CRRegister.projectedValue.setter();
      v118 = *(v111 + 8);
      v118(v117, v115);
      v118(v116, v115);
    }

    LOBYTE(v70) = v121;
  }

  return v70;
}

uint64_t protocol witness for CRDT.context.getter in conformance PaperDocumentPage(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage, &protocol conformance descriptor for PaperDocumentPage);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PaperDocumentPage(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PaperDocumentPage.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized PaperPage.axisAlignedRotationInDegrees.getter()
{
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  if ((v6 - 1) >= 8)
  {
    goto LABEL_11;
  }

  v0 = *&qword_1D4062198[v6 - 1] / 3.14159265 * 180.0 * 90.0;
  v1 = floor(v0);
  v2 = v0 - v1;
  v3 = ceil(v0);
  if (v2 < 0.49)
  {
    v3 = v1;
  }

  v4 = v3 / 90.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

{
  v0 = off_1F4F62A88[0];
  type metadata accessor for Paper(0);
  v1 = v0();
  if ((v1 - 1) >= 8)
  {
    goto LABEL_11;
  }

  v2 = *&qword_1D4062198[v1 - 1] / 3.14159265 * 180.0 * 90.0;
  v3 = floor(v2);
  v4 = v2 - v3;
  v5 = ceil(v2);
  if (v4 < 0.49)
  {
    v5 = v3;
  }

  v6 = v5 / 90.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      return v6;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

{
  v0 = off_1F4F5EF28[0];
  type metadata accessor for Image(0);
  v1 = v0();
  if ((v1 - 1) >= 8)
  {
    goto LABEL_11;
  }

  v2 = *&qword_1D4062198[v1 - 1] / 3.14159265 * 180.0 * 90.0;
  v3 = floor(v2);
  v4 = v2 - v3;
  v5 = ceil(v2);
  if (v4 < 0.49)
  {
    v5 = v3;
  }

  v6 = v5 / 90.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      return v6;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t outlined copy of WrappedObservableDifference<[CRValueObservableDifference?]>?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double outlined consume of WrappedObservableDifference<[CRValueObservableDifference?]>?(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t outlined init with copy of PaperDocumentPage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void outlined consume of PaperDocument.PDFDocumentUse(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t outlined destroy of PaperDocumentPage.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized static PaperDocumentPage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v78 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v82 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v81 = v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  v86 = *(v19 - 8);
  v87 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v85 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v89 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v88 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v68 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v68 - v33;
  v90 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v29 + 8);
  v35(v31, v28);
  v35(v34, v28);
  if ((a1 & 1) != 0
    && (v68[0] = v15, v36 = type metadata accessor for PaperDocumentPage(0), CRRegister.projectedValue.getter(), v68[1] = v36, CRRegister.projectedValue.getter(), v37 = dispatch thunk of static Equatable.== infix(_:_:)(), v35(v31, v28), v35(v34, v28), (v37 & 1) != 0)
    && (CRRegister.projectedValue.getter(), v38 = v88, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ContentsBounds?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR, MEMORY[0x1E6995090]), v39 = dispatch thunk of static Equatable.== infix(_:_:)(), v40 = *(v89 + 8), v40(v38, v23), v40(v27, v23), (v39 & 1) != 0)
    && (v41 = v84, v42 = v87, CRRegister.projectedValue.getter(), v43 = v85, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]), v44 = dispatch thunk of static Equatable.== infix(_:_:)(), v45 = *(v86 + 8), v45(v43, v42), v45(v41, v42), (v44 & 1) != 0)
    && (v46 = v81, v47 = v68[0], CRRegister.projectedValue.getter(), v48 = v82, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PDFPageID?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR, MEMORY[0x1E6995090]), v49 = dispatch thunk of static Equatable.== infix(_:_:)(), v50 = *(v83 + 8), v50(v48, v47), v50(v46, v47), (v49 & 1) != 0)
    && (v51 = v77, v52 = v80, CRRegister.projectedValue.getter(), v53 = v78, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR, MEMORY[0x1E6995090]), v54 = dispatch thunk of static Equatable.== infix(_:_:)(), v55 = *(v79 + 8), v55(v53, v52), v55(v51, v52), (v54 & 1) != 0)
    && (v56 = v73, v57 = v76, CRRegister.projectedValue.getter(), v58 = v74, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR, MEMORY[0x1E6995090]), v59 = dispatch thunk of static Equatable.== infix(_:_:)(), v60 = *(v75 + 8), v60(v58, v57), v60(v56, v57), (v59 & 1) != 0)
    && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR, MEMORY[0x1E6995148]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0)
    && (v61 = v69, v62 = v72, CRRegister.projectedValue.getter(), v63 = v70, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<[CRKeyPath]> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR, MEMORY[0x1E6995090]), v64 = dispatch thunk of static Equatable.== infix(_:_:)(), v65 = *(v71 + 8), v65(v63, v62), v65(v61, v62), (v64 & 1) != 0))
  {
    v66 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v66 = 0;
  }

  return v66 & 1;
}

uint64_t specialized PaperDocumentPage.finishDecode(from:pageID:assetManager:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = v25 - v9;
  [a1 boundsForBox_];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [a1 boundsForBox_];
  v27.origin.y = v19;
  v27.size.height = v20;
  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  PaperDocumentPage.setContentsBounds(_:fullBounds:)(v26, v27);
  LODWORD(v25[0]) = specialized CGImagePropertyOrientation.init(rotationAngle:)([a1 rotation] / 180.0 * 3.14159265);
  type metadata accessor for PaperDocumentPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  outlined init with copy of PaperDocumentPage(a2, v10, type metadata accessor for PDFPageID);
  v21 = type metadata accessor for PDFPageID(0);
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  outlined init with copy of Date?(v10, v6, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  type metadata accessor for CRKeyPath();
  v25[0] = CROrderedSet.map<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
  CRRegister.wrappedValue.setter();
  type metadata accessor for PaperKitPDFPage(0);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    CRRegister.wrappedValue.getter();
    if (*(v23 + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState))
    {
    }

    else
    {
      *(v23 + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState) = v25[0];
    }
  }

  return 1;
}

uint64_t outlined init with take of PDFPageID(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for PaperDocumentPage(uint64_t a1)
{
  type metadata accessor for CRRegister<CGRect>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRRegister<ContentsBounds?>(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR, lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CRRegister<CGImagePropertyOrientation>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CRRegister<ContentsBounds?>(319, &lazy cache variable for type metadata for CRRegister<PDFPageID?>, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR, lazy protocol witness table accessor for type PDFPageID? and conformance <A> A?);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CRRegister<ContentsBounds?>(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR, lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CRRegister<CanvasElementFlags>(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for CRRegister<ContentsBounds?>(319, &lazy cache variable for type metadata for CRRegister<[CRKeyPath]>, &_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR, lazy protocol witness table accessor for type [CRKeyPath] and conformance <A> [A]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for UnknownProperties();
                  if (v9 <= 0x3F)
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

void type metadata accessor for CRRegister<CanvasElementFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRRegister<CanvasElementFlags>)
  {
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRRegister<CanvasElementFlags>);
    }
  }
}

void type metadata accessor for CRRegister<ContentsBounds?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

void type metadata completion function for PaperDocumentPage.ObservableDifference(uint64_t a1)
{
  _s9Coherence27CRValueObservableDifferenceOSgMaTm_0(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
  if (v1 <= 0x3F)
  {
    _s9Coherence27CRValueObservableDifferenceOSgMaTm_0(319, &lazy cache variable for type metadata for ContentsBounds.ObservableDifference?, type metadata accessor for ContentsBounds.ObservableDifference);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for Ref<PKDrawingStruct>.ObservableDifference?, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.ObservableDifference?, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for WrappedObservableDifference<[CRValueObservableDifference?]>?, &_s9Coherence27WrappedObservableDifferenceOySayAA07CRValuecD0OSgGGMd, &_s9Coherence27WrappedObservableDifferenceOySayAA07CRValuecD0OSgGGMR);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void _s9Coherence27CRValueObservableDifferenceOSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata completion function for PaperDocumentPage.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGImagePropertyOrientation>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFPageID?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9PDFPageIDVSg_GMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CanvasElementFlags>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MutatingAction?, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<[CRKeyPath]>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySayAA9CRKeyPathVG_GMR);
                if (v8 <= 0x3F)
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

void type metadata completion function for PaperDocumentPage.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<ContentsBounds?>?, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGImagePropertyOrientation>?, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<PDFPageID?>?, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit9PDFPageIDVSgGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>?, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CanvasElementFlags>?, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MergeableDelta?, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<[CRKeyPath]>?, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
                if (v8 <= 0x3F)
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

void type metadata completion function for ValueTypes_BezierPath(uint64_t a1)
{
  type metadata accessor for [ValueTypes_BezierPath.ElementType](319, &lazy cache variable for type metadata for [ValueTypes_BezierPath.ElementType], &type metadata for ValueTypes_BezierPath.ElementType);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [ValueTypes_BezierPath.ElementType](319, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [ValueTypes_BezierPath.ElementType](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ValueTypes_BezierPath.ElementType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ValueTypes_BezierPath.ElementType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for ValueTypes_BezierPath.ElementType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ValueTypes_BezierPath.ElementType(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void protocol witness for Enum.init(rawValue:) in conformance ValueTypes_BezierPath.ElementType(uint64_t a1@<X8>)
{
  specialized ValueTypes_BezierPath.ElementType.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance ValueTypes_BezierPath.ElementType(uint64_t a2@<X8>)
{
  specialized ValueTypes_BezierPath.ElementType.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ValueTypes_BezierPath.ElementType(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ValueTypes_BezierPath.ElementType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ValueTypes_BezierPath.ElementType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType()
{
  result = lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType;
  if (!lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType;
  if (!lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType;
  if (!lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType;
  if (!lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ValueTypes_BezierPath.ElementType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ValueTypes_BezierPath.ElementType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ValueTypes_BezierPath.ElementType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8PaperKit21ValueTypes_BezierPathV11ElementTypeOGMd, &_sSay8PaperKit21ValueTypes_BezierPathV11ElementTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ValueTypes_BezierPath.ElementType] and conformance [A]);
  }

  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ValueTypes_BezierPath._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ValueTypes_BezierPath._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405C990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "elements";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "coordinates";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ValueTypes_BezierPath.ElementType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ValueTypes_BezierPath.ElementType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D40621E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "moveTo";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "lineTo";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "quadCurveTo";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "curveTo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "closeSubpath";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static ValueTypes_PencilKitTool._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ValueTypes_PencilKitTool._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405C110;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "color";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "azimuth";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ValueTypes_BezierPath.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType();
        dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ValueTypes_BezierPath.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (lazy protocol witness table accessor for type ValueTypes_BezierPath.ElementType and conformance ValueTypes_BezierPath.ElementType(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (result = dispatch thunk of Visitor.visitPackedDoubleField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for ValueTypes_BezierPath(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ValueTypes_BezierPath@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance ValueTypes_BezierPath@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance ValueTypes_BezierPath(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ValueTypes_BezierPath(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath, &protocol conformance descriptor for ValueTypes_BezierPath);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ValueTypes_BezierPath(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath, &protocol conformance descriptor for ValueTypes_BezierPath);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ValueTypes_BezierPath(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath, &protocol conformance descriptor for ValueTypes_BezierPath);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ValueTypes_BezierPath(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit21ValueTypes_BezierPathV11ElementTypeO_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t ValueTypes_PencilKitTool.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        type metadata accessor for ValueTypes_PencilKitTool(0);
LABEL_12:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }
}

uint64_t ValueTypes_PencilKitTool.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_14;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!v3[4] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + *(type metadata accessor for ValueTypes_PencilKitTool(0) + 32)))
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      if (!v4)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance ValueTypes_PencilKitTool@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_1D40621F0;
  *(a2 + 32) = 0;
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 32)) = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance ValueTypes_PencilKitTool@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance ValueTypes_PencilKitTool(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance ValueTypes_PencilKitTool(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool, type metadata accessor for ValueTypes_PencilKitTool, &protocol conformance descriptor for ValueTypes_PencilKitTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance ValueTypes_BezierPath@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ValueTypes_PencilKitTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool, type metadata accessor for ValueTypes_PencilKitTool, &protocol conformance descriptor for ValueTypes_PencilKitTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ValueTypes_BezierPath(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ValueTypes_PencilKitTool(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool, type metadata accessor for ValueTypes_PencilKitTool, &protocol conformance descriptor for ValueTypes_PencilKitTool);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ValueTypes_BezierPath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static ValueTypes_PencilKitTool.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!specialized static Data.== infix(_:_:)(*(a1 + 2), *(a1 + 3), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  if (a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v5 = type metadata accessor for ValueTypes_PencilKitTool(0);
  if (*(a1 + *(v5 + 32)) != *(a2 + *(v5 + 32)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for ValueTypes_PencilKitTool(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(void *a1, uint64_t a2, int a3, int a4, double a5, double a6, double a7)
{
  LODWORD(v90) = a4;
  v86 = a3;
  v85 = a2;
  v91 = a1;
  v11 = type metadata accessor for PKInkingTool.InkType();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PKInk();
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v84 - v18;
  v20 = type metadata accessor for PKDrawing();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  if (a5 == 0.0)
  {
    v27 = 0;
    if (a6 == 0.0)
    {
      return v27;
    }
  }

  outlined init with copy of Date?(v7 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v19, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
    v28 = *(v7 + OBJC_IVAR____TtC8PaperKit13SignatureItem_path);
    if (v28)
    {
      v29 = v28;
      BoundingBox = CGPathGetBoundingBox(v29);
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      v34 = a5 / CGRectGetWidth(BoundingBox);
      v99.origin.x = x;
      v99.origin.y = y;
      v99.size.width = width;
      v99.size.height = height;
      v35 = a6 / CGRectGetHeight(v99);
      if (v35 >= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      v37 = v91;
      if (v91)
      {
        v38 = v91;
      }

      else
      {
        v74 = [objc_opt_self() blackColor];
        v38 = 0;
        v37 = v74;
      }

      v75 = v38;
      v76 = static PKInkingTool.convertColor(_:from:to:)();

      v77 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
      v78 = swift_allocObject();
      *(v78 + 16) = v36;
      *(v78 + 24) = x;
      *(v78 + 32) = y;
      *(v78 + 40) = width;
      *(v78 + 48) = height;
      *(v78 + 56) = v76;
      *(v78 + 64) = v29;
      v79 = swift_allocObject();
      *(v79 + 16) = partial apply for closure #3 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:);
      *(v79 + 24) = v78;
      v96 = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
      v97 = v79;
      aBlock = MEMORY[0x1E69E9820];
      v93 = 1107296256;
      v94 = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v95 = &block_descriptor_22;
      v80 = _Block_copy(&aBlock);
      v81 = v29;
      v82 = v76;

      v27 = [v77 imageWithActions_];

      _Block_release(v80);
      LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();

      if ((v81 & 1) == 0)
      {
        return v27;
      }

      __break(1u);
    }

    else if (one-time initialization token for SignatureLogger == -1)
    {
LABEL_17:
      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, SignatureLogger);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1D38C4000, v48, v49, "signature image but no path or drawing", v50, 2u);
        MEMORY[0x1DA6D0660](v50, -1, -1);
      }

      return 0;
    }

    swift_once();
    goto LABEL_17;
  }

  (*(v21 + 32))(v26, v19, v20);
  if (a7 <= 1.0)
  {
    a7 = 1.0;
  }

  v39 = [objc_allocWithZone(MEMORY[0x1E6978450]) initSyncWithSize:a5 scale:{a6, a7}];
  v40 = v90 & 1;
  v90 = v39;
  [v39 setInvertColors_];
  PKDrawing.bounds.getter();
  v42 = v85;
  if (v85 <= 1)
  {
    v42 = 1;
  }

  v43 = v42;
  v44 = a5 / v41;
  v45 = v91;
  if (v91)
  {
    v46 = v91;
  }

  else
  {
    if (one-time initialization token for defaultColor != -1)
    {
      swift_once();
    }

    v46 = static SignatureItem.defaultColor;
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E6978328], v11);
  v51 = v45;
  v91 = v46;
  v52 = v87;
  PKInk.init(_:color:)();
  v53 = 2.0;
  if ((v86 & 1) == 0)
  {
    v53 = v43;
  }

  v54 = v53 / sqrt(v44) / 10.0 + 2.1;
  v55 = PKDrawing.strokes.getter();
  MEMORY[0x1EEE9AC00](v55);
  *(&v84 - 2) = v54;
  *(&v84 - 1) = v52;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9PencilKit8PKStrokeVG_AHs5NeverOTg5(partial apply for closure #1 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:), (&v84 - 4), v55);
  v57 = v56;

  aBlock = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit8PKStrokeVGMd, &_sSay9PencilKit8PKStrokeVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKStroke] and conformance [A], &_sSay9PencilKit8PKStrokeVGMd, &_sSay9PencilKit8PKStrokeVGMR, MEMORY[0x1E69E6328]);
  PKDrawing.init<A>(strokes:)();
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  PKDrawing._bridgeToObjectiveC()(v59);
  v61 = v60;
  PKDrawing.bounds.getter();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v96 = partial apply for closure #2 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:);
  v97 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v93 = 1107296256;
  v94 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UIImage?) -> ();
  v95 = &block_descriptor_9;
  v70 = _Block_copy(&aBlock);

  v71 = v90;
  [v90 renderDrawing:v61 clippedToStrokeSpaceRect:v70 scale:v63 completion:{v65, v67, v69, v44}];
  _Block_release(v70);

  v72 = *(v21 + 8);
  v72(v23, v20);
  v72(v26, v20);
  swift_beginAccess();
  v27 = *(v58 + 16);
  v73 = v27;

  (*(v88 + 8))(v52, v89);
  return v27;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12CoreGraphics7CGFloatVG_AHs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v7 = v14;
    for (i = (a3 + 32); ; ++i)
    {
      v12 = *i;
      a1(&v13, &v12);
      if (v3)
      {
        break;
      }

      v9 = v13;
      v14 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v9;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9PencilKit8PKStrokeVG_AHs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = type metadata accessor for PKStroke();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v21;
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = a3 + v17;
    v16 = (v6 + 32);
    v12 = *(v6 + 72);
    while (1)
    {
      v19(v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*v16)(v10 + v17 + v14 * v12, v8, v18);
      v11 += v12;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v9 = *i;
    if (*i > 2)
    {
      switch(v9)
      {
        case 3uLL:
          if (a2 == 3)
          {
            v12 = *(i - 1);
            v13 = 3;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 3;
          goto LABEL_24;
        case 4uLL:
          if (a2 == 4)
          {
            v12 = *(i - 1);
            v13 = 4;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 4;
          goto LABEL_24;
        case 5uLL:
          if (a2 == 5)
          {
            v12 = *(i - 1);
            v13 = 5;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 5;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v9)
      {
        case 0uLL:
          if (!a2)
          {
            v12 = *(i - 1);
            v13 = 0;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 0;
          goto LABEL_24;
        case 1uLL:
          if (a2 == 1)
          {
            v12 = *(i - 1);
            v13 = 1;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 1;
          goto LABEL_24;
        case 2uLL:
          if (a2 == 2)
          {
            v12 = *(i - 1);
            v13 = 2;
            goto LABEL_39;
          }

          outlined copy of SignatureDescription(a1, a2);
          v10 = 2;
          goto LABEL_24;
      }
    }

    if (a2 < 6)
    {
      outlined copy of SignatureDescription(a1, a2);
      outlined copy of SignatureDescription(v8, v9);
      v10 = v9;
LABEL_24:
      outlined consume of SignatureDescription(v8, v10);
      outlined consume of SignatureDescription(a1, a2);
      goto LABEL_25;
    }

    if (v8 == a1 && v9 == a2)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of SignatureDescription(a1, a2);
    outlined copy of SignatureDescription(v8, v9);
    outlined consume of SignatureDescription(v8, v9);
    outlined consume of SignatureDescription(a1, a2);
    if (v11)
    {
      return v6;
    }

LABEL_25:
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  outlined copy of SignatureDescription(a1, a2);
  outlined copy of SignatureDescription(a1, a2);
  v12 = a1;
  v13 = a2;
LABEL_39:
  outlined consume of SignatureDescription(v12, v13);
  outlined consume of SignatureDescription(a1, a2);
  return v6;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for PDFPageID(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = (&v29 - v8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSg_ADtMd, &_s8PaperKit9PDFPageIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v29 - v9;
  v30 = type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  v12 = MEMORY[0x1EEE9AC00](v30);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 16);
  if (v34)
  {
    v29 = v6;
    v15 = 0;
    v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v33 = *(v11 + 72);
    v17 = (v4 + 48);
    v18 = &_s8PaperKit9PDFPageIDVSgMd;
    v31 = v17;
    do
    {
      outlined init with copy of PaperDocument.PDFPageAndPaperPage(v16, v14, v12);
      v19 = *(v35 + 48);
      outlined init with copy of Date?(v14, v10, v18, &_s8PaperKit9PDFPageIDVSgMR);
      outlined init with copy of Date?(v36, &v10[v19], v18, &_s8PaperKit9PDFPageIDVSgMR);
      v20 = *v17;
      if ((*v17)(v10, 1, v3) == 1)
      {
        if (v20(&v10[v19], 1, v3) != 1)
        {
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v14, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
          goto LABEL_4;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v10, v18, &_s8PaperKit9PDFPageIDVSgMR);
      }

      else
      {
        v22 = v18;
        v23 = v32;
        v24 = v22;
        outlined init with copy of Date?(v10, v32, v22, &_s8PaperKit9PDFPageIDVSgMR);
        if (v20(&v10[v19], 1, v3) == 1)
        {
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v14, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v23, type metadata accessor for PDFPageID);
          v18 = v24;
          v17 = v31;
LABEL_4:
          outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit9PDFPageIDVSg_ADtMd, &_s8PaperKit9PDFPageIDVSg_ADtMR);
          goto LABEL_5;
        }

        v25 = &v10[v19];
        v26 = v29;
        outlined init with take of PDFPageID(v25, v29);
        if (*v23 != *v26)
        {
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v26, type metadata accessor for PDFPageID);
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v23, type metadata accessor for PDFPageID);
          v18 = v24;
          outlined destroy of StocksKitCurrencyCache.Provider?(v10, v24, &_s8PaperKit9PDFPageIDVSgMR);
          v17 = v31;
LABEL_17:
          outlined destroy of PaperDocument.PDFPageAndPaperPage(v14, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
          goto LABEL_5;
        }

        v27 = static CRAsset.== infix(_:_:)();
        outlined destroy of PaperDocument.PDFPageAndPaperPage(v26, type metadata accessor for PDFPageID);
        outlined destroy of PaperDocument.PDFPageAndPaperPage(v23, type metadata accessor for PDFPageID);
        v18 = v24;
        outlined destroy of StocksKitCurrencyCache.Provider?(v10, v24, &_s8PaperKit9PDFPageIDVSgMR);
        v17 = v31;
        if ((v27 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
      v21 = static WeakTagged_3.== infix(_:_:)();
      outlined destroy of PaperDocument.PDFPageAndPaperPage(v14, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
      if (v21)
      {
        return v15;
      }

LABEL_5:
      ++v15;
      v16 += v33;
    }

    while (v34 != v15);
  }

  return 0;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA6CE0C0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  v2 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = __CocoaSet.count.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a2 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1DA6CE0C0](v4);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v7)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a2 + 8 * v4 + 32) == a1)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995158]);
  dispatch thunk of Collection._customIndexOfEquatableElement(_:)();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = dispatch thunk of Collection.subscript.read();
    (*v6)(v4);
    (v8)(&v11, 0);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995230]);
    LOBYTE(v8) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

double SignatureItem.size.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for PKDrawing();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v0 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v3, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
    v8 = *(v0 + OBJC_IVAR____TtC8PaperKit13SignatureItem_path);
    if (v8)
    {
      BoundingBox = CGPathGetBoundingBox(v8);
      return BoundingBox.size.width;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    PKDrawing.bounds.getter();
    v9 = v10;
    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

uint64_t SignatureItem.dataForKeychain()()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v2 = MEMORY[0x1DA6CCED0](0x74616E6769534B41, 0xEB00000000657275);
  [v1 setClassName:v2 forClass:swift_getObjCClassFromMetadata()];

  [v1 encodeObject:v0 forKey:*MEMORY[0x1E696A508]];
  v3 = [v1 encodedData];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  [v1 finishEncoding];
  return v4;
}

UIImage_optional __swiftcall SignatureItem.image(withMaximumSize:color:lineWidth:traitCollection:)(CGSize withMaximumSize, UIColor_optional color, Swift::Int_optional lineWidth, UITraitCollection traitCollection)
{
  value = lineWidth.value;
  v5 = *&color.is_nil;
  isa = color.value.super.isa;
  height = withMaximumSize.height;
  width = withMaximumSize.width;
  v9 = objc_opt_self();
  v10 = [v9 currentTraitCollection];
  v11 = [v10 userInterfaceStyle];

  v12 = [v9 currentTraitCollection];
  [v12 displayScale];
  v14 = v13;

  v15 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(isa, v5, value & 1, v11 == 2, width, height, v14);
  result.value.super.isa = v15;
  result.is_nil = v16;
  return result;
}

id SignatureItem.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v90 - v13;
  v15 = type metadata accessor for UUID();
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  v23 = v18 && (v19 = v18, v20 = a1, v21 = MEMORY[0x1DA6CCED0](0x74616E6769534B41, 0xEB00000000657275), v22 = [v19 classForClassName_], v20, v21, v22) && swift_getObjCClassMetadata() == ObjectType;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v24 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v24)
  {
    if (one-time initialization token for SignatureLogger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, SignatureLogger);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D38C4000, v30, v31, "decode did not find UUID", v32, 2u);
      MEMORY[0x1DA6D0660](v32, -1, -1);
    }

    goto LABEL_39;
  }

  v25 = v24;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = OBJC_IVAR____TtC8PaperKit13SignatureItem_uniqueID;
  (*(v96 + 32))(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_uniqueID, v17, v15);
  v27 = v2;
  v28 = v23 || specialized static SignatureManager.ownsSignature(_:)();
  v94 = v2;
  v91 = v26;
  v92 = v15;
  v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_isOwned] = v28;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSDate, 0x1E695DF00);
  v33 = NSCoder.decodeObject<A>(of:forKey:)();
  v34 = ObjectType;
  if (v33)
  {
    v35 = v33;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  (*(v38 + 56))(v14, v36, 1, v37);
  v39 = OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
  outlined init with take of Range<AttributedString.Index>(v14, &v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v23)
  {
    outlined init with copy of Date?(&v27[v39], v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

    v40 = (*(v38 + 48))(v11, 1, v37);
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v41 = v34;
    if (v40 == 1)
    {
      v42 = v92;
      v43 = v94;
      if (one-time initialization token for SignatureLogger != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, SignatureLogger);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1D38C4000, v45, v46, "decode did not find creationDate", v47, 2u);
        MEMORY[0x1DA6D0660](v47, -1, -1);
      }

      (*(v96 + 8))(v43 + v91, v42);
      v48 = &_s10Foundation4DateVSgMd;
      v49 = &_s10Foundation4DateVSgMR;
      v50 = &v27[v39];
LABEL_38:
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, v48, v49);
LABEL_39:
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  else
  {

    v41 = v34;
  }

  v51 = MEMORY[0x1DA6CCED0](0x656E696C65736162, 0xEE0074657366664FLL);
  [a1 decodeFloatForKey_];
  v53 = v52;

  *&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_baselineOffset] = v53;
  v54 = MEMORY[0x1DA6CCED0](0x6550646C756F6873, 0xED00007473697372);
  v55 = [a1 decodeBoolForKey_];

  v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_shouldPersist] = v55;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v56 = NSCoder.decodeObject<A>(of:forKey:)();
  v57 = v94;
  v90 = v39;
  if (v56)
  {
    v58 = v56;
    v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62 = specialized static SignatureItem.signaturePath(from:)(v59, v61);
    outlined consume of Data._Representation(v59, v61);
  }

  else
  {
    v62 = 0;
  }

  *&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_path] = v62;
  v63 = NSCoder.decodeObject<A>(of:forKey:)();
  v64 = v95;
  if (v63)
  {
    v65 = v63;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    PKDrawing.init(data:)();
    v68 = type metadata accessor for PKDrawing();
    (*(*(v68 - 8) + 56))(v64, 0, 1, v68);
    outlined init with take of Range<AttributedString.Index>(v64, &v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing], &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  }

  else
  {
    v66 = OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing;
    v67 = type metadata accessor for PKDrawing();
    (*(*(v67 - 8) + 56))(&v27[v66], 1, 1, v67);
  }

  if (!*&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_path])
  {
    v69 = v93;
    outlined init with copy of Date?(&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing], v93, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
    v70 = type metadata accessor for PKDrawing();
    v71 = (*(*(v70 - 8) + 48))(v69, 1, v70);
    outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
    if (v71 == 1)
    {
      if (one-time initialization token for SignatureLogger != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, SignatureLogger);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1D38C4000, v73, v74, "decode did not find at least one of CGPath or PKDrawing", v75, 2u);
        MEMORY[0x1DA6D0660](v75, -1, -1);
      }

      (*(v96 + 8))(v57 + v91, v92);
      outlined destroy of StocksKitCurrencyCache.Provider?(&v27[v90], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

      v48 = &_s9PencilKit9PKDrawingVSgMd;
      v49 = &_s9PencilKit9PKDrawingVSgMR;
      v50 = &v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing];
      goto LABEL_38;
    }
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v77 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    SignatureDescription.init(caption:)(v79, v81, &v98);
  }

  else
  {
    v82 = MEMORY[0x1DA6CCED0](0x7470697263736564, 0xEE006761546E6F69);
    v83 = [a1 decodeIntegerForKey_];

    v84 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v84)
    {
      v85 = v84;
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;
    }

    else
    {
      v86 = 0;
      v88 = 0;
    }

    SignatureDescription.init(tag:customDescription:)(v83, v86, v88, &v98);
  }

  *&v27[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription] = v98;
  v97.receiver = v27;
  v97.super_class = v41;
  v89 = objc_msgSendSuper2(&v97, sel_init, v90);

  return v89;
}

Swift::Void __swiftcall SignatureItem.encode(with:)(NSCoder with)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v59 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 classNameForClass_];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v16 == 0x74616E6769534B41 && v18 == 0xEB00000000657275)
      {

        LOBYTE(v13) = 1;
      }

      else
      {
        LOBYTE(v13) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v21 = MEMORY[0x1DA6CCED0](0x4449657571696E75, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v21];

  v22 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_baselineOffset);
  v23 = MEMORY[0x1DA6CCED0](0x656E696C65736162, 0xEE0074657366664FLL);
  [(objc_class *)with.super.isa encodeDouble:v23 forKey:v22];

  if ((v13 & 1) == 0)
  {
    v30 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_path);
    if (!v30)
    {
      goto LABEL_19;
    }

    outlined init with copy of Date?(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v9, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
    v31 = type metadata accessor for PKDrawing();
    v32 = (*(*(v31 - 8) + 48))(v9, 1, v31);
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
    if (v32 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  outlined init with copy of Date?(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v26 = Date._bridgeToObjectiveC()().super.isa;
  (*(v25 + 8))(v12, v24);
  v27 = MEMORY[0x1DA6CCED0](0x6E6F697461657263, 0xEC00000065746144);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];

  v28 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_shouldPersist);
  if (v28 == 2)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v29 = MEMORY[0x1DA6CCED0](0x6550646C756F6873, 0xED00007473697372);
  [(objc_class *)with.super.isa encodeBool:v28 & 1 forKey:v29];

  v30 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_path);
  if (v30)
  {
LABEL_17:
    specialized static SignatureItem.signaturePathDataRepresentation(from:toKeyChain:)(v30, v13 & 1);
    if (v34 >> 60 != 15)
    {
      v35 = v33;
      v36 = v34;
      v37 = Data._bridgeToObjectiveC()().super.isa;
      v38 = MEMORY[0x1DA6CCED0](1752457584, 0xE400000000000000);
      [(objc_class *)with.super.isa encodeObject:v37 forKey:v38];

      outlined consume of Data?(v35, v36);
    }
  }

LABEL_19:
  outlined init with copy of Date?(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v6, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  v39 = type metadata accessor for PKDrawing();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v6, 1, v39) != 1)
  {
    PKDrawing._bridgeToObjectiveC()(v41);
    v43 = v42;
    (*(v40 + 8))(v6, v39);
    v44 = [v43 serialize];

    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = Data._bridgeToObjectiveC()().super.isa;
    v49 = MEMORY[0x1DA6CCED0](0x676E6977617264, 0xE700000000000000);
    [(objc_class *)with.super.isa encodeObject:v48 forKey:v49];

    outlined consume of Data._Representation(v45, v47);
  }

  v50 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8);
  if (v50 - 1 < 5)
  {
    v51 = specialized Collection<>.firstIndex(of:)(*(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription), v50, &outlined read-only object #0 of static SignatureDescription.allCases.getter);
    if ((v52 & 1) == 0)
    {
      v53 = v51;
      v54 = MEMORY[0x1DA6CCED0](0x7470697263736564, 0xEE006761546E6F69);
      [(objc_class *)with.super.isa encodeInteger:v53 forKey:v54];
LABEL_24:

      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v50)
  {
    v55 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription);
    v56 = *(v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8);
    v57 = MEMORY[0x1DA6CCED0](0x7470697263736564, 0xEE006761546E6F69);
    [(objc_class *)with.super.isa encodeInteger:-1 forKey:v57];

    v58 = MEMORY[0x1DA6CCED0](v55, v56);
    v54 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D40874A0);
    [(objc_class *)with.super.isa encodeObject:v58 forKey:v54];

    goto LABEL_24;
  }
}

uint64_t SignatureItem.rawValue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  SignatureItem.encode(with:)(v0);
  v1 = [v0 encodedData];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  [v0 finishEncoding];
  return v2;
}

id one-time initialization function for defaultColor()
{
  result = [objc_opt_self() blackColor];
  static SignatureItem.defaultColor = result;
  return result;
}

UIImage_optional __swiftcall SignatureItem.image(withMaximumSize:withColor:width:forPrinting:)(CGSize withMaximumSize, UIColor_optional withColor, Swift::Int_optional width, Swift::Bool forPrinting)
{
  v4 = *&width.is_nil;
  value = width.value;
  v6 = *&withColor.is_nil;
  isa = withColor.value.super.isa;
  height = withMaximumSize.height;
  v9 = withMaximumSize.width;
  v10 = objc_opt_self();
  v11 = [v10 currentTraitCollection];
  v12 = [v11 userInterfaceStyle];

  v13 = v12 == 2;
  v14 = v4 ^ 1;
  v15 = [v10 currentTraitCollection];
  [v15 displayScale];
  v17 = v16;

  v18 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(isa, v6, value & 1, v13 & v14, v9, height, v17);
  result.value.super.isa = v18;
  result.is_nil = v19;
  return result;
}

void *closure #1 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for PKStrokePoint();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v35 - v7;
  v43 = type metadata accessor for PKInk();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PKStrokePath();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v35 - v19;
  PKStroke.path.getter();
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath, MEMORY[0x1E6978380], MEMORY[0x1E6978388]);
  v20 = dispatch thunk of Collection.count.getter();
  v45 = a1;
  v44 = v9;
  if (!v20)
  {
    v52 = *(v13 + 8);
    (v52)(v17, v12);
    v27 = MEMORY[0x1E69E7CC0];
    v33 = v13;
LABEL_9:
    v54[0] = v27;
    static Date.now.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit13PKStrokePointVGMd, &_sSay9PencilKit13PKStrokePointVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKStrokePoint] and conformance [A], &_sSay9PencilKit13PKStrokePointVGMd, &_sSay9PencilKit13PKStrokePointVGMR, MEMORY[0x1E69E6328]);
    v34 = v40;
    PKStrokePath.init<A>(controlPoints:creationDate:)();
    (*(v42 + 16))(v44, v45, v43);
    (*(v33 + 16))(v41, v34, v12);
    v54[0] = 0x3FF0000000000000;
    v54[1] = 0;
    v54[2] = 0;
    v54[3] = 0x3FF0000000000000;
    v54[4] = 0;
    v54[5] = 0;
    PKStroke.init(ink:path:transform:mask:)();
    return (v52)(v34, v12);
  }

  v37 = v13;
  v53 = MEMORY[0x1E69E7CC0];
  v21 = v20;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  v36 = v53;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = v21;
    v48 = (v51 + 8);
    v49 = (v51 + 16);
    v47 = v51 + 32;
    v24 = v52;
    v25 = v38;
    v26 = v17;
    v27 = v36;
    do
    {
      v52 = v23;
      v28 = dispatch thunk of Collection.subscript.read();
      v29 = v50;
      (*v49)(v50);
      v28(v54, 0);
      PKStrokePoint.location.getter();
      PKStrokePoint.timeOffset.getter();
      PKStrokePoint.opacity.getter();
      PKStrokePoint.force.getter();
      PKStrokePoint.azimuth.getter();
      PKStrokePoint.altitude.getter();
      PKStrokePoint.init(location:timeOffset:size:opacity:force:azimuth:altitude:)();
      (*v48)(v29, v24);
      v53 = v27;
      v30 = v26;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v25 = v38;
        v27 = v53;
      }

      *(v27 + 16) = v32 + 1;
      (*(v51 + 32))(v27 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v32, v25, v24);
      dispatch thunk of Collection.formIndex(after:)();
      v23 = v52 - 1;
      v26 = v30;
    }

    while (v52 != 1);
    v33 = v37;
    v52 = *(v37 + 8);
    (v52)(v30, v12);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void closure #2 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UIImage?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t closure #3 in SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(void *a1, void *a2, const CGPath *a3, __n128 a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = a4.n128_f64[0];
  v16 = type metadata accessor for CGPathFillRule();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 CGContext];
  CGContextScaleCTM(v21, v14, -v14);

  v22 = [a1 CGContext];
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  v23 = -CGRectGetMinX(v29);
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  MaxY = CGRectGetMaxY(v30);
  CGContextTranslateCTM(v22, v23, -MaxY);

  [a2 set];
  v25 = [a1 CGContext];
  CGContextAddPath(v25, a3);

  v26 = [a1 CGContext];
  (*(v17 + 104))(v20, *MEMORY[0x1E695EEB8], v16);
  CGContextRef.fillPath(using:)();

  return (*(v17 + 8))(v20, v16);
}

id SignatureItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignatureItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id protocol witness for RawRepresentable.init(rawValue:) in conformance SignatureItem@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized SignatureItem.__allocating_init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SignatureItem(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  SignatureItem.encode(with:)(v2);
  v3 = [v2 encodedData];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  [v2 finishEncoding];
  *a1 = v4;
  a1[1] = v6;
}

id protocol witness for CRType.copy(renamingReferences:) in conformance SignatureItem@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance SignatureItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance NSObject, type metadata accessor for SignatureItem, MEMORY[0x1E69E81C0]);

  return CRValue<>.observableDifference(from:with:)();
}

void *protocol witness for CRCodable.init(from:) in conformance SignatureItem()
{
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance SignatureItem(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance SignatureItem(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  v3 = lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance SignatureItem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem, &protocol conformance descriptor for SignatureItem);
  v5 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return result;
    }

    v8 = result;
    if (result <= result >> 32)
    {
      v9 = __DataStorage._bytes.getter();
      if (v9)
      {
        v10 = v9;
        v11 = __DataStorage._offset.getter();
        if (!__OFSUB__(v8, v11))
        {
          v12 = v8 - v11 + v10;
          result = MEMORY[0x1DA6C8120]();
          if (v12)
          {
            return result;
          }

LABEL_21:
          __break(1u);
          return result;
        }

LABEL_17:
        __break(1u);
      }

LABEL_20:
      result = MEMORY[0x1DA6C8120]();
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 == 2)
  {
    v3 = *(result + 16);
    v4 = __DataStorage._bytes.getter();
    if (v4)
    {
      v5 = v4;
      v6 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, v6))
      {
        goto LABEL_16;
      }

      v7 = v3 - v6 + v5;
      result = MEMORY[0x1DA6C8120]();
      if (v7)
      {
        return result;
      }
    }

    else
    {
      MEMORY[0x1DA6C8120]();
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in static SignatureItem.signaturePathDataRepresentation(from:toKeyChain:)(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v20 = MEMORY[0x1E69E6290];
  v21 = MEMORY[0x1E6969DF8];
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v4 = *a1;
  if (*a1 > 2)
  {
    if (v4 == 3)
    {
      LODWORD(v17) = 3;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v7 = **(a1 + 8);
      v17 = v7;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v8 = *(*(a1 + 8) + 8);
      v17 = v8;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v9 = *(*(a1 + 8) + 16);
      v17 = v9;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v10 = *(*(a1 + 8) + 24);
      v17 = v10;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v11 = *(*(a1 + 8) + 32);
      v17 = v11;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v6 = *(*(a1 + 8) + 40);
      goto LABEL_8;
    }

    if (v4 == 4)
    {
      v17 = 0.0;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 < 2)
    {
      LODWORD(v17) = 1;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v5 = **(a1 + 8);
      v17 = v5;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v6 = *(*(a1 + 8) + 8);
LABEL_8:
      v15 = v6;
      v17 = v15;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
LABEL_9:
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      return __swift_destroy_boxed_opaque_existential_0(&v18);
    }

    if (v4 == 2)
    {
      LODWORD(v17) = 2;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v12 = **(a1 + 8);
      v17 = v12;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v13 = *(*(a1 + 8) + 8);
      v17 = v13;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v14 = *(*(a1 + 8) + 16);
      v17 = v14;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v6 = *(*(a1 + 8) + 24);
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void specialized static SignatureItem.signaturePathDataRepresentation(from:toKeyChain:)(void *a1, char a2)
{
  if (a1)
  {
    v3 = a1;
    BoundingBox = CGPathGetBoundingBox(v3);
    if (CGRectIsNull(BoundingBox))
    {
    }

    else
    {
      v13 = xmmword_1D40621F0;
      v20 = CGPathGetBoundingBox(v3);
      MinY = CGRectGetMinY(v20);
      v21 = CGPathGetBoundingBox(v3);
      v15 = 0;
      v16 = 0;
      v14 = 0x3FF0000000000000;
      v17 = xmmword_1D405A660;
      v18 = MinY + CGRectGetMaxY(v21);
      if (a2)
      {
        v5 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
      }

      else
      {
        v5 = v3;
      }

      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = &v13;
      v8 = swift_allocObject();
      *(v8 + 16) = partial apply for closure #1 in static SignatureItem.signaturePathDataRepresentation(from:toKeyChain:);
      *(v8 + 24) = v7;
      v12[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
      v12[5] = v8;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
      v12[3] = &block_descriptor_21_1;
      v9 = _Block_copy(v12);

      CGPathApplyWithBlock(v6, v9);

      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v11 = v13;
        outlined copy of Data._Representation(v13, *(&v13 + 1));
        outlined consume of Data._Representation(v11, *(&v11 + 1));
      }
    }
  }
}

CGPath *specialized static SignatureItem.signaturePath(from:)(uint64_t a1, unint64_t a2)
{
  v180 = *MEMORY[0x1E69E9840];
  path = CGPathCreateMutable();
  v177 = a1;
  v178 = a2;
  v179 = 0;
  outlined copy of Data._Representation(a1, a2);
  v4 = 0;
  v5 = 4;
  while (1)
  {
    v10 = v177;
    v9 = v178;
    v11 = v178 >> 62;
    if ((v178 >> 62) > 1)
    {
      if (v11 != 2)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_347;
        }

        memset(v172, 0, 14);
        goto LABEL_31;
      }

      v13 = *(v177 + 16);
      v12 = *(v177 + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        goto LABEL_351;
      }

      if (v5 >= v15)
      {
        goto LABEL_347;
      }
    }

    else if (v11)
    {
      if (__OFSUB__(HIDWORD(v177), v177))
      {
        goto LABEL_350;
      }

      if (v5 >= HIDWORD(v177) - v177)
      {
        goto LABEL_347;
      }
    }

    else if (v5 >= BYTE6(v178))
    {
      goto LABEL_347;
    }

    if (v11 == 2)
    {
      v20 = *(v177 + 16);

      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        MEMORY[0x1DA6C8120]();
LABEL_425:
        __break(1u);
LABEL_426:
        MEMORY[0x1DA6C8120]();
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        MEMORY[0x1DA6C8120]();
LABEL_429:
        __break(1u);
LABEL_430:
        MEMORY[0x1DA6C8120]();
        __break(1u);
LABEL_431:
        __break(1u);
      }

      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_353;
      }

      v19 = v20 - v23 + v22;
      MEMORY[0x1DA6C8120]();
      if (!v19)
      {
        goto LABEL_425;
      }

      goto LABEL_28;
    }

    if (v11 == 1)
    {
      if (v177 > v177 >> 32)
      {
        goto LABEL_352;
      }

      v16 = __DataStorage._bytes.getter();
      if (!v16)
      {
        goto LABEL_426;
      }

      v17 = v16;
      v18 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v18))
      {
        goto LABEL_354;
      }

      v19 = v10 - v18 + v17;
      MEMORY[0x1DA6C8120]();
      if (!v19)
      {
        goto LABEL_427;
      }

LABEL_28:
      v24 = *(v19 + v4);
      outlined consume of Data._Representation(v10, v9);
      if (v24 > 4)
      {
        goto LABEL_347;
      }

      goto LABEL_32;
    }

    v172[0] = v177;
    LODWORD(v172[1]) = v178;
    WORD2(v172[1]) = WORD2(v178);
LABEL_31:
    v24 = *(v172 + v4);
    if (v24 > 4)
    {
      goto LABEL_347;
    }

LABEL_32:
    v4 = v5 + 4;
    if (__OFADD__(v5, 4))
    {
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
LABEL_365:
      __break(1u);
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
LABEL_406:
      __break(1u);
LABEL_407:
      __break(1u);
LABEL_408:
      __break(1u);
LABEL_409:
      __break(1u);
LABEL_410:
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      swift_once();
LABEL_344:
      v167 = type metadata accessor for Logger();
      __swift_project_value_buffer(v167, SignatureLogger);
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&dword_1D38C4000, v168, v169, "read element type decoding path", v170, 2u);
        MEMORY[0x1DA6D0660](v170, -1, -1);
      }

LABEL_347:
      outlined consume of Data._Representation(v10, v9);
      return path;
    }

    if (v11 > 1)
    {
      if (v11 != 2)
      {
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_347;
        }

        memset(v172, 0, 14);
        goto LABEL_57;
      }

      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      v14 = __OFSUB__(v25, v26);
      v27 = v25 - v26;
      if (v14)
      {
        goto LABEL_356;
      }

      if (v4 >= v27)
      {
        goto LABEL_347;
      }
    }

    else if (v11)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_355;
      }

      if (v4 >= HIDWORD(v10) - v10)
      {
        goto LABEL_347;
      }
    }

    else if (v4 >= BYTE6(v9))
    {
      goto LABEL_347;
    }

    if (v11 == 2)
    {
      v32 = *(v10 + 16);

      v33 = __DataStorage._bytes.getter();
      if (!v33)
      {
        goto LABEL_428;
      }

      v34 = v33;
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v35))
      {
        goto LABEL_358;
      }

      v31 = v32 - v35 + v34;
      MEMORY[0x1DA6C8120]();
      if (!v31)
      {
        goto LABEL_429;
      }

LABEL_55:
      v36 = *(v31 + v5);
      outlined consume of Data._Representation(v10, v9);
      goto LABEL_58;
    }

    if (v11 == 1)
    {
      if (v10 > v10 >> 32)
      {
        goto LABEL_357;
      }

      v28 = __DataStorage._bytes.getter();
      if (!v28)
      {
        goto LABEL_430;
      }

      v29 = v28;
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v30))
      {
        goto LABEL_359;
      }

      v31 = v10 - v30 + v29;
      MEMORY[0x1DA6C8120]();
      if (!v31)
      {
        goto LABEL_431;
      }

      goto LABEL_55;
    }

    v172[0] = v10;
    LOWORD(v172[1]) = v9;
    BYTE2(v172[1]) = BYTE2(v9);
    BYTE3(v172[1]) = BYTE3(v9);
    BYTE4(v172[1]) = BYTE4(v9);
    BYTE5(v172[1]) = BYTE5(v9);
LABEL_57:
    v36 = *(v172 + v5);
LABEL_58:
    v179 = v5 + 4;
    if (v36 > 3)
    {
      goto LABEL_347;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        if (v36 != 1)
        {
          goto LABEL_343;
        }

        v39 = v5 + 8;
        if (__OFADD__(v4, 4))
        {
          goto LABEL_363;
        }

        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v50 = *(v10 + 16);
            v49 = *(v10 + 24);
            v14 = __OFSUB__(v49, v50);
            v40 = v49 - v50;
            if (v14)
            {
              goto LABEL_378;
            }

            goto LABEL_127;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

          memset(v172, 0, 14);
        }

        else
        {
          if (v11)
          {
            LODWORD(v40) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_376;
            }

            v40 = v40;
          }

          else
          {
            v40 = BYTE6(v9);
          }

LABEL_127:
          if (v39 >= v40)
          {
            goto LABEL_347;
          }

          if (v11 == 2)
          {
            v79 = *(v10 + 16);

            v80 = __DataStorage._bytes.getter();
            if (!v80)
            {
              goto LABEL_436;
            }

            v81 = v80;
            v82 = __DataStorage._offset.getter();
            if (__OFSUB__(v79, v82))
            {
              goto LABEL_389;
            }

            v64 = v79 - v82 + v81;
            MEMORY[0x1DA6C8120]();
            if (!v64)
            {
              goto LABEL_437;
            }

            goto LABEL_160;
          }

          if (v11 == 1)
          {
            if (v10 > v10 >> 32)
            {
              goto LABEL_383;
            }

            v61 = __DataStorage._bytes.getter();
            if (!v61)
            {
              goto LABEL_442;
            }

            v62 = v61;
            v63 = __DataStorage._offset.getter();
            if (__OFSUB__(v10, v63))
            {
              goto LABEL_391;
            }

            v64 = v10 - v63 + v62;
            MEMORY[0x1DA6C8120]();
            if (!v64)
            {
              goto LABEL_447;
            }

LABEL_160:
            v83 = *(v64 + v4);
            outlined consume of Data._Representation(v10, v9);
LABEL_187:
            v179 = v5 + 8;
            v4 = v5 + 12;
            if (__OFADD__(v39, 4))
            {
              goto LABEL_364;
            }

            if (v11 <= 1)
            {
              if (v11)
              {
                LODWORD(v97) = HIDWORD(v10) - v10;
                if (__OFSUB__(HIDWORD(v10), v10))
                {
                  goto LABEL_401;
                }

                v97 = v97;
              }

              else
              {
                v97 = BYTE6(v9);
              }

              goto LABEL_234;
            }

            if (v11 == 2)
            {
              v99 = *(v10 + 16);
              v98 = *(v10 + 24);
              v14 = __OFSUB__(v98, v99);
              v97 = v98 - v99;
              if (v14)
              {
                goto LABEL_400;
              }

LABEL_234:
              if (v4 >= v97)
              {
                goto LABEL_347;
              }
            }

            else if ((v4 & 0x8000000000000000) == 0)
            {
              goto LABEL_347;
            }

            outlined copy of Data._Representation(v10, v9);
            specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
            v117 = v116;
            outlined consume of Data._Representation(v10, v9);
            v179 = v5 + 12;
            v173.b = 0.0;
            v173.c = 0.0;
            v173.a = 1.0;
            v173.d = 1.0;
            v173.tx = 0.0;
            v173.ty = 0.0;
            CGMutablePathRef.move(to:transform:)(__PAIR128__(v117, v83), &v173);
            goto LABEL_5;
          }

          v172[0] = v10;
          LOWORD(v172[1]) = v9;
          BYTE2(v172[1]) = BYTE2(v9);
          BYTE3(v172[1]) = BYTE3(v9);
          BYTE4(v172[1]) = BYTE4(v9);
          BYTE5(v172[1]) = BYTE5(v9);
        }

        v83 = *(v172 + v4);
        goto LABEL_187;
      }

      if (v36 != 1)
      {
LABEL_343:
        if (one-time initialization token for SignatureLogger == -1)
        {
          goto LABEL_344;
        }

        goto LABEL_423;
      }

      v43 = v5 + 8;
      if (__OFADD__(v4, 4))
      {
        goto LABEL_360;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v52 = *(v10 + 16);
          v51 = *(v10 + 24);
          v14 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v14)
          {
            goto LABEL_381;
          }

          goto LABEL_137;
        }

        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_347;
        }

        memset(v172, 0, 14);
      }

      else
      {
        if (v11)
        {
          LODWORD(v44) = HIDWORD(v10) - v10;
          if (__OFSUB__(HIDWORD(v10), v10))
          {
            goto LABEL_374;
          }

          v44 = v44;
        }

        else
        {
          v44 = BYTE6(v9);
        }

LABEL_137:
        if (v43 >= v44)
        {
          goto LABEL_347;
        }

        if (v11 == 2)
        {
          v84 = *(v10 + 16);

          v85 = __DataStorage._bytes.getter();
          if (!v85)
          {
            goto LABEL_438;
          }

          v86 = v85;
          v87 = __DataStorage._offset.getter();
          if (__OFSUB__(v84, v87))
          {
            goto LABEL_387;
          }

          v68 = v84 - v87 + v86;
          MEMORY[0x1DA6C8120]();
          if (!v68)
          {
            goto LABEL_439;
          }

          goto LABEL_164;
        }

        if (v11 == 1)
        {
          if (v10 > v10 >> 32)
          {
            goto LABEL_386;
          }

          v65 = __DataStorage._bytes.getter();
          if (!v65)
          {
            goto LABEL_434;
          }

          v66 = v65;
          v67 = __DataStorage._offset.getter();
          if (__OFSUB__(v10, v67))
          {
            goto LABEL_393;
          }

          v68 = v10 - v67 + v66;
          MEMORY[0x1DA6C8120]();
          if (!v68)
          {
            goto LABEL_445;
          }

LABEL_164:
          v88 = *(v68 + v4);
          outlined consume of Data._Representation(v10, v9);
LABEL_197:
          v179 = v5 + 8;
          v4 = v5 + 12;
          if (__OFADD__(v43, 4))
          {
            goto LABEL_367;
          }

          if (v11 <= 1)
          {
            if (v11)
            {
              LODWORD(v6) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                goto LABEL_395;
              }

              v6 = v6;
            }

            else
            {
              v6 = BYTE6(v9);
            }

            goto LABEL_3;
          }

          if (v11 == 2)
          {
            v101 = *(v10 + 16);
            v100 = *(v10 + 24);
            v14 = __OFSUB__(v100, v101);
            v6 = v100 - v101;
            if (v14)
            {
              goto LABEL_394;
            }

LABEL_3:
            if (v4 >= v6)
            {
              goto LABEL_347;
            }
          }

          else if ((v4 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

          outlined copy of Data._Representation(v10, v9);
          specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
          v8 = v7;
          outlined consume of Data._Representation(v10, v9);
          v179 = v5 + 12;
          transform.b = 0.0;
          transform.c = 0.0;
          transform.a = 1.0;
          transform.d = 1.0;
          transform.tx = 0.0;
          transform.ty = 0.0;
          CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v8, v88), &transform);
          goto LABEL_5;
        }

        v172[0] = v10;
        LOWORD(v172[1]) = v9;
        BYTE2(v172[1]) = BYTE2(v9);
        BYTE3(v172[1]) = BYTE3(v9);
        BYTE4(v172[1]) = BYTE4(v9);
        BYTE5(v172[1]) = BYTE5(v9);
      }

      v88 = *(v172 + v4);
      goto LABEL_197;
    }

    if (v24 == 2)
    {
      break;
    }

    if (v24 == 3)
    {
      if (v36 != 3)
      {
        goto LABEL_343;
      }

      v37 = v5 + 8;
      if (__OFADD__(v4, 4))
      {
        goto LABEL_361;
      }

      if (v11 > 1)
      {
        if (v11 != 2)
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

          memset(v172, 0, 14);
          goto LABEL_176;
        }

        v48 = *(v10 + 16);
        v47 = *(v10 + 24);
        v14 = __OFSUB__(v47, v48);
        v38 = v47 - v48;
        if (v14)
        {
          goto LABEL_375;
        }
      }

      else if (v11)
      {
        LODWORD(v38) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_379;
        }

        v38 = v38;
      }

      else
      {
        v38 = BYTE6(v9);
      }

      if (v37 >= v38)
      {
        goto LABEL_347;
      }

      if (v11 == 2)
      {
        v74 = *(v10 + 16);

        v75 = __DataStorage._bytes.getter();
        if (!v75)
        {
          goto LABEL_440;
        }

        v76 = v75;
        v77 = __DataStorage._offset.getter();
        if (__OFSUB__(v74, v77))
        {
          goto LABEL_384;
        }

        v60 = v74 - v77 + v76;
        MEMORY[0x1DA6C8120]();
        if (!v60)
        {
          goto LABEL_441;
        }

LABEL_156:
        v78 = *(v60 + v4);
        outlined consume of Data._Representation(v10, v9);
        goto LABEL_177;
      }

      if (v11 == 1)
      {
        if (v10 > v10 >> 32)
        {
          goto LABEL_388;
        }

        v57 = __DataStorage._bytes.getter();
        if (!v57)
        {
          goto LABEL_443;
        }

        v58 = v57;
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(v10, v59))
        {
          goto LABEL_392;
        }

        v60 = v10 - v59 + v58;
        MEMORY[0x1DA6C8120]();
        if (!v60)
        {
          goto LABEL_444;
        }

        goto LABEL_156;
      }

      v172[0] = v10;
      LOWORD(v172[1]) = v9;
      BYTE2(v172[1]) = BYTE2(v9);
      BYTE3(v172[1]) = BYTE3(v9);
      BYTE4(v172[1]) = BYTE4(v9);
      BYTE5(v172[1]) = BYTE5(v9);
LABEL_176:
      v78 = *(v172 + v4);
LABEL_177:
      v179 = v5 + 8;
      v93 = v5 + 12;
      if (__OFADD__(v37, 4))
      {
        goto LABEL_365;
      }

      if (v11 > 1)
      {
        if (v11 != 2)
        {
          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

LABEL_224:
          outlined copy of Data._Representation(v10, v9);
          specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
          v110 = v109;
          outlined consume of Data._Representation(v10, v9);
          v111 = v37 + 8;
          if (__OFADD__(v93, 4))
          {
            goto LABEL_369;
          }

          v10 = v177;
          v9 = v178;
          v112 = v178 >> 62;
          if ((v178 >> 62) > 1)
          {
            if (v112 != 2)
            {
              if ((v111 & 0x8000000000000000) == 0)
              {
                goto LABEL_347;
              }

              memset(v172, 0, 14);
              goto LABEL_283;
            }

            v115 = *(v177 + 16);
            v114 = *(v177 + 24);
            v14 = __OFSUB__(v114, v115);
            v113 = v114 - v115;
            if (v14)
            {
              goto LABEL_403;
            }
          }

          else if (v112)
          {
            LODWORD(v113) = HIDWORD(v177) - v177;
            if (__OFSUB__(HIDWORD(v177), v177))
            {
              goto LABEL_405;
            }

            v113 = v113;
          }

          else
          {
            v113 = BYTE6(v178);
          }

          if (v111 >= v113)
          {
            goto LABEL_347;
          }

          if (v112 == 2)
          {
            v131 = *(v177 + 16);

            v132 = __DataStorage._bytes.getter();
            if (!v132)
            {
              goto LABEL_454;
            }

            v133 = v132;
            v134 = __DataStorage._offset.getter();
            if (__OFSUB__(v131, v134))
            {
              goto LABEL_409;
            }

            v125 = v131 - v134 + v133;
            MEMORY[0x1DA6C8120]();
            if (!v125)
            {
              goto LABEL_455;
            }

LABEL_271:
            v135 = *(v125 + v93);
            outlined consume of Data._Representation(v10, v9);
            goto LABEL_284;
          }

          if (v112 == 1)
          {
            if (v177 > v177 >> 32)
            {
              goto LABEL_407;
            }

            v122 = __DataStorage._bytes.getter();
            if (!v122)
            {
              goto LABEL_451;
            }

            v123 = v122;
            v124 = __DataStorage._offset.getter();
            if (__OFSUB__(v10, v124))
            {
              goto LABEL_410;
            }

            v125 = v10 - v124 + v123;
            MEMORY[0x1DA6C8120]();
            if (!v125)
            {
              goto LABEL_448;
            }

            goto LABEL_271;
          }

          v172[0] = v177;
          LODWORD(v172[1]) = v178;
          WORD2(v172[1]) = WORD2(v178);
LABEL_283:
          v135 = *(v172 + v93);
LABEL_284:
          v179 = v111;
          v139 = v93 + 8;
          if (__OFADD__(v111, 4))
          {
            goto LABEL_371;
          }

          if (v112 > 1)
          {
            if (v112 != 2)
            {
              if ((v139 & 0x8000000000000000) == 0)
              {
                goto LABEL_347;
              }

LABEL_303:
              outlined copy of Data._Representation(v10, v9);
              specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
              v146 = v145;
              outlined consume of Data._Representation(v10, v9);
              v147 = v111 + 8;
              if (__OFADD__(v139, 4))
              {
                goto LABEL_372;
              }

              v10 = v177;
              v9 = v178;
              v148 = v178 >> 62;
              if ((v178 >> 62) > 1)
              {
                if (v148 != 2)
                {
                  if ((v147 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_347;
                  }

                  memset(v172, 0, 14);
                  goto LABEL_328;
                }

                v151 = *(v177 + 16);
                v150 = *(v177 + 24);
                v14 = __OFSUB__(v150, v151);
                v149 = v150 - v151;
                if (v14)
                {
                  goto LABEL_416;
                }
              }

              else if (v148)
              {
                LODWORD(v149) = HIDWORD(v177) - v177;
                if (__OFSUB__(HIDWORD(v177), v177))
                {
                  goto LABEL_417;
                }

                v149 = v149;
              }

              else
              {
                v149 = BYTE6(v178);
              }

              if (v147 >= v149)
              {
                goto LABEL_347;
              }

              if (v148 == 2)
              {
                v156 = *(v177 + 16);

                v157 = __DataStorage._bytes.getter();
                if (!v157)
                {
                  goto LABEL_458;
                }

                v158 = v157;
                v159 = __DataStorage._offset.getter();
                if (__OFSUB__(v156, v159))
                {
                  goto LABEL_419;
                }

                v155 = v156 - v159 + v158;
                result = MEMORY[0x1DA6C8120]();
                if (!v155)
                {
                  goto LABEL_459;
                }

LABEL_326:
                v161 = *(v155 + v139);
                outlined consume of Data._Representation(v10, v9);
                goto LABEL_329;
              }

              if (v148 == 1)
              {
                if (v177 > v177 >> 32)
                {
                  goto LABEL_418;
                }

                v152 = __DataStorage._bytes.getter();
                if (!v152)
                {
                  goto LABEL_457;
                }

                v153 = v152;
                v154 = __DataStorage._offset.getter();
                if (__OFSUB__(v10, v154))
                {
                  goto LABEL_420;
                }

                v155 = v10 - v154 + v153;
                MEMORY[0x1DA6C8120]();
                if (!v155)
                {
                  goto LABEL_456;
                }

                goto LABEL_326;
              }

              v172[0] = v177;
              LODWORD(v172[1]) = v178;
              WORD2(v172[1]) = WORD2(v178);
LABEL_328:
              v161 = *(v172 + v139);
LABEL_329:
              v179 = v147;
              v14 = __OFADD__(v147, 4);
              v4 = v139 + 8;
              if (v14)
              {
                goto LABEL_373;
              }

              if (v148 > 1)
              {
                if (v148 != 2)
                {
                  if ((v4 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_347;
                  }

                  goto LABEL_342;
                }

                v164 = *(v10 + 16);
                v163 = *(v10 + 24);
                v14 = __OFSUB__(v163, v164);
                v162 = v163 - v164;
                if (v14)
                {
                  goto LABEL_422;
                }
              }

              else if (v148)
              {
                LODWORD(v162) = HIDWORD(v10) - v10;
                if (__OFSUB__(HIDWORD(v10), v10))
                {
                  goto LABEL_421;
                }

                v162 = v162;
              }

              else
              {
                v162 = BYTE6(v9);
              }

              if (v4 >= v162)
              {
                goto LABEL_347;
              }

LABEL_342:
              outlined copy of Data._Representation(v10, v9);
              specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
              v166 = v165;
              outlined consume of Data._Representation(v10, v9);
              v179 = v139 + 8;
              v176.b = 0.0;
              v176.c = 0.0;
              v176.a = 1.0;
              v176.d = 1.0;
              v176.tx = 0.0;
              v176.ty = 0.0;
              CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(v166, v161), __PAIR128__(v110, v78), __PAIR128__(v146, v135), &v176);
              goto LABEL_5;
            }

            v142 = *(v10 + 16);
            v141 = *(v10 + 24);
            v14 = __OFSUB__(v141, v142);
            v140 = v141 - v142;
            if (v14)
            {
              goto LABEL_414;
            }
          }

          else if (v112)
          {
            LODWORD(v140) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_413;
            }

            v140 = v140;
          }

          else
          {
            v140 = BYTE6(v9);
          }

          if (v139 >= v140)
          {
            goto LABEL_347;
          }

          goto LABEL_303;
        }

        v96 = *(v10 + 16);
        v95 = *(v10 + 24);
        v14 = __OFSUB__(v95, v96);
        v94 = v95 - v96;
        if (v14)
        {
          goto LABEL_398;
        }
      }

      else if (v11)
      {
        LODWORD(v94) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_396;
        }

        v94 = v94;
      }

      else
      {
        v94 = BYTE6(v9);
      }

      if (v93 >= v94)
      {
        goto LABEL_347;
      }

      goto LABEL_224;
    }

    if (v36)
    {
      goto LABEL_343;
    }

    CGPathCloseSubpath(path);
LABEL_5:
    v5 = v4 + 4;
    if (__OFADD__(v4, 4))
    {
      goto LABEL_349;
    }
  }

  if (v36 != 2)
  {
    goto LABEL_343;
  }

  v41 = v5 + 8;
  if (__OFADD__(v4, 4))
  {
    goto LABEL_362;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v46 = *(v10 + 16);
      v45 = *(v10 + 24);
      v14 = __OFSUB__(v45, v46);
      v42 = v45 - v46;
      if (v14)
      {
        goto LABEL_377;
      }

      goto LABEL_103;
    }

    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_347;
    }

    memset(v172, 0, 14);
    goto LABEL_166;
  }

  if (v11)
  {
    LODWORD(v42) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_380;
    }

    v42 = v42;
  }

  else
  {
    v42 = BYTE6(v9);
  }

LABEL_103:
  if (v41 >= v42)
  {
    goto LABEL_347;
  }

  if (v11 != 2)
  {
    if (v11 == 1)
    {
      if (v10 > v10 >> 32)
      {
        goto LABEL_385;
      }

      v53 = __DataStorage._bytes.getter();
      if (!v53)
      {
        goto LABEL_435;
      }

      v54 = v53;
      v55 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v55))
      {
        goto LABEL_390;
      }

      v56 = v10 - v55 + v54;
      MEMORY[0x1DA6C8120]();
      if (!v56)
      {
        goto LABEL_446;
      }

LABEL_152:
      v73 = *(v56 + v4);
      outlined consume of Data._Representation(v10, v9);
LABEL_167:
      v179 = v5 + 8;
      v89 = v5 + 12;
      if (__OFADD__(v41, 4))
      {
        goto LABEL_366;
      }

      if (v11 <= 1)
      {
        if (v11)
        {
          LODWORD(v90) = HIDWORD(v10) - v10;
          if (__OFSUB__(HIDWORD(v10), v10))
          {
            goto LABEL_397;
          }

          v90 = v90;
        }

        else
        {
          v90 = BYTE6(v9);
        }

        goto LABEL_208;
      }

      if (v11 == 2)
      {
        v92 = *(v10 + 16);
        v91 = *(v10 + 24);
        v14 = __OFSUB__(v91, v92);
        v90 = v91 - v92;
        if (v14)
        {
          goto LABEL_399;
        }

LABEL_208:
        if (v89 >= v90)
        {
          goto LABEL_347;
        }
      }

      else if ((v89 & 0x8000000000000000) == 0)
      {
        goto LABEL_347;
      }

      outlined copy of Data._Representation(v10, v9);
      specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
      v103 = v102;
      outlined consume of Data._Representation(v10, v9);
      v104 = v41 + 8;
      if (__OFADD__(v89, 4))
      {
        goto LABEL_368;
      }

      v10 = v177;
      v9 = v178;
      v105 = v178 >> 62;
      if ((v178 >> 62) > 1)
      {
        if (v105 == 2)
        {
          v108 = *(v177 + 16);
          v107 = *(v177 + 24);
          v14 = __OFSUB__(v107, v108);
          v106 = v107 - v108;
          if (v14)
          {
            goto LABEL_402;
          }

          goto LABEL_242;
        }

        if ((v104 & 0x8000000000000000) == 0)
        {
          goto LABEL_347;
        }

        memset(v172, 0, 14);
      }

      else
      {
        if (v105)
        {
          LODWORD(v106) = HIDWORD(v177) - v177;
          if (__OFSUB__(HIDWORD(v177), v177))
          {
            goto LABEL_404;
          }

          v106 = v106;
        }

        else
        {
          v106 = BYTE6(v178);
        }

LABEL_242:
        if (v104 >= v106)
        {
          goto LABEL_347;
        }

        if (v105 == 2)
        {
          v126 = *(v177 + 16);

          v127 = __DataStorage._bytes.getter();
          if (!v127)
          {
            goto LABEL_452;
          }

          v128 = v127;
          v129 = __DataStorage._offset.getter();
          if (__OFSUB__(v126, v129))
          {
            goto LABEL_406;
          }

          v121 = v126 - v129 + v128;
          MEMORY[0x1DA6C8120]();
          if (!v121)
          {
            goto LABEL_453;
          }

          goto LABEL_267;
        }

        if (v105 == 1)
        {
          if (v177 > v177 >> 32)
          {
            goto LABEL_408;
          }

          v118 = __DataStorage._bytes.getter();
          if (!v118)
          {
            goto LABEL_449;
          }

          v119 = v118;
          v120 = __DataStorage._offset.getter();
          if (__OFSUB__(v10, v120))
          {
            goto LABEL_411;
          }

          v121 = v10 - v120 + v119;
          MEMORY[0x1DA6C8120]();
          if (!v121)
          {
            goto LABEL_450;
          }

LABEL_267:
          v130 = *(v121 + v89);
          outlined consume of Data._Representation(v10, v9);
LABEL_274:
          v179 = v104;
          v14 = __OFADD__(v104, 4);
          v4 = v89 + 8;
          if (v14)
          {
            goto LABEL_370;
          }

          if (v105 <= 1)
          {
            if (v105)
            {
              LODWORD(v136) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                goto LABEL_412;
              }

              v136 = v136;
            }

            else
            {
              v136 = BYTE6(v9);
            }

            goto LABEL_294;
          }

          if (v105 == 2)
          {
            v138 = *(v10 + 16);
            v137 = *(v10 + 24);
            v14 = __OFSUB__(v137, v138);
            v136 = v137 - v138;
            if (v14)
            {
              goto LABEL_415;
            }

LABEL_294:
            if (v4 >= v136)
            {
              goto LABEL_347;
            }
          }

          else if ((v4 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

          outlined copy of Data._Representation(v10, v9);
          specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
          v144 = v143;
          outlined consume of Data._Representation(v10, v9);
          v179 = v89 + 8;
          v175.b = 0.0;
          v175.c = 0.0;
          v175.a = 1.0;
          v175.d = 1.0;
          v175.tx = 0.0;
          v175.ty = 0.0;
          CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(v103, v73), __PAIR128__(v144, v130), &v175);
          goto LABEL_5;
        }

        v172[0] = v177;
        LODWORD(v172[1]) = v178;
        WORD2(v172[1]) = WORD2(v178);
      }

      v130 = *(v172 + v89);
      goto LABEL_274;
    }

    v172[0] = v10;
    LOWORD(v172[1]) = v9;
    BYTE2(v172[1]) = BYTE2(v9);
    BYTE3(v172[1]) = BYTE3(v9);
    BYTE4(v172[1]) = BYTE4(v9);
    BYTE5(v172[1]) = BYTE5(v9);
LABEL_166:
    v73 = *(v172 + v4);
    goto LABEL_167;
  }

  v69 = *(v10 + 16);

  v70 = __DataStorage._bytes.getter();
  if (v70)
  {
    v71 = v70;
    v72 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v72))
    {
      goto LABEL_382;
    }

    v56 = v69 - v72 + v71;
    MEMORY[0x1DA6C8120]();
    if (!v56)
    {
      goto LABEL_433;
    }

    goto LABEL_152;
  }

  MEMORY[0x1DA6C8120]();
LABEL_433:
  __break(1u);
LABEL_434:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_435:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_436:
  MEMORY[0x1DA6C8120]();
LABEL_437:
  __break(1u);
LABEL_438:
  MEMORY[0x1DA6C8120]();
LABEL_439:
  __break(1u);
LABEL_440:
  MEMORY[0x1DA6C8120]();
LABEL_441:
  __break(1u);
LABEL_442:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_443:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_444:
  __break(1u);
LABEL_445:
  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
LABEL_449:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_450:
  __break(1u);
LABEL_451:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_452:
  MEMORY[0x1DA6C8120]();
LABEL_453:
  __break(1u);
LABEL_454:
  MEMORY[0x1DA6C8120]();
LABEL_455:
  __break(1u);
LABEL_456:
  __break(1u);
LABEL_457:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_458:
  result = MEMORY[0x1DA6C8120]();
LABEL_459:
  __break(1u);
  return result;
}