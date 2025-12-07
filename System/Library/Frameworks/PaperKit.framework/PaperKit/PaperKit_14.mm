uint64_t (*protocol witness for CanvasElement.frame.modify in conformance GraphElement(uint64_t *a1))()
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

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance GraphElement(uint64_t *a1))()
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

uint64_t protocol witness for CanvasElement.shared(_:) in conformance GraphElement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 2;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance GraphElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return GraphElement.render<A>(in:id:capsule:options:)(a1, a2, a3, a4, a5, a6);
}

Swift::Int GraphExpressionType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t GraphElement.graphExpressionType<A>(in:calculateDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v36 = a6;
  v50 = type metadata accessor for CalculateExpression.GraphableType();
  v35 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GraphableExpression(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGSgMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  CROrderedSet.makeIterator()();
  v47 = v21;
  v48 = v18;
  CROrderedSet.Iterator.next()();
  v40 = *(v12 + 48);
  v41 = v12 + 48;
  if (v40(v17, 1, v11) == 1)
  {
    v22 = 0;
    v23 = v36;
    goto LABEL_15;
  }

  v34 = v19;
  v25 = *(v12 + 32);
  v24 = v12 + 32;
  v39 = v25;
  v26 = (v24 - 24);
  v27 = (v35 + 88);
  v38 = *MEMORY[0x1E69920D0];
  v37 = *MEMORY[0x1E69920D8];
  v28 = (v35 + 8);
  v25(v14, v17, v11);
  while (1)
  {
    Ref.subscript.getter();
    ObjectType = swift_getObjectType();
    if (!CanvasCalculateDocument.expressionForAnyGraphable(_:)(v10, ObjectType, v44))
    {
      outlined destroy of GraphElement.Partial(v10, type metadata accessor for GraphableExpression);
      (*v26)(v14, v11);
      goto LABEL_5;
    }

    v30 = v24;
    v31 = v49;
    CalculateExpression.graphableType.getter();

    outlined destroy of GraphElement.Partial(v10, type metadata accessor for GraphableExpression);
    (*v26)(v14, v11);
    v32 = (*v27)(v31, v50);
    if (v32 == v38)
    {
      v22 = 1;
      goto LABEL_14;
    }

    if (v32 == v37)
    {
      break;
    }

    (*v28)(v49, v50);
    v24 = v30;
LABEL_5:
    CROrderedSet.Iterator.next()();
    if (v40(v17, 1, v11) == 1)
    {
      v22 = 0;
      goto LABEL_14;
    }

    v39(v14, v17, v11);
  }

  v22 = 2;
LABEL_14:
  v23 = v36;
  v19 = v34;
LABEL_15:
  result = (*(v19 + 8))(v47, v48);
  *v23 = v22;
  return result;
}

uint64_t Capsule<>.graphElementClosestTo(_:maxDistance:type:calculateDocument:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (**a7)(uint64_t)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v102 = a7;
  v91 = a5;
  v97 = a4;
  LODWORD(v100) = a2;
  v99 = a1;
  v87 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v21 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v94 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v80 - v24;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v103 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v26 = &v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v84 = &v80 - v28;
  v29 = *(a6 + 16);
  v98 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v92 = *(v93 - 1);
  MEMORY[0x1EEE9AC00](v93);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v80 - v36;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v86 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v39 = (&v80 - v38);
  v96 = *a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGMR);
  v89 = *(v40 - 8);
  (*(v89 + 56))(v87, 1, 1, v40);
  if (v100)
  {
    v41 = 512.0;
  }

  else
  {
    v41 = *&v99;
  }

  v95 = a6;
  Capsule.root.getter();
  v102[11](v29);
  (*(v98 + 8))(v32, v29);
  v42 = v93;
  CROrderedSet.filter(_:)();
  v43 = *(v92 + 8);
  v43(v34, v42);
  CROrderedSet.makeIterator()();
  v43(v37, v42);
  v44 = v84;
  v102 = v39;
  v45 = v85;
  CROrderedSet.Iterator.next()();
  v46 = v103;
  v99 = *(v103 + 48);
  v100 = v103 + 48;
  if (v99(v44, 1, v45) != 1)
  {
    v93 = *(v46 + 32);
    v98 = v89 + 48;
    v89 += 8;
    if (v97)
    {
      v48 = v96 == 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = v48;
    v88 = v49;
    v103 = v46 + 32;
    v92 = v46 + 8;
    v50 = 0.0;
    v90 = v20;
    v81 = v41;
    do
    {
      while (1)
      {
        (v93)(v26, v44, v45);
        SharedTagged_10.tagged3.getter();
        v51 = *v98;
        if ((*v98)(v20, 1, v40) != 1)
        {
          break;
        }

        (*v92)(v26, v45);
        outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
        v75 = v50;
LABEL_36:
        CROrderedSet.Iterator.next()();
        v50 = v75;
        if (v99(v44, 1, v45) == 1)
        {
          return (*(v86 + 8))(v102, v104);
        }
      }

      v52 = v20;
      v53 = v44;
      v54 = v26;
      v55 = *(v95 + 24);
      v56 = v94;
      v57 = v101;
      Ref.subscript.getter();
      (*v89)(v52, v40);
      outlined init with take of GraphElement(v56, v105, type metadata accessor for GraphElement);
      if ((v88 & 1) != 0 || (v58 = v97, swift_unknownObjectRetain(), GraphElement.graphExpressionType<A>(in:calculateDocument:)(v57, v58, v91, v29, v55, &v106), v59 = v105, swift_unknownObjectRelease(), LOBYTE(v106.origin.x) == v96))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.getter();
        v61 = a10;
        x = v106.origin.x;
        y = v106.origin.y;
        v83 = v50;
        width = v106.size.width;
        height = v106.size.height;
        MinX = CGRectGetMinX(v106);
        v107.origin.x = x;
        v107.origin.y = y;
        v107.size.width = width;
        v107.size.height = height;
        MaxX = CGRectGetMaxX(v107);
        if (MinX > a9)
        {
          v68 = MinX;
        }

        else
        {
          v68 = a9;
        }

        if (v68 >= MaxX)
        {
          v69 = MaxX;
        }

        else
        {
          v69 = v68;
        }

        v108.origin.x = x;
        v108.origin.y = y;
        v108.size.width = width;
        v108.size.height = height;
        MinY = CGRectGetMinY(v108);
        v109.origin.x = x;
        v109.origin.y = y;
        a10 = v61;
        v71 = v81;
        v109.size.width = width;
        v72 = v83;
        v109.size.height = height;
        MaxY = CGRectGetMaxY(v109);
        if (MinY > a10)
        {
          v74 = MinY;
        }

        else
        {
          v74 = a10;
        }

        if (v74 < MaxY)
        {
          MaxY = v74;
        }

        v75 = sqrt((v69 - a9) * (v69 - a9) + (MaxY - a10) * (MaxY - a10));
        if (v75 < v71 && ((v76 = v82, outlined init with copy of Date?(v87, v82, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR), v77 = v51(v76, 1, v40), outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR), v77 == 1) || v75 < v72))
        {
          v78 = v80;
          v26 = v54;
          SharedTagged_10.tagged3.getter();
          outlined destroy of GraphElement.Partial(v105, type metadata accessor for GraphElement);
          (*v92)(v54, v45);
          v79 = v87;
          outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
          outlined init with take of Range<AttributedString.Index>(v78, v79, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
        }

        else
        {
          outlined destroy of GraphElement.Partial(v105, type metadata accessor for GraphElement);
          v26 = v54;
          (*v92)(v54, v45);
          v75 = v72;
        }

        v44 = v53;
        v20 = v90;
        goto LABEL_36;
      }

      outlined destroy of GraphElement.Partial(v59, type metadata accessor for GraphElement);
      v26 = v54;
      (*v92)(v54, v45);
      v44 = v53;
      CROrderedSet.Iterator.next()();
      v60 = v99(v53, 1, v45);
      v20 = v90;
    }

    while (v60 != 1);
  }

  return (*(v86 + 8))(v102, v104);
}

BOOL closure #1 in Capsule<>.graphElementClosestTo(_:maxDistance:type:calculateDocument:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  SharedTagged_10.tagged3.getter();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit12GraphElementVGMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGMR);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence3RefVy8PaperKit12GraphElementVGSgMR);
  return v4;
}

uint64_t GraphElement.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  GraphElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t GraphElement.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v72 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v69 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v66 = v53 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = v53 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v61 = v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v68 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v53 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v53 - v22;
  v55 = v53 - v22;
  v75 = type metadata accessor for MergeResult();
  v24 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a2;
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v54 = v20;
  CRRegister.merge(_:)();
  v27 = v16;
  v28 = v16 + 8;
  v29 = *(v16 + 8);
  v29(v23, v15);
  v56 = v29;
  v57 = v28;
  v30 = *(v27 + 16);
  v58 = v27 + 16;
  v59 = v30;
  v30(v68, v20, v15);
  CRRegister.projectedValue.setter();
  v29(v20, v15);
  MergeResult.merge(_:)();
  v31 = *(v24 + 8);
  v73 = v24 + 8;
  v71 = v31;
  v31(v26, v75);
  v70 = type metadata accessor for GraphElement(0);
  v32 = v61;
  v33 = v63;
  CRRegister.projectedValue.getter();
  v34 = v3;
  v35 = v62;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v36 = v65;
  v37 = *(v65 + 8);
  v37(v32, v33);
  (*(v36 + 16))(v64, v35, v33);
  CRRegister.projectedValue.setter();
  v37(v35, v33);
  MergeResult.merge(_:)();
  v38 = v71;
  v71(v26, v75);
  v39 = v55;
  CRRegister.projectedValue.getter();
  v40 = v34;
  v41 = v54;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v42 = v56;
  v56(v39, v15);
  v59(v68, v41, v15);
  CRRegister.projectedValue.setter();
  v42(v41, v15);
  MergeResult.merge(_:)();
  v38(v26, v75);
  v43 = v66;
  v44 = v60;
  CRRegister.projectedValue.getter();
  v45 = v40;
  v46 = v67;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v47 = v72;
  v48 = *(v72 + 8);
  v48(v43, v44);
  v49 = *(v47 + 16);
  v72 = v47 + 16;
  v68 = v49;
  (v49)(v69, v46, v44);
  CRRegister.projectedValue.setter();
  v48(v46, v44);
  MergeResult.merge(_:)();
  v71(v26, v75);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v48(v43, v44);
  (v68)(v69, v46, v44);
  CRRegister.projectedValue.setter();
  v48(v46, v44);
  MergeResult.merge(_:)();
  v71(v26, v75);
  CRRegister.projectedValue.getter();
  v53[1] = v45;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v48(v43, v44);
  (v68)(v69, v46, v44);
  CRRegister.projectedValue.setter();
  v48(v46, v44);
  MergeResult.merge(_:)();
  v71(v26, v75);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v48(v43, v44);
  (v68)(v69, v46, v44);
  CRRegister.projectedValue.setter();
  v48(v46, v44);
  MergeResult.merge(_:)();
  v50 = v75;
  v51 = v71;
  v71(v26, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  CROrderedSet.merge(_:)();
  MergeResult.merge(_:)();
  v51(v26, v50);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v51)(v26, v50);
}

uint64_t GraphElement.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v19 = *(v18 - 8);
  v64 = v18;
  v65 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v59 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v71 = &v59 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v59 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v77 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v66 = &v59 - v36;
  v60 = v2;
  CRRegister.projectedValue.getter();
  v59 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v37 = v27 + 8;
  v38 = *(v27 + 8);
  v61 = v37;
  v62 = v38;
  v38(v29, v26);
  v38(v32, v26);
  type metadata accessor for GraphElement(0);
  v39 = v63;
  v40 = v64;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v41 = *(v65 + 8);
  v41(v21, v40);
  v41(v39, v40);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v42 = v62;
  v62(v29, v26);
  v42(v32, v26);
  v43 = v67;
  CRRegister.projectedValue.getter();
  v44 = v68;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v45 = *(v69 + 8);
  v45(v44, v6);
  v45(v43, v6);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v45(v44, v6);
  v45(v43, v6);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v45(v44, v6);
  v45(v43, v6);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v45(v44, v6);
  v46 = v6;
  v47 = v71;
  v45(v43, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  CROrderedSet.actionUndoingDifference(from:)();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  v49 = *(*(v48 - 8) + 48);
  v50 = v66;
  if (v49() == 1 && (v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMR), (*(*(v51 - 8) + 48))(v47, 1, v51) == 1) && (v49)(v77, 1, v48) == 1 && (v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySd_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GMR), v53 = *(*(v52 - 8) + 48), v53(v76, 1, v52) == 1) && v53(v75, 1, v52) == 1 && v53(v74, 1, v52) == 1 && v53(v73, 1, v52) == 1 && (v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR), (*(*(v54 - 8) + 48))(v72, 1, v54) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v55 = type metadata accessor for GraphElement.MutatingAction(0);
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
  }

  else
  {
    v56 = v70;
    outlined init with copy of Date?(v50, v70, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v57 = type metadata accessor for GraphElement.MutatingAction(0);
    outlined init with copy of Date?(v47, v56 + v57[5], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v77, v56 + v57[6], &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v76, v56 + v57[7], &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
    outlined init with copy of Date?(v75, v56 + v57[8], &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
    outlined init with copy of Date?(v74, v56 + v57[9], &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
    outlined init with copy of Date?(v73, v56 + v57[10], &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
    outlined init with copy of Date?(v72, v56 + v57[11], &_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    (*(*(v57 - 1) + 56))(v56, 0, 1, v57);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
}

uint64_t GraphElement.apply(_:)(uint64_t a1)
{
  v46 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v50 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v44 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v41 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12GraphElementV14MutatingActionVSgMd, &_s8PaperKit12GraphElementV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v35 - v14;
  v16 = type metadata accessor for GraphElement.MutatingAction(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v46, v15, &_s8PaperKit12GraphElementV14MutatingActionVSgMd, &_s8PaperKit12GraphElementV14MutatingActionVSgMR);
  v20 = *(v17 + 48);
  v49 = v16;
  if (v20(v15, 1, v16) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s8PaperKit12GraphElementV14MutatingActionVSgMd, &_s8PaperKit12GraphElementV14MutatingActionVSgMR);
  }

  outlined init with take of GraphElement(v15, v19, type metadata accessor for GraphElement.MutatingAction);
  CRRegister.projectedValue.getter();
  v45 = v19;
  CRRegister.apply(_:)();
  v22 = v48;
  v23 = *(v48 + 16);
  v35[1] = v48 + 16;
  v37 = v23;
  v23(v47, v12, v8);
  CRRegister.projectedValue.setter();
  v24 = *(v22 + 8);
  v48 = v22 + 8;
  v36 = v24;
  v24(v12, v8);
  v46 = type metadata accessor for GraphElement(0);
  v25 = v39;
  v26 = v43;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v27 = v42;
  (*(v42 + 16))(v40, v25, v26);
  CRRegister.projectedValue.setter();
  (*(v27 + 8))(v25, v26);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v37(v47, v12, v8);
  CRRegister.projectedValue.setter();
  v36(v12, v8);
  v28 = v41;
  v29 = v38;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v30 = v50;
  v31 = v50 + 16;
  v48 = *(v50 + 16);
  v32 = v44;
  (v48)(v44, v28, v29);
  v43 = v31;
  CRRegister.projectedValue.setter();
  v33 = *(v30 + 8);
  v50 = v30 + 8;
  v33(v28, v29);
  v47 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (v48)(v32, v28, v29);
  CRRegister.projectedValue.setter();
  v33(v28, v29);
  CRRegister.projectedValue.getter();
  v34 = v45;
  CRRegister.apply(_:)();
  (v48)(v32, v28, v29);
  CRRegister.projectedValue.setter();
  (v47)(v28, v29);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (v48)(v32, v28, v29);
  CRRegister.projectedValue.setter();
  (v47)(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  CROrderedSet.apply(_:)();
  return outlined destroy of GraphElement.Partial(v34, type metadata accessor for GraphElement.MutatingAction);
}

uint64_t GraphElement.hasDelta(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  CRRegister.projectedValue.getter();
  v45 = a1;
  CRRegister.projectedValue.getter();
  v21 = CRRegister.hasDelta(from:)();
  v22 = *(v15 + 8);
  v22(v17, v14);
  v22(v20, v14);
  if (v21 & 1) != 0 || (v23 = type metadata accessor for GraphElement(0), v24 = v2, v25 = v23, v39[1] = v24, CRRegister.projectedValue.getter(), v39[0] = v25, CRRegister.projectedValue.getter(), v26 = CRRegister.hasDelta(from:)(), v27 = *(v44 + 8), v27(v10, v8), v27(v13, v8), (v26) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v28 = CRRegister.hasDelta(from:)(), v22(v17, v14), v22(v20, v14), (v28) || (v29 = v40, v30 = v43, CRRegister.projectedValue.getter(), v31 = v41, CRRegister.projectedValue.getter(), v32 = CRRegister.hasDelta(from:)(), v33 = *(v42 + 8), v33(v31, v30), v33(v29, v30), (v32) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v34 = CRRegister.hasDelta(from:)(), v33(v31, v30), v33(v29, v30), (v34) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v35 = CRRegister.hasDelta(from:)(), v33(v31, v30), v33(v29, v30), (v35) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v36 = CRRegister.hasDelta(from:)(), v33(v31, v30), v33(v29, v30), (v36) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR), (CROrderedSet.hasDelta(from:)()))
  {
    v37 = 1;
  }

  else
  {
    v37 = UnknownProperties.hasDelta(from:)();
  }

  return v37 & 1;
}

uint64_t GraphElement.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnknownProperties();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v69 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v48 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v68 = v2;
  outlined init with copy of GraphElement(v2, a2, type metadata accessor for GraphElement);
  CRRegister.projectedValue.getter();
  v24 = v23;
  v50 = v23;
  v67 = a1;
  CRRegister.copy(renamingReferences:)();
  v25 = *(v18 + 8);
  v25(v20, v17);
  v51 = v18 + 8;
  v52 = v25;
  v26 = *(v18 + 16);
  v53 = v18 + 16;
  v54 = v26;
  v26(v20, v24, v17);
  v70 = a2;
  CRRegister.projectedValue.setter();
  v25(v24, v17);
  v49 = type metadata accessor for GraphElement(0);
  v27 = v55;
  v28 = v56;
  CRRegister.projectedValue.getter();
  v29 = v57;
  CRRegister.copy(renamingReferences:)();
  v30 = v58;
  v31 = *(v58 + 8);
  v32 = v28;
  v31(v27, v28);
  v33 = v29;
  (*(v30 + 16))(v27, v29, v32);
  v34 = v49;
  CRRegister.projectedValue.setter();
  v31(v33, v32);
  v35 = v34;
  CRRegister.projectedValue.getter();
  v36 = v50;
  CRRegister.copy(renamingReferences:)();
  v37 = v52;
  v52(v20, v17);
  v54(v20, v36, v17);
  CRRegister.projectedValue.setter();
  v37(v36, v17);
  v38 = v59;
  CRRegister.projectedValue.getter();
  v39 = v60;
  CRRegister.copy(renamingReferences:)();
  v40 = v69;
  v41 = *(v69 + 8);
  v41(v38, v10);
  v42 = *(v40 + 16);
  v42(v38, v39, v10);
  v69 = v40 + 16;
  CRRegister.projectedValue.setter();
  v41(v39, v10);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v41(v38, v10);
  v42(v38, v39, v10);
  CRRegister.projectedValue.setter();
  v41(v39, v10);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v41(v38, v10);
  v42(v38, v39, v10);
  CRRegister.projectedValue.setter();
  v41(v39, v10);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v41(v38, v10);
  v42(v38, v39, v10);
  v43 = v70;
  CRRegister.projectedValue.setter();
  v41(v39, v10);
  v45 = v61;
  v44 = v62;
  CROrderedSet.copy(renamingReferences:)();
  (*(v63 + 40))(v43 + *(v35 + 44), v45, v44);
  v46 = v64;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v65 + 40))(v43 + *(v35 + 48), v46, v66);
}

uint64_t GraphElement.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v58 = type metadata accessor for UnknownProperties();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v52 - v17;
  type metadata accessor for CGRect(0);
  v18 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v84 = 0u;
  v85 = 0u;
  v83 = v18;
  CRRegister.init(wrappedValue:)();
  v19 = type metadata accessor for GraphElement(0);
  v20 = v19[5];
  *&v84 = 0;
  v21 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v74 = v20;
  v77 = v21;
  CRRegister.init(wrappedValue:)();
  v22 = v19[6];
  specialized static GraphElement.defaultVisibleRange.getter();
  *&v84 = v23;
  *(&v84 + 1) = v24;
  *&v85 = v25;
  *(&v85 + 1) = v26;
  v72 = v22;
  CRRegister.init(wrappedValue:)();
  v27 = v19[7];
  *&v84 = 0;
  v68 = v27;
  CRRegister.init(wrappedValue:)();
  v28 = v19[8];
  *&v84 = 0;
  v66 = v28;
  CRRegister.init(wrappedValue:)();
  v29 = v19[9];
  *&v84 = 0;
  v64 = v29;
  CRRegister.init(wrappedValue:)();
  v30 = v19[10];
  *&v84 = 0;
  v62 = v30;
  CRRegister.init(wrappedValue:)();
  v31 = v19[11];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
  v33 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953B0]);
  v34 = v31;
  v35 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953C8]);
  CROrderedSet.init()();
  v36 = v19[12];
  UnknownProperties.init()();
  v37 = v82;
  CRRegister.init(defaultState:)();
  if (v37)
  {
    return outlined destroy of GraphElement.Partial(a1, type metadata accessor for GraphElement);
  }

  v55 = v35;
  v56 = v33;
  v82 = v32;
  v53 = v36;
  v54 = v34;
  v38 = v78;
  v39 = *(v79 + 40);
  v40 = v80;
  v39(a1, v86, v80);
  CRRegister.init(defaultState:)();
  v41 = a1;
  (*(v75 + 40))(a1 + v74, v81, v76);
  CRRegister.init(defaultState:)();
  v39(a1 + v72, v38, v40);
  v42 = v73;
  CRRegister.init(defaultState:)();
  v43 = *(v70 + 40);
  v44 = v42;
  v45 = v71;
  v43(v41 + v68, v44, v71);
  v46 = v69;
  CRRegister.init(defaultState:)();
  v43(v41 + v66, v46, v45);
  v47 = v67;
  CRRegister.init(defaultState:)();
  v43(v41 + v64, v47, v45);
  v48 = v65;
  CRRegister.init(defaultState:)();
  v43(v41 + v62, v48, v45);
  v49 = v63;
  CROrderedSet.init(defaultState:)();
  (*(v59 + 40))(v41 + v54, v49, v60);
  v50 = v61;
  UnknownProperties.init(defaultState:)();
  return (*(v57 + 40))(v41 + v53, v50, v58);
}

