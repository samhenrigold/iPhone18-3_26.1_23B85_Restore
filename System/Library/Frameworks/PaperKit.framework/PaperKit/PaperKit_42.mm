void closure #1 in GraphCanvasElementView.updateGraphView()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8._countAndFlagsBits = CalculateExpression.expression.getter();
      v9._countAndFlagsBits = a3;
      v9._object = a4;
      GraphCanvasElementView.didUpdateExpression(_:identifier:)(v8, v9);
    }

    else
    {
    }
  }
}

void closure #2 in GraphCanvasElementView.updateGraphView()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    GraphCanvasElementView.restoreOrphanedExpressions()();
    GraphCanvasElementView.updateGraphView()();
  }
}

void closure #3 in GraphCanvasElementView.updateGraphView()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (GraphCanvasElementView.restoreOrphanedExpressions()())
    {
      GraphCanvasElementView.updateGraphView()();
    }
  }
}

double specialized closure #4 in GraphCanvasElementView.updateGraphView()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + direct field offset for GraphCanvasElementView.graphViewController);
    if (v5 && *(v5 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph))
    {

      dispatch thunk of CalculateGraph.graphExpressions.setter();
    }

    GraphCanvasElementView.cachedGraphableExpressionsState.getter(v3);
    GraphableExpressionsState.updateColors()();
  }

  return v3.n128_f64[0];
}

void GraphableExpressionsState.updateColors()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v70 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v65 - v4;
  v6 = type metadata accessor for Color(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v65 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v82 = (&v65 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v65 - v16;
  v89 = type metadata accessor for UUID();
  KeyPath = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v65 - v20;
  swift_getKeyPath();
  v97 = v0;
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    v97 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v0 + 24);
    if (v21 >> 62)
    {
      goto LABEL_58;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22)
    {
      v79 = direct field offset for GraphCanvasElementView.graphViewController;
      v80 = v21 & 0xC000000000000001;
      v72 = v21 & 0xFFFFFFFFFFFFFF8;
      v71 = v21 + 32;
      v85 = (KeyPath + 8);
      v86 = (KeyPath + 16);
      v76 = (v7 + 56);
      v75 = (v7 + 48);
      v77 = v21;

      v23 = 0;
      v83 = 0;
      v74 = v5;
      v78 = v22;
      v73 = v6;
      while (v80)
      {
        v21 = MEMORY[0x1DA6CE0C0](v23, v77);
        v25 = v21;
        v26 = __OFADD__(v23++, 1);
        if (v26)
        {
          goto LABEL_56;
        }

LABEL_13:
        v27 = *&Strong[v79];
        v84 = v23;
        if (v27 && *(v27 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph))
        {

          v7 = dispatch thunk of CalculateGraph.graphExpressions.getter();

          if (v7 >> 62)
          {
            v28 = __CocoaSet.count.getter();
          }

          else
          {
            v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v94 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
          v95 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState___observationRegistrar;
          v21 = swift_beginAccess();
          if (v28)
          {
            v29 = 0;
            v92 = v7 & 0xFFFFFFFFFFFFFF8;
            v93 = v7 & 0xC000000000000001;
            v90 = v28;
            v91 = v7;
            while (1)
            {
              if (v93)
              {
                v21 = MEMORY[0x1DA6CE0C0](v29, v7);
                KeyPath = v21;
                v30 = v29 + 1;
                if (__OFADD__(v29, 1))
                {
                  goto LABEL_54;
                }
              }

              else
              {
                if (v29 >= *(v92 + 16))
                {
                  goto LABEL_55;
                }

                KeyPath = *(v7 + 8 * v29 + 32);

                v30 = v29 + 1;
                if (__OFADD__(v29, 1))
                {
LABEL_54:
                  __break(1u);
LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }
              }

              v96 = v30;
              v5 = v87;
              dispatch thunk of CalculateGraphExpression.id.getter();
              swift_getKeyPath();
              v98 = v25;
              lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v31 = v25;
              v32 = v25 + v94;
              v33 = v88;
              v6 = v89;
              (*v86)(v88, v32, v89);
              v34 = static UUID.== infix(_:_:)();
              KeyPath = v85;
              v35 = *v85;
              (*v85)(v33, v6);
              v35(v5, v6);
              if (v34)
              {
                break;
              }

              ++v29;
              v7 = v91;
              v25 = v31;
              if (v96 == v90)
              {
                goto LABEL_28;
              }
            }

            v59 = dispatch thunk of CalculateGraphExpression.effectiveColor.getter();

            KeyPath = swift_getKeyPath();
            v98 = v31;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v7 = *(v31 + 32);

            v60 = almostEqual(_:_:)(v7, v59);

            v5 = v74;
            v6 = v73;
            if (v60)
            {
            }

            else
            {
              GraphableExpressionState.color.setter(v59);
            }

            v22 = v78;
            v23 = v84;
            goto LABEL_6;
          }

LABEL_28:

          v5 = v74;
          v6 = v73;
          v22 = v78;
          v23 = v84;
        }

        v36 = [objc_opt_self() clearColor];
        KeyPath = Color.init(uiColor:)();
        swift_getKeyPath();
        v37 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState___observationRegistrar;
        v98 = v25;
        v96 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (!*(v25 + 32))
        {
          goto LABEL_5;
        }

        v94 = v37;
        v95 = v25;
        v38 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
        swift_retain_n();
        swift_retain_n();
        v93 = v38;
        v39 = UIColor.init(_:)();
        v40 = [v39 CGColor];
        v41 = *(v6 + 20);
        v42 = type metadata accessor for UnknownValueProperties();
        (*(*(v42 - 8) + 56))(v82 + v41, 1, 1, v42);
        if (v40)
        {
          v43 = v40;
          v44 = CGColorGetColorSpace(v43);
          if (one-time initialization token for extendedSRGBColorSpace != -1)
          {
            swift_once();
          }

          v45 = CFEqual(v44, static Color.extendedSRGBColorSpace);

          if (v45)
          {

LABEL_36:
            v47 = v82;
            *v82 = v43;
            _s8PaperKit19GraphableExpressionVWOcTm_0(v47, v5, type metadata accessor for Color);
            (*v76)(v5, 0, 1, v6);
            _s8PaperKit12GraphElementVWOhTm_0(v47, type metadata accessor for Color);
            goto LABEL_38;
          }

          CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(static Color.extendedSRGBColorSpace, kCGRenderingIntentDefault, v43, 0);

          v43 = CopyByMatchingToColorSpace;
          if (CopyByMatchingToColorSpace)
          {
            goto LABEL_36;
          }
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v82 + v41, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
        (*v76)(v5, 1, 1, v6);
LABEL_38:
        v48 = v75;

        v49 = *v48;
        v50 = (*v48)(v5, 1, v6);
        v25 = v95;
        if (v50)
        {

          outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          v22 = v78;
          v23 = v84;
LABEL_42:

          goto LABEL_43;
        }

        v51 = v69;
        _s8PaperKit5ColorVWObTm_1(v5, v69, type metadata accessor for Color);
        v52 = v51;
        v53 = v68;
        _s8PaperKit5ColorVWObTm_1(v52, v68, type metadata accessor for Color);

        v54 = UIColor.init(_:)();
        v55 = [v54 CGColor];
        v56 = v70;
        Color.init(cgColor:)(v55, v70);

        v57 = v49(v56, 1, v6);
        v22 = v78;
        v23 = v84;
        if (v57)
        {

          outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          _s8PaperKit12GraphElementVWOhTm_0(v53, type metadata accessor for Color);
          v25 = v95;
          goto LABEL_42;
        }

        v61 = v56;
        v62 = v67;
        _s8PaperKit5ColorVWObTm_1(v61, v67, type metadata accessor for Color);
        v63 = v66;
        _s8PaperKit5ColorVWObTm_1(v62, v66, type metadata accessor for Color);
        v7 = Color.almostEqual(_:)(v63);

        _s8PaperKit12GraphElementVWOhTm_0(v63, type metadata accessor for Color);
        _s8PaperKit12GraphElementVWOhTm_0(v53, type metadata accessor for Color);

        v25 = v95;
        if (v7)
        {

          goto LABEL_6;
        }

LABEL_43:
        if (*(v25 + 32))
        {

          v58 = static Color.== infix(_:_:)();

          if (v58)
          {
            v7 = *(v25 + 32);
            *(v25 + 32) = KeyPath;

            goto LABEL_6;
          }
        }

LABEL_5:
        v7 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v7);
        *(&v65 - 2) = v25;
        *(&v65 - 1) = KeyPath;
        v98 = v25;
        v24 = v83;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v83 = v24;

LABEL_6:
        if (v23 == v22)
        {

          return;
        }
      }

      if (v23 >= *(v72 + 16))
      {
        goto LABEL_57;
      }

      v25 = *(v71 + 8 * v23);

      v26 = __OFADD__(v23++, 1);
      if (!v26)
      {
        goto LABEL_13;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v64 = v21;
      v22 = __CocoaSet.count.getter();
      v21 = v64;
    }
  }
}

void GraphableExpressionsState.update()()
{
  v1 = v0;
  v2 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = v48 - v7;
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC8PaperKit25GraphableExpressionsState___observationRegistrar;
  v59 = v1;
  v9 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  v54 = v8;
  v55 = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {

      return;
    }

    v51 = v6;
    v52 = v11;
    v13 = MEMORY[0x1E69E7D40];
    v14 = v12;
    v15 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0xA10))();
    if (!v15)
    {

      return;
    }

    v17 = v16;
    v49 = v14;
    v18 = v52;
    v19 = *((*v13 & *v52) + 0x3F0);
    v20 = v15;
    swift_beginAccess();
    v21 = v18 + v19;
    v22 = v53;
    (*(v51 + 16))(v53, v21, v5);
    Capsule.root.getter();
    v48[1] = v20;
    specialized GraphElement.graphExpressionType<A>(in:calculateDocument:)(v22, v20, v17, &v58);
    _s8PaperKit12GraphElementVWOhTm_0(v4, type metadata accessor for GraphElement);
    v23 = v58;
    v24 = *(v1 + 33);
    v50 = v5;
    if (v24 != v58)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v48[-2] = v1;
      LOBYTE(v48[-1]) = v23;
      v57 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    v57 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v1 + 24);
    if (v26 >> 62)
    {
      v27 = __CocoaSet.count.getter();
      v56 = v1;
      if (!v27)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v56 = v1;
      if (!v27)
      {
        goto LABEL_21;
      }
    }

    if (v27 < 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    for (i = 0; i != v27; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1DA6CE0C0](i, v26);
      }

      else
      {
        v29 = *(v26 + 8 * i + 32);
      }

      if (*(v29 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved))
      {
        v30 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v30);
        v48[-2] = v29;
        LOBYTE(v48[-1]) = 0;
        v57 = v29;
        lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v29 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) = 0;
      }
    }

    v1 = v56;
LABEL_21:
    v31 = GraphableExpressionsState.graphableExpressionsStates.getter();
    v32 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v32);
    v48[-2] = v1;
    v48[-1] = v31;
    v57 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_getKeyPath();
    v57 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = *(v1 + 24);
    if (v33 >> 62)
    {
      v34 = __CocoaSet.count.getter();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v50;
    swift_getKeyPath();
    v57 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(v1 + 24);
    if (v36 >> 62)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v52;
    v39 = v49;
    if (!v37)
    {
LABEL_41:

      swift_unknownObjectRelease();
      (*(v51 + 8))(v53, v35);
      return;
    }

    if (v37 >= 1)
    {
      v54 = v36 & 0xC000000000000001;

      v40 = 0;
      v55 = v37;
      do
      {
        if (v54)
        {
          v42 = MEMORY[0x1DA6CE0C0](v40, v36);
          v45 = v42;
        }

        else
        {
          v45 = *(v36 + 8 * v40 + 32);
        }

        if (*(v45 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) == 1)
        {
          *(v45 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) = 1;
        }

        else
        {
          v46 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v46);
          v48[-2] = v45;
          LOBYTE(v48[-1]) = 1;
          v57 = v45;
          lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        if (v40 != *(v45 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__expressionIndex))
        {
          v47 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v47);
          v48[-2] = v45;
          v48[-1] = v40;
          v57 = v45;
          lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        if (*(v45 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__numExpressions) != v34)
        {
          v41 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v41);
          v48[-2] = v45;
          v48[-1] = v34;
          v57 = v45;
          lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v43 = v55;
        ++v40;
        MEMORY[0x1EEE9AC00](v42);
        v48[-2] = v44;
        v48[-1] = v45;
        withObservationTracking<A>(_:onChange:)();
      }

      while (v43 != v40);

      v39 = v49;
      v35 = v50;
      v38 = v52;
      goto LABEL_41;
    }

LABEL_48:
    __break(1u);
  }
}

Swift::Void __swiftcall GraphCanvasElementView.updateCachedImage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for CRKeyPath();
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v54 = &v44 - v18;
  v19 = [v0 window];
  if (v19)
  {

    v20 = [v0 superview];
    if (v20)
    {

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        v23 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA10))();
        v49 = v24;

        v50 = v23;
        if (v23)
        {
          v25 = *MEMORY[0x1E69E7D40] & *v1;
          v47 = v4;
          v26 = *(v25 + 1008);
          swift_beginAccess();
          v48 = v14;
          v27 = *(v8 + 16);
          v27(v13, &v1[v26], v7);
          v46 = v27;
          Capsule.rootID.getter();
          v45 = *(v8 + 8);
          v45(v13, v7);
          v27(v13, &v1[v26], v7);
          v28 = v51;
          Capsule.root.getter();
          v29 = v13;
          v30 = v45;
          v45(v29, v7);
          v46(v10, &v1[v26], v7);
          v31 = v50;
          swift_unknownObjectRetain();
          v49 = specialized GraphElement.imageRenderingCalculateGraph<A>(in:document:)(v10, v31, v49);
          swift_unknownObjectRelease();
          v30(v10, v7);
          _s8PaperKit12GraphElementVWOhTm_0(v28, type metadata accessor for GraphElement);
          [v1 bounds];
          v33 = v32;
          v35 = v34;
          v36 = type metadata accessor for TaskPriority();
          v37 = v47;
          (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
          v39 = v52;
          v38 = v53;
          v40 = v54;
          v41 = v48;
          (*(v52 + 16))(v53, v54, v48);
          v42 = (*(v39 + 80) + 56) & ~*(v39 + 80);
          v43 = swift_allocObject();
          *(v43 + 2) = 0;
          *(v43 + 3) = 0;
          *(v43 + 4) = v49;
          *(v43 + 5) = v33;
          *(v43 + 6) = v35;
          (*(v39 + 32))(&v43[v42], v38, v41);

          _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for closure #1 in GraphCanvasElementView.updateCachedImage(), v43);
          swift_unknownObjectRelease();

          outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_sScPSgMd, &_sScPSgMR);
          (*(v39 + 8))(v40, v41);
        }
      }
    }
  }
}

uint64_t closure #1 in GraphCanvasElementView.updateCachedImage()(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a7;
  v10 = type metadata accessor for CRKeyPath();
  v7[5] = v10;
  v7[6] = *(v10 - 8);
  v7[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = closure #1 in GraphCanvasElementView.updateCachedImage();
  v12.n128_f64[0] = a1;
  v13.n128_f64[0] = a2;

  return MEMORY[0x1EEDF1D18](v12, v13);
}

uint64_t closure #1 in GraphCanvasElementView.updateCachedImage()(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in GraphCanvasElementView.updateCachedImage(), 0, 0);
}

uint64_t closure #1 in GraphCanvasElementView.updateCachedImage()()
{
  super_class = v0[4].super_class;
  if (super_class)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    receiver = v0[3].receiver;
    v2 = v0[3].super_class;
    v4 = v0[2].super_class;
    v5 = *(static GraphCanvasElementRenderedImageCache.shared + 16);
    v6 = receiver[2];
    v6(v2, v0[2].receiver, v4);
    v7 = type metadata accessor for KeyPathWrapper(0);
    v8 = objc_allocWithZone(v7);
    v6(&v8[OBJC_IVAR____TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper_path], v2, v4);
    v0[1].receiver = v8;
    v0[1].super_class = v7;
    v9 = objc_msgSendSuper2(v0 + 1, sel_init);
    (receiver[1])(v2, v4);
    [v5 setObject:super_class forKey:v9];
  }

  v10 = v0->super_class;

  return v10();
}

void @objc GraphCanvasElementView.updateCachedImage()(void *a1)
{
  v1 = a1;
  GraphCanvasElementView.updateCachedImage()();
}

Swift::Void __swiftcall GraphCanvasElementView.updateUI()()
{
  v1 = v0;
  v2 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  specialized CanvasElementView.updateGestures()();
  specialized CanvasElementView.updateFrame()();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v11 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
  }

  v12 = *((*v10 & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v12], v5);
  Capsule.root.getter();
  _s8PaperKit12GraphElementVWOhTm_0(v4, type metadata accessor for GraphElement);
  (*(v6 + 8))(v8, v5);
  GraphCanvasElementView.cachedGraphableExpressionsState.getter();
  GraphableExpressionsState.update()();

  GraphCanvasElementView.updateGraphView()();
}

double GraphCanvasElementView.isSelected.setter(char a1, __n128 a2)
{
  v3 = OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected;
  *(v2 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected) = a1;
  specialized CanvasElementView.isSelected.didset(a2);
  v5 = *(v2 + direct field offset for GraphCanvasElementView.graphViewController);
  if (v5 && *(v5 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph))
  {

    dispatch thunk of CalculateGraph.isSelected.setter();
  }

  if (*(v2 + v3) == 1)
  {
    GraphCanvasElementView.cachedGraphableExpressionsState.getter();
    GraphableExpressionsState.update()();
  }

  return result;
}

void @objc GraphCanvasElementView.layoutSubviews()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for GraphCanvasElementView(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  GraphCanvasElementView.layoutGraphView()();
}

Swift::Void __swiftcall GraphCanvasElementView.layoutGraphView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = *&v0[direct field offset for GraphCanvasElementView.graphViewController];
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_graphView);
    if (v7)
    {
      v8 = v7;
      v16.a = 1.0;
      v16.b = 0.0;
      v16.c = 0.0;
      v16.d = 1.0;
      v16.tx = 0.0;
      v16.ty = 0.0;
      [v8 setTransform_];
      [v8 setFrame_];
      v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
      swift_beginAccess();
      (*(v3 + 16))(v5, &v1[v9], v2);
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v3 + 8))(v5, v2);
      CGAffineTransformMakeRotation(&v16, v15);
      [v8 setTransform_];
      [v8 bounds];
      v12 = v10;
      v13 = v11;
      v14 = &v1[direct field offset for GraphCanvasElementView.previousGraphViewSize];
      if ((v1[direct field offset for GraphCanvasElementView.previousGraphViewSize + 16] & 1) == 0 && (vabdd_f64(v10, *v14) >= 1.0 || vabdd_f64(v11, v14[1]) >= 1.0))
      {
        [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_updateCachedImage object:0];
        [v1 performSelector:sel_updateCachedImage withObject:0 afterDelay:2.0];
      }

      *v14 = v12;
      v14[1] = v13;
      *(v14 + 16) = 0;
    }
  }
}

uint64_t GraphCanvasElementView.modifiableProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v5], v1);
  v8[0] = type metadata accessor for GraphElement(0);
  v8[1] = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement, &protocol conformance descriptor for GraphElement);
  v8[2] = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  v6 = 5;
  if ((v9 & 0x80) == 0)
  {
    v6 = 7;
  }

  if ((v9 & 4) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

Swift::Bool __swiftcall GraphCanvasElementView.shouldHitTestSubviews(at:)(CGPoint at)
{
  y = at.y;
  x = at.x;
  v4 = type metadata accessor for CalculateGraph.GraphType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *&v1[direct field offset for GraphCanvasElementView.graphViewController];
  if (!v12 || !*(v12 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph) || v1[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected] != 1)
  {
    return 0;
  }

  v13 = v9;

  dispatch thunk of CalculateGraph.graphType.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69922E8], v13);
  v14 = static CalculateGraph.GraphType.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v7, v13);
  v15(v11, v13);
  if (v14)
  {
    [v1 bounds];
    v21 = CGRectInset(v20, 25.0, 25.0);
    v19.x = x;
    v19.y = y;
    v16 = CGRectContainsPoint(v21, v19);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

Swift::OpaquePointer_optional __swiftcall GraphCanvasElementView.pasteboardRepresentation()()
{
  v1 = type metadata accessor for UTType();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v7 = type metadata accessor for CRKeyPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  v15 = *(v4 + 16);
  v50 = v0;
  v15(v6, v0 + v14, v3);
  Capsule.rootID.getter();
  (*(v4 + 8))(v6, v3);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = *(static GraphCanvasElementRenderedImageCache.shared + 16);
  v17 = v8;
  v18 = *(v8 + 16);
  v18(v10, v13, v7);
  v19 = type metadata accessor for KeyPathWrapper(0);
  v20 = objc_allocWithZone(v19);
  v18(&v20[OBJC_IVAR____TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper_path], v10, v7);
  v54.receiver = v20;
  v54.super_class = v19;
  v21 = objc_msgSendSuper2(&v54, sel_init);
  v22 = *(v17 + 8);
  v22(v10, v7);
  v23 = [v16 objectForKey_];

  if (!v23)
  {
    v31 = v50;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      v47 = v22;
      v48 = v17 + 8;
      v49 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D405CEB0;
      *(inited + 32) = v31;
      v56 = 1;
      v35 = *MEMORY[0x1E69E7D40] & *v33;
      memset(v55, 0, sizeof(v55));
      v36 = *(v35 + 2336);
      v37 = v31;
      v38 = v36(inited, v55);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        v39 = swift_initStackObject();
        *(v39 + 16) = xmmword_1D4058CF0;
        v40 = v51;
        static UTType.png.getter();
        v41 = UTType.identifier.getter();
        v43 = v42;
        (*(v52 + 8))(v40, v53);
        *(v39 + 32) = v41;
        *(v39 + 40) = v43;
        *(v39 + 72) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
        *(v39 + 48) = v38;
        v44 = v38;
        v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v39);
        swift_setDeallocating();
        outlined destroy of StocksKitCurrencyCache.Provider?(v39 + 32, &_sSS_yptMd, &_sSS_yptMR);

        v47(v13, v49);
        goto LABEL_11;
      }

      v47(v13, v49);
    }

    else
    {
      v22(v13, v7);
    }

    v29 = 0;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1D4058CF0;
  v25 = v51;
  static UTType.png.getter();
  v26 = UTType.identifier.getter();
  v28 = v27;
  (*(v52 + 8))(v25, v53);
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  *(v24 + 72) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  *(v24 + 48) = v23;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v24);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(v24 + 32, &_sSS_yptMd, &_sSS_yptMR);
  v22(v13, v7);
LABEL_11:
  v45 = v29;
  result.value._rawValue = v45;
  result.is_nil = v30;
  return result;
}

