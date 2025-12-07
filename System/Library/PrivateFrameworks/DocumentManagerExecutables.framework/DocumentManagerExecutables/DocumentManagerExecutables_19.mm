void DOCItemStatusView.statusAppearance.modify(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v6 != v3)
  {
    DOCItemStatusView.updateProgressDisplayProperties()();
    v7 = DOCItemStatusView.statusButton.getter();
    [v7 setNeedsUpdateConfiguration];
  }

  free(v2);
}

id DOCItemStatusView.statusImageFontStyle.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusImageFontStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemStatusView.statusImageFontStyle.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusImageFontStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCItemStatusView.updateProgressDisplayProperties()();
  v6 = DOCItemStatusView.statusButton.getter();
  [v6 setNeedsUpdateConfiguration];
}

uint64_t (*DOCItemStatusView.statusImageFontStyle.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemStatusView.statusImageFontStyle.modify;
}

void DOCItemStatusView.canShowStopButton.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCItemStatusView.updateProgressDisplayProperties()();
    v3 = DOCItemStatusView.statusButton.getter();
    [v3 setNeedsUpdateConfiguration];
  }
}

Swift::Void __swiftcall DOCItemStatusView.configureColors(inSelectedBackground:iconColor:containerTintColor:)(Swift::Bool inSelectedBackground, UIColor iconColor, UIColor containerTintColor)
{
  v6 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor);
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor) = iconColor;
  v7 = iconColor.super.isa;

  v8 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressCompletedColor);
  if (inSelectedBackground)
  {
    isa = v7;
  }

  else
  {
    isa = containerTintColor.super.isa;
  }

  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressCompletedColor) = isa;
  if (inSelectedBackground)
  {
    v10 = &selRef_defaultTrackColorOnSelectedBackground;
  }

  else
  {
    v10 = &selRef_defaultTrackColor;
  }

  v11 = isa;

  v12 = [objc_opt_self() *v10];
  v13 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressBackgroundRingColor);
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressBackgroundRingColor) = v12;

  DOCItemStatusView.updateProgressDisplayProperties()();
  v14 = DOCItemStatusView.statusButton.getter();
  [v14 setNeedsUpdateConfiguration];
}

uint64_t DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = DOCItemStatusView.statusButton.getter();
  DOCButton.hoverEffectsAllowedIfInteractionDisabled.setter(*(v1 + v3));
}

uint64_t (*DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.modify;
}

void DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCItemStatusView.statusButton.getter();
    DOCButton.hoverEffectsAllowedIfInteractionDisabled.setter(*(v4 + v5));
  }

  free(v3);
}

id DOCItemStatusView.statusButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton];
  }

  else
  {
    v4 = closure #1 in DOCItemStatusView.statusButton.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCItemStatusView.statusButton.getter(void *a1)
{
  v52 = a1;
  v1 = type metadata accessor for UIShape();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd, &_s5UIKit7UIShapeVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v49 - v20;
  v56 = &v49 - v20;
  static UIButton.Configuration.borderless()();
  type metadata accessor for DOCButton();
  v22 = *(v10 + 16);
  v22(v17, v21, v9);
  v53 = v9;
  v22(v13, v17, v9);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = UIButton.init(configuration:primaryAction:)();
  v24 = *(v10 + 8);
  v54 = v10 + 8;
  v55 = v24;
  v24(v17, v9);
  v25 = v23;
  [v25 setUserInteractionEnabled_];
  [v25 setMinimumContentSizeCategory_];
  [v25 setMaximumContentSizeCategory_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle, 0x277D755A8);
  static UIShape.circle.getter();
  UIShape.inset(by:)();
  v27 = v50;
  v26 = v51;
  (*(v50 + 8))(v4, v51);
  (*(v27 + 56))(v8, 0, 1, v26);
  v28 = UIHoverStyle.init(shape:)();
  [v25 setHoverStyle_];

  v29 = swift_allocObject();
  v30 = v52;
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #2 in closure #1 in DOCItemStatusView.statusButton.getter;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_26;
  v31 = _Block_copy(aBlock);
  v32 = v25;

  [v32 setConfigurationUpdateHandler_];
  _Block_release(v31);

  [v30 addSubview_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_249BA0470;
  v35 = [v32 leadingAnchor];
  v36 = [v30 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [v30 trailingAnchor];
  v39 = [v32 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v34 + 40) = v40;
  v41 = [v32 topAnchor];
  v42 = [v30 topAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v34 + 48) = v43;
  v44 = [v30 bottomAnchor];
  v45 = [v32 bottomAnchor];

  v46 = [v44 constraintEqualToAnchor_];
  *(v34 + 56) = v46;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints_];

  v55(v56, v53);
  return v32;
}

void *closure #2 in closure #1 in DOCItemStatusView.statusButton.getter(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29[-v9];
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    UIButton.configuration.getter();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return outlined destroy of UIButton.Configuration?(v10);
    }

    else
    {
      v18 = (*(v12 + 32))(v15, v10, v11);
      v19 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v17) + 0xC8))(&v30, v18);
      DOCNodeStatusAppearance.image(with:)(0, 1);
      v20 = UIButton.Configuration.image.setter();
      v21 = (*((*v19 & *v17) + 0xE0))(v20);
      v22 = [objc_opt_self() configurationWithTextStyle:v21 scale:*(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_metrics + 8)];

      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
      UIButton.Configuration.contentInsets.setter();
      v23 = [v17 traitCollection];
      v24 = [v23 userInterfaceIdiom];

      if (v24 == 6)
      {
        v25 = [objc_opt_self() whiteColor];
      }

      else
      {
        v26 = *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor);
      }

      UIButton.Configuration.baseForegroundColor.setter();
      (*(v12 + 16))(v6, v15, v11);
      (*(v12 + 56))(v6, 0, 1, v11);
      UIButton.configuration.setter();
      v27 = UIButton.Configuration.image.getter();
      v28 = v27;
      if (v27)
      {
      }

      [a1 setHidden_];

      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

void DOCItemStatusView.makeProgressViewIfNeeded()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView;
  if (!*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView))
  {
    v2 = v0;
    v3 = [objc_allocWithZone(DOCDownloadProgressView) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 setActiveStrokeColor_];
    v4 = [v3 setInactiveStrokeColor_];
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v0) + 0x1C0))(v4);
    [v3 setObservedProgress_];

    [v3 setCanShowStopButton_];
    [v2 addSubview_];
    v7 = DOCConstraintsToResizeWithSuperview();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v9 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 activateConstraints_];

    v11 = *(v2 + v1);
    *(v2 + v1) = v3;
  }
}

void *DOCItemStatusView.observedProgress.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemStatusView.observedProgress.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    if (([v5 isFinished] & 1) == 0)
    {
      DOCItemStatusView.makeProgressViewIfNeeded()();
    }
  }

  DOCItemStatusView.updateProgressDisplayProperties()();
  v6 = DOCItemStatusView.statusButton.getter();
  [v6 setNeedsUpdateConfiguration];
}

uint64_t (*DOCItemStatusView.observedProgress.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemStatusView.observedProgress.modify;
}

void DOCItemStatusView.observedProgress.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      if (([v5 isFinished] & 1) == 0)
      {
        DOCItemStatusView.makeProgressViewIfNeeded()();
      }
    }

    DOCItemStatusView.updateProgressDisplayProperties()();
    v6 = DOCItemStatusView.statusButton.getter();
    [v6 setNeedsUpdateConfiguration];
  }

  free(v3);
}

void DOCItemStatusView.updateProgressDisplayProperties()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1C0);
    v11 = v1;
    v4 = v3();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v3();
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 isFinished];

    if ((v7 & 1) == 0 && (v8 = (*((*v2 & *v0) + 0xC8))(&v12), v12 == 7))
    {
      v9 = (v3)(v8);
      v10 = 0;
    }

    else
    {
LABEL_7:
      v9 = 0;
      v10 = 1;
    }

    [v11 setObservedProgress_];

    [v11 setCanShowStopButton_];
    [v11 setActiveStrokeColor_];
    [v11 setInactiveStrokeColor_];
  }
}

id DOCItemStatusView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCItemStatusView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_canShowStopButton] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusAppearance] = 2;
  v9 = *MEMORY[0x277D76918];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusImageFontStyle] = *MEMORY[0x277D76918];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor;
  v11 = objc_opt_self();
  v12 = v9;
  *&v4[v10] = [v11 secondaryLabelColor];
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressCompletedColor;
  v14 = objc_opt_self();
  *&v4[v13] = [v14 defaultProgressColor];
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressBackgroundRingColor;
  *&v4[v15] = [v14 defaultTrackColor];
  v16 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_metrics];
  *v16 = 0;
  v16[1] = 2;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for DOCItemStatusView();
  return objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCItemStatusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCItemStatusView.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_canShowStopButton] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusAppearance] = 2;
  v3 = *MEMORY[0x277D76918];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusImageFontStyle] = *MEMORY[0x277D76918];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor;
  v5 = objc_opt_self();
  v6 = v3;
  *&v1[v4] = [v5 secondaryLabelColor];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressCompletedColor;
  v8 = objc_opt_self();
  *&v1[v7] = [v8 defaultProgressColor];
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressBackgroundRingColor;
  *&v1[v9] = [v8 defaultTrackColor];
  v10 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_metrics];
  *v10 = 0;
  v10[1] = 2;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress] = 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DOCItemStatusView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id DOCItemStatusView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DOCItemStatusView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id UIView.enclosingTabSwitcherStyle.getter(SEL *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 *a1];

  return v4;
}

double @objc UIView.enclosingUIPHorizontalInset.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  [v2 enclosingUIPHorizontalInset];
  v4 = v3;

  return v4;
}

double UIView.enclosingUIPHorizontalInset.getter()
{
  v1 = [v0 traitCollection];
  [v1 enclosingUIPHorizontalInset];
  v3 = v2;

  return v3;
}

uint64_t UITraitCollection.enclosingTabSwitcherStyle.getter()
{
  lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle, type metadata accessor for DOCTabSwitcherStyle, &protocol conformance descriptor for DOCTabSwitcherStyle);
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t UITraitCollection.enclosingDocumentLandingMode.getter()
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCUIPDocumentLandingMode and conformance DOCUIPDocumentLandingMode, type metadata accessor for DOCUIPDocumentLandingMode, &protocol conformance descriptor for DOCUIPDocumentLandingMode);
  UITraitCollection.subscript.getter();
  return v1;
}

double UITraitCollection.enclosingUIPHorizontalInset.getter()
{
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();

  UITraitCollection.subscript.getter();
  return result;
}

BOOL static UITraitCollection.enclosingTabSwitcherCanBeFloating.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

id UITraitCollection.contextPrefersVariableBlurBottomTabBar.getter()
{
  v1 = [v0 enclosingTabSwitcherStyle];
  v2 = [v0 horizontalSizeClass];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (v1 != 1)
  {
    return 0;
  }

  v4 = IsReduceTransparencyEnabled;
  result = [v0 enclosedInUIPDocumentLanding];
  if (result)
  {
    return (v2 == 1 && !v4);
  }

  return result;
}

id DOCConfiguration.canHaveFloatingTabSwitcher.getter()
{
  result = [objc_opt_self() enclosingTabSwitcherCanBeFloating];
  if (result)
  {
    return ([v0 isPickerUI] ^ 1);
  }

  return result;
}

id @objc UITraitCollection.descriptionOfDOCUIPTraits.getter(void *a1)
{
  v1 = a1;
  v2 = UITraitCollection.descriptionOfDOCUIPTraits.getter();
  v4 = v3;

  v5 = MEMORY[0x24C1FAD20](v2, v4);

  return v5;
}

uint64_t UITraitCollection.descriptionOfDOCUIPTraits.getter()
{
  _StringGuts.grow(_:)(108);
  MEMORY[0x24C1FAEA0](0xD00000000000001FLL, 0x8000000249BD3870);
  v1 = [v0 enclosingTabSwitcherStyle];
  if (!v1)
  {
    v2 = 0xE600000000000000;
    v3 = 0x736261546F6ELL;
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 0xEE00726142676E69;
    v3 = 0x74616F6C46706F74;
LABEL_7:
    MEMORY[0x24C1FAEA0](v3, v2);

    MEMORY[0x24C1FAEA0](0xD000000000000024, 0x8000000249BD3890);
    [v0 enclosingDocumentLandingMode];
    type metadata accessor for DOCUIPDocumentLandingMode(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD38C0);
    [v0 enclosingUIPHorizontalInset];
    v4 = Double.description.getter();
    MEMORY[0x24C1FAEA0](v4);

    return 0;
  }

  if (v1 == 1)
  {
    v2 = 0xE900000000000072;
    v3 = 0x61426D6F74746F62;
    goto LABEL_7;
  }

  type metadata accessor for DOCTabSwitcherStyle(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t UIMutableTraits.enclosingTabSwitcherStyle.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle, type metadata accessor for DOCTabSwitcherStyle, &protocol conformance descriptor for DOCTabSwitcherStyle);
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v3;
}

uint64_t (*UIMutableTraits.enclosingTabSwitcherStyle.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.enclosingTabSwitcherStyle.getter(a2, a3);
  return UIMutableTraits.enclosingTabSwitcherStyle.modify;
}

uint64_t UIMutableTraits.uipDocumentLandingMode.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCUIPDocumentLandingMode and conformance DOCUIPDocumentLandingMode, type metadata accessor for DOCUIPDocumentLandingMode, &protocol conformance descriptor for DOCUIPDocumentLandingMode);
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v3;
}

uint64_t UIMutableTraits.uipDocumentLandingMode.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCUIPDocumentLandingMode and conformance DOCUIPDocumentLandingMode, type metadata accessor for DOCUIPDocumentLandingMode, &protocol conformance descriptor for DOCUIPDocumentLandingMode);
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*UIMutableTraits.uipDocumentLandingMode.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.uipDocumentLandingMode.getter(a2, a3);
  return UIMutableTraits.uipDocumentLandingMode.modify;
}

uint64_t UIMutableTraits.enclosingUIPHorizontalInset.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();

  return dispatch thunk of UIMutableTraits.subscript.getter();
}

uint64_t UIMutableTraits.enclosingUIPHorizontalInset.setter(uint64_t a1, uint64_t a2, double a3)
{
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*UIMutableTraits.enclosingUIPHorizontalInset.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t *a1)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  *a1 = v5;
  return UIMutableTraits.enclosingUIPHorizontalInset.modify;
}

uint64_t UITraitOverrides.enclosingTabSwitcherStyleIfSet.getter()
{
  lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  if ((UITraitOverrides.contains(_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UITraitOverrides();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle, type metadata accessor for DOCTabSwitcherStyle, &protocol conformance descriptor for DOCTabSwitcherStyle);
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

uint64_t UITraitOverrides.uipDocumentLandingModeIfSet.getter()
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
    ;
  }

  return 0;
}

uint64_t static DOCTabSwitcherStyleTrait.name.getter(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

double static DOCTabSwitcherStyleTrait.name.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;

  return result;
}

double key path setter for static DOCTabSwitcherStyleTrait.name : DOCTabSwitcherStyleTrait.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;

  return result;
}

uint64_t keypath_get_9Tm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

id UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
  v17 = &block_descriptor_68_0;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v17 = &block_descriptor_65;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4, a5);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void *ProviderDomainState.init(source:domain:alertPresenting:stateDidChange:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  swift_allocObject();
  v11 = specialized DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel.init(for:)(a2);
  v12 = objc_allocWithZone(type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemView(0));

  v14 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.init(with:)(v13);
  v15 = [objc_opt_self() shared];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  aBlock[4] = partial apply for closure #1 in ProviderDomainState.init(source:domain:alertPresenting:stateDidChange:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_43;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  [v15 performAfterLaunch_];
  _Block_release(v17);

  v7[2] = v11;

  v19 = v7[3];
  v7[3] = v18;
  v46 = v18;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static DOCUSBFormatting.shared;
  v21 = [a2 identifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = (*(*v20 + 160))(v22, v24);

  if (v25)
  {
    aBlock[0] = v25;
    swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;

    v27 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v28 = v7[4];
    v7[4] = v27;
  }

  if ([a1 isEjectable])
  {
    v29 = type metadata accessor for DOCEjectionController();
    v30 = objc_allocWithZone(v29);
    v45 = a2;
    swift_unknownObjectWeakInit();
    *&v30[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
    swift_unknownObjectWeakInit();
    *&v30[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
    *&v30[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a1;
    swift_unknownObjectWeakAssign();
    v50.receiver = v30;
    v50.super_class = v29;
    v31 = a1;
    v32 = a3;
    v33 = objc_msgSendSuper2(&v50, sel_init);
    aBlock[0] = v31;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = v33;
    v35 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v36 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
    swift_beginAccess();
    v37 = *&v34[v36];
    *&v34[v36] = v35;

    v38 = type metadata accessor for EjectStateDelegate();
    v39 = objc_allocWithZone(v38);
    v40 = &v39[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8DF2B3C7EA992A572C5DD842497A91B118EjectStateDelegate_stateDidChange];
    *v40 = a4;
    *(v40 + 1) = a5;
    v49.receiver = v39;
    v49.super_class = v38;

    v41 = objc_msgSendSuper2(&v49, sel_init);

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v42 = v7[5];
    v7[5] = v33;

    v43 = v7[6];
    v7[6] = v41;
  }

  else
  {
  }

  return v7;
}

uint64_t ProviderDomainState.getEjectAccessory()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UICellAccessory.Placement();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 40);
  if (v17)
  {
    v18 = *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source];
    v19 = v17;
    if ([v18 isEjectable])
    {
      v30 = DOCEjectionController._button.getter();

      v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
      v21 = *MEMORY[0x277D74A98];
      v22 = type metadata accessor for UICellAccessory.DisplayedState();
      (*(*(v22 - 8) + 104))(v11, v21, v22);
      *v20 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
      v20[1] = 0;
      (*(v8 + 104))(v11, *MEMORY[0x277D74AD8], v7);
      v23 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      v24 = v30;
      UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
      static UICellAccessory.customView(configuration:)();

      (*(v13 + 8))(v16, v12);
      v25 = type metadata accessor for UICellAccessory();
      return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
    }
  }

  v27 = type metadata accessor for UICellAccessory();
  v28 = *(*(v27 - 8) + 56);

  return v28(a1, 1, 1, v27);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UICellAccessory.Placement();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 16);
  if (v17)
  {
    v18 = *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source];
    v19 = v17;
    if ([v18 isEjectable])
    {
      v30 = DOCEjectionController._button.getter();

      v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
      v21 = *MEMORY[0x277D74A98];
      v22 = type metadata accessor for UICellAccessory.DisplayedState();
      (*(*(v22 - 8) + 104))(v11, v21, v22);
      *v20 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
      v20[1] = 0;
      (*(v8 + 104))(v11, *MEMORY[0x277D74AD8], v7);
      v23 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      v24 = v30;
      UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
      static UICellAccessory.customView(configuration:)();

      (*(v13 + 8))(v16, v12);
      v25 = type metadata accessor for UICellAccessory();
      return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
    }
  }

  v27 = type metadata accessor for UICellAccessory();
  v28 = *(*(v27 - 8) + 56);

  return v28(a1, 1, 1, v27);
}

