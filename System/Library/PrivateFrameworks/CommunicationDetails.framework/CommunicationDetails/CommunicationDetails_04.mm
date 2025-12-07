double BlendedColor.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for BlendMode();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_BlendModeEffectVGMR);
  MEMORY[0x1EEE9AC00](v27);
  v17 = &v26 - v16;
  v28 = *v1;
  BlendedColor.colorScheme.getter(v9);
  (*(v4 + 32))(v6, v9, v3);
  v18 = (*(v4 + 88))(v6, v3);
  if (v18 == *MEMORY[0x1E697DBB8])
  {
    v19 = type metadata accessor for BlendedColor(0);
    outlined init with copy of BlendMode?(v1 + *(v19 + 20), v12, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  }

  else
  {
    v20 = v18;
    v26 = a1;
    v21 = *MEMORY[0x1E697DBA8];
    v22 = type metadata accessor for BlendedColor(0);
    if (v20 == v21)
    {
      outlined init with copy of BlendMode?(v1 + *(v22 + 24), v12, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
    }

    else
    {
      outlined init with copy of BlendMode?(v1 + *(v22 + 20), v12, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
      (*(v4 + 8))(v6, v3);
    }

    a1 = v26;
  }

  v23 = v29;
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {
    (*(v14 + 104))(v23, *MEMORY[0x1E6981DF0], v13);
    if (v24(v12, 1, v13) != 1)
    {
      outlined destroy of BlendMode?(v12, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
    }
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
  }

  (*(v14 + 32))(&v17[*(v27 + 36)], v23, v13);
  *v17 = v28;
  outlined init with take of BlendMode?(v17, a1, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_BlendModeEffectVGMR);

  return result;
}

uint64_t specialized static BlendedColor.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for BlendMode();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSg_ADtMd, "z_");
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39[-v18];
  if ((static Color.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v41 = v10;
  v42 = v7;
  v45 = v16;
  v20 = type metadata accessor for BlendedColor(0);
  v46 = v5;
  v43 = v20;
  v21 = *(v20 + 20);
  v22 = *(v14 + 48);
  outlined init with copy of BlendMode?(a1 + v21, v19, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  v44 = a2;
  v23 = a2 + v21;
  v24 = v46;
  outlined init with copy of BlendMode?(v23, &v19[v22], &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  v25 = *(v24 + 48);
  if (v25(v19, 1, v4) == 1)
  {
    if (v25(&v19[v22], 1, v4) == 1)
    {
      outlined destroy of BlendMode?(v19, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
      goto LABEL_9;
    }

LABEL_7:
    v26 = v19;
LABEL_15:
    outlined destroy of BlendMode?(v26, &_s7SwiftUI9BlendModeOSg_ADtMd, "z_");
    goto LABEL_16;
  }

  outlined init with copy of BlendMode?(v19, v13, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  if (v25(&v19[v22], 1, v4) == 1)
  {
    (*(v24 + 8))(v13, v4);
    goto LABEL_7;
  }

  v27 = v42;
  (*(v24 + 32))(v42, &v19[v22], v4);
  lazy protocol witness table accessor for type BlendMode and conformance BlendMode();
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v24 + 8);
  v28(v27, v4);
  v28(v13, v4);
  outlined destroy of BlendMode?(v19, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  if ((v40 & 1) == 0)
  {
LABEL_16:
    v33 = 0;
    return v33 & 1;
  }

LABEL_9:
  v29 = *(v43 + 24);
  v30 = *(v14 + 48);
  v31 = a1 + v29;
  v32 = v45;
  outlined init with copy of BlendMode?(v31, v45, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  outlined init with copy of BlendMode?(v44 + v29, v32 + v30, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  if (v25(v32, 1, v4) != 1)
  {
    v34 = v41;
    outlined init with copy of BlendMode?(v32, v41, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
    if (v25((v32 + v30), 1, v4) != 1)
    {
      v36 = v46;
      v37 = v42;
      (*(v46 + 32))(v42, v32 + v30, v4);
      lazy protocol witness table accessor for type BlendMode and conformance BlendMode();
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v36 + 8);
      v38(v37, v4);
      v38(v34, v4);
      outlined destroy of BlendMode?(v32, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
      return v33 & 1;
    }

    (*(v46 + 8))(v34, v4);
    goto LABEL_14;
  }

  if (v25((v32 + v30), 1, v4) != 1)
  {
LABEL_14:
    v26 = v32;
    goto LABEL_15;
  }

  outlined destroy of BlendMode?(v32, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  v33 = 1;
  return v33 & 1;
}

uint64_t outlined init with take of BlendMode?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata completion function for BlendedColor(uint64_t a1)
{
  type metadata accessor for BlendMode?(319, &lazy cache variable for type metadata for BlendMode?, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BlendMode?(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for BlendMode?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _BlendModeShapeStyle<Color> and conformance _BlendModeShapeStyle<A>()
{
  result = lazy protocol witness table cache variable for type _BlendModeShapeStyle<Color> and conformance _BlendModeShapeStyle<A>;
  if (!lazy protocol witness table cache variable for type _BlendModeShapeStyle<Color> and conformance _BlendModeShapeStyle<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMd, &_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BlendModeShapeStyle<Color> and conformance _BlendModeShapeStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_BlendModeEffectVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of BlendMode?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of BlendMode?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type BlendMode and conformance BlendMode()
{
  result = lazy protocol witness table cache variable for type BlendMode and conformance BlendMode;
  if (!lazy protocol witness table cache variable for type BlendMode and conformance BlendMode)
  {
    type metadata accessor for BlendMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendMode and conformance BlendMode);
  }

  return result;
}

Swift::Int DetailsTabBarView.SelectionView.Mode.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DetailsTabBarView.SelectionView.Mode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DetailsTabBarView.SelectionView.Mode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

uint64_t key path getter for DetailsTabBarView.SelectionView.isActive : DetailsTabBarView.SelectionView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsTabBarView.SelectionView.isActive.getter()
{
  v1 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void DetailsTabBarView.SelectionView.isActive.setter(char a1)
{
  v3 = a1 & 1;
  v4 = type metadata accessor for _Glass._GlassVariant();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for _Glass();
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_isActive;
  swift_beginAccess();
  v13 = *(v1 + v12);
  *(v1 + v12) = a1;
  if (v13 != v3 && *(v1 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_mode) != 1)
  {
    static _Glass._GlassVariant.clear.getter();
    _Glass._GlassVariant.adaptive(_:)();
    (*(v5 + 8))(v7, v4);
    _Glass.init(_:smoothness:)();
    v16[3] = v9;
    v16[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v16);
    _Glass.flexible(_:)();
    (*(v15 + 8))(v11, v9);
    UIView._background.setter();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void (*DetailsTabBarView.SelectionView.isActive.modify(uint64_t *a1))(uint64_t **a1, char a2, __n128 a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = type metadata accessor for _Glass._GlassVariant();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 88) = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 88) = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  *(v5 + 96) = v9;
  v10 = type metadata accessor for _Glass();
  *(v5 + 104) = v10;
  v11 = *(v10 - 8);
  *(v5 + 112) = v11;
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v13 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_isActive;
  *(v5 + 120) = v12;
  *(v5 + 128) = v13;
  swift_beginAccess();
  *(v5 + 136) = *(v1 + v13);
  return DetailsTabBarView.SelectionView.isActive.modify;
}

void DetailsTabBarView.SelectionView.isActive.modify(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 136);
  if (a2)
  {
    v5 = v3[15];
    v7 = v3[11];
    v6 = v3[12];
    DetailsTabBarView.SelectionView.isActive.setter(v4);
  }

  else
  {
    v8 = v3[16];
    v9 = v3[8];
    v10 = *(v9 + v8);
    *(v9 + v8) = v4;
    if (v4 != v10 && *(v3[8] + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_mode) != 1)
    {
      v12 = v3[14];
      v11 = v3[15];
      v13 = v3[13];
      v15 = v3[10];
      v14 = v3[11];
      v16 = v3[9];
      static _Glass._GlassVariant.clear.getter();
      _Glass._GlassVariant.adaptive(_:)();
      (*(v15 + 8))(v14, v16);
      _Glass.init(_:smoothness:)();
      v17 = MEMORY[0x1E69DC388];
      v3[3] = v13;
      v3[4] = v17;
      __swift_allocate_boxed_opaque_existential_1(v3);
      _Glass.flexible(_:)();
      (*(v12 + 8))(v11, v13);
      UIView._background.setter();
    }

    v5 = v3[15];
    v7 = v3[11];
    v6 = v3[12];
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t key path getter for DetailsTabBarView.SelectionView.contentView : DetailsTabBarView.SelectionView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsTabBarView.SelectionView.contentView : DetailsTabBarView.SelectionView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);
  v4 = *a1;
  return v3(v2);
}

void *DetailsTabBarView.SelectionView.contentView.getter()
{
  v1 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DetailsTabBarView.SelectionView.contentView.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_contentView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for UIView();
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = v5;
    }

    [v5 removeFromSuperview];
LABEL_7:
  }

  v10 = *&v2[v4];
  *&v2[v4] = a1;
  v11 = a1;

  v12 = *&v2[v4];
  if (!v12)
  {

    v12 = v5;
    goto LABEL_15;
  }

  if (!v5)
  {
    v15 = v12;
    goto LABEL_14;
  }

  type metadata accessor for UIView();
  v5 = v5;
  v13 = v12;
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
LABEL_14:
    [v2 insertSubview:v12 atIndex:0];
    [v2 setNeedsLayout];

    goto LABEL_15;
  }

  v12 = v13;
LABEL_15:
}

void (*DetailsTabBarView.SelectionView.contentView.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_contentView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DetailsTabBarView.SelectionView.contentView.modify;
}

void DetailsTabBarView.SelectionView.contentView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  if (a2)
  {
    if (v7)
    {
      if (v3)
      {
        type metadata accessor for UIView();
        v8 = v3;
        v9 = v7;
        v10 = v8;
        v11 = v9;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {

          goto LABEL_14;
        }
      }

      else
      {
        v17 = v7;
        v10 = 0;
      }

      [v7 removeFromSuperview];
    }

    else
    {
      v10 = v3;
    }

LABEL_14:
    v19 = v2[4];
    v18 = v2[5];
    v20 = *(v19 + v18);
    *(v19 + v18) = v3;
    v21 = v10;

    v22 = *(v19 + v18);
    if (!v22)
    {

      v21 = v7;
LABEL_30:

      v26 = *v4;
      goto LABEL_34;
    }

    if (v7)
    {
      type metadata accessor for UIView();
      v7 = v7;
      v23 = v22;
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {

LABEL_29:
        goto LABEL_30;
      }
    }

    else
    {
      v30 = v22;
    }

    v31 = v2[4];
    [v31 insertSubview:v22 atIndex:0];
    [v31 setNeedsLayout];

    goto LABEL_29;
  }

  if (!v7)
  {
    v16 = 0;
    goto LABEL_22;
  }

  if (v3)
  {
    type metadata accessor for UIView();
    v13 = v7;
    v14 = v3;
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v25 = v7;
  }

  [v7 removeFromSuperview];
LABEL_21:

  v6 = v2[4];
  v5 = v2[5];
  v16 = *(v6 + v5);
LABEL_22:
  *(v6 + v5) = v3;
  v26 = v3;

  v27 = *(v6 + v5);
  if (!v27)
  {

    v26 = v7;
    goto LABEL_34;
  }

  if (!v7)
  {
    v32 = v27;
    goto LABEL_32;
  }

  type metadata accessor for UIView();
  v7 = v7;
  v28 = v27;
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
LABEL_32:
    v33 = v2[4];
    [v33 insertSubview:v27 atIndex:0];
    [v33 setNeedsLayout];

    goto LABEL_33;
  }

LABEL_33:
LABEL_34:

  free(v2);
}

char *DetailsTabBarView.SelectionView.init(mode:)(char a1)
{
  v26 = type metadata accessor for _Glass._GlassVariant();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for _Glass();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_isActive] = 0;
  *&v1[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_punchoutView] = 0;
  *&v1[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_contentView] = 0;
  v1[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_mode] = a1 & 1;
  v9 = type metadata accessor for DetailsTabBarView.SelectionView();
  v28.receiver = v1;
  v28.super_class = v9;
  v10 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = [v10 layer];
  v12 = *MEMORY[0x1E69796E8];
  [v11 setCornerCurve_];

  if (a1)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v23 = v6;
    v14 = v13;
    v15 = [objc_opt_self() redColor];
    [v14 setBackgroundColor_];

    v16 = [v14 layer];
    [v16 setCompositingFilter_];

    v17 = [v14 layer];
    [v17 setCornerCurve_];

    [v10 addSubview_];
    v18 = *&v10[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_punchoutView];
    *&v10[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_punchoutView] = v14;
    v19 = v14;
    v6 = v23;
    v20 = v19;
  }

  else
  {
    v20 = v10;
    [v20 setClipsToBounds_];
  }

  [v10 setUserInteractionEnabled_];

  if ((v10[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_mode] & 1) == 0)
  {
    static _Glass._GlassVariant.clear.getter();
    _Glass._GlassVariant.adaptive(_:)();
    (*(v24 + 8))(v4, v26);
    _Glass.init(_:smoothness:)();
    v27[3] = v6;
    v27[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v27);
    _Glass.flexible(_:)();
    (*(v25 + 8))(v8, v6);
    UIView._background.setter();
  }

  return v10;
}

id DetailsTabBarView.SelectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DetailsTabBarView.SelectionView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_isActive) = 0;
  *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_punchoutView) = 0;
  *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_contentView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DetailsTabBarView.SelectionView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DetailsTabBarView.SelectionView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  if (v0[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_mode] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_punchoutView];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      [v3 setFrame_];
      v4 = [v3 layer];
      [v3 bounds];
      [v4 setCornerRadius_];
    }
  }
}

Swift::Bool __swiftcall DetailsTabBarView.SelectionView.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = inside.y;
  x = inside.x;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for DetailsTabBarView.SelectionView();
  if (objc_msgSendSuper2(&v10, sel_pointInside_withEvent_, isa, x, y))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))();
    if (v6)
    {
      v7 = v6;
      [v6 convertPoint:v2 fromCoordinateSpace:{x, y}];
      v8 = [v7 pointInside:isa withEvent:?];

      LOBYTE(v6) = v8;
    }
  }

  return v6;
}

id DetailsTabBarView.SelectionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DetailsTabBarView.SelectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsTabBarView.SelectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DetailsTabBarView.SelectionView.Mode and conformance DetailsTabBarView.SelectionView.Mode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetailsTabBarView.SelectionView.Mode and conformance DetailsTabBarView.SelectionView.Mode;
  if (!lazy protocol witness table cache variable for type DetailsTabBarView.SelectionView.Mode and conformance DetailsTabBarView.SelectionView.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsTabBarView.SelectionView.Mode and conformance DetailsTabBarView.SelectionView.Mode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsTabBarView.SelectionView.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsTabBarView.SelectionView.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int DetailsTabBarView.TabSegmentView.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DetailsTabBarView.TabSegmentView.Style()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DetailsTabBarView.TabSegmentView.Style(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type DetailsTab? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type DetailsTab? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
    lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsTab? and conformance <A> A?);
  }

  return result;
}

double key path getter for DetailsTabBarView.TabSegmentView.tab : DetailsTabBarView.TabSegmentView@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t key path setter for DetailsTabBarView.TabSegmentView.tab : DetailsTabBarView.TabSegmentView(uint64_t *a1, void **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x70);
  v8 = outlined copy of DetailsTab?(v10[0], v2, v3, v4, v5);
  return v7(v10, v8);
}

void DetailsTabBarView.TabSegmentView.tab.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))(&v15);
  v2 = v16;
  if (v16)
  {
    v3 = v17;
    v4 = v18;
    v5 = v15;
    v6 = v19;

    outlined consume of DetailsTab?(v5, v2, v3, v4, v6);
    (*(*v3 + 96))();
    v8 = v7;

    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 32))(ObjectType, v8);
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = MEMORY[0x193AEA8E0](v10, v12);
  }

  else
  {
    outlined consume of DetailsTab?(v15, 0, v17, v18, v19);
    v13 = 0;
  }

  [v1 setText_];
}

double DetailsTabBarView.TabSegmentView.tab.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return result;
}

void DetailsTabBarView.TabSegmentView.tab.setter(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static UIView.Invalidating.subscript.setter();
  DetailsTabBarView.TabSegmentView.tab.didset();
}

void (*DetailsTabBarView.TabSegmentView.tab.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return DetailsTabBarView.TabSegmentView.tab.modify;
}

void DetailsTabBarView.TabSegmentView.tab.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[5] = v4;
  v9 = v3[10];
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = v7;
  v3[9] = v8;
  v9;
  if (a2)
  {
    outlined copy of DetailsTab?(v4, v5, v6, v7, v8);
    static UIView.Invalidating.subscript.setter();
    DetailsTabBarView.TabSegmentView.tab.didset();
    outlined consume of DetailsTab?(*v3, v3[1], v3[2], v3[3], v3[4]);
  }

  else
  {
    static UIView.Invalidating.subscript.setter();
    DetailsTabBarView.TabSegmentView.tab.didset();
  }

  free(v3);
}

uint64_t key path getter for DetailsTabBarView.TabSegmentView.style : DetailsTabBarView.TabSegmentView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsTabBarView.TabSegmentView.style.getter()
{
  v1 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_style;
  swift_beginAccess();
  return *(v0 + v1);
}

void DetailsTabBarView.TabSegmentView.style.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_style;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  if (v4 != (a1 & 1))
  {
    DetailsTabBarView.TabSegmentView.updateStyle()();
  }
}

void (*DetailsTabBarView.TabSegmentView.style.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DetailsTabBarView.TabSegmentView.style.modify;
}

void DetailsTabBarView.TabSegmentView.style.modify(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (v5 != v6)
  {
    DetailsTabBarView.TabSegmentView.updateStyle()();
  }

  free(v2);
}

id DetailsTabBarView.TabSegmentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DetailsTabBarView.TabSegmentView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for UIView.Invalidations.Layout();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_20CommunicationDetails0E3TabVSgAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_20CommunicationDetails0E3TabVSgAbCE13InvalidationsO6LayoutVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v15 setTextAlignment_];
  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setUserInteractionEnabled_];
  *&v4[v14] = v15;
  v16 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView__tab;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
  lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v11 + 32))(&v4[v16], v13, v10);
  v4[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_style] = 0;
  v17 = type metadata accessor for DetailsTabBarView.TabSegmentView(0);
  v22.receiver = v4;
  v22.super_class = v17;
  v18 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = *&v18[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label];
  v20 = v18;
  [v20 addSubview_];
  DetailsTabBarView.TabSegmentView.updateStyle()();

  return v20;
}