void GraphCanvasElementView.updateVisibleRange(from:)()
{
  v1 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v1);
  v64 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v58 - v5;
  v7 = type metadata accessor for CalculateGraph.Pose();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CalculateGraph.xAxisBounds.getter();
  v12 = v11;
  v14 = v13;
  dispatch thunk of CalculateGraph.yAxisBounds.getter();
  if (v0[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected] == 1)
  {
    v17 = v15;
    v18 = v14 - v12;
    v19 = v16 - v15;
    dispatch thunk of CalculateGraph.zAxisBounds.getter();
    v21 = v20;
    v23 = v22;
    dispatch thunk of CalculateGraph.pose.getter();
    CalculateGraph.Pose.azimuth.getter();
    v25 = v24;
    v60 = v6;
    v26 = v1;
    v27 = v3;
    v28 = v4;
    v29 = *(v8 + 8);
    v29(v10, v7);
    dispatch thunk of CalculateGraph.pose.getter();
    CalculateGraph.Pose.inclination.getter();
    v31 = v30;
    v29(v10, v7);
    v32 = v26;
    v33 = v0;
    v34 = v60;
    v35 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
    swift_beginAccess();
    v61 = *(v28 + 16);
    v61(v34, &v0[v35], v27);
    v36 = v64;
    Capsule.root.getter();
    v39 = *(v28 + 8);
    v38 = (v28 + 8);
    v37 = v39;
    v63 = v27;
    v39(v34, v27);
    v62 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    _s8PaperKit12GraphElementVWOhTm_0(v36, type metadata accessor for GraphElement);
    v66.origin.x = v12;
    v66.origin.y = v17;
    v66.size.width = v18;
    v66.size.height = v19;
    v40 = CGRectEqualToRect(v65, v66);
    if (!v40 || (v41 = v63, v61(v34, &v0[v35], v63), v42 = v64, Capsule.root.getter(), v37(v34, v41), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR), CRRegister.wrappedValue.getter(), v40 = _s8PaperKit12GraphElementVWOhTm_0(v42, type metadata accessor for GraphElement), v65.origin.x != v21) || (v43 = v63, (v61)(v34, &v0[v35], v63, v65.origin.x), v44 = v64, Capsule.root.getter(), v37(v34, v43), CRRegister.wrappedValue.getter(), v40 = _s8PaperKit12GraphElementVWOhTm_0(v44, type metadata accessor for GraphElement), v65.origin.x != v23) || (v45 = v63, (v61)(v34, &v0[v35], v63, v65.origin.x), v46 = v64, Capsule.root.getter(), v37(v34, v45), CRRegister.wrappedValue.getter(), v40 = _s8PaperKit12GraphElementVWOhTm_0(v46, type metadata accessor for GraphElement), v25 != v65.origin.x) || (v47 = v63, v61(v34, &v0[v35], v63), v48 = v64, Capsule.root.getter(), v37(v34, v47), CRRegister.wrappedValue.getter(), v40 = _s8PaperKit12GraphElementVWOhTm_0(v48, type metadata accessor for GraphElement), v31 != v65.origin.x))
    {
      v59 = v37;
      v49 = v62;
      v64 = v38;
      MEMORY[0x1EEE9AC00](v40);
      *(&v58 - 8) = v12;
      *(&v58 - 7) = v17;
      *(&v58 - 6) = v18;
      *(&v58 - 5) = v19;
      *(&v58 - 4) = v21;
      *(&v58 - 3) = v23;
      *(&v58 - 2) = v25;
      *(&v58 - 1) = v31;
      swift_beginAccess();
      Capsule.callAsFunction<A>(_:)();
      swift_endAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v51 = Strong;
        v52 = &v33[v35];
        v53 = v60;
        v54 = v63;
        v61(v60, v52, v63);
        LOBYTE(v65.origin.x) = 4;
        v55 = MEMORY[0x1E69E7D40];
        v56 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x7D8);
        v57 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement, &protocol conformance descriptor for GraphElement);
        v56(v53, &v65, v49, v57);
        LOBYTE(v65.origin.x) = 4;
        (*((*v55 & *v51) + 0x7B0))(&v65);

        v59(v53, v54);
      }

      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v33 selector:sel_updateCachedImage object:0];
      [v33 performSelector:sel_updateCachedImage withObject:0 afterDelay:2.0];
    }
  }
}

uint64_t closure #1 in GraphCanvasElementView.updateVisibleRange(from:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = Capsule.Ref.root.modify();
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  v8(v14, 0);
  v9 = Capsule.Ref.root.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  v9(v14, 0);
  v10 = Capsule.Ref.root.modify();
  CRRegister.wrappedValue.setter();
  v10(v14, 0);
  v11 = Capsule.Ref.root.modify();
  CRRegister.wrappedValue.setter();
  v11(v14, 0);
  v12 = Capsule.Ref.root.modify();
  CRRegister.wrappedValue.setter();
  return v12(v14, 0);
}

uint64_t closure #1 in GraphCanvasElementView.trackVisibleRange(for:)()
{
  v0 = type metadata accessor for CalculateGraph.Pose();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CalculateGraph.xAxisBounds.getter();
  dispatch thunk of CalculateGraph.yAxisBounds.getter();
  dispatch thunk of CalculateGraph.zAxisBounds.getter();
  dispatch thunk of CalculateGraph.pose.getter();
  return (*(v1 + 8))(v3, v0);
}

void (*implicit closure #1 in GraphCanvasElementView.trackVisibleRange(for:)(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return partial apply for closure #2 in implicit closure #1 in GraphCanvasElementView.trackVisibleRange(for:);
}

void closure #1 in closure #2 in implicit closure #1 in GraphCanvasElementView.trackVisibleRange(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      GraphCanvasElementView.updateVisibleRange(from:)();
      MEMORY[0x1EEE9AC00](v4);
      withObservationTracking<A>(_:onChange:)();
    }
  }
}

Swift::Void __swiftcall GraphCanvasElementView.updateModelAfterCalculateGraphDeletion()()
{
  v1 = v0;
  v45 = type metadata accessor for UUID();
  v2 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = *(v0 + direct field offset for GraphCanvasElementView.graphViewController);
  if (!v7)
  {
    return;
  }

  v8 = *(v7 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph);
  if (!v8)
  {
    return;
  }

  v9 = dispatch thunk of CalculateGraph.graphExpressions.getter();
  if (v9 >> 62)
  {
    v18 = v9;
    v10 = __CocoaSet.count.getter();
    v9 = v18;
    v38 = v8;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_15:

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v38 = v8;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  v11 = v9;
  v43 = v1;
  v46 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_30;
  }

  v12 = 0;
  v13 = v46;
  v14 = v11;
  v44 = v11 & 0xC000000000000001;
  do
  {
    if (v44)
    {
      MEMORY[0x1DA6CE0C0](v12, v14);
    }

    else
    {
    }

    dispatch thunk of CalculateGraphExpression.id.getter();

    v46 = v13;
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v13 = v46;
    }

    ++v12;
    *(v13 + 16) = v16 + 1;
    (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v6, v45);
    v14 = v11;
  }

  while (v10 != v12);

LABEL_16:
  v19 = GraphCanvasElementView.cachedGraphableExpressionsState.getter(v17);
  swift_getKeyPath();
  v46 = v19;
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 24);

  if (v20 >> 62)
  {
LABEL_37:
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_18;
    }

LABEL_38:

    return;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_38;
  }

LABEL_18:
  v22 = 0;
  v43 = v20 & 0xFFFFFFFFFFFFFF8;
  v44 = v20 & 0xC000000000000001;
  v39 = (v2 + 8);
  v40 = (v2 + 16);
  while (v44)
  {
    v2 = MEMORY[0x1DA6CE0C0](v22, v20);
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_28;
    }

LABEL_23:
    swift_getKeyPath();
    v47 = v2;
    v24 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + 24) == 1)
    {
      swift_getKeyPath();
      v47 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
      swift_beginAccess();
      v26 = *v40;
      v42 = v24;
      v27 = v20;
      v28 = v21;
      v29 = v41;
      v30 = v45;
      v26(v41, v2 + v25, v45);
      LOBYTE(v25) = specialized Sequence<>.contains(_:)(v29, v13);
      v31 = v29;
      v21 = v28;
      v20 = v27;
      (*v39)(v31, v30);
      if ((v25 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    ++v22;
    if (v23 == v21)
    {
      goto LABEL_38;
    }
  }

  if (v22 >= *(v43 + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  v2 = *(v20 + 8 * v22 + 32);

  v23 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
LABEL_29:

  if (one-time initialization token for mathLogger != -1)
  {
    goto LABEL_41;
  }

LABEL_30:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, mathLogger);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1D38C4000, v33, v34, "Deleted expression that was deleted externally", v35, 2u);
    MEMORY[0x1DA6D0660](v35, -1, -1);
  }

  if (*(v2 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v37 - 2) = v2;
    *(&v37 - 8) = 0;
    v47 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v2 + 24) = 0;
  }
}

void (*implicit closure #1 in GraphCanvasElementView.trackDeletedExpressions(for:)(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return partial apply for closure #2 in implicit closure #1 in GraphCanvasElementView.trackDeletedExpressions(for:);
}

void closure #2 in implicit closure #1 in GraphCanvasElementView.trackVisibleRange(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v24 = a5;
      v27 = v15;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v28 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      v25 = v16;
      v26 = v17;
      aBlock[4] = a4;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = v24;
      v23 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v31 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v20 = v29;
      v19 = v30;
      v24 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v21 = v23;
      v22 = v28;
      MEMORY[0x1DA6CD890](0, v12, v9, v23);
      _Block_release(v21);

      (*(v19 + 8))(v9, v7);
      (*(v20 + 8))(v12, v24);
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in implicit closure #1 in GraphCanvasElementView.trackDeletedExpressions(for:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = dispatch thunk of CalculateGraph.graphExpressions.getter();
      if (v14 >> 62)
      {
        v22 = __CocoaSet.count.getter();
      }

      else
      {
        v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x3F0);
      swift_beginAccess();
      (*(v7 + 16))(v9, &v11[v15], v6);
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v7 + 8))(v9, v6);
      v16 = CROrderedSet.count.getter();
      v17 = (*(v3 + 8))(v5, v2);
      if (v22 < v16)
      {
        if (one-time initialization token for mathLogger != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, mathLogger);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1D38C4000, v19, v20, "Detected externally deleted expression", v21, 2u);
          MEMORY[0x1DA6D0660](v21, -1, -1);
        }

        GraphCanvasElementView.updateModelAfterCalculateGraphDeletion()();
      }

      MEMORY[0x1EEE9AC00](v17);
      *(&v22 - 2) = v11;
      *(&v22 - 1) = v13;
      withObservationTracking<A>(_:onChange:)();
    }

    else
    {
    }
  }
}

double GraphCanvasElementView.updateGraphableExpressionState(_:)(uint64_t a1)
{
  v264 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence7CapsuleVy8PaperKit19GraphableExpressionVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v209 - v4;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v233 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v232 = v209 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v234 = v209 - v9;
  v247 = type metadata accessor for Color(0);
  v250 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v237 = v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v11);
  v240 = v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v241 = v209 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v245 = v209 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v235 = v209 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v236 = v209 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v244 = v209 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v243 = v209 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v238 = v209 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v246 = v209 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd, &_s8PaperKit19GraphableExpressionVSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v249 = v209 - v30;
  v266 = type metadata accessor for GraphableExpression(0);
  v263 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v32 = v209 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v239 = v209 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v242 = v209 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v248 = v209 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v209 - v40;
  v251 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v251);
  v257 = v209 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v259 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v252 = v209 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v253 = v209 - v45;
  v262 = type metadata accessor for UUID();
  v46 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v260 = v209 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v261 = v209 - v49;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v52 = *&v1[direct field offset for GraphCanvasElementView.graphViewController];
    if (v52 && (v224 = v8, (v53 = *(v52 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph)) != 0))
    {
      v216 = v7;
      v217 = v5;
      v218 = v3;
      v219 = v2;
      v54 = v1;
      v55 = MEMORY[0x1E69E7D40];
      v56 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA10);
      v226 = Strong;

      v58 = v56(v57);
      v221 = v59;
      if (v58)
      {
        v209[1] = v11;
        v210 = v32;
        v225 = v58;
        v223 = v53;
        swift_getKeyPath();
        v60 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState___observationRegistrar;
        v61 = v264;
        v270 = v264;
        v62 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
        v258 = v60;
        v256 = v62;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v63 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
        swift_beginAccess();
        v64 = *(v46 + 16);
        v230 = v63;
        v65 = v61 + v63;
        v67 = v261;
        v66 = v262;
        v229 = v46 + 16;
        v228 = v64;
        v64(v261, v65, v262);
        v265 = UUID.uuidString.getter();
        v222 = v68;
        v69 = *(v46 + 8);
        v231 = v46 + 8;
        v227 = v69;
        (v69)(v67, v66);
        v70 = *((*v55 & *v54) + 0x3F0);
        swift_beginAccess();
        v71 = v259;
        v72 = (v259 + 16);
        v73 = *(v259 + 16);
        v74 = v253;
        v75 = v254;
        v73(v253, &v54[v70], v254);
        v76 = v257;
        Capsule.root.getter();
        v77 = *(v71 + 8);
        v77(v74, v75);
        v220 = v54;
        v212 = v70;
        v78 = &v54[v70];
        v79 = v252;
        v214 = v72;
        v211 = v73;
        v80 = (v73)(v252, v78, v75);
        MEMORY[0x1EEE9AC00](v80);
        v209[-2] = v79;
        v81 = CROrderedSet.map<A>(_:)();
        v215 = 0;
        _s8PaperKit12GraphElementVWOhTm_0(v76, type metadata accessor for GraphElement);
        v259 = v71 + 8;
        v213 = v77;
        v77(v79, v75);
        v82 = v222;
        v83 = *(v81 + 16);
        if (v83)
        {
          v84 = 0;
          v85 = &_s9Coherence10CRRegisterVySSGMR;
          while (v84 < *(v81 + 16))
          {
            _s8PaperKit19GraphableExpressionVWOcTm_0(v81 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v84, v41, type metadata accessor for GraphableExpression);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
            CRRegister.wrappedValue.getter();
            if (v268 == v265 && v269 == v82)
            {

              _s8PaperKit12GraphElementVWOhTm_0(v41, type metadata accessor for GraphableExpression);
LABEL_23:

              LODWORD(v75) = 0;
              v85 = v264;
              goto LABEL_25;
            }

            LODWORD(v75) = _stringCompareWithSmolCheck(_:_:expecting:)();

            _s8PaperKit12GraphElementVWOhTm_0(v41, type metadata accessor for GraphableExpression);
            if (v75)
            {
              goto LABEL_23;
            }

            if (v83 == ++v84)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

LABEL_12:

        ObjectType = swift_getObjectType();
        swift_getKeyPath();
        v85 = v264;
        v268 = v264;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v88 = v261;
        v87 = v262;
        v228(v261, &v85[v230], v262);
        v89 = v221;
        v90 = (*(v221 + 6))(v88, ObjectType, v221);
        (v227)(v88, v87);
        if (v90)
        {
          v91 = v249;
          (*(v89 + 8))(v90, ObjectType, v89);
          if ((*(v263 + 48))(v91, 1, v266) != 1)
          {
            _s8PaperKit5ColorVWObTm_1(v91, v248, type metadata accessor for GraphableExpression);
            v92 = v220;
            v93 = v212;
            v94 = v253;
            v95 = v254;
            v96 = v211;
            v211(v253, &v220[v212], v254);
            Capsule.root.getter();
            v75 = v213;
            v213(v94, v95);
            v97 = &v92[v93];
            v98 = v252;
            v99 = v96(v252, v97, v95);
            MEMORY[0x1EEE9AC00](v99);
            v209[-2] = v98;
            v100 = v257;
            v101 = v215;
            v102 = CROrderedSet.map<A>(_:)();
            _s8PaperKit12GraphElementVWOhTm_0(v100, type metadata accessor for GraphElement);
            v103 = v75(v98, v95);
            MEMORY[0x1EEE9AC00](v103);
            v104 = v248;
            v209[-2] = v248;
            v84 = specialized Collection.firstIndex(where:)(partial apply for closure #2 in GraphCanvasElementView.updateGraphableExpressionState(_:), &v209[-4], v102);
            LODWORD(v75) = v105;
            v215 = v101;

            _s8PaperKit12GraphElementVWOhTm_0(v104, type metadata accessor for GraphableExpression);
LABEL_25:
            swift_getKeyPath();
            v268 = v85;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v106 = *&v85[OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8];
            v249 = *&v85[OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable];
            v221 = &v85[OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable];
            swift_getKeyPath();
            v268 = v85;

            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v107 = v85[24];
            swift_getKeyPath();
            v268 = v85;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v108 = *(*&v85[OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables] + 16) >= 2uLL;
            v248 = v106;
            v110 = !v108 || v106 != 0;
            v111 = v110 & v107;
            if ((v75 & 1) != 0 || !v111)
            {
LABEL_45:
              if ((v75 ^ v111))
              {

                swift_unknownObjectRelease();

                goto LABEL_94;
              }

              if ((v75 & 1) == 0)
              {

                v133 = MEMORY[0x1EEE9AC00](v132);
                v134 = v226;
                v209[-4] = v220;
                v209[-3] = v84;
                v209[-2] = v134;
                (*((*MEMORY[0x1E69E7D40] & *v134) + 0x6E8))(0, 0, partial apply for closure #5 in GraphCanvasElementView.updateGraphableExpressionState(_:), v133);
LABEL_93:
                GraphCanvasElementView.updateGraphView()();

                swift_unknownObjectRelease();
                goto LABEL_94;
              }

              v122 = v248;
              if (!v248)
              {
                swift_getKeyPath();
                v268 = v85;
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                v135 = CalculateExpression.graphableVariables.getter();

                v136 = *(v135 + 16);

                if (v136)
                {
                  swift_getKeyPath();
                  v268 = v85;
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v137 = CalculateExpression.graphableVariables.getter();

                  if (v137[2])
                  {
                    v122 = v137[5];
                    v249 = v137[4];
                  }

                  else
                  {
                    v249 = 0;
                    v122 = 0;
                  }
                }

                else
                {
                  v122 = 0;
                }
              }

              if (one-time initialization token for mathLogger == -1)
              {
LABEL_82:
                v181 = type metadata accessor for Logger();
                __swift_project_value_buffer(v181, mathLogger);

                v182 = Logger.logObject.getter();
                v183 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v182, v183))
                {
                  v184 = swift_slowAlloc();
                  v263 = swift_slowAlloc();
                  v268 = v263;
                  *v184 = 136380931;
                  swift_getKeyPath();
                  v267 = v85;
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v185 = CalculateExpression.expression.getter();
                  v186 = v122;
                  v188 = v187;

                  v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v188, &v268);
                  v122 = v186;

                  *(v184 + 4) = v189;
                  *(v184 + 12) = 2081;
                  if (v186)
                  {
                    v190 = v249;
                  }

                  else
                  {
                    v190 = 0x3E656E6F6E3CLL;
                  }

                  if (v186)
                  {
                    v191 = v186;
                  }

                  else
                  {
                    v191 = 0xE600000000000000;
                  }

                  v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v191, &v268);

                  *(v184 + 14) = v192;
                  _os_log_impl(&dword_1D38C4000, v182, v183, "Adding graphable expression: %{private}s, variable: %{private}s", v184, 0x16u);
                  v193 = v263;
                  swift_arrayDestroy();
                  MEMORY[0x1DA6D0660](v193, -1, -1);
                  MEMORY[0x1DA6D0660](v184, -1, -1);
                }

                v248 = v122;
                swift_getKeyPath();
                v268 = v85;
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                v194 = CalculateExpression.expression.getter();
                v263 = v195;
                v264 = v194;

                v196 = *(v250 + 56);
                v197 = v241;
                v198 = v247;
                v196(v241, 1, 1, v247);
                v268 = 0;
                v269 = 0xE000000000000000;

                v199 = v210;
                CRRegister.init(wrappedValue:)();
                v268 = 0;
                v269 = 0xE000000000000000;
                CRRegister.init(wrappedValue:)();
                v200 = v245;
                v196(v245, 1, 1, v198);
                v201 = v240;
                outlined init with copy of Color?(v200, v240);
                lazy protocol witness table accessor for type Color? and conformance <A> A?();
                CRRegister.init(wrappedValue:)();
                outlined destroy of StocksKitCurrencyCache.Provider?(v200, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
                v268 = 0;
                v269 = 0xE000000000000000;
                CRRegister.init(wrappedValue:)();
                UnknownProperties.init()();
                v268 = v264;
                v269 = v263;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
                CRRegister.wrappedValue.setter();
                v268 = v265;
                v269 = v222;
                CRRegister.wrappedValue.setter();
                outlined init with copy of Color?(v197, v200);
                outlined init with copy of Color?(v200, v201);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
                v202 = v248;
                CRRegister.wrappedValue.setter();
                outlined destroy of StocksKitCurrencyCache.Provider?(v200, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
                if (v202)
                {
                  v268 = v249;
                  v269 = v202;
                  CRRegister.wrappedValue.setter();
                }

                outlined destroy of StocksKitCurrencyCache.Provider?(v197, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
                v203 = v220;
                v204 = MEMORY[0x1E69E7D40];
                v205 = v239;
                v206 = _s8PaperKit5ColorVWObTm_1(v199, v239, type metadata accessor for GraphableExpression);
                v207 = MEMORY[0x1EEE9AC00](v206);
                v208 = v226;
                v209[-4] = v203;
                v209[-3] = v205;
                v209[-2] = v208;
                (*((*v204 & *v208) + 0x6E8))(0, 0, partial apply for closure #6 in GraphCanvasElementView.updateGraphableExpressionState(_:), v207);
                _s8PaperKit12GraphElementVWOhTm_0(v205, type metadata accessor for GraphableExpression);
                goto LABEL_93;
              }

LABEL_103:
              swift_once();
              goto LABEL_82;
            }

            v112 = dispatch thunk of CalculateGraph.graphExpressions.getter();
            v83 = v112;
            if (!(v112 >> 62))
            {
              v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v113)
              {
LABEL_98:

                swift_unknownObjectRelease();

                goto LABEL_99;
              }

              goto LABEL_35;
            }

LABEL_97:
            v113 = __CocoaSet.count.getter();
            if (!v113)
            {
              goto LABEL_98;
            }

LABEL_35:
            v114 = 0;
            v265 = v83 & 0xC000000000000001;
            v249 = (v83 & 0xFFFFFFFFFFFFFF8);
            v209[0] = v84;
            v115 = v261;
            while (1)
            {
              if (v265)
              {
                v116 = MEMORY[0x1DA6CE0C0](v114, v83);
                v117 = v114 + 1;
                if (__OFADD__(v114, 1))
                {
                  goto LABEL_44;
                }
              }

              else
              {
                if (v114 >= *(v249 + 2))
                {
                  goto LABEL_96;
                }

                v117 = v114 + 1;
                if (__OFADD__(v114, 1))
                {
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }
              }

              v84 = v113;
              v75 = v116;
              dispatch thunk of CalculateGraphExpression.id.getter();
              swift_getKeyPath();
              v118 = v264;
              v268 = v264;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v119 = v260;
              v120 = v262;
              v228(v260, (v118 + v230), v262);
              v121 = static UUID.== infix(_:_:)();
              v85 = v227;
              (v227)(v119, v120);
              (v85)(v115, v120);
              if (v121)
              {
                break;
              }

              ++v114;
              v113 = v84;
              if (v117 == v84)
              {
                goto LABEL_98;
              }
            }

            v265 = v75;

            v123 = v250;
            v124 = *(v250 + 56);
            v125 = v246;
            v126 = v247;
            v124(v246, 1, 1, v247);
            swift_getKeyPath();
            v127 = v264;
            v268 = v264;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v128 = v243;
            if (*(v127 + 32))
            {
              type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
              swift_retain_n();
              v129 = UIColor.init(_:)();
              Color.init(cgColor:)([v129 CGColor], v128);

              outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              if ((*(v123 + 48))(v128, 1, v126))
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
                v130 = 1;
                v131 = v238;
              }

              else
              {
                v131 = v238;
                _s8PaperKit5ColorVWObTm_1(v128, v238, type metadata accessor for Color);
                v130 = 0;
              }

              v124(v131, v130, 1, v126);
              outlined init with take of Range<AttributedString.Index>(v131, v125, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              v123 = v250;
            }

            v138 = v244;
            outlined init with copy of Color?(v125, v244);
            v139 = *(v123 + 48);
            if (v139(v138, 1, v126) == 1)
            {
              outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
            }

            else
            {
              v140 = v237;
              _s8PaperKit5ColorVWObTm_1(v138, v237, type metadata accessor for Color);
              dispatch thunk of CalculateGraphExpression.effectiveColor.getter();
              type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

              v141 = UIColor.init(_:)();
              v142 = [v141 CGColor];
              v143 = v235;
              Color.init(cgColor:)(v142, v235);

              v144 = v247;
              if (v139(v143, 1, v247))
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
                v145 = 1;
                v146 = v236;
              }

              else
              {
                v146 = v236;
                _s8PaperKit5ColorVWObTm_1(v143, v236, type metadata accessor for Color);
                v145 = 0;
              }

              v124(v146, v145, 1, v144);
              v147 = v245;
              _s8PaperKit19GraphableExpressionVWOcTm_0(v140, v245, type metadata accessor for Color);
              v124(v147, 0, 1, v144);
              v148 = specialized static Color.almostEqual(_:_:)(v146, v147);
              outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              if ((v148 & 1) == 0)
              {
                swift_getKeyPath();
                v268 = v264;
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                dispatch thunk of CalculateGraphExpression.color.setter();
              }

              outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
              _s8PaperKit12GraphElementVWOhTm_0(v140, type metadata accessor for Color);
            }

            v149 = v221;
            v150 = v209[0];
            swift_getKeyPath();
            v268 = v264;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if (v149[1])
            {
              v151 = *v149;
              v261 = v149[1];
              v262 = v151;
            }

            else
            {
              v261 = 0xE000000000000000;
              v262 = 0;
            }

            v152 = v220;
            v153 = v212;
            v154 = v253;
            v122 = v254;
            v85 = v214;
            v155 = v211;
            v211(v253, &v220[v212], v254);

            v156 = v257;
            Capsule.root.getter();
            v157 = v213;
            v213(v154, v122);
            v158 = &v152[v153];
            v159 = v252;
            v160 = v155(v252, v158, v122);
            MEMORY[0x1EEE9AC00](v160);
            v209[-2] = v159;
            v161 = CROrderedSet.map<A>(_:)();
            _s8PaperKit12GraphElementVWOhTm_0(v156, type metadata accessor for GraphElement);
            v157(v159, v122);
            if ((v150 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else
            {
              v122 = v248;
              v162 = v262;
              if (v150 < *(v161 + 16))
              {
                v163 = v242;
                _s8PaperKit19GraphableExpressionVWOcTm_0(v161 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v150, v242, type metadata accessor for GraphableExpression);

                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
                CRRegister.wrappedValue.getter();
                _s8PaperKit12GraphElementVWOhTm_0(v163, type metadata accessor for GraphableExpression);
                v164 = v261;
                if (v162 == v268 && v261 == v269)
                {
                }

                else
                {
                  v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v165 & 1) == 0)
                  {
                    CalculateGraphExpression.expression.getter();
                    swift_getKeyPath();
                    v262 = v162;
                    v268 = v264;
                    ObservationRegistrar.access<A, B>(_:keyPath:)();

                    CalculateExpression.graphableVariable.setter();

                    v166 = v212;
                    v167 = v253;
                    v168 = v254;
                    v169 = v211;
                    v211(v253, &v220[v212], v254);
                    swift_getKeyPath();
                    v170 = v232;
                    Capsule.subscript.getter();

                    v261 = v164;
                    v171 = v213;
                    v213(v167, v168);
                    v172 = v234;
                    v173 = v255;
                    CROrderedSet.subscript.getter();
                    (*(v233 + 8))(v170, v173);
                    v169(v167, &v220[v166], v168);
                    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953B8]);
                    v174 = v217;
                    v175 = v216;
                    Capsule.encapsulate<A>(_:)();
                    v176 = v171(v167, v168);
                    v177 = MEMORY[0x1EEE9AC00](v176);
                    v178 = v226;
                    v180 = v261;
                    v179 = v262;
                    v209[-4] = v174;
                    v209[-3] = v179;
                    v209[-2] = v180;
                    v209[-1] = v178;
                    (*((*MEMORY[0x1E69E7D40] & *v178) + 0x6E8))(0, 0, partial apply for closure #4 in GraphCanvasElementView.updateGraphableExpressionState(_:), v177);

                    GraphCanvasElementView.updateGraphView()();
                    swift_unknownObjectRelease();

                    (*(v224 + 8))(v172, v175);
                    outlined destroy of StocksKitCurrencyCache.Provider?(v246, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
                    (*(v218 + 8))(v174, v219);
LABEL_99:

                    return result;
                  }
                }

                outlined destroy of StocksKitCurrencyCache.Provider?(v246, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);

                swift_unknownObjectRelease();

LABEL_94:

                return result;
              }
            }

            __break(1u);
            goto LABEL_103;
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s8PaperKit19GraphableExpressionVSgMd, &_s8PaperKit19GraphableExpressionVSgMR);
        }

        v84 = 0;
        LODWORD(v75) = 1;
        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #2 in GraphCanvasElementView.updateGraphableExpressionState(_:)()
{
  type metadata accessor for GraphableExpression(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();

  return 1;
}

uint64_t closure #4 in GraphCanvasElementView.updateGraphableExpressionState(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence7CapsuleVy8PaperKit19GraphableExpressionVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-v10];
  v18 = a2;
  v19 = a3;
  Capsule.callAsFunction<A>(_:)();
  (*(v9 + 16))(v11, a1, v8);
  v20[0] = 3;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x7D8);
  v14 = type metadata accessor for GraphableExpression(0);
  v15 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression, &protocol conformance descriptor for GraphableExpression);
  v13(v11, v20, v14, v15);
  v20[0] = 3;
  (*((*v12 & *a4) + 0x7B0))(v20);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in closure #4 in GraphCanvasElementView.updateGraphableExpressionState(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  return Capsule.Ref.subscript.setter();
}

uint64_t closure #5 in GraphCanvasElementView.updateGraphableExpressionState(_:)(char *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-v8];
  v17 = a2;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  (*(v7 + 16))(v9, &a1[v11], v6);
  v18[0] = 3;
  v12 = *((*v10 & *a3) + 0x7D8);
  v13 = type metadata accessor for GraphElement(0);
  v14 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement, &protocol conformance descriptor for GraphElement);
  v12(v9, v18, v13, v14);
  v18[0] = 3;
  (*((*v10 & *a3) + 0x7B0))(v18);
  return (*(v7 + 8))(v9, v6);
}