void ProviderDomainState.invalidate()()
{
  v1 = v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = *((*MEMORY[0x277D85000] & *v2) + 0xE8);
    v4 = v2;
    v3();

    v2 = v1[3];
  }

  v1[3] = 0;

  v1[2] = 0;

  v5 = v1[4];
  if (v5)
  {
    v6 = v5;
    dispatch thunk of NSKeyValueObservation.invalidate()();

    v5 = v1[4];
  }

  v1[4] = 0;

  v7 = v1[5];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (v9)
    {
      v10 = v9;
      dispatch thunk of NSKeyValueObservation.invalidate()();
    }
  }

  v11 = v1[5];
  v1[5] = 0;

  v12 = v1[6];
  v1[6] = 0;
}

uint64_t ProviderDomainState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void LocationSectionManager.dataSource.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*LocationSectionManager.dataSource.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return LocationSectionManager.dataSource.modify;
}

void LocationSectionManager.dataSource.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *LocationSectionManager.trashObserver.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void LocationSectionManager.trashObserver.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

void *LocationSectionManager.trashSubscriber.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void LocationSectionManager.trashSubscriber.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t LocationSectionManager.__allocating_init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 3;
  swift_unknownObjectWeakInit();
  *(v8 + 96) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 104) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v8 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_SbTt0g5Tf4g_n(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9A480;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0xD000000000000027;
  *(v10 + 40) = 0x8000000249BD3A40;
  print(_:separator:terminator:)();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(35);

  v13 = [a1 hiddenSourcesIdentifiers];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = MEMORY[0x24C1FB0D0](v14, v11);
  v17 = v16;

  MEMORY[0x24C1FAEA0](v15, v17);

  *(v12 + 56) = v11;
  *(v12 + 32) = 0xD000000000000021;
  *(v12 + 40) = 0x8000000249BD3A70;
  print(_:separator:terminator:)();

  *(v8 + 24) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v8;
}

void *LocationSectionManager.init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = specialized LocationSectionManager.init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(a1, a2, a3, a4, a5);

  return v6;
}

Swift::Void __swiftcall LocationSectionManager.startObserving()()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v1[5];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = objc_allocWithZone(DOCSourceOrderObserver);
  v12[4] = partial apply for closure #1 in LocationSectionManager.startObserving();
  v12[5] = v4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v12[3] = &block_descriptor_27;
  v6 = _Block_copy(v12);

  v7 = [v5 initWithConfiguration:v2 sourceObserver:v3 updateBlock:v6];
  _Block_release(v6);

  v8 = v1[8];
  v1[8] = v7;

  if (!v1[9])
  {
    v9 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for DOCSourceVisibilityController.VisibilityObserver();
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #2 in LocationSectionManager.startObserving();
    *(v10 + 24) = v9;
    v1[9] = v10;

    DOCSourceVisibilityController.addObserver(_:)(v10);
  }

  v11 = v1[8];
  if (v11)
  {
    [v11 invokeUpdateBlock];
  }
}

double closure #1 in LocationSectionManager.startObserving()(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LocationSectionManager.handleSourceUpdate(_:)(a1);
  }

  return result;
}

double LocationSectionManager.handleSourceUpdate(_:)(unint64_t a1)
{
  if (one-time initialization token for Sidebar != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.Sidebar);
    v3 = a1;
    v4 = Logger.logObject.getter();
    LOBYTE(v5) = static os_log_type_t.debug.getter();
    v6 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    if (os_log_type_enabled(v4, v5))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = [v3 regularSources];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v9 >> 62)
      {
        goto LABEL_158;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      *(v7 + 4) = v10;

      _os_log_impl(&dword_2493AC000, v4, v5, "Starting handleSourceUpdate with %ld sources", v7, 0xCu);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    else
    {

      v4 = v3;
    }

    v11 = [v3 *(v6 + 2432)];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v167[0] = MEMORY[0x277D84F90];
    v7 = a1 >> 62 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = MEMORY[0x277D84F90];
    if (!v7)
    {
      break;
    }

    v12 = 0;
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v168[0] = v13;
      if (closure #1 in LocationSectionManager.handleSourceUpdate(_:)(v168, v164))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v12;
      if (v15 == v7)
      {
        v6 = v167[0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v5 = 0;
LABEL_22:

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *(v6 + 16);
    }

    *(v18 + 4) = v19;

    _os_log_impl(&dword_2493AC000, v16, v17, "Filtered to %ld valid sources", v18, 0xCu);
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  else
  {
  }

  v167[0] = specialized Array._copyToContiguousArray()(v20);
  specialized MutableCollection<>.sort(by:)(v167);
  v3 = v167[0];
  v165 = v6;
  if (v167[0] < 0 || (v167[0] & 0x4000000000000000) != 0)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_31;
    }

LABEL_45:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v21 = *(v167[0] + 16);
  if (!v21)
  {
    goto LABEL_45;
  }

LABEL_31:
  v167[0] = MEMORY[0x277D84F90];
  v4 = v167;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    goto LABEL_157;
  }

  v5 = 0;
  v22 = v167[0];
  v7 = v3 & 0xC000000000000001;
  do
  {
    if (v7)
    {
      v23 = MEMORY[0x24C1FC540](v5, v3);
    }

    else
    {
      v23 = *(v3 + 8 * v5 + 32);
    }

    v167[0] = v22;
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      v27 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      v23 = v27;
      v22 = v167[0];
    }

    *(v22 + 16) = v25 + 1;
    v26 = v22 + 48 * v25;
    *(v26 + 32) = v23;
    ++v5;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 1;
  }

  while (v21 != v5);

  v6 = v165;
LABEL_46:
  v168[0] = v22;
  if (one-time initialization token for shared == -1)
  {
    goto LABEL_47;
  }

LABEL_154:
  swift_once();
LABEL_47:
  v28 = static DOCUSBFormatting.shared;
  if (((*(*static DOCUSBFormatting.shared + 128))() & 1) == 0)
  {
    goto LABEL_163;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v29, v30, "USB: Processing USB operations", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v31 = (v6 >> 62) & 1;
  if (v6 < 0)
  {
    LODWORD(v31) = 1;
  }

  LODWORD(v162) = v31;
  if (v31 == 1)
  {
    v32 = __CocoaSet.count.getter();
  }

  else
  {
    v32 = *(v6 + 16);
  }

  v163 = v22;
  if (!v32)
  {
    v32 = MEMORY[0x277D84F90];
    v3 = *(MEMORY[0x277D84F90] + 16);
    v34 = MEMORY[0x277D84F90];
LABEL_65:
    v22 = 0;
    v167[0] = v32;
    v42 = v34 + 40;
LABEL_66:
    v43 = (v42 + 16 * v22);
    while (v3 != v22)
    {
      if (v22 >= *(v34 + 16))
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      ++v22;
      v6 = (v43 + 2);
      v44 = *(v43 - 1);
      v45 = *v43;
      v46 = *(*v28 + 160);
      v7 = *v28 + 160;

      v5 = v46(v44, v45);

      v43 = v6;
      if (v5)
      {
        MEMORY[0x24C1FB090](v47);
        if (*((v167[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v167[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = v167[0];
        v42 = v34 + 40;
        goto LABEL_66;
      }
    }

    if (!(v32 >> 62))
    {
      v6 = v165;
      v49 = v163;
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

LABEL_162:

      goto LABEL_163;
    }

    v6 = v165;
    v49 = v163;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_162;
    }

LABEL_75:
    if ((v32 & 0xC000000000000001) == 0)
    {
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v50 = *(v32 + 32);
        goto LABEL_78;
      }

      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      v83 = v48;
      v84 = __CocoaSet.count.getter();
      if (!v84)
      {
        goto LABEL_210;
      }

      goto LABEL_106;
    }

    goto LABEL_206;
  }

  v167[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = v167[0];
    v7 = v6 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        v35 = MEMORY[0x24C1FC540](v33, v165);
      }

      else
      {
        v35 = v165[v33 + 4];
      }

      v36 = v35;
      v37 = [v35 identifier];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v167[0] = v34;
      v6 = *(v34 + 16);
      v40 = *(v34 + 24);
      v3 = v6 + 1;
      if (v6 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v6 + 1, 1);
        v34 = v167[0];
      }

      ++v33;
      *(v34 + 16) = v3;
      v41 = v34 + 16 * v6;
      *(v41 + 32) = v5;
      *(v41 + 40) = v39;
    }

    while (v32 != v33);
    v32 = MEMORY[0x277D84F90];
    goto LABEL_65;
  }

  __break(1u);
LABEL_206:
  v50 = MEMORY[0x24C1FC540](0, v32);
LABEL_78:
  v51 = v50;

  v7 = v51;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v5 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v7;
    *v54 = v7;
    v55 = v7;
    _os_log_impl(&dword_2493AC000, v52, v53, "USB: Found erase operation: %@", v5, 0xCu);
    outlined destroy of CharacterSet?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v54, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v56 = 0;
  v159 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source;
  v22 = v6 & 0xC000000000000001;
  if (!v162)
  {
LABEL_81:
    if (v56 != *(v6 + 16))
    {
      goto LABEL_84;
    }

    goto LABEL_99;
  }

  while (1)
  {
    if (v56 == __CocoaSet.count.getter())
    {
      goto LABEL_99;
    }

LABEL_84:
    if (v22)
    {
      v57 = MEMORY[0x24C1FC540](v56, v6);
    }

    else
    {
      if (v56 >= *(v6 + 16))
      {
        goto LABEL_153;
      }

      v57 = *(v6 + 8 * v56 + 32);
    }

    v58 = v57;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_152;
    }

    v5 = [v57 identifier];
    v59 = [*(v7 + v159) identifier];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
    if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
    {
      break;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_95;
    }

    ++v56;
    v6 = v165;
    if (!v162)
    {
      goto LABEL_81;
    }
  }

LABEL_95:
  type metadata accessor for DOCExternalDeviceSource();
  v153 = swift_dynamicCastClass();
  if (!v153)
  {

    v6 = v165;
LABEL_99:
    v65 = *(v7 + v159);
    type metadata accessor for DOCExternalDeviceSource();
    v66 = swift_dynamicCastClass();
    if (!v66)
    {

      goto LABEL_163;
    }

    v32 = v66;
    v67 = v65;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    v162 = v32;
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v167[0] = v71;
      *v70 = 136315138;
      v72 = [v162 identifier];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v167);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_2493AC000, v68, v69, "USB: Processing external drive source: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      v77 = v71;
      v32 = v162;
      MEMORY[0x24C1FE850](v77, -1, -1);
      v6 = v165;
      MEMORY[0x24C1FE850](v70, -1, -1);
    }

    v49 = v163;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v32;
    v167[0] = v6;

    v3 = v67;
    specialized Array.append<A>(contentsOf:)(inited);
    v5 = MEMORY[0x277D84F90];
    v80 = specialized static DOCSourceOrderStrategy.sortedSources(from:orderedIdentifiers:)(v167[0], MEMORY[0x277D84F90], v79);

    if (!*(v80 + 16) || (v81 = specialized __RawDictionaryStorage.find<A>(_:)(), (v82 & 1) == 0))
    {

      goto LABEL_150;
    }

    v83 = *(*(v80 + 56) + 8 * v81);

    v48 = v83;
    if (v83 >> 62)
    {
      goto LABEL_209;
    }

    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v84)
    {
LABEL_210:

      v168[0] = MEMORY[0x277D84F90];
      goto LABEL_163;
    }

LABEL_106:
    v153 = v3;
    v167[0] = v5;
    v4 = v167;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84 & ~(v84 >> 63), 0);
    if ((v84 & 0x8000000000000000) == 0)
    {
      v85 = 0;
      v3 = v167[0];
      v86 = v83;
      v158 = v7;
      v160 = v83 & 0xC000000000000001;
      v151 = v83 & 0xFFFFFFFFFFFFFF8;
      v154 = v84;
      v156 = v83;
      while (1)
      {
        v6 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          v10 = __CocoaSet.count.getter();
          goto LABEL_5;
        }

        if (v160)
        {
          v87 = MEMORY[0x24C1FC540](v85, v86);
        }

        else
        {
          if (v85 >= *(v151 + 16))
          {
            goto LABEL_208;
          }

          v87 = *(v86 + 8 * v85 + 32);
        }

        v5 = v87;
        v88 = [v87 identifier];
        v89 = [v32 identifier];
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;
        if (v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93)
        {
          break;
        }

        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v95)
        {
          goto LABEL_120;
        }

        v7 = 1;
        v32 = v162;
        v49 = v163;
LABEL_123:
        v167[0] = v3;
        v101 = *(v3 + 16);
        v100 = *(v3 + 24);
        if (v101 >= v100 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
          v3 = v167[0];
        }

        *(v3 + 16) = v101 + 1;
        v102 = v3 + 48 * v101;
        *(v102 + 32) = v5;
        *(v102 + 40) = 0u;
        *(v102 + 56) = 0u;
        *(v102 + 72) = v7;
        ++v85;
        v86 = v156;
        v4 = v158;
        if (v6 == v154)
        {

          v168[0] = v3;
          v6 = v165;
          goto LABEL_163;
        }
      }

LABEL_120:
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();
      v32 = v162;
      v49 = v163;
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_2493AC000, v96, v97, "USB: Converting external drive source to disconnected item", v98, 2u);
        MEMORY[0x24C1FE850](v98, -1, -1);
      }

      v99 = v153;
      v7 = 4;
      v5 = v162;
      goto LABEL_123;
    }

    __break(1u);
LABEL_212:
    v163 = specialized _ArrayBuffer._consumeAndCreateNew()(v163);
    goto LABEL_146;
  }

  if ([v7 operationState] == 2)
  {

    v6 = v165;
    goto LABEL_163;
  }

  v5 = v58;
  v103 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v152 = v5;

  if (os_log_type_enabled(v103, v4))
  {
    v5 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v167[0] = v104;
    *v5 = 136315138;
    v105 = [v153 identifier];
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v167);

    *(v5 + 4) = v109;
    _os_log_impl(&dword_2493AC000, v103, v4, "USB: Operation not finished for source: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x24C1FE850](v104, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = v165;
  v3 = *(v163 + 2);
  if (!v3)
  {

    goto LABEL_163;
  }

  v32 = 0;
  v49 = 72;
  while (1)
  {
    if (v32 >= *(v163 + 2))
    {
      goto LABEL_156;
    }

    v110 = &v163[v49];
    if (v163[v49] != 1)
    {
      goto LABEL_133;
    }

    v111 = v3;
    v112 = *(v110 - 5);
    v161 = *(v110 - 3);
    v162 = *(v110 - 4);
    v155 = *(v110 - 1);
    v157 = *(v110 - 2);
    v5 = [v112 identifier];
    v113 = [v153 identifier];
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v115;
    if (v114 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v116)
    {
      break;
    }

    v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined consume of DOCSidebarItem(v112, v162, v161, v157, v155, 1u);

    v3 = v111;
    if (v118)
    {
      goto LABEL_145;
    }

LABEL_133:
    ++v32;
    v49 += 48;
    v6 = v165;
    if (v3 == v32)
    {

      goto LABEL_162;
    }
  }

  outlined consume of DOCSidebarItem(v112, v162, v161, v157, v155, 1u);

LABEL_145:

  v3 = v152;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_212;
  }

LABEL_146:
  v6 = v165;
  if (v32 >= *(v163 + 2))
  {
    __break(1u);

    while (1)
    {

      __break(1u);
    }
  }

  v119 = &v163[v49];
  v120 = *&v163[v49 - 40];
  v121 = *&v163[v49 - 32];
  v122 = *&v163[v49 - 24];
  v123 = *&v163[v49 - 16];
  v124 = *&v163[v49 - 8];
  *(v119 - 5) = v153;
  *(v119 - 2) = 0u;
  *(v119 - 1) = 0u;
  v125 = v163[v49];
  *v119 = 4;
  outlined consume of DOCSidebarItem(v120, v121, v122, v123, v124, v125);
  v168[0] = v163;
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 134217984;
    *(v128 + 4) = v32;
    _os_log_impl(&dword_2493AC000, v126, v127, "USB: Replaced source with disconnected item at index: %ld", v128, 0xCu);
    MEMORY[0x24C1FE850](v128, -1, -1);
  }