id DetailsTabBarView.TabSegmentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall DetailsTabBarView.TabSegmentView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsTabBarView.TabSegmentView(0);
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label];
  [v0 bounds];
  [v1 setFrame_];
  [v1 setIsAccessibilityElement_];
}

void DetailsTabBarView.TabSegmentView.updateStyle()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))())
  {
    v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd, &_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1901E6CD0;
    v3 = *MEMORY[0x1E69DB8F0];
    *(inited + 32) = *MEMORY[0x1E69DB8F0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd, &_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMR);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1901E6CD0;
    v5 = *MEMORY[0x1E69DB990];
    *(v4 + 32) = *MEMORY[0x1E69DB990];
    *(v4 + 40) = *MEMORY[0x1E69DB980];
    v6 = v3;
    v7 = v5;
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v4);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(v4 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMR);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd, &_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMR);
    *(inited + 40) = v8;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_nTm(inited, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMR, &_sSo29UIFontDescriptorAttributeNamea_yptMd, &_sSo29UIFontDescriptorAttributeNamea_yptMR);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd, &_sSo29UIFontDescriptorAttributeNamea_yptMR);
    type metadata accessor for UIFontDescriptorAttributeName(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = [v1 fontDescriptorByAddingAttributes_];

    v11 = *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label);
    v12 = v10;
    [v12 pointSize];
    v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

    [v11 setFont_];
    v15 = [objc_opt_self() labelColor];
    [v11 setTextColor_];
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label);
    v17 = [objc_opt_self() preferredFontForTextStyle_];
    [v16 setFont_];

    v18 = [objc_opt_self() secondaryLabelColor];
    [v16 setTextColor_];
  }
}

uint64_t type metadata accessor for DetailsTabBarView.TabSegmentView(uint64_t a1)
{
  result = type metadata singleton initialization cache for DetailsTabBarView.TabSegmentView;
  if (!type metadata singleton initialization cache for DetailsTabBarView.TabSegmentView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetailsTabBarView.TabSegmentView.accessibilityLabel.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id DetailsTabBarView.TabSegmentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsTabBarView.TabSegmentView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x193AEA8E0](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x193AE9490](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x193AE94A0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x193AEA990](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName(uint64_t a1)
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x193AEA8E0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorTraitKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey, &protocol conformance descriptor for UIFontDescriptorTraitKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey, &protocol conformance descriptor for UIFontDescriptorTraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance UIFontWeight@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight(uint64_t a1)
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight, &protocol conformance descriptor for UIFontWeight);
  v1 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight, &protocol conformance descriptor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v1, v2, v3);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AEB280](*&v1);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaSo0C6WeightaGMd, &_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaSo0C6WeightaGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void specialized DetailsTabBarView.TabSegmentView.init(coder:)()
{
  v1 = type metadata accessor for UIView.Invalidations.Layout();
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_20CommunicationDetails0E3TabVSgAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_20CommunicationDetails0E3TabVSgAbCE13InvalidationsO6LayoutVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - v4;
  v6 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v7 setTextAlignment_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setUserInteractionEnabled_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView__tab;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
  lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v3 + 32))(v0 + v8, v5, v2);
  *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_style) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      outlined init with copy of (NSAttributedStringKey, Any)(v10, &v17, a4, a5);
      v11 = v17;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = outlined init with take of Any(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

double specialized DetailsTabBarView.TabSegmentView.sizeThatFits(_:)()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))(&v29);
  v4 = v30;
  if (v30)
  {
    v5 = v31;
    v6 = v32;
    v7 = v29;
    v8 = v33;

    outlined consume of DetailsTab?(v7, v4, v5, v6, v8);
    (*(*v5 + 96))();
    v10 = v9;

    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 32))(ObjectType, v10);
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    outlined consume of DetailsTab?(v29, 0, v31, v32, v33);
    v14 = 0xE100000000000000;
    v12 = 88;
  }

  if (v2 == 5)
  {
    v15 = -6.0;
  }

  else
  {
    v15 = -8.0;
  }

  if (v2 == 5)
  {
    v16 = -10.0;
  }

  else
  {
    v16 = -14.0;
  }

  v17 = MEMORY[0x193AEA8E0](v12, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, ">^");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1901E6CD0;
  v19 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = type metadata accessor for UIFont();
  *(inited + 40) = v3;
  v20 = v19;
  v21 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_nTm(inited, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(inited + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v17 sizeWithAttributes_];
  v24 = v23;
  v26 = v25;

  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = v24;
  v34.size.height = v26;
  v35 = CGRectInset(v34, v16, v15);
  width = v35.size.width;

  return width;
}

unint64_t lazy protocol witness table accessor for type DetailsTabBarView.TabSegmentView.Style and conformance DetailsTabBarView.TabSegmentView.Style(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetailsTabBarView.TabSegmentView.Style and conformance DetailsTabBarView.TabSegmentView.Style;
  if (!lazy protocol witness table cache variable for type DetailsTabBarView.TabSegmentView.Style and conformance DetailsTabBarView.TabSegmentView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsTabBarView.TabSegmentView.Style and conformance DetailsTabBarView.TabSegmentView.Style);
  }

  return result;
}

void type metadata completion function for DetailsTabBarView.TabSegmentView(uint64_t a1)
{
  type metadata accessor for UIView.Invalidating<DetailsTab?, UIView.Invalidations.Layout>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UIView.Invalidating<DetailsTab?, UIView.Invalidations.Layout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIView.Invalidating<DetailsTab?, UIView.Invalidations.Layout>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
    type metadata accessor for UIView.Invalidations.Layout();
    lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?();
    v1 = type metadata accessor for UIView.Invalidating();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIView.Invalidating<DetailsTab?, UIView.Invalidations.Layout>);
    }
  }
}

uint64_t getEnumTagSinglePayload for DetailsTabBarView.TabSegmentView.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsTabBarView.TabSegmentView.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t type metadata accessor for UIFont()
{
  result = lazy cache variable for type metadata for UIFont;
  if (!lazy cache variable for type metadata for UIFont)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFont);
  }

  return result;
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of (NSAttributedStringKey, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for NSAttributedStringKey(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

double key path getter for DetailsTabBarView.TabsView.accessibilitySelectedTab : DetailsTabBarView.TabsView@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t key path setter for DetailsTabBarView.TabsView.accessibilitySelectedTab : DetailsTabBarView.TabsView(uint64_t *a1, void **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x80);
  v8 = outlined copy of DetailsTab?(v10[0], v2, v3, v4, v5);
  return v7(v10, v8);
}

uint64_t DetailsTabBarView.TabsView.accessibilitySelectedTab.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
  if (v1 >> 62)
  {
    goto LABEL_40;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v1 & 0xC000000000000001;
    v21 = *MEMORY[0x1E69DD9B8] & *MEMORY[0x1E69DDA08];
    v22 = *MEMORY[0x1E69DDA08];
    v27 = *MEMORY[0x1E69DD9B8];
    v20 = *MEMORY[0x1E69DD9B8] | *MEMORY[0x1E69DDA08];
    v23 = v2;
    do
    {
      if (v25)
      {
        v6 = MEMORY[0x193AEB000](v3, v1);
      }

      else
      {
        if (v3 >= *(v24 + 16))
        {
          goto LABEL_39;
        }

        v6 = *(v1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        if (v1 < 0)
        {
          v19 = v1;
        }

        else
        {
          v19 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        v2 = MEMORY[0x193AEB0F0](v19);
        goto LABEL_3;
      }

      type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v10 = v1;
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x68))(&v28, isCurrentExecutor);
      v11 = v28;
      v12 = v29;
      if (v29)
      {

        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      outlined consume of DetailsTab?(v11, v12, v30, v31, v32);
      (*((*MEMORY[0x1E69E7D40] & *v26) + 0x78))(&v28);
      v15 = v28;
      v14 = v29;
      if (v29)
      {

        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      outlined consume of DetailsTab?(v15, v14, v30, v31, v32);
      if (v12)
      {
        if (!v14)
        {
          v1 = v10;
          v4 = v23;
LABEL_6:

          v5 = v27;
          goto LABEL_7;
        }

        if (v12 == v14 && v13 == v16)
        {

          v1 = v10;
          v4 = v23;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v27;
          v1 = v10;
          v4 = v23;
          if ((v17 & 1) == 0)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v1 = v10;
        v4 = v23;
        if (v14)
        {
          goto LABEL_6;
        }
      }

      v5 = v22;
      if (!v22)
      {
        if (!v27)
        {
          v5 = 0;
          goto LABEL_7;
        }

LABEL_32:
        v5 = v20;
        goto LABEL_7;
      }

      if (v21 != v27)
      {
        goto LABEL_32;
      }

LABEL_7:
      [v7 setAccessibilityTraits_];

      ++v3;
    }

    while (v8 != v4);
  }
}

double DetailsTabBarView.TabsView.accessibilitySelectedTab.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_accessibilitySelectedTab);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return outlined copy of DetailsTab?(v4, v5, v6, v7, v8);
}

uint64_t DetailsTabBarView.TabsView.accessibilitySelectedTab.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_accessibilitySelectedTab);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v10;
  v4[4] = v3;
  outlined consume of DetailsTab?(v5, v6, v7, v8, v9);
  return DetailsTabBarView.TabsView.accessibilitySelectedTab.didset();
}

uint64_t (*DetailsTabBarView.TabsView.accessibilitySelectedTab.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DetailsTabBarView.TabsView.accessibilitySelectedTab.modify;
}

uint64_t key path getter for DetailsTabBarView.TabsView.tabs : DetailsTabBarView.TabsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsTabBarView.TabsView.tabs : DetailsTabBarView.TabsView(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);

  return v2(v3);
}

id DetailsTabBarView.TabsView.tabs.didset()
{
  v1 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabs;
  swift_beginAccess();
  v32 = v0;
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_30:
    DetailsTabBarView.TabsView.tabViews.setter(v4);
    return [v32 setNeedsLayout];
  }

  v34 = MEMORY[0x1E69E7CC0];

  result = specialized ContiguousArray.reserveCapacity(_:)();
  v6 = 0;
  v30 = v2;
  v31 = *(v2 + 16);
  v28 = *MEMORY[0x1E69DDA08];
  v29 = v3;
  v7 = (v2 + 64);
  while (v31 != v6)
  {
    if (v6 >= *(v2 + 16))
    {
      goto LABEL_32;
    }

    v9 = *(v7 - 4);
    v10 = *(v7 - 3);
    v33 = *(v7 - 1);
    v11 = *v7;
    type metadata accessor for MainActor();

    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews;
    v13 = *(v32 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v27 = *(v32 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
      }

      else
      {
        v27 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x193AEB0F0](v27);
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result <= v6)
    {
      type metadata accessor for DetailsTabBarView.TabSegmentView(0);
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_16:
      v16 = v15;
      goto LABEL_17;
    }

    v14 = *(v32 + v12);
    if ((v14 & 0xC000000000000001) == 0)
    {
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v6)
      {
        goto LABEL_33;
      }

      v15 = *(v14 + 8 * v6 + 32);
      goto LABEL_16;
    }

    v16 = MEMORY[0x193AEB000](v6, v14);

LABEL_17:
    v35 = v9;
    v36 = v10;
    v37 = v33;
    v38 = v11;
    v17 = MEMORY[0x1E69E7D40];
    v18 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x70);

    v19 = v18(&v35);
    v20 = (*((*v17 & *v32) + 0xC0))(v19);
    v21 = (*((*v17 & *v16) + 0x88))(v20 & 1);
    (*((*v17 & *v32) + 0x78))(&v35, v21);
    v23 = v35;
    v22 = v36;
    v24 = v37;
    v25 = v38;
    if (v36)
    {

      outlined consume of DetailsTab?(v23, v22, v24, *(&v24 + 1), v25);
      if (v9 == v23 && v10 == v22)
      {

        v8 = v29;
        v2 = v30;
        goto LABEL_22;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = v29;
      v2 = v30;
      if (v26)
      {
LABEL_22:
        [v16 setAccessibilityTraits_];
      }

      goto LABEL_4;
    }

    outlined consume of DetailsTab?(v35, 0, v37, *(&v37 + 1), v38);

    v8 = v29;
    v2 = v30;
LABEL_4:
    ++v6;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    v7 += 5;
    if (v8 == v6)
    {

      v4 = v34;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

id DetailsTabBarView.TabsView.tabs.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabs;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return DetailsTabBarView.TabsView.tabs.didset();
}

uint64_t (*DetailsTabBarView.TabsView.tabs.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DetailsTabBarView.TabsView.tabs.modify;
}

uint64_t DetailsTabBarView.TabsView.accessibilitySelectedTab.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

double key path getter for DetailsTabBarView.TabsView.configuration : DetailsTabBarView.TabsView@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t key path setter for DetailsTabBarView.TabsView.configuration : DetailsTabBarView.TabsView(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xB0))(v4);
}

__n128 DetailsTabBarView.TabsView.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_configuration;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t DetailsTabBarView.TabsView.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_configuration];
  v5 = swift_beginAccess();
  v6 = v4[32];
  v7 = *v4;
  v8 = *(v4 + 1);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v9;
  v4[32] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  LOBYTE(v15) = v6;
  lazy protocol witness table accessor for type DetailsTabBarView.Configuration and conformance DetailsTabBarView.Configuration(v5, v10, v11);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    return [v2 setNeedsLayout];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsTabBarView.Configuration and conformance DetailsTabBarView.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetailsTabBarView.Configuration and conformance DetailsTabBarView.Configuration;
  if (!lazy protocol witness table cache variable for type DetailsTabBarView.Configuration and conformance DetailsTabBarView.Configuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsTabBarView.Configuration and conformance DetailsTabBarView.Configuration);
  }

  return result;
}

void (*DetailsTabBarView.TabsView.configuration.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_configuration;
  *(v3 + 144) = v1;
  *(v3 + 152) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  *v4 = *v6;
  *(v4 + 16) = v8;
  *(v4 + 32) = v7;
  return DetailsTabBarView.TabsView.configuration.modify;
}

void DetailsTabBarView.TabsView.configuration.modify(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[18] + (*a1)[19];
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = *(*a1 + 32);
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;
  v11 = *v4;
  v12 = *(v4 + 16);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  v3[8] = v8;
  *(v3 + 72) = v9;
  *(v3 + 5) = v11;
  *(v3 + 6) = v12;
  *(v3 + 112) = v10;
  lazy protocol witness table accessor for type DetailsTabBarView.Configuration and conformance DetailsTabBarView.Configuration(a1, a2, a3);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    [v3[18] setNeedsLayout];
  }

  free(v3);
}

uint64_t key path getter for DetailsTabBarView.TabsView.tabsStyle : DetailsTabBarView.TabsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsTabBarView.TabsView.tabsStyle.getter()
{
  v1 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabsStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DetailsTabBarView.TabsView.tabsStyle.setter(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabsStyle;
  v5 = swift_beginAccess();
  *(v2 + v4) = a1 & 1;
  lazy protocol witness table accessor for type DetailsTabBarView.TabSegmentView.Style and conformance DetailsTabBarView.TabSegmentView.Style(v5, v6, v7);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    return result;
  }

  v9 = *(v2 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v15 = *(v2 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
    }

    else
    {
      v15 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x193AEB0F0](v15);
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {

    v11 = 0;
    v12 = MEMORY[0x1E69E7D40];
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x193AEB000](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      ++v11;
      (*((*v12 & *v13) + 0x88))(*(v2 + v4));
    }

    while (v10 != v11);
  }

  return result;
}

void (*DetailsTabBarView.TabsView.tabsStyle.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2, uint64_t a3)
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
  v5 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabsStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DetailsTabBarView.TabsView.tabsStyle.modify;
}

void DetailsTabBarView.TabsView.tabsStyle.modify(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  v8 = *(v6 + v5);
  *(v6 + v5) = v7;
  *(v4 + 41) = v7;
  *(v4 + 42) = v8;
  lazy protocol witness table accessor for type DetailsTabBarView.TabSegmentView.Style and conformance DetailsTabBarView.TabSegmentView.Style(a1, a2, a3);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v3)
  {
    if ((v9 & 1) == 0)
    {
      v10 = *(*(v4 + 24) + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
      if (v10 >> 62)
      {
        if (v10 < 0)
        {
          v22 = *(*(v4 + 24) + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
        }

        else
        {
          v22 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v11 = MEMORY[0x193AEB0F0](v22);
        if (!v11)
        {
          goto LABEL_21;
        }

        goto LABEL_5;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_5:
        if (v11 >= 1)
        {

          v12 = 0;
          v13 = MEMORY[0x1E69E7D40];
          do
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x193AEB000](v12, v10);
            }

            else
            {
              v14 = *(v10 + 8 * v12 + 32);
            }

            v15 = v14;
            ++v12;
            (*((*v13 & *v14) + 0x88))(*(*(v4 + 24) + *(v4 + 32)));
          }

          while (v11 != v12);
LABEL_20:

          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_35;
      }
    }
  }

  else if ((v9 & 1) == 0)
  {
    v16 = *(*(v4 + 24) + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v23 = *(*(v4 + 24) + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
      }

      else
      {
        v23 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = MEMORY[0x193AEB0F0](v23);
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    if (v17 >= 1)
    {

      v18 = 0;
      v19 = MEMORY[0x1E69E7D40];
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x193AEB000](v18, v16);
        }

        else
        {
          v20 = *(v16 + 8 * v18 + 32);
        }

        v21 = v20;
        ++v18;
        (*((*v19 & *v20) + 0x88))(*(*(v4 + 24) + *(v4 + 32)));
      }

      while (v17 != v18);
      goto LABEL_20;
    }

LABEL_35:
    __break(1u);
    return;
  }

LABEL_21:

  free(v4);
}

uint64_t DetailsTabBarView.TabsView.tabViews.setter(uint64_t result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews;
  v4 = *(v1 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v9 = *(v1 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);
    }

    else
    {
      v9 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x193AEB0F0](v9);
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:

    goto LABEL_17;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v19 = v3;
  swift_bridgeObjectRetain_n();
  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193AEB000](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    v21 = v7;
    MEMORY[0x1EEE9AC00](v7);
    v18 = &v21;
    if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v17, v2) & 1) == 0)
    {
      [v8 removeFromSuperview];
    }
  }

  v3 = v19;