double closure #1 in closure #5 in GraphCanvasElementView.updateGraphableExpressionState(_:)(uint64_t a1, Swift::Int a2)
{
  swift_getKeyPath();
  v3 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  CROrderedSet.remove(at:)(a2);
  v3(&v5, 0);

  return result;
}

uint64_t closure #6 in GraphCanvasElementView.updateGraphableExpressionState(_:)(char *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-v8];
  v17 = a2;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  (*(v7 + 16))(v9, &a1[v11], v6);
  v18[0] = 3;
  v12 = *((*v10 & *a3) + 0x7D8);
  v13 = type metadata accessor for GraphElement(0);
  v14 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement, &protocol conformance descriptor for GraphElement);
  v12(v9, v18, v13, v14);
  v18[0] = 3;
  (*((*v10 & *a3) + 0x7B0))(v18);
  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #1 in closure #6 in GraphCanvasElementView.updateGraphableExpressionState(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for GraphableExpression(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-v11];
  _s8PaperKit19GraphableExpressionVWOcTm_0(a2, v8, type metadata accessor for GraphableExpression);
  v13 = type metadata accessor for CRKeyPath();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression, &protocol conformance descriptor for GraphableExpression);

  MEMORY[0x1DA6CC020](v15, v8, v5, v6, v14);
  swift_getKeyPath();
  v16 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  CROrderedSet.append(_:)();
  v16(v18, 0);

  return (*(v10 + 8))(v12, v9);
}

void *GraphCanvasElementView.calculateDocumentObserverGraphableVariables()()
{
  v105 = type metadata accessor for UUID();
  v102 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v108 = &v93 - v3;
  v107 = type metadata accessor for GraphableExpression(0);
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v101 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v93 - v12;
  v14 = type metadata accessor for PKDrawing();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112[3] = &type metadata for PencilAndPaperFeatureFlags;
  v112[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v112[0]) = 7;
  v18 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v112);
  if ((v18 & 1) == 0)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v98 = v0;
  v99 = v7;
  v20 = Strong;
  v21 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
  v23 = v22;
  ObjectType = swift_getObjectType();
  v25 = (*(v23 + 16))(ObjectType, v23);

  if (!v25)
  {

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v100 = v20;
  v26 = [v25 drawing];

  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  PKDrawing._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = [v28 uuid];

  (*(v15 + 8))(v17, v14);
  v111 = &unk_1F4FC4E80;
  v31 = swift_dynamicCastObjCProtocolConditional();
  if (!v31 || (v32 = v31, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0), !swift_dynamicCastMetatype()))
  {

    swift_unknownObjectRelease();
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v33 = one-time initialization token for controllers;
  swift_unknownObjectRetain();
  if (v33 != -1)
  {
LABEL_52:
    swift_once();
  }

  swift_beginAccess();
  v34 = static CalculateDocumentController.controllers;
  if (!*(static CalculateDocumentController.controllers + 2) || (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v36 & 1) == 0))
  {
    swift_endAccess();

    swift_unknownObjectRelease_n();
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v37 = *(v34[7] + 8 * v35);
  swift_endAccess();
  v97 = v37;
  v93 = v30;
  swift_unknownObjectRelease();
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v38 = v98;
  v39 = *((*MEMORY[0x1E69E7D40] & *v98) + 0x3F0);
  swift_beginAccess();
  v40 = v101;
  v96 = *(v101 + 2);
  v96(v13, &v38[v39], v8);
  Capsule.root.getter();
  v101 = *(v40 + 1);
  (v101)(v13, v8);
  v41 = (v96)(v10, &v38[v39], v8);
  MEMORY[0x1EEE9AC00](v41);
  *(&v93 - 2) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v42 = v99;
  v13 = CROrderedSet.map<A>(_:)();
  _s8PaperKit12GraphElementVWOhTm_0(v42, type metadata accessor for GraphElement);
  (v101)(v10, v8);
  v43 = *(v13 + 2);
  if (!v43)
  {
    v8 = v97;
LABEL_49:

    swift_unknownObjectRelease();

    return v32;
  }

  v44 = 0;
  v8 = v97;
  v45 = &v97[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
  v46 = v104;
  v101 = &v13[(*(v46 + 80) + 32) & ~*(v46 + 80)];
  v95 = v102 + 16;
  v96 = (v102 + 8);
  v30 = v106;
  v94 = &v97[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
  v98 = v13;
  v99 = v43;
  while (1)
  {
    if (v44 >= *(v13 + 2))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    _s8PaperKit19GraphableExpressionVWOcTm_0(&v101[*(v46 + 72) * v44], v30, type metadata accessor for GraphableExpression);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v47 = *(v45 + 1);
      v48 = swift_getObjectType();
      v10 = CanvasCalculateDocument.expressionForAnyGraphable(_:)(v30, v48, v47);
      swift_unknownObjectRelease();
      if (v10)
      {
        break;
      }
    }

    _s8PaperKit12GraphElementVWOhTm_0(v30, type metadata accessor for GraphableExpression);
LABEL_12:
    if (v43 == ++v44)
    {
      goto LABEL_49;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  CRRegister.wrappedValue.getter();
  v50 = v109;
  v49 = v110;

  v51 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v51 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    v62 = CalculateExpression.graphableVariable.getter();
    if (!v63)
    {
      _s8PaperKit12GraphElementVWOhTm_0(v30, type metadata accessor for GraphableExpression);

LABEL_39:
      v8 = v97;
      v13 = v98;
      v43 = v99;
      goto LABEL_12;
    }

    v64 = v62;
    v65 = v63;
    v66 = v103;
    CalculateExpression.id.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v32;
    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
    v70 = v32[2];
    v71 = (v69 & 1) == 0;
    v58 = __OFADD__(v70, v71);
    v72 = v70 + v71;
    if (v58)
    {
      goto LABEL_53;
    }

    v73 = v69;
    if (v32[3] >= v72)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v85 = v68;
        specialized _NativeDictionary.copy()();
        v68 = v85;
        v32 = v109;
        if ((v73 & 1) == 0)
        {
LABEL_41:
          v32[(v68 >> 6) + 8] |= 1 << v68;
          v86 = v102;
          v87 = v103;
          v88 = v68;
          v89 = v105;
          (*(v102 + 16))(v32[6] + *(v102 + 72) * v68, v103, v105);
          v90 = (v32[7] + 16 * v88);
          *v90 = v64;
          v90[1] = v65;

          (*(v86 + 8))(v87, v89);
          v30 = v106;
          _s8PaperKit12GraphElementVWOhTm_0(v106, type metadata accessor for GraphableExpression);
          v91 = v32[2];
          v58 = __OFADD__(v91, 1);
          v82 = v91 + 1;
          if (v58)
          {
            goto LABEL_54;
          }

          goto LABEL_42;
        }

        goto LABEL_38;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, isUniquelyReferenced_nonNull_native);
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
      if ((v73 & 1) != (v74 & 1))
      {
        goto LABEL_55;
      }
    }

    v32 = v109;
    if ((v73 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_38:
    v83 = (v32[7] + 16 * v68);
    *v83 = v64;
    v83[1] = v65;

    (*v96)(v103, v105);
    v30 = v106;
    _s8PaperKit12GraphElementVWOhTm_0(v106, type metadata accessor for GraphableExpression);
    goto LABEL_39;
  }

  v52 = v108;
  CalculateExpression.id.getter();
  CRRegister.wrappedValue.getter();
  v30 = v109;
  v13 = v110;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v109 = v32;
  v54 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
  v56 = v32[2];
  v57 = (v55 & 1) == 0;
  v58 = __OFADD__(v56, v57);
  v59 = v56 + v57;
  if (v58)
  {
    goto LABEL_51;
  }

  v60 = v55;
  if (v32[3] >= v59)
  {
    v46 = v104;
    if ((v53 & 1) == 0)
    {
      v84 = v54;
      specialized _NativeDictionary.copy()();
      v54 = v84;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v59, v53);
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v108);
    v46 = v104;
    if ((v60 & 1) != (v61 & 1))
    {
      goto LABEL_55;
    }
  }

  v43 = v99;
  v32 = v109;
  if (v60)
  {
    v75 = (v109[7] + 16 * v54);
    *v75 = v30;
    v75[1] = v13;

    (*v96)(v108, v105);
    v30 = v106;
    _s8PaperKit12GraphElementVWOhTm_0(v106, type metadata accessor for GraphableExpression);
    v8 = v97;
    v13 = v98;
    goto LABEL_12;
  }

  v109[(v54 >> 6) + 8] |= 1 << v54;
  v76 = v102;
  v77 = v54;
  v78 = v108;
  v79 = v105;
  (*(v102 + 16))(v32[6] + *(v102 + 72) * v54, v108, v105);
  v80 = (v32[7] + 16 * v77);
  *v80 = v30;
  v80[1] = v13;

  (*(v76 + 8))(v78, v79);
  v30 = v106;
  _s8PaperKit12GraphElementVWOhTm_0(v106, type metadata accessor for GraphableExpression);
  v81 = v32[2];
  v58 = __OFADD__(v81, 1);
  v82 = v81 + 1;
  if (!v58)
  {
LABEL_42:
    v32[2] = v82;
    v8 = v97;
    v13 = v98;
    v43 = v99;
    v45 = v94;
    goto LABEL_12;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void GraphCanvasElementView.updateModelColor(for:identifier:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v114 = a3;
  v115 = a2;
  v106 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence7CapsuleVy8PaperKit19GraphableExpressionVGMR);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v81 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v93 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v92 = &v81 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v7 = &v81 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v81 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v81 - v13;
  v14 = type metadata accessor for Color(0);
  v103 = *(v14 - 8);
  v104 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  v20 = type metadata accessor for GraphableExpression(0);
  v112 = *(v20 - 8);
  v113 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v110 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v108 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v81 - v30;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v84 = v16;
    v105 = Strong;
    v90 = v19;
    v82 = v7;
    v33 = v3;
    v34 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x3F0);
    swift_beginAccess();
    v35 = *(v27 + 16);
    v36 = v31;
    v85 = v31;
    v35(v31, &v33[v34], v26);
    v37 = v109;
    Capsule.root.getter();
    v107 = *(v27 + 8);
    v107(v36, v26);
    v86 = v33;
    v88 = v34;
    v38 = v108;
    v87 = v27 + 16;
    v91 = v35;
    v39 = (v35)(v108, &v33[v34], v26);
    MEMORY[0x1EEE9AC00](v39);
    *(&v81 - 2) = v38;
    v40 = CROrderedSet.map<A>(_:)();
    v83 = 0;
    _s8PaperKit12GraphElementVWOhTm_0(v37, type metadata accessor for GraphElement);
    v89 = v27 + 8;
    v107(v38, v26);
    v41 = *(v40 + 16);
    if (!v41)
    {
LABEL_9:

      return;
    }

    v42 = v26;
    v43 = 0;
    v81 = v42;
    while (v43 < *(v40 + 16))
    {
      v44 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v45 = *(v112 + 72) * v43;
      _s8PaperKit19GraphableExpressionVWOcTm_0(v40 + v44 + v45, v24, type metadata accessor for GraphableExpression);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
      CRRegister.wrappedValue.getter();
      if (v116 == v115 && v117 == v114)
      {

        _s8PaperKit12GraphElementVWOhTm_0(v24, type metadata accessor for GraphableExpression);
LABEL_11:

        v47 = dispatch thunk of CalculateGraphExpression.color.getter();
        if (!v47)
        {

          return;
        }

        v48 = v47;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

        v49 = UIColor.init(_:)();
        v50 = [v49 CGColor];
        v51 = v102;
        Color.init(cgColor:)(v50, v102);

        if ((*(v103 + 48))(v51, 1, v104))
        {

          outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          return;
        }

        v114 = v48;
        v52 = v51;
        v53 = v84;
        _s8PaperKit5ColorVWObTm_1(v52, v84, type metadata accessor for Color);
        _s8PaperKit5ColorVWObTm_1(v53, v90, type metadata accessor for Color);
        v54 = v86;
        v55 = v88;
        v56 = v85;
        v57 = v81;
        v91(v85, &v86[v88], v81);
        Capsule.root.getter();
        v107(v56, v57);
        v58 = (v91)(v38, v54 + v55, v57);
        v115 = &v81;
        MEMORY[0x1EEE9AC00](v58);
        *(&v81 - 2) = v38;
        v59 = v37;
        v60 = CROrderedSet.map<A>(_:)();
        _s8PaperKit12GraphElementVWOhTm_0(v59, type metadata accessor for GraphElement);
        v107(v38, v57);
        if (v43 < *(v60 + 16))
        {
          v61 = v60 + v44 + v45;
          v62 = v101;
          _s8PaperKit19GraphableExpressionVWOcTm_0(v61, v101, type metadata accessor for GraphableExpression);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
          v63 = v99;
          CRRegister.wrappedValue.getter();
          v64 = v90;
          v65 = v100;
          _s8PaperKit19GraphableExpressionVWOcTm_0(v90, v100, type metadata accessor for Color);
          (*(v103 + 56))(v65, 0, 1, v104);
          v66 = specialized static Color.almostEqual(_:_:)(v63, v65);
          outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          if (v66)
          {
            _s8PaperKit12GraphElementVWOhTm_0(v62, type metadata accessor for GraphableExpression);

            _s8PaperKit12GraphElementVWOhTm_0(v64, type metadata accessor for Color);
          }

          else
          {
            v67 = v86;
            v68 = v85;
            v69 = v81;
            v70 = v91;
            v91(v85, &v86[v88], v81);
            swift_getKeyPath();
            v71 = v92;
            Capsule.subscript.getter();

            v107(v68, v69);
            v72 = v82;
            v73 = v62;
            v74 = v111;
            CROrderedSet.subscript.getter();
            (*(v93 + 8))(v71, v74);
            v70(v68, &v67[v88], v69);
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953B8]);
            v75 = v96;
            v76 = v95;
            Capsule.encapsulate<A>(_:)();
            v77 = (v107)(v68, v69);
            v78 = MEMORY[0x1EEE9AC00](v77);
            v79 = v105;
            v80 = v90;
            *(&v81 - 4) = v75;
            *(&v81 - 3) = v80;
            *(&v81 - 2) = v79;
            (*((*MEMORY[0x1E69E7D40] & *v79) + 0x6E8))(0, 0, partial apply for closure #2 in GraphCanvasElementView.updateModelColor(for:identifier:), v78);

            (*(v94 + 8))(v72, v76);
            _s8PaperKit12GraphElementVWOhTm_0(v73, type metadata accessor for GraphableExpression);
            (*(v97 + 8))(v75, v98);
            _s8PaperKit12GraphElementVWOhTm_0(v80, type metadata accessor for Color);
          }

          return;
        }

LABEL_21:
        __break(1u);
        return;
      }

      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      _s8PaperKit12GraphElementVWOhTm_0(v24, type metadata accessor for GraphableExpression);
      if (v46)
      {
        goto LABEL_11;
      }

      if (v41 == ++v43)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t closure #2 in GraphCanvasElementView.updateModelColor(for:identifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence7CapsuleVy8PaperKit19GraphableExpressionVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-v8];
  v16 = a2;
  Capsule.callAsFunction<A>(_:)();
  (*(v7 + 16))(v9, a1, v6);
  v17[0] = 3;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x7D8);
  v12 = type metadata accessor for GraphableExpression(0);
  v13 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpression and conformance GraphableExpression, type metadata accessor for GraphableExpression, &protocol conformance descriptor for GraphableExpression);
  v11(v9, v17, v12, v13);
  v17[0] = 3;
  (*((*v10 & *a3) + 0x7B0))(v17);
  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #1 in closure #2 in GraphCanvasElementView.updateModelColor(for:identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  _s8PaperKit19GraphableExpressionVWOcTm_0(a2, v5, type metadata accessor for Color);
  v6 = type metadata accessor for Color(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return Capsule.Ref.subscript.setter();
}

Swift::Void __swiftcall GraphCanvasElementView.updateModelColors()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd, &_s8PaperKit19GraphableExpressionVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = v31 - v2;
  v3 = type metadata accessor for GraphableExpression(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for UUID();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  v8 = *(v0 + direct field offset for GraphCanvasElementView.graphViewController);
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph);
    if (v9)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA10);
        v33 = Strong;

        v13 = v11(v12);
        v43 = v14;
        v44 = v13;
        if (v13)
        {
          v15 = dispatch thunk of CalculateGraph.graphExpressions.getter();
          v16 = v15;
          if (v15 >> 62)
          {
            goto LABEL_32;
          }

          for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
          {
            v31[1] = v9;
            ObjectType = swift_getObjectType();
            v19 = 0;
            v20 = 0;
            v21 = *(v43 + 64);
            v39 = v43 + 64;
            v40 = ObjectType;
            v41 = v16;
            v42 = v16 & 0xC000000000000001;
            v34 = v16 & 0xFFFFFFFFFFFFFF8;
            v37 = (v6 + 8);
            v38 = v21;
            v36 = (v4 + 48);
            v22 = v46;
LABEL_8:
            v32 = v19;
            v4 = v20;
            while (1)
            {
              if (v42)
              {
                v6 = MEMORY[0x1DA6CE0C0](v4, v16);
                v20 = v4 + 1;
                if (__OFADD__(v4, 1))
                {
                  break;
                }

                goto LABEL_15;
              }

              if (v4 >= *(v34 + 16))
              {
                goto LABEL_31;
              }

              v6 = *(v16 + 8 * v4 + 32);

              v20 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
                break;
              }

LABEL_15:
              v23 = v45;
              dispatch thunk of CalculateGraphExpression.id.getter();
              v24 = UUID.uuidString.getter();
              v26 = v25;
              (*v37)(v23, v47);
              CalculateGraphExpression.expression.getter();
              v9 = v3;
              v38();

              if ((*v36)(v22, 1, v3) == 1)
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit19GraphableExpressionVSgMd, &_s8PaperKit19GraphableExpressionVSgMR);
              }

              else
              {

                v27 = v35;
                _s8PaperKit5ColorVWObTm_1(v22, v35, type metadata accessor for GraphableExpression);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
                CRRegister.wrappedValue.getter();
                _s8PaperKit12GraphElementVWOhTm_0(v27, type metadata accessor for GraphableExpression);
                v24 = v49;
                v26 = v50;
              }

              GraphCanvasElementView.updateModelColor(for:identifier:)(v6, v24, v26);
              v29 = v28;

              if (v29)
              {
                v19 = 1;
                v16 = v41;
                if (v20 != i)
                {
                  goto LABEL_8;
                }

LABEL_27:
                GraphCanvasElementView.cachedGraphableExpressionsState.getter();
                GraphableExpressionsState.updateColors()();

LABEL_28:
                swift_unknownObjectRelease();

                return;
              }

              ++v4;
              v16 = v41;
              if (v20 == i)
              {

                if (v32)
                {
                  goto LABEL_27;
                }

                goto LABEL_28;
              }
            }

            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            ;
          }

          swift_unknownObjectRelease();
        }

        else
        {

          v30 = v33;
        }
      }
    }
  }
}