LABEL_150:
LABEL_163:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v130 = Strong;
    v131 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

    v132 = v131(3);

    if (specialized closure #9 in LocationSectionManager.handleSourceUpdate(_:)(v132, v168))
    {
      DOCTabSidebarDataSource.updateTabsIfNeeded()();
    }
  }

  v166 = MEMORY[0x277D84F90];
  if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    goto LABEL_187;
  }

  for (i = *(v6 + 16); i; i = __CocoaSet.count.getter())
  {
    v134 = 0;
    v135 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v135)
      {
        v136 = MEMORY[0x24C1FC540](v134, v6);
      }

      else
      {
        if (v134 >= *(v6 + 16))
        {
          goto LABEL_186;
        }

        v136 = *(v6 + 8 * v134 + 32);
      }

      v137 = v136;
      v138 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        break;
      }

      type metadata accessor for DOCFileProviderSource();
      v139 = swift_dynamicCastClass();
      if (v139 && (v140 = *(v139 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0)
      {
        v141 = v140;
        v142 = [v141 identifier];
        v143 = DOCProviderDomainIDIsExternalDevice();

        if (v143)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v6 = v165;
      }

      else
      {
      }

      ++v134;
      if (v138 == i)
      {
        v144 = v166;
        goto LABEL_189;
      }
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    ;
  }

  v144 = MEMORY[0x277D84F90];
LABEL_189:

  v145 = v144 < 0 || (v144 & 0x4000000000000000) != 0;
  if (v145)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_204;
    }

LABEL_194:

    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 134217984;
      if (v145)
      {
        v149 = __CocoaSet.count.getter();
      }

      else
      {
        v149 = *(v144 + 16);
      }

      *(v148 + 4) = v149;

      _os_log_impl(&dword_2493AC000, v146, v147, "USB: Found %ld USB sources, prewarming StorageKit", v148, 0xCu);
      MEMORY[0x24C1FE850](v148, -1, -1);
    }

    else
    {
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*((*MEMORY[0x277D85000] & *static DOCUSBStorageKitManager.shared) + 0x60))();
  }

  else
  {
    if (*(v144 + 16))
    {
      goto LABEL_194;
    }

LABEL_204:
  }

  return result;
}

double closure #2 in LocationSectionManager.startObserving()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 64);
    if (v4)
    {
      v5 = v4;

      [v5 invokeUpdateBlock];
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall LocationSectionManager.stopObserving()()
{
  swift_beginAccess();
  v1 = v0[13];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(v0[13] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        ProviderDomainState.invalidate()();
      }

      while (v7);
      continue;
    }
  }

  v0[13] = MEMORY[0x277D84F98];

  v11 = v0[8];
  v0[8] = 0;

  if (v0[9])
  {

    DOCSourceVisibilityController.removeObserver(_:)(v12);
  }

  v0[9] = 0;
}

Swift::Void __swiftcall LocationSectionManager.updateSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD00000000000001BLL;
  *(v1 + 40) = 0x8000000249BD3AA0;
  print(_:separator:terminator:)();

  v2 = *(v0 + 64);
  if (v2)
  {

    [v2 invokeUpdateBlock];
  }
}

id LocationSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return specialized LocationSectionManager.generateTabGroup(using:alertPresenting:)(a1, a3, v3, ObjectType, a2);
}

id closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

uint64_t closure #1 in LocationSectionManager.handleSourceUpdate(_:)(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = [v3 hiddenSourcesIdentifiers];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v2 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v65 = v7;
  v66 = v9;
  v64 = &v65;
  LOBYTE(v6) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v63, v5);

  if (v6)
  {
    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.Sidebar);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v65 = v15;
    *v14 = 136315138;
    v16 = [v11 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v65);

    *(v14 + 4) = v20;
    v21 = "Filtering out hidden source: %s";
LABEL_6:
    _os_log_impl(&dword_2493AC000, v12, v13, v21, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
LABEL_7:

    return 0;
  }

  v23 = [v2 identifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
    goto LABEL_10;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    return 1;
  }

  v23 = [v2 identifier];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
LABEL_10:
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      v34 = [v3 hiddenSourcesIdentifiers];
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = [v2 identifier];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v65 = v37;
      v66 = v39;
      MEMORY[0x28223BE20](v40, v41);
      v62[2] = &v65;
      LOBYTE(v36) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v62, v35);

      if (v36)
      {
        if (one-time initialization token for Sidebar != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.Sidebar);
        v43 = v2;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_7;
        }

        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v65 = v15;
        *v14 = 136315138;
        v44 = [v43 identifier];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v65);

        *(v14 + 4) = v48;
        v21 = "Filtering out configuration specified hidden source: %s";
        goto LABEL_6;
      }

      type metadata accessor for DOCFileProviderSource();
      v49 = swift_dynamicCastClass();
      if (v49 && !*(v49 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain))
      {
        v50 = one-time initialization token for Sidebar;
        v51 = v2;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        __swift_project_value_buffer(v52, static Logger.Sidebar);
        v53 = v51;
        v12 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v65 = v56;
          *v55 = 136315138;
          v57 = [v53 identifier];
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v65);

          *(v55 + 4) = v61;
          _os_log_impl(&dword_2493AC000, v12, v54, "Filtering out source with nil providerDomain: %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x24C1FE850](v56, -1, -1);
          MEMORY[0x24C1FE850](v55, -1, -1);
        }

        goto LABEL_7;
      }
    }
  }

  return 1;
}

uint64_t sourceIsICloudDrive #1 (_:) in LocationSectionManager.handleSourceUpdate(_:)(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = specialized Sequence<>.starts<A>(with:)(v6, v7, v3, v5);

  if (v8)
  {

    return 0;
  }

  else
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = specialized Sequence<>.starts<A>(with:)(v10, v11, v3, v5);

    if (v12)
    {
      return 0;
    }

    else
    {
      v13 = [a1 identifier];
      IsNonManagedICloud = DOCDocumentSourceIdentifierIsNonManagedICloud(v13);

      return IsNonManagedICloud;
    }
  }
}

uint64_t closure #2 in LocationSectionManager.handleSourceUpdate(_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    v13 = [v3 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {

      LOBYTE(v11) = 1;
      goto LABEL_9;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_16;
    }

    v20 = [v2 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v21) = specialized Sequence<>.starts<A>(with:)(v24, v25, v21, v23);

    if (v21)
    {
      goto LABEL_6;
    }

    v26 = [v3 identifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v26) = specialized Sequence<>.starts<A>(with:)(v30, v31, v27, v29);

    if (v26)
    {
LABEL_16:
      LOBYTE(v11) = 1;
      return v11 & 1;
    }

    v11 = sourceIsICloudDrive #1 (_:) in LocationSectionManager.handleSourceUpdate(_:)(v2);
    if ((v11 ^ sourceIsICloudDrive #1 (_:) in LocationSectionManager.handleSourceUpdate(_:)(v3)))
    {
      return v11 & 1;
    }

    v32 = [v2 identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = specialized Sequence<>.starts<A>(with:)(v36, v37, v33, v35);

    if (v38)
    {
      v11 = 1;
    }

    else
    {
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = specialized Sequence<>.starts<A>(with:)(v39, v40, v33, v35);
    }

    v41 = [v3 identifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v41) = specialized Sequence<>.starts<A>(with:)(v45, v46, v42, v44);

    if (v41)
    {

      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = specialized Sequence<>.starts<A>(with:)(v47, v48, v42, v44);

      if ((v11 ^ v49))
      {
        return v11 & 1;
      }
    }

    v50 = [v2 identifier];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v55 = [v3 identifier];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
    if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
    {

      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 ^ v60))
      {
        return v11 & 1;
      }
    }

    v61 = [v2 displayName];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = [v3 displayName];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    if (v62 != v66 || v64 != v68)
    {
      LOBYTE(v11) = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_9;
    }

LABEL_8:
    LOBYTE(v11) = 0;
LABEL_9:

    return v11 & 1;
  }

LABEL_6:
  LOBYTE(v11) = 0;
  return v11 & 1;
}

BOOL specialized closure #9 in LocationSectionManager.handleSourceUpdate(_:)(uint64_t a1, uint64_t *a2)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Sidebar);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(*a2 + 16);
    _os_log_impl(&dword_2493AC000, v5, v6, "Setting %ld final items in locations section", v7, 0xCu);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = *(*a1 + 392);

  v8(v9);

  v11 = (*(*a1 + 312))(v10);
  swift_beginAccess();
  v12 = *a2;

  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables14DOCSidebarItemO_Tt1g5(v11, v12);

  return (v13 & 1) == 0;
}

void LocationSectionManager.visibilityDidChange(for:isHidden:)(void *a1, char a2)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
    if (swift_dynamicCast())
    {
      if (one-time initialization token for Sidebar != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.Sidebar);
      v4 = v21;
      swift_retain_n();
      v5 = v4;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *&v24[0] = v9;
        *v8 = 136315906;
        v10 = [v5 identifier];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v24);

        *(v8 + 4) = v14;
        *(v8 + 12) = 1024;
        *(v8 + 14) = a2 & 1;
        *(v8 + 18) = 2048;
        v15 = [v5 status];

        *(v8 + 20) = v15;
        *(v8 + 28) = 1024;
        DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
        v16 = [v5 identifier];
        LOBYTE(v13) = specialized Set.contains(_:)();

        if ((v13 & 1) != 0 || ![v5 status])
        {

          v18 = 1;
        }

        else
        {
          v17 = [v5 status];

          v18 = v17 == 2;
        }

        *(v8 + 30) = v18;

        _os_log_impl(&dword_2493AC000, v6, v7, "Source visibility changed: Source: %s Hidden: %{BOOL}d Status: %lu isVisited: %{BOOL}d", v8, 0x22u);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x24C1FE850](v9, -1, -1);
        MEMORY[0x24C1FE850](v8, -1, -1);
      }

      else
      {
      }

      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v5;
      specialized DOCDocumentSource.setHidden(hidden:completion:)(a2 & 1, v20, v19, a2 & 1, v20);
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v24, &_sypSgMd, &_sypSgMR);
  }
}

double closure #1 in LocationSectionManager.visibilityDidChange(for:isHidden:)(char a1, uint64_t a2, char a3, DOCDocumentSource *a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      if (a3)
      {

        DOCSourceVisibilityController.addVisitedSource(source:)(a4);

        if (one-time initialization token for Sidebar != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.Sidebar);
        v10 = a4;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v23 = v14;
          *v13 = 136315138;
          v15 = [(DOCDocumentSource *)v10 identifier];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v23);

          *(v13 + 4) = v19;
          _os_log_impl(&dword_2493AC000, v11, v12, "Source marked as visited: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x24C1FE850](v14, -1, -1);
          MEMORY[0x24C1FE850](v13, -1, -1);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_249B9A480;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 32) = 0xD00000000000001BLL;
      *(v20 + 40) = 0x8000000249BD3AA0;
      print(_:separator:terminator:)();

      v21 = *(v8 + 64);
      if (v21)
      {
        v22 = v21;
        [v22 invokeUpdateBlock];
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall LocationSectionManager.canAcceptDrop(of:)(Swift::OpaquePointer of)
{
  v1 = of._rawValue + 72;
  v2 = *(of._rawValue + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 48;
  }

  while (v3 == 1);
  return v2 == 0;
}

uint64_t LocationSectionManager.handleDrop(of:at:completion:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v35 = a3;
    v36 = v3;
    v10 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

    v11 = v10(3);

    a3 = (*(*v11 + 312))(v12);
    v40 = a3;
    v13 = *(a1 + 16);
    v34 = a1;
    if (v13)
    {
      v14 = (a1 + 64);
      while (1)
      {
        v15 = *(v14 - 1);
        v45 = *(v14 - 2);
        v46[0] = v15;
        *(v46 + 9) = *(v14 - 7);
        v37 = *(v14 - 1);
        v38 = v45;
        v16 = *v14;
        v17 = *(v14 + 8);

        outlined init with copy of DOCSidebarItem(&v45, v39);
        v18 = specialized Collection<>.firstIndex(of:)(&v45, a3);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          specialized Array.remove(at:)(v18, v41);
          outlined destroy of DOCSidebarItem(v41);
        }

        a3 = v40;
        v21 = *(v40 + 2);
        v22 = (v21 >= a2 ? a2 : *(v40 + 2));
        if (a2 < 0)
        {
          break;
        }

        outlined init with copy of DOCSidebarItem(&v45, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v21 >= *(a3 + 3) >> 1)
        {
          a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21 + 1, 1, a3);
          v40 = a3;
        }

        v42[0] = v38;
        v42[1] = v37;
        v43 = v16;
        v44 = v17;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v22, v22, 1, v42);
        outlined destroy of DOCSidebarItem(&v45);
        outlined destroy of DOCSidebarItem(&v45);
        v40 = a3;
        v14 += 6;
        if (!--v13)
        {
          goto LABEL_15;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_38;
      }

      goto LABEL_28;
    }

LABEL_15:
    (*(*v11 + 392))(a3);

    DOCTabSidebarDataSource.updateTabsIfNeeded()();

    a3 = v35;
    v4 = v36;
    a1 = v34;
  }

  v24 = 0;
  v21 = MEMORY[0x277D84F90];
  v39[0] = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
LABEL_17:
  v25 = a1 - 16 + 48 * v24;
  while (v13 != v24)
  {
    if (v24 >= v13)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_35;
    }

    v27 = *(v25 + 88);
    ++v24;
    v25 += 48;
    if (v27 == 1)
    {
      v28 = *v25;
      MEMORY[0x24C1FB090]();
      if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v39[0];
      v24 = v26;
      goto LABEL_17;
    }
  }

  v13 = *(v4 + 64);
  if (!v13)
  {

    return (a3)(1);
  }

  if (v21 >> 62)
  {
    goto LABEL_37;
  }

  result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_28:
  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v31 = v13;
    v32 = MEMORY[0x24C1FC540](0, v21);
    goto LABEL_31;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v30 = *(v21 + 32);
  v31 = v13;
  v32 = v30;
LABEL_31:
  v33 = v32;

  [v31 moveSource:v33 toIndex:a2];

  return (a3)(1);
}

Swift::Void __swiftcall LocationSectionManager.displayOrderDidChange(for:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v48 = MEMORY[0x277D84F90];
  v2 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  if (a1._rawValue >> 62)
  {
    goto LABEL_73;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (i)
    {
      v4 = 0;
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        v5 = v4;
        while (1)
        {
          if ((rawValue & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x24C1FC540](v5, rawValue);
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_70;
            }

            v6 = *(rawValue + 8 * v5 + 32);
          }

          v7 = v6;
          v4 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if ([v6 userInfo])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v44 = 0u;
            v45 = 0u;
          }

          v46[0] = v44;
          v46[1] = v45;
          if (*(&v45 + 1))
          {
            break;
          }

          outlined destroy of CharacterSet?(v46, &_sypSgMd, &_sypSgMR);
LABEL_7:
          ++v5;
          if (v4 == i)
          {
            goto LABEL_25;
          }
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
        if ((swift_dynamicCast() & 1) == 0 || !v47)
        {
          goto LABEL_7;
        }

        MEMORY[0x24C1FB090]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v37 = v48;
        if (v4 == i)
        {
          goto LABEL_25;
        }
      }
    }

    v37 = MEMORY[0x277D84F90];
LABEL_25:
    (*(**(v36 + 56) + 136))(3);
    v9 = v8;
    ObjectType = swift_getObjectType();
    rawValue = (*(v9 + 72))(0, ObjectType, v9);
    swift_unknownObjectRelease();
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    *&v46[0] = MEMORY[0x277D84F90];
    v2 = *(rawValue + 16);
LABEL_26:
    v13 = rawValue - 16 + 48 * v11;
    while (v2 != v11)
    {
      if (v11 >= *(rawValue + 16))
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      ++v11;
      v14 = (v13 + 48);
      v15 = *(v13 + 88);
      v13 += 48;
      if (v15 == 1)
      {
        v16 = *v14;
        MEMORY[0x24C1FB090]();
        if (*((*&v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = *&v46[0];
        goto LABEL_26;
      }
    }

    if (v37 >> 62)
    {
      break;
    }

    v17 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_75;
    }

LABEL_35:
    v18 = 0;
    v19 = v12 & 0xFFFFFFFFFFFFFF8;
    v43 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 < 0)
    {
      v19 = v12;
    }

    v35 = v19;
    v42 = v12 & 0xC000000000000001;
    v39 = v12 >> 62;
    v38 = v17;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v18, v37);
      }

      else
      {
        if (v18 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v20 = *(v37 + 32 + 8 * v18);
      }

      v21 = v20;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v41 = v18;
      if (v39)
      {
        v22 = __CocoaSet.count.getter();
      }

      else
      {
        v22 = *(v43 + 16);
      }

      v23 = 0;
      v40 = v18 + 1;
      while (v22 != v23)
      {
        if (v42)
        {
          v24 = v12;
          v25 = MEMORY[0x24C1FC540](v23, v12);
        }

        else
        {
          if (v23 >= *(v43 + 16))
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          v24 = v12;
          v25 = *(v12 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = [v25 identifier];
        v28 = [v21 identifier];
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        rawValue = v29;
        if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && rawValue == v30)
        {

LABEL_39:
          v12 = v24;
          if (v41 != v23)
          {

            v33 = *(v36 + 64);
            if (v33)
            {
              v34 = v33;
              [v34 moveSource:v21 toIndex:v41];
            }

            return;
          }

          break;
        }

        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v2)
        {
          goto LABEL_39;
        }

        v32 = __OFADD__(v23++, 1);
        v12 = v24;
        if (v32)
        {
          goto LABEL_67;
        }
      }

      v18 = v40;
      if (v40 == v38)
      {
        goto LABEL_75;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

  v17 = __CocoaSet.count.getter();
  if (v17)
  {
    goto LABEL_35;
  }

LABEL_75:
}

void LocationSectionManager.trashMenu(actionManager:actionContext:)(void *a1, void *a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_249BA0290;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = closure #1 in LocationSectionManager.trashMenu(actionManager:actionContext:);
  v6[4] = 0;
  v6[5] = a2;
  v6[6] = a1;
  aBlock[4] = partial apply for closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:);
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_8;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();

  v9 = a2;
  v10 = a1;
  v11 = [v8 elementWithProvider_];
  _Block_release(v7);

  *(preferredElementSize + 32) = v11;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, v12, 0, v16, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14);
}