LABEL_17:
  v10 = v20;
  *&v20[v3] = v2;

  v11 = *&v10[v3];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_19;
    }
  }

  if (v11 < 0)
  {
    v16 = *&v10[v3];
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x193AEB0F0](v16);
  v12 = result;
  if (!result)
  {
  }

LABEL_19:
  if (v12 >= 1)
  {

    for (j = 0; j != v12; ++j)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AEB000](j, v11);
      }

      else
      {
        v14 = *(v11 + 8 * j + 32);
      }

      v15 = v14;
      v21 = v14;
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v21;
      if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v17, v4) & 1) == 0)
      {
        [v20 addSubview_];
      }
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

id DetailsTabBarView.TabsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DetailsTabBarView.TabsView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_accessibilitySelectedTab];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabs] = MEMORY[0x1E69E7CC0];
  v11 = &v4[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_configuration];
  memset(v18, 0, sizeof(v18));
  v19 = 1;
  DetailsTabBarView.Configuration.init(preferredLayoutMargins:)(v18, v16);
  v12 = v16[1];
  *v11 = v16[0];
  *(v11 + 1) = v12;
  v11[32] = v17;
  v4[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabsStyle] = 0;
  *&v4[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for DetailsTabBarView.TabsView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setPreservesSuperviewLayoutMargins_];
  return v13;
}

id DetailsTabBarView.TabsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DetailsTabBarView.TabsView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_accessibilitySelectedTab;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabs) = MEMORY[0x1E69E7CC0];
  v3 = v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_configuration;
  memset(v7, 0, sizeof(v7));
  v8 = 1;
  DetailsTabBarView.Configuration.init(preferredLayoutMargins:)(v7, v5);
  v4 = v5[1];
  *v3 = v5[0];
  *(v3 + 16) = v4;
  *(v3 + 32) = v6;
  *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabsStyle) = 0;
  *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t specialized Sequence.reversed()(uint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v1 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_3:
  if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
  {
    v2 = *(v1 + 16);
    v3 = v2 >> 1;
    goto LABEL_6;
  }

  while (1)
  {
    a1 = MEMORY[0x193AEB0F0](v1);
    if (a1 < -1)
    {
      __break(1u);
LABEL_42:

      v1 = MEMORY[0x1E69E7CC0];
      goto LABEL_3;
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x193AEB000]();
          v11 = MEMORY[0x193AEB000](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v18 = a1;
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v19 = MEMORY[0x193AEB0F0](a1);
    if (!v19)
    {
      goto LABEL_42;
    }

    v20 = v19;
    v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails0I10TabBarViewC0j7SegmentL0C_Tt1g5(v19, 0);
    specialized Array._copyContents(initializing:)(v1 + 32, v20, v18);
    v22 = v21;

    if (v22 == v20)
    {
      goto LABEL_3;
    }

    __break(1u);
  }
}

Swift::Void __swiftcall DetailsTabBarView.TabsView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DetailsTabBarView.TabsView();
  v1 = objc_msgSendSuper2(&v19, sel_layoutSubviews);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))(v20, v1);
  if (v21)
  {
    [v0 layoutMargins];
    v3 = v2;
  }

  else
  {
    v3 = *&v20[1];
  }

  v4 = [v0 traitCollection];
  v5 = [v4 layoutDirection];

  v6 = *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);

  if (v5 == 1)
  {
    v6 = specialized Sequence.reversed()(v6);
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_18:

    return;
  }

  if (v6 < 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = MEMORY[0x193AEB0F0](v18);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AEB000](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      [v0 bounds];
      [v10 sizeThatFits_];
      v14 = v13;
      v15 = v3 + v13 * 0.5;
      [v0 bounds];
      MidY = CGRectGetMidY(v22);
      v3 = v3 + v14;
      v17 = v10;
      [v17 bounds];
      [v17 setBounds_];
      [v17 setCenter_];
    }

    while (v7 != v8);
    goto LABEL_18;
  }

  __break(1u);
}

void DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)(uint64_t *a1@<X0>, char a2@<W1>, unint64_t a3@<X8>)
{
  v4 = 0uLL;
  v5 = 0.0;
  v50 = a1[1];
  if (v50)
  {
    v44 = *a1;
    v6 = a1[2];
    v46 = a1[3];
    v7 = a1[4];
    v8 = *((*MEMORY[0x1E69E7D40] & *v51) + 0xA8);

    v45 = v6;

    v47 = v7;

    v8(v61, v9);
    if (v62)
    {
      [v51 layoutMargins];
      v11 = v10;
    }

    else
    {
      v11 = *&v61[1];
    }

    v14 = [v51 traitCollection];
    v15 = [v14 layoutDirection];

    v16 = *(v51 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);

    if (v15 == 1)
    {
      v16 = specialized Sequence.reversed()(v16);
    }

    if (v16 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x193AEB0F0](v36))
    {
      v37 = a3;
      a3 = 0;
      v41 = v16;
      v42 = v16 & 0xC000000000000001;
      v38 = v16 & 0xFFFFFFFFFFFFFF8;
      v5 = 0.5;
      v40 = i;
      while (1)
      {
        if (v42)
        {
          v20 = MEMORY[0x193AEB000](a3, v16);
        }

        else
        {
          if (a3 >= *(v38 + 16))
          {
            goto LABEL_25;
          }

          v20 = *(v16 + 8 * a3 + 32);
        }

        v21 = v20;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        v53 = a3 + 1;
        v54 = a3;
        [v51 bounds];
        v24 = [v21 sizeThatFits_];
        v55 = v25;
        v39 = v26;
        MidY = 0.0;
        v27 = 0.0;
        if ((a2 & 1) == 0)
        {
          v27 = v25 * 0.5;
          [v51 bounds];
          MidY = CGRectGetMidY(v63);
        }

        (*((*MEMORY[0x1E69E7D40] & *v21) + 0x68))(&v56, v24);
        v29 = v56;
        v28 = v57;
        v30 = v58;
        if (v57)
        {
          v52 = v58;
          v31 = v59;
          v32 = v60;
          v48 = v60;
          outlined copy of DetailsTab?(v44, v50, v45, v46, v47);
          outlined copy of DetailsTab?(v44, v50, v45, v46, v47);
          outlined copy of DetailsTab?(v29, v28, v52, v31, v32);
          outlined copy of DetailsTab?(v29, v28, v52, v31, v32);
          lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v33, v34, v35);
          v49 = dispatch thunk of static Equatable.== infix(_:_:)();

          outlined consume of DetailsTab?(v44, v50, v45, v46, v47);
          outlined consume of DetailsTab?(v29, v28, v52, v31, v48);

          outlined consume of DetailsTab?(v29, v28, v52, v31, v48);
          if (v49)
          {
            v5 = v11 + v27;
            outlined consume of DetailsTab?(v44, v50, v45, v46, v47);

            v12 = 0;
            *&v4 = v55;
            *(&v4 + 1) = v39;
            a3 = v37;
            goto LABEL_32;
          }
        }

        else
        {
          v18 = v59;
          v19 = v60;
          outlined copy of DetailsTab?(v44, v50, v45, v46, v47);

          outlined consume of DetailsTab?(v29, 0, v30, v18, v19);
          outlined consume of DetailsTab?(v44, v50, v45, v46, v47);
        }

        v11 = v11 + v55;
        a3 = v54 + 1;
        v16 = v41;
        if (v53 == v40)
        {

          outlined consume of DetailsTab?(v44, v50, v45, v46, v47);
          v12 = 1;
          v5 = 0.0;
          MidY = 0.0;
          a3 = v37;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      if (v16 < 0)
      {
        v36 = v16;
      }

      else
      {
        v36 = v16 & 0xFFFFFFFFFFFFFF8;
      }
    }

    outlined consume of DetailsTab?(v44, v50, v45, v46, v47);
    v12 = 1;
    MidY = 0.0;
LABEL_31:
    v4 = 0uLL;
  }

  else
  {
    v12 = 1;
    MidY = 0.0;
  }

LABEL_32:
  *a3 = v5;
  *(a3 + 8) = MidY;
  *(a3 + 16) = v4;
  *(a3 + 32) = v12;
}

void DetailsTabBarView.TabsView.tab(at:offsetForContentOffset:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA8))(v34);
  if (v35)
  {
    [v4 layoutMargins];
    v9 = v8;
  }

  else
  {
    v9 = *&v34[1];
  }

  v10 = [v4 traitCollection];
  v11 = [v10 layoutDirection];

  v12 = *(v4 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);

  if (v11 == 1)
  {
    v12 = specialized Sequence.reversed()(v12);
  }

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_23:

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

LABEL_29:
  if (v12 < 0)
  {
    v31 = v12;
  }

  else
  {
    v31 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = MEMORY[0x193AEB0F0](v31);
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_8:
  v14 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x193AEB000](v14, v12);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v15 = *(v12 + 8 * v14 + 32);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v33 = v15;
    [v4 bounds];
    [v33 sizeThatFits_];
    v20 = v19;
    v22 = v21;
    v23 = v19 * 0.5;
    v24 = v9 + v19 * 0.5;
    [v4 bounds];
    v25 = CGRectGetMidY(v37) - v22 * 0.5;
    v26 = (a1 & 1) != 0 ? v23 + a3 : a3;
    v27 = (a1 & 1) != 0 ? v22 * 0.5 + a4 : a4;
    v28 = v24 - v23;
    v29 = v20;
    v30 = v22;
    if (CGRectContainsPoint(*(&v25 - 1), *&v26))
    {
      break;
    }

    v9 = v9 + v20;
    ++v14;
    if (v16 == v13)
    {
      goto LABEL_23;
    }
  }

  (*((*MEMORY[0x1E69E7D40] & *v33) + 0x68))();
}

id DetailsTabBarView.TabsView.preview(for:)(uint64_t *a1)
{
  v33 = *a1;
  v34 = a1[1];
  v2 = a1[2];
  v32 = a1[3];
  v35 = a1[4];
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  v5 = *&v1[OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews];

  if (v4 == 1)
  {
    v5 = specialized Sequence.reversed()(v5);
  }

  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x193AEB0F0](v25))
  {
    v7 = 0;
    v30 = v5;
    v31 = v5 & 0xC000000000000001;
    v26 = v5 & 0xFFFFFFFFFFFFFF8;
    v27 = v2;
    v29 = i;
    while (1)
    {
      if (v31)
      {
        v10 = MEMORY[0x193AEB000](v7, v5);
      }

      else
      {
        if (v7 >= *(v26 + 16))
        {
          goto LABEL_24;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      (*((*MEMORY[0x1E69E7D40] & *v10) + 0x68))(&v36);
      v14 = v36;
      v13 = v37;
      v16 = v38;
      v15 = v39;
      v17 = v40;
      if (!v37)
      {
        v8 = v34;
        if (!v34)
        {

          outlined consume of DetailsTab?(v14, 0, v16, v15, v17);
          goto LABEL_22;
        }

        v9 = v17;
        goto LABEL_7;
      }

      if (!v34)
      {
        v8 = 0;

        outlined copy of DetailsTab?(v14, v13, v16, v15, v17);

        v9 = v17;

        v2 = v27;

LABEL_7:
        v5 = v30;
        outlined consume of DetailsTab?(v14, v13, v16, v15, v9);
        outlined consume of DetailsTab?(v33, v8, v2, v32, v35);
        goto LABEL_8;
      }

      v18 = v40;
      v28 = v40;

      outlined copy of DetailsTab?(v14, v13, v16, v15, v18);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v19, v20, v21);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();

      outlined consume of DetailsTab?(v14, v13, v16, v15, v28);
      if (v22)
      {

LABEL_22:
        v23 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];

        return v23;
      }

      v2 = v27;
      v5 = v30;
LABEL_8:
      ++v7;
      if (v12 == v29)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (v5 < 0)
    {
      v25 = v5;
    }

    else
    {
      v25 = v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_29:

  return 0;
}

id DetailsTabBarView.TabsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsTabBarView.TabsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AEB000](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AEB000](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AEB000](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance [A]specialized (id *a1)
{
}

{
}

{
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x193AEB0F0](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x193AEB0F0](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DetailsTabBarView.TabSegmentView] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0B10TabBarViewC0c7SegmentE0CGMd, &_sSay20CommunicationDetails0B10TabBarViewC0c7SegmentE0CGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DetailsTabBarView.TabSegmentView(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x193AEB0F0](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x193AEB0F0](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd, &_sSaySo15UIBarButtonItemCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UIBarButtonItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x193AEB0F0](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x193AEB0F0](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type IDView<Group<_ConditionalContent<ModifiedContent<AvatarView, _EnvironmentKeyWritingModifier<AnyShapeStyle>>, AvatarView>>, [CNContact]> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type [CNContact] and conformance [A], &_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CNContact();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails0I10TabBarViewC0j7SegmentL0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_5(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
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
      v16 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v16)
        {
          v7 = a3;
          v8 = MEMORY[0x193AEB000](v5, a3);
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

        v18 = v8;
        v11 = a1(&v18);

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
      if ((a3 & 0x8000000000000000) != 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = a3;
      v14 = MEMORY[0x193AEB0F0](v12, a2);
      a3 = v13;
      v4 = v14;
    }

    while (v14);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x193AEB0F0](a1);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x193AEB0F0](a1);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void *specialized DetailsTabBarView.TabsView.sizeThatFits(_:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v1(v21);
  if (v22)
  {
    [v0 layoutMargins];
    v3 = v2;
  }

  else
  {
    v3 = *&v21[1];
  }

  v4 = [v0 traitCollection];
  v5 = [v4 layoutDirection];

  v6 = *(v0 + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews);

  if (v5 == 1)
  {
    result = specialized Sequence.reversed()(v6);
    v6 = result;
  }

  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v19 = v6;
    }

    else
    {
      v19 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x193AEB0F0](v19);
    v8 = result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  v10 = 0.0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x193AEB000](v9, v6);
    }

    else
    {
      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    ++v9;
    [v0 bounds];
    [v12 sizeThatFits_];
    v16 = v15;
    v18 = v17;

    v3 = v3 + v16;
    if (v10 <= v18)
    {
      v10 = v18;
    }
  }

  while (v8 != v9);
LABEL_20:

  result = (v1)(v23, v20);
  if (v24)
  {
    return [v0 layoutMargins];
  }

  return result;
}

uint64_t dispatch thunk of DetailsTabBarView.TabsView.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  type metadata accessor for DetailsTabBarView.TabSegmentView(0);
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type [DetailsTabBarView.TabSegmentView] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DetailsTabBarView.TabSegmentView] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DetailsTabBarView.TabSegmentView] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20CommunicationDetails0B10TabBarViewC0c7SegmentE0CGMd, &_sSay20CommunicationDetails0B10TabBarViewC0c7SegmentE0CGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DetailsTabBarView.TabSegmentView] and conformance [A]);
  }

  return result;
}

id closure #1 in variable initialization expression of DetailsTabBarView.scrollView()
{
  type metadata accessor for TouchCancelScrollView #1 in closure #1 in variable initialization expression of DetailsTabBarView.scrollView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setDelaysContentTouches_];
  [v0 setCanCancelContentTouches_];
  v1 = v0;
  [v1 setClipsToBounds_];
  [v1 setBouncesVertically_];
  [v1 setShowsHorizontalScrollIndicator_];
  [v1 setContentInsetAdjustmentBehavior_];
  v2 = MEMORY[0x193AEA8E0](0xD000000000000017, 0x80000001901FC800);
  [v1 setAccessibilityIdentifier_];

  return v1;
}

uint64_t key path getter for DetailsTabBarView.tabs : DetailsTabBarView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsTabBarView.tabs : DetailsTabBarView(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD8);

  return v2(v3);
}

uint64_t DetailsTabBarView.tabs.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

void DetailsTabBarView.tabs.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  v3 = static UIView.Invalidating.subscript.setter();
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0);
  v6 = v5(v3);
  v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails0C3TabV_Tt1g5(v6, v15, v7);

  if ((v8 & 1) == 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
    v11 = v5(v9);
    v12 = (*((*v4 & *v10) + 0x98))(v11);
    v13 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
    v14 = v5(v12);
    (*((*v4 & *v13) + 0x98))(v14);
    DetailsTabBarView.scrollSelectedTabVisible()();
  }
}

void (*DetailsTabBarView.tabs.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = a1[1];
  return DetailsTabBarView.tabs.modify;
}

void DetailsTabBarView.tabs.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    DetailsTabBarView.tabs.setter(v2);
  }

  else
  {
    DetailsTabBarView.tabs.setter(*a1);
  }
}

double key path getter for DetailsTabBarView.configuration : DetailsTabBarView@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t key path setter for DetailsTabBarView.configuration : DetailsTabBarView(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xF0))(v4);
}

__n128 DetailsTabBarView.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_configuration;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t DetailsTabBarView.configuration.setter(__int128 *a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_configuration);
  v5 = swift_beginAccess();
  v6 = *(v4 + 32);
  v7 = *v4;
  v8 = v4[1];
  v9 = a1[1];
  *v4 = *a1;
  v4[1] = v9;
  *(v4 + 32) = *(a1 + 32);
  v10 = a1[1];
  v22 = *a1;
  v23 = v10;
  v24 = *(a1 + 32);
  v19 = v7;
  v20 = v8;
  v21 = v6;
  lazy protocol witness table accessor for type DetailsTabBarView.Configuration and conformance DetailsTabBarView.Configuration(v5, v11, v12);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v14 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
    v15 = v4[1];
    v22 = *v4;
    v23 = v15;
    v24 = *(v4 + 32);
    v16 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v14) + 0xB0))(&v22);
    v17 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
    v18 = v4[1];
    v19 = *v4;
    v20 = v18;
    v21 = *(v4 + 32);
    return (*((*v16 & *v17) + 0xB0))(&v19);
  }

  return result;
}

void (*DetailsTabBarView.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_configuration;
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  *(v4 + 80) = *v5;
  *(v4 + 96) = v7;
  *(v4 + 112) = v6;
  return DetailsTabBarView.configuration.modify;
}

void DetailsTabBarView.configuration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  DetailsTabBarView.configuration.setter(v3);

  free(v2);
}