uint64_t GraphElement.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v26 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v25 = &v23 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  type metadata accessor for GraphElement(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (v24 = v0, CRRegister.projectedValue.getter(), v10 = CRRegister.isDefaultState.getter(), v11 = *(v7 + 8), v11(v9, v6), (v10) && (CRRegister.projectedValue.getter(), v12 = CRRegister.isDefaultState.getter(), (*(v3 + 8))(v5, v2), (v12) && (CRRegister.projectedValue.getter(), v13 = CRRegister.isDefaultState.getter(), v11(v9, v6), (v13) && (v14 = v24, v15 = v25, CRRegister.projectedValue.getter(), v16 = CRRegister.isDefaultState.getter(), v17 = *(v26 + 8), v17(v15, v14), (v16) && (CRRegister.projectedValue.getter(), v18 = CRRegister.isDefaultState.getter(), v17(v15, v14), (v18) && (CRRegister.projectedValue.getter(), v19 = CRRegister.isDefaultState.getter(), v17(v15, v14), (v19) && (CRRegister.projectedValue.getter(), v20 = CRRegister.isDefaultState.getter(), v17(v15, v14), (v20))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
    v21 = CROrderedSet.isDefaultState.getter();
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t GraphElement.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v20 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v5 = *(v4 - 8);
  v18 = v4;
  v19 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v12 = *(v9 + 8);
  v16[1] = v9 + 8;
  v17 = v12;
  v12(v11, v8);
  type metadata accessor for GraphElement(0);
  v13 = v18;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v19 + 8))(v7, v13);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v17(v11, v8);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v14 = *(v20 + 8);
  v14(v3, v1);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v14(v3, v1);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v14(v3, v1);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v14(v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  CROrderedSet.visitReferences(_:)();
  return UnknownProperties.visitReferences(_:)();
}

uint64_t GraphElement.newRefs(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v35 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v48 = MEMORY[0x1E69E7CD0];
  v37 = v1;
  CRRegister.projectedValue.getter();
  v38 = a1;
  CRRegister.projectedValue.getter();
  v17 = CRRegister.newRefs(from:)();
  v18 = *(v11 + 8);
  v40 = v11 + 8;
  v41 = v18;
  v18(v13, v10);
  v18(v16, v10);
  specialized Set.formUnion<A>(_:)(v17);
  type metadata accessor for GraphElement(0);
  v19 = v39;
  v20 = v42;
  CRRegister.projectedValue.getter();
  v21 = v43;
  CRRegister.projectedValue.getter();
  v36 = CRRegister.newRefs(from:)();
  v22 = *(v44 + 8);
  v22(v21, v20);
  v22(v19, v20);
  specialized Set.formUnion<A>(_:)(v36);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v23 = CRRegister.newRefs(from:)();
  v24 = v41;
  v41(v13, v10);
  v24(v16, v10);
  specialized Set.formUnion<A>(_:)(v23);
  v25 = v45;
  CRRegister.projectedValue.getter();
  v26 = v46;
  CRRegister.projectedValue.getter();
  v27 = CRRegister.newRefs(from:)();
  v28 = *(v47 + 8);
  v28(v26, v3);
  v28(v25, v3);
  specialized Set.formUnion<A>(_:)(v27);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v29 = CRRegister.newRefs(from:)();
  v28(v26, v3);
  v28(v25, v3);
  specialized Set.formUnion<A>(_:)(v29);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v30 = CRRegister.newRefs(from:)();
  v28(v26, v3);
  v28(v25, v3);
  specialized Set.formUnion<A>(_:)(v30);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v31 = CRRegister.newRefs(from:)();
  v28(v26, v3);
  v28(v25, v3);
  specialized Set.formUnion<A>(_:)(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v32 = CROrderedSet.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v32);
  v33 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v33);
  return v48;
}

Swift::Bool __swiftcall GraphElement.needToFinalizeTimestamps()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v27 = v0;
  CRRegister.projectedValue.getter();
  v12 = CRRegister.needToFinalizeTimestamps()();
  v13 = *(v9 + 8);
  v13(v11, v8);
  v22 = v12 || (v25 = v1, type metadata accessor for GraphElement(0), CRRegister.projectedValue.getter(), v14 = CRRegister.needToFinalizeTimestamps()(), (*(v5 + 8))(v7, v4), v14) || (CRRegister.projectedValue.getter(), v15 = CRRegister.needToFinalizeTimestamps()(), v13(v11, v8), v15) || (v16 = v25, CRRegister.projectedValue.getter(), v17 = CRRegister.needToFinalizeTimestamps()(), v18 = *(v26 + 8), v18(v3, v16), v17) || (CRRegister.projectedValue.getter(), v19 = CRRegister.needToFinalizeTimestamps()(), v18(v3, v16), v19) || (CRRegister.projectedValue.getter(), v20 = CRRegister.needToFinalizeTimestamps()(), v18(v3, v16), v20) || (CRRegister.projectedValue.getter(), v21 = CRRegister.needToFinalizeTimestamps()(), v18(v3, v16), v21) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR), CROrderedSet.needToFinalizeTimestamps()()) || UnknownProperties.needToFinalizeTimestamps()();
  return v22;
}

uint64_t GraphElement.finalizeTimestamps(_:)(uint64_t a1)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v42 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v17 = *(v11 + 16);
  v30 = v13;
  v31 = v11 + 16;
  v34 = v17;
  v17(v13, v16, v10);
  CRRegister.projectedValue.setter();
  v18 = *(v11 + 8);
  v32 = v11 + 8;
  v33 = v18;
  v18(v16, v10);
  v41 = type metadata accessor for GraphElement(0);
  v19 = v35;
  v20 = v38;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v21 = v39;
  (*(v39 + 16))(v36, v19, v20);
  CRRegister.projectedValue.setter();
  (*(v21 + 8))(v19, v20);
  CRRegister.projectedValue.getter();
  v22 = v40;
  CRRegister.finalizeTimestamps(_:)();
  v34(v30, v16, v10);
  CRRegister.projectedValue.setter();
  v33(v16, v10);
  v23 = v29;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v24 = v42;
  v39 = *(v42 + 16);
  v25 = v37;
  (v39)(v37, v23, v1);
  CRRegister.projectedValue.setter();
  v26 = *(v24 + 8);
  v42 = v24 + 8;
  v26(v23, v1);
  v38 = v26;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (v39)(v25, v23, v1);
  CRRegister.projectedValue.setter();
  v26(v23, v1);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v27 = v39;
  (v39)(v25, v23, v1);
  CRRegister.projectedValue.setter();
  v38(v23, v1);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v27(v25, v23, v1);
  CRRegister.projectedValue.setter();
  v38(v23, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  CROrderedSet.finalizeTimestamps(_:)();
  return MEMORY[0x1DA6CBA30](v22);
}

uint64_t GraphElement.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v186 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v169 = *(v2 - 8);
  v170 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v159 = v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v162 = v152 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v165 = v152 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v168 = v152 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v177 = *(v10 - 8);
  v178 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v176 = v152 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v187 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v173 = v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v180 = v152 - v15;
  v16 = type metadata accessor for CRCodableVersion();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v156 = v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v157 = v152 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v158 = v152 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v160 = v152 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v161 = v152 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v163 = v152 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v164 = v152 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v166 = v152 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v167 = v152 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v171 = v152 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v172 = v152 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v174 = v152 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v175 = v152 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = v152 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v152 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = v152 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v152 - v53;
  v179 = type metadata accessor for GraphElement(0);
  v185 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v55 = *(v17 + 104);
  v184 = *MEMORY[0x1E6995288];
  v181 = v17 + 104;
  v183 = v55;
  v55(v51);
  v56 = v54;
  v57 = static CRCodableVersion.== infix(_:_:)();
  v58 = v17 + 8;
  v59 = *(v17 + 8);
  v182 = v51;
  v60 = v51;
  v61 = v16;
  v59(v60, v16);
  if (v57)
  {
    return (*(v17 + 32))(v186, v56, v16);
  }

  v63 = v180;
  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v64 = *(v187 + 1);
  v154 = v12;
  v187 = (v187 + 8);
  v153 = v64;
  v64(v63, v12);
  v180 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v65 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v66 = (v65 & 1) == 0;
  if (v65)
  {
    v67 = v56;
  }

  else
  {
    v67 = v45;
  }

  if (v66)
  {
    v68 = v56;
  }

  else
  {
    v68 = v45;
  }

  v59(v67, v61);
  v71 = *(v17 + 32);
  v70 = v17 + 32;
  v69 = v71;
  (v71)(v48, v68, v61);
  (v71)(v56, v48, v61);
  v72 = v182;
  v183(v182, v184, v61);
  v73 = static CRCodableVersion.== infix(_:_:)();
  v59(v72, v61);
  v155 = v58;
  if (v73)
  {
    return (v69)(v186, v56, v61);
  }

  v74 = v59;
  v75 = v178;
  v76 = v176;
  CRRegister.projectedValue.getter();
  v152[1] = v70;
  v77 = v74;
  v78 = v174;
  CRRegister.minEncodingVersion.getter();
  v79 = v76;
  v80 = v69;
  (*(v177 + 8))(v79, v75);
  v81 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v82 = (v81 & 1) == 0;
  if (v81)
  {
    v83 = v56;
  }

  else
  {
    v83 = v78;
  }

  if (v82)
  {
    v84 = v56;
  }

  else
  {
    v84 = v78;
  }

  v77(v83, v61);
  v85 = v175;
  (v69)(v175, v84, v61);
  (v69)(v56, v85, v61);
  v183(v72, v184, v61);
  v86 = static CRCodableVersion.== infix(_:_:)();
  v77(v72, v61);
  if (v86)
  {
    goto LABEL_25;
  }

  v87 = v173;
  v88 = v154;
  CRRegister.projectedValue.getter();
  v89 = v171;
  CRRegister.minEncodingVersion.getter();
  v90 = v88;
  v91 = v182;
  v153(v87, v90);
  v92 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v93 = (v92 & 1) == 0;
  v94 = (v92 & 1) != 0 ? v56 : v89;
  v95 = v93 ? v56 : v89;
  v77(v94, v61);
  v96 = v172;
  v80(v172, v95, v61);
  v80(v56, v96, v61);
  v183(v91, v184, v61);
  v97 = static CRCodableVersion.== infix(_:_:)();
  v77(v91, v61);
  if (v97)
  {
    goto LABEL_25;
  }

  v100 = v168;
  v187 = v80;
  v101 = v170;
  CRRegister.projectedValue.getter();
  v102 = v166;
  CRRegister.minEncodingVersion.getter();
  v103 = v169 + 8;
  v104 = v101;
  v105 = v187;
  v177 = *(v169 + 8);
  (v177)(v100, v104);
  v106 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v107 = (v106 & 1) == 0;
  if (v106)
  {
    v108 = v56;
  }

  else
  {
    v108 = v102;
  }

  if (v107)
  {
    v109 = v56;
  }

  else
  {
    v109 = v102;
  }

  v77(v108, v61);
  v110 = v167;
  v105(v167, v109, v61);
  v111 = v110;
  v112 = v182;
  v105(v56, v111, v61);
  v183(v112, v184, v61);
  v113 = static CRCodableVersion.== infix(_:_:)();
  v178 = v77;
  v77(v112, v61);
  if ((v113 & 1) == 0)
  {
    v114 = v165;
    v115 = v170;
    CRRegister.projectedValue.getter();
    v116 = v163;
    CRRegister.minEncodingVersion.getter();
    v117 = v115;
    v105 = v187;
    v169 = v103;
    (v177)(v114, v117);
    v118 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v119 = (v118 & 1) == 0;
    v120 = (v118 & 1) != 0 ? v56 : v116;
    v121 = v119 ? v56 : v116;
    v122 = v178;
    v178(v120, v61);
    v123 = v164;
    v105(v164, v121, v61);
    v105(v56, v123, v61);
    v183(v112, v184, v61);
    v124 = static CRCodableVersion.== infix(_:_:)();
    v122(v112, v61);
    if ((v124 & 1) == 0)
    {
      v125 = v162;
      v126 = v170;
      CRRegister.projectedValue.getter();
      v127 = v160;
      CRRegister.minEncodingVersion.getter();
      v128 = v126;
      v105 = v187;
      (v177)(v125, v128);
      v129 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v130 = (v129 & 1) == 0;
      v131 = (v129 & 1) != 0 ? v56 : v127;
      v132 = v130 ? v56 : v127;
      v133 = v178;
      v178(v131, v61);
      v134 = v161;
      v105(v161, v132, v61);
      v135 = v182;
      v105(v56, v134, v61);
      v183(v135, v184, v61);
      v136 = static CRCodableVersion.== infix(_:_:)();
      v133(v135, v61);
      if ((v136 & 1) == 0)
      {
        v137 = v135;
        v138 = v159;
        v139 = v170;
        CRRegister.projectedValue.getter();
        v140 = v157;
        CRRegister.minEncodingVersion.getter();
        v141 = v139;
        v80 = v187;
        (v177)(v138, v141);
        v142 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v143 = (v142 & 1) == 0;
        if (v142)
        {
          v144 = v56;
        }

        else
        {
          v144 = v140;
        }

        if (v143)
        {
          v145 = v56;
        }

        else
        {
          v145 = v140;
        }

        v146 = v178;
        v178(v144, v61);
        v147 = v158;
        v80(v158, v145, v61);
        v80(v56, v147, v61);
        v183(v137, v184, v61);
        v148 = static CRCodableVersion.== infix(_:_:)();
        v146(v137, v61);
        if ((v148 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
          v149 = v156;
          CROrderedSet.minEncodingVersion.getter();
          v150 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v151 = v186;
          if (v150)
          {
            v146(v56, v61);
            v98 = v151;
            v99 = v149;
            return (v80)(v98, v99, v61);
          }

          v146(v149, v61);
          v98 = v151;
LABEL_26:
          v99 = v56;
          return (v80)(v98, v99, v61);
        }

LABEL_25:
        v98 = v186;
        goto LABEL_26;
      }
    }
  }

  return (v105)(v186, v56, v61);
}

uint64_t GraphElement.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = v57 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v75 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v72 = v57 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v76 = v57 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v77 = v57 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v73 = v57 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v78 = v57 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v65 = v57 - v34;
  v58 = v3;
  v59 = v20;
  CRRegister.projectedValue.getter();
  v60 = v17;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v35 = *(v15 + 8);
  v61 = v15 + 8;
  v35(v17, v14);
  v35(v20, v14);
  type metadata accessor for GraphElement(0);
  v36 = v62;
  v37 = v64;
  CRRegister.projectedValue.getter();
  v38 = v63;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v39 = *(v66 + 8);
  v39(v38, v37);
  v39(v36, v37);
  v40 = v59;
  CRRegister.projectedValue.getter();
  v41 = v60;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v35(v41, v14);
  v35(v40, v14);
  v42 = v67;
  CRRegister.projectedValue.getter();
  v43 = v68;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v44 = *(v70 + 8);
  v44(v43, v7);
  v44(v42, v7);
  CRRegister.projectedValue.getter();
  v57[1] = a1;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v44(v43, v7);
  v44(v42, v7);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v44(v43, v7);
  v44(v42, v7);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v44(v43, v7);
  v45 = v7;
  v46 = v72;
  v44(v42, v45);
  v47 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v48 = v69;
  CROrderedSet.observableDifference(from:with:)();
  v49 = type metadata accessor for CRValueObservableDifference();
  v50 = *(*(v49 - 8) + 48);
  v51 = v65;
  if (v50() == 1 && (v50)(v78, 1, v49) == 1 && (v50)(v47, 1, v49) == 1 && (v50)(v77, 1, v49) == 1 && (v50)(v76, 1, v49) == 1 && (v50)(v46, 1, v49) == 1 && (v50)(v75, 1, v49) == 1 && (v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR), (*(*(v52 - 8) + 48))(v48, 1, v52) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v53 = type metadata accessor for GraphElement.ObservableDifference(0);
    (*(*(v53 - 8) + 56))(v71, 1, 1, v53);
  }

  else
  {
    v54 = v71;
    outlined init with copy of Date?(v51, v71, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v55 = type metadata accessor for GraphElement.ObservableDifference(0);
    outlined init with copy of Date?(v78, v54 + v55[5], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v47, v54 + v55[6], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v77, v54 + v55[7], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v76, v54 + v55[8], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v46, v54 + v55[9], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v75, v54 + v55[10], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v48, v54 + v55[11], &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    (*(*(v55 - 1) + 56))(v54, 0, 1, v55);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

void GraphElement.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v33 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v14 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v21 = v20;
    v35 = v16;
    v36 = v13;
    v37 = v14;
    v33 = v7;
    v34 = v10;
    v22 = v44;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    v38 = v21;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v23 = *(v37 + 8);
    v23(v19, v22);
    v37 = type metadata accessor for GraphElement(0);
    v24 = v11;
    v25 = v36;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v43 + 8))(v25, v24);
    v26 = v35;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v23(v26, v22);
    v27 = v34;
    v28 = v42;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Double> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v29 = *(v41 + 8);
    v29(v27, v28);
    v30 = v33;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v29(v30, v28);
    v31 = v40;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v29(v31, v28);
    v32 = v39;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v29(v32, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<GraphableExpression>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR, MEMORY[0x1E6995138]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    UnknownProperties.encode(to:)();
  }
}

uint64_t GraphElement.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = type metadata accessor for UnknownProperties();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v118 = (&v101 - v6);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v113 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v108 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v101 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v112 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v115 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v127 = *(v11 - 8);
  v128 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v101 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v138 = *(v19 - 8);
  v139 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v101 - v20;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v132 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v126 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v101 - v23;
  type metadata accessor for CGRect(0);
  v25 = v24;
  v26 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v141 = 0u;
  v142 = 0u;
  CRRegister.init(wrappedValue:)();
  v27 = type metadata accessor for GraphElement(0);
  v28 = v27[5];
  *&v141 = 0;
  v29 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v125 = v28;
  v131 = v29;
  CRRegister.init(wrappedValue:)();
  v30 = v27[6];
  specialized static GraphElement.defaultVisibleRange.getter();
  *&v141 = v31;
  *(&v141 + 1) = v32;
  *&v142 = v33;
  *(&v142 + 1) = v34;
  v129 = v30;
  v134 = v26;
  v135 = v25;
  CRRegister.init(wrappedValue:)();
  v35 = v27[7];
  *&v141 = 0;
  v122 = v35;
  CRRegister.init(wrappedValue:)();
  v36 = v27[8];
  *&v141 = 0;
  v120 = v36;
  CRRegister.init(wrappedValue:)();
  v37 = v27[9];
  *&v141 = 0;
  v116 = v37;
  CRRegister.init(wrappedValue:)();
  v38 = v27[10];
  *&v141 = 0;
  v114 = v38;
  CRRegister.init(wrappedValue:)();
  v39 = v27[11];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
  v41 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953B0]);
  v42 = a1;
  v43 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953C8]);
  CROrderedSet.init()();
  v44 = v27[12];
  v45 = a2;
  UnknownProperties.init()();
  v46 = v140;
  v47 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v46)
  {

    return outlined destroy of GraphElement.Partial(v45, type metadata accessor for GraphElement);
  }

  else
  {
    v106 = v42;
    v48 = v136;
    v103 = v43;
    v104 = v41;
    v105 = v40;
    v102 = v39;
    v49 = v137;
    v101 = v44;
    v140 = v47;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v50 = v133;
      CRRegister.init(from:)();
      v52 = v138;
      v51 = v139;
      v53 = v48;
      v54 = v132;
      (*(v132 + 40))(v45, v50, v53);
    }

    else
    {
      v53 = v48;
      v54 = v132;
      v52 = v138;
      v51 = v139;
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v55 = v130;
      CRRegister.init(from:)();
      (v52[5])(v45 + v125, v55, v51);
    }

    v56 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v57 = v129;
    if (v56)
    {
      v58 = v126;
      CRRegister.init(from:)();
      (*(v54 + 40))(v45 + v57, v58, v53);
    }

    v59 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v61 = v127;
    v60 = v128;
    if (v59)
    {
      v62 = v124;
      CRRegister.init(from:)();
      (*(v61 + 40))(v45 + v122, v62, v60);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v63 = v123;
      CRRegister.init(from:)();
      (*(v61 + 40))(v45 + v120, v63, v60);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v64 = v121;
      CRRegister.init(from:)();
      (*(v61 + 40))(v45 + v116, v64, v60);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v65 = v119;
      CRRegister.init(from:)();
      (*(v127 + 40))(v45 + v114, v65, v128);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v66 = v115;
      CROrderedSet.init(from:)();
      (*(v112 + 40))(v45 + v102, v66, v49);
    }

    v68 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v137 = 0;
    v69 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v68);

    *&v141 = v69;
    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

    specialized Set._Variant.remove(_:)(0x52656C6269736976, 0xEC00000065676E61);

    specialized Set._Variant.remove(_:)(0x7265776F4C7ALL, 0xE600000000000000);

    specialized Set._Variant.remove(_:)(0x72657070557ALL, 0xE600000000000000);

    specialized Set._Variant.remove(_:)(0x6874756D697A61, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x74616E696C636E69, 0xEB000000006E6F69);

    specialized Set._Variant.remove(_:)(0x6973736572707865, 0xEB00000000736E6FLL);

    v70 = v141;
    v71 = v141 + 56;
    v72 = 1 << *(v141 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & *(v141 + 56);
    v75 = (v72 + 63) >> 6;
    v139 = (v113 + 56);

    v76 = 0;
    v138 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v77 = v76;
      if (!v74)
      {
        break;
      }

LABEL_28:
      v78 = __clz(__rbit64(v74));
      v74 &= v74 - 1;
      v79 = (*(v70 + 48) + ((v76 << 10) | (16 * v78)));
      v80 = *v79;
      v81 = v79[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v83 = v117;
        v136 = *(v117 + 48);
        v84 = v118;
        *v118 = v80;
        v84[1] = v81;
        v85 = v84;

        v86 = v137;
        AnyCRDT.init(from:)();
        v137 = v86;
        if (v86)
        {
LABEL_43:

          swift_bridgeObjectRelease_n();
          return outlined destroy of GraphElement.Partial(v45, type metadata accessor for GraphElement);
        }

        (*v139)(v85, 0, 1, v83);
        v87 = v107;
        outlined init with take of Range<AttributedString.Index>(v85, v107, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        outlined init with take of Range<AttributedString.Index>(v87, v108, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138[2] + 1, 1, v138);
        }

        v88 = v113;
        v90 = v138[2];
        v89 = v138[3];
        v91 = v108;
        if (v90 >= v89 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1, v138);
          v88 = v113;
          v138 = v93;
          v91 = v108;
        }

        v92 = v138;
        v138[2] = v90 + 1;
        outlined init with take of Range<AttributedString.Index>(v91, v92 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v90, &_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
      }

      else
      {

        v82 = v118;
        (*v139)(v118, 1, 1, v117);
        outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
      }
    }

    while (1)
    {
      v76 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v76 >= v75)
      {
        break;
      }

      v74 = *(v71 + 8 * v76);
      ++v77;
      if (v74)
      {
        goto LABEL_28;
      }
    }

    v94 = v138;
    if (v138[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
      v95 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v95 = MEMORY[0x1E69E7CC8];
    }

    v96 = v111;
    v97 = v110;
    v98 = v109;
    v99 = v101;
    v143 = v95;
    v100 = v137;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v94, 1, &v143);
    if (v100)
    {

      return outlined destroy of GraphElement.Partial(v45, type metadata accessor for GraphElement);
    }

    UnknownProperties.init(_:)();

    return (*(v97 + 40))(v45 + v99, v98, v96);
  }
}