void @objc GraphCanvasElementView.updateModelColors()(void *a1)
{
  v1 = a1;
  GraphCanvasElementView.updateModelColors()();
}

void (*implicit closure #1 in GraphCanvasElementView.observeGraphExpressionColor(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;

  return partial apply for closure #2 in implicit closure #1 in GraphCanvasElementView.observeGraphExpressionColor(_:identifier:);
}

void closure #2 in implicit closure #1 in GraphCanvasElementView.observeGraphExpressionColor(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      v14 = v13;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v31 = static OS_dispatch_queue.main.getter();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = a4;
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v18[2] = v15;
      v18[3] = v17;
      v29 = v15;
      v30 = v17;
      v18[4] = a3;
      v18[5] = v16;
      aBlock[4] = partial apply for closure #1 in closure #2 in implicit closure #1 in GraphCanvasElementView.observeGraphExpressionColor(_:identifier:);
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_236;
      v27 = _Block_copy(aBlock);
      v28 = v7;

      static DispatchQoS.unspecified.getter();
      v35 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v19 = v32;
      v26[1] = v14;
      v21 = v33;
      v20 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v10;
      v23 = v10;
      v24 = v27;
      v25 = v31;
      MEMORY[0x1DA6CD890](0, v23, v21, v27);
      _Block_release(v24);

      (*(v19 + 8))(v21, v20);
      (*(v8 + 8))(v22, v28);
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in implicit closure #1 in GraphCanvasElementView.observeGraphExpressionColor(_:identifier:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v3 selector:sel_updateModelColors object:0];
      v4 = [v3 performSelector:sel_updateModelColors withObject:0 afterDelay:0.1];
      MEMORY[0x1EEE9AC00](v4);
      withObservationTracking<A>(_:onChange:)();
    }
  }
}

double GraphCanvasElementView.__ivar_destroyer()
{

  return result;
}

double @objc GraphCanvasElementView.__ivar_destroyer(uint64_t a1)
{

  return result;
}

uint64_t GraphableExpressionsState.view.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

void GraphableExpressionsState.view.setter(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for GraphCanvasElementView(0);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void closure #1 in GraphableExpressionsState.expressionStates.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
}

double GraphableExpressionsState.type.setter(unsigned __int8 *a1)
{
  if (*(v1 + 33) != *a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void key path getter for GraphableExpressionsState.type : GraphableExpressionsState(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 33);
}

uint64_t GraphableExpressionsState.graphableExpressionsStates.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v165 - v3;
  v5 = type metadata accessor for Color(0);
  v190 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalculateExpression.Base();
  v189 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v206 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v203 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v205 = &v165 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd, &_s8PaperKit19GraphableExpressionVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v204 = (&v165 - v15);
  v218 = type metadata accessor for UUID();
  v199 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v202 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v201 = &v165 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v209 = &v165 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v216 = &v165 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v217 = &v165 - v24;
  v208 = type metadata accessor for CalculateExpression.GraphableType();
  v191 = *(v208 - 1);
  MEMORY[0x1EEE9AC00](v208);
  v207 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for GraphableExpression(0);
  *&v198 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v214 = &v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v200 = (&v165 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v210 = &v165 - v30;
  v193 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v193);
  v197 = &v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v195 = *(v196 - 1);
  MEMORY[0x1EEE9AC00](v196);
  v194 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v192 = &v165 - v34;
  v35 = type metadata accessor for PKDrawing();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v165 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v39 = OBJC_IVAR____TtC8PaperKit25GraphableExpressionsState___observationRegistrar;
  v224 = v1;
  v40 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  v212 = v39;
  v211 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v213 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  result = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    return result;
  }

  v43 = swift_unknownObjectWeakLoadStrong();
  if (!v43)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v44 = v43;
  v45 = *&Strong[direct field offset for GraphCanvasElementView.graphViewController];
  if (!v45 || (v46 = *(v45 + OBJC_IVAR____TtC8PaperKitP33_34A094740B6BACFE09E8AB9B5463AD5F32GraphCanvasElementViewController_calculateGraph)) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v188 = Strong;
  v185 = v8;
  v182 = v7;
  v183 = v5;
  v184 = v4;
  v47 = (*((*MEMORY[0x1E69E7D40] & *v43) + 0x440))();
  v186 = v44;
  v48 = v47;
  v50 = v49;
  ObjectType = swift_getObjectType();
  v52 = *(v50 + 16);

  v53 = v52(ObjectType, v50);

  if (!v53)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v187 = v46;
  v54 = [v53 drawing];

  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  PKDrawing._bridgeToObjectiveC()(v55);
  v57 = v56;
  v58 = [v56 uuid];

  (*(v36 + 8))(v38, v35);
  v225 = &unk_1F4FC4E80;
  v59 = swift_dynamicCastObjCProtocolConditional();
  if (!v59 || (v60 = v59, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0), !swift_dynamicCastMetatype()))
  {

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v61 = one-time initialization token for controllers;
  swift_unknownObjectRetain();
  v62 = v186;
  v63 = v188;
  if (v61 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    swift_beginAccess();
    v64 = static CalculateDocumentController.controllers;
    if (!*(static CalculateDocumentController.controllers + 2) || (v65 = specialized __RawDictionaryStorage.find<A>(_:)(v60), (v66 & 1) == 0))
    {
      swift_endAccess();

      swift_unknownObjectRelease_n();
      return MEMORY[0x1E69E7CC0];
    }

    v67 = *(v64[7] + 8 * v65);
    swift_endAccess();
    v68 = v67;
    v69 = swift_unknownObjectRelease();
    v70 = MEMORY[0x1E69E7D40];
    v71 = (*((*MEMORY[0x1E69E7D40] & *v62) + 0xA10))(v69);
    v174 = v72;
    v175 = v71;
    if (!v71)
    {

      swift_unknownObjectRelease();

      return MEMORY[0x1E69E7CC0];
    }

    v165 = v58;
    v73 = *((*v70 & *v63) + 0x3F0);
    swift_beginAccess();
    v74 = v195;
    v75 = *(v195 + 16);
    v76 = v192;
    v77 = v196;
    v75(v192, v63 + v73, v196);
    v78 = v197;
    Capsule.root.getter();
    v79 = *(v74 + 8);
    v79(v76, v77);
    v80 = v194;
    v81 = (v75)(v194, v63 + v73, v77);
    MEMORY[0x1EEE9AC00](v81);
    *(&v165 - 2) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
    v82 = CROrderedSet.map<A>(_:)();
    v179 = 0;
    _s8PaperKit12GraphElementVWOhTm_0(v78, type metadata accessor for GraphElement);
    v79(v80, v77);
    v62 = *(v82 + 16);
    v167 = v68;
    if (v62)
    {
      v219 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
      v83 = v219;
      v84 = (*(v198 + 80) + 32) & ~*(v198 + 80);
      v197 = v82;
      v85 = v82 + v84;
      v86 = *(v198 + 72);
      do
      {
        v87 = v210;
        _s8PaperKit19GraphableExpressionVWOcTm_0(v85, v210, type metadata accessor for GraphableExpression);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
        CRRegister.wrappedValue.getter();
        _s8PaperKit12GraphElementVWOhTm_0(v87, type metadata accessor for GraphableExpression);
        v89 = v221;
        v88 = v222;
        v219 = v83;
        v91 = *(v83 + 16);
        v90 = *(v83 + 24);
        if (v91 >= v90 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
          v83 = v219;
        }

        *(v83 + 16) = v91 + 1;
        v92 = v83 + 16 * v91;
        *(v92 + 32) = v89;
        *(v92 + 40) = v88;
        v85 += v86;
        v62 = (v62 - 1);
      }

      while (v62);
    }

    else
    {

      v83 = MEMORY[0x1E69E7CC0];
    }

    v180 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v83);

    v223 = MEMORY[0x1E69E7CC0];
    v93 = CalculateDocumentController.graphableExpressions.getter();
    v94 = v93;
    v95 = v218;
    v96 = v93 >> 62 ? __CocoaSet.count.getter() : *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = v215;
    v58 = v214;
    if (!v96)
    {
      break;
    }

    v60 = 0;
    v181 = v94 & 0xC000000000000001;
    v173 = v94 & 0xFFFFFFFFFFFFFF8;
    v172 = v94 + 32;
    v177 = (v191 + 88);
    v176 = *MEMORY[0x1E69920E0];
    v169 = *MEMORY[0x1E69920D0];
    v166 = (v191 + 8);
    v197 = (v199 + 8);
    v171 = v174 + 64;
    v97 = MEMORY[0x1E69E7CC0];
    v170 = (v198 + 48);
    v168 = *MEMORY[0x1E69920D8];
    v191 = v94;
    v178 = v96;
    while (1)
    {
      if (v181)
      {
        v210 = MEMORY[0x1DA6CE0C0](v60, v94);
      }

      else
      {
        if (v60 >= *(v173 + 16))
        {
          goto LABEL_105;
        }

        v210 = *(v172 + 8 * v60);
      }

      v98 = __OFADD__(v60++, 1);
      v193 = v60;
      if (v98)
      {
        goto LABEL_104;
      }

      swift_getKeyPath();
      v99 = v213;
      v221 = v213;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (!*(v99 + 33))
      {
        goto LABEL_52;
      }

      swift_getKeyPath();
      v100 = v213;
      v221 = v213;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v101 = *(v100 + 33);
      v62 = v207;
      CalculateExpression.graphableType.getter();
      v102 = (*v177)(v62, v208);
      if (v102 == v176)
      {
        v103 = *(CalculateExpression.graphableVariables.getter() + 16);

        if (!v103)
        {
          if (v101)
          {
            goto LABEL_32;
          }

          goto LABEL_52;
        }

        CalculateExpression.graphableVariable.getter();
        if (v104)
        {

          if (v101)
          {
            goto LABEL_32;
          }

          goto LABEL_52;
        }

LABEL_46:
        if (v101 != 1)
        {
          goto LABEL_32;
        }

        goto LABEL_52;
      }

      if (v102 == v169)
      {
        goto LABEL_46;
      }

      if (v102 == v168)
      {
        if (v101 != 2)
        {
          goto LABEL_32;
        }
      }

      else
      {
        (*v166)(v207, v208);
        if (v101)
        {
LABEL_32:

          goto LABEL_33;
        }
      }

LABEL_52:
      v62 = v217;
      v105 = v210;
      CalculateExpression.id.getter();
      v106 = UUID.uuidString.getter();
      v108 = v107;
      v196 = *v197;
      (v196)(v62, v95);
      LOBYTE(v106) = specialized Set.contains(_:)(v106, v108, v180);

      if (v106)
      {
        v109 = 1;
      }

      else
      {
        v110 = swift_getObjectType();
        v111 = v204;
        (*(v174 + 64))(v105, v110);
        if ((*v170)(v111, 1, v63) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s8PaperKit19GraphableExpressionVSgMd, &_s8PaperKit19GraphableExpressionVSgMR);
          v109 = 0;
        }

        else
        {
          v62 = v200;
          _s8PaperKit5ColorVWObTm_1(v111, v200, type metadata accessor for GraphableExpression);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
          CRRegister.wrappedValue.getter();
          v109 = specialized Set.contains(_:)(v221, v222, v180);

          _s8PaperKit12GraphElementVWOhTm_0(v62, type metadata accessor for GraphableExpression);
        }
      }

      type metadata accessor for GraphableExpressionState(0);
      swift_allocObject();

      v60 = specialized GraphableExpressionState.init(expression:enabled:)(v112, v109 & 1);

      v113 = dispatch thunk of CalculateGraph.graphExpressions.getter();
      v58 = v113;
      v192 = v60;
      if (!(v113 >> 62))
      {
        v114 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v114)
        {
          break;
        }

        goto LABEL_71;
      }

      v114 = __CocoaSet.count.getter();
      if (v114)
      {
        break;
      }

LABEL_71:

      v62 = v192;
LABEL_72:

      MEMORY[0x1DA6CD190](v121);
      v95 = v218;
      v63 = v215;
      v58 = v214;
      v94 = v191;
      v96 = v178;
      if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v97 = v223;
LABEL_33:
      v60 = v193;
      if (v193 == v96)
      {
        goto LABEL_76;
      }
    }

    v115 = 0;
    v195 = v58 & 0xC000000000000001;
    v194 = (v58 & 0xFFFFFFFFFFFFFF8);
    while (v195)
    {
      MEMORY[0x1DA6CE0C0](v115, v58);
      v116 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_102;
      }

LABEL_63:
      v63 = v217;
      dispatch thunk of CalculateGraphExpression.id.getter();
      v117 = v216;
      CalculateExpression.id.getter();
      v118 = static UUID.== infix(_:_:)();
      v119 = v117;
      v62 = v218;
      v60 = v196;
      (v196)(v119, v218);
      (v60)(v63, v62);
      if (v118)
      {

        dispatch thunk of CalculateGraphExpression.effectiveColor.getter();

        v62 = v192;
        GraphableExpressionState.color.setter(v120);

        goto LABEL_72;
      }

      ++v115;
      if (v116 == v114)
      {
        goto LABEL_71;
      }
    }

    if (v115 >= *(v194 + 2))
    {
      goto LABEL_103;
    }

    v116 = v115 + 1;
    if (!__OFADD__(v115, 1))
    {
      goto LABEL_63;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v97 = MEMORY[0x1E69E7CC0];
LABEL_76:

  v122 = GraphCanvasElementView.orphanedGraphables.getter();
  v123 = *(v122 + 16);
  v194 = v122;
  if (v123)
  {
    v124 = v198;
    v125 = v122 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
    v197 = direct field offset for GraphCanvasElementView.expressionIdentifierToId;
    swift_beginAccess();
    v213 = (v199 + 48);
    v212 = (v199 + 32);
    v211 = (v199 + 16);
    v196 = (v199 + 56);
    v126 = *(v124 + 72);
    v208 = (v189 + 104);
    v195 = v190 + 48;
    v207 = *MEMORY[0x1E6992250];
    v204 = (v199 + 8);
    LODWORD(v200) = *MEMORY[0x1E6992100];
    v198 = xmmword_1D4058CF0;
    v210 = v126;
    while (1)
    {
      _s8PaperKit19GraphableExpressionVWOcTm_0(v125, v58, type metadata accessor for GraphableExpression);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
      CRRegister.wrappedValue.getter();
      v128 = v219;
      v127 = v220;

      v129 = HIBYTE(v127) & 0xF;
      if ((v127 & 0x2000000000000000) == 0)
      {
        v129 = v128 & 0xFFFFFFFFFFFFLL;
      }

      if (!v129)
      {
        break;
      }

      _s8PaperKit12GraphElementVWOhTm_0(v58, type metadata accessor for GraphableExpression);
LABEL_79:
      v125 += v126;
      if (!--v123)
      {
        goto LABEL_101;
      }
    }

    CRRegister.wrappedValue.getter();
    v130 = v205;
    UUID.init(uuidString:)();
    v131 = v130;

    v132 = *v213;
    if ((*v213)(v130, 1, v95) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v133 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      CRRegister.wrappedValue.getter();
      v134 = v220;
      v135 = *&v197[v188];
      if (*(v135 + 16))
      {
        v136 = v219;

        v137 = specialized __RawDictionaryStorage.find<A>(_:)(v136, v134);
        v139 = v138;

        if (v139)
        {
          v140 = v199;
          v141 = *(v135 + 56) + *(v199 + 72) * v137;
          v142 = v203;
          v95 = v218;
          (*(v199 + 16))(v203, v141, v218);

          (*(v140 + 56))(v142, 0, 1, v95);
          v143 = *(v140 + 32);
          v144 = v202;
          v143(v202, v142, v95);
          goto LABEL_92;
        }

        v95 = v218;
      }

      else
      {
      }

      v149 = v203;
      (*v196)(v203, 1, 1, v95);
      v144 = v202;
      UUID.init()();
      if (v132(v149, 1, v95) != 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v203, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

LABEL_92:
      v148 = v209;
      (*v212)(v209, v144, v95);
    }

    else
    {
      v145 = *v212;
      v146 = v201;
      (*v212)(v201, v131, v95);
      v147 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v148 = v209;
      v145(v209, v146, v95);
      v133 = v147;
    }

    CRRegister.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v198;
    v151 = v207;
    *(inited + 32) = v207;
    *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v216 = v133;
    *(inited + 40) = v133;
    v152 = v151;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo12CalculateKeya_yptMd, &_sSo12CalculateKeya_yptMR);
    (*v211)(v217, v148, v95);
    (*v208)(v206, v200, v185);
    type metadata accessor for CalculateExpression();
    swift_allocObject();
    v153 = CalculateExpression.init(_:options:base:id:)();
    type metadata accessor for GraphableExpressionState(0);
    swift_allocObject();
    specialized GraphableExpressionState.init(expression:enabled:)(v153, 1);
    v154 = dispatch thunk of CalculateGraph.graphExpressions.getter();
    MEMORY[0x1EEE9AC00](v154);
    *(&v165 - 2) = v148;
    v155 = v179;
    v156 = specialized Sequence.first(where:)(partial apply for closure #3 in GraphableExpressionsState.graphableExpressionsStates.getter, (&v165 - 4), v154);
    v179 = v155;

    if (v156)
    {
      dispatch thunk of CalculateGraphExpression.effectiveColor.getter();

      GraphableExpressionState.color.setter(v157);

      v126 = v210;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      v158 = v184;
      CRRegister.wrappedValue.getter();
      v159 = (*v195)(v158, 1, v183);
      v126 = v210;
      if (v159 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v158, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      }

      else
      {
        v160 = v158;
        v161 = v182;
        _s8PaperKit5ColorVWObTm_1(v160, v182, type metadata accessor for Color);
        [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
        v162 = Color.init(uiColor:)();
        GraphableExpressionState.color.setter(v162);
        _s8PaperKit12GraphElementVWOhTm_0(v161, type metadata accessor for Color);
      }
    }

    v163 = v216;

    MEMORY[0x1DA6CD190](v164);
    if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v58 = v214;
    _s8PaperKit12GraphElementVWOhTm_0(v214, type metadata accessor for GraphableExpression);
    v97 = v223;
    v95 = v218;
    (*v204)(v209, v218);
    goto LABEL_79;
  }

LABEL_101:

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v97;
}

uint64_t closure #3 in GraphableExpressionsState.graphableExpressionsStates.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CalculateGraphExpression.id.getter();
  v6 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

double closure #1 in GraphableExpressionsState.observeExpressionState(_:)(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double (*implicit closure #1 in GraphableExpressionsState.observeExpressionState(_:)(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return partial apply for closure #2 in implicit closure #1 in GraphableExpressionsState.observeExpressionState(_:);
}

double closure #2 in implicit closure #1 in GraphableExpressionsState.observeExpressionState(_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v23 = static OS_dispatch_queue.main.getter();
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      v21 = v13;
      v22 = v14;
      aBlock[4] = partial apply for closure #1 in closure #2 in implicit closure #1 in GraphableExpressionsState.observeExpressionState(_:);
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_51;
      v19 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v24 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v20 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v18 = v12;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = v19;
      v17 = v23;
      MEMORY[0x1DA6CD890](0, v9, v5, v19);
      _Block_release(v16);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v20);
    }
  }

  return result;
}

double closure #1 in closure #2 in implicit closure #1 in GraphableExpressionsState.observeExpressionState(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_9:

    return result;
  }

  v4 = Strong;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v4 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) & 1) == 0)
  {

    goto LABEL_9;
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    GraphCanvasElementView.updateGraphableExpressionState(_:)(v4);
  }

  MEMORY[0x1EEE9AC00](v5);
  withObservationTracking<A>(_:onChange:)();

  return result;
}

uint64_t GraphableExpressionsState.__deallocating_deinit()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  v1 = OBJC_IVAR____TtC8PaperKit25GraphableExpressionsState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for GraphableExpressionsState(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for GraphableExpressionsState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  *(a1 + 8) = result;
  return result;
}

void _s8PaperKit25GraphableExpressionsStateC16expressionStatesSayAA0c10ExpressionE0CGvsyyXEfU_TA_0()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

double block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double specialized CalculateDocumentController.addObserverIfNecessary(_:)(void *a1, uint64_t a2)
{
  v42 = type metadata accessor for UUID();
  v36 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v6 = *(a2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    for (i = 0; i != v7; ++i)
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_31;
      }

      outlined init with copy of WeakObserver(v8, v43);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakObserver(v43);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return result;
        }
      }

      v8 += 16;
    }
  }

  v45 = 0;
  swift_unknownObjectWeakInit();
  v45 = &protocol witness table for GraphCanvasElementView;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  a1 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v5) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v14 = a1[2];
    v13 = a1[3];
    if (v14 >= v13 >> 1)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a1);
    }

    a1[2] = v14 + 1;
    outlined init with take of WeakObserver(v44, &a1[2 * v14 + 4]);
    *(a2 + v5) = a1;
    swift_endAccess();
    v15 = a2 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      return result;
    }

    a1 = v16;
    v17 = *(v15 + 8);
    v18 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs;
    swift_beginAccess();
    v19 = *(a2 + v18);
    v20 = v19 + 56;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v19 + 56);
    v24 = (v21 + 63) >> 6;
    v5 = v36;
    v38 = v17 + 48;
    v39 = v36 + 16;
    v37 = v36 + 8;
    v40 = v19;

    v25 = 0;
    while (v23)
    {
LABEL_21:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = v41;
      v29 = v42;
      (*(v5 + 16))(v41, *(v40 + 48) + *(v5 + 72) * (v27 | (v25 << 6)), v42);
      ObjectType = swift_getObjectType();
      a2 = (*(v17 + 48))(v28, ObjectType, v17);
      (*(v5 + 8))(v28, v29);
      if (a2)
      {
        v31 = CalculateExpression.result.getter();
        v32 = v31;
        if (v31 && ([v31 isTrivial] & 1) == 0)
        {
        }

        v33 = CalculateExpression.result.getter();
        if (v33)
        {
          v34 = v33;
          [v33 unitType];

          v5 = v36;
        }
      }
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        swift_unknownObjectRelease();
        return result;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(a2 + v5) = a1;
  }
}