double key path getter for DetailsTabBarView.selectedTab : DetailsTabBarView@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t key path setter for DetailsTabBarView.selectedTab : DetailsTabBarView(uint64_t *a1, void **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x108);
  v8 = outlined copy of DetailsTab?(v10[0], v2, v3, v4, v5);
  return v7(v10, v8);
}

double DetailsTabBarView.selectedTab.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return result;
}

uint64_t DetailsTabBarView.selectedTab.setter(__int128 *a1)
{
  v3 = *(a1 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  v14 = v3;
  v5 = v1;
  v6 = static UIView.Invalidating.subscript.setter();
  v7 = *(v5 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x100))(&v12, v6);
  v10[0] = v12;
  v10[1] = v13;
  v11 = v14;
  return (*((*v8 & *v7) + 0x80))(v10);
}

void (*DetailsTabBarView.selectedTab.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return DetailsTabBarView.selectedTab.modify;
}

void DetailsTabBarView.selectedTab.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[5] = v4;
  v9 = v3[10];
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = v7;
  v3[9] = v8;
  v10 = v9;
  if (a2)
  {
    outlined copy of DetailsTab?(v4, v5, v6, v7, v8);
    v11 = static UIView.Invalidating.subscript.setter();
    v12 = *(v10 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
    v13 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v10) + 0x100))(&v17, v11);
    v20 = v17;
    v21 = v18;
    v22 = v19;
    (*((*v13 & *v12) + 0x80))(&v20);
    outlined consume of DetailsTab?(*v3, v3[1], v3[2], v3[3], v3[4]);
  }

  else
  {
    v14 = static UIView.Invalidating.subscript.setter();
    v15 = *(v10 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
    v16 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v10) + 0x100))(&v17, v14);
    v20 = v17;
    v21 = v18;
    v22 = v19;
    (*((*v16 & *v15) + 0x80))(&v20);
  }

  free(v3);
}

double DetailsTabBarView.selectedTabOffset.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

void DetailsTabBarView.isSelectionActive.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (v6 != v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionView);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))(v5);
  }
}

uint64_t DetailsTabBarView.isSelectionActive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

id DetailsTabBarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DetailsTabBarView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_SbAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_SbAbCE13InvalidationsO6LayoutVGMR);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v73 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_12CoreGraphics7CGFloatVAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_12CoreGraphics7CGFloatVAbCE13InvalidationsO6LayoutVGMR);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v73 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_20CommunicationDetails0E3TabVSgAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_20CommunicationDetails0E3TabVSgAbCE13InvalidationsO6LayoutVGMR);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v73 - v12;
  v13 = type metadata accessor for UIView.Invalidations.Layout();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_Say20CommunicationDetails0E3TabVGAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_Say20CommunicationDetails0E3TabVGAbCE13InvalidationsO6LayoutVGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - v16;
  v18 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_contentView;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v19 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView;
  *&v5[v19] = closure #1 in variable initialization expression of DetailsTabBarView.scrollView();
  v20 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutView;
  type metadata accessor for DetailsTabBarView.SelectionView();
  *&v5[v20] = DetailsTabBarView.SelectionView.__allocating_init(mode:)(1);
  v21 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionView;
  *&v5[v21] = DetailsTabBarView.SelectionView.__allocating_init(mode:)(0);
  v22 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView;
  type metadata accessor for DetailsTabBarView.TabsView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v22] = [objc_allocWithZone(ObjCClassFromMetadata) &selRef_setCustomOutputDirectory_];
  v24 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView;
  *&v5[v24] = [objc_allocWithZone(ObjCClassFromMetadata) &selRef_setCustomOutputDirectory_];
  v25 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_tabSegmentViewForSizing;
  type metadata accessor for DetailsTabBarView.TabSegmentView(0);
  *&v5[v25] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) &selRef_setCustomOutputDirectory_];
  v26 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView__tabs;
  *&v84 = MEMORY[0x1E69E7CC0];
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR);
  lazy protocol witness table accessor for type [DetailsTab] and conformance <A> [A](&lazy protocol witness table cache variable for type [DetailsTab] and conformance <A> [A], &_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR, MEMORY[0x1E69E6320]);
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v15 + 32))(&v5[v26], v17, v14);
  v27 = &v5[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_configuration];
  memset(v89, 0, sizeof(v89));
  v90 = 1;
  DetailsTabBarView.Configuration.init(preferredLayoutMargins:)(v89, v87);
  v28 = v87[1];
  *v27 = v87[0];
  *(v27 + 1) = v28;
  v27[32] = v88;
  v29 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView__selectedTab;
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
  lazy protocol witness table accessor for type [DetailsTab] and conformance <A> [A](&lazy protocol witness table cache variable for type DetailsTab? and conformance <A> A?, &_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR, MEMORY[0x1E69E7C80]);
  v30 = v74;
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v75 + 32))(&v5[v29], v30, v76);
  v31 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView__selectedTabOffset;
  *&v84 = 0;
  v32 = UIView.Invalidations.Layout.init()();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v32, v33, v34);
  v35 = v77;
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v78 + 32))(&v5[v31], v35, v79);
  v36 = &v5[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v37 = &v5[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownViewLocation];
  *v37 = 0;
  *(v37 + 1) = 0;
  v37[16] = 1;
  v38 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_autoscroll;
  *&v5[v38] = [objc_allocWithZone(MEMORY[0x1E69DC6E0]) init];
  *&v5[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionFeedbackGenerator] = 0;
  v39 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView__isSelectionActive;
  LOBYTE(v84) = 0;
  UIView.Invalidations.Layout.init()();
  v40 = v80;
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v81 + 32))(&v5[v39], v40, v82);
  v41 = type metadata accessor for DetailsTabBarView(0);
  v83.receiver = v5;
  v83.super_class = v41;
  v42 = objc_msgSendSuper2(&v83, sel_initWithFrame_, a1, a2, a3, a4);
  [v42 setPreservesSuperviewLayoutMargins_];
  v43 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_contentView;
  [v42 addSubview_];
  v44 = *&v42[v43];
  v45 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView;
  [v44 addSubview_];
  v46 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutView;
  [*&v42[v45] addSubview_];
  v47 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionView;
  [*&v42[v45] addSubview_];
  v48 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView;
  v49 = *&v42[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView];
  v50 = MEMORY[0x1E69E7D40];
  v51 = *((*MEMORY[0x1E69E7D40] & *v49) + 0xC8);
  v52 = v49;
  v51(0);

  v53 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView;
  v54 = *&v42[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView];
  v55 = *((*v50 & *v54) + 0xC8);
  v56 = v54;
  v55(1);

  [*&v42[v48] setUserInteractionEnabled_];
  [*&v42[v53] setUserInteractionEnabled_];
  v57 = *&v42[v47];
  v58 = *&v42[v53];
  v59 = *((*v50 & *v57) + 0xC0);
  v60 = v57;
  v61 = v58;
  v59(v58);

  v62 = *&v42[v46];
  v63 = *&v42[v48];
  v64 = *((*v50 & *v62) + 0xC0);
  v65 = v62;
  v66 = v63;
  v64(v63);

  v67 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v42 action:sel_longPressWithRecognizer_];
  [v67 setMinimumPressDuration_];
  [v42 addGestureRecognizer_];
  v68 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v42 action:sel_tapWithRecognizer_];
  [v42 addGestureRecognizer_];
  v69 = [objc_opt_self() feedbackGeneratorForView_];
  v70 = *&v42[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionFeedbackGenerator];
  *&v42[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionFeedbackGenerator] = v69;

  v71 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  [v42 addInteraction_];

  return v42;
}

Swift::Void __swiftcall DetailsTabBarView.tap(recognizer:)(UITapGestureRecognizer recognizer)
{
  if ([(objc_class *)recognizer.super.super.isa state]== 3)
  {
    [(objc_class *)recognizer.super.super.isa locationInView:*(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView)];
    v4 = v3;
    v5 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
    [v5 bounds];
    MidY = CGRectGetMidY(v17);
    v7 = default argument 1 of DetailsTabBarView.TabsView.tab(at:offsetForContentOffset:)();
    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x108))(v15, v7 & 1, v4, MidY);
    v9 = v15[0];
    v10 = v15[1];
    v11 = v15[2];
    v12 = v15[3];
    v13 = *v8 & *v1;
    v14 = v15[4];
    (*(v13 + 424))(v15, 1);
    [v1 sendActionsForControlEvents_];

    outlined consume of DetailsTab?(v9, v10, v11, v12, v14);
  }
}

Swift::Void __swiftcall DetailsTabBarView.longPress(recognizer:)(UILongPressGestureRecognizer recognizer)
{
  v2 = [(objc_class *)recognizer.super.super.isa state];
  if (v2 <= 2)
  {
    if (v2 == 1)
    {

      DetailsTabBarView.longPressRecognizerBegin(_:)(recognizer.super.super.isa);
    }

    else if (v2 == 2)
    {

      DetailsTabBarView.longPressRecognizerChanged(_:)(recognizer.super.super.isa);
    }
  }

  else if (v2 == 3)
  {

    DetailsTabBarView.longPressRecognizerEnded(_:)(recognizer.super.super.isa);
  }

  else if (v2 == 4 || v2 == 5)
  {

    DetailsTabBarView.scrubEnded()();
  }
}

id DetailsTabBarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

CGSize __swiftcall DetailsTabBarView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  [*(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_tabSegmentViewForSizing) sizeThatFits_];
  v4 = width;
  result.height = v3;
  result.width = v4;
  return result;
}

Swift::Void __swiftcall DetailsTabBarView.layoutSubviews()()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for DetailsTabBarView(0);
  objc_msgSendSuper2(&v48, sel_layoutSubviews);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_contentView);
  [v1 bounds];
  v7 = [v6 setFrame_];
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A0))(v7);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
  [v16 setLayoutMargins_];
  v17 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
  [v17 setLayoutMargins_];
  [v16 sizeThatFits_];
  v19 = v18;
  v21 = v20;
  [v16 bounds];
  [v16 setBounds_];
  [v17 bounds];
  (*((*v8 & *v1) + 0x100))(v46, [v17 setBounds_]);
  v43 = v46[0];
  v44 = v46[1];
  v45 = v47;
  v22 = default argument 1 of DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)();
  (*((*v8 & *v16) + 0x100))(v49, &v43, v22 & 1);
  outlined consume of DetailsTab?(v43, *(&v43 + 1), v44, *(&v44 + 1), v45);
  if (v50)
  {
    v19 = v3;
    v21 = v5;
  }

  else
  {
    v24 = v49[2];
    v23 = v49[3];
    v26 = v49[0];
    v25 = v49[1];
    v27 = v19 * 0.5 - v49[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v28 = v27 - *v46 * 0.4;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v29 = v26 + *v46 * 0.4;
    [v1 bounds];
    if (v19 < v30)
    {
      [v1 bounds];
      v29 = v29 + (v31 - v19) * 0.5;
    }

    v32 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionView);
    [v32 bounds];
    [v32 setBounds_];
    [v32 setCenter_];
    v33 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutView);
    [v33 bounds];
    [v33 setBounds_];
    [v33 setCenter_];
    v34 = v24 * 0.5 + v28;
    v35 = v23 * 0.5;
    [v16 setCenter_];
    [v17 setCenter_];
  }

  v36 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView);
  [v36 setContentSize_];
  [v1 bounds];
  v38 = v37;
  v40 = v39;
  [v36 bounds];
  if (v38 != v42 || v40 != v41)
  {
    [v1 bounds];
    [v36 setFrame_];
  }
}

double DetailsTabBarView.resolvedLayoutMargins.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))(&v2);
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  [v0 layoutMargins];
  return result;
}

void DetailsTabBarView.selectTab(_:animated:)(uint64_t *a1, int a2)
{
  v3 = v2;
  v58 = a2;
  v56 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v56);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTimeInterval();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = (v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for DispatchTime();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = v49 - v10;
  v11 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if ((aBlock & 1) == 0)
  {
    v49[1] = v6;
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x100))(&aBlock, v16);
    v17 = aBlock;
    v18 = v70;
    v20 = v71;
    v19 = v72;
    if (v12)
    {
      v64 = v11;
      v65 = v12;
      v66 = v14;
      v67 = v13;
      v68 = v15;
      if (v70)
      {
        v59 = aBlock;
        v60 = v70;
        v61 = v71;
        v62 = v72;
        v63 = v73;
        outlined copy of DetailsTab?(v11, v12, v14, v13, v15);
        outlined copy of DetailsTab?(v11, v12, v14, v13, v15);
        lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v21, v22, v23);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();

        outlined consume of DetailsTab?(v11, v12, v14, v13, v15);
        if (v24)
        {
          return;
        }

        goto LABEL_10;
      }

      v49[0] = v73;
      outlined copy of DetailsTab?(v11, v12, v14, v13, v15);
      outlined copy of DetailsTab?(v11, v12, v14, v13, v15);
    }

    else
    {
      v49[0] = v73;
      outlined copy of DetailsTab?(v11, 0, v14, v13, v15);
      if (!v18)
      {
        outlined consume of DetailsTab?(v11, 0, v14, v13, v15);
        return;
      }
    }

    outlined consume of DetailsTab?(v11, v12, v14, v13, v15);
    outlined consume of DetailsTab?(v17, v18, v20, v19, v49[0]);
LABEL_10:
    aBlock = v11;
    v70 = v12;
    v71 = v14;
    v72 = v13;
    v73 = v15;
    v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x108);
    v26 = outlined copy of DetailsTab?(v11, v12, v14, v13, v15);
    v25(&aBlock, v26);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0;
    v27 = v3;
    static UIView.Invalidating.subscript.setter();
    if (v58)
    {
      v28 = objc_opt_self();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v73 = partial apply for closure #2 in DetailsTabBarView.selectTab(_:animated:);
      v74 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = thunk for @escaping @callee_guaranteed () -> ();
      v72 = &block_descriptor_20;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      [v28 animateWithDuration:2 delay:v30 usingSpringWithDamping:0 initialSpringVelocity:0.6 options:0.0 animations:0.85 completion:0.0];
      _Block_release(v30);
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      v73 = partial apply for closure #3 in DetailsTabBarView.selectTab(_:animated:);
      v74 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = thunk for @escaping @callee_guaranteed () -> ();
      v72 = &block_descriptor_26;
      v33 = _Block_copy(&aBlock);
      v34 = v31;

      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      v73 = partial apply for closure #4 in DetailsTabBarView.selectTab(_:animated:);
      v74 = v35;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v72 = &block_descriptor_32;
      v36 = _Block_copy(&aBlock);
      v37 = v34;

      [v28 animateWithDuration:2 delay:v33 usingSpringWithDamping:v36 initialSpringVelocity:0.2 options:0.0 animations:0.9 completion:0.0];
      _Block_release(v36);
      _Block_release(v33);
    }

    else
    {
      [*(v27 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView) bounds];
      v76.origin.x = 0.0;
      v76.origin.y = 0.0;
      v76.size.width = 0.0;
      v76.size.height = 0.0;
      if (CGRectEqualToRect(v75, v76))
      {
        _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v38 = static OS_dispatch_queue.main.getter();
        v39 = v50;
        static DispatchTime.now()();
        v40 = v51;
        *v51 = 100;
        v41 = v52;
        v42 = v53;
        (*(v52 + 104))(v40, *MEMORY[0x1E69E7F38], v53);
        v43 = v54;
        DispatchTime.advanced(by:)();
        (*(v41 + 8))(v40, v42);
        v44 = *(v55 + 8);
        v45 = v57;
        v44(v39, v57);
        v46 = swift_allocObject();
        *(v46 + 16) = v27;
        v73 = partial apply for closure #1 in DetailsTabBarView.selectTab(_:animated:);
        v74 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v70 = 1107296256;
        v71 = thunk for @escaping @callee_guaranteed () -> ();
        v72 = &block_descriptor_3;
        _Block_copy(&aBlock);
        v64 = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        v47 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for DispatchWorkItem();
        swift_allocObject();
        v48 = DispatchWorkItem.init(flags:block:)();

        MEMORY[0x193AEAC80](v43, v48);

        v44(v43, v45);
      }

      else
      {
        DetailsTabBarView.scrollSelectedTabVisible()();
      }
    }
  }
}

void DetailsTabBarView.scrollSelectedTabVisible()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))(&v22);
  v3 = v23;
  if (v23)
  {
    v4 = v22;
    v5 = v24;
    v6 = v25;
    v7 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
    v8 = v26;

    v9 = default argument 1 of DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)();
    (*((*v2 & *v7) + 0x100))(v27, &v22, v9 & 1);
    outlined consume of DetailsTab?(v22, v23, v24, v25, v26);
    if ((v28 & 1) == 0)
    {
      v10 = *&v27[2];
      v11 = *v27;
      (*((*v2 & *v1) + 0x1A0))();
      v13 = v12;
      v14 = v10 * 0.5;
      v16 = v11 + v14 + v15;
      v17 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView);
      [v17 bounds];
      v18 = v16 - CGRectGetWidth(v30);
      v19 = v11 - v14 - v13;
      [v17 contentOffset];
      if (v19 < v20)
      {
        v20 = v19;
      }

      if (v18 > v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      [v17 contentOffset];
      [v17 setContentOffset_];
    }

    outlined consume of DetailsTab?(v4, v3, v5, v6, v8);
  }
}

void closure #1 in DetailsTabBarView.scrubStarted(at:)(void *a1, double a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static UIView.Invalidating.subscript.setter();
  DetailsTabBarView.isSelectionActive.didset(v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  static UIView.Invalidating.subscript.setter();
  [v5 layoutIfNeeded];
}