uint64_t GraphElement.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = v83 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v103 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v97 = v83 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v96 = v83 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v95 = v83 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v108 = v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v109 = v83 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v110 = v83 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v111 = v83 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v105 = *(v29 - 8);
  v106 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v87 = v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v83 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v94 = v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v107 = v83 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v101 = *(v38 - 8);
  v39 = v101;
  MEMORY[0x1EEE9AC00](v38);
  v41 = v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = v83 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v93 = v83 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v92 = v83 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v112 = v83 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v100 = v83 - v52;
  v84 = v3;
  CRRegister.projectedValue.getter();
  v85 = a2;
  CRRegister.projectedValue.getter();
  v83[1] = a1;
  CRRegister.delta(_:from:)();
  v53 = *(v39 + 8);
  v86 = v53;
  v53(v41, v38);
  v53(v44, v38);
  type metadata accessor for GraphElement(0);
  v54 = v106;
  CRRegister.projectedValue.getter();
  v55 = v87;
  CRRegister.projectedValue.getter();
  v56 = v54;
  CRRegister.delta(_:from:)();
  v57 = *(v105 + 8);
  v57(v55, v56);
  v57(v33, v56);
  v104 = v38;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v58 = v86;
  v86(v41, v38);
  v58(v44, v38);
  v59 = v90;
  v60 = v88;
  CRRegister.projectedValue.getter();
  v61 = v89;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v62 = v103[1];
  v62(v61, v59);
  v62(v60, v59);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v62(v61, v59);
  v62(v60, v59);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v62(v61, v59);
  v62(v60, v59);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v62(v61, v59);
  v63 = v107;
  v62(v60, v59);
  v64 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v65 = v64;
  CROrderedSet.delta(_:from:)();
  v66 = *(v101 + 48);
  v67 = v100;
  if (v66() == 1 && (*(v105 + 48))(v63, 1, v106) == 1 && (v66)(v112, 1, v104) == 1 && (v68 = v103[6], v68(v111, 1, v59) == 1) && v68(v110, 1, v59) == 1 && v68(v109, 1, v59) == 1 && v68(v108, 1, v59) == 1 && (v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR), (*(*(v69 - 8) + 48))(v65, 1, v69) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v70 = type metadata accessor for GraphElement.Partial(0);
    (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
  }

  else
  {
    outlined init with copy of Date?(v67, v92, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v63, v94, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v112, v93, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v111, v95, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    outlined init with copy of Date?(v110, v96, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    outlined init with copy of Date?(v109, v97, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    outlined init with copy of Date?(v108, v98, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    outlined init with copy of Date?(v65, v99, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    v71 = *(v101 + 56);
    v72 = v91;
    v73 = v104;
    v71(v91, 1, 1, v104);
    v74 = type metadata accessor for GraphElement.Partial(0);
    v101 = v74[5];
    (*(v105 + 56))(v72 + v101, 1, 1, v106);
    v75 = v74[6];
    v71(v72 + v75, 1, 1, v73);
    v76 = v74[7];
    v77 = v103[7];
    v77(v72 + v76, 1, 1, v59);
    v106 = v74[8];
    v77(v72 + v106, 1, 1, v59);
    v78 = v74[9];
    v77(v72 + v78, 1, 1, v59);
    v79 = v74[10];
    v77(v72 + v79, 1, 1, v59);
    v80 = v74[11];
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
    (*(*(v81 - 8) + 56))(v72 + v80, 1, 1, v81);
    outlined assign with take of UUID?(v92, v72, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v94, v72 + v101, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v93, v72 + v75, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v95, v72 + v76, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    outlined assign with take of UUID?(v96, v72 + v106, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    outlined assign with take of UUID?(v97, v72 + v78, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v65 = v102;
    outlined assign with take of UUID?(v98, v72 + v79, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    outlined assign with take of UUID?(v99, v72 + v80, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v63 = v107;
    (*(*(v74 - 1) + 56))(v72, 0, 1, v74);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v108, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
}

BOOL GraphElement.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v90 = &v87 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v87 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v103 = *(v14 - 8);
  v104 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v87 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v87 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v108 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v106 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v87 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  MEMORY[0x1EEE9AC00](v36);
  v97 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v87 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v87 - v42;
  v44 = a1;
  v46 = v45;
  outlined init with copy of Date?(a1, v35, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v105 = *(v46 + 48);
  v47 = v105(v35, 1, v36);
  v98 = v46;
  if (v47 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    (*(v46 + 32))(v43, v35, v36);
    CRRegister.projectedValue.getter();
    v48 = CRRegister.canMerge(delta:)();
    v49 = *(v46 + 8);
    v49(v40, v36);
    v49(v43, v36);
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  v50 = type metadata accessor for GraphElement.Partial(0);
  v109 = v44;
  v110 = v50;
  outlined init with copy of Date?(v44 + *(v50 + 20), v26, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v51 = v108;
  if ((*(v108 + 48))(v26, 1, v27) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v52 = v100;
    (*(v51 + 32))(v100, v26, v27);
    type metadata accessor for GraphElement(0);
    v53 = v101;
    CRRegister.projectedValue.getter();
    v54 = CRRegister.canMerge(delta:)();
    v55 = *(v51 + 8);
    v55(v53, v27);
    v55(v52, v27);
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  v56 = v106;
  outlined init with copy of Date?(v109 + v110[6], v106, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v105(v56, 1, v36) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v57 = v107;
  }

  else
  {
    v59 = v97;
    v58 = v98;
    (*(v98 + 32))(v97, v56, v36);
    type metadata accessor for GraphElement(0);
    CRRegister.projectedValue.getter();
    v60 = CRRegister.canMerge(delta:)();
    v61 = *(v58 + 8);
    v61(v40, v36);
    v61(v59, v36);
    v57 = v107;
    if ((v60 & 1) == 0)
    {
      return 0;
    }
  }

  v62 = v102;
  outlined init with copy of Date?(v109 + v110[7], v102, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  v64 = v103;
  v63 = v104;
  v65 = *(v103 + 48);
  if (v65(v62, 1, v104) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  else
  {
    v66 = v95;
    (*(v64 + 32))(v95, v62, v63);
    type metadata accessor for GraphElement(0);
    CRRegister.projectedValue.getter();
    v67 = CRRegister.canMerge(delta:)();
    v68 = *(v64 + 8);
    v68(v57, v63);
    v68(v66, v63);
    if ((v67 & 1) == 0)
    {
      return 0;
    }
  }

  v69 = v99;
  outlined init with copy of Date?(v109 + v110[8], v99, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v65(v69, 1, v63) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  else
  {
    v70 = v91;
    (*(v64 + 32))(v91, v69, v63);
    type metadata accessor for GraphElement(0);
    CRRegister.projectedValue.getter();
    v71 = CRRegister.canMerge(delta:)();
    v72 = *(v64 + 8);
    v72(v57, v63);
    v72(v70, v63);
    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

  v73 = v96;
  outlined init with copy of Date?(v109 + v110[9], v96, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v65(v73, 1, v63) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  else
  {
    v74 = v89;
    (*(v64 + 32))(v89, v73, v63);
    type metadata accessor for GraphElement(0);
    CRRegister.projectedValue.getter();
    v75 = CRRegister.canMerge(delta:)();
    v76 = *(v64 + 8);
    v76(v57, v63);
    v76(v74, v63);
    if ((v75 & 1) == 0)
    {
      return 0;
    }
  }

  v77 = v92;
  outlined init with copy of Date?(v109 + v110[10], v92, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v65(v77, 1, v63) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v79 = v93;
    v78 = v94;
  }

  else
  {
    v80 = v88;
    (*(v64 + 32))(v88, v77, v63);
    type metadata accessor for GraphElement(0);
    CRRegister.projectedValue.getter();
    v81 = CRRegister.canMerge(delta:)();
    v82 = *(v64 + 8);
    v82(v57, v63);
    v82(v80, v63);
    v79 = v93;
    v78 = v94;
    if ((v81 & 1) == 0)
    {
      return 0;
    }
  }

  v83 = v90;
  outlined init with copy of Date?(v109 + v110[11], v90, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  if ((*(v79 + 48))(v83, 1, v78) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    return 1;
  }

  v84 = v87;
  (*(v79 + 32))(v87, v83, v78);
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v85 = CROrderedSet.canMerge(delta:)();
  (*(v79 + 8))(v84, v78);
  return (v85 & 1) != 0;
}

BOOL GraphElement.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v115 = v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
  v116 = *(v5 - 8);
  v117 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v91 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v113 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v111 = v91 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v110 = v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v108 = v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v114 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v101 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = v91 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v99 = v91 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v118 = v91 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v112 = v91 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v98 = v91 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v91 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v105 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v96 = v91 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v102 = v91 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v106 = v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v91 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v107 = v91 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v104 = v91 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v103 = v91 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = v91 - v50;
  v52 = GraphElement.canMerge(delta:)(a1);
  if (v52)
  {
    v95 = v52;
    v92 = v7;
    v119 = v1;
    v120 = a1;
    outlined init with copy of Date?(a1, v41, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v53 = v43 + 48;
    v93 = *(v43 + 48);
    v54 = v93(v41, 1, v42);
    v94 = v43;
    if (v54 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v43 + 32))(v51, v41, v42);
      v55 = v103;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v43 + 16))(v104, v55, v42);
      CRRegister.projectedValue.setter();
      v56 = *(v43 + 8);
      v56(v55, v42);
      v56(v51, v42);
    }

    v109 = type metadata accessor for GraphElement.Partial(0);
    v57 = v120;
    outlined init with copy of Date?(v120 + *(v109 + 20), v30, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v58 = v105;
    if ((*(v105 + 48))(v30, 1, v31) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v58 + 32))(v102, v30, v31);
      type metadata accessor for GraphElement(0);
      v91[1] = v53;
      v59 = v96;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v58 + 16))(v97, v59, v31);
      CRRegister.projectedValue.setter();
      v60 = *(v58 + 8);
      v60(v59, v31);
      v60(v102, v31);
    }

    v61 = v114;
    v62 = v94;
    v63 = v106;
    v64 = v109;
    outlined init with copy of Date?(v57 + *(v109 + 24), v106, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v93(v63, 1, v42) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v62 + 32))(v107, v63, v42);
      type metadata accessor for GraphElement(0);
      v65 = v103;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v62 + 16))(v104, v65, v42);
      CRRegister.projectedValue.setter();
      v66 = *(v62 + 8);
      v66(v65, v42);
      v66(v107, v42);
    }

    v67 = v112;
    v68 = v108;
    outlined init with copy of Date?(v120 + v64[7], v108, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v69 = v61[6];
    if ((v69)(v68, 1, v16) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v70 = v61[4];
      v114 = v69;
      v71 = v98;
      v70(v98, v68, v16);
      type metadata accessor for GraphElement(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (v61[2])(v118, v67, v16);
      CRRegister.projectedValue.setter();
      v72 = v61[1];
      v72(v67, v16);
      v73 = v71;
      v69 = v114;
      v72(v73, v16);
    }

    v74 = v110;
    v75 = v120;
    outlined init with copy of Date?(v120 + v64[8], v110, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    if ((v69)(v74, 1, v16) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v76 = v99;
      (v61[4])(v99, v74, v16);
      type metadata accessor for GraphElement(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (v61[2])(v118, v67, v16);
      v75 = v120;
      CRRegister.projectedValue.setter();
      v77 = v61[1];
      v77(v67, v16);
      v78 = v76;
      v64 = v109;
      v77(v78, v16);
    }

    v79 = v111;
    outlined init with copy of Date?(v75 + v64[9], v111, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    if ((v69)(v79, 1, v16) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v80 = v100;
      (v61[4])(v100, v79, v16);
      type metadata accessor for GraphElement(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (v61[2])(v118, v67, v16);
      v75 = v120;
      CRRegister.projectedValue.setter();
      v81 = v61[1];
      v81(v67, v16);
      v82 = v80;
      v64 = v109;
      v81(v82, v16);
    }

    v83 = v116;
    v84 = v113;
    outlined init with copy of Date?(v75 + v64[10], v113, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    if ((v69)(v84, 1, v16) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v85 = v101;
      (v61[4])(v101, v84, v16);
      type metadata accessor for GraphElement(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (v61[2])(v118, v67, v16);
      v75 = v120;
      CRRegister.projectedValue.setter();
      v86 = v61[1];
      v86(v67, v16);
      v86(v85, v16);
    }

    v87 = v117;
    v88 = v115;
    outlined init with copy of Date?(v75 + v64[11], v115, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    if ((*(v83 + 48))(v88, 1, v87) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v88, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    }

    else
    {
      v89 = v92;
      (*(v83 + 32))(v92, v88, v87);
      type metadata accessor for GraphElement(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
      CROrderedSet.merge(delta:)();
      (*(v83 + 8))(v89, v87);
    }

    LOBYTE(v52) = v95;
  }

  return v52;
}

uint64_t protocol witness for CRDT.context.getter in conformance GraphElement(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement, &protocol conformance descriptor for GraphElement);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance GraphElement(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  GraphElement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized static GraphElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v37 - v19;
  v43 = a1;
  CRRegister.projectedValue.getter();
  v44 = a2;
  CRRegister.projectedValue.getter();
  v21 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v15 + 8);
  v22(v17, v14);
  v22(v20, v14);
  if ((a1 & 1) != 0
    && (v37[1] = v21, v23 = type metadata accessor for GraphElement(0), CRRegister.projectedValue.getter(), v37[2] = v23, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]), v24 = dispatch thunk of static Equatable.== infix(_:_:)(), v25 = *(v42 + 8), v25(v10, v8), v25(v13, v8), (v24 & 1) != 0)
    && (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v26 = dispatch thunk of static Equatable.== infix(_:_:)(), v22(v17, v14), v22(v20, v14), (v26 & 1) != 0)
    && (v27 = v38, v28 = v41, CRRegister.projectedValue.getter(), v29 = v39, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Double> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR, MEMORY[0x1E6995090]), v30 = dispatch thunk of static Equatable.== infix(_:_:)(), v31 = *(v40 + 8), v31(v29, v28), v31(v27, v28), (v30 & 1) != 0)
    && (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v32 = dispatch thunk of static Equatable.== infix(_:_:)(), v31(v29, v28), v31(v27, v28), (v32 & 1) != 0)
    && (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v33 = dispatch thunk of static Equatable.== infix(_:_:)(), v31(v29, v28), v31(v27, v28), (v33 & 1) != 0)
    && (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v34 = dispatch thunk of static Equatable.== infix(_:_:)(), v31(v29, v28), v31(v27, v28), (v34 & 1) != 0)
    && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<GraphableExpression>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR, MEMORY[0x1E6995148]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0))
  {
    v35 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

void specialized GraphElement.renderFromPrerenderCache<A>(in:id:capsule:options:)(CGContext *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = *(static GraphCanvasElementRenderedImageCache.shared + 16);
  v11 = *(v7 + 16);
  v11(v9, a2, v6);
  v12 = type metadata accessor for KeyPathWrapper(0);
  v13 = objc_allocWithZone(v12);
  v11(&v13[OBJC_IVAR____TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper_path], v9, v6);
  v28.receiver = v13;
  v28.super_class = v12;
  v14 = [(CGContext *)&v28 init];
  (*(v7 + 8))(v9, v6);
  v15 = [v10 objectForKey_];

  if (v15)
  {
    v27 = 0;
    if (*(a3 + 1))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v18 = swift_allocObject();
    *(v18 + 16) = &v27;
    *(v18 + 24) = v15;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in GraphElement.image<A>(size:darkMode:isRTL:in:document:);
    *(v19 + 24) = v18;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_99;
    v20 = _Block_copy(aBlock);

    v21 = v15;

    [v17 performAsCurrentTraitCollection_];
    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      __break(1u);
    }

    else if (v27)
    {
      v22 = v27;
      GraphElement.renderImage(_:in:)(v22, a1);

      v23 = v27;
    }

    else
    {

      v24 = v27;
    }
  }
}

uint64_t specialized GraphElement.image<A>(size:darkMode:isRTL:in:document:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  *(v9 + 120) = a6;
  *(v9 + 128) = v8;
  *(v9 + 104) = a4;
  *(v9 + 112) = a5;
  *(v9 + 88) = a2;
  *(v9 + 96) = a3;
  *(v9 + 160) = a1;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  return MEMORY[0x1EEE6DFA0](specialized GraphElement.image<A>(size:darkMode:isRTL:in:document:), 0, 0);
}

uint64_t specialized GraphElement.image<A>(size:darkMode:isRTL:in:document:)()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v0[8] = 0;
  v0[17] = GraphElement.imageRenderingCalculateGraph<A>(in:document:)(v4, v5, v2, v3, v1);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = specialized GraphElement.image<A>(size:darkMode:isRTL:in:document:);
  v7.n128_u64[0] = v0[9];
  v8.n128_u64[0] = v0[10];

  return MEMORY[0x1EEDF1D18](v7, v8);
}

uint64_t specialized GraphElement.image<A>(size:darkMode:isRTL:in:document:)(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](specialized GraphElement.image<A>(size:darkMode:isRTL:in:document:), 0, 0);
}

void specialized GraphElement.image<A>(size:darkMode:isRTL:in:document:)()
{
  v1 = v0[19];
  if (*(v0 + 160))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v4 = swift_allocObject();
  *(v4 + 16) = v0 + 8;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in GraphElement.image<A>(size:darkMode:isRTL:in:document:);
  *(v5 + 24) = v4;
  v0[6] = partial apply for thunk for @callee_guaranteed () -> ();
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_9;
  v6 = _Block_copy(v0 + 2);
  v7 = v1;

  [v3 performAsCurrentTraitCollection_];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[8];

    v10 = v0[1];

    v10(v9);
  }
}

void specialized static GraphElement.defaultVisibleRange.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x1DA6CCED0](0xD000000000000021, 0x80000001D4083C40);
  [v1 doubleForKey_];

  v3 = [v0 standardUserDefaults];
  v4 = MEMORY[0x1DA6CCED0](0xD000000000000021, 0x80000001D4083C70);
  [v3 doubleForKey_];

  v5 = [v0 standardUserDefaults];
  v6 = MEMORY[0x1DA6CCED0](0xD000000000000022, 0x80000001D4083CA0);
  [v5 doubleForKey_];

  v7 = [v0 standardUserDefaults];
  v8 = MEMORY[0x1DA6CCED0](0xD000000000000022, 0x80000001D4083CD0);
  [v7 doubleForKey_];
}

uint64_t outlined init with copy of GraphElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GraphElement.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of GraphElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GraphExpressionType and conformance GraphExpressionType()
{
  result = lazy protocol witness table cache variable for type GraphExpressionType and conformance GraphExpressionType;
  if (!lazy protocol witness table cache variable for type GraphExpressionType and conformance GraphExpressionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphExpressionType and conformance GraphExpressionType);
  }

  return result;
}

void type metadata completion function for GraphElement(uint64_t a1)
{
  type metadata accessor for CRRegister<CGRect>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRRegister<CGFloat>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CRRegister<Double>();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CROrderedSet<Ref<GraphableExpression>>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UnknownProperties();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for CRRegister<Double>()
{
  if (!lazy cache variable for type metadata for CRRegister<Double>)
  {
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<Double>);
    }
  }
}

void type metadata accessor for CROrderedSet<Ref<GraphableExpression>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CROrderedSet<Ref<GraphableExpression>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953B0]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953C8]);
    v1 = type metadata accessor for CROrderedSet();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CROrderedSet<Ref<GraphableExpression>>);
    }
  }
}

void type metadata completion function for GraphElement.ObservableDifference(uint64_t a1)
{
  type metadata accessor for CRValueObservableDifference?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<Ref<GraphableExpression>>.ObservableDifference?, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for GraphElement.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Double>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySd_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySd_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<Ref<GraphableExpression>>.MutatingAction?, &_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for GraphElement.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Double>?, &_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<Ref<GraphableExpression>>.MergeableDelta?, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void partial apply for closure #1 in GraphElement.image<A>(size:darkMode:isRTL:in:document:)()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) CGImage];
  v3 = *v1;
  *v1 = v2;
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

void outlined consume of SortableCalculateExpression?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAFyAA12ControlGroupVyAFyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AZtGG_AA7DividerVtGSg_AFyAV_A2_tGSgA4vA4MenuVyAuFyAV_AvNyARGtGGSgAVSgA13_A13_AFyA2__AVtGSgA13_A15_AFyA2__A13_A13_A13_A13_A13_A13_tGSgA2_AVQP_Tt1g5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Date?(*a1, a2, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSg_ACyAQ_AYtGSgA4qA4MenuVyApCyAQ_AqIyAMGtGGSgAQSgA8_A8_ACyAY_AQtGSgA8_A10_ACyAY_A8_A8_A8_A8_A8_A8_tGSgAyQtMd, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSg_ACyAQ_AYtGSgA4qA4MenuVyApCyAQ_AqIyAMGtGGSgAQSgA8_A8_ACyAY_AQtGSgA8_A10_ACyAY_A8_A8_A8_A8_A8_A8_tGSgAyQtMR);
  outlined init with copy of Date?(a1[1], a2 + v4[12], &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMR);
  v5 = v4[16];
  v6 = a1[2];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR);
  v14 = *(*(v7 - 8) + 16);
  (v14)((v7 - 8), a2 + v5, v6, v7);
  v14(a2 + v4[20], a1[3], v7);
  v14(a2 + v4[24], a1[4], v7);
  v14(a2 + v4[28], a1[5], v7);
  outlined init with copy of Date?(a1[6], a2 + v4[32], &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMd, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMR);
  outlined init with copy of Date?(a1[7], a2 + v4[36], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined init with copy of Date?(a1[8], a2 + v4[40], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined init with copy of Date?(a1[9], a2 + v4[44], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined init with copy of Date?(a1[10], a2 + v4[48], &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  outlined init with copy of Date?(a1[11], a2 + v4[52], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined init with copy of Date?(a1[12], a2 + v4[56], &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  outlined init with copy of Date?(a1[13], a2 + v4[60], &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMR);
  v8 = v4[64];
  v9 = a1[14];
  v10 = type metadata accessor for Divider();
  (*(*(v10 - 8) + 16))(a2 + v8, v9, v10);
  v11 = a1[15];
  v12 = a2 + v4[68];

  return (v14)(v12, v11, v7);
}

uint64_t protocol witness for ButtonStyle.makeBody(configuration:) in conformance MiniButtonStyle()
{
  v0 = type metadata accessor for LiftHoverEffect();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGMR) + 36)];
  v8 = v12[1];
  *v7 = v12[0];
  *(v7 + 1) = v8;
  *(v7 + 2) = v12[2];
  v9 = static VerticalAlignment.firstTextBaseline.getter();
  v10 = &v6[*(v4 + 36)];
  *v10 = v9;
  v10[1] = closure #1 in MiniObjectButtons.menuLabel.getter;
  v10[2] = 0;
  static CustomHoverEffect<>.lift.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type LiftHoverEffect and conformance LiftHoverEffect, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v1 + 8))(v3, v0);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MiniObjectButtons(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MiniObjectButtons(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *closure #1 in MiniObjectButtons.showingGraphableExpressionsPopoverBinding.getter@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  if (v7 != 1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(v5 + 80) ^ 1;
LABEL_5:
    *a2 = v6 & 1;
    return result;
  }

  type metadata accessor for MiniPopoverState();
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type MiniPopoverState and conformance MiniPopoverState, type metadata accessor for MiniPopoverState, &protocol conformance descriptor for MiniPopoverState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void *closure #1 in MiniObjectButtons.showingGraphViewportPopoverBinding.getter@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  if (v7 != 1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(v5 + 80) ^ 1;
LABEL_5:
    *a2 = v6 & 1;
    return result;
  }

  type metadata accessor for MiniPopoverState();
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type MiniPopoverState and conformance MiniPopoverState, type metadata accessor for MiniPopoverState, &protocol conformance descriptor for MiniPopoverState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in MiniObjectButtons.graphSettingsButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = type metadata accessor for PopoverAttachmentAnchor();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = (v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentM0VGAA14_PaddingLayoutVGAA01_h9ShapeKindM0VyAA6CircleVGGG_8PaperKit04MinifE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentM0VGAA14_PaddingLayoutVGAA01_h9ShapeKindM0VyAA6CircleVGGG_8PaperKit04MinifE0VQo_MR);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = v33 - v11;
  v12 = type metadata accessor for ButtonRole();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  outlined init with copy of MiniObjectButtons(a1, &v46);
  v13 = swift_allocObject();
  outlined init with take of MiniObjectButtons(&v46, v13 + 16);
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  Button.init(role:action:label:)();
  v14 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMR, MEMORY[0x1E697D680]);
  v15 = lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v8 + 8))(v10, v7);
  outlined init with copy of MiniObjectButtons(a1, &v46);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  outlined init with take of MiniObjectButtons(&v46, v17 + 32);
  outlined init with copy of MiniObjectButtons(a1, &v46);
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  outlined init with take of MiniObjectButtons(&v46, v20 + 32);
  Binding.init(get:set:)();
  v33[1] = v47;
  outlined init with copy of MiniObjectButtons(a1, &v46);
  v21 = swift_allocObject();
  outlined init with take of MiniObjectButtons(&v46, v21 + 16);
  v22 = static Anchor.Source<A>.bounds.getter();
  v23 = v35;
  *v35 = v22;
  v24 = v36;
  v25 = v37;
  (*(v36 + 104))(v23, *MEMORY[0x1E697C8C0], v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationF0VFQOyAcAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit020GraphableExpressionsC0VAA16_FlexFrameLayoutVG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationF0VFQOyAcAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit020GraphableExpressionsC0VAA16_FlexFrameLayoutVG_Qo__Qo_MR);
  v42 = v7;
  v43 = &type metadata for MiniButtonStyle;
  v44 = v14;
  v45 = v15;
  swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit020GraphableExpressionsC0VAA16_FlexFrameLayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit020GraphableExpressionsC0VAA16_FlexFrameLayoutVG_Qo_MR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMR);
  v28 = lazy protocol witness table accessor for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v42 = v27;
  v43 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v26;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v38;
  v31 = v34;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v24 + 8))(v23, v25);
  return (*(v39 + 8))(v31, v30);
}

double closure #1 in closure #1 in MiniObjectButtons.graphSettingsButton.getter(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

uint64_t closure #2 in closure #1 in MiniObjectButtons.graphSettingsButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = *(a1 + 72);
  swift_getKeyPath();
  v33 = v10;
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__grapableExpressionsState);
  swift_getKeyPath();
  v33 = v11;
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = Image.init(systemName:)();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Font.Design();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  v33 = v12;
  v34 = KeyPath;
  v35 = v14;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v36._object = 0x80000001D4083D60;
  v16._countAndFlagsBits = 0x6553206870617247;
  v16._object = 0xEE0073676E697474;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000002ALL;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, paperKitBundle, v18, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  v19 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  outlined init with copy of Date?(v9, a2, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMR) + 36);
  *v28 = v19;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.interaction.getter();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  *v29 = 0;
  return result;
}

uint64_t closure #3 in closure #1 in MiniObjectButtons.graphSettingsButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v17 = type metadata accessor for PresentationAdaptation();
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit020GraphableExpressionsC0VAA16_FlexFrameLayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit020GraphableExpressionsC0VAA16_FlexFrameLayoutVG_Qo_MR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = *(a1 + 72);
  swift_getKeyPath();
  *&v26[0] = v9;
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *&v18 = *(v9 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__grapableExpressionsState);
  type metadata accessor for GraphableExpressionsState(0);

  State.init(wrappedValue:)();
  v10 = v26[0];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v18 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMR);
  v12 = lazy protocol witness table accessor for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  View.allowsSecureDrawing()();
  v26[4] = v22;
  v26[5] = v23;
  v26[6] = v24;
  v26[7] = v25;
  v26[0] = v18;
  v26[1] = v19;
  v26[2] = v20;
  v26[3] = v21;
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMR);
  static PresentationAdaptation.popover.getter();
  *&v18 = v11;
  *(&v18 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  View.presentationCompactAdaptation(_:)();
  (*(v15 + 8))(v4, v17);
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in MiniObjectButtons.graphViewportButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for PopoverAttachmentAnchor();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGAA023AccessibilityAttachmentJ0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGAA023AccessibilityAttachmentJ0VGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_h9ShapeKindM0VyAA6CircleVGGAA023AccessibilityAttachmentM0VGG_8PaperKit04MinifE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_h9ShapeKindM0VyAA6CircleVGGAA023AccessibilityAttachmentM0VGG_8PaperKit04MinifE0VQo_MR);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v29 - v11;
  v12 = type metadata accessor for ButtonRole();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  outlined init with copy of MiniObjectButtons(a1, &v41);
  v13 = swift_allocObject();
  outlined init with take of MiniObjectButtons(&v41, v13 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGAA023AccessibilityAttachmentI0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(role:action:label:)();
  v14 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGAA023AccessibilityAttachmentJ0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGAA023AccessibilityAttachmentJ0VGGMR, MEMORY[0x1E697D680]);
  v15 = lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
  v29 = v7;
  View.buttonStyle<A>(_:)();
  (*(v8 + 8))(v10, v7);
  outlined init with copy of MiniObjectButtons(a1, &v41);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  outlined init with take of MiniObjectButtons(&v41, v17 + 32);
  outlined init with copy of MiniObjectButtons(a1, &v41);
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  outlined init with take of MiniObjectButtons(&v41, v20 + 32);
  Binding.init(get:set:)();
  outlined init with copy of MiniObjectButtons(a1, &v41);
  v21 = swift_allocObject();
  outlined init with take of MiniObjectButtons(&v41, v21 + 16);
  v22 = static Anchor.Source<A>.bounds.getter();
  v23 = v31;
  *v31 = v22;
  v24 = v33;
  v25 = v35;
  (*(v33 + 104))(v23, *MEMORY[0x1E697C8C0], v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE19allowsSecureDrawingQryFQOy09CalculateB00m11GraphBoundsE0V_Qo__Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE19allowsSecureDrawingQryFQOy09CalculateB00m11GraphBoundsE0V_Qo__Qo_AA14_PaddingLayoutVGMR);
  v37 = v29;
  v38 = &type metadata for MiniButtonStyle;
  v39 = v14;
  v40 = v15;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v26 = v32;
  v27 = v30;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v24 + 8))(v23, v25);
  return (*(v34 + 8))(v27, v26);
}

double closure #1 in closure #1 in MiniObjectButtons.graphViewportButton.getter(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

uint64_t closure #2 in closure #1 in MiniObjectButtons.graphViewportButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v27 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - v4;
  v6 = Image.init(systemName:)();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Font.Design();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  v10 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v28 = 0;
  v19 = &v5[*(v3 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.interaction.getter();
  *&v29 = v6;
  *(&v29 + 1) = KeyPath;
  *&v30 = v8;
  BYTE8(v30) = v10;
  *&v31 = v12;
  *(&v31 + 1) = v14;
  *&v32 = v16;
  *(&v32 + 1) = v18;
  v20 = v28;
  v33 = v28;
  *v19 = 0;
  v5[64] = v20;
  v21 = v32;
  *(v5 + 2) = v31;
  *(v5 + 3) = v21;
  v22 = v30;
  *v5 = v29;
  *(v5 + 1) = v22;
  v34[0] = v6;
  v34[1] = KeyPath;
  v34[2] = v8;
  v35 = v10;
  v36 = v12;
  v37 = v14;
  v38 = v16;
  v39 = v18;
  v40 = v20;
  outlined init with copy of Date?(&v29, v27, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMR);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v41._object = 0x80000001D4083D30;
  v23._countAndFlagsBits = 0x6956206870617247;
  v23._object = 0xEE0074726F707765;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v41._countAndFlagsBits = 0xD00000000000002ALL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v27[0] = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, paperKitBundle, v25, v41);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR);
}

uint64_t closure #3 in closure #1 in MiniObjectButtons.graphViewportButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for PresentationAdaptation();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11CalculateUI0A5GraphC9ViewStateVSgMd, &_s11CalculateUI0A5GraphC9ViewStateVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v34 - v7;
  v8 = type metadata accessor for CalculateGraphBoundsView();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy09CalculateB00g11GraphBoundsC0V_Qo_Md, &_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy09CalculateB00g11GraphBoundsC0V_Qo_MR);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationF0VFQOyAcAE19allowsSecureDrawingQryFQOy09CalculateB00k11GraphBoundsC0V_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationF0VFQOyAcAE19allowsSecureDrawingQryFQOy09CalculateB00k11GraphBoundsC0V_Qo__Qo_MR);
  v15 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v34 - v16;
  v18 = *(a1 + 72);
  swift_getKeyPath();
  v42 = v18;
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = GraphableExpressionsState.calculateGraph.getter();

  if (!v19)
  {
    type metadata accessor for CalculateGraph();
    v20 = type metadata accessor for CalculateGraph.ViewState();
    (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
    static Animation.easeIn(duration:)();
    CalculateGraph.__allocating_init(graphExpressions:state:animation:isSelected:)();
  }

  CalculateGraphBoundsView.init(viewModel:)();
  v21 = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type CalculateGraphBoundsView and conformance CalculateGraphBoundsView, MEMORY[0x1E69922C8], MEMORY[0x1E69922C0]);
  View.allowsSecureDrawing()();
  (*(v9 + 8))(v11, v8);
  static PresentationAdaptation.popover.getter();
  v42 = v8;
  v43 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v38;
  View.presentationCompactAdaptation(_:)();
  (*(v39 + 8))(v5, v40);
  (*(v37 + 8))(v14, v22);
  LOBYTE(v22) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v41;
  (*(v15 + 32))(v41, v17, v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE19allowsSecureDrawingQryFQOy09CalculateB00m11GraphBoundsE0V_Qo__Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE19allowsSecureDrawingQryFQOy09CalculateB00m11GraphBoundsE0V_Qo__Qo_AA14_PaddingLayoutVGMR);
  v33 = v31 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

uint64_t closure #2 in MiniObjectButtons.duplicateButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-v3];
  v5 = Image.init(systemName:)();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  v9 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v24 = 0;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.interaction.getter();
  *&v25 = v5;
  *(&v25 + 1) = KeyPath;
  *&v26 = v7;
  BYTE8(v26) = v9;
  *&v27 = v11;
  *(&v27 + 1) = v13;
  *&v28 = v15;
  *(&v28 + 1) = v17;
  v19 = v24;
  v29 = v24;
  *v18 = 0;
  *(a1 + 64) = v19;
  v20 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v20;
  v21 = v26;
  *a1 = v25;
  *(a1 + 16) = v21;
  v30[0] = v5;
  v30[1] = KeyPath;
  v30[2] = v7;
  v31 = v9;
  v32 = v11;
  v33 = v13;
  v34 = v15;
  v35 = v17;
  v36 = v19;
  outlined init with copy of Date?(&v25, v23, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMR);
}

uint64_t closure #1 in MiniObjectButtons.deleteButton.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  static ButtonRole.destructive.getter();
  v9 = type metadata accessor for ButtonRole();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  outlined init with copy of MiniObjectButtons(a1, v12);
  v10 = swift_allocObject();
  outlined init with take of MiniObjectButtons(v12, v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
  Button.init(role:action:label:)();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAA4FontVSgGGAA023AccessibilityAttachmentJ0VGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
  View.buttonStyle<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #2 in closure #1 in MiniObjectButtons.deleteButton.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = Image.init(systemName:)();
  v8 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v12 = swift_getKeyPath();
  v31 = v7;
  v32 = KeyPath;
  v33 = v8;
  v34 = v12;
  v35 = v11;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v36._object = 0x80000001D40843D0;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0x6574656C6544;
  v15._object = 0x80000001D40843B0;
  v36._countAndFlagsBits = 0xD000000000000027;
  v15._countAndFlagsBits = 0xD000000000000016;
  v14._object = 0xE600000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v13, paperKitBundle, v14, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v29;
  outlined init with copy of Date?(v6, v29, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMR) + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  v27 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.interaction.getter();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  *v27 = 0;
  return result;
}

uint64_t MiniObjectButtons.menuLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v35 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v35 - v5);
  v40 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = v44;
  v8 = v45;
  v36 = v46;
  v9 = v47;
  v38 = v49;
  v39 = v48;
  v37 = static VerticalAlignment.firstTextBaseline.getter();
  LOBYTE(v60[0]) = v8;
  LOBYTE(v52) = v9;
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v43 = 0;
  v22 = *(v4 + 36);
  v35[1] = v4;
  v23 = v6 + v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.interaction.getter();
  v25 = v39;
  v24 = v40;
  *&v52 = v40;
  *(&v52 + 1) = v7;
  LOBYTE(v53) = v8;
  *(&v53 + 1) = *v51;
  DWORD1(v53) = *&v51[3];
  v27 = v36;
  v26 = v37;
  *(&v53 + 1) = v36;
  LOBYTE(v54) = v9;
  *(&v54 + 1) = *v50;
  DWORD1(v54) = *&v50[3];
  v28 = v38;
  *(&v54 + 1) = v39;
  *&v55 = v38;
  *(&v55 + 1) = v37;
  *&v56 = closure #1 in MiniObjectButtons.menuLabel.getter;
  *(&v56 + 1) = 0;
  *&v57 = KeyPath;
  *(&v57 + 1) = v11;
  LOBYTE(v58) = v13;
  *(&v58 + 1) = v15;
  *&v59[0] = v17;
  *(&v59[0] + 1) = v19;
  *&v59[1] = v21;
  v29 = v43;
  BYTE8(v59[1]) = v43;
  *v23 = 0;
  v30 = v57;
  v31 = v59[0];
  v6[6] = v58;
  v6[7] = v31;
  *(v6 + 121) = *(v59 + 9);
  v32 = v55;
  v6[2] = v54;
  v6[3] = v32;
  v6[4] = v56;
  v6[5] = v30;
  v33 = v53;
  *v6 = v52;
  v6[1] = v33;
  v60[0] = v24;
  v60[1] = v7;
  v61 = v8;
  *v62 = *v51;
  *&v62[3] = *&v51[3];
  v63 = v27;
  v64 = v9;
  *v65 = *v50;
  *&v65[3] = *&v50[3];
  v66 = v25;
  v67 = v28;
  v68 = v26;
  v69 = closure #1 in MiniObjectButtons.menuLabel.getter;
  v70 = 0;
  v71 = KeyPath;
  v72 = v11;
  v73 = v13;
  v74 = v15;
  v75 = v17;
  v76 = v19;
  v77 = v21;
  v78 = v29;
  outlined init with copy of Date?(&v52, &v42, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
  View.buttonStyle<A>(_:)();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMR);
}