id closure #1 in LocationSectionManager.trashMenu(actionManager:actionContext:)(uint64_t a1, uint64_t a2)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v9._object = 0x8000000249BD42D0;
    v4._countAndFlagsBits = 0x41206574656C6544;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v4._object = 0xEA00000000006C6CLL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0xD000000000000042;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v9);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v7 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v8 = [objc_opt_self() systemImageNamed_];

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a6;
  v14[7] = a7;

  v15 = a6;
  v16 = a7;
  _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZTf4enn_nAA015LocationSectionB0C_Tt1g5(a3, partial apply for closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:), v14);

  return result;
}

double closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)(unint64_t a1, uint64_t (*a2)(uint64_t (*)(), void *), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6, void *a7)
{
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v12 = swift_allocObject();
    v12[2] = a6;
    v12[3] = a7;
    v12[4] = a1;
    v13 = a6;
    v14 = a7;

    v15 = a2(partial apply for closure #2 in closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:), v12);

    [v15 setAttributes_];
    goto LABEL_6;
  }

  v15 = (a2)(closure #1 in closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:), 0, a3);
  [v15 setAttributes_];
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA0290;
  *(v16 + 32) = v15;
  v17 = v15;
  a4(v16);

  return result;
}

void closure #1 in closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)()
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.Sidebar);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BD4250, &v5);
    _os_log_impl(&dword_2493AC000, oslog, v1, "%s: No items, disabling context menu action for Recently Deleted.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C1FE850](v3, -1, -1);
    MEMORY[0x24C1FE850](v2, -1, -1);
  }
}

void closure #2 in closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Sidebar);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BD4250, aBlock);
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Performing context menu action for Recently Deleted.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  v11 = *((*MEMORY[0x277D85000] & *a2) + 0x98);
  v12 = swift_unknownObjectRetain();
  v11(v12);
  v13 = *MEMORY[0x277D05F90];
  v14 = _DocumentManagerBundle();
  if (v14)
  {
    v15 = v14;
    v28._object = 0x8000000249BD4280;
    v16._countAndFlagsBits = 0x41206574656C6544;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v28._countAndFlagsBits = 0xD00000000000002FLL;
    v16._object = 0xEA00000000006C6CLL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v28);

    v20 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v21 = MEMORY[0x24C1FAD20](v19._countAndFlagsBits, v19._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.deleteAllAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_127;
    v22 = _Block_copy(aBlock);
    v23 = [v20 initWithIdentifier:v13 localizedTitle:v21 unresolvedHandler:v22];

    _Block_release(v22);

    v24 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v25 = [objc_opt_self() systemImageNamed_];

    [v23 setImage_];
    [v23 setAvailability_];
    [v23 setNavigationSide_];
    [v23 setMenuSortOrder_];
    [v23 setActionStyle_];
    [v23 setRequiresFullyFormedItems_];

    if (a4 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v26 = _bridgeCocoaArray<A>(_:)();

      a4 = v26;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    specialized DOCActionManager.perform(_:on:actionContext:)(v23, a4, a2);
  }

  else
  {

    __break(1u);
  }
}

id LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, void *a2)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  aBlock = v29;
  v24 = v30;
  if (!*(&v30 + 1))
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v22 = v28;
  v5 = [objc_allocWithZone(DOCActionManager) init];
  isa = [a2 customActions];
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setActions_];

  v7 = [a2 effectiveAppearance];
  v8 = *(v2 + 24);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = type metadata accessor for DOCActionContext();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_appearance] = v7;
  *&v11[OBJC_IVAR___DOCActionContext_configuration] = v8;
  *&v11[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v11[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_userInfo] = v9;
  v27.receiver = v11;
  v27.super_class = v10;
  v12 = v8;
  v13 = a2;
  v14 = objc_msgSendSuper2(&v27, sel_init);
  v15 = swift_allocObject();
  v15[2] = v22;
  v15[3] = v2;
  v15[4] = v5;
  v15[5] = v14;
  v15[6] = v13;
  v15[7] = a1;
  v16 = objc_opt_self();
  v25 = partial apply for closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v26 = v15;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v24 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  *(&v24 + 1) = &block_descriptor_14;
  v17 = _Block_copy(&aBlock);
  v18 = v13;

  v19 = a1;

  v20 = [v16 configurationWithIdentifier:0 previewProvider:0 actionProvider:v17];

  _Block_release(v17);
  return v20;
}

void closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(int a1, id a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = MEMORY[0x277D84F90];
  v158 = MEMORY[0x277D84F90];
  v12 = [a2 identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

    goto LABEL_22;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_22:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_249BA0290;
    v38 = swift_allocObject();
    v38[2] = a3;
    v38[3] = closure #1 in LocationSectionManager.trashMenu(actionManager:actionContext:);
    v38[4] = 0;
    v38[5] = a5;
    v38[6] = a4;
    aBlock[4] = closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)partial apply;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_91;
    v39 = _Block_copy(aBlock);
    v40 = objc_opt_self();

    v41 = a5;
    v42 = a4;
    v43 = [v40 elementWithProvider_];
    _Block_release(v39);

    *(v37 + 32) = v43;
    preferredElementSizea = v37;
LABEL_75:
    v145._countAndFlagsBits = 0;
    v145._object = 0xE000000000000000;
    v162.value.super.isa = 0;
    v162.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, v145, 0, v162, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizea, children);
    return;
  }

  v19 = [a4 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [a4 associatedActionManagers];
  type metadata accessor for DOCActionManager(0);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = specialized Sequence.flatMap<A>(_:)(v22);

  aBlock[0] = v20;
  specialized Array.append<A>(contentsOf:)(v23);
  v24 = v20;
  v151 = a6;
  v152 = a2;
  v150 = a3;
  v149 = a7;
  v153 = v11;
  if (!(v20 >> 62))
  {
    v25 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_31:

    v63 = MEMORY[0x277D84F90];
    v46 = v152;
    goto LABEL_32;
  }

LABEL_30:
  v25 = __CocoaSet.count.getter();
  if (!v25)
  {
    goto LABEL_31;
  }

LABEL_8:
  v26 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x24C1FC540](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = [v27 identifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_24;
    }

    ++v26;
    if (v29 == v25)
    {
      goto LABEL_31;
    }
  }

LABEL_24:

  v45 = _DocumentManagerBundle();
  v46 = v152;
  if (!v45)
  {
    __break(1u);
    goto LABEL_77;
  }

  v47 = v45;
  swift__string._object = 0x8000000249BD3FE0;
  v48._object = 0x8000000249BD3FC0;
  swift__string._countAndFlagsBits = 0xD00000000000004ALL;
  v48._countAndFlagsBits = 0xD000000000000012;
  v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v49.value._object = 0xEB00000000656C62;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, swift__string);

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v51 = MEMORY[0x24C1FAD20](0x7571732E73756C70, 0xEB00000000657261);
  v52 = [objc_opt_self() systemImageNamed_];

  v53 = swift_allocObject();
  v53[2] = a5;
  v53[3] = v152;
  v53[4] = a4;
  v53[5] = v28;
  v54 = a5;
  v55 = a4;
  v56 = v152;
  v57 = v28;
  v58 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_249BA0290;
  *(v59 + 32) = v58;
  v60 = v58;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v159.value.super.isa = 0;
  v159.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v62, v61, 0, v159, 1, 0xFFFFFFFFFFFFFFFFLL, v59, 0);
  MEMORY[0x24C1FB090]();
  if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v63 = v158;
LABEL_32:
  type metadata accessor for DOCFileProviderSource();
  v64 = swift_dynamicCastClass();
  if (v64)
  {
    v65 = v64;
    aBlock[0] = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D85000];
    v67 = *((*MEMORY[0x277D85000] & *v64) + 0x128);
    v68 = v46;
    v69 = v67();
    if (v69)
    {
      v70 = _DocumentManagerBundle();
      if (!v70)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v71 = v70;
      swift__stringa._object = 0x8000000249BD41E0;
      v72._countAndFlagsBits = 0xE220656D616E6552;
      v72._object = 0xAF9D80E240259C80;
      swift__stringa._countAndFlagsBits = 0xD00000000000002BLL;
      v73.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v73.value._object = 0xEB00000000656C62;
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v72, v73, v71, v74, swift__stringa);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_249B9A480;
      v76 = [v68 displayName];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      *(v75 + 56) = MEMORY[0x277D837D0];
      *(v75 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v75 + 32) = v77;
      *(v75 + 40) = v79;
      static String.localizedStringWithFormat(_:_:)();

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
      v80 = MEMORY[0x24C1FAD20](0x6C69636E6570, 0xE600000000000000);
      v81 = [objc_opt_self() systemImageNamed_];

      preferredElementSize = UIMenuElementSizeSmall;
      children._rawValue = 0;
      v82 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x24C1FB090](v82);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v153 = aBlock[0];
    }

    v83 = *(v65 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (!v83)
    {
LABEL_43:
      if (((*((*v66 & *v65) + 0x130))(v69) & 1) == 0)
      {
LABEL_48:
        if (![v65 isEjectable])
        {
          goto LABEL_53;
        }

        v110 = _DocumentManagerBundle();
        if (v110)
        {
          v111 = v110;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
          swift__stringd._object = 0x8000000249BD40B0;
          v112._countAndFlagsBits = 0x7463656A45;
          swift__stringd._countAndFlagsBits = 0xD000000000000046;
          v112._object = 0xE500000000000000;
          v113.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v113.value._object = 0xEB00000000656C62;
          v114._countAndFlagsBits = 0;
          v114._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v112, v113, v111, v114, swift__stringd);

          v115 = MEMORY[0x24C1FAD20](0x69632E7463656A65, 0xEC000000656C6372);
          v116 = [objc_opt_self() systemImageNamed_];

          v117 = swift_allocObject();
          *(v117 + 16) = v65;
          *(v117 + 24) = v151;
          v118 = v68;
          v119 = v151;
          preferredElementSize = UIMenuElementSizeSmall;
          children._rawValue = 0;
          v120 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          MEMORY[0x24C1FB090](v120);
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v153 = aBlock[0];
LABEL_53:
          if (v153 >> 62)
          {
            if (__CocoaSet.count.getter())
            {
              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

              v121 = _bridgeCocoaArray<A>(_:)();

              goto LABEL_56;
            }
          }

          else if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
            v121 = v153;
LABEL_56:

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
            v122._countAndFlagsBits = 0;
            v122._object = 0xE000000000000000;
            v160.value.super.isa = 0;
            v160.is_nil = 0;
            UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v123, v122, 0, v160, 1, 0xFFFFFFFFFFFFFFFFLL, v121, children);
            MEMORY[0x24C1FB090]();
            if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v63 = v158;
            goto LABEL_63;
          }

LABEL_63:
          v46 = v152;
          goto LABEL_64;
        }

LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v99 = _DocumentManagerBundle();
      if (v99)
      {
        v100 = v99;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
        swift__stringc._object = 0x8000000249BD4100;
        v101._countAndFlagsBits = 0x6573617245;
        swift__stringc._countAndFlagsBits = 0xD000000000000051;
        v101._object = 0xE500000000000000;
        v102.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v102.value._object = 0xEB00000000656C62;
        v103._countAndFlagsBits = 0;
        v103._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v101, v102, v100, v103, swift__stringc);

        v104 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BD4160);
        v105 = [objc_opt_self() systemImageNamed_];

        v106 = swift_allocObject();
        *(v106 + 16) = v68;
        *(v106 + 24) = v151;
        v107 = v68;
        v108 = v151;
        children._rawValue = 2;
        preferredElementSize = UIMenuElementSizeSmall;
        v109 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        MEMORY[0x24C1FB090](v109);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v153 = aBlock[0];
        goto LABEL_48;
      }

LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v155 = v63;
    v84 = v83;
    v85 = _DocumentManagerBundle();
    if (v85)
    {
      v86 = v85;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
      swift__stringb._object = 0x8000000249BD4180;
      v87._countAndFlagsBits = 0x6F666E4920746547;
      swift__stringb._countAndFlagsBits = 0xD000000000000050;
      v87._object = 0xE800000000000000;
      v88.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v88.value._object = 0xEB00000000656C62;
      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v86, v89, swift__stringb);

      v90 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
      v91 = [objc_opt_self() systemImageNamed_];

      v92 = swift_allocObject();
      v92[2] = v84;
      v92[3] = v151;
      v92[4] = v150;
      v92[5] = v149;
      v92[6] = v65;
      v92[7] = v68;
      v93 = v68;

      v94 = v93;
      v95 = v84;
      v96 = v151;
      v97 = v149;
      preferredElementSize = UIMenuElementSizeSmall;
      children._rawValue = 0;
      v98 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x24C1FB090](v98);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v153 = aBlock[0];
      v63 = v155;
      v66 = MEMORY[0x277D85000];
      goto LABEL_43;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_64:
  v124 = [v46 identifier];
  v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v126;
  if (v125 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v127 == v128)
  {

LABEL_74:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    preferredElementSizea = v63;
    goto LABEL_75;
  }

  v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v129 & 1) != 0 || ([v46 status] | 2) != 2 || objc_msgSend(v46, sel_status) == 2)
  {
    goto LABEL_74;
  }

  v130 = _DocumentManagerBundle();
  if (v130)
  {
    v131 = v130;
    swift__stringe._object = 0x8000000249BD4050;
    v132._countAndFlagsBits = 0xD000000000000013;
    v132._object = 0x8000000249BD4030;
    swift__stringe._countAndFlagsBits = 0xD00000000000005FLL;
    v133.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v133.value._object = 0xEB00000000656C62;
    v134._countAndFlagsBits = 0;
    v134._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v132, v133, v131, v134, swift__stringe);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v135 = MEMORY[0x24C1FAD20](0x6B72616D78, 0xE500000000000000);
    v136 = [objc_opt_self() systemImageNamed_];

    v137 = swift_allocObject();
    swift_weakInit();
    v138 = swift_allocObject();
    *(v138 + 16) = v46;
    *(v138 + 24) = v137;
    v139 = v46;
    v140 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_249BA0290;
    *(v141 + 32) = v140;
    v142 = v140;
    v143._countAndFlagsBits = 0;
    v143._object = 0xE000000000000000;
    v161.value.super.isa = 0;
    v161.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v144, v143, 0, v161, 1, 0xFFFFFFFFFFFFFFFFLL, v141, 2);
    MEMORY[0x24C1FB090]();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v63 = v158;
    goto LABEL_74;
  }

LABEL_81:
  __break(1u);
}

void closure #2 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a2 + OBJC_IVAR___DOCActionContext_appearance);
  v6 = *(a2 + OBJC_IVAR___DOCActionContext_configuration);
  v7 = *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0xD000000000000036;
  *(inited + 40) = 0x8000000249BD4210;
  v9 = DOCDocumentSource.representedLocation.getter();
  *(inited + 72) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  *(inited + 48) = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v11 = type metadata accessor for DOCActionContext();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_appearance] = v5;
  *&v12[OBJC_IVAR___DOCActionContext_configuration] = v6;
  *&v12[OBJC_IVAR___DOCActionContext_presentingViewController] = v7;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_userInfo] = v10;
  v18.receiver = v12;
  v18.super_class = v11;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  specialized DOCActionManager.perform(_:on:actionContext:)(a5, MEMORY[0x277D84F90], v16);
}

void closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13 = [objc_opt_self() defaultManager];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v20[4] = partial apply for closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v20[5] = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  v20[3] = &block_descriptor_97;
  v15 = _Block_copy(v20);
  v16 = a3;

  v17 = a5;
  v18 = a6;
  v19 = a7;

  [v13 doc:a2 fetchRootNodeForProviderDomain:v15 completionHandler:?];
  _Block_release(v15);
}

double closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a2;
  v14[7] = a6;
  v14[8] = a7;
  swift_unknownObjectRetain();
  v15 = a3;

  v16 = a5;
  v17 = a2;
  v18 = a6;
  v19 = a7;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, void *a4, id a5, void *a6)
{
  if (!a1 || (swift_getObjectType(), (v11 = DOCNode.fpfs_syncFetchFPItem()()) == 0))
  {
    if (!a5)
    {
      return;
    }

    v35 = *(a3 + 24);
    v36 = a5;
    v37 = a5;
    v38 = v35;
    v39 = DOCDocumentSource.representedLocation.getter();
    v40 = objc_allocWithZone(type metadata accessor for DOCErrorViewController());
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = a6;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = v39;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a5;
    v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = 0;
    v41 = a5;
    v42 = a6;
    v43 = v39;
    v44 = _convertErrorToNSError(_:)();
    v45 = [v44 domain];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v50 & 1) == 0)
      {

        goto LABEL_34;
      }
    }

    v51 = [v44 code];

    if (v51 == -1000)
    {
      v52 = *&v42[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v52)
      {
        v53 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_35:
        *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v53;
        v76 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v38, 0, 0);

        v77 = type metadata accessor for DOCGetInfoErrorPresentingViewController();
        v78 = objc_allocWithZone(v77);
        *&v78[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController] = v76;
        v88.receiver = v78;
        v88.super_class = v77;
        v79 = objc_msgSendSuper2(&v88, sel_init);
        [a2 presentViewController:v79 animated:1 completion:0];

        return;
      }
    }