void DetailsTabBarView.scrubToTabIfNecessary(_:at:offset:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = a1[1];
  if (v6)
  {
    v7 = v5;
    v9 = *a1;
    v11 = a1[2];
    v10 = a1[3];
    v12 = a1[4];
    v13 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x100);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = swift_retain_n();
    v13(&aBlock, v14);
    v15 = aBlock;
    v17 = v33;
    v16 = v34;
    v18 = v35;
    if (v32)
    {
      outlined copy of DetailsTab?(v9, v6, v11, v10, v12);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v19, v20, v21);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();

      outlined consume of DetailsTab?(v9, v6, v11, v10, v12);
      if (v22)
      {
        goto LABEL_7;
      }
    }

    else
    {
      outlined copy of DetailsTab?(v9, v6, v11, v10, v12);

      outlined consume of DetailsTab?(v9, v6, v11, v10, v12);
      outlined consume of DetailsTab?(v15, 0, v17, v16, v18);
    }

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v7;
    *(v24 + 24) = v9;
    *(v24 + 32) = v6;
    *(v24 + 40) = v11;
    *(v24 + 48) = v10;
    *(v24 + 56) = v12;
    *(v24 + 64) = a5;
    v35 = partial apply for closure #1 in DetailsTabBarView.scrubToTabIfNecessary(_:at:offset:);
    v36 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = thunk for @escaping @callee_guaranteed () -> ();
    v34 = &block_descriptor_68;
    v25 = _Block_copy(&aBlock);
    outlined copy of DetailsTab?(v9, v6, v11, v10, v12);
    v26 = v7;

    [v23 animateWithDuration:2 delay:v25 usingSpringWithDamping:0 initialSpringVelocity:0.7 options:0.0 animations:0.7 completion:0.0];
    _Block_release(v25);
    if (a4)
    {
LABEL_7:
      outlined consume of DetailsTab?(v9, v6, v11, v10, v12);
      return;
    }

    v27 = *&v26[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionFeedbackGenerator];
    [v27 selectionChangedAtLocation_];
    outlined consume of DetailsTab?(v9, v6, v11, v10, v12);
  }
}

id DetailsTabBarView.scrubEnded()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0;
  v1 = v0;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  v2 = (v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab);
  v3 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab + 8);
  if (v3)
  {
    v4 = *v2;
    v5 = v2[2];
    v33 = v2[3];
    v6 = v2[4];
    v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);

    v7(&aBlock, v8);
    v9 = aBlock;
    v10 = v35;
    v11 = v36;
    v12 = v38;
    if (v35)
    {
      v44 = aBlock;
      v45 = v35;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      v39 = v4;
      v40 = v3;
      v41 = v5;
      v42 = v33;
      v43 = v6;
      v13 = v5;
      v31 = v36;
      v32 = v5;
      v14 = v37;
      outlined copy of DetailsTab?(v4, v3, v13, v33, v6);
      v15 = v11;
      v16 = v14;
      v17 = v14;
      v5 = v32;
      outlined copy of DetailsTab?(v9, v10, v15, v16, v12);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v18, v19, v20);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();

      outlined consume of DetailsTab?(v9, v10, v31, v17, v12);
      v21 = v33;
      if (v30)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v22 = v37;

      outlined consume of DetailsTab?(v9, 0, v11, v22, v12);
      v21 = v33;
      outlined consume of DetailsTab?(v4, v3, v5, v33, v6);
    }

    [v1 sendActionsForControlEvents_];
LABEL_7:
    outlined consume of DetailsTab?(v4, v3, v5, v21, v6);
  }

  v23 = *v2;
  v24 = v2[1];
  v25 = v2[2];
  v26 = v2[3];
  v27 = v2[4];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[4] = 0;
  outlined consume of DetailsTab?(v23, v24, v25, v26, v27);
  v28 = v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownViewLocation;
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  [*(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView) setCanCancelContentTouches_];
  return [*(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_autoscroll) invalidate];
}

void DetailsTabBarView.longPressRecognizerBegin(_:)(void *a1)
{
  v2 = v1;
  v54 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
  [a1 locationInView_];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
  [v6 bounds];
  MidY = CGRectGetMidY(v61);
  v8 = default argument 1 of DetailsTabBarView.TabsView.tab(at:offsetForContentOffset:)();
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x108))(&aBlock, v8 & 1, v5, MidY);
  v11 = aBlock;
  v12 = v56;
  v13 = v57;
  v52 = *(&aBlock + 1);
  v14 = *((*v9 & *v1) + 0x100);
  v14(&aBlock, v10);
  v15 = v57;
  v16 = v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab;
  v17 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab);
  v18 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab + 8);
  v19 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab + 16);
  v20 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab + 24);
  v21 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab + 32);
  v22 = v56;
  *v16 = aBlock;
  *(v16 + 1) = v22;
  *(v16 + 4) = v15;
  outlined consume of DetailsTab?(v17, v18, v19, v20, v21);
  [a1 locationInView_];
  v24 = v23;
  v26 = v25;
  v27 = (v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownViewLocation);
  *v27 = v23;
  v27[1] = v25;
  *(v27 + 16) = 0;
  [a1 locationInView_];
  v29 = v28;
  *&aBlock = v11;
  *(&aBlock + 1) = v52;
  v56 = v12;
  v57 = v13;
  v30 = default argument 1 of DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)();
  v31 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x100))(v59, &aBlock, v30 & 1);
  if (v60)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29 - v59[0];
  }

  v14(&aBlock, v31);
  v33 = aBlock;
  v34 = v56;
  if (v52)
  {
    v35 = v11;
    if (*(&aBlock + 1))
    {
      v36 = v52;
      v37 = *(&v12 + 1);
      outlined copy of DetailsTab?(v11, v52, *(&v12 + 1), *(&v12 + 1), v13);
      outlined copy of DetailsTab?(v11, v52, *(&v12 + 1), *(&v12 + 1), v13);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v38, v39, v40);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();

      outlined consume of DetailsTab?(v11, v52, *(&v12 + 1), *(&v12 + 1), v13);
      v42 = *(&v12 + 1);
      if ((v41 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_10:
      v43 = objc_opt_self();
      v44 = swift_allocObject();
      *(v44 + 16) = v2;
      *(v44 + 24) = v32;
      v57 = closure #1 in DetailsTabBarView.scrubStarted(at:)partial apply;
      v58 = v44;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v45 = &block_descriptor_87;
      goto LABEL_14;
    }

    v53 = v57;
    outlined copy of DetailsTab?(v11, v52, *(&v12 + 1), *(&v12 + 1), v13);
    outlined copy of DetailsTab?(v11, v52, *(&v12 + 1), *(&v12 + 1), v13);
  }

  else
  {
    v53 = v57;
    outlined copy of DetailsTab?(v11, 0, v12, *(&v12 + 1), v13);
    v35 = v11;
    if (!*(&v33 + 1))
    {
      v37 = *(&v12 + 1);
      outlined consume of DetailsTab?(v11, 0, *(&v12 + 1), *(&v12 + 1), v13);
      v42 = *(&v12 + 1);
      v36 = 0;
      goto LABEL_10;
    }
  }

  v36 = v52;
  outlined consume of DetailsTab?(v35, v52, *(&v12 + 1), *(&v12 + 1), v13);
  outlined consume of DetailsTab?(v33, *(&v33 + 1), v34, *(&v34 + 1), v53);
  v42 = *(&v12 + 1);
  v37 = *(&v12 + 1);
LABEL_13:
  *&aBlock = v35;
  *(&aBlock + 1) = v36;
  *&v56 = v42;
  *(&v56 + 1) = v37;
  v57 = v13;
  v46 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v47 = outlined copy of DetailsTab?(v35, v36, v42, v37, v13);
  v46(&aBlock, v47);
  v43 = objc_opt_self();
  v48 = swift_allocObject();
  *(v48 + 16) = v2;
  *(v48 + 24) = 0;
  v57 = partial apply for closure #1 in DetailsTabBarView.scrubStarted(at:);
  v58 = v48;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v45 = &block_descriptor_80;
LABEL_14:
  *&v56 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v56 + 1) = v45;
  v49 = _Block_copy(&aBlock);
  v50 = v2;

  [v43 animateWithDuration:2 delay:v49 usingSpringWithDamping:0 initialSpringVelocity:0.7 options:0.0 animations:0.7 completion:0.0];
  _Block_release(v49);
  v51 = *(v50 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionFeedbackGenerator);
  if (v51)
  {
    [v51 prepare];
  }

  [*(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionFeedbackGenerator) selectionChangedAtLocation_];
  [*(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView) setCanCancelContentTouches_];
  outlined consume of DetailsTab?(v35, v36, v42, v37, v13);
}

void DetailsTabBarView.longPressRecognizerChanged(_:)(void *a1)
{
  [a1 locationInView_];
  v4 = v3;
  v6 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (LOBYTE(v51) != 1 || ([*(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView) canCancelContentTouches] & 1) != 0)
  {
    return;
  }

  v44 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
  v44(&v51);
  *&v7 = v51;
  v8 = v52;
  v9 = v53;
  v10 = v54;
  v11 = v55;
  v12 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
  [a1 &selRef:v12 effectCombiningEffects:?];
  v14 = v13;
  v15 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
  v46 = *&v7;
  v47 = v8;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v16 = default argument 1 of DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)();
  v42 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x100);
  v42(v56, &v46, v16 & 1);
  outlined consume of DetailsTab?(v7, v8, v9, v10, v11);
  if (v57)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v14 - v56[0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v17;
  v18 = v1;
  static UIView.Invalidating.subscript.setter();
  v43 = v12;
  [a1 locationInView_];
  v20 = v19;
  [v15 bounds];
  MidY = CGRectGetMidY(v58);
  v22 = default argument 1 of DetailsTabBarView.TabsView.tab(at:offsetForContentOffset:)();
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x108))(&v51, v22 & 1, v20, MidY);
  v23 = v52;
  if (v52)
  {
    *&v24 = v51;
    v26 = v53;
    v25 = v54;
    v27 = v55;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v28 = swift_retain_n();
    v41 = v18;
    (v44)(&v51, v28);
    v29 = *&v51;
    v30 = v53;
    v31 = v54;
    v46 = *&v24;
    v47 = v23;
    v48 = v26;
    v49 = v25;
    v50 = v27;
    if (v52)
    {
      outlined copy of DetailsTab?(v24, v23, v26, v25, v27);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v32, v33, v34);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();

      outlined consume of DetailsTab?(v24, v23, v26, v25, v27);
      if (v35)
      {
        outlined consume of DetailsTab?(v24, v23, v26, v25, v27);
        outlined consume of DetailsTab?(v24, v23, v26, v25, v27);
        v18 = v41;
        goto LABEL_14;
      }
    }

    else
    {
      v45 = v55;
      outlined copy of DetailsTab?(v24, v23, v26, v25, v27);

      outlined consume of DetailsTab?(v24, v23, v26, v25, v27);
      outlined consume of DetailsTab?(v29, 0, v30, v31, v45);
    }

    [a1 locationInView_];
    v37 = v36;
    v51 = *&v24;
    v52 = v23;
    v53 = v26;
    v54 = v25;
    v55 = v27;
    v38 = default argument 1 of DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)();
    v42(&v46, &v51, v38 & 1);
    outlined consume of DetailsTab?(v24, v23, v26, v25, v27);
    v39 = v37 - v46;
    if (v50)
    {
      v39 = 0.0;
    }

    v51 = *&v24;
    v52 = v23;
    v53 = v26;
    v54 = v25;
    v55 = v27;
    v18 = v41;
    DetailsTabBarView.scrubToTabIfNecessary(_:at:offset:)(&v51, v4, v6, 0, v39);
    outlined consume of DetailsTab?(v24, v23, v26, v25, v27);
    outlined consume of DetailsTab?(v24, v23, v26, v25, v27);
  }

LABEL_14:
  [v18 bounds];
  if (*&v4 < CGRectGetMinX(v59) + 100.0)
  {
    v40 = 1;
LABEL_18:
    [*(v18 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_autoscroll) startAutoscroll:v18 scrollContainer:v18 point:v40 directions:*&v4 repeatInterval:{*&v6, 0.2}];
    return;
  }

  [v18 bounds];
  if (CGRectGetMaxX(v60) + -100.0 < *&v4)
  {
    v40 = 2;
    goto LABEL_18;
  }

  [*(v18 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_autoscroll) invalidate];
}

id DetailsTabBarView.longPressRecognizerEnded(_:)(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if ((v18 & 1) == 0)
  {
    [a1 locationInView_];
    v5 = v4;
    v6 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
    [v6 bounds];
    MidY = CGRectGetMidY(v23);
    v8 = default argument 1 of DetailsTabBarView.TabsView.tab(at:offsetForContentOffset:)();
    v9 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x108))(&v18, v8 & 1, v5, MidY);
    v10 = v19;
    if (v19)
    {
      v12 = v21;
      v11 = v22;
      v13 = *v9 & *v2;
      v14 = v20;
      v15 = v18;
      v16 = *(v13 + 424);

      v16(&v18, 1);
      outlined consume of DetailsTab?(v15, v10, v14, v12, v11);
      outlined consume of DetailsTab?(v18, v19, v20, v21, v22);
    }
  }

  return DetailsTabBarView.scrubEnded()();
}

void DetailsTabBarView.update(_:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView);
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  if ([a1 directions] == 1)
  {
    v9 = v6 + -40.0;
  }

  else if ([a1 directions] == 2)
  {
    v9 = v6 + 40.0;
  }

  else
  {
    v9 = v6;
  }

  [v4 contentSize];
  v11 = v10;
  [v4 bounds];
  v12 = v11 - CGRectGetWidth(v61);
  if (v12 >= v9)
  {
    v12 = v9;
  }

  if (v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
  [a1 point];
  [v14 convertPoint:v2 fromCoordinateSpace:?];
  v16 = v15;
  v17 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView);
  [v17 bounds];
  MidY = CGRectGetMidY(v62);
  v19 = default argument 1 of DetailsTabBarView.TabsView.tab(at:offsetForContentOffset:)();
  v20 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v17) + 0x108))(&aBlock, v19 & 1, v16, MidY);
  v21 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v50 = v4;
    v22 = v2;
    v23 = aBlock;
    v24 = v58;
    v25 = v59;
    v26 = *((*v20 & *v22) + 0x100);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v27 = swift_retain_n();
    v51 = v22;
    v26(&aBlock, v27);
    v28 = aBlock;
    v29 = v58;
    v30 = v59;
    *&v54 = v23;
    *(&v54 + 1) = v21;
    v55 = v24;
    v56 = v25;
    if (*(&aBlock + 1))
    {
      v52[0] = aBlock;
      v52[1] = v58;
      v53 = v59;
      v31 = *(&v24 + 1);
      outlined copy of DetailsTab?(v23, v21, v24, *(&v24 + 1), v25);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v32, v33, v34);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();

      outlined consume of DetailsTab?(v23, v21, v24, *(&v24 + 1), v25);
      if (v35)
      {
        outlined consume of DetailsTab?(v23, v21, v24, *(&v24 + 1), v25);
        v2 = v51;
        (v26)(&aBlock);
        v54 = aBlock;
        v55 = v58;
        v56 = v59;
        v36 = default argument 1 of DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)();
        (*((*MEMORY[0x1E69E7D40] & *v17) + 0x100))(v52, &v54, v36 & 1);
        outlined consume of DetailsTab?(v54, *(&v54 + 1), v55, *(&v55 + 1), v56);
        if ((v53 & 1) == 0)
        {
          v37 = v16 - *v52;
          [v50 contentOffset];
          v39 = v37 + v13 - v38;
          swift_getKeyPath();
          swift_getKeyPath();
          *&aBlock = v39;
          v40 = v51;
          static UIView.Invalidating.subscript.setter();
        }

        goto LABEL_18;
      }
    }

    else
    {
      outlined copy of DetailsTab?(v23, v21, v24, *(&v24 + 1), v25);

      outlined consume of DetailsTab?(v23, v21, v24, *(&v24 + 1), v25);
      v41 = v28;
      v31 = *(&v24 + 1);
      outlined consume of DetailsTab?(v41, 0, v29, *(&v29 + 1), v30);
    }

    *&aBlock = *(&v24 + 1);
    *(&aBlock + 1) = v21;
    *&v58 = v24;
    *(&v58 + 1) = v31;
    v59 = v25;
    [a1 point];
    v2 = v51;
    DetailsTabBarView.scrubToTabIfNecessary(_:at:offset:)(&aBlock, v42, v43, 0, 0.0);
    outlined consume of DetailsTab?(*(&v24 + 1), v21, v24, v31, v25);
LABEL_18:
    outlined consume of DetailsTab?(*(&v24 + 1), v21, v24, v31, v25);
  }

  v44 = objc_opt_self();
  [a1 repeatInterval];
  v46 = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = v2;
  *(v47 + 24) = v13;
  *(v47 + 32) = v8;
  v59 = partial apply for specialized closure #1 in DetailsTabBarView.update(_:);
  v60 = v47;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v58 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v58 + 1) = &block_descriptor_38;
  v48 = _Block_copy(&aBlock);
  v49 = v2;

  [v44 animateWithDuration:196610 delay:v48 options:0 animations:v46 completion:0.0];
  _Block_release(v48);
}