double specialized CalculateDocumentController.addObserverIfNecessary(_:)(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for UUID();
  v54 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v42 - v6;
  v7 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v8 = *(a2 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);

    for (i = 0; i != v9; ++i)
    {
      if (i >= *(v8 + 16))
      {
        goto LABEL_36;
      }

      outlined init with copy of WeakObserver(v10, v55);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakObserver(v55);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return result;
        }
      }

      v10 += 2;
    }
  }

  v57 = 0;
  swift_unknownObjectWeakInit();
  v57 = &protocol witness table for AnyCanvas;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v10 = *(a2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v7) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v16 = v10[2];
    v15 = v10[3];
    if (v16 >= v15 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v10);
    }

    v10[2] = v16 + 1;
    outlined init with take of WeakObserver(v56, &v10[2 * v16 + 4]);
    *(a2 + v7) = v10;
    swift_endAccess();
    v17 = a2 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {
      return result;
    }

    v19 = v18;
    v10 = *(v17 + 8);
    v20 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs;
    swift_beginAccess();
    v21 = *(a2 + v20);
    v22 = v21 + 56;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v21 + 56);
    v26 = (v23 + 63) >> 6;
    v48 = v54 + 32;
    v49 = v54 + 16;
    v50 = v10;
    v46 = (v54 + 8);
    v47 = v10 + 6;
    v52 = v21;

    v7 = 0;
    v43 = v19;
    v44 = a1;
    v27 = v45;
    a1 = v51;
    while (v25)
    {
LABEL_24:
      v10 = v53;
      v31 = v54;
      (*(v54 + 16))(v53, *(v52 + 48) + *(v54 + 72) * (__clz(__rbit64(v25)) | (v7 << 6)), v27);
      (*(v31 + 32))(a1, v10, v27);
      ObjectType = swift_getObjectType();
      a2 = v19;
      if ((v50[6])(a1, ObjectType))
      {
        v33 = CalculateExpression.result.getter();
        v34 = v33;
        if (v33 && ([v33 isTrivial] & 1) == 0)
        {
          v36 = [v34 formattedResult];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v37;
        }

        else
        {
          v35 = 0;
          v10 = 0;
        }

        v38 = CalculateExpression.result.getter();
        if (v38)
        {
          v39 = v38;
          v40 = [v38 unitType];

          v41 = v40 == 16;
          v27 = v45;
          v28 = v41;
        }

        else
        {
          v28 = 0;
        }

        v29 = v35;
        a1 = v51;
        a2 = v44;
        AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(v29, v10, v51, v28);

        v19 = v43;
      }

      v25 &= v25 - 1;
      (*v46)(a1, v27);
    }

    while (1)
    {
      v30 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v30 >= v26)
      {

        swift_unknownObjectRelease();
        return result;
      }

      v25 = *(v22 + 8 * v30);
      ++v7;
      if (v25)
      {
        v7 = v30;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    *(a2 + v7) = v10;
  }
}

void specialized CalculateDocumentController.removeObserver(_:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      outlined init with copy of WeakObserver(v7, v10);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakObserver(v10);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          specialized Array.remove(at:)(v8, v11);
          swift_endAccess();
          outlined destroy of WeakObserver(v11);
          return;
        }
      }

      ++v8;
      v7 += 16;
      if (v6 == v8)
      {

        return;
      }
    }

    __break(1u);
  }
}

uint64_t _s8PaperKit12GraphElementVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8PaperKit5ColorVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *specialized static CalculateDocumentController.controllerForDrawingUUID(_:document:observer:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, char *))
{
  v9 = one-time initialization token for controllers;
  v51 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static CalculateDocumentController.controllers;
  if (*(static CalculateDocumentController.controllers + 2))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
    if (v12)
    {
      v48 = a5;
      v13 = *(v10[7] + 8 * v11);
      swift_endAccess();
      v14 = &v13[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        v16 = a4;
        ObjectType = swift_getObjectType();
        v18 = *(v15 + 8);
        v19 = v13;
        v20 = ObjectType;
        a4 = v16;
        v21 = v18(v20, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = v13;
        v21 = 0;
      }

      v45 = swift_getObjectType();
      v46 = (*(a3 + 8))(v45);
      if (v21)
      {
        if (!v46)
        {

          swift_unknownObjectRelease();
          a5 = v48;
          goto LABEL_8;
        }

        v47 = v46;

        swift_unknownObjectRelease();
        if (v21 != v47)
        {

          a5 = v48;
          goto LABEL_8;
        }
      }

      else if (v46)
      {

        a5 = v48;
        goto LABEL_8;
      }

      a6(a4, v13);
      goto LABEL_17;
    }
  }

  swift_endAccess();
LABEL_8:
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, mathLogger);
  v23 = v51;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = a5;
    v27 = swift_slowAlloc();
    v53[0] = v27;
    *v26 = 136315138;
    v28 = [v23 uniqueCacheFilePath];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v53);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1D38C4000, v24, v25, "Creating CalculateController for: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v33 = v27;
    a5 = v49;
    MEMORY[0x1DA6D0660](v33, -1, -1);
    MEMORY[0x1DA6D0660](v26, -1, -1);
  }

  v34 = [objc_allocWithZone(type metadata accessor for CalculateDocumentController()) init];
  v35 = swift_unknownObjectRetain();
  CalculateDocumentController.document.setter(v35, a3);
  swift_unknownObjectWeakInit();
  v52[1] = a5;
  swift_unknownObjectWeakAssign();
  v36 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v37 = *&v34[v36];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v34[v36] = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    *&v34[v36] = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
  }

  v37[2] = v40 + 1;
  outlined init with take of WeakObserver(v52, &v37[2 * v40 + 4]);
  *&v34[v36] = v37;
  swift_endAccess();
  swift_beginAccess();
  v41 = v23;
  v13 = v34;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = static CalculateDocumentController.controllers;
  static CalculateDocumentController.controllers = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v41, v42);

  static CalculateDocumentController.controllers = v52[0];
  swift_endAccess();
LABEL_17:
  specialized static CalculateDocumentController.cleanupStaleControllers()();

  return v13;
}

uint64_t specialized static Color.almostEqual(_:_:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Color(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v18 = *(v11 + 48);
  if ((v18)(a1, 1, v10, v15) != 1 || (v19 = 1, v18(a2, 1, v10) != 1))
  {
    outlined init with copy of Color?(a1, v9);
    if (v18(v9, 1, v10) == 1)
    {
      v20 = v9;
    }

    else
    {
      _s8PaperKit5ColorVWObTm_1(v9, v17, type metadata accessor for Color);
      outlined init with copy of Color?(a2, v6);
      if (v18(v6, 1, v10) != 1)
      {
        _s8PaperKit5ColorVWObTm_1(v6, v13, type metadata accessor for Color);
        v19 = Color.almostEqual(_:)(v13);
        _s8PaperKit12GraphElementVWOhTm_0(v13, type metadata accessor for Color);
        _s8PaperKit12GraphElementVWOhTm_0(v17, type metadata accessor for Color);
        return v19 & 1;
      }

      _s8PaperKit12GraphElementVWOhTm_0(v17, type metadata accessor for Color);
      v20 = v6;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t partial apply for closure #1 in GraphCanvasElementView.updateCachedImage()(uint64_t a1)
{
  v4 = *(type metadata accessor for CRKeyPath() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in GraphCanvasElementView.updateCachedImage()(v9, v10, a1, v6, v7, v8, v1 + v5);
}

uint64_t _s8PaperKit19GraphableExpressionVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double partial apply for closure #5 in GraphCanvasElementView.updateGraphView()(__n128 a1)
{
  GraphCanvasElementView.cachedGraphableExpressionsState.getter(a1);
  GraphableExpressionsState.updateColors()();

  return result;
}

double partial apply for closure #1 in GraphCanvasElementView.trackDeletedExpressions(for:)(__n128 a1)
{
  dispatch thunk of CalculateGraph.graphExpressions.getter();

  return result;
}

double partial apply for closure #1 in GraphCanvasElementView.observeGraphExpressionColor(_:identifier:)(__n128 a1)
{
  dispatch thunk of CalculateGraphExpression.color.getter();

  return result;
}

uint64_t objectdestroy_217Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_125Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

void specialized GraphCanvasElementView.init(coder:)()
{
  *(v0 + direct field offset for GraphCanvasElementView.didDelayCreatingGraphView) = 0;
  *(v0 + direct field offset for GraphCanvasElementView.$__lazy_storage_$_cachedGraphableExpressionsState) = 0;
  *(v0 + direct field offset for GraphCanvasElementView.graphViewController) = 0;
  v1 = v0 + direct field offset for GraphCanvasElementView.previousGraphViewSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = direct field offset for GraphCanvasElementView.expressionIdentifierToId;
  *(v0 + v2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized CanvasElementView.modelFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0);
  swift_beginAccess();
  v28 = *(v11 + 16);
  v28(v13, &v4[v14], v10);
  v15 = type metadata accessor for TextBox(0);
  v29 = v15;
  v16 = lazy protocol witness table accessor for type Link and conformance Link(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
  v30 = v16;
  v31 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v17 = *(v11 + 8);
  v17(v13, v10);
  result = CGRect.almostEqual(_:threshold:)(v32[0], v32[1], v32[2], v32[3], 0.1, a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    v26 = v17;
    v27 = v15;
    MEMORY[0x1EEE9AC00](result);
    *(&v25 - 4) = a1;
    *(&v25 - 3) = a2;
    v23 = a3;
    v24 = a4;
    swift_beginAccess();
    Capsule.callAsFunction<A>(_:)();
    v19 = MEMORY[0x1E69E7D40];
    v20 = swift_endAccess();
    v21 = (*((*v19 & *v5) + 0x90))(v20);
    if (v21)
    {
      v22 = v21;
      v28(v13, &v5[v14], v10);
      LOBYTE(v32[0]) = 4;
      (*((*v19 & *v22) + 0x7D8))(v13, v32, v27, v16);
      LOBYTE(v32[0]) = 4;
      (*((*v19 & *v22) + 0x7B0))(v32);

      v21 = v26(v13, v10);
    }

    return (*((*v19 & *v5) + 0x268))(v21);
  }

  return result;
}

{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0);
  swift_beginAccess();
  v28 = *(v11 + 16);
  v28(v13, &v4[v14], v10);
  v15 = type metadata accessor for Shape(0);
  v29 = v15;
  v16 = lazy protocol witness table accessor for type Link and conformance Link(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v30 = v16;
  v31 = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v17 = *(v11 + 8);
  v17(v13, v10);
  result = CGRect.almostEqual(_:threshold:)(v32[0], v32[1], v32[2], v32[3], 0.1, a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    v26 = v17;
    v27 = v15;
    MEMORY[0x1EEE9AC00](result);
    *(&v25 - 4) = a1;
    *(&v25 - 3) = a2;
    v23 = a3;
    v24 = a4;
    swift_beginAccess();
    Capsule.callAsFunction<A>(_:)();
    v19 = MEMORY[0x1E69E7D40];
    v20 = swift_endAccess();
    v21 = (*((*v19 & *v5) + 0x90))(v20);
    if (v21)
    {
      v22 = v21;
      v28(v13, &v5[v14], v10);
      LOBYTE(v32[0]) = 4;
      (*((*v19 & *v22) + 0x7D8))(v13, v32, v27, v16);
      LOBYTE(v32[0]) = 4;
      (*((*v19 & *v22) + 0x7B0))(v32);

      v21 = v26(v13, v10);
    }

    return (*((*v19 & *v5) + 0x268))(v21);
  }

  return result;
}

{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0);
  swift_beginAccess();
  v28 = *(v11 + 16);
  v28(v13, &v4[v14], v10);
  v15 = type metadata accessor for Link(0);
  v29 = v15;
  v16 = lazy protocol witness table accessor for type Link and conformance Link(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link, &protocol conformance descriptor for Link);
  v30 = v16;
  v31 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v17 = *(v11 + 8);
  v17(v13, v10);
  result = CGRect.almostEqual(_:threshold:)(v32[0], v32[1], v32[2], v32[3], 0.1, a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    v26 = v17;
    v27 = v15;
    MEMORY[0x1EEE9AC00](result);
    *(&v25 - 4) = a1;
    *(&v25 - 3) = a2;
    v23 = a3;
    v24 = a4;
    swift_beginAccess();
    Capsule.callAsFunction<A>(_:)();
    v19 = MEMORY[0x1E69E7D40];
    v20 = swift_endAccess();
    v21 = (*((*v19 & *v5) + 0x90))(v20);
    if (v21)
    {
      v22 = v21;
      v28(v13, &v5[v14], v10);
      LOBYTE(v32[0]) = 4;
      (*((*v19 & *v22) + 0x7D8))(v13, v32, v27, v16);
      LOBYTE(v32[0]) = 4;
      (*((*v19 & *v22) + 0x7B0))(v32);

      v21 = v26(v13, v10);
    }

    return (*((*v19 & *v5) + 0x268))(v21);
  }

  return result;
}

char *LinkCanvasElementView.linkView.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  v5 = direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView;
  v6 = *&v0[direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView];
  if (v6)
  {
    v7 = *&v0[direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView];
  }

  else
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
    swift_beginAccess();
    (*(v2 + 16))(v4, &v0[v8], v1);
    swift_getKeyPath();
    v9 = v0;
    Capsule.subscript.getter();

    (*(v2 + 8))(v4, v1);
    v10 = v17;
    v11 = v18;
    v12 = specialized static LinkCanvasElementView.makeLinkView(synapseData:canvas:)(v17, v18, v9);
    outlined consume of Data?(v10, v11);
    v13 = *&v9[v5];
    *&v9[v5] = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

void @objc LinkCanvasElementView.init(coder:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(a1 + direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView) = 0;
  *(a1 + direct field offset for LinkCanvasElementView.editingEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall LinkCanvasElementView.layoutSubviews()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - v3;
  v5 = type metadata accessor for LinkCanvasElementView(0);
  v14.receiver = v0;
  v14.super_class = v5;
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v6 = LinkCanvasElementView.linkView.getter();
  v13.a = 1.0;
  v13.b = 0.0;
  v13.c = 0.0;
  v13.d = 1.0;
  v13.tx = 0.0;
  v13.ty = 0.0;
  [v6 setTransform_];

  v7 = direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView;
  v8 = *(v0 + direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView);
  [v0 bounds];
  [v8 setFrame_];

  v9 = *(v0 + v7);
  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v10, v1);
  swift_getKeyPath();
  v11 = v9;
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  CGAffineTransformMakeRotation(&v13, v12);
  [v11 setTransform_];
}

void @objc LinkCanvasElementView.layoutSubviews()(void *a1)
{
  v1 = a1;
  LinkCanvasElementView.layoutSubviews()();
}

id @objc LinkCanvasElementView.gestureRecognizerShouldBegin(_:)(void *a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for LinkCanvasElementView(0);
  return objc_msgSendSuper2(&v6, sel_gestureRecognizerShouldBegin_, a4);
}

uint64_t LinkCanvasElementView.modifiableProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v5], v1);
  v8[0] = type metadata accessor for Link(0);
  v8[1] = lazy protocol witness table accessor for type Link and conformance Link(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link, &protocol conformance descriptor for Link);
  v8[2] = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  v6 = 9;
  if ((v9 & 0x10) != 0)
  {
    v6 = 1;
  }

  if ((v9 & 4) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void LinkCanvasElementView.isSelected.setter(char a1)
{
  v2 = OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected;
  *(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected) = a1;
  specialized CanvasElementView.isSelected.didset();
  v3 = LinkCanvasElementView.linkView.getter();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))(*(v1 + v2));
}

void LinkCanvasElementView.didTapToOpenLink(_:)(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging) & 1) == 0 && [a1 state] == 3)
  {
    if (([a1 modifierFlags] & 0x20000) != 0 || (objc_msgSend(a1, sel_modifierFlags) & 0x100000) != 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v3 = [a1 modifierFlags];
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x760))(v1, v3, 0);
    }

    else
    {
      Strong = LinkCanvasElementView.linkView.getter();
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x88))(a1);
    }
  }
}

void @objc LinkCanvasElementView.didTapToOpenLink(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LinkCanvasElementView.didTapToOpenLink(_:)(v4);
}

void @objc LinkCanvasElementView.didLongPressToSelect(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = a1;
  if ([v4 state] == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = [v4 modifierFlags];
      (*((*MEMORY[0x1E69E7D40] & *v6) + 0x760))(v8, v7, 0);

      v4 = v8;
      v8 = v6;
    }
  }
}

Swift::OpaquePointer_optional __swiftcall LinkCanvasElementView.pasteboardRepresentation()()
{
  v0 = LinkCanvasElementView.linkView.getter();
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();

  v3 = v1;
  result.value._rawValue = v3;
  result.is_nil = v2;
  return result;
}

id @objc LinkCanvasElementView.contextMenuInteraction(_:configurationForMenuAtLocation:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = LinkCanvasElementView.linkView.getter();
  v11 = [v10 contextMenuInteraction:v8 configurationForMenuAtLocation:{a2, a3}];

  return v11;
}

void @objc LinkCanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, __n128 a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for LinkCanvasElementView(0);
  v9 = a4;
  v10 = a5;
  swift_unknownObjectRetain();
  v11 = v13.receiver;
  objc_msgSendSuper2(&v13, sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_, v9, v10, a6);
  v12 = LinkCanvasElementView.linkView.getter();
  [v12 contextMenuInteraction:v9 willDisplayMenuForConfiguration:v10 animator:{a6, v13.receiver, v13.super_class}];

  swift_unknownObjectRelease();
}

void LinkCanvasElementView.__ivar_destroyer()
{
  MEMORY[0x1DA6D07B0](v0 + direct field offset for LinkCanvasElementView.tapToOpenLinkGR);
  v1 = *(v0 + direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView);
}

id LinkCanvasElementView.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LinkCanvasElementView(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void @objc LinkCanvasElementView.__ivar_destroyer(uint64_t a1)
{
  MEMORY[0x1DA6D07B0](a1 + direct field offset for LinkCanvasElementView.tapToOpenLinkGR);
  v2 = *(a1 + direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView);
}

uint64_t type metadata accessor for LinkCanvasElementView(uint64_t a1)
{
  result = type metadata singleton initialization cache for LinkCanvasElementView;
  if (!type metadata singleton initialization cache for LinkCanvasElementView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized closure #1 in CanvasElementView.modelFrame.setter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for TextBox(0);
  lazy protocol witness table accessor for type Link and conformance Link(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for Shape(0);
  lazy protocol witness table accessor for type Link and conformance Link(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for Link(0);
  lazy protocol witness table accessor for type Link and conformance Link(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link, &protocol conformance descriptor for Link);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

id specialized CanvasElementView.isSelected.didset()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x200))();
  v2 = *MEMORY[0x1E69DDA08];
  v3 = [v0 accessibilityTraits];
  v4 = -1;
  if ((v3 & v2) != 0)
  {
    v4 = ~v2;
  }

  v5 = v4 & v3;
  if ((v3 & v2) == v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6 | v3;
  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  return [v0 setAccessibilityTraits_];
}

char *specialized static LinkCanvasElementView.makeLinkView(synapseData:canvas:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 60 == 15)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D38C4000, v4, v5, "Synapse data is empty", v6, 2u);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    v7 = objc_allocWithZone(type metadata accessor for EmptyLinkView());

    return [v7 init];
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x1E69D53F8]);
    outlined copy of Data._Representation(a1, a2);
    v13 = specialized @nonobjc PKDrawingConcrete.init(data:)();
    objc_allocWithZone(type metadata accessor for SynapseLinkView());
    v14 = SynapseLinkView.init(canvas:synapseItem:)(a3, v13);
    outlined consume of Data?(a1, a2);
    return v14;
  }
}

void *specialized LinkCanvasElementView.init(frame:canvasElement:canvas:parentCanvasElement:)(char *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  swift_unknownObjectWeakInit();
  *(v7 + direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView) = 0;
  *(v7 + direct field offset for LinkCanvasElementView.editingEnabled) = 1;
  v19 = *(v16 + 16);
  v19(v18, a1, v15);
  v20 = MEMORY[0x1E69E7D40];
  (*(v16 + 56))(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x3F8), 1, 1, v15);
  *(v7 + *((*v20 & *v7) + 0x400)) = 0;
  *(v7 + *((*v20 & *v7) + 0x408)) = 0;
  *(v7 + *((*v20 & *v7) + 0x410)) = 0;
  *(v7 + *((*v20 & *v7) + 0x418)) = 0;
  *(v7 + *((*v20 & *v7) + 0x420)) = 0;
  v19(v7 + *((*v20 & *v7) + 0x3F0), v18, v15);
  v21 = a3;
  v22 = a2;
  v23 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(a2, a3, a4, a5, a6, a7);
  specialized CanvasElementView.setupAccessibility()();
  if (a2)
  {
    (*((*v20 & *v23) + 0x520))();
  }

  v24 = *(v16 + 8);
  v24(v18, v15);
  v25 = v23;
  v26 = MEMORY[0x1DA6CCED0](0xD000000000000025, 0x80000001D408D960);
  [v25 setAccessibilityIdentifier_];

  v27 = LinkCanvasElementView.linkView.getter();
  v28 = [v27 accessibilityLabel];

  [v25 setAccessibilityLabel_];
  v29 = [v25 layer];
  [v29 setCornerRadius_];

  v30 = direct field offset for LinkCanvasElementView.$__lazy_storage_$_linkView;
  [v25 addSubview_];
  *(*(v25 + v30) + OBJC_IVAR____TtC8PaperKit8LinkView_delegate + 8) = &protocol witness table for LinkCanvasElementView;
  swift_unknownObjectWeakAssign();

  v31 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v25 action:sel_didTapToOpenLink_];
  swift_unknownObjectWeakAssign();
  [v25 addGestureRecognizer_];
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v25 action:sel_didLongPressToSelect_];
  [v25 addGestureRecognizer_];

  v24(a1, v15);
  return v25;
}

uint64_t specialized LinkCanvasElementView.linkViewContextMenuActions(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D405B630;
  v4 = v0;
  v5 = specialized CanvasMembers.init(_:)(v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11 & 1;
  v13 = one-time initialization token for paperKitBundle;
  v14 = v2;
  if (v13 != -1)
  {
    swift_once();
  }

  bundle = paperKitBundle.super.isa;
  v66._object = 0x80000001D408D860;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v66._countAndFlagsBits = 0xD00000000000001BLL;
  v16._countAndFlagsBits = 7632195;
  v16._object = 0xE300000000000000;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, paperKitBundle, v17, v66);
  type metadata accessor for UIAction();
  v18 = MEMORY[0x1DA6CCED0](0x73726F7373696373, 0xE800000000000000);
  v65 = objc_opt_self();
  v19 = [v65 systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000012, 0x80000001D408D880);
  *(v3 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v63 = v4;
  v20 = specialized CanvasMembers.init(_:)(v63);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v14;
  *(v27 + 24) = v20;
  *(v27 + 32) = v22;
  *(v27 + 40) = v24;
  *(v27 + 48) = v26 & 1;
  v28 = v14;
  v67._object = 0x80000001D4083DB0;
  v29._countAndFlagsBits = 0x6C45282079706F43;
  v29._object = 0xEE0029746E656D65;
  v67._countAndFlagsBits = 0xD00000000000001ELL;
  v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30.value._object = 0xEB00000000656C62;
  v31._countAndFlagsBits = 2037411651;
  v31._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, bundle, v31, v67);
  v32 = MEMORY[0x1DA6CCED0](0x642E6E6F2E636F64, 0xEA0000000000636FLL);
  v33 = [v65 systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000013, 0x80000001D408D8A0);
  *(v3 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v34 = v63;
  v35 = specialized CanvasMembers.init(_:)(v34);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = v28;
  *(v42 + 24) = v35;
  *(v42 + 32) = v37;
  *(v42 + 40) = v39;
  *(v42 + 48) = v41 & 1;
  v43 = v28;
  v68._object = 0x80000001D408D8C0;
  v44._countAndFlagsBits = 0x746163696C707544;
  v68._countAndFlagsBits = 0xD000000000000021;
  v44._object = 0xE900000000000065;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, bundle, v46, v68);
  v47 = MEMORY[0x1DA6CCED0](0xD000000000000015, 0x80000001D4083E40);
  v48 = [v65 systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408D8F0);
  *(v3 + 48) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v49 = specialized CanvasMembers.init(_:)(v34);
  v51 = v50;
  v53 = v52;
  LOBYTE(v34) = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = v43;
  *(v55 + 24) = v49;
  *(v55 + 32) = v51;
  *(v55 + 40) = v53;
  *(v55 + 48) = v34 & 1;
  v56 = v43;
  v69._object = 0x80000001D4083E60;
  v57._countAndFlagsBits = 0x6574656C6544;
  v69._countAndFlagsBits = 0xD000000000000020;
  v57._object = 0xE600000000000000;
  v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v58.value._object = 0xEB00000000656C62;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, bundle, v59, v69);
  v60 = MEMORY[0x1DA6CCED0](0x6873617274, 0xE500000000000000);
  v61 = [v65 systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000015, 0x80000001D408D910);
  *(v3 + 56) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  return v3;
}