uint64_t MiniObjectButtons.expandedMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for LiftHoverEffect();
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MenuOrder();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4MenuVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyACyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeynO0VyAA4FontVSgGGAA08_PaddingL0VGAA01_d9ShapeKindO0VyAA6CircleVGG_8PaperKit04MiniiH0VQo_AA05TupleF0VyA11_yAA12ControlGroupVyA11_yACyAA0I0VyAA5LabelVyAA4TextVAKGGAA01_pq9TransformO0VySbGG_A25_tGG_AA7DividerVtGSg_A11_yA21__A29_tGSgA21_A21_A21_A21_AEyA20_A11_yA21__A21_A15_yA19_GtGGSgA21_SgA38_A38_A11_yA29__A21_tGSgA38_A40_A11_yA29__A38_A38_A38_A38_A38_A38_tGSgA29_A21_tGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyACyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeynO0VyAA4FontVSgGGAA08_PaddingL0VGAA01_d9ShapeKindO0VyAA6CircleVGG_8PaperKit04MiniiH0VQo_AA05TupleF0VyA11_yAA12ControlGroupVyA11_yACyAA0I0VyAA5LabelVyAA4TextVAKGGAA01_pq9TransformO0VySbGG_A25_tGG_AA7DividerVtGSg_A11_yA21__A29_tGSgA21_A21_A21_A21_AEyA20_A11_yA21__A21_A15_yA19_GtGGSgA21_SgA38_A38_A11_yA29__A21_tGSgA38_A40_A11_yA29__A38_A38_A38_A38_A38_A38_tGSgA29_A21_tGGAMGMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9menuOrderyQrAA04MenuE0VFQOyAA15ModifiedContentVyAA0F0VyAcAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAHyAHyAHyAHyAHyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeypQ0VyAA4FontVSgGGAA08_PaddingN0VGAA01_h9ShapeKindQ0VyAA6CircleVGG_8PaperKit04MinikJ0VQo_AA05TupleC0VyA14_yAA12ControlGroupVyA14_yAHyAA0K0VyAA5LabelVyAA4TextVANGGAA01_rs9TransformQ0VySbGG_A28_tGG_AA7DividerVtGSg_A14_yA24__A32_tGSgA24_A24_A24_A24_AJyA23_A14_yA24__A24_A18_yA22_GtGGSgA24_SgA41_A41_A14_yA32__A24_tGSgA41_A43_A14_yA32__A41_A41_A41_A41_A41_A41_tGSgA32_A24_tGGAPG_Qo_Md, &_s7SwiftUI4ViewPAAE9menuOrderyQrAA04MenuE0VFQOyAA15ModifiedContentVyAA0F0VyAcAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAHyAHyAHyAHyAHyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeypQ0VyAA4FontVSgGGAA08_PaddingN0VGAA01_h9ShapeKindQ0VyAA6CircleVGG_8PaperKit04MinikJ0VQo_AA05TupleC0VyA14_yAA12ControlGroupVyA14_yAHyAA0K0VyAA5LabelVyAA4TextVANGGAA01_rs9TransformQ0VySbGG_A28_tGG_AA7DividerVtGSg_A14_yA24__A32_tGSgA24_A24_A24_A24_AJyA23_A14_yA24__A24_A18_yA22_GtGGSgA24_SgA41_A41_A14_yA32__A24_tGSgA41_A43_A14_yA32__A41_A41_A41_A41_A41_A41_tGSgA32_A24_tGGAPG_Qo_MR);
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAcAE9menuOrderyQrAA04MenuH0VFQOyAA15ModifiedContentVyAA0I0VyAcAEADyQrqd__AaERd__lFQOyAJyAJyAJyAJyAJyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeypQ0VyAA4FontVSgGGAA08_PaddingN0VGAA01_k9ShapeKindQ0VyAA6CircleVGG_8PaperKit04MinifE0VQo_AA05TupleC0VyA14_yAA12ControlGroupVyA14_yAJyAA0F0VyAA5LabelVyAA4TextVANGGAA01_rs9TransformQ0VySbGG_A28_tGG_AA7DividerVtGSg_A14_yA24__A32_tGSgA24_A24_A24_A24_ALyA23_A14_yA24__A24_A18_yA22_GtGGSgA24_SgA41_A41_A14_yA32__A24_tGSgA41_A43_A14_yA32__A41_A41_A41_A41_A41_A41_tGSgA32_A24_tGGAPG_Qo__A11_Qo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAcAE9menuOrderyQrAA04MenuH0VFQOyAA15ModifiedContentVyAA0I0VyAcAEADyQrqd__AaERd__lFQOyAJyAJyAJyAJyAJyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeypQ0VyAA4FontVSgGGAA08_PaddingN0VGAA01_k9ShapeKindQ0VyAA6CircleVGG_8PaperKit04MinifE0VQo_AA05TupleC0VyA14_yAA12ControlGroupVyA14_yAJyAA0F0VyAA5LabelVyAA4TextVANGGAA01_rs9TransformQ0VySbGG_A28_tGG_AA7DividerVtGSg_A14_yA24__A32_tGSgA24_A24_A24_A24_ALyA23_A14_yA24__A24_A18_yA22_GtGGSgA24_SgA41_A41_A14_yA32__A24_tGSgA41_A43_A14_yA32__A41_A41_A41_A41_A41_A41_tGSgA32_A24_tGGAPG_Qo__A11_Qo_MR);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v26 - v13;
  v37 = v1;
  v36 = v1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAGyAGyAGyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeymN0VyAA4FontVSgGGAA08_PaddingK0VGAA01_h9ShapeKindN0VyAA6CircleVGG_8PaperKit04MinifE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAGyAGyAGyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeymN0VyAA4FontVSgGGAA08_PaddingK0VGAA01_h9ShapeKindN0VyAA6CircleVGG_8PaperKit04MinifE0VQo_MR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyACyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSg_ACyAQ_AYtGSgA4qA4MenuVyApCyAQ_AqIyAMGtGGSgAQSgA8_A8_ACyAY_AQtGSgA8_A10_ACyAY_A8_A8_A8_A8_A8_A8_tGSgAyQtGMd, &_s7SwiftUI9TupleViewVyACyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSg_ACyAQ_AYtGSgA4qA4MenuVyApCyAQ_AqIyAMGtGGSgAQSgA8_A8_ACyAY_AQtGSgA8_A10_ACyAY_A8_A8_A8_A8_A8_A8_tGSgAyQtGMR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMR);
  v16 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGAA01_d9ShapeKindJ0VyAA6CircleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  v17 = lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
  *&v42 = v15;
  *(&v42 + 1) = &type metadata for MiniButtonStyle;
  *&v43 = v16;
  *(&v43 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(TupleView<(ControlGroup<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>>, Divider)>?, TupleView<(Button<Label<Text, Image>>, Divider)>?, Button<Label<Text, Image>>, Button<Label<Text, Image>>, Button<Label<Text, Image>>, Button<Label<Text, Image>>, Menu<Label<Text, Image>, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>, Button<Text>)>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, TupleView<(Divider, Button<Label<Text, Image>>)>?, Button<Label<Text, Image>>?, TupleView<(Divider, Button<Label<Text, Image>>)>?, TupleView<(Divider, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?)>?, Divider, Button<Label<Text, Image>>)> and conformanc, &_s7SwiftUI9TupleViewVyACyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSg_ACyAQ_AYtGSgA4qA4MenuVyApCyAQ_AqIyAMGtGGSgAQSgA8_A8_ACyAY_AQtGSgA8_A10_ACyAY_A8_A8_A8_A8_A8_A8_tGSgAyQtGMd, &_s7SwiftUI9TupleViewVyACyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSg_ACyAQ_AYtGSgA4qA4MenuVyApCyAQ_AqIyAMGtGGSgAQSgA8_A8_ACyAY_AQtGSgA8_A10_ACyAY_A8_A8_A8_A8_A8_A8_tGSgAyQtGMR, MEMORY[0x1E6981F48]);
  Menu.init(content:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v9[*(v7 + 36)];
  v19 = v43;
  *v18 = v42;
  *(v18 + 1) = v19;
  *(v18 + 2) = v44;
  static MenuOrder.fixed.getter();
  v20 = lazy protocol witness table accessor for type ModifiedContent<Menu<<<opaque return type of View.buttonStyle<A>(_:)>>.0, TupleView<(TupleView<(ControlGroup<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>>, Divider)>?, TupleView<(Button<Label<Text, Image>>, Divider)>?, Button<Label<Text, Image>>, Button<Label<Text, Image>>, Button<Label<Text, Image>>, Button<Label<Text, Image>>, Menu<Label<Text, Image>, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>, Button<Text>)>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, TupleView<(Divider, Button<Label<Text, Image>>)>?, Button<Label<Text, Image>>?, TupleView<(Divider, Button<Label<Text, Image>>)>?, TupleView<(Divider, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Text, Image>>?, Button<Label<Tex();
  View.menuOrder(_:)();
  (*(v28 + 8))(v6, v30);
  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyACyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeynO0VyAA4FontVSgGGAA08_PaddingL0VGAA01_d9ShapeKindO0VyAA6CircleVGG_8PaperKit04MiniiH0VQo_AA05TupleF0VyA11_yAA12ControlGroupVyA11_yACyAA0I0VyAA5LabelVyAA4TextVAKGGAA01_pq9TransformO0VySbGG_A25_tGG_AA7DividerVtGSg_A11_yA21__A29_tGSgA21_A21_A21_A21_AEyA20_A11_yA21__A21_A15_yA19_GtGGSgA21_SgA38_A38_A11_yA29__A21_tGSgA38_A40_A11_yA29__A38_A38_A38_A38_A38_A38_tGSgA29_A21_tGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyACyACyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeynO0VyAA4FontVSgGGAA08_PaddingL0VGAA01_d9ShapeKindO0VyAA6CircleVGG_8PaperKit04MiniiH0VQo_AA05TupleF0VyA11_yAA12ControlGroupVyA11_yACyAA0I0VyAA5LabelVyAA4TextVAKGGAA01_pq9TransformO0VySbGG_A25_tGG_AA7DividerVtGSg_A11_yA21__A29_tGSgA21_A21_A21_A21_AEyA20_A11_yA21__A21_A15_yA19_GtGGSgA21_SgA38_A38_A11_yA29__A21_tGSgA38_A40_A11_yA29__A38_A38_A38_A38_A38_A38_tGSgA29_A21_tGGAMGMR);
  v38 = v7;
  v39 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.buttonStyle<A>(_:)();
  (*(v27 + 8))(v12, v10);
  v22 = v32;
  static CustomHoverEffect<>.lift.getter();
  v38 = v10;
  v39 = &type metadata for MiniButtonStyle;
  v40 = OpaqueTypeConformance2;
  v41 = v17;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type LiftHoverEffect and conformance LiftHoverEffect, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v23 = v29;
  v24 = v33;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v34 + 8))(v22, v24);
  return (*(v31 + 8))(v14, v23);
}

uint64_t closure #1 in MiniObjectButtons.expandedMenu.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v388 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v385 = &v372 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v386 = &v372 - v6;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGMR);
  v383 = *(v384 - 8);
  MEMORY[0x1EEE9AC00](v384);
  v381 = &v372 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v403 = &v372 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v387 = &v372 - v11;
  v377 = type metadata accessor for FBKSEvaluation.Action();
  v376 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377);
  v375 = &v372 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGMR);
  v413 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393);
  v382 = &v372 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v401 = &v372 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v402 = &v372 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v420 = &v372 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v426 = &v372 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v380 = &v372 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v389 = &v372 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v421 = &v372 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v410 = &v372 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v427 = &v372 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v409 = &v372 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v390 = &v372 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v407 = &v372 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v406 = &v372 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v405 = &v372 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v404 = &v372 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v392 = &v372 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v422 = &v372 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v425 = &v372 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v424 = &v372 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v423 = &v372 - v53;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGMd, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGMR);
  v437 = *(v438 - 8);
  MEMORY[0x1EEE9AC00](v438);
  v379 = &v372 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMd, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMR);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v400 = &v372 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v418 = &v372 - v58;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGMR);
  v433.super.isa = *(v435 - 8);
  MEMORY[0x1EEE9AC00](v435);
  v431 = &v372 - v59;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR);
  v441 = *(v436 - 8);
  MEMORY[0x1EEE9AC00](v436);
  v396 = &v372 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v399 = &v372 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v398 = &v372 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v397 = (&v372 - v66);
  MEMORY[0x1EEE9AC00](v67);
  v417 = &v372 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v416 = &v372 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v415 = &v372 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v414 = &v372 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v419 = &v372 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v372 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMR);
  MEMORY[0x1EEE9AC00](v80 - 8);
  v395 = &v372 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v372 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGMd, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGMR);
  v439 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v430 = &v372 - v86;
  v429 = type metadata accessor for Divider();
  v432 = *(v429 - 8);
  MEMORY[0x1EEE9AC00](v429);
  v391 = &v372 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v428 = &v372 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v372 - v91;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ControlGroupVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGGMd, &_s7SwiftUI12ControlGroupVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGGMR);
  v93 = *(v378 - 1);
  MEMORY[0x1EEE9AC00](v378);
  v95 = &v372 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v372 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMR);
  MEMORY[0x1EEE9AC00](v99 - 8);
  v394 = &v372 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v372 - v102;
  v440 = a1;
  v411 = a1[9];
  Strong = swift_unknownObjectWeakLoadStrong();
  v442 = v79;
  v434 = v92;
  v412 = v84;
  v408 = v103;
  if (Strong && (v105 = Strong, AnyCanvas.availableZAxisMovement.getter(), v107 = v106, v105, v107))
  {
    MEMORY[0x1EEE9AC00](v108);
    v474._object = v440;
    v371 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AStGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AStGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AStGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AStGMR, MEMORY[0x1E6981F48]);
    v373 = v98;
    ControlGroup.init(content:)();
    Divider.init()();
    v109 = *(v93 + 16);
    v110 = v95;
    v372 = v95;
    v111 = v98;
    v112 = v378;
    v109(v95, v111, v378);
    v113 = *(v432 + 16);
    v114 = v428;
    v374 = v85;
    v115 = v429;
    v113(v428, v434, v429);
    v116 = v430;
    v109(v430, v110, v112);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ControlGroupVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtMd, &_s7SwiftUI12ControlGroupVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtMR);
    v113((v116 + *(v117 + 48)), v114, v115);
    v84 = v412;
    v92 = v434;
    v118 = *(v432 + 8);
    v118(v434, v115);
    v119 = *(v93 + 8);
    v119(v373, v112);
    v118(v114, v115);
    v119(v372, v112);
    v120 = v408;
    outlined init with take of Range<AttributedString.Index>(v116, v408, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGMd, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGMR);
    (*(v439 + 56))(v120, 0, 1, v374);
  }

  else
  {
    (*(v439 + 56))(v103, 1, 1, v85);
  }

  swift_getKeyPath();
  v121 = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  v122 = v411;
  v443[0] = v411;
  v123 = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
  v430 = v121;
  v439 = v123;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v122 + 42))
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v474._object = 0x80000001D4084260;
    v125._countAndFlagsBits = 0x6E694C206E65704FLL;
    v125._object = 0xE90000000000006BLL;
    v458._countAndFlagsBits = 0xD00000000000002CLL;
    v126.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v126.value._object = 0xEB00000000656C62;
    v127._countAndFlagsBits = 0;
    v127._object = 0xE000000000000000;
    v128 = NSLocalizedString(_:tableName:bundle:value:comment:)(v125, v126, paperKitBundle, v127, v458);
    outlined init with copy of MiniObjectButtons(v440, v443);
    v129 = swift_allocObject();
    v130 = outlined init with take of MiniObjectButtons(v443, v129 + 16);
    v457 = v128;
    MEMORY[0x1EEE9AC00](v130);
    *(&v372 - 4) = &v457;
    *(&v372 - 3) = 1802398060;
    v474._object = 0xE400000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
    Button.init(action:label:)();

    Divider.init()();
    v131 = *(v441 + 16);
    v132 = v92;
    v133 = v419;
    v134 = v436;
    v131();
    v135 = v432;
    v136 = *(v432 + 16);
    v137 = v132;
    v138 = v428;
    v139 = v429;
    v136(v428, v137, v429);
    v140 = v431;
    (v131)(v431, v133, v134);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtMR);
    v136(&v140[*(v141 + 48)], v138, v139);
    v142 = *(v135 + 8);
    v142(v434, v139);
    v143 = *(v441 + 8);
    v143(v442, v134);
    v142(v138, v139);
    v143(v133, v134);
    v144 = v140;
    v84 = v412;
    outlined init with take of Range<AttributedString.Index>(v144, v412, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGMR);
    v124 = 0;
  }

  else
  {
    v124 = 1;
  }

  (*(v433.super.isa + 7))(v84, v124, 1, v435);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v474._object = 0x80000001D4083D90;
  v459._countAndFlagsBits = 0xD00000000000001DLL;
  v146._countAndFlagsBits = 7632195;
  v146._object = 0xE300000000000000;
  v147.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v147.value._object = 0xEB00000000656C62;
  v148._countAndFlagsBits = 0;
  v148._object = 0xE000000000000000;
  v149 = NSLocalizedString(_:tableName:bundle:value:comment:)(v146, v147, paperKitBundle, v148, v459);
  v150 = v440;
  outlined init with copy of MiniObjectButtons(v440, v443);
  v151 = swift_allocObject();
  v152 = outlined init with take of MiniObjectButtons(v443, v151 + 16);
  v457 = v149;
  MEMORY[0x1EEE9AC00](v152);
  *(&v372 - 4) = &v457;
  *(&v372 - 3) = 0x73726F7373696373;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  v154 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
  Button.init(action:label:)();

  v474._object = 0x80000001D4083DB0;
  v155._countAndFlagsBits = 0x6C45282079706F43;
  v155._object = 0xEE0029746E656D65;
  v460._countAndFlagsBits = 0xD00000000000001ELL;
  v156.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v156.value._object = 0xEB00000000656C62;
  v157._countAndFlagsBits = 2037411651;
  v157._object = 0xE400000000000000;
  v158 = NSLocalizedString(_:tableName:bundle:value:comment:)(v155, v156, isa, v157, v460);
  outlined init with copy of MiniObjectButtons(v150, v443);
  v159 = swift_allocObject();
  v160 = outlined init with take of MiniObjectButtons(v443, v159 + 16);
  v457 = v158;
  MEMORY[0x1EEE9AC00](v160);
  *(&v372 - 4) = &v457;
  *(&v372 - 3) = 0x642E6E6F2E636F64;
  Button.init(action:label:)();

  v474._object = 0x80000001D4083DD0;
  v161._countAndFlagsBits = 0x6574736150;
  v461._countAndFlagsBits = 0xD00000000000001DLL;
  v161._object = 0xE500000000000000;
  v162.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v162.value._object = 0xEB00000000656C62;
  v163._countAndFlagsBits = 0;
  v163._object = 0xE000000000000000;
  v164 = NSLocalizedString(_:tableName:bundle:value:comment:)(v161, v162, isa, v163, v461);
  outlined init with copy of MiniObjectButtons(v150, v443);
  v165 = swift_allocObject();
  v166 = outlined init with take of MiniObjectButtons(v443, v165 + 16);
  v457 = v164;
  MEMORY[0x1EEE9AC00](v166);
  *(&v372 - 4) = &v457;
  *(&v372 - 3) = 0xD000000000000010;
  Button.init(action:label:)();

  v474._object = 0x80000001D4083E10;
  v167._countAndFlagsBits = 0x746163696C707544;
  v462._countAndFlagsBits = 0xD000000000000023;
  v167._object = 0xE900000000000065;
  v168.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v168.value._object = 0xEB00000000656C62;
  v433.super.isa = isa;
  v169._countAndFlagsBits = 0;
  v169._object = 0xE000000000000000;
  v170 = NSLocalizedString(_:tableName:bundle:value:comment:)(v167, v168, isa, v169, v462);
  outlined init with copy of MiniObjectButtons(v150, v443);
  v171 = swift_allocObject();
  v172 = outlined init with take of MiniObjectButtons(v443, v171 + 16);
  v457 = v170;
  MEMORY[0x1EEE9AC00](v172);
  *(&v372 - 4) = &v457;
  *(&v372 - 3) = 0xD000000000000015;
  v474._object = 0x80000001D4083E40;
  Button.init(action:label:)();

  has_internal_ui = os_variant_has_internal_ui();
  v435 = v153;
  v431 = v154;
  if (has_internal_ui)
  {
    v174 = LocalizedStringKey.init(stringLiteral:)();
    v378 = &v372;
    MEMORY[0x1EEE9AC00](v174);
    MEMORY[0x1EEE9AC00](v175);
    MEMORY[0x1EEE9AC00](v176);
    *(&v372 - 6) = v177;
    *(&v372 - 5) = v178;
    *(&v372 - 32) = v179 & 1;
    *(&v372 - 3) = v180;
    v474._object = 0xD000000000000010;
    v371 = v181;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AmEyAIGtGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AmEyAIGtGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AmEyAIGtGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AmEyAIGtGMR, MEMORY[0x1E6981F48]);
    v182 = v379;
    Menu.init(content:label:)();

    v183 = v437;
    v184 = v418;
    v185 = v438;
    v437[4](v418, v182, v438);
    v186 = 0;
    v187 = v436;
  }

  else
  {
    v186 = 1;
    v187 = v436;
    v184 = v418;
    v185 = v438;
    v183 = v437;
  }

  v188 = 1;
  (v183[7])(v184, v186, 1, v185);
  swift_getKeyPath();
  v189 = v411;
  v443[0] = v411;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v189[41])
  {
    v474._object = 0x80000001D40841F0;
    v190._countAndFlagsBits = 0xD000000000000016;
    v190._object = 0x80000001D40841D0;
    v463._countAndFlagsBits = 0xD00000000000002ALL;
    v191.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v191.value._object = 0xEB00000000656C62;
    v192._countAndFlagsBits = 0;
    v192._object = 0xE000000000000000;
    v193 = NSLocalizedString(_:tableName:bundle:value:comment:)(v190, v191, v433, v192, v463);
    outlined init with copy of MiniObjectButtons(v440, v443);
    v194 = swift_allocObject();
    v195 = outlined init with take of MiniObjectButtons(v443, v194 + 16);
    v457 = v193;
    MEMORY[0x1EEE9AC00](v195);
    *(&v372 - 4) = &v457;
    *(&v372 - 3) = 0xD000000000000013;
    v474._object = 0x80000001D4084220;
    v196 = v442;
    Button.init(action:label:)();

    (*(v441 + 32))(v423, v196, v187);
    v188 = 0;
  }

  v197 = *(v441 + 56);
  v198 = 1;
  v199 = v187;
  v438 = v441 + 56;
  v437 = v197;
  (v197)(v423, v188, 1, v187);
  swift_getKeyPath();
  v443[0] = v189;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v189[41] & 2) != 0)
  {
    v474._object = 0x80000001D4084190;
    v200._countAndFlagsBits = 0xD000000000000011;
    v200._object = 0x80000001D4084170;
    v464._countAndFlagsBits = 0xD000000000000031;
    v201.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v201.value._object = 0xEB00000000656C62;
    v202._countAndFlagsBits = 0;
    v202._object = 0xE000000000000000;
    v203 = NSLocalizedString(_:tableName:bundle:value:comment:)(v200, v201, v433, v202, v464);
    outlined init with copy of MiniObjectButtons(v440, v443);
    v204 = swift_allocObject();
    v205 = outlined init with take of MiniObjectButtons(v443, v204 + 16);
    v457 = v203;
    MEMORY[0x1EEE9AC00](v205);
    *(&v372 - 4) = &v457;
    *(&v372 - 3) = 0x6F746F6870;
    v474._object = 0xE500000000000000;
    v206 = v442;
    Button.init(action:label:)();

    (*(v441 + 32))(v424, v206, v187);
    v198 = 0;
  }

  v207 = 1;
  (v437)(v424, v198, 1, v187);
  swift_getKeyPath();
  v443[0] = v189;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v189[40] & 0x80) != 0)
  {
    v474._object = 0x80000001D4084140;
    v208._countAndFlagsBits = 0x6574616572636552;
    v465._countAndFlagsBits = 0xD000000000000020;
    v208._object = 0xE800000000000000;
    v209.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v209.value._object = 0xEB00000000656C62;
    v210._countAndFlagsBits = 0;
    v210._object = 0xE000000000000000;
    v211 = NSLocalizedString(_:tableName:bundle:value:comment:)(v208, v209, v433, v210, v465);
    outlined init with copy of MiniObjectButtons(v440, v443);
    v212 = swift_allocObject();
    v213 = outlined init with take of MiniObjectButtons(v443, v212 + 16);
    v457 = v211;
    MEMORY[0x1EEE9AC00](v213);
    *(&v372 - 4) = &v457;
    *(&v372 - 3) = 0xD000000000000016;
    v474._object = 0x80000001D4084120;
    v214 = v442;
    Button.init(action:label:)();

    v199 = v436;
    (*(v441 + 32))(v425, v214, v436);
    v207 = 0;
  }

  v215 = 1;
  (v437)(v425, v207, 1, v199);
  swift_getKeyPath();
  v443[0] = v189;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v189[42] & 4) != 0)
  {
    v216 = v434;
    Divider.init()();
    v474._object = 0x80000001D40840E0;
    v217._countAndFlagsBits = 0xD000000000000011;
    v217._object = 0x80000001D40840C0;
    v466._countAndFlagsBits = 0xD00000000000003BLL;
    v218.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v218.value._object = 0xEB00000000656C62;
    v219._countAndFlagsBits = 0;
    v219._object = 0xE000000000000000;
    v220 = NSLocalizedString(_:tableName:bundle:value:comment:)(v217, v218, v433, v219, v466);
    outlined init with copy of MiniObjectButtons(v440, v443);
    v221 = swift_allocObject();
    v222 = outlined init with take of MiniObjectButtons(v443, v221 + 16);
    v457 = v220;
    MEMORY[0x1EEE9AC00](v222);
    *(&v372 - 4) = &v457;
    *(&v372 - 3) = 0xD000000000000016;
    v474._object = 0x80000001D4084120;
    v223 = v442;
    Button.init(action:label:)();

    v224 = v436;
    v225 = *(v432 + 16);
    v226 = v428;
    v227 = v429;
    v225(v428, v216, v429);
    v228 = v441;
    v229 = *(v441 + 16);
    v230 = v419;
    v229(v419, v223, v224);
    v231 = v382;
    v225(v382, v226, v227);
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtMd, &_s7SwiftUI7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtMR);
    v229((v231 + *(v232 + 48)), v230, v224);
    v233 = *(v228 + 8);
    v233(v442, v224);
    v234 = *(v432 + 8);
    v189 = v411;
    v234(v434, v227);
    v233(v230, v224);
    v234(v428, v227);
    outlined init with take of Range<AttributedString.Index>(v231, v426, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGMR);
    v215 = 0;
  }

  v235 = *(v413 + 56);
  v236 = 1;
  v413 += 56;
  v235(v426, v215, 1, v393);
  swift_getKeyPath();
  v443[0] = v189;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v189[42] & 0x10) != 0)
  {
    outlined init with copy of MiniObjectButtons(v440, v443);
    v237 = swift_allocObject();
    outlined init with take of MiniObjectButtons(v443, v237 + 16);
    v238 = v442;
    Button.init(action:label:)();
    (*(v441 + 32))(v422, v238, v436);
    v236 = 0;
  }

  v239 = 1;
  v240 = v436;
  (v437)(v422, v236, 1, v436);
  v444 = &type metadata for FeedbackFeatures;
  v445 = lazy protocol witness table accessor for type FeedbackFeatures and conformance FeedbackFeatures();
  v241 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v443);
  if (v241)
  {
    swift_getKeyPath();
    v443[0] = v189;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v189[42] & 8) != 0)
    {
      v242 = v434;
      Divider.init()();
      v474._object = 0x80000001D4084070;
      v243._object = 0x80000001D4084050;
      v467._countAndFlagsBits = 0xD000000000000040;
      v243._countAndFlagsBits = 0xD000000000000010;
      v244.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v244.value._object = 0xEB00000000656C62;
      v245._countAndFlagsBits = 0;
      v245._object = 0xE000000000000000;
      v246 = NSLocalizedString(_:tableName:bundle:value:comment:)(v243, v244, v433, v245, v467);
      v247 = *MEMORY[0x1E699C1D8];
      v379 = v235;
      v248 = v376;
      v249 = v375;
      v250 = v377;
      (*(v376 + 104))(v375, v247, v377);
      v251 = specialized FeedbackManager.feedbackImageName(action:hasResponse:)(v249, 0);
      v253 = v252;
      (*(v248 + 8))(v249, v250);
      outlined init with copy of MiniObjectButtons(v440, v443);
      v254 = swift_allocObject();
      v255 = outlined init with take of MiniObjectButtons(v443, v254 + 16);
      v457 = v246;
      MEMORY[0x1EEE9AC00](v255);
      *(&v372 - 4) = &v457;
      *(&v372 - 3) = v251;
      v474._object = v253;
      Button.init(action:label:)();

      v256 = v436;
      v257 = *(v432 + 16);
      v258 = v428;
      v259 = v429;
      v257(v428, v242, v429);
      v260 = v441;
      v261 = *(v441 + 16);
      v262 = v419;
      v261(v419, v442, v256);
      v263 = v382;
      v257(v382, v258, v259);
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtMd, &_s7SwiftUI7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtMR);
      v261(&v263[*(v264 + 48)], v262, v256);
      v265 = *(v260 + 8);
      v265(v442, v256);
      v266 = *(v432 + 8);
      v266(v434, v259);
      v265(v262, v256);
      v267 = v258;
      v189 = v411;
      v266(v267, v259);
      v240 = v256;
      v268 = v263;
      v235 = v379;
      outlined init with take of Range<AttributedString.Index>(v268, v420, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGMR);
      v239 = 0;
    }

    else
    {
      v239 = 1;
    }
  }

  v269 = 1;
  v235(v420, v239, 1, v393);
  swift_getKeyPath();
  v443[0] = v189;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v189[41] & 0x7C) != 0)
  {
    Divider.init()();
    swift_getKeyPath();
    v443[0] = v189;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v189[41] & 0x40) != 0)
    {
      v474._object = 0x80000001D4084020;
      v274._countAndFlagsBits = 0x656E69666552;
      v468._countAndFlagsBits = 0xD000000000000025;
      v274._object = 0xE600000000000000;
      v275.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v275.value._object = 0xEB00000000656C62;
      v276._countAndFlagsBits = 0;
      v276._object = 0xE000000000000000;
      v277 = NSLocalizedString(_:tableName:bundle:value:comment:)(v274, v275, v433, v276, v468);
      outlined init with copy of MiniObjectButtons(v440, v443);
      v278 = swift_allocObject();
      v279 = outlined init with take of MiniObjectButtons(v443, v278 + 16);
      v457 = v277;
      MEMORY[0x1EEE9AC00](v279);
      *(&v372 - 4) = &v457;
      *(&v372 - 3) = 0x68636E657277;
      v474._object = 0xE600000000000000;
      v280 = v442;
      Button.init(action:label:)();

      v240 = v436;
      v271 = v392;
      (*(v441 + 32))(v392, v280, v436);
      v270 = 0;
    }

    else
    {
      v270 = 1;
      v271 = v392;
    }

    v281 = 1;
    (v437)(v271, v270, 1, v240);
    swift_getKeyPath();
    v443[0] = v189;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v189[41] & 4) != 0)
    {
      v474._object = 0x80000001D4083FF0;
      v282._countAndFlagsBits = 0x2073612079706F43;
      v282._object = 0xEC00000074786554;
      v469._countAndFlagsBits = 0xD00000000000002BLL;
      v283.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v283.value._object = 0xEB00000000656C62;
      v284._countAndFlagsBits = 0;
      v284._object = 0xE000000000000000;
      v285 = NSLocalizedString(_:tableName:bundle:value:comment:)(v282, v283, v433, v284, v469);
      outlined init with copy of MiniObjectButtons(v440, v443);
      v286 = swift_allocObject();
      v287 = outlined init with take of MiniObjectButtons(v443, v286 + 16);
      v457 = v285;
      MEMORY[0x1EEE9AC00](v287);
      *(&v372 - 4) = &v457;
      *(&v372 - 3) = 0x6D726F6674786574;
      v474._object = 0xEA00000000007461;
      v288 = v442;
      Button.init(action:label:)();

      (*(v441 + 32))(v404, v288, v240);
      v281 = 0;
    }

    v289 = 1;
    (v437)(v404, v281, 1, v240);
    swift_getKeyPath();
    v443[0] = v189;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v189[41] & 8) != 0)
    {
      v474._object = 0x80000001D4083F90;
      v290._countAndFlagsBits = 0xD000000000000012;
      v290._object = 0x80000001D4083F70;
      v470._countAndFlagsBits = 0xD000000000000033;
      v291.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v291.value._object = 0xEB00000000656C62;
      v292._countAndFlagsBits = 0;
      v292._object = 0xE000000000000000;
      v293 = NSLocalizedString(_:tableName:bundle:value:comment:)(v290, v291, v433, v292, v470);
      outlined init with copy of MiniObjectButtons(v440, v443);
      v294 = swift_allocObject();
      v295 = outlined init with take of MiniObjectButtons(v443, v294 + 16);
      v457 = v293;
      MEMORY[0x1EEE9AC00](v295);
      *(&v372 - 4) = &v457;
      *(&v372 - 3) = 0xD000000000000019;
      v474._object = 0x80000001D4083FD0;
      v296 = v442;
      Button.init(action:label:)();

      v240 = v436;
      (*(v441 + 32))(v405, v296, v436);
      v289 = 0;
    }

    v297 = 1;
    (v437)(v405, v289, 1, v240);
    swift_getKeyPath();
    v443[0] = v189;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v189[41] & 0x10) != 0)
    {
      v474._object = 0x80000001D4083F20;
      v298._countAndFlagsBits = 0x74616C736E617254;
      v471._countAndFlagsBits = 0xD000000000000029;
      v298._object = 0xE900000000000065;
      v299.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v299.value._object = 0xEB00000000656C62;
      v300._countAndFlagsBits = 0;
      v300._object = 0xE000000000000000;
      v301 = NSLocalizedString(_:tableName:bundle:value:comment:)(v298, v299, v433, v300, v471);
      outlined init with copy of MiniObjectButtons(v440, v443);
      v302 = swift_allocObject();
      v303 = outlined init with take of MiniObjectButtons(v443, v302 + 16);
      v457 = v301;
      MEMORY[0x1EEE9AC00](v303);
      *(&v372 - 4) = &v457;
      *(&v372 - 3) = 0xD000000000000010;
      v474._object = 0x80000001D4083F50;
      v304 = v442;
      Button.init(action:label:)();

      v240 = v436;
      (*(v441 + 32))(v406, v304, v436);
      v297 = 0;
    }

    v305 = v240;
    v306 = 1;
    (v437)(v406, v297, 1, v240);
    swift_getKeyPath();
    v443[0] = v189;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v189[41] & 0x20) != 0)
    {
      v474._object = 0x80000001D4083ED0;
      v307._countAndFlagsBits = 0x7468676961727453;
      v307._object = 0xEA00000000006E65;
      v472._countAndFlagsBits = 0xD00000000000002DLL;
      v308.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v308.value._object = 0xEB00000000656C62;
      v309._countAndFlagsBits = 0;
      v309._object = 0xE000000000000000;
      v310 = NSLocalizedString(_:tableName:bundle:value:comment:)(v307, v308, v433, v309, v472);
      outlined init with copy of MiniObjectButtons(v440, v443);
      v311 = swift_allocObject();
      v312 = outlined init with take of MiniObjectButtons(v443, v311 + 16);
      v457 = v310;
      MEMORY[0x1EEE9AC00](v312);
      *(&v372 - 4) = &v457;
      *(&v372 - 3) = 0xD000000000000011;
      v474._object = 0x80000001D4083F00;
      v313 = v442;
      Button.init(action:label:)();

      v305 = v436;
      (*(v441 + 32))(v407, v313, v436);
      v306 = 0;
    }

    v314 = 1;
    (v437)(v407, v306, 1, v305);
    swift_getKeyPath();
    v443[0] = v189;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v315 = v189[41];
    v316 = v409;
    if (v315 < 0)
    {
      v474._object = 0x80000001D4083E90;
      v317._countAndFlagsBits = 0x206F742070616E53;
      v317._object = 0xED00006570616853;
      v473._countAndFlagsBits = 0xD000000000000030;
      v318.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v318.value._object = 0xEB00000000656C62;
      v319._countAndFlagsBits = 0;
      v319._object = 0xE000000000000000;
      v320 = NSLocalizedString(_:tableName:bundle:value:comment:)(v317, v318, v433, v319, v473);
      outlined init with copy of MiniObjectButtons(v440, v443);
      v321 = swift_allocObject();
      v322 = outlined init with take of MiniObjectButtons(v443, v321 + 16);
      v457 = v320;
      MEMORY[0x1EEE9AC00](v322);
      *(&v372 - 4) = &v457;
      *(&v372 - 3) = 1918989427;
      v474._object = 0xE400000000000000;
      v323 = v442;
      Button.init(action:label:)();

      (*(v441 + 32))(v390, v323, v305);
      v314 = 0;
    }

    v324 = v390;
    (v437)(v390, v314, 1, v305);
    v325 = *(v432 + 16);
    v326 = v434;
    v327 = v429;
    v325(v434, v391, v429);
    outlined init with copy of Date?(v392, v316, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined init with copy of Date?(v404, v427, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v328 = v410;
    outlined init with copy of Date?(v405, v410, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined init with copy of Date?(v406, v421, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined init with copy of Date?(v407, v389, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v329 = v380;
    outlined init with copy of Date?(v324, v380, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v330 = v381;
    v325(v381, v326, v327);
    v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5NtMd, &_s7SwiftUI7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5NtMR);
    outlined init with copy of Date?(v316, v330 + v331[12], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined init with copy of Date?(v427, v330 + v331[16], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined init with copy of Date?(v328, v330 + v331[20], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v332 = v421;
    outlined init with copy of Date?(v421, v330 + v331[24], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v333 = v389;
    outlined init with copy of Date?(v389, v330 + v331[28], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined init with copy of Date?(v329, v330 + v331[32], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v390, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v407, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v406, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v405, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v404, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v392, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v334 = *(v432 + 8);
    v334(v391, v327);
    outlined destroy of StocksKitCurrencyCache.Provider?(v329, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v333, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v332, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v328, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v427, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v335 = v409;
    v336 = v434;
    outlined destroy of StocksKitCurrencyCache.Provider?(v409, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
    v334(v336, v327);
    v272 = v387;
    outlined init with take of Range<AttributedString.Index>(v330, v387, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGMR);
    v269 = 0;
    v273 = v335;
  }

  else
  {
    v272 = v387;
    v273 = v409;
  }

  (*(v383 + 56))(v272, v269, 1, v384);
  Divider.init()();
  v474._object = 0x80000001D4083E60;
  v337._countAndFlagsBits = 0x6574656C6544;
  v474._countAndFlagsBits = 0xD000000000000020;
  v337._object = 0xE600000000000000;
  v338.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v338.value._object = 0xEB00000000656C62;
  v339._countAndFlagsBits = 0;
  v339._object = 0xE000000000000000;
  v340 = NSLocalizedString(_:tableName:bundle:value:comment:)(v337, v338, v433, v339, v474);
  v341 = v386;
  static ButtonRole.destructive.getter();
  v342 = type metadata accessor for ButtonRole();
  (*(*(v342 - 8) + 56))(v341, 0, 1, v342);
  outlined init with copy of MiniObjectButtons(v440, v443);
  v343 = swift_allocObject();
  outlined init with take of MiniObjectButtons(v443, v343 + 16);
  v457 = v340;
  v344 = outlined init with copy of Date?(v341, v385, &_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x1EEE9AC00](v344);
  *(&v372 - 4) = &v457;
  *(&v372 - 3) = 0x6873617274;
  v474._object = 0xE500000000000000;
  Button.init(role:action:label:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v341, &_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);

  v345 = v394;
  outlined init with copy of Date?(v408, v394, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMR);
  v443[0] = v345;
  v346 = v395;
  outlined init with copy of Date?(v412, v395, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMR);
  v443[1] = v346;
  v347 = v441;
  v348 = *(v441 + 16);
  v349 = v419;
  v350 = v436;
  v348(v419, v414, v436);
  v443[2] = v349;
  v351 = v397;
  v348(v397, v415, v350);
  v444 = v351;
  v352 = v398;
  v348(v398, v416, v350);
  v445 = v352;
  v353 = v399;
  v348(v399, v417, v350);
  v446 = v353;
  v354 = v400;
  outlined init with copy of Date?(v418, v400, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMd, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMR);
  v447 = v354;
  outlined init with copy of Date?(v423, v273, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  v448 = v273;
  v355 = v427;
  outlined init with copy of Date?(v424, v427, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  v449 = v355;
  v356 = v410;
  outlined init with copy of Date?(v425, v410, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  v450 = v356;
  v357 = v402;
  outlined init with copy of Date?(v426, v402, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  v451 = v357;
  v358 = v421;
  outlined init with copy of Date?(v422, v421, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  v452 = v358;
  v359 = v401;
  outlined init with copy of Date?(v420, v401, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  v453 = v359;
  v360 = v272;
  v361 = v403;
  outlined init with copy of Date?(v272, v403, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMR);
  v454 = v361;
  v362 = v432;
  v363 = v428;
  v364 = v434;
  v365 = v429;
  (*(v432 + 16))(v428, v434, v429);
  v455 = v363;
  v366 = v396;
  v367 = v442;
  v348(v396, v442, v350);
  v456 = v366;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAFyAA12ControlGroupVyAFyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AZtGG_AA7DividerVtGSg_AFyAV_A2_tGSgA4vA4MenuVyAuFyAV_AvNyARGtGGSgAVSgA13_A13_AFyA2__AVtGSgA13_A15_AFyA2__A13_A13_A13_A13_A13_A13_tGSgA2_AVQP_Tt1g5(v443, v388);
  v368 = *(v347 + 8);
  v368(v367, v350);
  v369 = *(v362 + 8);
  v369(v364, v365);
  outlined destroy of StocksKitCurrencyCache.Provider?(v360, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v420, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v422, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v426, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v425, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v424, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v423, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v418, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMd, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMR);
  v368(v417, v350);
  v368(v416, v350);
  v368(v415, v350);
  v368(v414, v350);
  outlined destroy of StocksKitCurrencyCache.Provider?(v412, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v408, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMR);
  v368(v396, v350);
  v369(v428, v429);
  outlined destroy of StocksKitCurrencyCache.Provider?(v403, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgA5PtGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v401, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v421, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v402, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMd, &_s7SwiftUI9TupleViewVyAA7DividerV_AA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGtGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v410, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v427, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v409, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v400, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMd, &_s7SwiftUI4MenuVyAA5LabelVyAA4TextVAA5ImageVGAA9TupleViewVyAA6ButtonVyAJG_AoNyAGGtGGSgMR);
  v368(v399, v350);
  v368(v398, v350);
  v368(v397, v350);
  v368(v419, v350);
  outlined destroy of StocksKitCurrencyCache.Provider?(v395, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AA7DividerVtGSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v394, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMd, &_s7SwiftUI9TupleViewVyAA12ControlGroupVyACyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AUtGG_AA7DividerVtGSgMR);
}

uint64_t closure #1 in closure #1 in MiniObjectButtons.expandedMenu.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v48 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = v41 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v43 = v41 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v52._object = 0x80000001D40842E0;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v51._countAndFlagsBits = 0xD000000000000032;
  v14._countAndFlagsBits = 1801675074;
  v14._object = 0xE400000000000000;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, paperKitBundle, v15, v51);
  outlined init with copy of MiniObjectButtons(a1, v50);
  v17 = swift_allocObject();
  v18 = outlined init with take of MiniObjectButtons(v50, v17 + 16);
  v42 = a1;
  v49 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v41[-4] = &v49;
  v41[-3] = 0xD000000000000020;
  v52._object = 0x80000001D4084320;
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
  Button.init(action:label:)();

  v19 = v45;
  v20 = (v45 & 2) == 0;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = v11;
  v24 = v44;
  v25 = (v23 + *(v44 + 36));
  *v25 = KeyPath;
  v25[1] = partial apply for closure #1 in View.disabled(_:);
  v25[2] = v22;
  v52._object = 0x80000001D4084350;
  v26._countAndFlagsBits = 0x746E6F7246;
  v52._countAndFlagsBits = 0xD000000000000033;
  v26._object = 0xE500000000000000;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, isa, v28, v52);
  outlined init with copy of MiniObjectButtons(v42, v50);
  v30 = swift_allocObject();
  v31 = outlined init with take of MiniObjectButtons(v50, v30 + 16);
  v49 = v29;
  MEMORY[0x1EEE9AC00](v31);
  v41[-4] = &v49;
  v41[-3] = 0xD00000000000001DLL;
  v52._object = 0x80000001D4084390;
  v32 = v43;
  Button.init(action:label:)();

  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = (v19 & 1) == 0;
  v35 = (v32 + *(v24 + 36));
  *v35 = v33;
  v35[1] = closure #1 in View.disabled(_:)partial apply;
  v35[2] = v34;
  v36 = v46;
  outlined init with copy of Date?(v23, v46, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  v37 = v47;
  outlined init with copy of Date?(v32, v47, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  v38 = v48;
  outlined init with copy of Date?(v36, v48, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AQtMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_AQtMR);
  outlined init with copy of Date?(v37, v38 + *(v39 + 48), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMR);
}

void closure #2 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v12 = swift_unknownObjectWeakLoadStrong();

  if (!v12)
  {
    return;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v5 = *&v12[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];

  specialized CanvasMembers.views(in:)(v4, v5);
  v7 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_6;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    goto LABEL_16;
  }

  if (!__CocoaSet.count.getter())
  {

    goto LABEL_17;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6CE0C0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  type metadata accessor for LinkCanvasElementView(0);
  if (swift_dynamicCastClass())
  {
    v10 = LinkCanvasElementView.linkView.getter();
    (*((*MEMORY[0x1E69E7D40] & *v10) + 0x88))(0);

LABEL_17:
    v11 = v12;
    goto LABEL_18;
  }

  v11 = v9;
LABEL_18:
}

uint64_t closure #1 in closure #3 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in closure #1 in MiniObjectButtons.expandedMenu.getter, v6, v5);
}

uint64_t closure #1 in closure #3 in closure #1 in MiniObjectButtons.expandedMenu.getter()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), v2, v3))
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
      v7 = *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
      v8 = *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
      v9 = v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

      AnyCanvas.performSelectionAction(_:_:at:)(0, v6, v7, v8, v9, 0, 0, 1u);
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  **(v0 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #7 in closure #1 in MiniObjectButtons.expandedMenu.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v59 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v48 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR);
  v58 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = LocalizedStringKey.init(stringLiteral:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  outlined init with copy of MiniObjectButtons(a1, v72);
  v22 = swift_allocObject();
  outlined init with take of MiniObjectButtons(v72, v22 + 16);
  v66 = v15;
  v67 = v17;
  v68 = v19 & 1;
  v69 = v21;
  v70 = 0xD000000000000010;
  v71 = 0x80000001D4084240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x1E697D658]);
  v50 = v14;
  Button.init(action:label:)();

  v23 = LocalizedStringKey.init(stringLiteral:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  outlined init with copy of MiniObjectButtons(a1, v72);
  v30 = swift_allocObject();
  outlined init with take of MiniObjectButtons(v72, v30 + 16);
  v60 = v23;
  v61 = v25;
  v62 = v27 & 1;
  v63 = v29;
  v64 = 0x6C69662E6B636F6CLL;
  v65 = 0xE90000000000006CLL;
  v31 = v11;
  v49 = v11;
  Button.init(action:label:)();

  LocalizedStringKey.init(stringLiteral:)();
  outlined init with copy of MiniObjectButtons(a1, v72);
  v32 = swift_allocObject();
  outlined init with take of MiniObjectButtons(v72, v32 + 16);
  v33 = v57;
  Button<>.init(_:action:)();
  v34 = *(v58 + 16);
  v35 = v56;
  v36 = v14;
  v37 = v52;
  v34(v56, v36, v52);
  v38 = v51;
  v34(v51, v31, v37);
  v39 = *(v59 + 16);
  v40 = v53;
  v41 = v33;
  v42 = v54;
  v39(v53, v41, v54);
  v43 = v55;
  v34(v55, v35, v37);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AkCyAGGtMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AkCyAGGtMR);
  v34(&v43[*(v44 + 48)], v38, v37);
  v39(&v43[*(v44 + 64)], v40, v42);
  v45 = *(v59 + 8);
  v45(v57, v42);
  v46 = *(v58 + 8);
  v46(v49, v37);
  v46(v50, v37);
  v45(v40, v42);
  v46(v38, v37);
  return (v46)(v56, v37);
}

void closure #1 in closure #7 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();

    if (v10)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
        v6 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
        v7 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
        v8 = v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];
        v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x638);

        v9(v5, v6, v7, v8);
      }
    }
  }
}

void closure #2 in closure #7 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v15 = a2;
        v9 = *&v14[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
        v10 = *&v14[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
        v11 = *&v14[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
        v12 = v14[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];
        v13 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x640);

        v13(&v15, a3, v9, v10, v11, v12);
      }

      else
      {
      }
    }
  }
}

void closure #1 in MiniObjectButtons.duplicateButton.getter(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v7 = *&v11[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
        v8 = *&v11[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
        v9 = *&v11[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
        v10 = v11[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

        AnyCanvas.performSelectionAction(_:_:at:)(v2, v7, v8, v9, v10, 0, 0, 1u);
      }
    }
  }
}

void closure #9 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();

    if (v10)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
        v6 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
        v7 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
        v8 = v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];
        v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x630);

        v9(v5, v6, v7, v8);
      }
    }
  }
}