void @objc DetailsTabBarView.tap(recognizer:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

id key path getter for DetailsTabBarView.autoscrollContentOffset : DetailsTabBarView@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 autoscrollContentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

__C::CGRect __swiftcall DetailsTabBarView.contentFrame(for:)(UIView_optional *a1)
{
  if (a1)
  {
    [(UIView_optional *)a1 bounds];

    [(UIView_optional *)a1 convertRect:v1 toCoordinateSpace:?];
  }

  else
  {
    __break(1u);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

UIPointerRegion_optional __swiftcall DetailsTabBarView.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v3 = specialized DetailsTabBarView.pointerInteraction(_:regionFor:defaultRegion:)(regionFor.super.isa);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

UIPointerStyle_optional __swiftcall DetailsTabBarView.pointerInteraction(_:styleFor:)(UIPointerInteraction _, UIPointerRegion styleFor)
{
  v2 = specialized DetailsTabBarView.pointerInteraction(_:styleFor:)();
  result.value.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

id DetailsTabBarView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double key path getter for DetailsTabBarView.selectedTabOffset : DetailsTabBarView@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for DetailsTabBarView.selectedTabOffset : DetailsTabBarView(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

void key path getter for DetailsTabBarView.isSelectionActive : DetailsTabBarView(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a2 = v3;
}

void key path setter for DetailsTabBarView.isSelectionActive : DetailsTabBarView(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static UIView.Invalidating.subscript.setter();
  DetailsTabBarView.isSelectionActive.didset(v3);
}

uint64_t lazy protocol witness table accessor for type [DetailsTab] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v6, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for DetailsTabBarView(uint64_t a1)
{
  result = type metadata singleton initialization cache for DetailsTabBarView;
  if (!type metadata singleton initialization cache for DetailsTabBarView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized DetailsTabBarView.init(coder:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_SbAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_SbAbCE13InvalidationsO6LayoutVGMR);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_12CoreGraphics7CGFloatVAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_12CoreGraphics7CGFloatVAbCE13InvalidationsO6LayoutVGMR);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_20CommunicationDetails0E3TabVSgAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_20CommunicationDetails0E3TabVSgAbCE13InvalidationsO6LayoutVGMR);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v35 - v6;
  v7 = type metadata accessor for UIView.Invalidations.Layout();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_Say20CommunicationDetails0E3TabVGAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_Say20CommunicationDetails0E3TabVGAbCE13InvalidationsO6LayoutVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_contentView;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v13 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView;
  *(v1 + v13) = closure #1 in variable initialization expression of DetailsTabBarView.scrollView();
  v14 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutView;
  type metadata accessor for DetailsTabBarView.SelectionView();
  *(v1 + v14) = DetailsTabBarView.SelectionView.__allocating_init(mode:)(1);
  v15 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionView;
  *(v1 + v15) = DetailsTabBarView.SelectionView.__allocating_init(mode:)(0);
  v16 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView;
  type metadata accessor for DetailsTabBarView.TabsView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) &selRef_setCustomOutputDirectory_];
  v18 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView;
  *(v1 + v18) = [objc_allocWithZone(ObjCClassFromMetadata) &selRef_setCustomOutputDirectory_];
  v19 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_tabSegmentViewForSizing;
  type metadata accessor for DetailsTabBarView.TabSegmentView(0);
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) &selRef_setCustomOutputDirectory_];
  v20 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView__tabs;
  *&v45 = MEMORY[0x1E69E7CC0];
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR);
  lazy protocol witness table accessor for type [DetailsTab] and conformance <A> [A](&lazy protocol witness table cache variable for type [DetailsTab] and conformance <A> [A], &_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR, MEMORY[0x1E69E6320]);
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v9 + 32))(v1 + v20, v11, v8);
  v21 = v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_configuration;
  memset(v50, 0, sizeof(v50));
  v51 = 1;
  DetailsTabBarView.Configuration.init(preferredLayoutMargins:)(v50, v48);
  v22 = v48[1];
  *v21 = v48[0];
  *(v21 + 16) = v22;
  *(v21 + 32) = v49;
  v23 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView__selectedTab;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
  lazy protocol witness table accessor for type [DetailsTab] and conformance <A> [A](&lazy protocol witness table cache variable for type DetailsTab? and conformance <A> A?, &_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR, MEMORY[0x1E69E7C80]);
  v24 = v36;
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v37 + 32))(v1 + v23, v24, v38);
  v25 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView__selectedTabOffset;
  *&v45 = 0;
  v26 = UIView.Invalidations.Layout.init()();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v26, v27, v28);
  v29 = v39;
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v40 + 32))(v1 + v25, v29, v41);
  v30 = v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownSelectedTab;
  *(v30 + 32) = 0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  v31 = v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_touchDownViewLocation;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  v32 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_autoscroll;
  *(v1 + v32) = [objc_allocWithZone(MEMORY[0x1E69DC6E0]) init];
  *(v1 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionFeedbackGenerator) = 0;
  v33 = OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView__isSelectionActive;
  LOBYTE(v45) = 0;
  UIView.Invalidations.Layout.init()();
  v34 = v42;
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v43 + 32))(v1 + v33, v34, v44);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double partial apply for closure #1 in DetailsTabBarView.selectTab(_:animated:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsTabBarView.scrollSelectedTabVisible()();

  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double partial apply for closure #2 in DetailsTabBarView.selectTab(_:animated:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v1 layoutIfNeeded];
  DetailsTabBarView.scrollSelectedTabVisible()();

  return result;
}

double partial apply for closure #4 in DetailsTabBarView.selectTab(_:animated:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v7[4] = partial apply for closure #1 in closure #4 in DetailsTabBarView.selectTab(_:animated:);
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_74;
  v4 = _Block_copy(v7);
  v5 = v1;

  [v2 animateWithDuration:2 delay:v4 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.7 completion:0.0];
  _Block_release(v4);

  return result;
}

double partial apply for specialized closure #1 in DetailsTabBarView.update(_:)()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*&v1[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView] setContentOffset_];
  [v1 layoutIfNeeded];

  return result;
}

uint64_t specialized DetailsTabBarView.pointerInteraction(_:regionFor:defaultRegion:)(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView];
  [a1 location];
  [v3 convertPoint:v1 fromCoordinateSpace:?];
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionTabsView];
  [v6 bounds];
  MidY = CGRectGetMidY(v28);
  v8 = default argument 1 of DetailsTabBarView.TabsView.tab(at:offsetForContentOffset:)();
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x108))(&v21, v8 & 1, v5, MidY);
  v10 = v22;
  if (!v22)
  {
    return 0;
  }

  v11 = v21;
  v13 = v23;
  v12 = v24;
  v14 = v25;

  v15 = default argument 1 of DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)();
  (*((*v9 & *v3) + 0x100))(v26, &v21, v15 & 1);
  outlined consume of DetailsTab?(v21, v22, v23, v24, v25);
  if (v27)
  {
    outlined consume of DetailsTab?(v11, v10, v13, v12, v14);
    return 0;
  }

  [v2 convertRect:v3 fromCoordinateSpace:{v26[0] - v26[2] * 0.5, v26[1] - v26[3] * 0.5}];
  v17 = _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for UIPointerRegion, 0x1E69DCDC0);
  lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v17, v18, v19);

  AnyHashable.init<A>(_:)();
  v20 = UIPointerRegion.init(rect:identifier:)();
  outlined consume of DetailsTab?(v11, v10, v13, v12, v14);
  return v20;
}

uint64_t specialized DetailsTabBarView.pointerInteraction(_:styleFor:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd, &_s5UIKit14UIPointerShapeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v58 - v3);
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  UIPointerRegion.identifier.getter();
  if (!v79)
  {
    outlined destroy of AnyHashable?(&v76);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v61 = v4;
  v62 = v6;
  v63 = v5;
  *&v10 = v71;
  *&v9 = v72;
  v12 = *&v73;
  *&v11 = v74;
  v13 = v75;
  v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
  swift_bridgeObjectRetain_n();
  v65 = *&v12;
  swift_retain_n();
  v15 = swift_retain_n();
  v64 = v1;
  v14(&v76, v15);
  v17 = v76;
  v16 = v77;
  v19 = v78;
  v18 = v79;
  v20 = v80;
  if (*&v9 == 0.0)
  {
    v60 = v8;
    v29 = *&v65;
    v59 = 0;
    if (!v77)
    {

      outlined consume of DetailsTab?(v10, 0, v29, v11, v13);
      v8 = v60;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v71 = *&v10;
  v72 = *&v9;
  v73 = v65;
  v74 = *&v11;
  v75 = v13;
  if (!v77)
  {
    v60 = v8;
    v29 = *&v65;
    outlined copy of DetailsTab?(v10, v9, *&v65, v11, v13);

    v59 = v9;

LABEL_13:
    v9 = v59;
    outlined consume of DetailsTab?(v10, v59, v29, v11, v13);
    outlined consume of DetailsTab?(v17, v16, v19, v18, v20);
    v8 = v60;
    goto LABEL_14;
  }

  v66 = v76;
  v67 = v77;
  v68 = v78;
  v69 = v79;
  v70 = v80;
  v21 = v10;
  v22 = v10;
  v23 = *&v65;
  outlined copy of DetailsTab?(v22, v9, *&v65, v11, v13);
  lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v24, v25, v26);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined consume of DetailsTab?(v21, v9, v23, v11, v13);
  v10 = v21;
  if (v27)
  {

LABEL_11:
    v30 = *(v64 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_selectionView);
    v31 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
    [v30 bounds];
    v32 = CGRectGetHeight(v81) * 0.5;
    _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for UIPointerStyle, 0x1E69DCDD0);
    *v8 = v31;
    (*(v62 + 104))(v8, *MEMORY[0x1E69DBF70], v63);
    v33 = v31;
    [v30 frame];
    v34 = v61;
    *v61 = v35;
    *(v34 + 1) = v36;
    *(v34 + 2) = v37;
    *(v34 + 3) = v38;
    v34[4] = v32;
    v39 = *MEMORY[0x1E69DBED0];
    v40 = type metadata accessor for UIPointerShape();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v34, v39, v40);
    (*(v41 + 56))(v34, 0, 1, v40);
    v42 = UIPointerStyle.init(effect:shape:)();

    return v42;
  }

LABEL_14:
  v43 = *(v64 + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_punchoutTabsView);
  v76 = v10;
  v77 = v9;
  v78 = *&v65;
  v79 = v11;
  v80 = v13;
  v44 = MEMORY[0x1E69E7D40];
  v45 = (*((*MEMORY[0x1E69E7D40] & *v43) + 0x110))(&v76);
  if (!v45)
  {

    swift_bridgeObjectRelease_n();
    return 0;
  }

  v46 = v45;
  v76 = v10;
  v77 = v9;
  v78 = *&v65;
  v79 = v11;
  v80 = v13;
  v47 = default argument 1 of DetailsTabBarView.TabsView.frame(for:offsetForContentOffset:)();
  (*((*v44 & *v43) + 0x100))(&v71, &v76, v47 & 1);
  outlined consume of DetailsTab?(v76, v77, v78, v79, v80);
  if (v75)
  {

    return 0;
  }

  v49 = v73;
  v48 = v74;
  v50 = v71 - v73 * 0.5;
  v51 = v72 - v74 * 0.5;
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for UIPointerStyle, 0x1E69DCDD0);
  *v8 = v46;
  (*(v62 + 104))(v8, *MEMORY[0x1E69DBF98], v63);
  v52 = v61;
  *v61 = v50;
  v52[1] = v51;
  v52[2] = v49;
  v52[3] = v48;
  v52[4] = v48 * 0.5;
  v53 = *MEMORY[0x1E69DBED0];
  v54 = type metadata accessor for UIPointerShape();
  v55 = *(v54 - 8);
  (*(v55 + 104))(v52, v53, v54);
  (*(v55 + 56))(v52, 0, 1, v54);
  v56 = v46;
  v57 = UIPointerStyle.init(effect:shape:)();

  return v57;
}

void type metadata completion function for DetailsTabBarView(uint64_t a1)
{
  type metadata accessor for UIView.Invalidating<[DetailsTab], UIView.Invalidations.Layout>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIView.Invalidating<DetailsTab?, UIView.Invalidations.Layout>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIView.Invalidating<CGFloat, UIView.Invalidations.Layout>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIView.Invalidating<Bool, UIView.Invalidations.Layout>(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of DetailsTabBarView.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

void type metadata accessor for UIView.Invalidating<[DetailsTab], UIView.Invalidations.Layout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIView.Invalidating<[DetailsTab], UIView.Invalidations.Layout>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR);
    type metadata accessor for UIView.Invalidations.Layout();
    lazy protocol witness table accessor for type [DetailsTab] and conformance <A> [A](&lazy protocol witness table cache variable for type [DetailsTab] and conformance <A> [A], &_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR, MEMORY[0x1E69E6320]);
    v1 = type metadata accessor for UIView.Invalidating();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIView.Invalidating<[DetailsTab], UIView.Invalidations.Layout>);
    }
  }
}

void type metadata accessor for UIView.Invalidating<CGFloat, UIView.Invalidations.Layout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIView.Invalidating<CGFloat, UIView.Invalidations.Layout>)
  {
    v1 = type metadata accessor for UIView.Invalidations.Layout();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v1, v2, v3);
    v4 = type metadata accessor for UIView.Invalidating();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UIView.Invalidating<CGFloat, UIView.Invalidations.Layout>);
    }
  }
}

void type metadata accessor for UIView.Invalidating<Bool, UIView.Invalidations.Layout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIView.Invalidating<Bool, UIView.Invalidations.Layout>)
  {
    type metadata accessor for UIView.Invalidations.Layout();
    v1 = type metadata accessor for UIView.Invalidating();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIView.Invalidating<Bool, UIView.Invalidations.Layout>);
    }
  }
}

uint64_t outlined destroy of AnyHashable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo17OS_dispatch_queueCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void partial apply for closure #1 in DetailsTabBarView.scrubToTabIfNecessary(_:at:offset:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v1;
  v10 = v7;
  v11 = v6;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  outlined init with copy of DetailsTab(v0 + 24, v8);
  v4(&v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v3;
  v5 = v2;
  static UIView.Invalidating.subscript.setter();
  [v5 layoutIfNeeded];
}

double partial apply for closure #3 in DetailsTabBarView.selectTab(_:animated:)(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static UIView.Invalidating.subscript.setter();
  DetailsTabBarView.isSelectionActive.didset(v6);
  [v4 layoutIfNeeded];

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance VerticalScrollViewFade@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails014VerticalScrollC4Fade33_E8D353ACCA81B55CCE99F5A517379BE5LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails014VerticalScrollC4Fade33_E8D353ACCA81B55CCE99F5A517379BE5LLVGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t lazy protocol witness table accessor for type VerticalScrollViewFade and conformance VerticalScrollViewFade(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type VerticalScrollViewFade and conformance VerticalScrollViewFade;
  if (!lazy protocol witness table cache variable for type VerticalScrollViewFade and conformance VerticalScrollViewFade)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalScrollViewFade and conformance VerticalScrollViewFade);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<VerticalScrollViewFade> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<VerticalScrollViewFade> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<VerticalScrollViewFade> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails014VerticalScrollC4Fade33_E8D353ACCA81B55CCE99F5A517379BE5LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails014VerticalScrollC4Fade33_E8D353ACCA81B55CCE99F5A517379BE5LLVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<VerticalScrollViewFade> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 298) = a4;
  *(v6 + 297) = a3;
  *(v6 + 80) = a1;
  *(v6 + 88) = a2;
  v7 = type metadata accessor for Date();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v6 + 136) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:), 0, 0);
}

uint64_t static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = swift_task_alloc();
  v0[24] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[25] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14PHPhotoLibraryCSg_So14PHConversationCSgtMd, &_sSo14PHPhotoLibraryCSg_So14PHConversationCSgtMR);
  *v4 = v0;
  v4[1] = static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);

  return MEMORY[0x1EEE6DDE0](v0 + 8, 0, 0, 0xD000000000000026, 0x80000001901FE780, partial apply for closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:), v3, v5);
}

{

  return MEMORY[0x1EEE6DFA0](static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:), 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  if (!v1)
  {

    v2 = 0;
LABEL_13:

    v33 = *(v0 + 8);

    return v33(v2);
  }

  if (!v2)
  {

    goto LABEL_13;
  }

  v3 = *(v0 + 152);
  v4 = *(v0 + 298);
  v5 = v1;
  v6 = v2;
  v7 = Logger.detailsPhotos.unsafeMutableAddressor();
  *(v0 + 224) = v7;
  v8 = *(v3 + 16);
  *(v0 + 232) = v8;
  *(v0 + 240) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9 = *(v0 + 144);
  if (v4)
  {
    v8(*(v0 + 184), v7, v9);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_190119000, v10, v11, "Skipping asset count fetch. Forcing syndication ingest.", v12, 2u);
      MEMORY[0x193AEBB30](v12, -1, -1);
    }

    v13 = *(v0 + 184);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v16 = *(v0 + 136);

    (*(v15 + 8))(v13, v14);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v5;
    v19 = v5;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:), v18);

    outlined destroy of NSObject?(v16, &_sScPSgMd, &_sScPSgMR);
    v20 = *(v0 + 96);
    v21 = [objc_opt_self() dataSourceManagerForAssetCollection_];
    *(v0 + 48) = closure #2 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
    *(v0 + 56) = 0;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed (@guaranteed PXMutableAssetsDataSourceManager) -> ();
    *(v0 + 40) = &block_descriptor_4;
    v22 = _Block_copy((v0 + 16));
    v23 = v21;
    [v23 performChanges_];
    _Block_release(v22);
    v24 = [v23 photoLibrary];
    v25 = [objc_opt_self() mediaProviderWithLibrary_];

    v26 = [objc_allocWithZone(MEMORY[0x1E69C45C8]) initWithDataSourceManager_];
    type metadata accessor for PhotosGridAssetActionManager();
    v27 = v26;
    v28 = PhotosGridAssetActionManager.__allocating_init(selectionManager:)(v26);
    v29 = v28;
    if (v20)
    {
      (*(v0 + 96))(v28);
    }

    v30 = *(v0 + 297);
    v2 = [objc_allocWithZone(MEMORY[0x1E69A2908]) initWithDataSourceManager:v23 mediaProvider:v25 selectionManager:v27 assetActionManager:v29 assetCollectionActionManager:0];

    [v2 setFooterVisibilityStyle_];
    [v2 setAllowedActions_];
    if (v30 == 1)
    {
      type metadata accessor for PhotosSenderAvatarView();
      [v2 setDecorationViewClass_];
    }

    v31 = *(v0 + 208);
    v32 = *(v0 + 216);
    [v2 setAllowsMultiSelectMenu_];
    [v2 setForbiddenBadges_];
    [v2 setBackgroundStyle_];
    [v2 setContentStartingPosition_];
    [v2 setContentMode_];
    [v2 setAllowsUserDefaults_];
    [v2 setSectionBodyStyle_];

    goto LABEL_13;
  }

  v8(*(v0 + 176), v7, v9);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_190119000, v35, v36, "Forcing syndication ingest before requesting asset count.", v37, 2u);
    MEMORY[0x193AEBB30](v37, -1, -1);
  }

  v38 = *(v0 + 176);
  v39 = *(v0 + 144);
  v40 = *(v0 + 152);
  v41 = *(v0 + 128);

  v42 = *(v40 + 8);
  *(v0 + 248) = v42;
  v42(v38, v39);
  static Date.now.getter();
  v43 = swift_task_alloc();
  *(v0 + 256) = v43;
  *(v43 + 16) = v5;
  *(v43 + 24) = v41;
  v44 = swift_task_alloc();
  *(v0 + 264) = v44;
  *v44 = v0;
  v44[1] = static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
  v45 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v44, 0, 0, 0xD00000000000001BLL, 0x80000001901FE7B0, partial apply for closure #1 in PHPhotoLibrary.forceSyndicationIngest(to:), v43, v45);
}

{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
  }

  else
  {

    v2 = static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v5 = *(v0 + 208);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *(v1 + 16) = v5;
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 296, 0, 0, 0xD000000000000020, 0x80000001901FE800, partial apply for closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:), v1, v3);
}