LABEL_34:
    v53 = 0;
    goto LABEL_35;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v14 = *(a3 + 24);
  v82 = v13;
  if (v13)
  {
    v15 = a2;
    v13 = [v13 splitBrowserViewController];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA0290;
  *(v16 + 32) = v12;
  v17 = type metadata accessor for DOCServiceInfoViewController();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v14;
  v19 = objc_allocWithZone(DOCItemInfoViewController);
  v20 = v14;
  v81 = v12;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithNodes:isa configuration:v20 actionReporting:v13];

  swift_unknownObjectRelease();
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v23;
  [v23 _setBuiltinTransitionStyle_];
  v87.receiver = v18;
  v87.super_class = v17;
  v24 = objc_msgSendSuper2(&v87, sel_init);
  swift_unknownObjectRelease();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a4;
  v25[4] = a2;
  v26 = one-time initialization token for associatedObjectStorageKey;
  v27 = a2;
  v28 = v24;
  v29 = a4;
  v30 = v27;
  v31 = v28;
  v32 = v29;
  if (v26 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v31, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v34 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v33) + 0x78))(v83);

  if (v83[0])
  {
  }

  else
  {
    v86 = &unk_285D0A930;
    swift_dynamicCastObjCProtocolUnconditional();
    v54 = static UIViewController.associatedObjectStorageKey;
    v55 = v31;
    v56 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v55, v54);
    v57 = v17;
    v58 = v30;
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v60 = v32;
    v61 = swift_allocObject();
    *(v61 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v61 + 32) = MEMORY[0x277D84F90];
    *(v61 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v83[0] = v61;
    v32 = v60;
    v34 = MEMORY[0x277D85000];
    v62 = KeyPath;
    v30 = v58;
    v17 = v57;
    (*((*MEMORY[0x277D85000] & *v56) + 0x80))(v83, v62);
  }

  v63 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v31, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v34 & *v63) + 0x78))(v83);

  v64 = v83[0];
  if (v83[0])
  {
    if (*(v83[0] + 40) == 2)
    {
      closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(v31, v32, v30);
    }

    else
    {
      v69 = swift_allocObject();
      *(v69 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
      *(v69 + 24) = v25;
      swift_beginAccess();
      v70 = *(v64 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v64 + 32) = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
        *(v64 + 32) = v70;
      }

      v73 = v70[2];
      v72 = v70[3];
      v74 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
        v74 = v73 + 1;
        v70 = v80;
      }

      v70[2] = v74;
      v75 = &v70[2 * v73];
      v75[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v75[5] = v69;
      *(v64 + 32) = v70;
      swift_endAccess();
      DOCPresentationPreheatController.startIfNecessary()();
    }
  }

  else
  {
    v85.receiver = v31;
    v85.super_class = v17;
    objc_msgSendSuper2(&v85, sel_setModalPresentationStyle_, 7);
    v65 = [v31 traitCollection];
    v66 = [v65 userInterfaceIdiom];

    if (v66 != 6)
    {
      v84.receiver = v31;
      v84.super_class = v17;
      if (objc_msgSendSuper2(&v84, sel_modalPresentationStyle) == 2)
      {
        [v31 setPreferredContentSize_];
      }
    }

    v67 = [v31 popoverPresentationController];
    if (v67)
    {
      v68 = v67;
      [v67 setSourceItem_];
    }

    [v31 setModalPresentationStyle_];
    [v30 presentViewController:v31 animated:1 completion:0];
  }
}

id closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DOCServiceInfoViewController();
  v13.receiver = a1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_setModalPresentationStyle_, 7);
  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v12.receiver = a1;
    v12.super_class = v6;
    if (objc_msgSendSuper2(&v12, sel_modalPresentationStyle) == 2)
    {
      [a1 setPreferredContentSize_];
    }
  }

  v9 = [a1 popoverPresentationController];
  if (v9)
  {
    v10 = v9;
    [v9 setSourceItem_];
  }

  [a1 setModalPresentationStyle_];
  return [a3 presentViewController:a1 animated:1 completion:0];
}

double closure #5 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, void *a3)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static DOCUSBFormatting.shared;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  (*(*v5 + 104))(a2, 0, 0, a3, 0, partial apply for closure #1 in closure #5 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:), v6, 0, 0);

  return result;
}

void closure #1 in closure #5 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.Rename);
    v8 = a1;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2080;
      v15 = a1;
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v30);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_2493AC000, v10, v11, "[Erase] Source: %@ failed with error: %s ", v12, 0x16u);
      outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a3;
    v21 = a1;
    v22 = a3;
    DOCRunInMainThread(_:)();
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.Rename);
    v24 = a2;
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v24;
      *v27 = v24;
      v28 = v24;
      _os_log_impl(&dword_2493AC000, oslog, v25, "[Erase] Source: %@ succeeded.", v26, 0xCu);
      outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }
  }
}

void closure #6 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for DOCEjectionController();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a2;
  swift_unknownObjectWeakAssign();
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = a2;
  v8 = a3;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v9;
  v11 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  DOCEjectionController.eject()();
}

void closure #7 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5 = a2;
  specialized DOCDocumentSource.setHidden(hidden:completion:)(1, v5, v4, v5);
}

double closure #1 in closure #7 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, DOCDocumentSource *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    DOCSourceVisibilityController.addVisitedSource(source:)(a3);
  }

  return result;
}

id LocationSectionManager.sidebarItem(for:tab:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() itemFromRequest_];
  LocationSectionManager.accessories(for:)(a2);
  UITabSidebarItem.accessories.setter();
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  aBlock = v30;
  v26 = v31;
  if (!*(&v31 + 1))
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd, &_sypSgMR);
    return v9;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
  if (swift_dynamicCast())
  {
    v10 = v29;
    type metadata accessor for DOCFileProviderSource();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = *((*MEMORY[0x277D85000] & *v11) + 0x128);
      v10 = v10;
      if (v12(v10, v13, v14, v15))
      {
        UITabSidebarItem.defaultContentConfiguration()();
        v16 = swift_allocObject();
        swift_weakInit();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = v10;
        v18 = objc_allocWithZone(MEMORY[0x277D75E80]);
        v27 = partial apply for closure #1 in LocationSectionManager.sidebarItem(for:tab:);
        v28 = v17;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        *(&v26 + 1) = &block_descriptor_21;
        v19 = _Block_copy(&aBlock);

        v20 = [v18 initWithDidEndHandler_];
        _Block_release(v19);

        v27 = closure #2 in LocationSectionManager.sidebarItem(for:tab:);
        v28 = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v26 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
        *(&v26 + 1) = &block_descriptor_24;
        v21 = _Block_copy(&aBlock);
        [v20 setShouldChangeHandler_];
        _Block_release(v21);
        v27 = closure #3 in LocationSectionManager.sidebarItem(for:tab:);
        v28 = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v26 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool);
        *(&v26 + 1) = &block_descriptor_27;
        v22 = _Block_copy(&aBlock);
        [v20 setShouldEndHandler_];
        _Block_release(v22);
        *(&v26 + 1) = v4;
        v27 = MEMORY[0x277D74C30];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
        (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
        UITabSidebarItem.contentConfiguration.setter();

        (*(v5 + 8))(v8, v4);
        return v9;
      }
    }
  }

  return v9;
}

char *LocationSectionManager.accessories(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, "vP\t");
  MEMORY[0x28223BE20](v3 - 8, v4);
  v72 = v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v63 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v67 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UICellAccessory();
  v70 = *(v18 - 8);
  v71 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v69 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v68 = v63 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v63 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = v63 - v30;
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = v63 - v35;
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76[0] = v74;
  v76[1] = v75;
  if (!*(&v75 + 1))
  {
    outlined destroy of CharacterSet?(v76, &_sypSgMd, &_sypSgMR);
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v37 = v73;
  type metadata accessor for DOCFileProviderSource();
  v38 = swift_dynamicCastClass();
  if (!v38 || (v39 = *(v38 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  v65 = v37;
  v64 = v39;
  v40 = [v64 identifier];
  swift_beginAccess();
  v41 = *(v1 + 104);
  if (!*(v41 + 16) || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40), (v43 & 1) == 0))
  {

    swift_endAccess();
    return MEMORY[0x277D84F90];
  }

  v44 = *(*(v41 + 56) + 8 * v42);

  swift_endAccess();

  v63[1] = v44;
  if (v44[3])
  {
    v63[0] = v44[3];
    v45 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
    v46 = *MEMORY[0x277D74A98];
    v47 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v47 - 8) + 104))(v13, v46, v47);
    *v45 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
    v45[1] = 0;
    (*(v66 + 104))(v13, *MEMORY[0x277D74AD8], v10);
    v48 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v48 - 8) + 56))(v9, 1, 1, v48);
    v49 = v63[0];
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    static UICellAccessory.customView(configuration:)();

    (*(v67 + 8))(v17, v14);
    v51 = v70;
    v50 = v71;
    v52 = *(v70 + 32);
    v52(v36, v31, v71);
    (*(v51 + 16))(v27, v36, v50);
    v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v53);
    }

    v56 = v53;
    (*(v51 + 8))(v36, v50);
    *(v56 + 2) = v55 + 1;
    v52(&v56[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v55], v27, v50);
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
    v51 = v70;
    v50 = v71;
  }

  v58 = v72;
  ProviderDomainState.getEjectAccessory()(v72);
  if ((*(v51 + 48))(v58, 1, v50) == 1)
  {

    outlined destroy of CharacterSet?(v58, &_s5UIKit15UICellAccessoryVSgMd, "vP\t");
    return v56;
  }

  else
  {
    v59 = *(v51 + 32);
    v60 = v68;
    v59(v68, v58, v50);
    (*(v51 + 16))(v69, v60, v50);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
    }

    v62 = *(v56 + 2);
    v61 = *(v56 + 3);
    if (v62 >= v61 >> 1)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v56);
    }

    (*(v51 + 8))(v68, v50);
    *(v56 + 2) = v62 + 1;
    v59(&v56[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v62], v69, v50);
    return v56;
  }
}

double closure #1 in LocationSectionManager.sidebarItem(for:tab:)(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v7 = Strong, v8 = (*((*MEMORY[0x277D85000] & *Strong) + 0x280))(), v7, v8))
    {
      v9 = [a1 text];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      LocationSectionManager.handleUSBRename(source:alertPresenting:to:)(a3, v8, v10, v12);
    }

    else
    {
    }
  }

  return result;
}

double LocationSectionManager.handleUSBRename(source:alertPresenting:to:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v9 = [a1 displayName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == a3 && v12 == a4)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v16 = swift_allocObject();
        swift_weakInit();
        v17 = swift_allocObject();
        v17[2] = a1;
        v17[3] = a3;
        v17[4] = a4;
        v17[5] = v16;
        v17[6] = a2;
        v18 = one-time initialization token for shared;
        v19 = a1;

        v20 = a2;
        if (v18 != -1)
        {
          swift_once();
        }

        (*(*static DOCUSBRenaming.shared + 136))(v19, a3, a4, v20, 0, partial apply for closure #1 in LocationSectionManager.handleUSBRename(source:alertPresenting:to:), v17, 0, 0);
      }
    }
  }

  return result;
}

id closure #2 in LocationSectionManager.sidebarItem(for:tab:)(void *a1)
{
  v1 = [a1 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = String.count.getter();

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v3 = [a1 proposedReplacementText];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      goto LABEL_10;
    }
  }

  [a1 proposedReplacementRange];
  if (v9 != 1)
  {
LABEL_10:

    return a1;
  }

  else
  {
    v10 = [a1 text];
    if (!v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = MEMORY[0x24C1FAD20](v11);
    }

    v12 = [objc_allocWithZone(MEMORY[0x277D75E88]) initWithText_];

    return v12;
  }
}

id thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

BOOL closure #3 in LocationSectionManager.sidebarItem(for:tab:)(void *a1)
{
  v1 = [a1 text];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void closure #1 in LocationSectionManager.startObservingState(for:tab:alertPresenting:)(void *a1)
{
  v2 = [a1 tabBarController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sidebar];

    [v4 reconfigureItemForTab_];
  }
}

double closure #1 in LocationSectionManager.handleUSBRename(source:alertPresenting:to:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  v13 = a1;
  v14 = a2;

  v15 = a6;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in LocationSectionManager.handleUSBRename(source:alertPresenting:to:)(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6)
{
  if (a1)
  {
    v11 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.Rename);
    v13 = a1;
    v14 = a2;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      osloga = a6;
      v33[0] = swift_slowAlloc();
      v19 = v33[0];
      *v17 = 138412802;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2080;
      v20 = v14;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v33);
      *(v17 + 22) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v22;
      v18[1] = v22;
      _os_log_impl(&dword_2493AC000, v15, v16, "Renaming source: %@ to: %s failed with error: %@", v17, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v23 = v19;
      a6 = osloga;
      MEMORY[0x24C1FE850](v23, -1, -1);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      specialized LocationSectionManager.warnAboutInvalidUSBName(name:alertPresenting:)(a6);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.Rename);
    v25 = a2;

    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v27 = 138412546;
      *(v27 + 4) = v25;
      *v28 = v25;
      *(v27 + 12) = 2080;
      v30 = v25;
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v33);
      _os_log_impl(&dword_2493AC000, oslog, v26, "Renaming source: %@ to: %s succeeded.", v27, 0x16u);
      outlined destroy of CharacterSet?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    else
    {
    }
  }
}

id *LocationSectionManager.deinit()
{
  MEMORY[0x24C1FE970](v0 + 4);

  return v0;
}

uint64_t LocationSectionManager.__deallocating_deinit()
{
  LocationSectionManager.deinit();

  return swift_deallocClassInstance();
}

id protocol witness for TabSectionManager.generateTabGroup(using:alertPresenting:) in conformance LocationSectionManager(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return specialized LocationSectionManager.generateTabGroup(using:alertPresenting:)(a1, a3, v3, ObjectType, a2);
}

id EjectStateDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EjectStateDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EjectStateDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_20;
    }

    v98 = v6;
    v10 = *a3;
    v11 = *(*a3 + 8 * v7);
    v101 = *(*a3 + 8 * v9);
    v12 = v101;
    v102 = v11;
    v13 = v11;
    v14 = v12;
    v15 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v102, &v101);
    if (v4)
    {

      return;
    }

    v16 = v15;

    v17 = v9 + 2;
    v95 = v9;
    v18 = 8 * v9;
    v5 = v10 + v18 + 16;
    while (1)
    {
      v7 = v98;
      if (v98 == v17)
      {
        break;
      }

      v19 = *v5;
      v101 = *(v5 - 8);
      v20 = v101;
      v102 = v19;
      v21 = v19;
      v22 = v20;
      v23 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v102, &v101);

      ++v17;
      v5 += 8;
      if ((v16 ^ v23))
      {
        v7 = v17 - 1;
        break;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v95;
    if (v7 < v95)
    {
      goto LABEL_124;
    }

    if (v95 < v7)
    {
      v25 = 8 * v7 - 8;
      v26 = v7;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v28 = *(v27 + v18);
          *(v27 + v18) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v18 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v9 = v95;
      goto LABEL_20;
    }

    v9 = v95;
LABEL_20:
    v29 = a3[1];
    if (v7 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_120;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_133;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v9 + a4 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v9 + a4;
    }

    if (v30 < v9)
    {
      goto LABEL_123;
    }

    if (v7 == v30)
    {
LABEL_133:
      if (v7 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = v9;
      v78 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v96 = v77;
      v79 = v77 - v7;
      v92 = v30;
      do
      {
        v80 = *(v78 + 8 * v7);
        v93 = v79;
        v99 = v5;
        do
        {
          v101 = *v5;
          v81 = v101;
          v102 = v80;
          v82 = v80;
          v83 = v81;
          v84 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v102, &v101);
          if (v4)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v5;
          v80 = *(v5 + 8);
          *v5 = v80;
          *(v5 + 8) = v86;
          v5 -= 8;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v5 = v99 + 8;
        v79 = v93 - 1;
      }

      while (v7 != v92);
      v7 = v92;
      v9 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v32 = *(v8 + 2);
    v31 = *(v8 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = &v8[16 * v32];
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v8[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v8[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v8[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v37 = *(v8 + 4);
      v38 = *(v8 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_49:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v8[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v8[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v63 = &v8[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_63:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v8[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_70:
    v74 = v36 - 1;
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_125;
    }

    v5 = *&v8[16 * v74 + 32];
    v75 = *&v8[16 * v36 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v36 + 32]), (*a3 + 8 * v75), v35);
    if (v4)
    {
      goto LABEL_100;
    }

    if (v75 < v5)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    if (v74 >= *(v8 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v8[16 * v74];
    *(v76 + 4) = v5;
    *(v76 + 5) = v75;
    v103 = v8;
    specialized Array.remove(at:)(v36);
    v8 = v103;
    v33 = *(v103 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
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
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_92:
  v103 = v8;
  v88 = *(v8 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*a3)
    {
      v89 = *&v8[16 * v88];
      v90 = *&v8[16 * v88 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v5);
      if (v4)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      if (v88 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v8[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v103 = v8;
      specialized Array.remove(at:)(v88 - 1);
      v8 = v103;
      v88 = *(v103 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_101:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v76 = v5;
      v77 = *(v8 + 2);
      if (v77 >= 2)
      {
        while (*a3)
        {
          v78 = *&v8[16 * v77];
          v5 = *&v8[16 * v77 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v78), (*a3 + *&v8[16 * v77 + 16]), (*a3 + v5), v6);
          if (v76)
          {
            goto LABEL_111;
          }

          if (v5 < v78)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v77 - 2 >= *(v8 + 2))
          {
            goto LABEL_128;
          }

          v79 = &v8[16 * v77];
          *v79 = v78;
          *(v79 + 1) = v5;
          specialized Array.remove(at:)(v77 - 1);
          v77 = *(v8 + 2);
          if (v77 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_138;
      }

LABEL_111:

      return;
    }

LABEL_134:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_103;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v10 = *a3;
      if (*(*a3 + v9) && *(*a3 + v9) != 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v12 = v7 + 2;
      if (v7 + 2 < v6)
      {
        v9 = v6 - 1;
        while (1)
        {
          if (*(v10 + v12) && *(v10 + v12) != 1)
          {

            if ((v11 & 1) == 0)
            {
              v9 = v12;
              goto LABEL_22;
            }
          }

          else
          {
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v14 = v11 ^ v13;
            v9 = v6 - 1;
            if (v14)
            {
              v9 = v12 - 1;
              break;
            }
          }

          if (v6 == ++v12)
          {
            v12 = v6;
            break;
          }
        }
      }

      if (v11)
      {
        if (v12 < v7)
        {
          goto LABEL_133;
        }

        if (v7 <= v9)
        {
          v71 = v12 - 1;
          v72 = v7;
          do
          {
            if (v72 != v71)
            {
              v75 = *a3;
              if (!*a3)
              {
                goto LABEL_137;
              }

              v73 = *(v75 + v72);
              *(v75 + v72) = *(v75 + v71);
              *(v75 + v71) = v73;
            }
          }

          while (++v72 < v71--);
        }
      }

      v9 = v12;
    }

LABEL_22:
    v15 = a3[1];
    if (v9 < v15)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_130;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v9 < v7)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v26 = *(v8 + 2);
    v25 = *(v8 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v8);
    }

    *(v8 + 2) = v27;
    v28 = &v8[16 * v26];
    *(v28 + 4) = v7;
    *(v28 + 5) = v9;
    v29 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    v7 = v9;
    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v8 + 4);
          v32 = *(v8 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_62:
          if (v34)
          {
            goto LABEL_118;
          }

          v47 = &v8[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_121;
          }

          v53 = &v8[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_125;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v57 = &v8[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_76:
        if (v52)
        {
          goto LABEL_120;
        }

        v60 = &v8[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_123;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_83:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v69 = *&v8[16 * v68 + 32];
        v6 = *&v8[16 * v30 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v69), (*a3 + *&v8[16 * v30 + 32]), (*a3 + v6), v29);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v6 < v69)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v68 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v70 = &v8[16 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v6;
        specialized Array.remove(at:)(v30);
        v27 = *(v8 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v8[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_116;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_117;
      }

      v42 = &v8[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_119;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_122;
      }

      if (v46 >= v38)
      {
        v64 = &v8[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_126;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_101;
    }
  }

  v16 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_131;
  }

  if (v16 >= v15)
  {
    v16 = a3[1];
  }

  if (v16 < v7)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v9 == v16)
  {
    goto LABEL_42;
  }

  v80 = v5;
  v81 = v7;
  v6 = *a3;
  v17 = v7 - v9;
  v18 = (*a3 + v9);
  v84 = v16;
LABEL_32:
  v19 = v9;
  v20 = *(v6 + v9);
  v21 = v18;
  v22 = v17;
  while (1)
  {
    if (v20 > 1u)
    {

      if (!v6)
      {
        break;
      }

      goto LABEL_38;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!v6)
    {
      break;
    }

LABEL_38:
    v20 = *v21;
    *v21 = *(v21 - 1);
    *--v21 = v20;
    if (__CFADD__(v22++, 1))
    {
LABEL_31:
      v9 = v19 + 1;
      --v17;
      ++v18;
      if (v19 + 1 == v84)
      {
        v9 = v84;
        v5 = v80;
        v7 = v81;
        goto LABEL_42;
      }

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__dst, id *__src, id *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

id specialized LocationSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = specialized LocationSectionManager.generateTabs(using:alertPresenting:)(a1, a2, a3, a4, a5);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [objc_opt_self() mainBundle];
  v20._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v7._object = 0xE900000000000073;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v20);

  v10 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
  v11 = [objc_opt_self() systemImageNamed_];

  v12 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v13 = MEMORY[0x24C1FAD20](v9._countAndFlagsBits, v9._object);

  v14 = MEMORY[0x24C1FAD20](0x6E6F697461636F6CLL, 0xE900000000000073);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab, 0x277D75B08);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_130;
  v16 = _Block_copy(aBlock);

  v17 = [v12 initWithTitle:v13 image:v11 identifier:v14 children:isa viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

uint64_t specialized LocationSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (*(**(a3 + 56) + 136))(3);
  v8 = v7;
  ObjectType = swift_getObjectType();
  result = (*(v8 + 72))(2, ObjectType, v8);
  v11 = result;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v70 = a5;
  v74 = MEMORY[0x277D84F90];
  v14 = *(result + 16);
  v15 = *MEMORY[0x277D05DD0];
  v16 = result - 16;
LABEL_2:
  v17 = (v16 + 48 * v12);
  while (1)
  {
    if (v14 == v12)
    {
      swift_unknownObjectRelease();

      return v13;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    ++v12;
    v18 = (v17 + 3);
    v19 = v17[3];
    v20 = v17[4];
    *&v76[9] = *(v17 + 73);
    v75 = v19;
    *v76 = v20;
    v17 += 3;
    if (v76[24] == 1)
    {
      v66 = v16;
      v68 = v6;
      v21 = *v18;
      v22 = v75;
      outlined init with copy of DOCSidebarItem(&v75, &v72);
      v63 = v21;
      v23 = [v22 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      v67 = v15;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {

        v30 = 0;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v30 = 0;
        if ((v29 & 1) == 0)
        {
          type metadata accessor for DOCFileProviderSource();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v30 = [v31 isEjectable] ^ 1;
          }

          else
          {
            v30 = 1;
          }
        }
      }

      v32 = [v22 displayName];
      if (!v32)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = MEMORY[0x24C1FAD20](v33);
      }

      v34 = (*(v70 + 8))(&v75, a4);
      outlined destroy of DOCSidebarItem(&v75);
      v72 = 0x6E6F697461636F6CLL;
      v73 = 0xE90000000000002ELL;
      v35 = [v22 identifier];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      MEMORY[0x24C1FAEA0](v36, v38);

      v39 = v72;
      v40 = v73;
      v41 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v42 = MEMORY[0x24C1FAD20](v39, v40);

      v43 = [v41 initWithTitle:v32 image:v34 identifier:v42 viewControllerProvider:0];

      [v43 setAllowsHiding_];
      if (v30)
      {
        DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
        v44 = [v22 identifier];
        v45 = specialized Set.contains(_:)();

        v46 = (v45 & 1) == 0 && [v22 status] && objc_msgSend(v22, sel_status) != 2;
        [v43 setHiddenByDefault_];
        type metadata accessor for DOCFileProviderSource();
        v47 = swift_dynamicCastClass();
        if (v47)
        {
          v48 = (*((*MEMORY[0x277D85000] & *v47) + 0xF8))(v63);
          if (v48 == 2)
          {
            v49 = [v43 isHiddenByDefault];
          }

          else
          {
            v49 = v48 ^ 1;
          }

          [v43 setHidden_];
          outlined destroy of DOCSidebarItem(&v75);
        }

        else
        {
          [v43 setHidden_];
        }
      }

      [v43 setUserInfo_];
      type metadata accessor for DOCFileProviderSource();
      v50 = swift_dynamicCastClass();
      if (v50)
      {
        v51 = *(v50 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        if (v51)
        {
          v52 = v50;
          v53 = swift_allocObject();
          *(v53 + 16) = v43;
          type metadata accessor for ProviderDomainState();
          swift_allocObject();
          outlined init with copy of DOCSidebarItem(&v75, &v72);
          v54 = v51;
          outlined init with copy of DOCSidebarItem(&v75, &v72);
          v55 = v54;
          v56 = v43;
          v57 = a2;
          v59 = ProviderDomainState.init(source:domain:alertPresenting:stateDidChange:)(v52, v55, v57, partial apply for closure #1 in LocationSectionManager.startObservingState(for:tab:alertPresenting:), v53, v58);
          v60 = [v55 identifier];
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = *(a3 + 104);
          *(a3 + 104) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v60, isUniquelyReferenced_nonNull_native);

          *(a3 + 104) = v71;
          swift_endAccess();

          outlined destroy of DOCSidebarItem(&v75);
        }
      }

      v62 = outlined destroy of DOCSidebarItem(&v75);
      MEMORY[0x24C1FB090](v62);
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v74;
      v15 = v67;
      v6 = v68;
      v16 = v66;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *specialized LocationSectionManager.init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 16) = 3;
  swift_unknownObjectWeakInit();
  *(v5 + 96) = 0;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  v10 = MEMORY[0x277D84F90];
  v6[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6[14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_SbTt0g5Tf4g_n(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9A480;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 32) = 0xD000000000000027;
  *(v11 + 40) = 0x8000000249BD3A40;
  print(_:separator:terminator:)();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(35);

  v14 = [a1 hiddenSourcesIdentifiers];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = MEMORY[0x24C1FB0D0](v15, v12);
  v18 = v17;

  MEMORY[0x24C1FAEA0](v16, v18);

  *(v13 + 56) = v12;
  *(v13 + 32) = 0xD000000000000021;
  *(v13 + 40) = 0x8000000249BD3A70;
  print(_:separator:terminator:)();

  v6[3] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v6;
}

void specialized LocationSectionManager.validateDropOperation(for:onto:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60[0] = v58;
  v60[1] = v59;
  if (!*(&v59 + 1))
  {
    goto LABEL_22;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
  if (swift_dynamicCast())
  {
    v10 = v57;
    type metadata accessor for DOCFileProviderSource();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0x277D85000];
      v14 = (*((*MEMORY[0x277D85000] & *v11) + 0xE0))();
      if (v14)
      {
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v14, v15);
        v16 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        ObjectType = swift_getObjectType();
        if ((specialized static FPItem.sessionContainsDOCNode(_:)(a1, v16, ObjectType) & 1) == 0)
        {
          (*((*v13 & *v12) + 0x130))();

          return;
        }

        if ([a1 localDragSession])
        {
          swift_unknownObjectRelease();
          static UTType.item.getter();
          v18 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a1, v9, v16, ObjectType);
          (*(v5 + 8))(v9, v4);
          *&v60[0] = MEMORY[0x277D84F90];
          if (v18 >> 62)
          {
            goto LABEL_71;
          }

          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
          v53 = v10;
          v20 = v19;
          v56 = v18;
          if (!v19)
          {
            v27 = MEMORY[0x277D84F90];
LABEL_27:
            _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(v27);

            if (DOCFileProviderSource.isRootWritable.getter())
            {
              if ((specialized Set.contains(_:)() & 1) == 0)
              {

                specialized Set.contains(_:)();

                return;
              }

              v28 = 0;
              v54 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
              v55 = v18 & 0xC000000000000001;
              v52 = v18 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v20 == v28)
                {

                  return;
                }

                if (v55)
                {
                  v29 = MEMORY[0x24C1FC540](v28, v18);
                  if (__OFADD__(v28, 1))
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  if (v28 >= *(v52 + 16))
                  {
                    goto LABEL_69;
                  }

                  v29 = *(v18 + 8 * v28 + 32);
                  swift_unknownObjectRetain();
                  if (__OFADD__(v28, 1))
                  {
LABEL_46:
                    __break(1u);
                    break;
                  }
                }

                v30 = [v29 providerDomainID];
                v31 = *(v12 + v54);
                if (v31)
                {
                  v32 = [v31 identifier];
                  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v35 = v34;
                  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
                  {

                    v37 = 0;
                  }

                  else
                  {
                    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v37 = v38 ^ 1;
                  }

                  v30 = v32;
                  v10 = v53;
                  v18 = v56;
                }

                else
                {
                  v37 = 1;
                }

                v39 = [v29 isRootItem];
                swift_unknownObjectRelease();
                if (v39)
                {
                  ++v28;
                  if ((v37 & 1) == 0)
                  {
                    continue;
                  }
                }

                v40 = 0;
                while (1)
                {
                  if (v55)
                  {
                    v41 = MEMORY[0x24C1FC540](v40, v18);
                  }

                  else
                  {
                    if (v40 >= *(v52 + 16))
                    {
                      __break(1u);
                      return;
                    }

                    v41 = *(v18 + 8 * v40 + 32);
                    swift_unknownObjectRetain();
                  }

                  v42 = v40 + 1;
                  if (__OFADD__(v40, 1))
                  {
                    goto LABEL_70;
                  }

                  v43 = [v41 providerDomainID];
                  v44 = *(v12 + v54);
                  if (!v44)
                  {

                    swift_unknownObjectRelease();
                    goto LABEL_66;
                  }

                  v45 = [v44 identifier];
                  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v48 = v47;
                  if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
                  {

                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    swift_unknownObjectRelease();

                    if ((v51 & 1) == 0)
                    {

LABEL_66:

                      return;
                    }
                  }

                  ++v40;
                  v10 = v53;
                  v18 = v56;
                  if (v42 == v20)
                  {

                    return;
                  }
                }
              }
            }

            return;
          }

          v21 = 0;
          v22 = v18 & 0xC000000000000001;
          v10 = (v18 & 0xFFFFFFFFFFFFFF8);
          v18 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          while (1)
          {
            if (v22)
            {
              v23 = MEMORY[0x24C1FC540](v21, v56);
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
LABEL_21:
                __break(1u);
LABEL_22:
                outlined destroy of CharacterSet?(v60, &_sypSgMd, &_sypSgMR);
                return;
              }
            }

            else
            {
              if (v21 >= v10[2])
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                v19 = __CocoaSet.count.getter();
                goto LABEL_12;
              }

              v23 = *(v56 + 8 * v21 + 32);
              swift_unknownObjectRetain();
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                goto LABEL_21;
              }
            }

            v25 = [v23 doc_eligibleActions];
            type metadata accessor for FPAction(0);
            lazy protocol witness table accessor for type FPAction and conformance FPAction();
            v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
            swift_unknownObjectRelease();

            specialized Array.append<A>(contentsOf:)(v26);
            ++v21;
            if (v24 == v20)
            {
              v27 = *&v60[0];
              v10 = v53;
              v18 = v56;
              goto LABEL_27;
            }
          }
        }
      }
    }
  }
}

void specialized LocationSectionManager.performDrop(session:onto:alertPresenting:completion:)(uint64_t a1, id a2, uint64_t a3, void (*a4)(uint64_t))
{
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
    if (swift_dynamicCast())
    {
      v7 = v15;
      type metadata accessor for DOCFileProviderSource();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *((*MEMORY[0x277D85000] & *v8) + 0xE0);
        v7 = v15;
        v10 = v9();
        if (v10)
        {
          v12 = v10;
          v13 = v11;
          v14 = v10(a1, 3, a3);
          a4(v14);
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v12, v13);

          return;
        }
      }
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v18, &_sypSgMd, &_sypSgMR);
  }

  (a4)();
}

uint64_t dispatch thunk of TabIconProvider.getIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a3 + 8);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v3;
  v10 = v4;
  return v5(v8, a2);
}

uint64_t type metadata accessor for ProviderDomainState()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

uint64_t type metadata accessor for EjectStateDelegate()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

void specialized LocationSectionManager.warnAboutInvalidUSBName(name:alertPresenting:)(void *a1)
{
  v2 = _DocumentManagerBundle();
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v27._object = 0x8000000249BD3ED0;
  v4._object = 0x8000000249BD3EB0;
  v27._countAndFlagsBits = 0xD00000000000004ALL;
  v4._countAndFlagsBits = 0xD000000000000017;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v27);

  v8 = _DocumentManagerBundle();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v28._object = 0x8000000249BD3F60;
  v10._object = 0x8000000249BD3F20;
  v28._countAndFlagsBits = 0xD00000000000003CLL;
  v10._countAndFlagsBits = 0x1000000000000031;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v28);

  v14 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

  v15 = MEMORY[0x24C1FAD20](v13._countAndFlagsBits, v13._object);

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = _DocumentManagerBundle();
  if (!v17)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v18 = v17;
  v29._object = 0xE000000000000000;
  v19._countAndFlagsBits = 19279;
  v19._object = 0xE200000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v29);

  v23 = MEMORY[0x24C1FAD20](v22._countAndFlagsBits, v22._object);

  v25 = [objc_opt_self() actionWithTitle:v23 style:0 handler:0];

  v24 = v16;
  [v24 addAction_];
  [v24 setPreferredAction_];

  [a1 presentViewController:v24 animated:1 completion:0];
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_17Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

unint64_t lazy protocol witness table accessor for type FPAction and conformance FPAction()
{
  result = lazy protocol witness table cache variable for type FPAction and conformance FPAction;
  if (!lazy protocol witness table cache variable for type FPAction and conformance FPAction)
  {
    type metadata accessor for FPAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPAction and conformance FPAction);
  }

  return result;
}

uint64_t DOCDocumentSourceIdentifierIsNonManagedICloud(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:*MEMORY[0x277D060C0]] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", *MEMORY[0x277D060E8]) & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", *MEMORY[0x277D060C8]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:*MEMORY[0x277D060D8]];
  }

  return v2;
}