void closure #10 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1, void (*a2)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      a2();
    }
  }
}

uint64_t closure #1 in closure #13 in closure #1 in MiniObjectButtons.expandedMenu.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v9._object = 0x80000001D40842B0;
  v2._countAndFlagsBits = 0x5320657461657243;
  v2._object = 0xEE0072656B636974;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, paperKitBundle, v4, v9);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t closure #2 in closure #13 in closure #1 in MiniObjectButtons.expandedMenu.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

void closure #14 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1)
{
  v1 = type metadata accessor for FBKSEvaluation.Action();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      (*(v2 + 104))(v4, *MEMORY[0x1E699C1D8], v1);
      CanvasElementResizeView.miniMenuSendFeedback(action:)(v4);

      (*(v2 + 8))(v4, v1);
    }
  }
}

void closure #12 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

    if (v5)
    {
      [v5 *a2];
    }
  }
}

void closure #15 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

    [v5 *a2];
  }
}

uint64_t closure #3 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  outlined init with copy of MiniObjectButtons(a1, v13);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  outlined init with take of MiniObjectButtons(v13, v10 + 32);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZytSg_Tt2g5(0, 0, v7, a3, v10);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #21 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #21 in closure #1 in MiniObjectButtons.expandedMenu.getter, v6, v5);
}