{

  return MEMORY[0x1EEE6DFA0](static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:), 0, 0);
}

{
  v33 = v0;
  if (v0[37])
  {
    v1 = v0[12];
    v2 = [objc_opt_self() dataSourceManagerForAssetCollection_];
    v0[6] = closure #2 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed PXMutableAssetsDataSourceManager) -> ();
    v0[5] = &block_descriptor_4;
    v3 = _Block_copy(v0 + 2);
    v4 = v2;
    [v4 performChanges_];
    _Block_release(v3);
    v5 = [v4 photoLibrary];
    v6 = [objc_opt_self() mediaProviderWithLibrary_];

    v7 = [objc_allocWithZone(MEMORY[0x1E69C45C8]) initWithDataSourceManager_];
    type metadata accessor for PhotosGridAssetActionManager();
    v8 = v7;
    v9 = PhotosGridAssetActionManager.__allocating_init(selectionManager:)(v7);
    v10 = v9;
    if (v1)
    {
      (v0[12])(v9);
    }

    v11 = *(v0 + 297);
    v12 = [objc_allocWithZone(MEMORY[0x1E69A2908]) initWithDataSourceManager:v4 mediaProvider:v6 selectionManager:v8 assetActionManager:v10 assetCollectionActionManager:0];

    [v12 setFooterVisibilityStyle_];
    [v12 setAllowedActions_];
    if (v11 == 1)
    {
      type metadata accessor for PhotosSenderAvatarView();
      [v12 setDecorationViewClass_];
    }

    v13 = v0[26];
    v14 = v0[27];
    [v12 setAllowsMultiSelectMenu_];
    [v12 setForbiddenBadges_];
    [v12 setBackgroundStyle_];
    [v12 setContentStartingPosition_];
    [v12 setContentMode_];
    [v12 setAllowsUserDefaults_];
    [v12 setSectionBodyStyle_];
  }

  else
  {
    (v0[29])(v0[20], v0[28], v0[18]);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[31];
    v19 = v0[26];
    v20 = v0[27];
    v21 = v0[20];
    v22 = v0[18];
    if (v17)
    {
      v30 = v0[20];
      v31 = v0[31];
      v24 = v0[10];
      v23 = v0[11];
      v29 = v0[18];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v32);
      _os_log_impl(&dword_190119000, v15, v16, "There were no assets for conversation with id %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x193AEBB30](v26, -1, -1);
      MEMORY[0x193AEBB30](v25, -1, -1);

      v31(v30, v29);
    }

    else
    {

      v18(v21, v22);
    }

    v12 = 0;
  }

  v27 = v0[1];

  return v27(v12);
}

{
  v1 = *(v0 + 272);
  aBlock = (v0 + 16);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);

  (*(v6 + 8))(v7, v8);
  v2(v4, v3, v5);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 272);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_190119000, v10, v11, "Encountered error when running forceSyndicationIngestAsync: %@. Will not fetch asset count.", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x193AEBB30](v15, -1, -1);
    MEMORY[0x193AEBB30](v14, -1, -1);
  }

  else
  {
  }

  (*(v0 + 248))(*(v0 + 168), *(v0 + 144));
  v18 = *(v0 + 96);
  v19 = [objc_opt_self() dataSourceManagerForAssetCollection_];
  *(v0 + 48) = closure #2 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
  *(v0 + 56) = 0;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = thunk for @escaping @callee_guaranteed (@guaranteed PXMutableAssetsDataSourceManager) -> ();
  *(v0 + 40) = &block_descriptor_4;
  v20 = _Block_copy(aBlock);
  v21 = v19;
  [v21 performChanges_];
  _Block_release(v20);
  v22 = [v21 photoLibrary];
  v23 = [objc_opt_self() mediaProviderWithLibrary_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69C45C8]) initWithDataSourceManager_];
  type metadata accessor for PhotosGridAssetActionManager();
  v25 = v24;
  v26 = PhotosGridAssetActionManager.__allocating_init(selectionManager:)(v24);
  v27 = v26;
  if (v18)
  {
    (*(v0 + 96))(v26);
  }

  v28 = *(v0 + 297);
  v29 = [objc_allocWithZone(MEMORY[0x1E69A2908]) initWithDataSourceManager:v21 mediaProvider:v23 selectionManager:v25 assetActionManager:v27 assetCollectionActionManager:0];

  [v29 setFooterVisibilityStyle_];
  [v29 setAllowedActions_];
  if (v28 == 1)
  {
    type metadata accessor for PhotosSenderAvatarView();
    [v29 setDecorationViewClass_];
  }

  v30 = *(v0 + 208);
  v31 = *(v0 + 216);
  [v29 setAllowsMultiSelectMenu_];
  [v29 setForbiddenBadges_];
  [v29 setBackgroundStyle_];
  [v29 setContentStartingPosition_];
  [v29 setContentMode_];
  [v29 setAllowsUserDefaults_];
  [v29 setSectionBodyStyle_];

  v32 = *(v0 + 8);

  return v32(v29);
}

uint64_t closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:), 0, 0);
}

uint64_t closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:)(uint64_t a1)
{
  v2 = v1[8];
  v3 = v1[2];
  static Date.now.getter();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001901FE7B0, closure #1 in PHPhotoLibrary.forceSyndicationIngest(to:)partial apply, v4, v6);
}

uint64_t closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:)()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
  }

  else
  {

    v2 = closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v4 + 8))(v2, v3);
  v8 = Logger.detailsPhotos.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v8, v7);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[11];
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_190119000, v10, v11, "Encountered error when running forceSyndicationIngestAsync: %@", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x193AEBB30](v15, -1, -1);
    MEMORY[0x193AEBB30](v14, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v18 = v0[1];

  return v18();
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
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
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

void closure #2 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1901E8240;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = MEMORY[0x193AEA8E0](0x7461446465646461, 0xE900000000000065);
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = MEMORY[0x193AEA8E0](0x6165724365746164, 0xEB00000000646574);
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v2 + 40) = v8;
  type metadata accessor for NSSortDescriptor();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setSortDescriptors_];
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed PXMutableAssetsDataSourceManager) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMd, &_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  static TaskPriority.userInitiated.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:), v15);

  return outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for Logger();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:)()
{
  v1 = objc_opt_self();
  v0[6] = 0;
  v2 = [v1 openPhotoLibraryWithWellKnownIdentifier:3 error:v0 + 6];
  v3 = v0[6];
  v4 = v0[10];
  v5 = v0[11];
  if (v2)
  {
    v6 = v2;
    v7 = v0[13];
    v8 = v0[7];
    v9 = v0[8];
    v10 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1901E6CD0;
    *(v11 + 32) = v8;
    *(v11 + 40) = v9;
    v12 = v3;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [v6 librarySpecificFetchOptions];
    v15 = [v10 fetchConversationsWithConversationIDs:isa options:v14];

    v16 = [v15 firstObject];
    v17 = Logger.detailsPhotos.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v17, v4);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = v18 == 0;

      _os_log_impl(&dword_190119000, v19, v20, "Opened photo library, PHConversation is valid: %{BOOL}d", v21, 8u);
      MEMORY[0x193AEBB30](v21, -1, -1);
    }

    else
    {

      v19 = v18;
    }

    v36 = v0[13];
    v38 = v0[10];
    v37 = v0[11];

    (*(v37 + 8))(v36, v38);
    v0[4] = v6;
    v0[5] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMd, &_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v22 = v0[12];
    v23 = v3;
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v25 = Logger.detailsPhotos.unsafeMutableAddressor();
    (*(v5 + 16))(v22, v25, v4);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_190119000, v27, v28, "Encountered error opening syndication library: %@", v29, 0xCu);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x193AEBB30](v30, -1, -1);
      MEMORY[0x193AEBB30](v29, -1, -1);
    }

    v34 = v0[11];
    v33 = v0[12];
    v35 = v0[10];

    (*(v34 + 8))(v33, v35);
    v0[2] = 0;
    v0[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMd, &_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  v39 = v0[1];

  return v39();
}

uint64_t closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  static TaskPriority.userInitiated.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);
  v16 = a2;
  v17 = a3;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:), v15);

  return outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:), 0, 0);
}

uint64_t closure #1 in closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:)()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) librarySpecificFetchOptions];
  [v2 setIncludeGuestAssets_];
  [v2 setFetchLimit_];
  [v2 setShouldPrefetchCount_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1901E6CD0;
  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setFetchPropertySets_];

  v6 = [objc_opt_self() fetchAssetsInAssetCollection:v1 options:v2];
  v7 = [v6 count];

  *(v0 + 40) = v7 > 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  CheckedContinuation.resume(returning:)();

  v8 = *(v0 + 8);

  return v8();
}

id static PXPhotosViewConfiguration.allSyndicatedAssetsConfiguration.getter()
{
  v43[1] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v43[0] = 0;
  v5 = [v4 openPhotoLibraryWithWellKnownIdentifier:1 error:v43];
  if (v5)
  {
    v6 = v5;
    v7 = v43[0];
  }

  else
  {
    v8 = v43[0];
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = Logger.detailsPhotos.unsafeMutableAddressor();
    (*(v1 + 16))(v3, v10, v0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_190119000, v11, v12, "Failed to open syndication library.", v13, 2u);
      MEMORY[0x193AEBB30](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v6 = [v4 sharedPhotoLibrary];
  }

  v14 = v6;
  v15 = [v14 librarySpecificFetchOptions];
  [v15 setIncludeGuestAssets_];
  [v15 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v16 = swift_allocObject();
  v42 = xmmword_1901E51F0;
  *(v16 + 16) = xmmword_1901E51F0;
  *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 40) = v17;
  *(v16 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 56) = v18;
  *(v16 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 72) = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = v42;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = MEMORY[0x193AEA8E0](0x7461446465646461, 0xE900000000000065);
  v24 = [v22 initWithKey:v23 ascending:0];

  v25 = type metadata accessor for NSSortDescriptor();
  *(v21 + 56) = v25;
  *(v21 + 32) = v24;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v27 = MEMORY[0x193AEA8E0](0x6165724365746164, 0xEB00000000646574);
  v28 = [v26 initWithKey:v27 ascending:0];

  *(v21 + 88) = v25;
  *(v21 + 64) = v28;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = MEMORY[0x193AEA8E0](0x44497463656A626FLL, 0xE800000000000000);
  v31 = [v29 initWithKey:v30 ascending:0];

  *(v21 + 120) = v25;
  *(v21 + 96) = v31;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v15 setInternalSortDescriptors_];

  v33 = [objc_opt_self() fetchAssetsWithOptions_];
  v34 = [objc_allocWithZone(MEMORY[0x1E69C3878]) initWithAssetFetchResult:v33 options:2];
  v35 = [objc_allocWithZone(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration_];
  v36 = [objc_allocWithZone(MEMORY[0x1E69C37D8]) initWithPhotosDataSource_];
  v37 = [v36 photoLibrary];
  v38 = [objc_opt_self() mediaProviderWithLibrary_];

  type metadata accessor for PhotosGridAssetActionManager();
  v39 = PhotosGridAssetActionManager.__allocating_init(selectionManager:)(0);
  v40 = [objc_allocWithZone(MEMORY[0x1E69A2908]) initWithDataSourceManager:v36 mediaProvider:v38 selectionManager:0 assetActionManager:v39 assetCollectionActionManager:0];
  [v40 setFooterVisibilityStyle_];
  [v40 setAllowedActions_];
  [v40 setContentStartingPosition_];
  [v40 setSectionBodyStyle_];

  return v40;
}

void closure #1 in PHPhotoLibrary.forceSyndicationIngest(to:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in PHPhotoLibrary.forceSyndicationIngest(to:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_26_0;
  v11 = _Block_copy(aBlock);

  v12 = [a2 forceSyndicationIngestAsyncToDate:isa completionHandler:v11];
  _Block_release(v11);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0__1()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:)()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:);

  return closure #1 in static PXPhotosViewConfiguration.syndicatedAssetsConfiguration(conversationID:shouldShowAvatarAttribution:skipAssetCountFetch:configureActionPerformers:)(v3, v4, v5, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t type metadata accessor for NSSortDescriptor()
{
  result = lazy cache variable for type metadata for NSSortDescriptor;
  if (!lazy cache variable for type metadata for NSSortDescriptor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSSortDescriptor);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0__0;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_12(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_12TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_12TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:);

  return closure #1 in closure #1 in static PXPhotosViewConfiguration.hasVisibleAssets(in:collection:)(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t partial apply for closure #1 in closure #1 in PHPhotoLibrary.forceSyndicationIngest(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  if (!a1)
  {
    return CheckedContinuation.resume(returning:)();
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t partial apply for closure #1 in closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMd, &_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMR) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:);

  return closure #1 in closure #1 in static PXPhotosViewConfiguration.getPhotoLibraryAndPHConversation(for:)(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t DetailsHostingController.contentOffsetProxy.getter(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = *(v2 + class metadata base offset for DetailsHostingController);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  dispatch thunk of UIHostingController.rootView.getter();
  v7 = (*(*(v2 + class metadata base offset for DetailsHostingController + 8) + 8))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

id DetailsHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = specialized DetailsHostingController.init(rootView:)(a1);
  (*(*(*(v2 + class metadata base offset for DetailsHostingController) - 8) + 8))(a1);
  return v5;
}

id DetailsHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = specialized DetailsHostingController.init(rootView:)(a1);
  (*(*(*(v3 + class metadata base offset for DetailsHostingController) - 8) + 8))(a1);
  return v4;
}

id DetailsHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void @objc DetailsHostingController.init(coder:)(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  specialized DetailsHostingController.init(coder:)();
}

uint64_t sub_19018C074(uint64_t a1)
{
  v3 = v1;

  return a1;
}

id DetailsHostingController.__deallocating_deinit()
{
  v1 = type metadata accessor for DetailsHostingController(0, *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for DetailsHostingController), *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for DetailsHostingController + 8), *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for DetailsHostingController + 16));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized DetailsHostingController.init(rootView:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v8 - v2, v1);
  v4 = UIHostingController.init(rootView:)();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DetailsPresentationProxy.__allocating_init(presentationPerformer:presentingViewControllerProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *DetailsPresentationProxy.init(presentationPerformer:presentingViewControllerProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

Swift::Void __swiftcall DetailsPresentationProxy.present(_:style:animated:)(UIViewController *_, CommunicationDetails::DetailsPresentationProxy::PresentationStyle style, Swift::Bool animated)
{
  v4 = *(v3 + 16);
  v5 = *style;
  v4(_, &v5, animated);
}

void DetailsPresentationProxy.performPresentation(_:)(void (*a1)(void))
{
  v3 = (*(v1 + 32))();
  a1();
}

uint64_t DetailsPresentationProxy.deinit()
{

  return v0;
}

uint64_t DetailsPresentationProxy.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

Swift::Int DetailsPresentationProxy.PresentationStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DetailsPresentationProxy.PresentationStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DetailsPresentationProxy.PresentationStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DetailsPresentationProxy.PresentationStyle and conformance DetailsPresentationProxy.PresentationStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetailsPresentationProxy.PresentationStyle and conformance DetailsPresentationProxy.PresentationStyle;
  if (!lazy protocol witness table cache variable for type DetailsPresentationProxy.PresentationStyle and conformance DetailsPresentationProxy.PresentationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsPresentationProxy.PresentationStyle and conformance DetailsPresentationProxy.PresentationStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsPresentationProxy.PresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsPresentationProxy.PresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double DetailsContentOffsetProxyModifier.init(proxy:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v2 = *(*a1 + 544);

  v2(0);

  return result;
}

double DetailsContentOffsetProxyModifier.body(content:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v2;
  (*(v6 + 16))(&v15 - v9, a1, v5, v8);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v10, v5);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  *a2 = partial apply for closure #1 in DetailsContentOffsetProxyModifier.body(content:);
  a2[1] = v13;

  return result;
}

double closure #1 in DetailsContentOffsetProxyModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a2;
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMR);
  v9 = lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onScrollGeometryChange<A>(for:of:action:)>>.0> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DetailsContentOffsetProxyModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMR, MEMORY[0x1E697FDF8]);
  lazy protocol witness table accessor for type DetailsContentOffsetProxy.ScrollMetrics and conformance DetailsContentOffsetProxy.ScrollMetrics(v9, v10, v11);
  View.onScrollGeometryChange<A>(for:of:action:)();

  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance DetailsContentOffsetProxyModifier@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v2;
  (*(v6 + 16))(&v15 - v9, a1, v5, v8);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v10, v5);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  *a2 = closure #1 in DetailsContentOffsetProxyModifier.body(content:)partial apply;
  a2[1] = v13;

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DetailsContentOffsetProxyModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for DetailsContentOffsetProxyModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

double partial apply for closure #1 in DetailsContentOffsetProxyModifier.body(content:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0ge11OffsetProxyD0VGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in DetailsContentOffsetProxyModifier.body(content:)(a1, v1 + v4, v5);
}

double partial apply for closure #1 in closure #1 in DetailsContentOffsetProxyModifier.body(content:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GeometryProxy();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ScrollGeometry.contentOffset.getter();
  v3 = v2;
  ScrollGeometry.contentInsets.getter();
  v5 = v4;
  ScrollGeometry.contentSize.getter();
  v7 = v6;
  ScrollGeometry.containerSize.getter();
  v9 = v8;
  GeometryProxy.size.getter();
  v11 = v10;
  GeometryProxy.safeAreaInsets.getter();
  v13 = v11 + v12;
  GeometryProxy.safeAreaInsets.getter();
  if (v9 > v13 + v14)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13 + v14;
  }

  DetailsContentOffsetProxy.ScrollMetrics.init(contentOffsetY:contentHeight:containerHeight:)(v7, 0, a1, v3 + v5, v15);

  return result;
}

double partial apply for closure #2 in closure #1 in DetailsContentOffsetProxyModifier.body(content:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  v6 = a2[3];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(*v2 + 496))(0);
  v8[0] = v3;
  v8[1] = v4;
  v9 = v5;
  v10 = v6;
  (*(*v2 + 808))(v8);

  return result;
}