uint64_t specialized LinkCanvasElementView.linkView(_:needsResizeToFittingSize:)(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x3F0);
  swift_beginAccess();
  v11 = *(v7 + 16);
  v11(v9, &v3[v10], v6);
  v12 = type metadata accessor for Link(0);
  v17[0] = v12;
  v13 = lazy protocol witness table accessor for type Link and conformance Link(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link, &protocol conformance descriptor for Link);
  v17[1] = v13;
  v17[2] = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v14 = *(v7 + 8);
  result = v14(v9, v6);
  if (vabdd_f64(a1, *&v17[5]) >= 0.1 || vabdd_f64(a2, *&v17[6]) >= 0.1)
  {
    v16 = (v11)(v9, &v3[v10], v6);
    MEMORY[0x1EEE9AC00](v16);
    v17[-4] = v12;
    v17[-3] = v13;
    v17[-2] = &protocol witness table for Link;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v14(v9, v6);
    return specialized CanvasElementView.modelFrame.setter(*&v17[3], *&v17[4], a1, a2);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in CanvasElementView.modelFrame.setter()
{
  return specialized closure #1 in CanvasElementView.modelFrame.setter(v0[2], v0[3], v0[4], v0[5]);
}

{
  return specialized closure #1 in CanvasElementView.modelFrame.setter(v0[2], v0[3], v0[4], v0[5]);
}

{
  return specialized closure #1 in CanvasElementView.modelFrame.setter(v0[2], v0[3], v0[4], v0[5]);
}

unint64_t type metadata accessor for UIAction()
{
  result = lazy cache variable for type metadata for UIAction;
  if (!lazy cache variable for type metadata for UIAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAction);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t lazy protocol witness table accessor for type Link and conformance Link(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_9Coherence7WeakRefVyAJ10CRRegisterVy8PaperKit12TaggedStrokeOGGs5NeverOTg503_s8j76Kit13CanvasMembersV14canvasElements11strokeUUIDsACx_q_tcSTRzSTR_9Coherence13gl11_10VyAA0kC7b43VG0L0Rtz10Foundation4UUIDVALRt_r0_lufcAF0J3h6VyAF10i7VyAA0K6M10OGGAPXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - v8;
  v58 = type metadata accessor for UUID();
  v9 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v45 - v16;
  v17 = *(a1 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
  v18 = *(a1 + 56);
  v19 = v66;
  v50 = a1 + 56;
  v20 = -1;
  v21 = -1 << *(a1 + 32);
  if (-v21 < 64)
  {
    v20 = ~(-1 << -v21);
  }

  v22 = v20 & v18;
  v49 = (63 - v21) >> 6;
  v62 = a1;
  v63 = v9;
  v59 = v4;
  v55 = v17;
  if (v17)
  {
    v52 = v9 + 8;
    v53 = v9 + 16;
    v51 = v4 + 32;

    v23 = 0;
    v24 = 0;
    v54 = v6;
    while (1)
    {
      v64 = v23;
      v65 = v19;
      if (!v22)
      {
        break;
      }

LABEL_10:
      v26 = v63;
      v27 = *(v63 + 16);
      v28 = v56;
      v29 = v58;
      v27(v56, *(a1 + 48) + *(v63 + 72) * (__clz(__rbit64(v22)) | (v24 << 6)), v58);
      v27(v57, v28, v29);
      CRKeyPath.init(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR, MEMORY[0x1E6995078]);
      v30 = v54;
      WeakRef.init(id:)();
      (*(v26 + 8))(v28, v29);
      v31 = v64;
      v19 = v65;
      v66 = v65;
      v33 = *(v65 + 16);
      v32 = *(v65 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v19 = v66;
      }

      v23 = v31 + 1;
      v22 &= v22 - 1;
      *(v19 + 16) = v33 + 1;
      v4 = v59;
      (*(v59 + 32))(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33, v30, v60);
      a1 = v62;
      if (v23 == v55)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v49)
      {
        goto LABEL_28;
      }

      v22 = *(v50 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v24 = 0;
LABEL_15:
    v64 = v63 + 32;
    v56 = (v63 + 8);
    v54 = (v63 + 16);
    v55 = v4 + 32;
    v35 = v49;
    v34 = v50;
    v36 = v63;
    if (!v22)
    {
      goto LABEL_17;
    }

    do
    {
      v65 = v19;
LABEL_21:
      v38 = *(v36 + 16);
      v39 = v47;
      v40 = v58;
      v38(v47, *(a1 + 48) + *(v36 + 72) * (__clz(__rbit64(v22)) | (v24 << 6)), v58);
      v41 = v46;
      (*(v36 + 32))(v46, v39, v40);
      v38(v57, v41, v40);
      CRKeyPath.init(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR, MEMORY[0x1E6995078]);
      v42 = v48;
      WeakRef.init(id:)();
      (*(v36 + 8))(v41, v40);
      v19 = v65;
      v66 = v65;
      v44 = *(v65 + 16);
      v43 = *(v65 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
        v19 = v66;
      }

      v22 &= v22 - 1;
      *(v19 + 16) = v44 + 1;
      (*(v59 + 32))(v19 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v44, v42, v60);
      a1 = v62;
      v35 = v49;
      v34 = v50;
    }

    while (v22);
LABEL_17:
    while (1)
    {
      v37 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v37 >= v35)
      {

        return;
      }

      v22 = *(v34 + 8 * v37);
      ++v24;
      if (v22)
      {
        v65 = v19;
        v24 = v37;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_28:

  __break(1u);
}

void *_s8PaperKit13CanvasMembersV7strokes19canvasSelectionTypeACx_AA0cgH0OtcSTRz06PencilB08PKStrokeV7ElementRtzlufCSayAJG_Tt1g5(uint64_t a1, uint64_t a2, int a3)
{
  v38 = a3;
  v39 = a2;
  v4 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v6 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v37 - v9;
  v51 = type metadata accessor for PKStroke();
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v37 - v13;
  v14 = *(a1 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v16 = v54;
  v40 = a1;
  if (v14)
  {
    v17 = 0;
    v47 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v48 = *(a1 + 16);
    v45 = v10 + 8;
    v46 = v10 + 16;
    v43 = v14;
    v44 = v6 + 32;
    while (v48 != v17)
    {
      v18 = v49;
      v19 = v51;
      (*(v10 + 16))(v49, v47 + *(v10 + 72) * v17, v51);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v21 = [(objc_class *)isa _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR, MEMORY[0x1E6995078]);
      v22 = v50;
      WeakRef.init(id:)();
      (*(v10 + 8))(v18, v19);
      v54 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v50;
        v16 = v54;
      }

      ++v17;
      *(v16 + 16) = v24 + 1;
      result = (*(v6 + 32))(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v22, v52);
      v14 = v43;
      if (v43 == v17)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v50 = v16;
    v25 = v40;
    v26 = *(v40 + 16);
    if (v14 == v26)
    {
LABEL_8:

      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v50);

      return MEMORY[0x1E69E7CD0];
    }

    v48 = v10 + 8;
    v49 = (v10 + 16);
    v47 = v6 + 32;
    v27 = v37;
    v41 = v6;
    while (v14 < v26)
    {
      v28 = v42;
      v29 = v51;
      (*(v10 + 16))(v42, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v51);
      v30 = PKStroke._bridgeToObjectiveC()().super.isa;
      v31 = [(objc_class *)v30 _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR, MEMORY[0x1E6995078]);
      WeakRef.init(id:)();
      (*(v10 + 8))(v28, v29);
      v33 = v50;
      v54 = v50;
      v35 = *(v50 + 16);
      v34 = *(v50 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v33 = v54;
      }

      *(v33 + 16) = v35 + 1;
      v36 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v50 = v33;
      result = (*(v41 + 32))(v33 + v36 + *(v41 + 72) * v35, v27, v52);
      v26 = *(v25 + 16);
      ++v14;
      if (v32 + 1 == v26)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

id TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if (a1)
  {
    v4 = [a1 attachmentContainerView];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for AnyCanvas(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        Strong = v6;
        v8 = (*((*v2 & *v6) + 0x440))();
        v10 = v9;
        goto LABEL_9;
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = (*(*(v3 + 88) + 8))(*(v3 + 80));
    v10 = v11;

    Strong = 0;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_9:
  v12 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v10;
  swift_unknownObjectWeakAssign();
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

uint64_t @objc TiledSelectionInteractionDelegate.selectionInteraction(_:handleLassoSelection:strokes:inAttachment:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a1;
  LOBYTE(a4) = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleLassoSelection:strokes:inAttachment:)(a4, v10, v13);

  return a4 & 1;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  type metadata accessor for PKStroke();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = a1;
  v12._rawValue = v8;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:inAttachment:)(v12, v10);

  return result;
}

uint64_t TiledSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:nonTextStrokes:inAttachment:)(uint64_t a1, void *a2, void *a3, id a4)
{
  v5 = v4;
  v10 = [a4 tiledView];
  v11 = -a2[2];
  v18[1] = 0;
  v24 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  swift_unknownObjectWeakInit();
  v18[0] = 1;
  v22 = v11;
  v23 = 0;
  swift_unknownObjectWeakAssign();

  if (one-time initialization token for $currentAnalyticsEvents != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 56) = &type metadata for MagicPaperUsageScratchToDeleteEvent;
  *(inited + 64) = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent();
  v13 = swift_allocObject();
  *(inited + 32) = v13;
  outlined init with copy of MagicPaperUsageScratchToDeleteEvent(v18, v13 + 16);
  TaskLocal.get()();

  specialized Array.append<A>(contentsOf:)(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd, &_sSay8PaperKit14AnalyticsEvent_pGMR);
  swift_task_localValuePush();
  v15._rawValue = a2;
  v16._rawValue = a3;
  closure #1 in TiledSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:nonTextStrokes:inAttachment:)(v5, a4, a1, v15, v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14AnalyticsEvent_pMd, &_s8PaperKit14AnalyticsEvent_pMR);
  swift_arrayDestroy();
  swift_task_localValuePop();
  return outlined destroy of MagicPaperUsageScratchToDeleteEvent(v18);
}

void closure #1 in TiledSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:nonTextStrokes:inAttachment:)(uint64_t a1, void *a2, uint64_t a3, Swift::OpaquePointer a4, Swift::OpaquePointer a5)
{
  v7 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = MEMORY[0x1E69E7D40];
    v11 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
      if (v12)
      {
        v13 = v12;

        specialized Array.append<A>(contentsOf:)(v14);
        (*((*v10 & *v11) + 0x798))(a4._rawValue);

        HandwritingReflowView.deleteStrokes(_:nonReflowableStrokes:)(a4, a5);

        v11 = v13;
      }
    }
  }
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:nonTextStrokes:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for PKStroke();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = a1;
  TiledSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:nonTextStrokes:inAttachment:)(v11, v9, v10, v12);

  return result;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  type metadata accessor for PKStroke();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = a7;
  v24 = a10;
  v25 = a11;
  v26 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(v19, v20, v22, a10, v25, a2, a3, a4, a5);

  return result;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  type metadata accessor for PKStroke();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:)(v8, v10);

  return result;
}

uint64_t TiledSelectionInteractionDelegate.selectionInteractionShouldBegin(_:at:for:orGestureRecognizer:)(__objc2_prot **a1, unint64_t a2, unint64_t a3, double a4, double a5)
{
  v10 = a1;
  v11 = *MEMORY[0x1E69E7D40] & *v5;
  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = v11 + 80;
      v15 = *(v11 + 80);
      v16 = *(v17 + 8);
      v58 = Strong;
      v18 = (v16[4])(v15, v16);
      v19 = v18;
      if (v18 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v53 = v15;
        v54 = v16;
        v55 = v10;
        v56 = a2;
        v57 = a3;
        v15 = 0;
        a3 = v19 & 0xFFFFFFFFFFFFFF8;
        v16 = &selRef_PDFView;
        v10 = &off_1E845F000;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1DA6CE0C0](v15, v19);
          }

          else
          {
            if (v15 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v21 = *(v19 + 8 * v15 + 32);
          }

          v22 = v21;
          a2 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          [v21 bounds];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          [v22 convertPoint:v13 fromCoordinateSpace:{a4, a5}];
          v60.x = v31;
          v60.y = v32;
          v61.origin.x = v24;
          v61.origin.y = v26;
          v61.size.width = v28;
          v61.size.height = v30;
          if (CGRectContainsPoint(v61, v60))
          {

            v35 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x440))(v34);
            v37 = v36;
            v38 = v54[2];
            v39 = v35;
            (v38)(v35, v37, v53, v54);
            [v13 convertPoint:v39 toCoordinateSpace:{a4, a5}];
            v41 = v40;
            v43 = v42;
            v33 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
            v44 = objc_allocWithZone(v33);
            *&v44[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
            *(swift_unknownObjectWeakInit() + 8) = v37;
            swift_unknownObjectWeakAssign();
            v59.receiver = v44;
            v59.super_class = v33;
            v45 = objc_msgSendSuper2(&v59, sel_init);
            CanvasViewSelectionInteractionDelegate.selectionInteractionShouldBegin(_:at:for:orGestureRecognizer:)(v55, v56, v57, v41, v43);
            LOBYTE(v33) = v46;

            return v33 & 1;
          }

          ++v15;
          if (a2 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

LABEL_20:

      [v13 convertPoint:v58 toCoordinateSpace:{a4, a5}];
      v48 = v47;
      v50 = v49;
      v51 = v58;
      v33 = [v51 hitAttachment:0 includeStandinAttachment:0 expandBottomAttachment:{v48, v50}];

      if (v33)
      {

        LOBYTE(v33) = 1;
      }
    }

    else
    {

      LOBYTE(v33) = 0;
    }
  }

  else
  {
    LOBYTE(v33) = 0;
  }

  return v33 & 1;
}

unint64_t @objc TiledSelectionInteractionDelegate.selectionInteractionShouldBegin(_:at:for:orGestureRecognizer:)(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a1;
  LOBYTE(a7) = TiledSelectionInteractionDelegate.selectionInteractionShouldBegin(_:at:for:orGestureRecognizer:)(v12, a6, a7, a2, a3);

  return a7 & 1;
}

uint64_t TiledSelectionInteractionDelegate.selectionInteractionShouldForwardToElements(_:at:for:)(void *a1, void *a2, double a3, double a4)
{
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = [a1 view];
  if (v10)
  {
    v11 = v10;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v16 = v9 + 80;
      v15 = *(v9 + 80);
      v14 = *(v16 + 8);
      v17 = (*(v14 + 32))(v15, v14);
      v18 = v17;
      v49 = a1;
      v50 = v13;
      if (v17 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v20 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1DA6CE0C0](v20, v18);
          }

          else
          {
            if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          [v21 bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          [v22 convertPoint:v11 fromCoordinateSpace:{a3, a4}];
          v52.x = v32;
          v52.y = v33;
          v53.origin.x = v25;
          v53.origin.y = v27;
          v53.size.width = v29;
          v53.size.height = v31;
          if (CGRectContainsPoint(v53, v52))
          {

            v35 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x440))(v34);
            v37 = v36;
            v38 = *(v14 + 16);
            v39 = v35;
            v38(v35, v37, v15, v14);
            [v11 convertPoint:v39 toCoordinateSpace:{a3, a4}];
            v41 = v40;
            v43 = v42;
            v44 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
            v45 = objc_allocWithZone(v44);
            *&v45[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
            *(swift_unknownObjectWeakInit() + 8) = v37;
            swift_unknownObjectWeakAssign();
            v51.receiver = v45;
            v51.super_class = v44;
            v46 = objc_msgSendSuper2(&v51, sel_init);
            v47 = CanvasViewSelectionInteractionDelegate.selectionInteractionShouldForwardToElements(_:at:for:)(v49, a2, v41, v43);

            return v47 & 1;
          }

          ++v20;
          if (v23 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
    }

    else
    {
    }
  }

  v47 = 0;
  return v47 & 1;
}

uint64_t @objc TiledSelectionInteractionDelegate.selectionInteractionShouldForwardToElements(_:at:for:)(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  v12 = a1;
  LOBYTE(a6) = TiledSelectionInteractionDelegate.selectionInteractionShouldForwardToElements(_:at:for:)(v10, a6, a2, a3);

  return a6 & 1;
}

Class @objc TiledSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7, void *a8)
{
  v14 = a7;
  v15 = a8;
  v16 = a1;
  v17 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(v15, a2, a3, a4, a5);

  if (v17)
  {
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  return v18.super.isa;
}

Class @objc TiledSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(v9, v10);

  if (v12)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  return v13.super.isa;
}

CGPathRef @objc TiledSelectionInteractionDelegate.selectionInteraction(_:pathForElement:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v10 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:pathForElement:inAttachment:)(v12, v8);

  __swift_destroy_boxed_opaque_existential_0(v12);

  return v10;
}

void TiledSelectionInteractionDelegate.selectionInteraction(_:didSelectElements:inAttachment:)(void *a1, uint64_t a2, void *a3)
{
  v8[3] = &type metadata for PencilAndPaperFeatureFlags;
  v8[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v8[0]) = 0;
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if ((v6 & 1) == 0)
  {
    v7 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
    specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didSelectElements:inAttachment:)(a1, a2);
  }
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didSelectElements:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = a1;
  TiledSelectionInteractionDelegate.selectionInteraction(_:didSelectElements:inAttachment:)(v9, v8, v10);

  return result;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didDragElements:with:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5, void *a6)
{
  v9 = a5[1];
  v15[0] = *a5;
  v15[1] = v9;
  v15[2] = a5[2];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didDragElements:with:inAttachment:)(v10, v15, v12);

  return result;
}

void @objc TiledSelectionInteractionDelegate.selectionInteraction(_:willBeginInsertSpaceInAttachment:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:willBeginInsertSpaceInAttachment:)(v7);
}

void @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didEndInsertSpaceInAttachment:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didEndInsertSpaceInAttachment:)(v7);
}

void @objc TiledSelectionInteractionDelegate.selectionInteraction(_:insertSpaceDidMove:inAttachment:)(void *a1, double a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:insertSpaceDidMove:inAttachment:)(v9, a2);
}

void @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didClearSelectionForElements:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didClearSelectionForElements:inAttachment:)(v8);
}

void @objc TiledSelectionInteractionDelegate.selectionInteraction(_:clearSelectionInAttachment:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:clearSelectionInAttachment:)(v7);
}

uint64_t @objc TiledSelectionInteractionDelegate.selectionInteraction(_:canPerformAction:withSender:inAttachment:)(void *a1, uint64_t a2, void *a3, char *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a6;
  v11 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v12 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:canPerformAction:withSender:inAttachment:)(a4, v14, v10);

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v12 & 1;
}

Class @objc TiledSelectionInteractionDelegate.selectionInteraction(_:pasteboardRepresentationsForElements:strokes:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = a1;
  v14 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:pasteboardRepresentationsForElements:strokes:inAttachment:)(v9, v10, v12);

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v15.super.isa = 0;
  }

  return v15.super.isa;
}

void @objc TiledSelectionInteractionDelegate.selectionInteractionDidPaste(_:at:in:)(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  v12 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteractionDidPaste(_:at:in:)(v11, a2, a3);
}

Class @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didDuplicateElements:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = a1;
  v12 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didDuplicateElements:inAttachment:)(v8, v10);

  if (v12)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  return v13.super.isa;
}

Class @objc TiledSelectionInteractionDelegate.selectionInteraction(_:elementsForSpaceInsertedAt:inAttachment:)(void *a1, CGFloat a2, CGFloat a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  v12 = a1;
  v13 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:elementsForSpaceInsertedAt:inAttachment:)(v11, a2, a3);

  if (v13)
  {
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  return v14.super.isa;
}

uint64_t @objc TiledSelectionInteractionDelegate.selectionInteraction(_:selectionContains:inAttachment:)(void *a1, CGFloat a2, CGFloat a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  v12 = a1;
  v13 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:selectionContains:inAttachment:)(v11, a2, a3);

  return v13 & 1;
}

Class @objc TiledSelectionInteractionDelegate.selectionInteraction(_:elementsInAttachment:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5(v9);

  if (v11)
  {
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didSelect:selectionType:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for PKStroke();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didSelect:selectionType:inAttachment:)(v10, a5, v12);

  return result;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:)(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *aBlock)
{
  v13 = _Block_copy(aBlock);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:)(v14, v17, v18, a7, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v15);

  return result;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didEndDraggingElements:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, id))
{
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a5;
  v13 = a1;
  a6(v10, v12);

  return result;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillEndForElements:with:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillEndForElements:with:inAttachment:)(v10, a5, v12);

  return result;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(a4, v14, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?) -> (), v11);

  return result;
}

uint64_t @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didTapElement:withGesture:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = a6;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didTapElement:withGesture:inAttachment:)(v14, v10, v11);

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t @objc TiledSelectionInteractionDelegate.selectionInteraction(_:didLongPressElement:withGesture:inAttachment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = a6;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didLongPressElement:withGesture:inAttachment:)(v15, v10, v11);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13 & 1;
}

id @objc TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:configurationForElement:inAttachment:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a6;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v13 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:configurationForElement:inAttachment:)(v10, v15, v11);

  __swift_destroy_boxed_opaque_existential_0(v15);

  return v13;
}

id @objc TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:previewForHighlightingMenuWith:forElement:inAttachment:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  swift_unknownObjectRetain();
  v14 = a7;
  v15 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v16 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:previewForHighlightingMenuWith:forElement:inAttachment:)(v12, v13, v18, v14);

  __swift_destroy_boxed_opaque_existential_0(v18);

  return v16;
}

uint64_t @objc TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:willDisplayMenuFor:animator:forElement:inAttachment:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, SEL *a9)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = a8;
  v18 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:willDisplayMenuFor:animator:forElement:inAttachment:)(v15, v16, a6, v20, v17, a9);

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t @objc TiledSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:inAttachment:)(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  v12 = a1;
  v13 = specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:inAttachment:)(v11, a2, a3);

  return v13 & 1;
}

double @objc TiledSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:hit:inAttachment:)(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  type metadata accessor for PKStroke();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a5;
  v14 = a7;
  v15 = a1;
  specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:hit:inAttachment:)(v12, v14, a2, a3);

  return result;
}