uint64_t closure #1 in closure #21 in closure #1 in MiniObjectButtons.expandedMenu.getter()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), v2, v3))
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
      v7 = *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
      v8 = *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
      v9 = v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

      AnyCanvas.performSelectionAction(_:_:at:)(4u, v6, v7, v8, v9, 0, 0, 1u);
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  **(v0 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t MiniObjectButtons.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverE0Rd__lFQOyAcAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAcAE9menuOrderyQrAA04MenuN0VFQOyAA15ModifiedContentVyAA0O0VyAcAEAGyQrqd__AaHRd__lFQOyAMyAMyAMyAMyAMyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyvW0VyAA4FontVSgGGAA08_PaddingT0VGAA01_q9ShapeKindW0VyAA6CircleVGG_8PaperKit04MinilK0VQo_AA05TupleC0VyA17_yAA12ControlGroupVyA17_yAMyAA0L0VyAA5LabelVyAA4TextVAQGGAA01_xy9TransformW0VySbGG_A31_tGG_AA7DividerVtGSg_A17_yA27__A35_tGSgA27_A27_A27_A27_AOyA26_A17_yA27__A27_A21_yA25_GtGGSgA27_SgA44_A44_A17_yA35__A27_tGSgA44_A46_A17_yA35__A44_A44_A44_A44_A44_A44_tGSgA35_A27_tGGASG_Qo__A14_Qo__AA04LiftiE0VQo_Md, &_s7SwiftUI4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverE0Rd__lFQOyAcAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAcAE9menuOrderyQrAA04MenuN0VFQOyAA15ModifiedContentVyAA0O0VyAcAEAGyQrqd__AaHRd__lFQOyAMyAMyAMyAMyAMyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyvW0VyAA4FontVSgGGAA08_PaddingT0VGAA01_q9ShapeKindW0VyAA6CircleVGG_8PaperKit04MinilK0VQo_AA05TupleC0VyA17_yAA12ControlGroupVyA17_yAMyAA0L0VyAA5LabelVyAA4TextVAQGGAA01_xy9TransformW0VySbGG_A31_tGG_AA7DividerVtGSg_A17_yA27__A35_tGSgA27_A27_A27_A27_AOyA26_A17_yA27__A27_A21_yA25_GtGGSgA27_SgA44_A44_A17_yA35__A27_tGSgA44_A46_A17_yA35__A44_A44_A44_A44_A44_A44_tGSgA35_A27_tGGASG_Qo__A14_Qo__AA04LiftiE0VQo_MR);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_h9ShapeKindM0VyAA6CircleVGGG_8PaperKit04MinifE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_h9ShapeKindM0VyAA6CircleVGGG_8PaperKit04MinifE0VQo_MR);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v50 - v14;
  v15 = *(v1 + 72);
  swift_getKeyPath();
  *&v113 = v15;
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v15 + 42) & 2) != 0)
  {
    outlined init with copy of MiniObjectButtons(v1, &v113);
    v16 = swift_allocObject();
    v52 = v1;
    v17 = v16;
    outlined init with take of MiniObjectButtons(&v113, v16 + 16);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v18 = v102;
    v19 = v104;
    v20 = v8;
    v21 = v7;
    v22 = v106;
    v23 = v107;
    v71 = v103;
    v70 = v105;
    outlined init with copy of MiniObjectButtons(v52, &v113);
    v24 = swift_allocObject();
    outlined init with take of MiniObjectButtons(&v113, v24 + 16);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v73 = v109;
    v72 = v111;
    *&v74 = partial apply for closure #1 in MiniObjectButtons.graphSettingsButton.getter;
    *(&v74 + 1) = v17;
    *&v75 = v18;
    BYTE8(v75) = v71;
    *&v76 = v19;
    BYTE8(v76) = v70;
    *&v77 = v22;
    *(&v77 + 1) = v23;
    v7 = v21;
    v8 = v20;
    v64 = v76;
    v65 = v77;
    v62 = v74;
    v63 = v75;
    *&v78 = partial apply for closure #1 in MiniObjectButtons.graphViewportButton.getter;
    *(&v78 + 1) = v24;
    *&v79 = v108;
    BYTE8(v79) = v109;
    *&v80 = v110;
    BYTE8(v80) = v111;
    v81 = v112;
    v68 = v80;
    v69 = v112;
    v66 = v78;
    v67 = v79;
    *&v86 = partial apply for closure #1 in MiniObjectButtons.graphViewportButton.getter;
    *(&v86 + 1) = v24;
    *&v87 = v108;
    BYTE8(v87) = v109;
    *&v88 = v110;
    BYTE8(v88) = v111;
    v89 = v112;
    outlined init with copy of Date?(&v74, &v113, &_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentN0OAA0P0OSgqd__yctAaGRd__lFQOyAhAE11buttonStyleyQrqd__AA0hV0Rd__lFQOyAA0H0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityT8ModifierVGAA14_PaddingLayoutVGAA01_D17ShapeKindModifierVyAA6CircleVGGG_AD0ghV0VQo__AhAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAhAE19allowsSecureDrawingQryFQOyACyAD020GraphableExpressionsI0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentN0OAA0P0OSgqd__yctAaGRd__lFQOyAhAE11buttonStyleyQrqd__AA0hV0Rd__lFQOyAA0H0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityT8ModifierVGAA14_PaddingLayoutVGAA01_D17ShapeKindModifierVyAA6CircleVGGG_AD0ghV0VQo__AhAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAhAE19allowsSecureDrawingQryFQOyACyAD020GraphableExpressionsI0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVGMR);
    outlined init with copy of Date?(&v78, &v113, &_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentN0OAA0P0OSgqd__yctAaGRd__lFQOyAhAE11buttonStyleyQrqd__AA0hV0Rd__lFQOyAA0H0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_D17ShapeKindModifierVyAA6CircleVGGAA013AccessibilityT8ModifierVGG_AD0ghV0VQo__ACyAhAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAhAE19allowsSecureDrawingQryFQOy09CalculateB0020CalculateGraphBoundsI0V_Qo__Qo_A8_GQo_GAA12_FrameLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentN0OAA0P0OSgqd__yctAaGRd__lFQOyAhAE11buttonStyleyQrqd__AA0hV0Rd__lFQOyAA0H0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_D17ShapeKindModifierVyAA6CircleVGGAA013AccessibilityT8ModifierVGG_AD0ghV0VQo__ACyAhAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAhAE19allowsSecureDrawingQryFQOy09CalculateB0020CalculateGraphBoundsI0V_Qo__Qo_A8_GQo_GAA12_FrameLayoutVGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v86, &_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentN0OAA0P0OSgqd__yctAaGRd__lFQOyAhAE11buttonStyleyQrqd__AA0hV0Rd__lFQOyAA0H0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_D17ShapeKindModifierVyAA6CircleVGGAA013AccessibilityT8ModifierVGG_AD0ghV0VQo__ACyAhAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAhAE19allowsSecureDrawingQryFQOy09CalculateB0020CalculateGraphBoundsI0V_Qo__Qo_A8_GQo_GAA12_FrameLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVy8PaperKit10MiniButtonVyAA4ViewPAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentN0OAA0P0OSgqd__yctAaGRd__lFQOyAhAE11buttonStyleyQrqd__AA0hV0Rd__lFQOyAA0H0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_D17ShapeKindModifierVyAA6CircleVGGAA013AccessibilityT8ModifierVGG_AD0ghV0VQo__ACyAhAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAhAE19allowsSecureDrawingQryFQOy09CalculateB0020CalculateGraphBoundsI0V_Qo__Qo_A8_GQo_GAA12_FrameLayoutVGSgMR);
    v2 = v52;

    v98 = v66;
    v99 = v67;
    v100 = v68;
    v101 = v69;
    v94 = v62;
    v95 = v63;
    v96 = v64;
    v97 = v65;
    UnknownCanvasElementView.flags.modify();
    v117 = v98;
    v118 = v99;
    v119 = v100;
    v120 = v101;
    v113 = v94;
    v114 = v95;
    v115 = v96;
    v116 = v97;
  }

  else
  {
    _s7SwiftUI9TupleViewVyAA15ModifiedContentVy8PaperKit10MiniButtonVyAA0D0PAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentO0OAA0Q0OSgqd__yctAaIRd__lFQOyAjAE11buttonStyleyQrqd__AA0jW0Rd__lFQOyAA0J0VyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityU8ModifierVGAA14_PaddingLayoutVGAA01_F17ShapeKindModifierVyAA6CircleVGGG_AF0ijW0VQo__AjAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAjAE19allowsSecureDrawingQryFQOyAEyAF020GraphableExpressionsD0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVG_AEyAHyAjAEAklmnOQrAR_AtWqd__yctAaIRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyA8_A13_GA19_GA10_GG_A23_Qo__AEyAjAEA25_yQrA27_FQOyAjAEA28_QryFQOy09CalculateB0020CalculateGraphBoundsD0V_Qo__Qo_A13_GQo_GA39_GSgtGSgWOi0_(&v113);
  }

  outlined init with copy of MiniObjectButtons(v2, &v94);
  v25 = swift_allocObject();
  outlined init with take of MiniObjectButtons(&v94, v25 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  Button.init(action:label:)();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindJ0VyAA6CircleVGGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle();
  v26 = v58;
  View.buttonStyle<A>(_:)();
  (*(v8 + 8))(v10, v7);
  outlined init with copy of MiniObjectButtons(v2, &v94);
  v52 = swift_allocObject();
  outlined init with take of MiniObjectButtons(&v94, v52 + 16);
  v27 = v60;
  MiniObjectButtons.expandedMenu.getter(v60);
  v82 = v117;
  v83 = v118;
  v84 = v119;
  v85 = v120;
  v78 = v113;
  v79 = v114;
  v80 = v115;
  v81 = v116;
  v29 = v53;
  v28 = v54;
  v50 = *(v53 + 16);
  v30 = v59;
  v50(v59, v26, v54);
  v31 = v56;
  v51 = *(v56 + 16);
  v32 = v27;
  v33 = v57;
  v51(v61, v32, v57);
  v34 = v82;
  v35 = v83;
  v90 = v82;
  v91 = v83;
  v36 = v85;
  v92 = v84;
  v93 = v85;
  v37 = v78;
  v38 = v79;
  v86 = v78;
  v87 = v79;
  v39 = v80;
  v40 = v81;
  v88 = v80;
  v89 = v81;
  v41 = v55;
  *(v55 + 6) = v84;
  *(v41 + 7) = v36;
  *(v41 + 4) = v34;
  *(v41 + 5) = v35;
  *(v41 + 2) = v39;
  *(v41 + 3) = v40;
  *v41 = v37;
  *(v41 + 1) = v38;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy8PaperKit10MiniButtonVyAA0D0PAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentO0OAA0Q0OSgqd__yctAaIRd__lFQOyAjAE11buttonStyleyQrqd__AA0jW0Rd__lFQOyAA0J0VyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityU8ModifierVGAA14_PaddingLayoutVGAA01_F17ShapeKindModifierVyAA6CircleVGGG_AF0ijW0VQo__AjAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAjAE19allowsSecureDrawingQryFQOyAEyAF020GraphableExpressionsD0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVG_AEyAHyAjAEAklmnOQrAR_AtWqd__yctAaIRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyA8_A13_GA19_GA10_GG_A23_Qo__AEyAjAEA25_yQrA27_FQOyAjAEA28_QryFQOy09CalculateB0020CalculateGraphBoundsD0V_Qo__Qo_A13_GQo_GA39_GSgtGSg_AjAEAXyQrqd__AaYRd__lFQOyA_yA42_G_A23_Qo_AHyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyAEyAEyA1_A3_yAA5ColorVSgGGA7_GA10_GA13_GA19_GG_A23_Qo_GAjAE11hoverEffect_0L7EnabledQrqd___SbtAA17CustomHoverEffectRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyAjAE9menuOrderyQrAA9MenuOrderVFQOyAEyAA4MenuVyAjAEAXyQrqd__AaYRd__lFQOyAEyAEyAEyAEyAEyA1_A39_GAA25_AlignmentWritingModifierVGA7_GA13_GA19_G_A23_Qo_ACyACyAA12ControlGroupVyACyAEyA_yAA5LabelVyAA4TextVA1_GGAA01_yZ17TransformModifierVySbGG_A99_tGG_AA7DividerVtGSg_ACyA95__A103_tGSgA95_A95_A95_A95_A79_yA94_ACyA95__A95_A_yA93_GtGGSgA95_SgA112_A112_ACyA103__A95_tGSgA112_A114_ACyA103__A112_A112_A112_A112_A112_A112_tGSgA103_A95_tGGA39_G_Qo__A23_Qo__AA15LiftHoverEffectVQo_tMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy8PaperKit10MiniButtonVyAA0D0PAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentO0OAA0Q0OSgqd__yctAaIRd__lFQOyAjAE11buttonStyleyQrqd__AA0jW0Rd__lFQOyAA0J0VyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityU8ModifierVGAA14_PaddingLayoutVGAA01_F17ShapeKindModifierVyAA6CircleVGGG_AF0ijW0VQo__AjAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAjAE19allowsSecureDrawingQryFQOyAEyAF020GraphableExpressionsD0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVG_AEyAHyAjAEAklmnOQrAR_AtWqd__yctAaIRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyA8_A13_GA19_GA10_GG_A23_Qo__AEyAjAEA25_yQrA27_FQOyAjAEA28_QryFQOy09CalculateB0020CalculateGraphBoundsD0V_Qo__Qo_A13_GQo_GA39_GSgtGSg_AjAEAXyQrqd__AaYRd__lFQOyA_yA42_G_A23_Qo_AHyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyAEyAEyA1_A3_yAA5ColorVSgGGA7_GA10_GA13_GA19_GG_A23_Qo_GAjAE11hoverEffect_0L7EnabledQrqd___SbtAA17CustomHoverEffectRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyAjAE9menuOrderyQrAA9MenuOrderVFQOyAEyAA4MenuVyAjAEAXyQrqd__AaYRd__lFQOyAEyAEyAEyAEyAEyA1_A39_GAA25_AlignmentWritingModifierVGA7_GA13_GA19_G_A23_Qo_ACyACyAA12ControlGroupVyACyAEyA_yAA5LabelVyAA4TextVA1_GGAA01_yZ17TransformModifierVySbGG_A99_tGG_AA7DividerVtGSg_ACyA95__A103_tGSgA95_A95_A95_A95_A79_yA94_ACyA95__A95_A_yA93_GtGGSgA95_SgA112_A112_ACyA103__A95_tGSgA112_A114_ACyA103__A112_A112_A112_A112_A112_A112_tGSgA103_A95_tGGA39_G_Qo__A23_Qo__AA15LiftHoverEffectVQo_tMR);
  v50(&v41[v42[12]], v30, v28);
  v43 = &v41[v42[16]];
  v44 = v52;
  *v43 = partial apply for closure #1 in MiniObjectButtons.deleteButton.getter;
  v43[1] = v44;
  v45 = &v41[v42[20]];
  v46 = v61;
  v51(v45, v61, v33);
  outlined init with copy of Date?(&v86, &v94, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy8PaperKit10MiniButtonVyAA0D0PAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentO0OAA0Q0OSgqd__yctAaIRd__lFQOyAjAE11buttonStyleyQrqd__AA0jW0Rd__lFQOyAA0J0VyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityU8ModifierVGAA14_PaddingLayoutVGAA01_F17ShapeKindModifierVyAA6CircleVGGG_AF0ijW0VQo__AjAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAjAE19allowsSecureDrawingQryFQOyAEyAF020GraphableExpressionsD0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVG_AEyAHyAjAEAklmnOQrAR_AtWqd__yctAaIRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyA8_A13_GA19_GA10_GG_A23_Qo__AEyAjAEA25_yQrA27_FQOyAjAEA28_QryFQOy09CalculateB0020CalculateGraphBoundsD0V_Qo__Qo_A13_GQo_GA39_GSgtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy8PaperKit10MiniButtonVyAA0D0PAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentO0OAA0Q0OSgqd__yctAaIRd__lFQOyAjAE11buttonStyleyQrqd__AA0jW0Rd__lFQOyAA0J0VyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityU8ModifierVGAA14_PaddingLayoutVGAA01_F17ShapeKindModifierVyAA6CircleVGGG_AF0ijW0VQo__AjAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAjAE19allowsSecureDrawingQryFQOyAEyAF020GraphableExpressionsD0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVG_AEyAHyAjAEAklmnOQrAR_AtWqd__yctAaIRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyA8_A13_GA19_GA10_GG_A23_Qo__AEyAjAEA25_yQrA27_FQOyAjAEA28_QryFQOy09CalculateB0020CalculateGraphBoundsD0V_Qo__Qo_A13_GQo_GA39_GSgtGSgMR);
  v47 = *(v31 + 8);

  v47(v60, v33);
  v48 = *(v29 + 8);
  v48(v58, v28);
  v47(v46, v33);

  v48(v59, v28);
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v94 = v78;
  v95 = v79;
  v96 = v80;
  v97 = v81;
  return outlined destroy of StocksKitCurrencyCache.Provider?(&v94, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy8PaperKit10MiniButtonVyAA0D0PAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentO0OAA0Q0OSgqd__yctAaIRd__lFQOyAjAE11buttonStyleyQrqd__AA0jW0Rd__lFQOyAA0J0VyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityU8ModifierVGAA14_PaddingLayoutVGAA01_F17ShapeKindModifierVyAA6CircleVGGG_AF0ijW0VQo__AjAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAjAE19allowsSecureDrawingQryFQOyAEyAF020GraphableExpressionsD0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVG_AEyAHyAjAEAklmnOQrAR_AtWqd__yctAaIRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyA8_A13_GA19_GA10_GG_A23_Qo__AEyAjAEA25_yQrA27_FQOyAjAEA28_QryFQOy09CalculateB0020CalculateGraphBoundsD0V_Qo__Qo_A13_GQo_GA39_GSgtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy8PaperKit10MiniButtonVyAA0D0PAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentO0OAA0Q0OSgqd__yctAaIRd__lFQOyAjAE11buttonStyleyQrqd__AA0jW0Rd__lFQOyAA0J0VyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityU8ModifierVGAA14_PaddingLayoutVGAA01_F17ShapeKindModifierVyAA6CircleVGGG_AF0ijW0VQo__AjAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAjAE19allowsSecureDrawingQryFQOyAEyAF020GraphableExpressionsD0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVG_AEyAHyAjAEAklmnOQrAR_AtWqd__yctAaIRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyA8_A13_GA19_GA10_GG_A23_Qo__AEyAjAEA25_yQrA27_FQOyAjAEA28_QryFQOy09CalculateB0020CalculateGraphBoundsD0V_Qo__Qo_A13_GQo_GA39_GSgtGSgMR);
}

double _s7SwiftUI9TupleViewVyAA15ModifiedContentVy8PaperKit10MiniButtonVyAA0D0PAAE7popover11isPresented16attachmentAnchor9arrowEdge7contentQrAA7BindingVySbG_AA017PopoverAttachmentO0OAA0Q0OSgqd__yctAaIRd__lFQOyAjAE11buttonStyleyQrqd__AA0jW0Rd__lFQOyAA0J0VyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA013AccessibilityU8ModifierVGAA14_PaddingLayoutVGAA01_F17ShapeKindModifierVyAA6CircleVGGG_AF0ijW0VQo__AjAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyAjAE19allowsSecureDrawingQryFQOyAEyAF020GraphableExpressionsD0VAA16_FlexFrameLayoutVG_Qo__Qo_Qo_GAA12_FrameLayoutVG_AEyAHyAjAEAklmnOQrAR_AtWqd__yctAaIRd__lFQOyAjAEAXyQrqd__AaYRd__lFQOyA_yAEyAEyAEyA8_A13_GA19_GA10_GG_A23_Qo__AEyAjAEA25_yQrA27_FQOyAjAEA28_QryFQOy09CalculateB0020CalculateGraphBoundsD0V_Qo__Qo_A13_GQo_GA39_GSgtGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGAA023AccessibilityAttachmentI0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #2 in Menu<>.init(_:systemImage:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x1EEDDC7B0](a1, a2, a3, a4, a5, a6);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGAA08_PaddingG0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGAA015_EnvironmentKeyiJ0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA25_AlignmentWritingModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized closure #1 in Button<>.init<A>(_:systemImage:role:action:)(void *a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type String and conformance String();

  return Label<>.init<A>(_:systemImage:)();
}

unint64_t lazy protocol witness table accessor for type FeedbackFeatures and conformance FeedbackFeatures()
{
  result = lazy protocol witness table cache variable for type FeedbackFeatures and conformance FeedbackFeatures;
  if (!lazy protocol witness table cache variable for type FeedbackFeatures and conformance FeedbackFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeedbackFeatures and conformance FeedbackFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeedbackFeatures and conformance FeedbackFeatures;
  if (!lazy protocol witness table cache variable for type FeedbackFeatures and conformance FeedbackFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeedbackFeatures and conformance FeedbackFeatures);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #21 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #21 in closure #1 in MiniObjectButtons.expandedMenu.getter(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  MEMORY[0x1DA6D07B0](v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in MiniObjectButtons.expandedMenu.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #3 in closure #1 in MiniObjectButtons.expandedMenu.getter(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_1()
{

  MEMORY[0x1DA6D07B0](v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void one-time initialization function for inputViewsForwardingScrollEvents(uint64_t a1, uint64_t *a2)
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8NSObjectC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = MEMORY[0x1E69E7CD0];
    }

    *a2 = v3;
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CD0];
  }
}

void closure #1 in variable initialization expression of static ScrollWheelEventSwizzler.swizzleScrollWheel()
{
  v7[4] = closure #1 in closure #1 in variable initialization expression of static ScrollWheelEventSwizzler.swizzleScrollWheel;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSObject & Responder, @guaranteed Event) -> ();
  v7[3] = &block_descriptor_12;
  v0 = _Block_copy(v7);
  v1 = imp_implementationWithBlock(v0);
  v2 = MEMORY[0x1DA6CCED0](0x75706E49534E4955, 0xED00007765695674);
  v3 = NSClassFromString(v2);

  if (v3)
  {
    InstanceMethod = class_getInstanceMethod(v3, sel_scrollWheel_);
    if (InstanceMethod)
    {
      v5 = InstanceMethod;
      if (class_addMethod(v3, sel_swizzled_scrollWheel_, v1, "v@:@"))
      {
        v6 = class_getInstanceMethod(v3, sel_swizzled_scrollWheel_);
        if (v6)
        {
          method_exchangeImplementations(v5, v6);
        }
      }
    }
  }

  _Block_release(v0);
}

void closure #1 in closure #1 in variable initialization expression of static ScrollWheelEventSwizzler.swizzleScrollWheel(void *a1, id a2)
{
  [a2 scrollingDeltaY];
  v5 = fabs(v4);
  [a2 scrollingDeltaX];
  v7 = fabs(v6);
  if ([a2 phase] != 1 && objc_msgSend(a2, sel_momentumPhase) != 1)
  {
    goto LABEL_8;
  }

  if (v7 >= v5)
  {
    if (one-time initialization token for inputViewsConsumingScrollEvents == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  if (one-time initialization token for inputViewsForwardingScrollEvents != -1)
  {
LABEL_27:
    swift_once();
  }

LABEL_7:
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v15, a1);
  swift_endAccess();

  if (![a2 phase] && v7 < v5)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (one-time initialization token for inputViewsForwardingScrollEvents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static ScrollWheelEventSwizzler.inputViewsForwardingScrollEvents;

  v10 = specialized Set.contains(_:)(a1, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (one-time initialization token for inputViewsConsumingScrollEvents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static ScrollWheelEventSwizzler.inputViewsConsumingScrollEvents;

  v12 = specialized Set.contains(_:)(a1, v11);

  if (v12)
  {
LABEL_18:
    [a1 swizzled:a2 scrollWheel:?];
  }

  else
  {
LABEL_10:
    v8 = [a1 nextResponder];
    if (v8)
    {
      [v8 scrollWheel_];
      swift_unknownObjectRelease();
    }
  }

  if ([a2 phase] == 8 || objc_msgSend(a2, sel_momentumPhase) == 8)
  {
    if (one-time initialization token for inputViewsForwardingScrollEvents != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = specialized Set._Variant.remove(_:)(a1);
    swift_endAccess();

    if (one-time initialization token for inputViewsConsumingScrollEvents != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = specialized Set._Variant.remove(_:)(a1);
    swift_endAccess();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSObject & Responder, @guaranteed Event) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for ScrollWheelEventSwizzler();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy8PaperKit24ScrollWheelEventSwizzlerC5StateOSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy8PaperKit24ScrollWheelEventSwizzlerC5StateOSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  *(v0 + 16) = result;
  static ScrollWheelEventSwizzler.shared = v0;
  return result;
}

{
  type metadata accessor for ThumbnailRenderer();
  v0 = swift_allocObject();
  result = ThumbnailRenderer.init()(v1);
  static ThumbnailRenderer.shared = v0;
  return result;
}

{
  type metadata accessor for LoupeRenderDebouncer();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC8];
  v0[15] = MEMORY[0x1E69E7CC8];
  v0[16] = v2;
  v0[14] = 0x3F90624DD2F1A9FCLL;
  static LoupeRenderDebouncer.shared = v0;
  return result;
}

void closure #1 in ScrollWheelEventSwizzler.enableScrollEventForwardingIfNecessary(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a1)
  {
    v14 = v5;
    v15 = v6;
    *v13.val = a2;
    *&v13.val[2] = a3;
    *&v13.val[4] = a4;
    *&v13.val[6] = a5;
    v8 = SecTaskCreateWithAuditToken(0, &v13);
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x1DA6CCED0](0xD000000000000038, 0x80000001D4084430);
      v11 = SecTaskCopyValueForEntitlement(v9, v10, 0);

      if (v11)
      {
        if (CFEqual(v11, *MEMORY[0x1E695E4D0]))
        {
          if (one-time initialization token for swizzleScrollWheel != -1)
          {
            swift_once();
          }

          if (one-time initialization token for swizzle_PDFScrollView_centerAlign != -1)
          {
            swift_once();
          }

          swift_unknownObjectRelease();

          v12 = 1;
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v12 = 2;
LABEL_13:
    *a1 = v12;
  }
}

uint64_t ScrollWheelEventSwizzler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ScrollWheelEventSwizzler.State and conformance ScrollWheelEventSwizzler.State()
{
  result = lazy protocol witness table cache variable for type ScrollWheelEventSwizzler.State and conformance ScrollWheelEventSwizzler.State;
  if (!lazy protocol witness table cache variable for type ScrollWheelEventSwizzler.State and conformance ScrollWheelEventSwizzler.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollWheelEventSwizzler.State and conformance ScrollWheelEventSwizzler.State);
  }

  return result;
}

void closure #1 in variable initialization expression of swizzle_PDFScrollView_centerAlign()
{
  v0 = MEMORY[0x1DA6CCED0](0x6C6F726353464450, 0xED0000776569566CLL);
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = Selector.init(_:)();
    InstanceMethod = class_getInstanceMethod(v1, v2);
    if (InstanceMethod)
    {
      v4 = InstanceMethod;
      Implementation = method_getImplementation(InstanceMethod);
      v6 = swift_allocObject();
      *(v6 + 16) = Implementation;
      v9[4] = partial apply for closure #1 in closure #1 in variable initialization expression of swizzle_PDFScrollView_centerAlign;
      v9[5] = v6;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIScrollView, @unowned Selector) -> ();
      v9[3] = &block_descriptor_10;
      v7 = _Block_copy(v9);

      v8 = imp_implementationWithBlock(v7);
      method_setImplementation(v4, v8);
      _Block_release(v7);
    }
  }
}

void closure #1 in closure #1 in variable initialization expression of swizzle_PDFScrollView_centerAlign(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  v4 = a1;
  v5 = [v4 superview];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for PaperDocumentView(0);
    v7 = v6;
    v8 = v4;
    while (1)
    {
      v25 = v8;
      v26 = v7;
      if (swift_dynamicCastClass())
      {
        break;
      }

      v7 = [v26 superview];
      v9 = v26;
      v8 = v26;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v10 = [v4 delegate];
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    if ([v10 respondsToSelector_])
    {
      v12 = [v11 viewForZoomingInScrollView_];
      swift_unknownObjectRelease();
      if (v12)
      {
        [v4 contentSize];
        v14 = v13;
        [v4 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [v4 adjustedContentInset];
        v28.origin.x = UIEdgeInsetsInsetRect(v16, v18, v20, v22, v23, v24);
        if (v14 < CGRectGetWidth(v28))
        {
          [v12 center];
          [v12 setCenter_];
        }
      }

LABEL_16:

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v4;
LABEL_7:
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIScrollView, @unowned Selector) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void SignatureListViewController.__allocating_init(editable:_:)(char a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v4) = a1;
  v5 = [objc_allocWithZone(v3) initWithNibName:0 bundle:0];
  v6 = 0x80000001D4084700;
  v7 = one-time initialization token for paperKitBundle;
  v8 = v5;
  if (v7 != -1)
  {
LABEL_45:
    swift_once();
  }

  v53._object = v6;
  v9._countAndFlagsBits = 0x727574616E676953;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v9._object = 0xEA00000000007365;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000019;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, paperKitBundle, v11, v53)._countAndFlagsBits;
  v13 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

  [v8 setTitle_];

  v14 = [v8 tableView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_51;
  }

  v15 = v14;
  type metadata accessor for SignatureTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22SignatureTableViewCellCmMd, &_s8PaperKit22SignatureTableViewCellCmMR);
  v17 = String.init<A>(describing:)();
  v18 = MEMORY[0x1DA6CCED0](v17);

  [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v18];

  v19 = [v8 tableView];
  if (!v19)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v20 = v19;
  type metadata accessor for SignatureAndDescriptionTableViewCell();
  v21 = swift_getObjCClassFromMetadata();
  v22 = String.init<A>(describing:)();
  v23 = MEMORY[0x1DA6CCED0](v22);

  [v20 registerClass:v21 forCellReuseIdentifier:v23];

  v24 = [v8 tableView];
  if (!v24)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v25 = v24;
  [v24 setEditing_];

  v26 = [v8 tableView];
  if (!v26)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v27 = v26;
  [v26 setAlwaysBounceVertical_];

  v28 = [v8 tableView];
  if (!v28)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = &selRef_systemBackgroundColor;
  if ((v4 & 1) == 0)
  {
    v31 = &selRef_clearColor;
  }

  v32 = [v30 *v31];
  [v29 setBackgroundColor_];

  v33 = [v8 tableView];
  if (!v33)
  {
    goto LABEL_55;
  }

  [v33 setRowHeight_];
  type metadata accessor for SignatureManager();
  swift_initStaticObject();
  v34 = SignatureManager.signatureItems.getter();
  v35 = v34;
  if (v4)
  {
    v36 = 4;
  }

  else
  {
    v36 = 3;
  }

  if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  v39 = v38 * 86.0 + -1.0;
  v40 = v8;
  [v40 setPreferredContentSize_];
  if (v35 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_21:
      v41 = 0;
      v6 = &OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription;
      do
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1DA6CE0C0](v41, v35);
          v43 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            if (v21 <= 2)
            {
              v46 = v42;
              v45 = a2;
              v44 = a3;
              if (v21 == 1)
              {

                v49 = 1;
                outlined consume of SignatureDescription(v8, 1uLL);
                outlined consume of SignatureDescription(0, 0);
                goto LABEL_48;
              }

              if (v21 == 2)
              {

                v47 = v8;
                v48 = 2;
                goto LABEL_43;
              }
            }

            else
            {
              v45 = a2;
              v44 = a3;
              v46 = v42;
              switch(v21)
              {
                case 3:

                  v47 = v8;
                  v48 = 3;
                  goto LABEL_43;
                case 4:

                  v47 = v8;
                  v48 = 4;
                  goto LABEL_43;
                case 5:

                  v47 = v8;
                  v48 = 5;
LABEL_43:
                  outlined consume of SignatureDescription(v47, v48);
                  outlined consume of SignatureDescription(0, 0);
                  v49 = 1;
                  goto LABEL_48;
              }
            }

            outlined copy of SignatureDescription(v8, v21);

            outlined consume of SignatureDescription(v8, v21);
            v47 = v8;
            v48 = v21;
            goto LABEL_43;
          }
        }

        else
        {
          if (v41 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v42 = *(v35 + 8 * v41 + 32);
          v43 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_30;
          }
        }

        v8 = *&v42[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
        v21 = *&v42[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8];
        if (v21)
        {
          goto LABEL_31;
        }

        outlined consume of SignatureDescription(v8, 0);
        outlined consume of SignatureDescription(0, 0);
        ++v41;
      }

      while (v43 != v4);
    }
  }

  v49 = 0;
  v45 = a2;
  v44 = a3;
LABEL_48:
  v40[OBJC_IVAR____TtC8PaperKit27SignatureListViewController_showDescriptions] = v49;
  v50 = &v40[OBJC_IVAR____TtC8PaperKit27SignatureListViewController_completion];
  *v50 = v45;
  v50[1] = v44;
}

id SignatureListViewController.init(nibName:bundle:)(__n128 a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC8PaperKit27SignatureListViewController_rowHeight] = 0x4055800000000000;
  *&v4[OBJC_IVAR____TtC8PaperKit27SignatureListViewController_maximumSelectRows] = 3;
  *&v4[OBJC_IVAR____TtC8PaperKit27SignatureListViewController_maximumEditRows] = 4;
  *&v4[OBJC_IVAR____TtC8PaperKit27SignatureListViewController_signatureRowHeight] = 0x4055800000000000;
  v4[OBJC_IVAR____TtC8PaperKit27SignatureListViewController_showDescriptions] = 0;
  v6 = &v4[OBJC_IVAR____TtC8PaperKit27SignatureListViewController_completion];
  *v6 = UnknownCanvasElementView.flags.modify;
  v6[1] = 0;
  if (a3)
  {
    v7 = MEMORY[0x1DA6CCED0](a2, a1);
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for SignatureListViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a4);

  return v8;
}

void SignatureListViewController.tableView(_:cellForRowAt:)(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit27SignatureListViewController_showDescriptions) == 1)
  {
    type metadata accessor for SignatureAndDescriptionTableViewCell();
  }

  else
  {
    type metadata accessor for SignatureTableViewCell();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22SignatureTableViewCellCmMd, &_s8PaperKit22SignatureTableViewCellCmMR);
  v3 = String.init<A>(describing:)();
  v4 = MEMORY[0x1DA6CCED0](v3);
  v5 = [a1 dequeueReusableCellWithIdentifier_];

  if (v5)
  {

    type metadata accessor for SignatureTableViewCell();
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }
}

void SignatureListViewController.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, SignatureLogger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D38C4000, v9, v10, "selected signature to insert", v11, 2u);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  v12 = MEMORY[0x1DA6CCED0](0xD000000000000025, 0x80000001D4084760);
  v25 = specialized closure #1 in static SignatureAnalytics.inserted();
  v26 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v24 = &block_descriptor_11;
  v13 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v13);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v20 deselectRowAtIndexPath:isa animated:1];

  (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  (*(v6 + 32))(v16 + v15, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = partial apply for closure #1 in SignatureListViewController.tableView(_:didSelectRowAt:);
  v26 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v24 = &block_descriptor_8;
  v17 = _Block_copy(&aBlock);
  v18 = v3;

  [v18 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

void closure #1 in SignatureListViewController.tableView(_:didSelectRowAt:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8PaperKit27SignatureListViewController_completion);
  type metadata accessor for SignatureManager();
  swift_initStaticObject();

  v2 = IndexPath.row.getter();
  v3 = SignatureManager.signatureItems.getter();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA6CE0C0](v2, v3);
    goto LABEL_5;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * v2 + 32);
LABEL_5:
  v5 = v4;

  v1(v5);
}

id SignatureListViewController.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SignatureListViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double outlined consume of SignatureDescription(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void partial apply for closure #1 in SignatureListViewController.tableView(_:didSelectRowAt:)()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);

  closure #1 in SignatureListViewController.tableView(_:didSelectRowAt:)(v1);
}

void specialized SignatureListViewController.tableView(_:willDisplay:forRowAt:)(uint64_t a1, id a2)
{
  v3 = v2;
  type metadata accessor for SignatureTableViewCell();
  v5 = swift_dynamicCastClassUnconditional();
  type metadata accessor for SignatureManager();
  swift_initStaticObject();
  v6 = SignatureManager.signatureItems.getter();
  v7 = IndexPath.row.getter();
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6CE0C0](v7, v6);
  }

  else
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v8 = *(v6 + 8 * v7 + 32);
  }

  v9 = *&v5[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signature];
  *&v5[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signature] = v8;
  a2 = v8;

  if (!(v6 >> 62))
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = __CocoaSet.count.getter();
  if (v10)
  {
LABEL_7:
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (!v11)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6CE0C0](v12, v6);
        goto LABEL_13;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v12 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v6 + 8 * v12 + 32);
LABEL_13:
          v14 = v13;

          type metadata accessor for SignatureItem(0);
          v15 = static NSObject.== infix(_:_:)();

          v16 = 0;
          if (v15)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_28:
        __break(1u);
        return;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_18:

LABEL_19:
  v16 = 1;
LABEL_20:
  [v5 setSeparatorStyle_];
  v17 = [v3 isEditing];
  v18 = objc_opt_self();
  v19 = &selRef_systemBackgroundColor;
  if (!v17)
  {
    v19 = &selRef_clearColor;
  }

  v20 = [v18 *v19];
  [v5 setBackgroundColor_];
}