uint64_t lazy protocol witness table accessor for type GeometryReader<<<opaque return type of View.onScrollGeometryChange<A>(for:of:action:)>>.0> and conformance GeometryReader<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsContentOffsetProxy.ScrollMetrics and conformance DetailsContentOffsetProxy.ScrollMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetailsContentOffsetProxy.ScrollMetrics and conformance DetailsContentOffsetProxy.ScrollMetrics;
  if (!lazy protocol witness table cache variable for type DetailsContentOffsetProxy.ScrollMetrics and conformance DetailsContentOffsetProxy.ScrollMetrics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsContentOffsetProxy.ScrollMetrics and conformance DetailsContentOffsetProxy.ScrollMetrics);
  }

  return result;
}

uint64_t one-time initialization function for detailsViewController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.detailsViewController);
  __swift_project_value_buffer(v0, static Logger.detailsViewController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for detailsPhotos()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.detailsPhotos);
  __swift_project_value_buffer(v0, static Logger.detailsPhotos);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for quicklookUtilities()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.quicklookUtilities);
  __swift_project_value_buffer(v0, static Logger.quicklookUtilities);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for segmentedTabControl()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.segmentedTabControl);
  __swift_project_value_buffer(v0, static Logger.segmentedTabControl);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.detailsViewController.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logger.detailsViewController.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t dispatch thunk of DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ParticipantGrid.Delegate.isScreenSharingAvailable(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of ParticipantGrid.Delegate.isScreenSharingAvailable(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ParticipantGrid.Delegate.isScreenSharingAvailable(for:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t DetailsViewController.addTab(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v39 = a1[3];
  v12 = a1[4];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))(v6))
  {
    v40[0] = v10;
    v40[1] = v9;
    v40[2] = v11;
    v40[3] = v39;
    v40[4] = v12;
    return DetailsViewController.addTabToViewHierarchy(_:)(v40);
  }

  else
  {
    v38 = v10;
    v14 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v14, v4);

    v15 = Logger.logObject.getter();
    v16 = v11;
    v17 = static os_log_type_t.debug.getter();

    v37 = v16;

    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v12;
      v20 = v19;
      v40[0] = v19;
      *v18 = 136315138;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v9, v40);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_190119000, v15, v17, "View is not loaded, deferring addition of tab with id %s.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v22 = v20;
      v12 = v36;
      MEMORY[0x193AEBB30](v22, -1, -1);
      MEMORY[0x193AEBB30](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v23 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);

    v24 = v37;

    v25 = v23(v40);
    v27 = v26;
    v28 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      *v27 = v28;
    }

    v30 = v38;
    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    if (v32 >= v31 >> 1)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v28);
      *v27 = v28;
    }

    *(v28 + 2) = v32 + 1;
    v33 = &v28[40 * v32];
    *(v33 + 4) = v30;
    *(v33 + 5) = v9;
    v34 = v39;
    *(v33 + 6) = v24;
    *(v33 + 7) = v34;
    *(v33 + 8) = v12;
    return v25(v40, 0);
  }
}

uint64_t DetailsViewController.addTabToViewHierarchy(_:)(char *a1)
{
  v121 = type metadata accessor for Logger();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v112 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v112 - v12;
  v14 = *(a1 + 1);
  v130 = *a1;
  v128 = v14;
  v15 = *(a1 + 2);
  v118 = *(a1 + 3);
  v124 = *(a1 + 4);
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v119 = (*MEMORY[0x1E69E7D40] & *v1) + 216;
  v122 = v1;
  v123 = v16;
  v17 = v16(v11);
  v18 = (v17 + 64);
  v126 = -*(v17 + 16);
  v127 = v17;
  v19 = -1;
  v129 = v15;
  v125 = v13;
  do
  {
    if ((v126 + v19) == -1)
    {

      v21 = v9;
      v22 = Logger.detailsViewController.unsafeMutableAddressor();
      v4 = v120;
      v3 = v120 + 2;
      v23 = v120[2];
      v23(v21, v22, v121);
      v24 = v128;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      v27 = os_log_type_enabled(v25, v26);
      v115 = v3;
      v114 = v22;
      v113 = v23;
      if (v27)
      {
        v28 = swift_slowAlloc();
        v3 = swift_slowAlloc();
        v136[0] = v3;
        *v28 = 136315138;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v24, v136);

        *(v28 + 4) = v29;
        _os_log_impl(&dword_190119000, v25, v26, "Adding tab with id %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v3);
        MEMORY[0x193AEBB30](v3, -1, -1);
        MEMORY[0x193AEBB30](v28, -1, -1);
      }

      v112 = v4[1];
      v30 = v112(v21, v121);
      v2 = v123;
      v116 = *((v123)(v30) + 16);

      v9 = (v2)(v31);
      v19 = v124;
      v127 = *(v9 + 2);
      if (!v127)
      {
LABEL_19:

        v18 = v122;
        v13 = *((v2)(v36) + 16);

LABEL_25:
        v4 = MEMORY[0x1E69E7D40];
        a1 = *((*MEMORY[0x1E69E7D40] & *v18) + 0xE8);
        v3 = ((*MEMORY[0x1E69E7D40] & *v18) + 232);
        v9 = v128;

        v47 = v129;

        v2 = &v131;
        v48 = (a1)(&v131);
        if (*(*v49 + 16) >= v13)
        {
          v50 = v48;
          v136[0] = v130;
          v136[1] = v9;
          v136[2] = v47;
          v136[3] = v118;
          v136[4] = v19;
          specialized Array.replaceSubrange<A>(_:with:)(v13, v13, v136);

          v51 = v50(&v131, 0);
          v3 = ((*v4 & *v18) + 336);
          v9 = *((*v4 & *v18) + 0x150);
          v52 = (v9)(v51);
          a1 = v52;
          v2 = v4;
          if ((v52 & 0xC000000000000001) == 0)
          {
            v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v53)
            {
              __break(1u);
              goto LABEL_59;
            }

            v54 = *(v52 + 32);

LABEL_29:

            v56 = (*(*v54 + 440))(v55);

            v58 = (v9)(v57);
            a1 = v58;
            if ((v58 & 0xC000000000000001) != 0)
            {
              v59 = MEMORY[0x193AEB000](0, v58);
            }

            else
            {
              v53 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v53)
              {
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v59 = *(v58 + 32);
            }

            v61 = (*(*v59 + 360))(v60);

            v62 = (*((*v2 & *v18) + 0x148))(&v131);
            v53 = *(*v63 + 16);
            if (v53 >= v13)
            {
              v64 = v62;
              v127 = v9;
              v129 = v3;
              specialized Array.replaceSubrange<A>(_:with:)(v13, v13, v56);
              v64(&v131, 0);
              type metadata accessor for DetailsContentOffsetProxy(0);
              v65 = swift_allocObject();
              swift_unknownObjectWeakInit();
              type metadata accessor for MainActor();
              v66 = v128;

              v67 = static MainActor.shared.getter();
              v68 = swift_allocObject();
              v68[2] = v67;
              v19 = MEMORY[0x1E69E7D40];
              v69 = MEMORY[0x1E69E85E0];
              v68[3] = MEMORY[0x1E69E85E0];
              v68[4] = v65;
              v68[5] = v13;

              v70 = swift_allocObject();
              swift_unknownObjectWeakInit();

              v71 = static MainActor.shared.getter();
              v72 = swift_allocObject();
              v72[2] = v71;
              v72[3] = v69;
              v72[4] = v70;
              v72[5] = v13;
              v72[6] = v130;
              v72[7] = v66;

              Binding.init(get:set:)();
              v73 = v131;
              v74 = v132;
              v75 = v133;
              v76 = default argument 1 of DetailsContentOffsetProxy.init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)();
              v77 = default argument 2 of DetailsContentOffsetProxy.init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)();
              v4 = DetailsContentOffsetProxy.__allocating_init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)(v13, v73, v74, v76, v77, v75);
              (*(*v4 + 368))(v61);
              v78 = *((*v19 & *v18) + 0x160);

              a1 = v78(&v131);
              v53 = *v79;
              if (!(*v79 >> 62))
              {
                v80 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_35;
              }

LABEL_61:
              if (v53 < 0)
              {
                v111 = v53;
              }

              else
              {
                v111 = v53 & 0xFFFFFFFFFFFFFF8;
              }

              v80 = MEMORY[0x193AEB0F0](v111);
LABEL_35:
              v81 = v123;
              if (v80 < v13)
              {
                __break(1u);
              }

              else
              {
                specialized Array.replaceSubrange<A>(_:with:)(v13, v13, v4, &v137);

                v82 = (a1)(&v131, 0);
                result = (*((*v19 & *v18) + 0x1C8))(v82);
                if (!result)
                {
                  goto LABEL_68;
                }

                v83 = result;
                v84 = v81();
                v85 = (*((*v19 & *v18) + 0xF0))(&v131);
                v86 = v132;
                if (v132)
                {
                  v87 = v131;
                  v88 = *&v133;
                  v89 = v134;
                  v90 = v135;
                }

                else
                {
                  v91 = (v81)(v85);
                  if (v91[2])
                  {
                    v87 = v91[4];
                    v86 = v91[5];
                    v88 = v91[6];
                    v89 = v91[7];
                    v90 = v91[8];
                  }

                  else
                  {

                    v87 = 0;
                    v86 = 0;
                    v88 = 0;
                    v89 = 0;
                    v90 = 0;
                  }
                }

                v131 = v87;
                v132 = v86;
                v133 = *&v88;
                v134 = v89;
                v135 = v90;
                v92 = swift_allocObject();
                swift_unknownObjectWeakInit();

                Header.HeaderView.configureHeaderTabs(for:selectedTab:onTabChange:)(v84, &v131, partial apply for closure #5 in DetailsViewController.addTabToViewHierarchy(_:), v92);

                outlined consume of DetailsTab?(v131, v132, *&v133, v134, v135);

                result = (v127)(v93);
                a1 = result;
                if ((result & 0xC000000000000001) == 0)
                {
                  v94 = v121;
                  if (v13 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v95 = *(result + 8 * v13 + 32);

                    goto LABEL_45;
                  }

                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              v95 = MEMORY[0x193AEB000](v13, a1);
              v94 = v121;
LABEL_45:

              v97 = v122;
              v98 = MEMORY[0x1E69E7D40];
              v99 = (*((*MEMORY[0x1E69E7D40] & *v122) + 0x198))(v96);
              v100 = v118(v95, v99);
              v102 = v101;

              result = (*((*v98 & *v97) + 0x1B0))(v103);
              if (result)
              {
                v104 = result;
                (*((*v98 & *result) + 0x100))(v100, v102, v13);

                if (v116 != 1)
                {

                  v108 = v122;
                  goto LABEL_52;
                }

                v113(v117, v114, v94);
                v105 = Logger.logObject.getter();
                v106 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v105, v106))
                {
                  v107 = swift_slowAlloc();
                  *v107 = 0;
                  _os_log_impl(&dword_190119000, v105, v106, "Forcing a layout pass because we'll be showing the horizontal tabs for the first time.", v107, 2u);
                  MEMORY[0x193AEBB30](v107, -1, -1);
                }

                v112(v117, v94);
                v108 = v122;
                result = [v122 view];
                if (result)
                {
                  v109 = result;

                  [v109 setNeedsLayout];

LABEL_52:
                  v110.value._countAndFlagsBits = (*(**(v108 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration) + 296))();
                  DetailsViewController.setSelectedTab(_:animated:)(v110, 0);
                }

LABEL_70:
                __break(1u);
                return result;
              }

LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_56:
          v54 = MEMORY[0x193AEB000](0, a1);
          goto LABEL_29;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      a1 = type metadata accessor for MainActor();
      v13 = 0;
      v32 = *(*v129 + 192);
      v125 = *v129 + 192;
      v126 = v32;
      v18 = v9 + 64;
      while (v13 < *(v9 + 2))
      {
        v3 = *(v18 - 2);
        v4 = *v18;

        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        isCurrentExecutor = swift_task_isCurrentExecutor();
        if ((isCurrentExecutor & 1) == 0)
        {
          isCurrentExecutor = swift_task_reportUnexpectedExecutor();
        }

        v34 = (*(*v3 + 192))(isCurrentExecutor);
        v35 = v126();

        if (v35 < v34)
        {

          v18 = v122;
          v19 = v124;
          goto LABEL_25;
        }

        ++v13;
        v18 += 5;
        v19 = v124;
        v2 = v123;
        if (v127 == v13)
        {
          goto LABEL_19;
        }
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (++v19 >= *(v127 + 2))
    {
      __break(1u);
      goto LABEL_54;
    }

    a1 = v9;
    v3 = *(v18 - 4);
    v20 = *(v18 - 3);
    type metadata accessor for MainActor();

    static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v3 == v130 && v20 == v128)
    {

      v13 = v125;
      goto LABEL_21;
    }

    v18 += 5;
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = v125;
  }

  while ((v2 & 1) == 0);

LABEL_21:
  v37 = Logger.detailsViewController.unsafeMutableAddressor();
  v38 = v120;
  v39 = v121;
  (v120[2])(v13, v37, v121);
  v40 = v128;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v136[0] = v44;
    *v43 = 136315138;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v40, v136);

    *(v43 + 4) = v45;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x193AEBB30](v44, -1, -1);
    MEMORY[0x193AEBB30](v43, -1, -1);
  }

  return (v38[1])(v13, v39);
}

Swift::Void __swiftcall DetailsViewController.setSelectedTab(_:animated:)(Swift::String_optional _, Swift::Bool animated)
{
  if (_.value._object)
  {
    object = _.value._object;
    countAndFlagsBits = _.value._countAndFlagsBits;
    v34 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8);
    v4 = v34();
    v5 = v4;
    v6 = *(v4 + 16);
    v40 = object;
    if (v6)
    {
      v7 = 0;
      v8 = (v4 + 64);
      while (v7 < *(v5 + 16))
      {
        v9 = *(v8 - 3);
        v42 = *(v8 - 4);
        v10 = *(v8 - 2);
        v36 = *(v8 - 1);
        v11 = *v8;
        type metadata accessor for MainActor();
        v12 = v9;

        v13 = v10;

        v14 = v11;

        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v42 == countAndFlagsBits && v12 == v40)
        {
          v12 = v40;

          v42 = countAndFlagsBits;
LABEL_15:
          v17 = v36;
          goto LABEL_16;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {

          goto LABEL_15;
        }

        ++v7;

        v8 += 5;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
    }

    else
    {
LABEL_11:

      v42 = 0;
      v12 = 0;
      v13 = 0;
      v17 = 0;
      v14 = 0;
LABEL_16:
      v37 = v17;
      v30 = v14;
      v31 = v13;
      v18 = (v34)(v16);
      v35 = v12;
      v33 = *(v18 + 16);
      if (v33)
      {
        type metadata accessor for MainActor();
        v19 = 0;
        v20 = v18 + 64;
        while (1)
        {
          if (v19 >= *(v18 + 16))
          {
            goto LABEL_39;
          }

          v22 = *(v20 - 32);
          v21 = *(v20 - 24);

          static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          if (v22 == countAndFlagsBits && v21 == v40)
          {
            break;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {

            goto LABEL_28;
          }

          ++v19;
          v20 += 40;
          v12 = v35;
          if (v33 == v19)
          {
            goto LABEL_25;
          }
        }

LABEL_28:
        v41 = 0;
        v12 = v35;
        goto LABEL_29;
      }

LABEL_25:

      v19 = 0;
      v41 = 1;
LABEL_29:
      v43[0] = v42;
      v43[1] = v12;
      v43[2] = v31;
      v43[3] = v37;
      v43[4] = v30;
      v24 = MEMORY[0x1E69E7D40];
      v25 = *((*MEMORY[0x1E69E7D40] & *v32) + 0xF8);
      v26 = outlined copy of DetailsTab?(v42, v12, v31, v37, v30);
      v27 = v25(v43, v26);
      v28 = (*((*v24 & *v32) + 0x1B0))(v27);
      if (v28)
      {
        v39 = v28;
        if ((v41 & 1) == 0)
        {
          (*((*MEMORY[0x1E69E7D40] & *v28) + 0x128))(v19, animated);
        }

        outlined consume of DetailsTab?(v42, v35, v31, v37, v30);
      }

      else
      {

        outlined consume of DetailsTab?(v42, v12, v31, v37, v30);
      }
    }
  }
}

Swift::Void __swiftcall DetailsViewController.addTabsToViewHierarchy(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    type metadata accessor for MainActor();
    v3 = a1._rawValue + 64;
    do
    {
      v4 = *(v3 - 4);
      v5 = *(v3 - 3);
      v7 = *(v3 - 1);
      v6 = *v3;

      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8[0] = v4;
      v8[1] = v5;
      v9 = v7;
      v10 = v6;
      DetailsViewController.addTabToViewHierarchy(_:)(v8);

      v3 += 5;
      --v1;
    }

    while (v1);
  }
}

double *specialized Array.replaceSubrange<A>(_:with:)(double *result, int64_t a2, double a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x193AEB0F0](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x193AEB0F0](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

double *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(double *result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

void partial apply for closure #3 in DetailsViewController.addTabToViewHierarchy(_:)(double *a1@<X8>)
{
  v3 = *(v1 + 40);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    DetailsViewController.contentOffset(for:)(v3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
}

void partial apply for closure #4 in DetailsViewController.addTabToViewHierarchy(_:)(double *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    DetailsViewController.updateContentOffset(for:newValue:tabId:)(v2, v3, v4, v5);
  }
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v9 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v10 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for DetailsContentOffsetProxy(0);
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v12);
  v12 = v4 - v12;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v12)
  {
    v11 = v9 >> 62;
    if (!(v9 >> 62))
    {
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

LABEL_25:
    if (v9 < 0)
    {
      v21 = v9;
    }

    else
    {
      v21 = v5;
    }

    v22 = MEMORY[0x193AEB0F0](v21);
    v15 = v22 - v7;
    if (!__OFSUB__(v22, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v10[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v11)
      {
        if (v9 < 0)
        {
          v20 = v9;
        }

        else
        {
          v20 = v5;
        }

        v19 = MEMORY[0x193AEB0F0](v20);
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v12))
      {
        v5[2] = v19 + v12;
        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_20:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_32;
    }
  }
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    a4 = *v5 & 0xFFFFFFFFFFFFFF8;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  if (v8 < 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = a4;
  }

  if (MEMORY[0x193AEB0F0](v16) < v6)
  {
    goto LABEL_21;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  if (v9)
  {
    if (v8 < 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = MEMORY[0x193AEB0F0](v13);
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v12, v11);
  v15 = v12 + v11;
  if (v14)
  {
    goto LABEL_24;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v15, 1);

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, 1, v4);
}