id TiledSelectionInteractionDelegate.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TiledSelectionInteractionDelegate(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleLassoSelection:strokes:inAttachment:)(void *a1, void (*a2)(char *, char *, uint64_t), void *a3)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
  LOBYTE(a2) = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleLassoSelection:strokes:inAttachment:)(a1, a2);

  return a2 & 1;
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleDeleteForTextStrokes:inAttachment:)(Swift::OpaquePointer a1, void *a2)
{
  v10 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
      if (v7)
      {
        v8 = *((*v5 & *v6) + 0x798);
        v9 = v7;
        v8(a1._rawValue);
        HandwritingReflowView.replaceStrokes(_:with:strokeIn:)(a1, MEMORY[0x1E69E7CC0], 0);

        v6 = v9;
      }
    }
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9)
{
  v51 = a3;
  v52 = a4;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v53 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v49 = v17;
    v50 = a1;
    v25 = MEMORY[0x1E69E7D40];
    v26 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v26)
    {
      v27 = *&v26[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
      v48 = v27;

      if (v27)
      {
        if ([a5 respondsToSelector_])
        {
          Date.init()();
          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = v28;
            v46 = (*((*v25 & *v28) + 0x90))();
          }

          else
          {
            v46 = 0;
          }

          type metadata accessor for PKStroke();
          v31 = v50;
          isa = Array._bridgeToObjectiveC()().super.isa;
          v51 = MEMORY[0x1DA6CCED0](a2, v51);
          v32 = v49;
          (*(v49 + 16))(v19, v22, v16);
          v33 = (*(v32 + 80) + 40) & ~*(v32 + 80);
          v34 = (v18 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
          v35 = swift_allocObject();
          v36 = v52;
          *(v35 + 2) = v52;
          *(v35 + 3) = v31;
          v37 = v46;
          *(v35 + 4) = v46;
          (*(v32 + 32))(&v35[v33], v19, v16);
          v38 = v48;
          *&v35[v34] = v48;
          aBlock[4] = partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:replace:with:proofreadingItem:in:in:);
          aBlock[5] = v35;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSValue], @guaranteed [CHReflowableTextToken], @guaranteed [PKDrawing]) -> ();
          aBlock[3] = &block_descriptor_23;
          v39 = _Block_copy(aBlock);
          v40 = v37;
          v41 = v38;
          v42 = v36;

          v43 = a5;
          v44 = isa;
          v45 = v51;
          [v43 replaceStrokes:isa withString:v51 inBounds:v39 completion:{a6, a7, a8, a9}];
          _Block_release(v39);

          (*(v32 + 8))(v22, v16);
          return;
        }
      }
    }
  }

  v30 = v53;
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v7;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a1;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:handleGenerationToolForSelectedStrokes:inBounds:inAttachment:), v11);

  return outlined destroy of TaskPriority?(v6);
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  v10 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(a2, a3, a4, a5);

  return v10;
}

void *specialized TiledSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(void *a1, void *a2)
{
  v3 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  v4 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:requestElementsIn:inAttachment:)(a1);

  return v4;
}

CGPathRef specialized TiledSelectionInteractionDelegate.selectionInteraction(_:pathForElement:inAttachment:)(uint64_t a1, void *a2)
{
  v14 = &type metadata for PencilAndPaperFeatureFlags;
  v4 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v15 = v4;
  LOBYTE(v13[0]) = 0;
  v5 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v5)
  {
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.width = 0.0;
    v16.size.height = 0.0;
    return CGPathCreateWithRect(v16, 0);
  }

  else
  {
    v7 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
    v14 = &type metadata for PencilAndPaperFeatureFlags;
    v15 = v4;
    LOBYTE(v13[0]) = 0;
    v8 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v13);
    if ((v8 & 1) != 0 || (v9 = CanvasViewSelectionInteractionDelegate.view(for:)(a1)) == 0)
    {
      v17.origin.x = 0.0;
      v17.origin.y = 0.0;
      v17.size.width = 0.0;
      v17.size.height = 0.0;
      v12 = CGPathCreateWithRect(v17, 0);

      return v12;
    }

    else
    {
      v10 = v9;
      v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1A8))();

      return v11;
    }
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didDragElements:with:inAttachment:)(uint64_t a1, double *a2, void *a3)
{
  v8[3] = &type metadata for PencilAndPaperFeatureFlags;
  v8[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v8[0]) = 0;
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if ((v6 & 1) == 0)
  {
    v7 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
    specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDragElements:with:inAttachment:)(a1, a2);
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didEndDraggingElements:inAttachment:)(uint64_t a1, void *a2)
{
  v6[3] = &type metadata for PencilAndPaperFeatureFlags;
  v6[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v6[0]) = 0;
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  if ((v4 & 1) == 0)
  {
    v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
    specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didEndDraggingElements:inAttachment:)(a1);
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:willBeginInsertSpaceInAttachment:)(void *a1)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = MEMORY[0x1E69E7D40];
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v4)
    {
      (*((*v2 & *v4) + 0x828))();
    }
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didEndInsertSpaceInAttachment:)(void *a1)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = MEMORY[0x1E69E7D40];
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v4)
    {
      (*((*v2 & *v4) + 0x838))(0);
    }
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:insertSpaceDidMove:inAttachment:)(void *a1, double a2)
{
  v7 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = Strong;
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v6)
    {
      (*((*v4 & *v6) + 0x830))(a2);
    }
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didClearSelectionForElements:inAttachment:)(void *a1)
{
  v4[3] = &type metadata for PencilAndPaperFeatureFlags;
  v4[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v4[0]) = 0;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if ((v2 & 1) == 0)
  {
    v3 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
    specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didClearSelectionForElements:inAttachment:)();
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:clearSelectionInAttachment:)(void *a1)
{
  v1 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:clearSelectionInAttachment:)();
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:canPerformAction:withSender:inAttachment:)(char *a1, uint64_t a2, void *a3)
{
  v4 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:canPerformAction:withSender:inAttachment:)(a1);
  v6 = v5;

  return v6 & 1;
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:pasteboardRepresentationsForElements:strokes:inAttachment:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = MEMORY[0x1E69E7D40];
    v8 = Strong;
    v9 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v9)
    {
      if (*(a1 + 16) || *(a2 + 16))
      {
        v10 = specialized _arrayForceCast<A, B>(_:)(a1);

        v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v10);

        _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_9Coherence7WeakRefVyAJ10CRRegisterVy8PaperKit12TaggedStrokeOGGs5NeverOTg503_s8j76Kit13CanvasMembersV14canvasElements11strokeUUIDsACx_q_tcSTRzSTR_9Coherence13gl11_10VyAA0kC7b43VG0L0Rtz10Foundation4UUIDVALRt_r0_lufcAF0J3h6VyAF10i7VyAA0K6M10OGGAPXEfU_Tf1cn_n(a2);
        v13 = v12;

        v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v13);

        v15 = (*((*v7 & *v9) + 0x8F0))(v11, v14, 6, 0);

        if (v15)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1D4058CF0;
          *(v16 + 32) = v15;

          return v16;
        }
      }
    }
  }

  return 0;
}

void specialized TiledSelectionInteractionDelegate.selectionInteractionDidPaste(_:at:in:)(void *a1, double a2, double a3)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  specialized CanvasViewSelectionInteractionDelegate.selectionInteractionDidPaste(_:at:in:)(a2, a3);
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didDeleteElements:inAttachment:)(uint64_t a1, void *a2)
{
  v11 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  v3 = &v11[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v8 = specialized _arrayForceCast<A, B>(_:)(a1);
    v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v8);

    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    (*(v6 + 96))(v9, v10, 6, 0, ObjectType, v6);
  }
}

void *specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didDuplicateElements:inAttachment:)(uint64_t a1, void *a2)
{
  v3 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  v4 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:didDuplicateElements:inAttachment:)(a1);

  return v4;
}

char *specialized TiledSelectionInteractionDelegate.selectionInteraction(_:elementsForSpaceInsertedAt:inAttachment:)(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  v6 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:elementsForSpaceInsertedAt:inAttachment:)(a2, a3);

  return v6;
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:selectionContains:inAttachment:)(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  v6 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:selectionContains:inAttachment:)(a2, a3);

  return v6 & 1;
}

char *specialized TiledSelectionInteractionDelegate.selectionInteraction(_:elementsInAttachment:)(void *a1)
{
  v1 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  v2 = specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:elementsInAttachment:)();

  return v2;
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:selectedElementsInAttachment:)(void *a1)
{
  v1 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:selectedElementsInAttachment:)();
  v3 = v2;

  return v3;
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didSelect:selectionType:inAttachment:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
  if (a2 != 6)
  {
    if (a2)
    {
      v13 = v4;
      Strong = swift_unknownObjectWeakLoadStrong();
      v4 = v13;
      if (Strong)
      {
        v6 = Strong;
        v7 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

        v4 = v13;
        if (v7)
        {

          v9 = _s8PaperKit13CanvasMembersV7strokes19canvasSelectionTypeACx_AA0cgH0OtcSTRz06PencilB08PKStrokeV7ElementRtzlufCSayAJG_Tt1g5(v8, a2, 0);
          AnyCanvas.selection.setter(v9, v11, v12, v10 & 1);

          v4 = v13;
        }
      }
    }
  }
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v27 = *(v15 - 8);
  v28 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a4);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v26 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v18;
  v19[4] = a3;
  v19[5] = a2;
  v19[6] = a5;
  v19[7] = a6;
  aBlock[4] = partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.selectionInteraction(_:renderPreviewForElements:in:with:inAttachment:withCompletion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_52;
  v20 = _Block_copy(aBlock);

  v21 = v18;
  v22 = a3;
  v23 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  MEMORY[0x1DA6CD890](0, v17, v14, v20);
  _Block_release(v20);

  (*(v29 + 8))(v14, v12);
  return (*(v27 + 8))(v17, v28);
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillBeginForElements:inAttachment:)(uint64_t a1, void *a2)
{
  v3 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillBeginForElements:inAttachment:)(a1);
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillEndForElements:with:inAttachment:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
  specialized CanvasViewSelectionInteractionDelegate.selectionInteraction(_:dragInteractionWillEndForElements:with:inAttachment:)(a1, a2);
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didDrop:inAttachment:withCompletion:)(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v18 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  v7 = &v18[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(v7 + 1);
    v11 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    if (v11)
    {
      v12 = v11;
      if (a1)
      {
        type metadata accessor for URL();
        v13 = swift_allocObject();
        v13[2] = a3;
        v13[3] = a4;
        v13[4] = v9;
        v13[5] = v10;
        v13[6] = v12;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD8]);
        v14 = a1;

        v15 = v9;
        v16 = v12;
        v17 = NSItemProvider.loadObject<A>(ofClass:completionHandler:)();
      }

      else
      {
        a3(0);
      }
    }

    else
    {
    }
  }
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didTapElement:withGesture:inAttachment:)(uint64_t a1, void *a2, void *a3)
{
  v5 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
  v6 = &v5[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(v6 + 1);
    v9 = Strong;
    ObjectType = swift_getObjectType();
    v11 = (*(v8 + 168))(ObjectType, v8);

    if (v11)
    {
      v12 = OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets;
      swift_beginAccess();
      v13 = *&v11[v12];

      if (v13 >> 62)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);

        v14 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
        v14 = v13;
      }

      MEMORY[0x1EEE9AC00](v15);
      v24[2] = a1;
      v16 = specialized Sequence.first(where:)(partial apply for closure #1 in CanvasViewSelectionInteractionDelegate.widget(for:), v24, v14);

      if (v16)
      {
        [v16 addControl];
LABEL_13:

        goto LABEL_14;
      }
    }
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = MEMORY[0x1E69E7D40];
    v16 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x90))();

    if (v16)
    {
      v20 = CanvasViewSelectionInteractionDelegate.view(for:)(a1);
      if (v20)
      {
        v21 = v20;
        type metadata accessor for LinkCanvasElementView(0);
        if (swift_dynamicCastClass())
        {
          v22 = v21;
          v23 = LinkCanvasElementView.linkView.getter();
          (*((*v19 & *v23) + 0x88))(0);

          v16 = v23;
        }

        else
        {
          (*((*v19 & *v16) + 0x760))(v21, [a2 modifierFlags], 0);

          v16 = v21;
        }
      }

      goto LABEL_13;
    }
  }

LABEL_14:
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:didLongPressElement:withGesture:inAttachment:)(uint64_t a1, void *a2, void *a3)
{
  v35 = a1;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
  v14 = &v13[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v32 = a2;
  v33 = v5;
  v34 = v13;
  v16 = *(v14 + 1);
  v17 = Strong;
  ObjectType = swift_getObjectType();
  outlined init with copy of Any(v35, v36);
  swift_dynamicCast();
  MEMORY[0x1DA6CB5C0](v9);
  (*(v10 + 8))(v12, v9);
  v19 = (*(v16 + 40))(ObjectType, v16);

  if (!*(v19 + 16))
  {

    (*(v6 + 8))(v8, v33);
LABEL_11:

    return 0;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  v21 = v33;
  if ((v22 & 1) == 0)
  {

    (*(v6 + 8))(v8, v21);
    goto LABEL_11;
  }

  v23 = *(v6 + 8);
  v24 = *(*(v19 + 56) + 8 * v20);
  v23(v8, v21);

  type metadata accessor for LinkCanvasElementView(0);
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    return 0;
  }

  v26 = v25;
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27 && (v28 = MEMORY[0x1E69E7D40], v29 = v27, v30 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x90))(), v29, v30))
  {
    (*((*v28 & *v30) + 0x760))(v26, [v32 modifierFlags], 0);
  }

  else
  {
  }

  return 1;
}

id specialized TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:configurationForElement:inAttachment:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a3);
  v15 = &v14[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = a1;
    v29 = v6;
    v17 = *(v15 + 1);
    v18 = a2;
    v19 = Strong;
    ObjectType = swift_getObjectType();
    outlined init with copy of Any(v18, v30);
    swift_dynamicCast();
    MEMORY[0x1DA6CB5C0](v10);
    (*(v11 + 8))(v13, v10);
    v21 = (*(v17 + 40))(ObjectType, v17);

    if (*(v21 + 16))
    {
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if (v23)
      {
        v24 = *(v7 + 8);
        v25 = *(*(v21 + 56) + 8 * v22);
        v24(v9, v29);

        v26 = [v25 contextMenuInteraction:v28 configurationForMenuAtLocation:{0.0, 0.0}];

        return v26;
      }
    }

    (*(v7 + 8))(v9, v29);
  }

  else
  {
  }

  return 0;
}

id specialized TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:previewForHighlightingMenuWith:forElement:inAttachment:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = a3;
  v7 = type metadata accessor for CRKeyPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a4);
  v16 = &v15[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:

    return 0;
  }

  v31 = a2;
  v32 = v7;
  v30 = a1;
  v18 = *(v16 + 1);
  v19 = Strong;
  ObjectType = swift_getObjectType();
  outlined init with copy of Any(v33, v34);
  swift_dynamicCast();
  MEMORY[0x1DA6CB5C0](v11);
  (*(v12 + 8))(v14, v11);
  v21 = (*(v18 + 40))(ObjectType, v18);

  if (*(v21 + 16))
  {
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    v23 = v32;
    if (v24)
    {
      v25 = *(v8 + 8);
      v26 = *(*(v21 + 56) + 8 * v22);
      v25(v10, v23);

      v27 = [v26 window];
      if (v27)
      {

        v28 = [v26 contextMenuInteraction:v30 previewForHighlightingMenuWithConfiguration:v31];
        return v28;
      }

      goto LABEL_9;
    }

    (*(v8 + 8))(v10, v23);
  }

  else
  {

    (*(v8 + 8))(v10, v32);
  }

  return 0;
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:contextMenuInteraction:willDisplayMenuFor:animator:forElement:inAttachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6)
{
  v31 = a6;
  v32 = a2;
  v30 = a1;
  v9 = type metadata accessor for CRKeyPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v34 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a5);
  v17 = &v34[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v29 = a3;
    v33 = v9;
    v20 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    outlined init with copy of Any(a4, v35);
    swift_dynamicCast();
    MEMORY[0x1DA6CB5C0](v13);
    (*(v14 + 8))(v16, v13);
    v22 = (*(v20 + 40))(ObjectType, v20);

    if (*(v22 + 16))
    {
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      v24 = v33;
      if (v25)
      {
        v26 = *(v10 + 8);
        v27 = *(*(v22 + 56) + 8 * v23);
        v26(v12, v24);

        [v27 *v31];
      }

      else
      {

        (*(v10 + 8))(v12, v24);
      }
    }

    else
    {

      (*(v10 + 8))(v12, v33);
    }
  }

  else
  {
    v28 = v34;
  }
}

uint64_t specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:inAttachment:)(void *a1, double a2, double a3)
{
  v6 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = MEMORY[0x1E69E7D40], v9 = Strong, v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))(), v9, v10))
  {
    v13[3] = &type metadata for PencilAndPaperFeatureFlags;
    v13[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
    LOBYTE(v13[0]) = 0;
    v11 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v13);
    if (v11)
    {
      [a1 convertPoint:v10 toCoordinateSpace:{a2, a3}];
      (*((*v8 & *v10) + 0x750))(MEMORY[0x1E69E7CC0], 1, 1);

      return 1;
    }
  }

  else
  {
  }

  return 0;
}

void specialized TiledSelectionInteractionDelegate.selectionInteraction(_:handleTapOnCanvasAtLocation:hit:inAttachment:)(uint64_t a1, void *a2, double a3, double a4)
{
  v11 = TiledSelectionInteractionDelegate.getSelectionDelegate(from:)(a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = Strong;
    v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v10)
    {
      (*((*v8 & *v10) + 0x750))(a1, 1, 1, a3, a4);
    }
  }
}

double block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CanvasElementPDFAnnotation.decodePaperKitID()@<X0>(uint64_t a1@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [v1 sourceDictionary];
  if (v3)
  {
    v21[0] = 0;
    specialized String.withCString<A>(_:)(0x454B413A4C504141, 0xED00007361727478, v3, v21);
    v4 = v21[0];
    if (v21[0])
    {
      v5 = String.utf8CString.getter();
      value[0] = 0;
      if (CGPDFDictionaryGetString(v4, (v5 + 32), value))
      {
        if (value[0])
        {
          v6 = CGPDFStringCopyTextString(value[0]);
          if (v6)
          {
            v7 = v6;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            Data.init(base64Encoded:options:)();
            v9 = v8;

            if (v9 >> 60 == 15)
            {
              goto LABEL_18;
            }

LABEL_16:
            CRKeyPath.init(rawValue:)();
            v16 = type metadata accessor for CRKeyPath();
            return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
          }
        }
      }

      stream = 0;
      if (CGPDFDictionaryGetStream(v4, (v5 + 32), &stream) && stream && (format[0] = CGPDFDataFormatRaw, (v13 = CGPDFStreamCopyData(stream, format)) != 0))
      {
        v14 = v13;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          *value = xmmword_1D405C100;
          static Data._conditionallyBridgeFromObjectiveC(_:result:)();

          v15 = value[1];

          if (v15 >> 60 != 15)
          {
            goto LABEL_16;
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

LABEL_18:
    v17 = type metadata accessor for CRKeyPath();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  v10 = type metadata accessor for CRKeyPath();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, 1, 1, v10);
}

uint64_t CanvasElementPDFAnnotation.decodeImportedElement<A>(in:assetManager:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v56 = a3;
  v69 = a2;
  v74 = a1;
  v72 = a4;
  v64 = type metadata accessor for CRKeyPath();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v51 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGMR);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v51 - v10;
  v58 = type metadata accessor for UnknownCanvasElement(0);
  MEMORY[0x1EEE9AC00](v58);
  v68 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v51 - v13;
  v14 = type metadata accessor for CRCodingError();
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v67 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v55 = &v51 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v51 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v51 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  v73 = v4;
  v31 = CanvasElementPDFAnnotation.decodePaperKitType()();
  if (!v31.value._object)
  {
    goto LABEL_16;
  }

  if (v31.value._countAndFlagsBits == 2002874980 && v31.value._object == 0xE400000000000000 || ((v36 = _stringCompareWithSmolCheck(_:_:expecting:)(), v31.value._countAndFlagsBits == 846688868) ? (v37 = v31.value._object == 0xE400000000000000) : (v37 = 0), !v37 ? (v38 = 0) : (v38 = 1), (v36 & 1) != 0 || (v38 & 1) != 0))
  {
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
LABEL_16:
      CanvasElementPDFAnnotation.decodeCanvasElement<A>(in:assetManager:)(v74, v69, v17);
      v40 = v67;
      if ((*(v67 + 48))(v17, 1, v18) == 1)
      {
        v33 = &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd;
        v34 = &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR;
        v35 = v17;
        goto LABEL_20;
      }

      v46 = *(v40 + 32);
      v46(v20, v17, v18);
      v47 = v72;
      v46(v72, v20, v18);
      v48 = type metadata accessor for AnnotationImporter.ImportedElement(0);
      goto LABEL_22;
    }
  }

  v32 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR, MEMORY[0x1E6995078]);
  CanvasElementPDFAnnotation.decodePaperKit<A, B>(type:checkHash:in:)(0, v74, v27, v32, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v33 = &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd;
    v34 = &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR;
    v35 = v26;
LABEL_20:
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, v33, v34);
    v44 = type metadata accessor for AnnotationImporter.ImportedElement(0);
    return (*(*(v44 - 8) + 56))(v72, 1, 1, v44);
  }

  (*(v28 + 32))(v30, v26, v27);
  v41 = v55;
  CRRegister.value.getter();
  (*(v28 + 8))(v30, v27);
  v42 = v53;
  v43 = v54;
  if ((*(v53 + 48))(v41, 1, v54) == 1)
  {
    v33 = &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd;
    v34 = &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR;
    v35 = v41;
    goto LABEL_20;
  }

  v49 = *(v42 + 32);
  v50 = v52;
  v49(v52, v41, v43);
  v47 = v72;
  v49(v72, v50, v43);
  v48 = type metadata accessor for AnnotationImporter.ImportedElement(0);
LABEL_22:
  swift_storeEnumTagMultiPayload();
  return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
}

void one-time initialization function for magicNumber()
{
  v0 = specialized _copyCollectionToContiguousArray<A>(_:)(26736, 0xE200000000000000);
  v1 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v0);
  v3 = v2;

  static PaperKitPDFHash.magicNumber = v1;
  *algn_1EC7C3F48 = v3;
}

{
  v0 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(4, 0);
  *(v0 + 8) = 1836410996;
  v1 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v0);
  v3 = v2;

  static ImageThumbnailManager.magicNumber = v1;
  qword_1EC7A6450 = v3;
}

BOOL closure #1 in CGPDFDictionaryGetDictionary(_:_:_:)@<W0>(char *key@<X0>, CGPDFDictionaryRef dict@<X1>, CGPDFDictionaryRef *a3@<X2>, _BYTE *a4@<X8>)
{
  result = CGPDFDictionaryGetDictionary(dict, key, a3);
  *a4 = result;
  return result;
}