uint64_t DOCItemCollectionListSpec.init(defaultRowHeight:defaultIconVerticalMargin:titleFontStyle:subtitleFontStyle:rowStyle:titleMaxRows:subtitleMaxRows:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = 1;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

double DOCItemCollectionListSpec.init(traitCollection:sizeClass:sizeClassOrientation:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>, char a3@<W1>)
{
  specialized DOCItemCollectionListSpec.init(traitCollection:sizeClass:sizeClassOrientation:)(a2, a3, v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](qword_249BA4F30[v3]);
  MEMORY[0x24C1FCBD0](v4);
  return DOCItemCollectionLayoutTraits.ListItemTraits.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors()
{
  v1 = v0[9];
  v16 = v0[8];
  v17 = v1;
  v18 = *(v0 + 20);
  v2 = v0[5];
  v12 = v0[4];
  v13 = v2;
  v3 = v0[7];
  v14 = v0[6];
  v15 = v3;
  v4 = v0[1];
  v8 = *v0;
  v9 = v4;
  v5 = v0[3];
  v10 = v0[2];
  v11 = v5;
  Hasher.init(_seed:)();
  DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors.hash(into:)(v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(uint64_t a1)
{
  v2 = v1[9];
  v17 = v1[8];
  v18 = v2;
  v19 = *(v1 + 20);
  v3 = v1[5];
  v13 = v1[4];
  v14 = v3;
  v4 = v1[7];
  v15 = v1[6];
  v16 = v4;
  v5 = v1[1];
  v9 = *v1;
  v10 = v5;
  v6 = v1[3];
  v11 = v1[2];
  v12 = v6;
  Hasher.init(_seed:)();
  DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors.hash(into:)(v8);
  return Hasher._finalize()();
}

void *one-time initialization function for cachedHeights()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables25DOCItemCollectionListSpecV0F24HeightDeterminingFactors33_007BF96B63A761DA9097C9AAC5823B90LLV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static DOCItemCollectionListSpec.cachedHeights = result;
  return result;
}

double DOCItemCollectionListSpec.rowHeight(for:gridItemLayoutTraits:listItemLayoutTraits:)(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = v3;
  v6 = a2[9];
  v122 = a2[8];
  v123 = v6;
  v124[0] = a2[10];
  *(v124 + 9) = *(a2 + 169);
  v7 = a2[5];
  v118 = a2[4];
  v119 = v7;
  v8 = a2[7];
  v120 = a2[6];
  v121 = v8;
  v9 = a2[1];
  v114 = *a2;
  v115 = v9;
  v10 = a2[3];
  v116 = a2[2];
  v117 = v10;
  v11 = a3[5];
  v129 = a3[4];
  v130 = v11;
  v12 = a3[7];
  v131 = a3[6];
  v132 = v12;
  v13 = a3[1];
  v125 = *a3;
  v126 = v13;
  v14 = a3[3];
  v127 = a3[2];
  v128 = v14;
  v15 = [a1 preferredContentSizeCategory];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

LABEL_5:
    v21 = [objc_opt_self() defaultContentSizeCategory];
    v22 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];

    goto LABEL_7;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_5;
  }

  v22 = a1;
LABEL_7:
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  v23 = BYTE8(v82);
  v24 = *(v4 + 24);
  v102 = *(v4 + 16);
  v101 = v24;
  outlined init with copy of UIFontTextStyle(&v102, &v82);
  outlined init with copy of UIFontTextStyle(&v101, &v82);
  v25 = [v22 preferredContentSizeCategory];
  UITraitCollection.subscript.getter();
  v110 = v129;
  v111 = v130;
  v112 = v131;
  v113 = v132;
  v106 = v125;
  v107 = v126;
  v108 = v127;
  v109 = v128;
  v103[0] = v102;
  v103[1] = v101;
  v103[2] = v25;
  v104 = v23;
  v105 = v83;
  outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v125, &v82);
  v26 = [v22 preferredContentSizeCategory];
  v27 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if ((v27 & 1) == 0)
  {
    v32 = [objc_opt_self() defaultMetrics];
    [v32 scaledValueForValue_];
    v31 = v33;

    goto LABEL_14;
  }

  if (one-time initialization token for cachedHeights != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = static DOCItemCollectionListSpec.cachedHeights;
  if (*(static DOCItemCollectionListSpec.cachedHeights + 2))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
    if (v30)
    {
      v31 = *(v28[7] + 8 * v29);
      swift_endAccess();
LABEL_14:
      outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103);

      return v31;
    }
  }

  swift_endAccess();
  v34 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v35 = objc_allocWithZone(type metadata accessor for DOCItemCollectionLargeTextListCell(0));
  v69 = v34;
  v36 = DOCItemCollectionListCell.init(frame:containerView:)(v34, 0.0, 0.0, 0.0, 0.0);
  v37 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCellContent(0)) init];
  v90 = v122;
  v91 = v123;
  v92[0] = v124[0];
  *(v92 + 9) = *(v124 + 9);
  v86 = v118;
  v87 = v119;
  v88 = v120;
  v89 = v121;
  v82 = v114;
  v83 = v115;
  v84 = v116;
  v85 = v117;
  DOCGridLayout.specIconWidth.modify();
  v79 = v90;
  v80 = v91;
  v81[0] = v92[0];
  *(v81 + 9) = *(v92 + 9);
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v38 = MEMORY[0x277D85000];
  v39 = *((*MEMORY[0x277D85000] & *v37) + 0x2E0);
  outlined init with copy of DOCItemCollectionLayoutTraits.GridItemTraits(&v114, v70);
  v39(&v71);
  v97 = v129;
  v98 = v130;
  v99 = v131;
  v100 = v132;
  v93 = v125;
  v94 = v126;
  v95 = v127;
  v96 = v128;
  DOCGridLayout.specIconWidth.modify();
  v75 = v97;
  v76 = v98;
  v77 = v99;
  v78 = v100;
  v71 = v93;
  v72 = v94;
  v73 = v95;
  v74 = v96;
  v40 = *((*v38 & *v37) + 0x2F8);
  outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v125, v70);
  v40(&v71);
  (*((*v38 & *v37) + 0x328))([objc_allocWithZone(MEMORY[0x277D05EA0]) init]);
  v41 = *((*v38 & *v36) + 0x210);
  v42 = v36;
  v68 = v37;
  v41(v37);
  v43 = *((*v38 & *v42) + 0x348);
  v44 = v42;
  v43();
  v45 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel;
  [*(v44 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel) setHidden_];
  v46 = [a1 preferredContentSizeCategory];
  v47 = [v44 traitCollection];
  v48 = [v47 preferredContentSizeCategory];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {

      outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103);
      return 0.0;
    }
  }

  v54 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel;
  v55 = *(v44 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel);

  v56 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v57 = MEMORY[0x24C1FAD20](6425185, 0xE300000000000000);
  v58 = [v56 initWithString_];

  [v55 setAttributedText_];
  v59 = *(v44 + v45);

  v60 = MEMORY[0x24C1FAD20](6556259, 0xE300000000000000);
  [v59 setText_];

  v61 = *(v44 + v54);
  [v61 invalidateIntrinsicContentSize];

  v62 = *(v44 + v45);
  [v62 invalidateIntrinsicContentSize];

  [objc_opt_self() separatorThicknessForTraitCollection_];
  v64 = v63;
  [v69 systemLayoutSizeFittingSize_];
  v31 = v64 + v65;
  swift_beginAccess();
  outlined init with copy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103, &v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v71 = static DOCItemCollectionListSpec.cachedHeights;
  static DOCItemCollectionListSpec.cachedHeights = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, isUniquelyReferenced_nonNull_native, v31);
  outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103);
  static DOCItemCollectionListSpec.cachedHeights = v71;
  swift_endAccess();
  outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103);

  return v31;
}

uint64_t specialized static DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v30 = a1[4];
  v3 = *(a1 + 15);
  v53 = *(a1 + 13);
  v54 = v3;
  v4 = *(a1 + 19);
  v55 = *(a1 + 17);
  v56 = v4;
  v5 = *(a1 + 7);
  v49 = *(a1 + 5);
  v50 = v5;
  v6 = *(a1 + 11);
  v51 = *(a1 + 9);
  v52 = v6;
  v7 = *(a2 + 24);
  v8 = a2[4];
  v9 = *(a2 + 19);
  v63 = *(a2 + 17);
  v64 = v9;
  v10 = *(a2 + 15);
  v61 = *(a2 + 13);
  v62 = v10;
  v11 = *(a2 + 11);
  v59 = *(a2 + 9);
  v60 = v11;
  v12 = *(a2 + 7);
  v57 = *(a2 + 5);
  v58 = v12;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v25 != v26)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_13;
    }

LABEL_16:
    v28 = 0;
    return v28 & 1;
  }

LABEL_13:
  v28 = 0;
  if (qword_249BA4F30[v2] == qword_249BA4F30[v7] && v30 == v8)
  {
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v35 = v61;
    v36 = v62;
    v37 = v63;
    v38 = v64;
    v31 = v57;
    v32 = v58;
    v33 = v59;
    v34 = v60;
    outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v49, v48);
    outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v57, v48);
    v28 = specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(&v39, &v31);
    v47[4] = v35;
    v47[5] = v36;
    v47[6] = v37;
    v47[7] = v38;
    v47[0] = v31;
    v47[1] = v32;
    v47[2] = v33;
    v47[3] = v34;
    outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v47);
    v48[4] = v43;
    v48[5] = v44;
    v48[6] = v45;
    v48[7] = v46;
    v48[0] = v39;
    v48[1] = v40;
    v48[2] = v41;
    v48[3] = v42;
    outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v48);
  }

  return v28 & 1;
}

uint64_t specialized static DOCItemCollectionListSpec.defaultIconSize(for:sizeSliderValue:)(char a1, uint64_t a2)
{
  if (!a1)
  {
    return 36;
  }

  if (a1 == 1)
  {
    return 48;
  }

  result = a2 - 16;
  if (__OFSUB__(a2, 16))
  {
    __break(1u);
  }

  return result;
}

void specialized DOCItemCollectionListSpec.init(traitCollection:sizeClass:sizeClassOrientation:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  if (v15 == 3)
  {
    v6 = MEMORY[0x277D76918];
    v7 = 8;
  }

  else
  {
    v6 = qword_278FA3228[a2];
    v7 = qword_249BA4F48[a2];
  }

  v8 = *v6;
  v9 = 8.0;
  if (v16 != 2)
  {
    if (v16 == 1)
    {
      v10 = 48;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = v17 - 16;
  if (__OFSUB__(v17, 16))
  {
    __break(1u);
LABEL_10:
    v9 = 6.0;
    v10 = 36;
  }

LABEL_11:
  v11 = *MEMORY[0x277D76938];
  v12 = [a1 preferredContentSizeCategory];
  v13 = UIContentSizeCategory.isAccessibilityCategory.getter();

  *a3 = v9 + v9 + v10;
  *(a3 + 8) = v9;
  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  *(a3 + 16) = v8;
  *(a3 + 24) = v11;
  *(a3 + 32) = v7;
  *(a3 + 40) = 1;
  *(a3 + 48) = v14;
  *(a3 + 56) = v14;
}

uint64_t outlined init with copy of UIFontTextStyle(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIFontTextStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionListSpec(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for DOCItemCollectionListSpec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors and conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors and conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors and conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors and conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors);
  }

  return result;
}

id DOCVisualEffectView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCVisualEffectView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect_];

  return v3;
}

id DOCVisualEffectView.init(effect:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCVisualEffectView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithEffect_, a1);

  return v3;
}

id DOCVisualEffectView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCVisualEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static UIColor.doc_colorForStandardPlatter.getter()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];

  return v0;
}

uint64_t UIBackgroundConfiguration.doc_configureWithStandardPlatter(cornerRadius:)(double a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  result = UIBackgroundConfiguration.backgroundColor.setter();
  if (a1 > 0.0)
  {

    return UIBackgroundConfiguration.cornerRadius.setter();
  }

  return result;
}

void UIView.doc_configureWithStandardPlatter(cornerRadius:)(double a1)
{
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor_];

  if (a1 > 0.0)
  {

    [v1 _setCornerRadius_];
  }
}

Swift::Void __swiftcall UIView.doc_configureWithNoPlatter()()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];
}

void static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v41 = a1;
  v42 = a5;
  v40 = a4;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();
  v23 = MEMORY[0x24C1FAD20](a2, a3);
  aBlock[0] = 0;
  v24 = [v22 _validateFileName_error_];

  v25 = aBlock[0];
  if (v24)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    (*(v18 + 104))(v21, *MEMORY[0x277D851B8], v17);
    v26 = v25;
    v27 = static OS_dispatch_queue.global(qos:)();
    (*(v18 + 8))(v21, v17);
    v28 = swift_allocObject();
    v30 = v41;
    v29 = v42;
    v31 = v47;
    v32 = v48;
    v28[2] = v41;
    v28[3] = v31;
    v28[4] = v32;
    v28[5] = a2;
    v33 = v40;
    v28[6] = a3;
    v28[7] = v33;
    v28[8] = v29;
    aBlock[4] = partial apply for closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_28;
    v34 = _Block_copy(aBlock);
    v35 = v30;

    static DispatchQoS.unspecified.getter();
    v49 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v16, v12, v34);
    _Block_release(v34);

    (*(v45 + 8))(v12, v36);
    (*(v43 + 8))(v16, v44);
  }

  else
  {
    v37 = aBlock[0];
    v38 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v39 = v38;
    v47(0, v38);
  }
}

void closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a4;
  v51 = a7;
  v49 = a6;
  v52 = a2;
  v53 = a3;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v49 - v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
  v18 = [a1 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v10 + 56))(v17, 0, 1, v9);
  v19 = static FINode.docNode(from:)(v17);
  outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v19)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = objc_opt_self();
    v22 = v19;

    v23 = [v21 shared];
    v24 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
    v25 = v50;
    v26 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v22, v50, a5, 1, 0, v23, v24);

    v27 = swift_allocObject();
    v28 = v52;
    v29 = v53;
    v27[2] = v20;
    v27[3] = v28;
    v27[4] = v29;
    v30 = MEMORY[0x277D85000];
    v31 = *((*MEMORY[0x277D85000] & *v26) + 0x190);

    v31(partial apply for closure #1 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:), v27);
    v32 = swift_allocObject();
    v33 = v49;
    v32[2] = v20;
    v32[3] = v33;
    v32[4] = v51;
    v32[5] = v25;
    v32[6] = a5;
    v32[7] = v22;
    v34 = *((*v30 & *v26) + 0x178);
    v35 = v22;

    v36 = v34(partial apply for closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:), v32);
    (*((*v30 & *v26) + 0x1B8))(v36);
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.Rename);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 136315138;
      v43 = [v38 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v10 + 8))(v13, v9);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v54);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_2493AC000, v39, v40, "[Rename] failed to fetch a node for URL: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C1FE850](v42, -1, -1);
      MEMORY[0x24C1FE850](v41, -1, -1);
    }

    v48 = v52;
    v26 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    v48(0, v26);
  }
}

void closure #1 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = v9;
    a4(0, v9);
  }

  else if (a2)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:);
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_78;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [a2 fetchURL_];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    a4(0, v13);
  }
}

void closure #1 in closure #1 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(uint64_t a1, void *a2, void (*a3)(void *, id))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v24[-v17];
  outlined init with copy of URL?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v18, v9, v10);
    if (!a2)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper, 0x277CC6438);
      (*(v11 + 16))(v14, v18, v10);
      v22 = @nonobjc FPSandboxingURLWrapper.__allocating_init(url:readonly:)(v14, 0);
      v23 = v22;
      a3(v22, 0);

      (*(v11 + 8))(v18, v10);
      return;
    }

    (*(v11 + 8))(v18, v10);
    goto LABEL_6;
  }

  outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (a2)
  {
LABEL_6:
    v19 = a2;
    goto LABEL_7;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
LABEL_7:
  v20 = a2;
  v21 = v19;
  a3(0, v19);
}

id closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(int a1, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
    v57 = a7;
    v13 = [a2 error];
  }

  else
  {
    v13 = a3;
    if (!a3)
    {
      v15 = 0;
      goto LABEL_30;
    }

    v57 = a7;
    v14 = a3;
  }

  v15 = _convertErrorToNSError(_:)();

  v16 = v15;
  v17 = [v16 domain];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if ([v16 code] == -1001)
  {
LABEL_18:

LABEL_19:
    v58[0] = 0xD000000000000032;
    v58[1] = 0x8000000249BD45F0;
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = a5;
    v58[5] = a6;
    v59 = 1;
    v30 = one-time initialization token for shared;

    if (v30 != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(v58, static DOCAnalyticsManager.shared);
    outlined destroy of DOCAnalyticsAPIAbuseEvent(v58);
    v31 = swift_allocObject();
    v31[2] = v57;
    v31[3] = a8;
    v31[4] = a9;

    v32 = a9;
    DOCRunInMainThreadSync(_:)();

    v33 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    swift_beginAccess();
    v34 = *(a4 + 16);
    *(a4 + 16) = v33;

    v35 = objc_allocWithZone(MEMORY[0x277D04718]);
    v36 = v33;
    v37 = _convertErrorToNSError(_:)();

    v38 = [v35 initWithResolution:5 error:v37];
    goto LABEL_38;
  }

LABEL_13:
  v24 = [v16 domain];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    goto LABEL_17;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_17:
    if ([v16 code] == 516)
    {
      goto LABEL_18;
    }
  }

  v39 = [v16 domain];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  v45 = [v16 code];

  if (v45 == -48)
  {
    goto LABEL_19;
  }