void specialized SignatureListViewController.tableView(_:commit:forRowAt:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v19[12] = v3;
    v19[13] = v4;
    type metadata accessor for SignatureManager();
    swift_initStaticObject();
    v7 = IndexPath.row.getter();
    if (SignatureManager.removeSignature(atIndex:)(v7))
    {
      if (one-time initialization token for SignatureLogger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, SignatureLogger);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1D38C4000, v9, v10, "deleted signature", v11, 2u);
        MEMORY[0x1DA6D0660](v11, -1, -1);
      }

      v12 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4084790);
      v19[4] = specialized closure #1 in static SignatureAnalytics.inserted();
      v19[5] = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1107296256;
      v19[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      v19[3] = &block_descriptor_11;
      v13 = _Block_copy(v19);

      AnalyticsSendEventLazy();
      _Block_release(v13);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
      v14 = type metadata accessor for IndexPath();
      v15 = *(v14 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D4058CF0;
      (*(v15 + 16))(v17 + v16, a3, v14);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [a1 deleteRowsAtIndexPaths:isa withRowAnimation:100];
    }
  }
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZSo7UIImageCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd, &_sSo7UIImageCSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd, &_sSo7UIImageCSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZSo6CGRectV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for CGRect(0);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for CGRect(0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZ10Foundation4DataV_So6CGSizeVtSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So6CGSizeVtSgMd, &_s10Foundation4DataV_So6CGSizeVtSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So6CGSizeVtSgMd, &_s10Foundation4DataV_So6CGSizeVtSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZSi_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v23 = *(v28 - 8);
  v13 = MEMORY[0x1EEE9AC00](v28);
  v15 = &v22 - v14;
  (*(v10 + 16))(v12, v27, v9, v13);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>> and conformance CRSequence<A>, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E69950A8]);
  v27 = v15;
  dispatch thunk of Sequence.makeIterator()();
  v26 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CRSequence<A>.Iterator, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR, MEMORY[0x1E6995098]);
  v16 = (v22 + 48);
  v17 = (v22 + 32);
  v18 = (v22 + 8);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v19 = (*v16)(v8, 1, v3);
    if (v19 == 1)
    {
      break;
    }

    (*v17)(v5, v8, v3);
    v20 = v24(v5);
    (*v18)(v5, v3);
    if (v2)
    {
      break;
    }
  }

  while ((v20 & 1) == 0);
  (*(v23 + 8))(v27, v28);
  return v19 != 1;
}

{
  v24 = a1;
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v23 = *(v28 - 8);
  v13 = MEMORY[0x1EEE9AC00](v28);
  v15 = &v22 - v14;
  (*(v10 + 16))(v12, v27, v9, v13);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E6995150]);
  v27 = v15;
  dispatch thunk of Sequence.makeIterator()();
  v26 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR, MEMORY[0x1E6995120]);
  v16 = (v22 + 48);
  v17 = (v22 + 32);
  v18 = (v22 + 8);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v19 = (*v16)(v8, 1, v3);
    if (v19 == 1)
    {
      break;
    }

    (*v17)(v5, v8, v3);
    v20 = v24(v5);
    (*v18)(v5, v3);
    if (v2)
    {
      break;
    }
  }

  while ((v20 & 1) == 0);
  (*(v23 + 8))(v27, v28);
  return v19 != 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1DA6CE0C0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = __CocoaSet.count.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1DA6CE0C0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

{
  return sub_1D38DA180(a1, a2, a3) & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t static ImageFileSync.ImageFileSyncError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImageFileSync.ImageFileSyncError(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t ImageFileSync.init(encryptPrivateMetadata:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t ImageFileSync.ImageWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t key path getter for ImageFileSync.customCanvasSizeForImageSize : ImageFileSync@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v3, v4);
}

uint64_t key path setter for ImageFileSync.customCanvasSizeForImageSize : ImageFileSync(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGSize) -> (@out CGSize);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t ImageFileSync.customCanvasSizeForImageSize.getter()
{
  v1 = *(v0 + 8);
  outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v1, *(v0 + 16));
  return v1;
}

uint64_t ImageFileSync.customCanvasSizeForImageSize.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void ImageFileSync.read(from:context:coordinator:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  Capsule<>.init(_:)(v6, a2);
}

uint64_t ImageFileSync.read(from:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  *(v3 + 24) = *(v2 + 8);
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = ImageFileSync.read(from:);

  return ImageFileSync.readAsync(from:coordinator:)(a1, a2, 0);
}

uint64_t ImageFileSync.read(from:)()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](ImageFileSync.read(from:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t ImageFileSync.readAsync(from:coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for DataOrURL(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ImageFileSync.readAsync(from:coordinator:), 0, 0);
}

uint64_t ImageFileSync.readAsync(from:coordinator:)()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  v5 = v0[3];
  v6 = v0[4];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 16))(v2, v5, v7);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  outlined init with copy of DataOrURL(v2, v1, type metadata accessor for DataOrURL);
  outlined init with copy of TaskPriority?(v3, v4);
  v9 = v6;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = ImageFileSync.readAsync(from:coordinator:);
  v11 = v0[11];
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[4];

  return Capsule<>.init(_:priority:fileCoordinator:)(v12, v11, v13, v14);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = ImageFileSync.readAsync(from:coordinator:);
  }

  else
  {
    v2 = ImageFileSync.readAsync(from:coordinator:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[2];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[9], &_sScPSgMd, &_sScPSgMR);
  outlined destroy of DataOrURL(v1, type metadata accessor for DataOrURL);
  (*(v3 + 32))(v5, v2, v4);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[12];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[9], &_sScPSgMd, &_sScPSgMR);
  outlined destroy of DataOrURL(v1, type metadata accessor for DataOrURL);

  v2 = v0[1];

  return v2();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ImageFileSync.read(from:context:coordinator:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  outlined copy of Data._Representation(a1, a2);
  Capsule<>.init(_:)(v8, a3);
}

void ImageFileSync.write(_:to:context:coordinator:)(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v77 = a3;
  v78 = a4;
  v73 = a1;
  v88 = type metadata accessor for URL();
  v76 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v75 = v7;
  v85 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v71 = *(v83 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - v12;
  v14 = type metadata accessor for UTType();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v70 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v69 = *v4;
  v23 = *(v4 + 1);
  v80 = *(v4 + 2);
  v81 = v23;
  v84 = &v63 - v24;
  static UTType.jpeg.getter();
  v74 = a2;
  v25 = URL.pathExtension.getter();
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v79 = v17;
  if (!v27)
  {
    v64 = v5;

    v28 = v15;
    goto LABEL_7;
  }

  static UTType.image.getter();
  UTType.init(filenameExtension:conformingTo:)();
  v28 = v15;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v64 = v5;
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
LABEL_7:
    v29 = v84;
    goto LABEL_8;
  }

  v57 = *(v15 + 32);
  v68 = (v15 + 32);
  v67 = v57;
  (v57)(v20, v13, v14);
  v58 = CGImageDestinationCopyTypeIdentifiers();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v87[0] = 0;
  static Array._forceBridgeFromObjectiveC(_:result:)();
  v59 = v87[0];
  if (!v87[0])
  {
    __break(1u);
    return;
  }

  v87[0] = UTType.identifier.getter();
  v87[1] = v60;
  MEMORY[0x1EEE9AC00](v87[0]);
  *(&v63 - 2) = v87;
  v61 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v63 - 4), v59);

  v62 = *(v15 + 8);
  v28 = v15;
  v64 = v5;
  if (v61)
  {
    v29 = v84;
    v62(v84, v14);
    (v67)(v29, v20, v14);
  }

  else
  {
    v62(v20, v14);
    v29 = v84;
  }

  v17 = v79;
LABEL_8:
  v65 = v28;
  v67 = dispatch_semaphore_create(0);
  v30 = swift_allocObject();
  v66 = v30;
  *(v30 + 16) = 0;
  v68 = (v30 + 16);
  v31 = v86;
  static TaskPriority.userInitiated.getter();
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = v71;
  (*(v71 + 16))(v82, v73, v83);
  v34 = v76;
  (*(v76 + 16))(v85, v74, v88);
  (*(v28 + 16))(v17, v29, v14);
  v35 = (*(v33 + 80) + 56) & ~*(v33 + 80);
  v36 = (v72 + *(v34 + 80) + v35) & ~*(v34 + 80);
  v37 = (v75 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v28 + 80);
  v75 = v14;
  v40 = (v39 + v38 + 8) & ~v39;
  v41 = (v40 + v70) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = v40 + v70;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v69;
  v43 = v80;
  *(v42 + 40) = v81;
  *(v42 + 48) = v43;
  (*(v33 + 32))(v42 + v35, v82, v83);
  v44 = v66;
  (*(v34 + 32))(v42 + v36, v85, v88);
  v46 = v77;
  v45 = v78;
  *(v42 + v37) = v77;
  *(v42 + v38) = v45;
  v47 = v65;
  v48 = v75;
  (*(v65 + 32))(v42 + v40, v79, v75);
  *(v42 + v74) = 1;
  *(v42 + v41 + 8) = v44;
  v49 = v67;
  *(v42 + v73) = v67;
  v50 = v46;
  v51 = v45;

  v52 = v49;
  outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v81, v80);
  v53 = v86;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v86, &async function pointer to partial apply for closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:), v42);

  outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_sScPSgMd, &_sScPSgMR);
  OS_dispatch_semaphore.wait()();
  v54 = v68;
  swift_beginAccess();
  v55 = *v54;
  if (v55)
  {
    swift_willThrow();
    v56 = v55;
  }

  (*(v47 + 8))(v84, v48);
}

double ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v57 = a6;
  v52 = a2;
  v53 = a5;
  v55 = a3;
  v56 = a4;
  v51 = a1;
  v64 = type metadata accessor for UTType();
  v60 = *(v64 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v44 = v8;
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v43 = v10;
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v45 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42 - v15;
  v49 = &v42 - v15;
  v47 = *v6;
  v17 = *(v6 + 1);
  v61 = *(v6 + 2);
  v62 = v17;
  v50 = dispatch_semaphore_create(0);
  v18 = swift_allocObject();
  v48 = v18;
  *(v18 + 16) = 0;
  v54 = (v18 + 16);
  static TaskPriority.userInitiated.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  v20 = v58;
  (*(v58 + 16))(v13, v51, v10);
  v21 = v59;
  (*(v59 + 16))(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v8);
  v22 = v60;
  (*(v60 + 16))(v63, v53, v64);
  v23 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v24 = (v11 + *(v21 + 80) + v23) & ~*(v21 + 80);
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v22 + 80) + v26 + 8) & ~*(v22 + 80);
  v28 = v27 + v7;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v47;
  v30 = v61;
  *(v29 + 40) = v62;
  *(v29 + 48) = v30;
  (*(v58 + 32))(v29 + v23, v45, v43);
  (*(v59 + 32))(v29 + v24, v46, v44);
  v32 = v55;
  v31 = v56;
  *(v29 + v25) = v55;
  *(v29 + v26) = v31;
  (*(v60 + 32))(v29 + v27, v63, v64);
  *(v29 + v28) = v57;
  *(v29 + (v28 & 0xFFFFFFFFFFFFFFF8) + 8) = v48;
  v33 = v50;
  *(v29 + (((v28 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v34 = v32;
  v35 = v31;

  v36 = v33;
  outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v62, v61);
  v37 = v49;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v49, &closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)partial apply, v29);

  outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_sScPSgMd, &_sScPSgMR);
  OS_dispatch_semaphore.wait()();
  v38 = v54;
  swift_beginAccess();
  v39 = *v38;
  if (v39)
  {
    swift_willThrow();
    v40 = v39;
  }

  return result;
}

uint64_t ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(a1, a2, a3, a5, a6);
}

uint64_t closure #1 in ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:), 0, 0);
}

uint64_t closure #1 in ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)()
{
  v1 = Data.init(contentsOf:options:)();
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #2 in ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(void *a1, void *a2)
{
  v4 = type metadata accessor for ImageMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  Capsule.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  CRRegister.wrappedValue.getter();
  if (v15)
  {
    v12 = MEMORY[0x1DA6CCED0](v14, v15);

    PPKSetAccessibilityDescriptionIntoMetadata(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  CRRegister.wrappedValue.getter();
  ImageMetadata.writeMetadata(to:)(v11, v10);

  outlined destroy of DataOrURL(v6, type metadata accessor for ImageMetadata);
  return outlined destroy of DataOrURL(v9, type metadata accessor for Image);
}

void thunk for @escaping @callee_guaranteed (@guaranteed CGMutableImageMetadataRef, @guaranteed NSMutableDictionary) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  *v11 = v8;
  v11[1] = closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);

  return specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(a7, a8, v14, v15, v16);
}

uint64_t closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  }

  else
  {
    v2 = closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  OS_dispatch_semaphore.signal()();
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[11];
  v2 = v0[8];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  OS_dispatch_semaphore.signal()();
  v4 = v0[1];

  return v4();
}

void protocol witness for CRCustomFileSync.read(from:context:coordinator:) in conformance ImageFileSync(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  Capsule<>.init(_:)(v6, a2);
}

uint64_t partial apply for closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  type metadata accessor for UTType();
  v13 = *(v1 + 24);
  v14 = *(v1 + 16);
  v17 = *(v1 + 32);
  v9 = *(v1 + 48);
  v12 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(a1, v14, v13, v17, v12, v9, v1 + v5, v1 + v8);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  type metadata accessor for AnyCanvasElementView();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for CanvasElementResizeHandle();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v21 = *(v1 - 8);
  v22 = v1;
  v2 = *(v21 + 80);
  v3 = *(v21 + 64);
  v20 = type metadata accessor for URL();
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v19 = type metadata accessor for UTType();
  v7 = *(v19 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  v10 = (v2 + 56) & ~v2;
  v11 = (v10 + v3 + v5) & ~v5;
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v2;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + v8 + 8) & ~v8;
  v16 = v13 | v5 | v8;
  (*(v21 + 8))(v0 + v10, v22);
  (*(v4 + 8))(v0 + v11, v20);

  (*(v7 + 8))(v0 + v15, v19);

  v17 = (((v15 + v9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v17 + 8, v16 | 7);
}

uint64_t closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)partial apply(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  type metadata accessor for UTType();
  v13 = *(v1 + 24);
  v14 = *(v1 + 16);
  v17 = *(v1 + 32);
  v9 = *(v1 + 48);
  v12 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(a1, v14, v13, v17, v12, v9, v1 + v5, v1 + v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo7UIImageCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo7UIImageCSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo6CGRectV_TG5(uint64_t a1, int *a2)
{
  *(v2 + 48) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo6CGRectV_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo6CGRectV_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 32);
  *v2 = *(v1 + 16);
  v2[1] = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSi_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSi_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSi_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 91) = a5;
  *(v6 + 528) = a4;
  *(v6 + 520) = a3;
  *(v6 + 504) = a1;
  *(v6 + 512) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v6 + 536) = swift_task_alloc();
  v7 = type metadata accessor for UTType();
  *(v6 + 544) = v7;
  *(v6 + 552) = *(v7 - 8);
  *(v6 + 560) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  *(v6 + 568) = v8;
  v9 = *(v8 - 8);
  *(v6 + 576) = v9;
  *(v6 + 584) = *(v9 + 64);
  *(v6 + 592) = swift_task_alloc();
  v10 = type metadata accessor for CRCodableVersion();
  *(v6 + 600) = v10;
  *(v6 + 608) = *(v10 - 8);
  *(v6 + 616) = swift_task_alloc();
  type metadata accessor for Image(0);
  *(v6 + 624) = swift_task_alloc();
  v11 = type metadata accessor for ContentsBounds(0);
  *(v6 + 632) = v11;
  *(v6 + 640) = *(v11 - 8);
  *(v6 + 648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = type metadata accessor for DataOrURL(0);
  *(v6 + 672) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v6 + 680) = v12;
  *(v6 + 688) = *(v12 - 8);
  *(v6 + 696) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v6 + 704) = v13;
  *(v6 + 712) = *(v13 - 8);
  *(v6 + 720) = swift_task_alloc();
  *(v6 + 728) = swift_task_alloc();
  v14 = type metadata accessor for CRAssetOrData(0);
  *(v6 + 736) = v14;
  *(v6 + 744) = *(v14 - 8);
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  *(v6 + 784) = swift_task_alloc();
  v15 = type metadata accessor for CRAsset();
  *(v6 + 792) = v15;
  *(v6 + 800) = *(v15 - 8);
  *(v6 + 808) = swift_task_alloc();
  *(v6 + 171) = *v5;

  return MEMORY[0x1EEE6DFA0](specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:), 0, 0);
}

uint64_t specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(__n128 a1)
{
  if (static Task<>.isCancelled.getter())
  {

    v2 = *(v1 + 8);
LABEL_21:

    return v2();
  }

  v3 = *(v1 + 776);
  v4 = *(v1 + 744);
  v5 = *(v1 + 736);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v6 = *(v4 + 48);
  if (v6(v3, 1, v5) == 1)
  {
    v7 = *(v1 + 800);
    v8 = *(v1 + 792);
    v9 = *(v1 + 784);
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 776), &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    (*(v7 + 56))(v9, 1, 1, v8);
  }

  else
  {
    outlined init with copy of DataOrURL(*(v1 + 776), *(v1 + 760), type metadata accessor for CRAssetOrData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of DataOrURL(*(v1 + 760), type metadata accessor for CRAssetOrData);
      v10 = 1;
    }

    else
    {
      (*(*(v1 + 800) + 32))(*(v1 + 784), *(v1 + 760), *(v1 + 792));
      v10 = 0;
    }

    v11 = *(v1 + 800);
    v12 = *(v1 + 792);
    v13 = *(v1 + 784);
    v14 = *(v1 + 776);
    (*(v11 + 56))(v13, v10, 1, v12);
    outlined destroy of DataOrURL(v14, type metadata accessor for CRAssetOrData);
    if ((*(v11 + 48))(v13, 1, v12) != 1)
    {
      (*(*(v1 + 800) + 32))(*(v1 + 808), *(v1 + 784), *(v1 + 792));
      v39 = swift_task_alloc();
      *(v1 + 816) = v39;
      *v39 = v1;
      v39[1] = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
      v40 = MEMORY[0x1E6969080];

      return MEMORY[0x1EEDF52A8](v1 + 472, 0, &async function pointer to closure #1 in ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:), 0, v40);
    }
  }

  v15 = *(v1 + 768);
  v16 = *(v1 + 736);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 784), &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v17 = v6(v15, 1, v16);
  v18 = *(v1 + 768);
  if (v17 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
LABEL_20:
    v41 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    swift_allocError();
    strcpy(v42, "No image data.");
    v42[15] = -18;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x1E6995188], v41);
    swift_willThrow();
    outlined consume of Data?(0, 0xF000000000000000);

    v2 = *(v1 + 8);
    goto LABEL_21;
  }

  outlined init with copy of DataOrURL(v18, *(v1 + 752), type metadata accessor for CRAssetOrData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *(v1 + 768);
  v21 = *(v1 + 752);
  if (EnumCaseMultiPayload != 1)
  {
    outlined destroy of DataOrURL(v21, type metadata accessor for CRAssetOrData);
    outlined destroy of DataOrURL(v20, type metadata accessor for CRAssetOrData);
    goto LABEL_20;
  }

  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  outlined destroy of DataOrURL(*(v1 + 768), type metadata accessor for CRAssetOrData);
  outlined copy of Data._Representation(v24, v25);
  outlined consume of Data._Representation(v22, v23);
  outlined consume of Data._Representation(v24, v25);
  outlined copy of Data._Representation(v24, v25);
  *(v1 + 840) = v25;
  *(v1 + 832) = v24;
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
  lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v1 + 848) = isa;

  v100 = v25;
  v101 = v24;
  v31 = Data._bridgeToObjectiveC()().super.isa;
  v32 = CGImageSourceCreateWithData(v31, isa);

  if (v32)
  {
    v33 = COERCE_DOUBLE(specialized static ImageHDRInfo.info(for:)(v32));
    v35 = v34;
    v37 = v36;

    if (v35)
    {
      if (v33 <= 1.0)
      {

        v38 = 0;
        v35 = 0;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v37 = 0;
      v33 = 0.0;
      v38 = 1;
    }
  }

  else
  {
    v37 = 0;
    v33 = 0.0;
    v35 = 0;
    v38 = 1;
  }

  specialized Capsule<>.maxHDRHeadroom()();
  v44 = v43;
  v97 = v37;
  if (v43 <= 1.0)
  {
    v95 = v38;
    v96 = v33;
  }

  else
  {
    v45 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0D8]);

    if (v38)
    {
      v95 = 0;
      v96 = v44;
    }

    else
    {
      v95 = 0;
      v46 = v33;
      if (v44 >= v33)
      {
        v46 = v44;
      }

      v96 = v46;
    }

    v35 = v45;
  }

  *(v1 + 856) = v35;
  v47 = objc_opt_self();
  *(v1 + 864) = v47;
  v48 = [v47 defaultManager];
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  *(v1 + 488) = 0;
  v52 = [v48 URLForDirectory:99 inDomain:1 appropriateForURL:v50 create:1 error:v1 + 488];

  v53 = *(v1 + 488);
  v102 = v35;
  if (v52)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
  }

  else
  {
    v55 = v53;
    v56 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v57 = [v47 defaultManager];
    v58 = [v57 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *(v1 + 872) = 0;
  v59 = *(v1 + 696);
  v60 = *(v1 + 688);
  v61 = *(v1 + 680);
  v62 = *(v1 + 672);
  v63 = *(v1 + 640);
  v98 = *(v1 + 656);
  v99 = *(v1 + 632);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v60 + 8))(v59, v61);
  URL.appendingPathComponent(_:)();

  *v62 = v101;
  v62[1] = v100;
  swift_storeEnumTagMultiPayload();
  outlined copy of Data._Representation(v101, v100);
  v64 = specialized static ImageLayout.imageSize(from:)(v62);
  v66 = v65;
  outlined destroy of DataOrURL(v62, type metadata accessor for DataOrURL);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v67 = (*(v63 + 48))(v98, 1, v99);
  v68 = *(v1 + 656);
  if (v67 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  }

  else
  {
    outlined init with copy of DataOrURL(v68, *(v1 + 648), type metadata accessor for ContentsBounds);
    v69 = swift_getEnumCaseMultiPayload();
    v70 = *(v1 + 656);
    v71 = *(v1 + 648);
    if (v69)
    {
      outlined destroy of DataOrURL(v71, type metadata accessor for ContentsBounds);
      outlined destroy of DataOrURL(v70, type metadata accessor for ContentsBounds);
    }

    else
    {
      v72 = *(v71 + 16);
      v73 = *(v71 + 24);
      outlined destroy of DataOrURL(*(v1 + 656), type metadata accessor for ContentsBounds);
      v64 = v64 * v72;
      v66 = v66 * v73;
    }
  }

  swift_getKeyPath();
  Capsule.subscript.getter();

  swift_getKeyPath();
  Capsule.subscript.getter();

  v74 = *(v1 + 92);
  if (v74 <= 8 && ((1 << v74) & 0x160) != 0 || v74 == 7)
  {
    v75 = *(v1 + 368);
    v76 = *(v1 + 376);
    *(v1 + 368) = v76;
    *(v1 + 376) = v75;
    v77 = v66;
  }

  else
  {
    v76 = *(v1 + 368);
    v75 = *(v1 + 376);
    v77 = v64;
    v64 = v66;
  }

  *(v1 + 888) = v64;
  *(v1 + 880) = v77;
  v78 = *(v1 + 352);
  v79 = *(v1 + 360);
  *(v1 + 896) = v78;
  *(v1 + 904) = v79;
  *(v1 + 912) = v76;
  *(v1 + 920) = v75;
  if (v102)
  {
    v80 = v102;
    v81 = 1;
    if (!CGColorSpaceUsesExtendedRange(v80))
    {
      v81 = MEMORY[0x1DA6CEC30](v80);
    }

    *(v1 + 928) = type metadata accessor for ImageRenderer();
    v82 = swift_allocObject();
    *(v82 + 16) = 1;
    *(v82 + 24) = v77;
    *(v82 + 32) = v64;
    *(v82 + 40) = 0x3FF0000000000000;
    *(v82 + 48) = v97 & 1;
    *(v82 + 49) = v81;
    *(v82 + 56) = v96;
    *(v82 + 64) = v95;
    *(v82 + 72) = v102;
    *(v82 + 80) = 1;
    *(v1 + 936) = type metadata accessor for CanvasElementImageRenderer();
    v83 = swift_initStackObject();
    *(v1 + 944) = v83;
    v85 = specialized CanvasElementImageRenderer.init(renderer:)(v82, v83, v84);
    *(v1 + 952) = v85;
    *(v85 + 74) = 0;
    swift_beginAccess();
    *(v85 + 72) = 1;
    Capsule.root.getter();
    v86 = swift_task_alloc();
    *(v1 + 960) = v86;
    *v86 = v1;
    v87 = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  }

  else
  {
    type metadata accessor for ImageRenderer();
    v88 = swift_allocObject();
    *(v88 + 16) = 1;
    *(v88 + 24) = v77;
    *(v88 + 32) = v64;
    *(v88 + 40) = 0x3FF0000000000000;
    *(v88 + 48) = 0;
    *(v88 + 56) = 0;
    *(v88 + 64) = 1;
    *(v88 + 72) = 0;
    *(v88 + 80) = 1;
    type metadata accessor for CanvasElementImageRenderer();
    v89 = swift_initStackObject();
    *(v1 + 1008) = v89;
    v91 = specialized CanvasElementImageRenderer.init(renderer:)(v88, v89, v90);
    *(v1 + 1016) = v91;
    swift_beginAccess();
    *(v91 + 72) = 1;
    Capsule.root.getter();
    v86 = swift_task_alloc();
    *(v1 + 1024) = v86;
    *v86 = v1;
    v87 = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  }

  v86[1] = v87;
  v92 = *(v1 + 624);
  v93 = *(v1 + 504);

  return specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v92, v93, 0, 0, 0, v78, v79, v76, v75);
}