Swift::String_optional __swiftcall CanvasElementPDFAnnotation.decodePaperKitType()()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = [v0 sourceDictionary];
  if (!v1)
  {
    goto LABEL_9;
  }

  v12[0] = 0;
  specialized String.withCString<A>(_:)(0x454B413A4C504141, 0xED00007361727478, v1, v12);
  v2 = v12[0];
  if (!v12[0])
  {
LABEL_8:
    v1 = 0;
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v3 = String.utf8CString.getter();
  value = 0;
  if (!CGPDFDictionaryGetString(v2, (v3 + 32), &value) || !value || (v4 = CGPDFStringCopyTextString(value)) == 0)
  {

    goto LABEL_8;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = v8;
  v1 = v6;
LABEL_10:
  result.value._object = v9;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t CanvasElementPDFAnnotation.decodePaperKit<A, B>(type:checkHash:in:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v66 = a2;
  v71[1] = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Capsule();
  v67 = *(v11 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v60 - v13;
  v15 = [v5 sourceDictionary];
  if (!v15)
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v16 = v15;
  v68 = v6;
  v17 = String.utf8CString.getter();
  value[0] = 0;
  if (!CGPDFDictionaryGetDictionary(v16, (v17 + 32), value))
  {
    goto LABEL_10;
  }

  v18 = value[0];

  if (!v18)
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_39;
  }

  v19 = String.utf8CString.getter();
  value[0] = 0;
  if (CGPDFDictionaryGetString(v18, (v19 + 32), value) && value[0] && (v20 = CGPDFStringCopyTextString(value[0])) != 0)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v23;
    v65 = v22;

    v65 = Data.init(base64Encoded:options:)();
    v25 = v24;

    if (v25 >> 60 == 15)
    {
      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }

    v64 = v25;
  }

  else
  {
    v71[0] = 0;
    if (!CGPDFDictionaryGetStream(v18, (v19 + 32), v71) || !v71[0])
    {

      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }

    format = CGPDFDataFormatRaw;
    v65 = CGPDFStreamCopyData(v71[0], &format);
    if (!v65)
    {
      goto LABEL_10;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }

    *value = xmmword_1D405C100;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();

    v27 = value[1];

    if (v27 >> 60 == 15)
    {
      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }

    v64 = v27;
    v65 = value[0];
  }

  v28 = v65;
  v29 = Data.paperKitHashVersion.getter(v65, v64);
  if ((v29 & 0x100) != 0)
  {
    (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    return outlined consume of Data?(v28, v64);
  }

  LODWORD(v63) = v29;
  v30 = [v5 dictionaryRef];
  v31 = v5;
  if (!v30)
  {
    v41 = v5;
    v39 = 0;
    v40 = 0xF000000000000000;
LABEL_30:
    v38 = v64;
    goto LABEL_31;
  }

  v32 = v30;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  v34 = v5;
  if (!v33)
  {

    v39 = 0;
    v40 = 0xF000000000000000;
    goto LABEL_30;
  }

  v63 = NSDictionary.paperKitHash(version:includeAPPL:)(v63, 0, v35);
  v37 = v36;

  if (v37 >> 60 == 15)
  {
    v39 = v63;
    v38 = v64;
    v40 = v37;
LABEL_31:
    v42 = v65;
    outlined copy of Data?(v65, v38);
    outlined copy of Data?(v39, v40);
    outlined consume of Data?(v42, v38);
    outlined consume of Data?(v39, v40);
LABEL_32:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, logger);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D38C4000, v44, v45, "Importing PaperKit element from annotation skipped due to hash difference.", v46, 2u);
      MEMORY[0x1DA6D0660](v46, -1, -1);
    }

    outlined consume of Data?(v42, v38);
    outlined consume of Data?(v39, v40);

    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v38 = v64;
  v47 = v65;
  outlined copy of Data?(v65, v64);
  outlined copy of Data?(v47, v38);
  v48 = v63;
  outlined copy of Data?(v63, v37);
  v61 = specialized static Data.== infix(_:_:)(v65, v38, v48, v37);
  v49 = v37;
  v50 = v65;
  v62 = v49;
  outlined consume of Data?(v48, v49);
  outlined consume of Data?(v50, v38);
  outlined consume of Data?(v50, v38);
  if (!v61)
  {
    v42 = v50;
    v40 = v62;
    v39 = v63;
    goto LABEL_32;
  }

  outlined consume of Data?(v50, v38);
  outlined consume of Data?(v63, v62);
LABEL_39:
  v51 = String.utf8CString.getter();
  value[0] = 0;
  if (!CGPDFDictionaryGetString(v18, (v51 + 32), value) || !value[0] || (v52 = CGPDFStringCopyTextString(value[0])) == 0)
  {
    v71[0] = 0;
    if (CGPDFDictionaryGetStream(v18, (v51 + 32), v71))
    {
      if (v71[0])
      {
        format = CGPDFDataFormatRaw;
        v57 = CGPDFStreamCopyData(v71[0], &format);
        if (v57)
        {
          v58 = v57;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            *value = xmmword_1D405C100;
            static Data._conditionallyBridgeFromObjectiveC(_:result:)();

            v56 = value[1];

            if (v56 >> 60 != 15)
            {
              v54 = value[0];
              goto LABEL_50;
            }
          }

          else
          {
          }

          return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
        }
      }
    }

LABEL_10:

    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v53 = v52;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = Data.init(base64Encoded:options:)();
  v56 = v55;

  if (v56 >> 60 == 15)
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

LABEL_50:
  outlined copy of Data._Representation(v54, v56);
  v59 = v68;
  Capsule.init(serializedPaperData:fileSignature:)(v54, v56, 0, 0xF000000000000000, a3, a4);
  if (v59)
  {
    return outlined consume of Data?(v54, v56);
  }

  Capsule.Ref.import<A>(_:)();
  Capsule.root.getter();
  outlined consume of Data?(v54, v56);
  (*(v67 + 8))(v14, v11);
  return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
}

uint64_t CanvasElementPDFAnnotation.decodeCanvasElement<A>(in:assetManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGSgMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMR);
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SharedTagged_10<TaggedCanvasElement>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMR, MEMORY[0x1E6995078]);
  v15 = v30;
  result = CanvasElementPDFAnnotation.decodePaperKit<A, B>(type:checkHash:in:)(1, a1, v11, v14, v10);
  if (!v15)
  {
    v30 = 0;
    if ((*(v28 + 48))(v10, 1, v11) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGSgMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGSgMR);
      v17 = 1;
      v19 = v26;
      v18 = v27;
    }

    else
    {
      (*(v28 + 32))(v13, v10, v11);
      v20 = v7;
      CRRegister.value.getter();
      v21 = SharedTagged_10.subscript.modify();
      v23 = *(v22 + 24);
      v24 = *(v22 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      (*(v24 + 160))(v3, v25, v23, v24);
      v21(v29, 0);
      v19 = v26;
      (*(v26 + 8))(v20, v5);
      v18 = v27;
      CRRegister.value.getter();
      (*(v28 + 8))(v13, v11);
      v17 = 0;
    }

    return (*(v19 + 56))(v18, v17, 1, v5);
  }

  return result;
}

uint64_t Data.paperKitHashVersion.getter(uint64_t result, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_23;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 != 32)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
LABEL_21:
    v15 = specialized static Data.== infix(_:_:)(v2, v3, static PaperKitPDFHash.magicNumber, *algn_1EC7C3F48);
    outlined consume of Data._Representation(v2, v3);
    if (v15)
    {
      v10 = Data._Representation.subscript.getter();
      v9 = 0;
      return v10 | (v9 << 8);
    }

LABEL_23:
    v10 = 0;
    v9 = 1;
    return v10 | (v9 << 8);
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 32)
      {
        goto LABEL_11;
      }

LABEL_8:
      v9 = 0;
      v10 = 1;
      return v10 | (v9 << 8);
    }

    goto LABEL_26;
  }

  if (BYTE6(a2) == 32)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v7 = __OFSUB__(v11, v12);
    v13 = v11 - v12;
    if (!v7)
    {
      if (v13 != 36)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (BYTE6(a2) != 36)
      {
        goto LABEL_23;
      }

LABEL_20:
      v2 = Data._Representation.subscript.getter();
      v3 = v14;
      if (one-time initialization token for magicNumber == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 36)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NSDictionary.paperKitHash(version:includeAPPL:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a2;
  LODWORD(v4) = a1;
  v5 = a1;
  v6 = type metadata accessor for SHA256Digest();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v34 = MEMORY[0x1E69E7CD0];
  NSDictionary.paperKitHashInto(_:version:includeAPPL:visited:)(v13, v4, v3, &v34);

  if (v5 >= 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D4058CF0;
    *(v14 + 32) = v4;
    v15 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v14);
    v33 = v7;
    v16 = v6;
    v17 = v11;
    v18 = v4;
    v4 = v10;
    v20 = v19;

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v15, v20);
    v21 = v20;
    v10 = v4;
    LOBYTE(v4) = v18;
    v11 = v17;
    v6 = v16;
    v7 = v33;
    outlined consume of Data._Representation(v15, v21);
  }

  SHA256.finalize()();
  _s10Foundation25NSFastEnumerationIteratorVACStAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
  v22 = Digest.makeIterator()();
  v24 = v23;
  (*(v7 + 8))(v9, v6);
  specialized _copySequenceToContiguousArray<A>(_:)(v22, v24);
  v26 = v25;

  v27 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v26);
  v29 = v28;

  v30 = specialized Data.init(paperKitHash:version:)(v27, v29, v4);
  (*(v11 + 8))(v13, v10);
  return v30;
}

uint64_t closure #1 in CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>)
{
  v10 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-1] - v7;
  SharedTagged_10.any.getter();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  Capsule.Ref.import<A, B>(_:from:)();
  __swift_destroy_boxed_opaque_existential_0(v11);
  (*(v6 + 16))(v8, a1, v5);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  return CRRegister.init(_:)();
}

uint64_t NSArray.paperKitHashInto(_:version:visited:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = type metadata accessor for NSFastEnumerationIterator();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = specialized Set._Variant.insert(_:)(&v18, v4);
  if (result)
  {
    v15 = v9;
    v16 = v8;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    while (v22)
    {
      outlined init with take of Any(&v21, &v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB8Hashable_pMd, &_s8PaperKit0aB8Hashable_pMR);
      if (swift_dynamicCast())
      {
        v13 = *(&v19 + 1);
        v14 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        (*(v14 + 8))(a1, a2, a3, v13, v14);
        __swift_destroy_boxed_opaque_existential_0(&v18);
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        outlined destroy of StocksKitCurrencyCache.Provider?(&v18, &_s8PaperKit0aB8Hashable_pSgMd, &_s8PaperKit0aB8Hashable_pSgMR);
      }

      NSFastEnumerationIterator.next()();
    }

    return (*(v15 + 8))(v11, v16);
  }

  return result;
}

Swift::UInt64 __swiftcall CGFloat.roundedHashUInt(version:)(Swift::UInt8 version)
{
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v1;
  v9 = v2;
  v5 = 100.0;
  if (version - 1 < 3)
  {
    v5 = 10000.0;
  }

  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_12CoreGraphics7CGFloatVTt1g5(&v6, round(v5 * v3)) & 1) != 0 && v7 != 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t CGRect.roundedHash(into:version:)(uint64_t a1, Swift::UInt8 version)
{
  v7[0] = CGFloat.roundedHashUInt(version:)(version);
  v7[1] = CGFloat.roundedHashUInt(version:)(version);
  v7[2] = CGFloat.roundedHashUInt(version:)(version);
  v7[3] = CGFloat.roundedHashUInt(version:)(version);
  v3 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v7, &v8);
  v5 = v4;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v3, v4);
  return outlined consume of Data._Representation(v3, v5);
}

void NSValue.paperKitHashInto(_:version:visited:)(uint64_t a1, Swift::UInt8 a2)
{
  v3 = v2;
  [v3 objCType];
  if (String.init(cString:)() == 0xD000000000000020 && 0x80000001D408D9C0 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        if (a2 == 1)
        {
          v11 = v3;
          [v10 doubleValue];
          v27 = _OSSwapInt64(v12);
          v13 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(&v27, &v28);
          v15 = v14;
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v13, v14);

          outlined consume of Data._Representation(v13, v15);
        }

        else
        {
          v23 = v3;
          [v10 doubleValue];
          v29 = CGFloat.roundedHashUInt(version:)(a2);
          v24 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(&v29, &v30);
          v26 = v25;
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v24, v25);
          outlined consume of Data._Representation(v24, v26);
        }
      }

      return;
    }
  }

  [v3 CGRectValue];
  if (a2 == 1)
  {
    v20 = CGRect.rawValue.getter(v16, v17, v18, v19);
    v22 = v21;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v20, v21);

    outlined consume of Data._Representation(v20, v22);
  }

  else
  {

    CGRect.roundedHash(into:version:)(a1, a2);
  }
}

uint64_t protocol witness for PaperKitHashable.paperKitHashInto(_:version:visited:) in conformance NSString(uint64_t a1)
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;

  result = (*(v2 + 8))(v4, v1);
  if (v7 >> 60 != 15)
  {
    outlined copy of Data._Representation(v5, v7);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v5, v7);
    outlined consume of Data?(v5, v7);
    return outlined consume of Data?(v5, v7);
  }

  return result;
}

double NSDictionary.paperKitHashInto(_:version:includeAPPL:visited:)(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  v5 = v4;
  v50 = a2;
  v54 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for String.Encoding();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NSFastEnumerationIterator();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a4;
  if (specialized Set._Variant.insert(_:)(&v62, v5))
  {
    *&v55 = v11;
    v47 = v8;
    v56 = v5;
    v49 = [v5 keyEnumerator];
    NSEnumerator.makeIterator()();
    _s10Foundation25NSFastEnumerationIteratorVACStAAWlTm_0(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
    dispatch thunk of IteratorProtocol.next()();
    v15 = MEMORY[0x1E69E7CC0];
    while (*(&v63 + 1))
    {
      outlined init with take of Any(&v62, &v59);
      outlined init with copy of Any(&v59, v65);
      if (swift_dynamicCast())
      {
        v17 = v57;
        v16 = v58;
        if (a3)
        {
          __swift_destroy_boxed_opaque_existential_0(&v59);
LABEL_11:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          }

          v21 = *(v15 + 2);
          v20 = *(v15 + 3);
          if (v21 >= v20 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
          }

          *(v15 + 2) = v21 + 1;
          v22 = &v15[16 * v21];
          *(v22 + 4) = v17;
          *(v22 + 5) = v16;
          goto LABEL_5;
        }

        v18._countAndFlagsBits = 0x4C5041412FLL;
        v18._object = 0xE500000000000000;
        v19 = String.hasPrefix(_:)(v18);
        __swift_destroy_boxed_opaque_existential_0(&v59);
        if (!v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v59);
      }

LABEL_5:
      dispatch thunk of IteratorProtocol.next()();
    }

    (*(v55 + 8))(v13, v10);
    *&v62 = v15;

    specialized MutableCollection<>.sort(by:)(&v62);

    v48 = v62;
    v23 = *(v62 + 16);
    if (v23)
    {
      v24 = MEMORY[0x1E69E6158];
      v49 = (v47 + 8);
      v25 = (v48 + 40);
      v55 = xmmword_1D4058CF0;
      while (1)
      {
        v29 = *(v25 - 1);
        v30 = *v25;
        *&v62 = v29;
        *(&v62 + 1) = v30;
        swift_bridgeObjectRetain_n();
        v31 = [v56 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v31)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v62 = 0u;
          v63 = 0u;
        }

        v65[0] = v62;
        v65[1] = v63;
        if (v29 == 0x656D614E2FLL && v30 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          outlined init with copy of Date?(v65, &v62, &_sypSgMd, &_sypSgMR);
          if (*(&v63 + 1))
          {
            if (swift_dynamicCast())
            {
              if (v59 == __PAIR128__(0xE600000000000000, 0x74666172442FLL))
              {

LABEL_55:

                v26 = v65;
                v27 = &_sypSgMd;
                v28 = &_sypSgMR;
                goto LABEL_20;
              }

              v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v42)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(&v62, &_sypSgMd, &_sypSgMR);
          }
        }

        if (v29 == 5456431 && v30 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

LABEL_45:
        outlined init with copy of Date?(v65, &v62, &_sypSgMd, &_sypSgMR);
        if (*(&v63 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB8Hashable_pMd, &_s8PaperKit0aB8Hashable_pMR);
          if (swift_dynamicCast())
          {
            if (*(&v60 + 1))
            {
              outlined init with take of PaperKitHashable(&v59, &v62);
              v37 = v52;
              static String.Encoding.utf8.getter();
              v38 = String.data(using:allowLossyConversion:)();
              v40 = v39;

              (*v49)(v37, v53);
              if (v40 >> 60 != 15)
              {
                v41 = v40 >> 62;
                if ((v40 >> 62) > 1)
                {
                  if (v41 == 2)
                  {
                    v43 = *(v38 + 16);
                    v47 = *(v38 + 24);

                    if (__DataStorage._bytes.getter() && __OFSUB__(v43, __DataStorage._offset.getter()))
                    {
                      goto LABEL_74;
                    }

                    if (__OFSUB__(v47, v43))
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_68;
                  }

                  type metadata accessor for SHA256();
                  _s10Foundation25NSFastEnumerationIteratorVACStAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
                  *&v59 = 0;
                  *(&v59 + 6) = 0;
LABEL_67:
                  dispatch thunk of HashFunction.update(bufferPointer:)();
                  outlined consume of Data?(v38, v40);
                  outlined consume of Data?(v38, v40);
                }

                else
                {
                  if (!v41)
                  {
                    *&v59 = v38;
                    WORD4(v59) = v40;
                    BYTE10(v59) = BYTE2(v40);
                    BYTE11(v59) = BYTE3(v40);
                    BYTE12(v59) = BYTE4(v40);
                    BYTE13(v59) = BYTE5(v40);
                    type metadata accessor for SHA256();
                    _s10Foundation25NSFastEnumerationIteratorVACStAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
                    goto LABEL_67;
                  }

                  if (v38 >> 32 < v38)
                  {
                    __break(1u);
LABEL_73:
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    __break(1u);
                  }

                  v44 = __DataStorage._bytes.getter();
                  if (v44)
                  {
                    v47 = v44;
                    if (__OFSUB__(v38, __DataStorage._offset.getter()))
                    {
                      goto LABEL_75;
                    }
                  }

LABEL_68:
                  MEMORY[0x1DA6C8120]();
                  type metadata accessor for SHA256();
                  _s10Foundation25NSFastEnumerationIteratorVACStAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
                  dispatch thunk of HashFunction.update(bufferPointer:)();
                  outlined consume of Data?(v38, v40);
                  outlined consume of Data?(v38, v40);
                }
              }

              v45 = *(&v63 + 1);
              v46 = v64;
              __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
              (*(v46 + 8))(v54, v50, v51, v45, v46);
              outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_sypSgMd, &_sypSgMR);
              __swift_destroy_boxed_opaque_existential_0(&v62);
              goto LABEL_21;
            }
          }

          else
          {
            v61 = 0;
            v59 = 0u;
            v60 = 0u;
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_sypSgMd, &_sypSgMR);
        }

        else
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_sypSgMd, &_sypSgMR);

          outlined destroy of StocksKitCurrencyCache.Provider?(&v62, &_sypSgMd, &_sypSgMR);
          v59 = 0u;
          v60 = 0u;
          v61 = 0;
        }

        v26 = &v59;
        v27 = &_s8PaperKit0aB8Hashable_pSgMd;
        v28 = &_s8PaperKit0aB8Hashable_pSgMR;
LABEL_20:
        outlined destroy of StocksKitCurrencyCache.Provider?(v26, v27, v28);
LABEL_21:
        v25 += 2;
        if (!--v23)
        {
          goto LABEL_70;
        }
      }

      outlined init with copy of Date?(v65, &v62, &_sypSgMd, &_sypSgMR);
      if (*(&v63 + 1))
      {
        type metadata accessor for NSMutableDictionary();
        if (swift_dynamicCast())
        {
          v32 = v59;
          goto LABEL_41;
        }
      }

      else
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(&v62, &_sypSgMd, &_sypSgMR);
      }

      v32 = 0;
LABEL_41:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
      v33 = swift_allocObject();
      *(v33 + 16) = v55;
      *(v33 + 32) = 22319;
      *(v33 + 40) = 0xE200000000000000;
      *(v33 + 88) = MEMORY[0x1E69E6530];
      *(v33 + 56) = v24;
      *(v33 + 64) = 0;
      type metadata accessor for NSMutableDictionary();
      v34 = NSDictionary.init(dictionaryLiteral:)();
      v35 = v34;
      if (v32)
      {
        v36 = static NSObject.== infix(_:_:)();

        if (v36)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      goto LABEL_45;
    }

LABEL_70:
  }

  return result;
}

unint64_t _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_12CoreGraphics7CGFloatVTt1g5(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v5)
  {
    LOBYTE(v4) = 0;
    v3 = 1;
    goto LABEL_30;
  }

  if (v3 == 2047)
  {
    goto LABEL_42;
  }

  if (v3)
  {
    if (v3 > 0x43E)
    {
      goto LABEL_42;
    }

    v5 = v3 - 1023;
    v6 = __clz(__rbit64(v4));
    if (v4)
    {
      v7 = 52 - v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v8 = __clz(v4);
    v5 = -1011 - v8;
    v6 = __clz(__rbit64(v4));
    v7 = (v8 ^ 0x3F) - v6;
  }

  v3 = v5 >= v7;
  v9 = v7 + v6;
  v2 = v5 - v9;
  if (v9 > 63)
  {
    if (v2 < -64 || v2 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v2 < -64 || v2 > 64)
  {
    goto LABEL_16;
  }

  if (v2 < 0)
  {
    goto LABEL_37;
  }

  if (v2 != 64)
  {
    v4 <<= v2;
    if (v5 != 63)
    {
      goto LABEL_22;
    }

LABEL_39:
    if (a2 < 0.0 && !v4)
    {
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_16:
  if (v5 == 63)
  {
    if (a2 < 0.0)
    {
      LOBYTE(v4) = 0;
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

LABEL_42:
    v5 = 0;
    v3 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_30;
  }

  v2 = 0;
  v4 = 0;
  if (v5 < 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v2 = 1 << v5;
LABEL_25:
  while (1)
  {
    v5 = v4 | v2;
    if (a2 >= 0.0)
    {
      break;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      LOBYTE(v4) = 0;
      v5 = -v5;
      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v2 == -64)
    {
      goto LABEL_16;
    }

    v4 >>= -v2;
    if (v5 == 63)
    {
      goto LABEL_39;
    }

LABEL_22:
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v2 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  LOBYTE(v4) = 0;
LABEL_30:
  *a1 = v5;
  *(a1 + 8) = v4;
  return v3;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for NSMutableDictionary()
{
  result = lazy cache variable for type metadata for NSMutableDictionary;
  if (!lazy cache variable for type metadata for NSMutableDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableDictionary);
  }

  return result;
}

uint64_t specialized CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a1;
  v46 = a4;
  v47 = a8;
  v44 = a6;
  v45 = a7;
  v48 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = v12;
  v53 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMR);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - v24;
  static CRKeyPath.unique.getter();
  v56 = a5;
  v57 = v44;
  v58 = v45;
  v59 = v47;
  v60 = a9;
  v61 = a2;
  v47 = a2;
  v62 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SharedTagged_10<TaggedCanvasElement>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMd, &_s9Coherence10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0D13CanvasElementVGGMR, MEMORY[0x1E6995078]);
  Capsule.init(id:initClosure:)();
  if (v48)
  {
    (*(v23 + 32))(v20, v25, v22);
    (*(v23 + 56))(v20, 0, 1, v22);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
    (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  }

  else
  {
    (*(v23 + 8))(v25, v22);
    (*(v23 + 56))(v20, 1, 1, v22);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
    v28 = *(v27 - 8);
    (*(v28 + 16))(v15, v47, v27);
    (*(v28 + 56))(v15, 0, 1, v27);
  }

  v29 = v50;
  outlined init with take of Range<AttributedString.Index>(v20, v50, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR);
  v30 = v53;
  outlined init with take of Range<AttributedString.Index>(v15, v53, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  v31 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v32 = (v17 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v51 + 80) + v32 + 8) & ~*(v51 + 80);
  v34 = v33 + v52;
  v35 = (v33 + v52) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  outlined init with take of Range<AttributedString.Index>(v29, v36 + v31, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR);
  v37 = v55;
  *(v36 + v32) = v55;
  outlined init with take of Range<AttributedString.Index>(v30, v36 + v33, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  *(v36 + v34) = 1;
  v38 = v36 + v35;
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  v39 = (v54 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation);
  v40 = *(v54 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation);
  v41 = *(v54 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writePaperKitAnnotation + 8);
  *v39 = _s8PaperKit26CanvasElementPDFAnnotationC06encodeaB0_7capsule3ref9writeHash0I4Typey9Coherence9CRContextC_AI7CapsuleVyxGSgAI15SharedTagged_10VyAA0pcD0VGSgSbSSSgtAI4CRDTRzlFySo19NSMutableDictionaryCcfU_AI10CRRegisterVyATG_Tg5TA_0;
  v39[1] = v36;
  v42 = v37;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v40, v41);
}