LABEL_30:
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.Rename);
  v47 = v15;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = v15;
    v52 = v47;
    _os_log_impl(&dword_2493AC000, v48, v49, "[Rename] Rename API failed with error: %@", v50, 0xCu);
    outlined destroy of CharacterSet?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v51, -1, -1);
    MEMORY[0x24C1FE850](v50, -1, -1);
  }

  swift_beginAccess();
  v53 = *(a4 + 16);
  *(a4 + 16) = v15;
  v16 = v47;

  if (v15)
  {
    v54 = v16;
    v37 = _convertErrorToNSError(_:)();
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D04718]) initWithResolution:5 error:v37];
LABEL_38:
  v55 = v38;

  return v55;
}

void closure #1 in closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = _DocumentManagerBundle();
  if (v6)
  {
    v7 = v6;
    v25._object = 0x8000000249BD46F0;
    v8._object = 0x8000000249BD46B0;
    v8._countAndFlagsBits = 0x100000000000003ALL;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0xD000000000000050;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249B9A480;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;

    v12 = String.init(format:_:)();
    v14 = v13;

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = static DOCSystemAlert.shared;

    v16 = _DocumentManagerBundle();
    if (v16)
    {
      v17 = v16;
      v26._object = 0xE200000000000000;
      v18._countAndFlagsBits = 19279;
      v18._object = 0xE200000000000000;
      v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v19.value._object = 0xEB00000000656C62;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v26._countAndFlagsBits = 19279;
      v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v26);

      v22 = swift_allocObject();
      *(v22 + 16) = a3;
      v23 = *(*v15 + 144);
      v24 = a3;
      v23(v12, v14, 0, 0xE000000000000000, v21._countAndFlagsBits, v21._object, 0, 0, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:), v22);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in closure #1 in closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.Rename);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&dword_2493AC000, oslog, v5, "Rename: cancelled due to name conflict: %@", v6, 0xCu);
    outlined destroy of CharacterSet?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }
}

double @objc static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(int a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  _Block_copy(v7);
  v14 = a3;
  specialized static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(v14, v8, v10, v11, v13, v7);
  _Block_release(v7);
  _Block_release(v7);

  return result;
}

double static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, id), uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[8] = a8;
  v17[9] = a9;
  v21 = 0;
  v18 = a1;

  specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(&v21, a4, a5, a6, a7, partial apply for closure #1 in static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:), v17, a8);

  return result;
}

void closure #1 in static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void), uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v42 = a2;
  v43 = a6;
  v41 = a5;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_opt_self();
  v24 = MEMORY[0x24C1FAD20](a3, a4);
  aBlock[0] = 0;
  v25 = [v23 _validateFileName_error_];

  v26 = aBlock[0];
  if (v25)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    (*(v19 + 104))(v22, *MEMORY[0x277D851B8], v18);
    v27 = v26;
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v19 + 8))(v22, v18);
    v29 = swift_allocObject();
    v31 = v42;
    v30 = v43;
    v32 = v48;
    v33 = v49;
    v29[2] = v42;
    v29[3] = v32;
    v29[4] = v33;
    v29[5] = a3;
    v34 = v41;
    v29[6] = a4;
    v29[7] = v34;
    v29[8] = v30;
    aBlock[4] = closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_57_0;
    v35 = _Block_copy(aBlock);
    v36 = v31;

    static DispatchQoS.unspecified.getter();
    v50 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v37 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v17, v13, v35);
    _Block_release(v35);

    (*(v46 + 8))(v13, v37);
    (*(v44 + 8))(v17, v45);
  }

  else
  {
    v38 = aBlock[0];
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v39;
    v48(0, v39);
  }
}

double @objc static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (a6)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v20 = swift_allocObject();
  v20[2] = ObjCClassMetadata;
  v20[3] = a3;
  v20[4] = v10;
  v20[5] = v12;
  v20[6] = v13;
  v20[7] = v15;
  v20[8] = thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ()partial apply;
  v20[9] = v18;
  v23 = 0;
  v21 = a3;

  specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(&v23, v13, v15, v16, a6, closure #1 in static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:)partial apply, v20, thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ()partial apply);

  return result;
}

void static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, id), uint64_t a7, __n128 a8)
{
  v14 = 2;
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = a1;
  specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(&v14, a2, a3, a4, a5, partial apply for blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:), v8, a6);
}

void blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v11 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = MEMORY[0x24C1FAD20](a1, a2);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v13;
  v15[7] = a5;
  aBlock[4] = partial apply for closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32;
  v16 = _Block_copy(aBlock);

  v17 = a5;

  [v12 defaultSourceForBundleIdentifier:v14 completionBlock:v16];

  _Block_release(v16);
}

void closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void, void), uint64_t a6, void *a7, void *a8)
{
  if (a1)
  {
    v12 = a1;
    v13 = [v12 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v20 = [v12 identifier];
LABEL_15:
        v35 = v20;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
        v36 = v35;
        v37 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v36, 3);

        v38 = objc_opt_self();
        v39 = v37;
        v40 = [v38 defaultManager];
        v41 = swift_allocObject();
        v41[2] = a7;
        v41[3] = v39;
        v41[4] = a5;
        v41[5] = a6;
        v41[6] = a8;
        aBlock[4] = partial apply for closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:);
        aBlock[5] = v41;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_38_0;
        v42 = _Block_copy(aBlock);
        v43 = v39;

        v44 = a8;
        v45 = a7;

        [v40 fetchDefaultLocationForApplicationRecord:v45 defaultProviderDomain:v43 completionHandler:v42];

        _Block_release(v42);
        return;
      }
    }

    v20 = *MEMORY[0x277D060F0];
    goto LABEL_15;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.UI);

  v25 = a2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = a5;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, aBlock);
    *(v29 + 12) = 2112;
    if (a2)
    {
      v32 = a2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v33;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    *(v29 + 14) = v33;
    *v30 = v34;
    _os_log_impl(&dword_2493AC000, v26, v27, "Failed to get default source to import document for bundle identifier %s: %@", v29, 0x16u);
    outlined destroy of CharacterSet?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C1FE850](v31, -1, -1);
    MEMORY[0x24C1FE850](v29, -1, -1);

    a5 = v28;
  }

  else
  {
  }

  a5(0, a2);
}

void closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(void *a1, void *a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6, void *a7)
{
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
    v19 = *(v15 + 80);
    v51 = a5;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249B9A480;
    v22 = a1;
    v23 = [a7 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 32))(v21 + v20, v18, v14);
    v24 = objc_allocWithZone(MEMORY[0x277CC6398]);
    v25 = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v24 initWithURLs:isa destinationFolder:v25];

    v28 = v27;
    [v28 setShouldBounceOnCollision_];
    [v28 setLastUsageUpdatePolicy_];

    v29 = swift_allocObject();
    v30 = v51;
    v29[2] = a7;
    v29[3] = v30;
    v29[4] = a6;
    v29[5] = v28;
    v29[6] = v25;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_44_1;
    v31 = _Block_copy(aBlock);
    v32 = v28;
    v33 = v25;
    v34 = v32;
    v35 = a7;

    [v34 setActionCompletionBlock_];
    _Block_release(v31);

    v36 = [objc_opt_self() defaultManager];
    [v36 scheduleAction_];
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.UI);
    v38 = a3;
    v39 = a4;
    v40 = a2;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412802;
      *(v43 + 4) = v38;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v39;
      *v44 = v38;
      v44[1] = v39;
      *(v43 + 22) = 2112;
      v45 = v38;
      v46 = v39;
      if (a2)
      {
        v47 = a2;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        v49 = v48;
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      *(v43 + 24) = v48;
      v44[2] = v49;
      _os_log_impl(&dword_2493AC000, v41, v42, "Failed to get FPItem representing default location for %@ in %@: %@", v43, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v43, -1, -1);
    }

    a5(0, a2);
  }
}

void closure #1 in closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(void *a1, void *a2, void (*a3)(void, void), uint64_t a4, void *a5, void *a6)
{
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v62 = v13;
    v18 = a1;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a1;
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v61 = a3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60[1] = a4;
      v28 = v27;
      *&aBlock = v27;
      *v25 = 136315394;
      v29 = [v21 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v62 + 8))(v17, v12);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &aBlock);

      *(v25 + 4) = v33;
      *(v25 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v35;
      *v26 = v35;
      _os_log_impl(&dword_2493AC000, v22, v23, "Failed to import document at %s: %@", v25, 0x16u);
      outlined destroy of CharacterSet?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1FE850](v28, -1, -1);
      v36 = v25;
      a3 = v61;
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    v37 = a1;
    a3(0, a1);
  }

  else
  {
    v38 = [a5 transferResults];
    if (v38)
    {
      v39 = v38;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      [a5 setActionCompletionBlock_];
      if (v40)
      {
        specialized Collection.first.getter(v40, &v63);

        if (*(&v64 + 1))
        {
          aBlock = v63;
          v68 = v64;
          v41 = v66;
          v69 = v65;
          v70 = v66;
          outlined destroy of AnyHashable(&aBlock);
          v42 = [objc_opt_self() defaultManager];
          v43 = swift_allocObject();
          v43[2] = a6;
          v43[3] = a3;
          v43[4] = a4;
          v69 = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:);
          v70 = v43;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v68 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
          *(&v68 + 1) = &block_descriptor_50_0;
          v44 = _Block_copy(&aBlock);
          v45 = a6;

          [v42 fetchURLForItem:v41 completionHandler:v44];
          _Block_release(v44);

          return;
        }

        outlined destroy of CharacterSet?(&v63, &_ss11AnyHashableV3key_So6FPItemC5valuetSgMd, &_ss11AnyHashableV3key_So6FPItemC5valuetSgMR);
      }
    }

    else
    {
      [a5 setActionCompletionBlock_];
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.UI);
    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = a3;
      v52 = v51;
      *&aBlock = v51;
      *v50 = 136315138;
      v53 = [v47 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v13 + 8))(v17, v12);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &aBlock);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_2493AC000, v48, v49, "Failed to get a transfer result for importing %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v58 = v52;
      a3 = v61;
      MEMORY[0x24C1FE850](v58, -1, -1);
      MEMORY[0x24C1FE850](v50, -1, -1);
    }

    v59 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    a3(0, v59);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void *, void *), uint64_t a5)
{
  v38[5] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v38 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v38 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v38 - v22;
  outlined init with copy of URL?(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.UI);
    v25 = a3;
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412546;
      *(v29 + 4) = v25;
      *v30 = v25;
      *(v29 + 12) = 2112;
      v31 = v25;
      if (a2)
      {
        v32 = a2;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v33;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v29 + 14) = v33;
      v30[1] = v34;
      _os_log_impl(&dword_2493AC000, v27, v28, "Failed to get URL for FPItem %@: %@", v29, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    return a4(0, a2);
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper, 0x277CC6438);
    (*(v14 + 16))(v19, v23, v13);
    v35 = @nonobjc FPSandboxingURLWrapper.__allocating_init(url:readonly:)(v19, 0);
    v36 = v35;
    a4(v35, 0);

    return (*(v14 + 8))(v23, v13);
  }
}

double @objc static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(int a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a5)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v20 = 2;
  MEMORY[0x28223BE20](v14, v15);
  v19[2] = v9;
  v19[3] = v11;
  v19[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ();
  v19[5] = v16;
  v19[6] = a3;
  v17 = a3;
  specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(&v20, v9, v11, v12, a5, blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)partial apply, v19, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ());

  return result;
}

double specialized static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v47 = a5;
  v44 = a4;
  v45 = a1;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v43 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  v21 = objc_opt_self();
  _Block_copy(a6);
  v22 = a2;
  v23 = a2;
  v24 = a3;
  v25 = MEMORY[0x24C1FAD20](v23, a3);
  aBlock[0] = 0;
  v26 = [v21 _validateFileName_error_];

  v27 = aBlock[0];
  if (v26)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    (*(v16 + 104))(v19, *MEMORY[0x277D851B8], v15);
    v28 = v27;
    v29 = static OS_dispatch_queue.global(qos:)();
    (*(v16 + 8))(v19, v15);
    v30 = swift_allocObject();
    v31 = v44;
    v32 = v45;
    v30[2] = v45;
    v30[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ()partial apply;
    v30[4] = v20;
    v30[5] = v22;
    v30[6] = v24;
    v30[7] = v31;
    v30[8] = v47;
    aBlock[4] = closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)partial apply;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_26;
    v33 = _Block_copy(aBlock);
    v34 = v32;

    v35 = v43;
    static DispatchQoS.unspecified.getter();
    v52 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v46;
    v37 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v35, v36, v33);
    _Block_release(v33);

    (*(v50 + 8))(v36, v37);
    (*(v48 + 8))(v35, v49);
  }

  else
  {
    v38 = aBlock[0];
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v39;
    v41 = _convertErrorToNSError(_:)();
    (a6)[2](a6, 0, v41);
  }

  return result;
}

void specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, id))
{
  v14 = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  LOBYTE(v39[0]) = 0;
  v15 = *(*static DOCAPIRateLimiter.shared + 88);

  v16 = v15(v39, a2, a3, a4, a5, a6, a7);

  if (v16)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000071, 0x8000000249BD4630, v39);
      *(v20 + 12) = 2080;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v39);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_2493AC000, v18, v19, "%s %s function ran without rate-limiting.", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000071, 0x8000000249BD4630, v39);
      *(v28 + 12) = 2080;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v39);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2493AC000, v26, v27, "%s %s function is rate-limited. Returning error.", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    v33 = 0xD000000000000032;
    v34 = "ics.createDocumentSPIEvent";
    if (v14 == 1)
    {
      v35 = "ics.importDocumentSPIEvent";
    }

    else
    {
      v35 = "v56@0:8@16@24@32@40@?48";
    }

    if (v14)
    {
      v33 = 0xD00000000000003ALL;
      v34 = v35;
    }

    v39[0] = v33;
    v39[1] = v34 | 0x8000000000000000;
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = a2;
    v39[5] = a3;
    v40 = 0;
    v36 = one-time initialization token for shared;

    if (v36 != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(v39, static DOCAnalyticsManager.shared);

    v37 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    a8(0, v37);
  }
}

uint64_t objectdestroy_2Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2;
    while (1)
    {
      v7 = *(v4 + v3);
      if ((DOCItemSortMode.isDateMode.getter() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v7 > 4)
      {
        if (v7 <= 6)
        {
          if (v7 == 5)
          {
            v9 = 1684957547;
          }

          else
          {
            v9 = 0x7942646572616873;
          }

          if (v7 == 5)
          {
            v8 = 0xE400000000000000;
          }

          else
          {
            v8 = 0xE800000000000000;
          }

          if (v5 <= 4)
          {
LABEL_34:
            if (v5 <= 1)
            {
              v11 = 0x646573557473616CLL;
              v10 = 0xEC00000065746144;
              if (v5)
              {
                goto LABEL_58;
              }

              v10 = 0x8000000249BC5DF0;
              if (v9 != 0xD000000000000010)
              {
                goto LABEL_3;
              }
            }

            else
            {
              v10 = 0xE400000000000000;
              if (v5 == 2)
              {
                if (v9 != 1701667182)
                {
                  goto LABEL_3;
                }
              }

              else if (v5 == 3)
              {
                if (v9 != 1936154996)
                {
                  goto LABEL_3;
                }
              }

              else if (v9 != 1702521203)
              {
                goto LABEL_3;
              }
            }

            goto LABEL_59;
          }
        }

        else if (v7 == 7)
        {
          v9 = 0x6E6F697461657263;
          v8 = 0xEC00000065746144;
          if (v5 <= 4)
          {
            goto LABEL_34;
          }
        }

        else if (v7 == 8)
        {
          v9 = 0x6564644165746164;
          v8 = 0xE900000000000064;
          if (v5 <= 4)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v9 = 0x745364756F6C6369;
          v8 = 0xEC00000073757461;
          if (v5 <= 4)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        if (v7 <= 1)
        {
          v9 = 0x646573557473616CLL;
          v8 = 0xEC00000065746144;
          if (!v7)
          {
            v9 = 0xD000000000000010;
            v8 = 0x8000000249BC5DF0;
            if (v5 <= 4)
            {
              goto LABEL_34;
            }

            goto LABEL_45;
          }
        }

        else
        {
          v8 = 0xE400000000000000;
          if (v7 == 2)
          {
            v9 = 1701667182;
            if (v5 <= 4)
            {
              goto LABEL_34;
            }

            goto LABEL_45;
          }

          if (v7 == 3)
          {
            v9 = 1936154996;
            if (v5 <= 4)
            {
              goto LABEL_34;
            }

            goto LABEL_45;
          }

          v9 = 1702521203;
        }

        if (v5 <= 4)
        {
          goto LABEL_34;
        }
      }

LABEL_45:
      if (v5 <= 6)
      {
        if (v5 == 5)
        {
          v10 = 0xE400000000000000;
          if (v9 != 1684957547)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v10 = 0xE800000000000000;
          if (v9 != 0x7942646572616873)
          {
LABEL_3:
            v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v6 & 1) == 0)
            {
              return v3;
            }

            goto LABEL_4;
          }
        }

        goto LABEL_59;
      }

      if (v5 == 7)
      {
        v10 = 0xEC00000065746144;
        if (v9 != 0x6E6F697461657263)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v5 != 8)
        {
          v11 = 0x745364756F6C6369;
          v10 = 0xEC00000073757461;
LABEL_58:
          if (v9 != v11)
          {
            goto LABEL_3;
          }

          goto LABEL_59;
        }

        v10 = 0xE900000000000064;
        if (v9 != 0x6564644165746164)
        {
          goto LABEL_3;
        }
      }

LABEL_59:
      if (v8 != v10)
      {
        goto LABEL_3;
      }

LABEL_4:
      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return 0;
}