uint64_t specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  }

  else
  {
    v2 = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(*(v0 + 800) + 8))(*(v0 + 808), *(v0 + 792));
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  if (v1 >> 60 == 15)
  {
    v3 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    swift_allocError();
    strcpy(v4, "No image data.");
    v4[15] = -18;
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6995188], v3);
    swift_willThrow();
    outlined consume of Data?(v2, v1);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + 472), *(v0 + 480));
    v7 = *(v0 + 824);
    *(v0 + 840) = v1;
    *(v0 + 832) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMR);
    inited = swift_initStackObject();
    v9 = MEMORY[0x1E696E0A8];
    *(inited + 16) = xmmword_1D4058CF0;
    v10 = *v9;
    *(inited + 32) = v10;
    *(inited + 40) = 0;
    v11 = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd, &_sSo11CFStringRefa_SbtMR);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 848) = isa;

    v77 = v2;
    v13 = Data._bridgeToObjectiveC()().super.isa;
    v14 = CGImageSourceCreateWithData(v13, isa);

    v78 = v1;
    if (v14)
    {
      v15 = COERCE_DOUBLE(specialized static ImageHDRInfo.info(for:)(v14));
      v17 = v16;
      v19 = v18;

      if (v17)
      {
        if (v15 <= 1.0)
        {

          v20 = 0;
          v17 = 0;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v19 = 0;
        v15 = 0.0;
        v20 = 1;
      }
    }

    else
    {
      v19 = 0;
      v15 = 0.0;
      v17 = 0;
      v20 = 1;
    }

    specialized Capsule<>.maxHDRHeadroom()();
    v22 = v21;
    v74 = v19;
    if (v21 <= 1.0)
    {
      v72 = v20;
      v73 = v15;
    }

    else
    {
      v23 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0D8]);

      if (v20)
      {
        v72 = 0;
        v73 = v22;
      }

      else
      {
        v72 = 0;
        v24 = v15;
        if (v22 >= v15)
        {
          v24 = v22;
        }

        v73 = v24;
      }

      v17 = v23;
    }

    *(v0 + 856) = v17;
    v25 = objc_opt_self();
    *(v0 + 864) = v25;
    v26 = [v25 defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    *(v0 + 488) = 0;
    v30 = [v26 URLForDirectory:99 inDomain:1 appropriateForURL:v28 create:1 error:v0 + 488];

    v31 = *(v0 + 488);
    v79 = v17;
    if (v30)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v33 = v31;
      v34 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v35 = [v25 defaultManager];
      v36 = [v35 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = 0;
    }

    *(v0 + 872) = v7;
    v37 = *(v0 + 696);
    v38 = *(v0 + 688);
    v39 = *(v0 + 680);
    v40 = *(v0 + 672);
    v41 = *(v0 + 640);
    v75 = *(v0 + 656);
    v76 = *(v0 + 632);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v38 + 8))(v37, v39);
    URL.appendingPathComponent(_:)();

    *v40 = v77;
    v40[1] = v78;
    swift_storeEnumTagMultiPayload();
    outlined copy of Data._Representation(v77, v78);
    v42 = specialized static ImageLayout.imageSize(from:)(v40);
    v44 = v43;
    outlined destroy of DataOrURL(v40, type metadata accessor for DataOrURL);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v45 = (*(v41 + 48))(v75, 1, v76);
    v46 = *(v0 + 656);
    if (v45 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    }

    else
    {
      outlined init with copy of DataOrURL(v46, *(v0 + 648), type metadata accessor for ContentsBounds);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v48 = *(v0 + 656);
      v49 = *(v0 + 648);
      if (EnumCaseMultiPayload)
      {
        outlined destroy of DataOrURL(v49, type metadata accessor for ContentsBounds);
        outlined destroy of DataOrURL(v48, type metadata accessor for ContentsBounds);
      }

      else
      {
        v50 = *(v49 + 16);
        v51 = *(v49 + 24);
        outlined destroy of DataOrURL(*(v0 + 656), type metadata accessor for ContentsBounds);
        v42 = v42 * v50;
        v44 = v44 * v51;
      }
    }

    swift_getKeyPath();
    Capsule.subscript.getter();

    swift_getKeyPath();
    Capsule.subscript.getter();

    v52 = *(v0 + 92);
    if (v52 <= 8 && ((1 << v52) & 0x160) != 0 || v52 == 7)
    {
      v53 = *(v0 + 368);
      v54 = *(v0 + 376);
      *(v0 + 368) = v54;
      *(v0 + 376) = v53;
      v55 = v44;
    }

    else
    {
      v54 = *(v0 + 368);
      v53 = *(v0 + 376);
      v55 = v42;
      v42 = v44;
    }

    *(v0 + 888) = v42;
    *(v0 + 880) = v55;
    v56 = *(v0 + 352);
    v57 = *(v0 + 360);
    *(v0 + 896) = v56;
    *(v0 + 904) = v57;
    *(v0 + 912) = v54;
    *(v0 + 920) = v53;
    if (v79)
    {
      v58 = v79;
      v59 = 1;
      if (!CGColorSpaceUsesExtendedRange(v58))
      {
        v59 = MEMORY[0x1DA6CEC30](v58);
      }

      *(v0 + 928) = type metadata accessor for ImageRenderer();
      v60 = swift_allocObject();
      *(v60 + 16) = 1;
      *(v60 + 24) = v55;
      *(v60 + 32) = v42;
      *(v60 + 40) = 0x3FF0000000000000;
      *(v60 + 48) = v74 & 1;
      *(v60 + 49) = v59;
      *(v60 + 56) = v73;
      *(v60 + 64) = v72;
      *(v60 + 72) = v79;
      *(v60 + 80) = 1;
      *(v0 + 936) = type metadata accessor for CanvasElementImageRenderer();
      v61 = swift_initStackObject();
      *(v0 + 944) = v61;
      v63 = specialized CanvasElementImageRenderer.init(renderer:)(v60, v61, v62);
      *(v0 + 952) = v63;
      *(v63 + 74) = 0;
      swift_beginAccess();
      *(v63 + 72) = 1;
      Capsule.root.getter();
      v64 = swift_task_alloc();
      *(v0 + 960) = v64;
      *v64 = v0;
      v65 = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
    }

    else
    {
      type metadata accessor for ImageRenderer();
      v66 = swift_allocObject();
      *(v66 + 16) = 1;
      *(v66 + 24) = v55;
      *(v66 + 32) = v42;
      *(v66 + 40) = 0x3FF0000000000000;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      *(v66 + 64) = 1;
      *(v66 + 72) = 0;
      *(v66 + 80) = 1;
      type metadata accessor for CanvasElementImageRenderer();
      v67 = swift_initStackObject();
      *(v0 + 1008) = v67;
      v69 = specialized CanvasElementImageRenderer.init(renderer:)(v66, v67, v68);
      *(v0 + 1016) = v69;
      swift_beginAccess();
      *(v69 + 72) = 1;
      Capsule.root.getter();
      v64 = swift_task_alloc();
      *(v0 + 1024) = v64;
      *v64 = v0;
      v65 = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
    }

    v64[1] = v65;
    v70 = *(v0 + 624);
    v71 = *(v0 + 504);

    return specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v70, v71, 0, 0, 0, v56, v57, v54, v53);
  }
}

{
  v1 = *(v0 + 968);
  v2 = *(v0 + 856);

  v3 = objc_opt_self();
  v4 = v1;
  v5 = UTType.identifier.getter();
  v6 = MEMORY[0x1DA6CCED0](v5);

  v7 = [(PPKImageWriter *)v3 supportsGainMapForImageDataType:v6];

  if (v7)
  {
    v8 = *(v0 + 888);
    v9 = *(v0 + 880);
    v10 = swift_allocObject();
    *(v10 + 16) = 1;
    *(v10 + 24) = v9;
    *(v10 + 32) = v8;
    *(v10 + 40) = 0x3FF0000000000000;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 1;
    *(v10 + 72) = 0;
    *(v10 + 80) = 1;
    inited = swift_initStackObject();
    *(v0 + 976) = inited;
    v13 = specialized CanvasElementImageRenderer.init(renderer:)(v10, inited, v12);
    *(v0 + 984) = v13;
    swift_beginAccess();
    *(v13 + 72) = 1;
    Capsule.root.getter();
    v14 = swift_task_alloc();
    *(v0 + 992) = v14;
    *v14 = v0;
    v14[1] = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
    v15 = *(v0 + 920);
    v16 = *(v0 + 912);
    v17 = *(v0 + 904);
    v18 = *(v0 + 896);
    v19 = *(v0 + 624);
    v20 = *(v0 + 504);

    return specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v19, v20, 0, 0, 0, v18, v17, v16, v15);
  }

  v23 = *(v0 + 968);
  *(v0 + 1048) = 0;
  *(v0 + 1040) = v23;
  if (v23)
  {
    v24 = *(v0 + 91);
    URL._bridgeToObjectiveC()(v22);
    v26 = v25;
    if (v24 == 1)
    {
      v27 = CGDataConsumerCreateWithURL(v25);
      *(v0 + 1056) = v27;

      if (v27)
      {
        (*(*(v0 + 608) + 104))(*(v0 + 616), *MEMORY[0x1E6995288], *(v0 + 600));
        v28 = swift_task_alloc();
        *(v0 + 1064) = v28;
        *v28 = v0;
        v28[1] = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
        v29 = *(v0 + 616);
        v30 = *(v0 + 520);

        return specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:)(v30, v29, 0, 0xF000000000000000);
      }

      v49 = *(v0 + 848);
      v50 = *(v0 + 840);
      v51 = *(v0 + 832);
      v103 = *(v0 + 856);
      v108 = *(v0 + 728);
      v52 = *(v0 + 720);
      v53 = *(v0 + 712);
      v54 = *(v0 + 704);
      v55 = type metadata accessor for CRCodingError();
      lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
      swift_allocError();
      *v56 = 0xD00000000000001FLL;
      v56[1] = 0x80000001D4084890;
      (*(*(v55 - 8) + 104))(v56, *MEMORY[0x1E6995188], v55);
      swift_willThrow();

      outlined consume of Data._Representation(v51, v50);
      outlined consume of Data?(v51, v50);

      v57 = *(v53 + 8);
      v57(v52, v54);
      v57(v108, v54);
    }

    else
    {
      v41 = UTType.identifier.getter();
      v42 = MEMORY[0x1DA6CCED0](v41);

      v43 = CGImageDestinationCreateWithURL(v26, v42, 1uLL, 0);

      if (v43)
      {
        v44 = *(v0 + 560);
        v45 = *(v0 + 552);
        v46 = *(v0 + 544);
        static UTType.heic.getter();
        v47 = static UTType.== infix(_:_:)();
        (*(v45 + 8))(v44, v46);
        if (v47)
        {
          v48 = [objc_allocWithZone(PPKImageWriter) init];
          [(PPKImageWriter *)v48 addSDRHEICImageToImageDestination:v43 sdrImage:v23 imageMetadata:0 imageOptions:0];
        }

        else
        {
          CGImageDestinationAddImage(v43, v23, 0);
        }

        if (CGImageDestinationFinalize(v43))
        {
          URL._bridgeToObjectiveC()(v67);
          v69 = v68;
          swift_getKeyPath();
          Capsule.subscript.getter();

          if (*(v0 + 464))
          {
            v70 = MEMORY[0x1DA6CCED0](*(v0 + 456), *(v0 + 464));
          }

          else
          {
            v70 = 0;
          }

          MAImageCaptioningSetCaption(v69, v70, 0);

          v79 = *(v0 + 872);
          if (static Task<>.isCancelled.getter())
          {
            v80 = *(v0 + 1048);
            v81 = *(v0 + 1040);
            v82 = *(v0 + 856);
            v83 = *(v0 + 848);
            v84 = *(v0 + 840);
            v85 = *(v0 + 832);
            v111 = *(v0 + 728);
            v86 = *(v0 + 720);
            v87 = *(v0 + 712);
            v88 = *(v0 + 704);

            outlined consume of Data._Representation(v85, v84);
            outlined consume of Data?(v85, v84);

            v89 = *(v87 + 8);
            v89(v86, v88);
            v89(v111, v88);
          }

          else
          {
            v90 = *(v0 + 712);
            v91 = [*(v0 + 864) defaultManager];
            NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
            v92 = *(v0 + 1048);
            v93 = (v90 + 8);
            v94 = *(v0 + 1040);
            v95 = *(v0 + 848);
            v96 = *(v0 + 840);
            v97 = *(v0 + 832);
            v112 = *(v0 + 728);
            v102 = *(v0 + 856);
            v106 = *(v0 + 720);
            v98 = *(v0 + 704);
            if (v79)
            {

              outlined consume of Data._Representation(v97, v96);
              outlined consume of Data?(v97, v96);
            }

            else
            {
              v101 = *(v0 + 536);

              outlined consume of Data._Representation(v97, v96);
              outlined consume of Data?(v97, v96);

              outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            }

            v99 = *v93;
            (*v93)(v106, v98);
            v99(v112, v98);
          }
        }

        else
        {
          v71 = *(v0 + 848);
          v72 = *(v0 + 840);
          v73 = *(v0 + 832);
          v105 = *(v0 + 856);
          v110 = *(v0 + 728);
          v74 = *(v0 + 720);
          v75 = *(v0 + 712);
          v76 = *(v0 + 704);
          lazy protocol witness table accessor for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError();
          swift_allocError();
          *v77 = 0xD000000000000015;
          v77[1] = 0x80000001D4084870;
          swift_willThrow();

          outlined consume of Data._Representation(v73, v72);
          outlined consume of Data?(v73, v72);

          v78 = *(v75 + 8);
          v78(v74, v76);
          v78(v110, v76);
        }
      }

      else
      {
        v58 = *(v0 + 848);
        v59 = *(v0 + 840);
        v60 = *(v0 + 832);
        v104 = *(v0 + 856);
        v109 = *(v0 + 728);
        v61 = *(v0 + 720);
        v62 = *(v0 + 712);
        v63 = *(v0 + 704);
        _StringGuts.grow(_:)(43);

        lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1DA6CD010](v64);

        lazy protocol witness table accessor for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError();
        swift_allocError();
        *v65 = 0xD000000000000029;
        v65[1] = 0x80000001D4084840;
        swift_willThrow();

        outlined consume of Data._Representation(v60, v59);
        outlined consume of Data?(v60, v59);

        v66 = *(v62 + 8);
        v66(v61, v63);
        v66(v109, v63);
      }
    }
  }

  else
  {
    v31 = *(v0 + 856);
    v32 = *(v0 + 848);
    v33 = *(v0 + 840);
    v34 = *(v0 + 832);
    v107 = *(v0 + 728);
    v35 = *(v0 + 720);
    v36 = *(v0 + 712);
    v37 = *(v0 + 704);
    v38 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    swift_allocError();
    *v39 = 0xD000000000000019;
    v39[1] = 0x80000001D4084820;
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x1E6995188], v38);
    swift_willThrow();
    outlined consume of Data._Representation(v34, v33);

    outlined consume of Data?(v34, v33);
    v40 = *(v36 + 8);
    v40(v35, v37);
    v40(v107, v37);
  }

  v100 = *(v0 + 8);

  return v100();
}

{
  v1 = *(v0 + 856);

  v3 = *(v0 + 1000);
  v4 = *(v0 + 968);
  *(v0 + 1048) = v3;
  *(v0 + 1040) = v4;
  if (v4)
  {
    v5 = *(v0 + 91);
    URL._bridgeToObjectiveC()(v2);
    v7 = v6;
    if (v5 == 1)
    {
      v8 = CGDataConsumerCreateWithURL(v6);
      *(v0 + 1056) = v8;

      if (v8)
      {
        (*(*(v0 + 608) + 104))(*(v0 + 616), *MEMORY[0x1E6995288], *(v0 + 600));
        v9 = swift_task_alloc();
        *(v0 + 1064) = v9;
        *v9 = v0;
        v9[1] = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
        v10 = *(v0 + 616);
        v11 = *(v0 + 520);

        return specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:)(v11, v10, 0, 0xF000000000000000);
      }

      v28 = *(v0 + 848);
      v29 = v3;
      v30 = *(v0 + 840);
      v31 = *(v0 + 832);
      v89 = *(v0 + 856);
      v94 = *(v0 + 728);
      v84 = *(v0 + 720);
      v32 = *(v0 + 712);
      v33 = *(v0 + 704);
      v34 = type metadata accessor for CRCodingError();
      lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
      swift_allocError();
      *v35 = 0xD00000000000001FLL;
      v35[1] = 0x80000001D4084890;
      (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E6995188], v34);
      swift_willThrow();

      outlined consume of Data._Representation(v31, v30);
      outlined consume of Data?(v31, v30);

      v36 = *(v32 + 8);
      v36(v84, v33);
      v36(v94, v33);
    }

    else
    {
      v23 = UTType.identifier.getter();
      v24 = MEMORY[0x1DA6CCED0](v23);

      v25 = CGImageDestinationCreateWithURL(v7, v24, 1uLL, 0);

      v26 = *(v0 + 856);
      if (v25)
      {
        if (v26 && v3)
        {
          v27 = [objc_allocWithZone(PPKImageWriter) init];
          [(PPKImageWriter *)v27 addGainMapImageToImageDestination:v25 sdrImage:v3 hdrImage:v4 imageMetadata:0 imageOptions:0];
        }

        else
        {
          v44 = *(v0 + 560);
          v45 = *(v0 + 552);
          v46 = *(v0 + 544);
          static UTType.heic.getter();
          v47 = static UTType.== infix(_:_:)();
          (*(v45 + 8))(v44, v46);
          if (v47)
          {
            v48 = [objc_allocWithZone(PPKImageWriter) init];
            [(PPKImageWriter *)v48 addSDRHEICImageToImageDestination:v25 sdrImage:v4 imageMetadata:0 imageOptions:0];
          }

          else
          {
            CGImageDestinationAddImage(v25, v4, 0);
          }
        }

        if (CGImageDestinationFinalize(v25))
        {
          URL._bridgeToObjectiveC()(v49);
          v51 = v50;
          swift_getKeyPath();
          Capsule.subscript.getter();

          if (*(v0 + 464))
          {
            v52 = MEMORY[0x1DA6CCED0](*(v0 + 456), *(v0 + 464));
          }

          else
          {
            v52 = 0;
          }

          MAImageCaptioningSetCaption(v51, v52, 0);

          v60 = *(v0 + 872);
          if (static Task<>.isCancelled.getter())
          {
            v61 = *(v0 + 1048);
            v62 = *(v0 + 1040);
            v63 = *(v0 + 856);
            v64 = *(v0 + 848);
            v65 = *(v0 + 840);
            v66 = *(v0 + 832);
            v97 = *(v0 + 728);
            v67 = *(v0 + 720);
            v68 = *(v0 + 712);
            v69 = *(v0 + 704);

            outlined consume of Data._Representation(v66, v65);
            outlined consume of Data?(v66, v65);

            v70 = *(v68 + 8);
            v70(v67, v69);
            v70(v97, v69);
          }

          else
          {
            v71 = *(v0 + 712);
            v72 = [*(v0 + 864) defaultManager];
            NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
            v73 = *(v0 + 1048);
            v74 = (v71 + 8);
            v75 = *(v0 + 1040);
            v76 = *(v0 + 848);
            v77 = *(v0 + 840);
            v78 = *(v0 + 832);
            v98 = *(v0 + 728);
            v87 = *(v0 + 856);
            v92 = *(v0 + 720);
            v79 = *(v0 + 704);
            if (v60)
            {

              outlined consume of Data._Representation(v78, v77);
              outlined consume of Data?(v78, v77);
            }

            else
            {
              v82 = *(v0 + 536);

              outlined consume of Data._Representation(v78, v77);
              outlined consume of Data?(v78, v77);

              outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            }

            v80 = *v74;
            (*v74)(v92, v79);
            v80(v98, v79);
          }
        }

        else
        {
          v53 = *(v0 + 848);
          v54 = *(v0 + 840);
          v55 = *(v0 + 832);
          v91 = *(v0 + 856);
          v96 = *(v0 + 728);
          v86 = *(v0 + 720);
          v56 = *(v0 + 712);
          v57 = *(v0 + 704);
          lazy protocol witness table accessor for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError();
          swift_allocError();
          *v58 = 0xD000000000000015;
          v58[1] = 0x80000001D4084870;
          swift_willThrow();

          outlined consume of Data._Representation(v55, v54);
          outlined consume of Data?(v55, v54);

          v59 = *(v56 + 8);
          v59(v86, v57);
          v59(v96, v57);
        }
      }

      else
      {
        v85 = *(v0 + 848);
        v90 = v3;
        v37 = *(v0 + 840);
        v38 = *(v0 + 832);
        v95 = *(v0 + 728);
        v83 = *(v0 + 720);
        v39 = *(v0 + 712);
        v40 = *(v0 + 704);
        _StringGuts.grow(_:)(43);

        lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1DA6CD010](v41);

        lazy protocol witness table accessor for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError();
        swift_allocError();
        *v42 = 0xD000000000000029;
        v42[1] = 0x80000001D4084840;
        swift_willThrow();

        outlined consume of Data._Representation(v38, v37);
        outlined consume of Data?(v38, v37);

        v43 = *(v39 + 8);
        v43(v83, v40);
        v43(v95, v40);
      }
    }
  }

  else
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 840);
    v15 = v3;
    v16 = *(v0 + 832);
    v88 = *(v0 + 856);
    v93 = *(v0 + 728);
    v17 = *(v0 + 720);
    v18 = *(v0 + 712);
    v19 = *(v0 + 704);
    v20 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001D4084820;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E6995188], v20);
    swift_willThrow();
    outlined consume of Data._Representation(v16, v14);

    outlined consume of Data?(v16, v14);
    v22 = *(v18 + 8);
    v22(v17, v19);
    v22(v93, v19);
  }

  v81 = *(v0 + 8);

  return v81();
}

{
  v1 = *(v0 + 1032);

  v2 = *(v0 + 1032);
  *(v0 + 1048) = 0;
  *(v0 + 1040) = v2;
  v3 = v1;
  if (v2)
  {
    v5 = *(v0 + 91);
    URL._bridgeToObjectiveC()(v4);
    v7 = v6;
    if (v5 == 1)
    {
      v8 = CGDataConsumerCreateWithURL(v6);
      *(v0 + 1056) = v8;

      if (v8)
      {
        (*(*(v0 + 608) + 104))(*(v0 + 616), *MEMORY[0x1E6995288], *(v0 + 600));
        v9 = swift_task_alloc();
        *(v0 + 1064) = v9;
        *v9 = v0;
        v9[1] = specialized ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
        v10 = *(v0 + 616);
        v11 = *(v0 + 520);

        return specialized Capsule.serializedPaperDataWithAssets(_:version:fileSignature:)(v11, v10, 0, 0xF000000000000000);
      }

      v31 = *(v0 + 848);
      v32 = *(v0 + 840);
      v33 = *(v0 + 832);
      v85 = *(v0 + 856);
      v90 = *(v0 + 728);
      v34 = *(v0 + 720);
      v35 = *(v0 + 712);
      v36 = *(v0 + 704);
      v37 = type metadata accessor for CRCodingError();
      lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
      swift_allocError();
      *v38 = 0xD00000000000001FLL;
      v38[1] = 0x80000001D4084890;
      (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E6995188], v37);
      swift_willThrow();

      outlined consume of Data._Representation(v33, v32);
      outlined consume of Data?(v33, v32);

      v39 = *(v35 + 8);
      v39(v34, v36);
      v39(v90, v36);
    }

    else
    {
      v23 = UTType.identifier.getter();
      v24 = MEMORY[0x1DA6CCED0](v23);

      v25 = CGImageDestinationCreateWithURL(v7, v24, 1uLL, 0);

      if (v25)
      {
        v26 = *(v0 + 560);
        v27 = *(v0 + 552);
        v28 = *(v0 + 544);
        static UTType.heic.getter();
        v29 = static UTType.== infix(_:_:)();
        (*(v27 + 8))(v26, v28);
        if (v29)
        {
          v30 = [objc_allocWithZone(PPKImageWriter) init];
          [(PPKImageWriter *)v30 addSDRHEICImageToImageDestination:v25 sdrImage:v2 imageMetadata:0 imageOptions:0];
        }

        else
        {
          CGImageDestinationAddImage(v25, v2, 0);
        }

        if (CGImageDestinationFinalize(v25))
        {
          URL._bridgeToObjectiveC()(v49);
          v51 = v50;
          swift_getKeyPath();
          Capsule.subscript.getter();

          if (*(v0 + 464))
          {
            v52 = MEMORY[0x1DA6CCED0](*(v0 + 456), *(v0 + 464));
          }

          else
          {
            v52 = 0;
          }

          MAImageCaptioningSetCaption(v51, v52, 0);

          v61 = *(v0 + 872);
          if (static Task<>.isCancelled.getter())
          {
            v62 = *(v0 + 1048);
            v63 = *(v0 + 1040);
            v64 = *(v0 + 856);
            v65 = *(v0 + 848);
            v66 = *(v0 + 840);
            v67 = *(v0 + 832);
            v93 = *(v0 + 728);
            v68 = *(v0 + 720);
            v69 = *(v0 + 712);
            v70 = *(v0 + 704);

            outlined consume of Data._Representation(v67, v66);
            outlined consume of Data?(v67, v66);

            v71 = *(v69 + 8);
            v71(v68, v70);
            v71(v93, v70);
          }

          else
          {
            v72 = *(v0 + 712);
            v73 = [*(v0 + 864) defaultManager];
            NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
            v74 = *(v0 + 1048);
            v75 = (v72 + 8);
            v76 = *(v0 + 1040);
            v77 = *(v0 + 848);
            v78 = *(v0 + 840);
            v79 = *(v0 + 832);
            v94 = *(v0 + 728);
            v84 = *(v0 + 856);
            v88 = *(v0 + 720);
            v80 = *(v0 + 704);
            if (v61)
            {

              outlined consume of Data._Representation(v79, v78);
              outlined consume of Data?(v79, v78);
            }

            else
            {
              v83 = *(v0 + 536);

              outlined consume of Data._Representation(v79, v78);
              outlined consume of Data?(v79, v78);

              outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            }

            v81 = *v75;
            (*v75)(v88, v80);
            v81(v94, v80);
          }
        }

        else
        {
          v53 = *(v0 + 848);
          v54 = *(v0 + 840);
          v55 = *(v0 + 832);
          v87 = *(v0 + 856);
          v92 = *(v0 + 728);
          v56 = *(v0 + 720);
          v57 = *(v0 + 712);
          v58 = *(v0 + 704);
          lazy protocol witness table accessor for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError();
          swift_allocError();
          *v59 = 0xD000000000000015;
          v59[1] = 0x80000001D4084870;
          swift_willThrow();

          outlined consume of Data._Representation(v55, v54);
          outlined consume of Data?(v55, v54);

          v60 = *(v57 + 8);
          v60(v56, v58);
          v60(v92, v58);
        }
      }

      else
      {
        v40 = *(v0 + 848);
        v41 = *(v0 + 840);
        v42 = *(v0 + 832);
        v86 = *(v0 + 856);
        v91 = *(v0 + 728);
        v43 = *(v0 + 720);
        v44 = *(v0 + 712);
        v45 = *(v0 + 704);
        _StringGuts.grow(_:)(43);

        lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1DA6CD010](v46);

        lazy protocol witness table accessor for type ImageFileSync.ImageFileSyncError and conformance ImageFileSync.ImageFileSyncError();
        swift_allocError();
        *v47 = 0xD000000000000029;
        v47[1] = 0x80000001D4084840;
        swift_willThrow();

        outlined consume of Data._Representation(v42, v41);
        outlined consume of Data?(v42, v41);

        v48 = *(v44 + 8);
        v48(v43, v45);
        v48(v91, v45);
      }
    }
  }

  else
  {
    v13 = *(v0 + 856);
    v14 = *(v0 + 848);
    v15 = *(v0 + 840);
    v16 = *(v0 + 832);
    v89 = *(v0 + 728);
    v17 = *(v0 + 720);
    v18 = *(v0 + 712);
    v19 = *(v0 + 704);
    v20 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
    swift_allocError();
    *v21 = 0xD000000000000019;
    v21[1] = 0x80000001D4084820;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E6995188], v20);
    swift_willThrow();
    outlined consume of Data._Representation(v16, v15);

    outlined consume of Data?(v16, v15);
    v22 = *(v18 + 8);
    v22(v17, v19);
    v22(v89, v19);
  }

  v82 = *(v0 + 8);

  return v82();
}

{
  v57 = *(v0 + 1056);
  v60 = *(v0 + 1048);
  v1 = *(v0 + 1040);
  v53 = *(v0 + 171);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 504);
  v51 = [objc_allocWithZone(PPKImageWriter) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = v1;
  v7 = UTType.identifier.getter();
  v8 = MEMORY[0x1DA6CCED0](v7);

  v9 = Data._bridgeToObjectiveC()().super.isa;
  (*(v3 + 16))(v2, v5, v4);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v2, v4);
  *(v0 + 336) = partial apply for closure #2 in ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:);
  *(v0 + 344) = v11;
  *(v0 + 304) = MEMORY[0x1E69E9820];
  *(v0 + 312) = 1107296256;
  *(v0 + 320) = thunk for @escaping @callee_guaranteed (@guaranteed CGMutableImageMetadataRef, @guaranteed NSMutableDictionary) -> ();
  *(v0 + 328) = &block_descriptor_12;
  v12 = _Block_copy((v0 + 304));

  *(v0 + 496) = 0;
  LOBYTE(v48) = v53;
  LODWORD(v11) = [PPKImageWriter writeUsingBaseImageData:v51 annotationImage:isa sdrAnnotationImage:v6 asImageOfType:v60 toConsumer:v8 annotationMetadata:v57 modifiedMetadataHandler:v9 encryptPrivateMetadata:? error:?];
  _Block_release(v12);

  v13 = *(v0 + 496);
  v14 = *(v0 + 1080);
  v15 = *(v0 + 1072);
  v16 = *(v0 + 1056);
  if (v11)
  {
    v17 = v13;
    outlined consume of Data._Representation(v15, v14);

    v18 = *(v0 + 1088);
    if (static Task<>.isCancelled.getter())
    {
      v19 = *(v0 + 1048);
      v20 = *(v0 + 1040);
      v21 = *(v0 + 856);
      v22 = *(v0 + 848);
      v23 = *(v0 + 840);
      v24 = *(v0 + 832);
      v61 = *(v0 + 728);
      v25 = *(v0 + 720);
      v26 = *(v0 + 712);
      v27 = *(v0 + 704);

      outlined consume of Data._Representation(v24, v23);
      outlined consume of Data?(v24, v23);

      v28 = *(v26 + 8);
      v28(v25, v27);
      v28(v61, v27);
    }

    else
    {
      v35 = *(v0 + 712);
      v36 = [*(v0 + 864) defaultManager];
      NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
      v37 = *(v0 + 1048);
      v38 = (v35 + 8);
      v39 = *(v0 + 1040);
      v40 = *(v0 + 848);
      v41 = *(v0 + 840);
      v42 = *(v0 + 832);
      v62 = *(v0 + 728);
      v56 = *(v0 + 856);
      v59 = *(v0 + 720);
      v43 = *(v0 + 704);
      if (v18)
      {

        outlined consume of Data._Representation(v42, v41);
        outlined consume of Data?(v42, v41);
      }

      else
      {
        v45 = *(v0 + 536);

        outlined consume of Data._Representation(v42, v41);
        outlined consume of Data?(v42, v41);

        outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }

      v44 = *v38;
      (*v38)(v59, v43);
      v44(v62, v43);
    }
  }

  else
  {
    v29 = *(v0 + 1040);
    v30 = *(v0 + 840);
    v31 = *(v0 + 832);
    v55 = *(v0 + 856);
    v58 = *(v0 + 728);
    v54 = *(v0 + 720);
    v32 = *(v0 + 712);
    aBlock = *(v0 + 848);
    v52 = *(v0 + 704);
    v33 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v15, v14);

    outlined consume of Data._Representation(v31, v30);
    outlined consume of Data?(v31, v30);

    v34 = *(v32 + 8);
    v34(v54, v52);
    v34(v58, v52);
  }

  v46 = *(v0 + 8);

  return v46();
}

{
  (*(v0[100] + 8))(v0[101], v0[99]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  v5 = *(v0 + 840);
  v6 = *(v0 + 832);
  v13 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);

  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v6, v5);

  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v13, v9);

  v11 = *(v0 + 8);

  return v11();
}