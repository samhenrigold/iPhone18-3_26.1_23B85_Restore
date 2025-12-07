void key path getter for Header.HeaderView.effectiveSafeAreaInsets : Header.HeaderView(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double Header.HeaderView.effectiveSafeAreaInsets.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_effectiveSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

void Header.HeaderView.effectiveSafeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_effectiveSafeAreaInsets);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

uint64_t key path getter for Header.HeaderView.posterSaliencyRect : Header.HeaderView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned CGRect);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Header.HeaderView.posterSaliencyRect : Header.HeaderView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out CGRect);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);
  sub_19011E3EC(v3, v4);
  return v7(v6, v5);
}

uint64_t Header.HeaderView.posterSaliencyRect.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_posterSaliencyRect);
  swift_beginAccess();
  v2 = *v1;
  sub_19011E3EC(*v1, v1[1]);
  return v2;
}

double Header.HeaderView.posterSaliencyRect.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_posterSaliencyRect);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@unowned CGRect))?(v6, v7);
}

double outlined consume of (@escaping @callee_guaranteed () -> (@unowned CGRect))?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double Header.HeaderView.headerInterpolationProgress.getter()
{
  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_headerInterpolationProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Header.HeaderView.headerInterpolationProgress.setter(double a1)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_headerInterpolationProgress;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*(**(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel) + 192))(v4, a1);
}

uint64_t (*Header.HeaderView.headerInterpolationProgress.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_headerInterpolationProgress;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return Header.HeaderView.headerInterpolationProgress.modify;
}

void Header.HeaderView.headerInterpolationProgress.modify(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*(**(v3[3] + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel) + 192))(v4, *(v3[3] + v3[4]));
  }

  free(v3);
}

uint64_t key path getter for Header.HeaderView.hasScrolledPastTopEdge : Header.HeaderView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result & 1;
  return result;
}

Swift::Void __swiftcall Header.HeaderView.setShowsBlurredBackground(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible;
  if (*(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible) != _)
  {
    v4 = v2;
    v7 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction);
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))();
    v11 = v10;
    if (v7)
    {
      if (v9)
      {
        ObjectType = swift_getObjectType();
        (*(v11 + 8))(v2, !_, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (v9)
      {
        v13 = swift_getObjectType();
        (*(v11 + 8))(v2, 1, v13, v11);
        swift_unknownObjectRelease();
      }

      v14 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView);
      if (v14)
      {
        v15 = *((*v8 & *v14) + 0x90);
        v16 = v14;
        v15(_, animated);
      }
    }

    *(v4 + v3) = _;
  }
}

uint64_t Header.HeaderView.hasScrolledPastTopEdge.getter()
{
  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge;
  swift_beginAccess();
  return *(v0 + v1);
}

void Header.HeaderView.hasScrolledPastTopEdge.setter(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge;
  v5 = swift_beginAccess();
  v6 = *(v2 + v4);
  v7 = a1 & 1;
  *(v2 + v4) = a1;
  if (v6 != v7)
  {
    v8 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible;
    if (*(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible) != v7)
    {
      v9 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction);
      v10 = MEMORY[0x1E69E7D40];
      v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))(v5);
      v13 = v12;
      if (v9)
      {
        if (v11)
        {
          ObjectType = swift_getObjectType();
          (*(v13 + 8))(v2, (a1 & 1) == 0, ObjectType, v13);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v11)
        {
          v15 = swift_getObjectType();
          (*(v13 + 8))(v2, 1, v15, v13);
          swift_unknownObjectRelease();
        }

        v16 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView);
        if (v16)
        {
          v17 = *((*v10 & *v16) + 0x90);
          v18 = v16;
          v17(a1 & 1, 1);
        }
      }

      *(v2 + v8) = v7;
    }
  }
}

void (*Header.HeaderView.hasScrolledPastTopEdge.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return Header.HeaderView.hasScrolledPastTopEdge.modify;
}

void Header.HeaderView.hasScrolledPastTopEdge.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = v1[3];
    v7 = v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible;
    if (v4 != *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible))
    {
      v8 = *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction);
      v9 = MEMORY[0x1E69E7D40];
      v10 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE8))();
      v12 = v11;
      if (v8)
      {
        if (v10)
        {
          v13 = v1[3];
          ObjectType = swift_getObjectType();
          (*(v12 + 8))(v13, v4 ^ 1, ObjectType, v12);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v10)
        {
          v15 = v1[3];
          v16 = swift_getObjectType();
          (*(v12 + 8))(v15, 1, v16, v12);
          swift_unknownObjectRelease();
        }

        v17 = *(v1[3] + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView);
        if (v17)
        {
          v18 = *((*v9 & *v17) + 0x90);
          v19 = v17;
          v18(v4, 1);
        }
      }

      *v7 = v4;
    }
  }

  free(v1);
}

uint64_t key path getter for Header.HeaderView.overrideTraitCollection : Header.HeaderView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x230))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Header.HeaderView.overrideTraitCollection : Header.HeaderView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x238);
  v4 = *a1;
  return v3(v2);
}

void *Header.HeaderView.overrideTraitCollection.getter()
{
  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_overrideTraitCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void Header.HeaderView.overrideTraitCollection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_overrideTraitCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *Header.HeaderView.__allocating_init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = specialized Header.HeaderView.init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(a1, a2, a3, a4, a5);

  return v12;
}

char *Header.HeaderView.init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5 = specialized Header.HeaderView.init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(a1, a2, a3, a4, a5);

  return v5;
}

id Header.HeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id Header.HeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Header.HeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Header.HeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall Header.HeaderView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for HeaderSizeInterpolator(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Header.HeaderView(0);
  v74.receiver = v0;
  v74.super_class = v5;
  objc_msgSendSuper2(&v74, sel_layoutSubviews);
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v10 = *(**(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel) + 16) + 584);

  v10(v83, v11);

  v12 = MEMORY[0x1E69E7D40];
  if (v83[0])
  {
    specialized Header.HeaderView.sizeForContactIdentityView(proposedSize:sizingStrategy:)();
    v14 = v13;
    v15 = (*((*v12 & *v0) + 0x1C8))();
    MaxY = 0.0;
    if (v15)
    {
      v18 = v16;
      v19 = v15;
      v20 = v15();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      outlined consume of (@escaping @callee_guaranteed () -> (@unowned CGRect))?(v19, v18);
      v85.origin.x = v20;
      v85.origin.y = v22;
      v85.size.width = v24;
      v85.size.height = v26;
      MaxY = CGRectGetMaxY(v85);
    }

    v27 = (*((*v12 & *v1) + 0x1E0))();
    v28 = static Geometry.lerp(t:min:max:)(v27, 0.0, MaxY) - v14;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }
  }

  else
  {
    v29 = 0.0;
  }

  v30 = *((*v12 & *v1) + 0x210);
  v30();
  v31 = *(v4 + 6);
  v83[0] = *(v4 + 5);
  v83[1] = v31;
  v84 = *(v4 + 14);
  v32 = outlined destroy of DetailsStyleGuide(v4, type metadata accessor for HeaderSizeInterpolator);
  v33 = *((*v12 & *v1) + 0x1E0);
  v34 = v33(v32);
  v35 = InterpolationValue.evaluate(at:)(v34);
  v36 = (*((*v12 & *v1) + 0x178))();
  MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(partial apply for implicit closure #1 in Header.HeaderView.topHeaderPadding.getter, v39, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), v81, 0, partial apply for implicit closure #5 in Header.HeaderView.topHeaderPadding.getter, &v73, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v40 = v35 + v29 + *v81;
  v41 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView);
  if (v41)
  {
    [v41 setFrame_];
  }

  specialized Header.HeaderView.sizeForContactIdentityView(proposedSize:sizingStrategy:)();
  v43 = v42;
  v44 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarView);
  [v44 setFrame_];
  v46 = v7 * 0.5;
  [v44 center];
  v47 = [v44 setCenter_];
  v48 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarViewModel);
  (v30)(v47);
  v49 = *(v4 + 11);
  v81[0] = *(v4 + 10);
  v81[1] = v49;
  v82 = *(v4 + 24);
  v50 = outlined destroy of DetailsStyleGuide(v4, type metadata accessor for HeaderSizeInterpolator);
  v51 = v33(v50);
  v52 = InterpolationValue.evaluate(at:)(v51);
  v53 = (*(*v48 + 192))(v52);
  (v30)(v53);
  v54 = *(v4 + 136);
  v78 = *(v4 + 120);
  v79 = v54;
  v80 = *(v4 + 19);
  v55 = outlined destroy of DetailsStyleGuide(v4, type metadata accessor for HeaderSizeInterpolator);
  v56 = v33(v55);
  v57 = InterpolationValue.evaluate(at:)(v56);
  (*(*v48 + 240))(v57);
  v58 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_swiftUIHeaderContentView);
  v59 = [v58 sizeThatFits_];
  v61 = v60;
  v63 = v62;
  (v30)(v59);
  v64 = *(v4 + 296);
  v75 = *(v4 + 280);
  v76 = v64;
  v77 = *(v4 + 39);
  v65 = outlined destroy of DetailsStyleGuide(v4, type metadata accessor for HeaderSizeInterpolator);
  v66 = v33(v65);
  v67 = v63 * 0.5 + v40 + v43 + InterpolationValue.evaluate(at:)(v66);
  [v58 setBounds_];
  [v58 setCenter_];
  v68 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
  if (v68)
  {
    v69 = v68;
    [v69 sizeThatFits_];
    v71 = v70;
    [v69 setBounds_];
    [v69 setCenter_];
  }
}

Swift::Int Header.HeaderView.SizingStrategy.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Header.HeaderView.SizingStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Header.HeaderView.SizingStrategy(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

CGSize __swiftcall Header.HeaderView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = Header.HeaderView.expandedSizeThatFits(_:)(a1.width, a1.height);
  v6 = v5;
  v7.n128_f64[0] = Header.HeaderView.collapsedStateSizeThatFits(_:)(width, height);
  v9 = v8;
  v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0))(v7);
  v11 = static Geometry.lerp(t:min:max:)(v10, v9, v6);
  v12 = v4;
  result.height = v11;
  result.width = v12;
  return result;
}

void Header.HeaderView.rawSizeThatFits(_:strategy:)(char a1, double a2, double a3)
{
  if (a1)
  {
    if (a1 == 1)
    {
      Header.HeaderView.collapsedStateSizeThatFits(_:)(a2, a3);
    }

    else
    {
      Header.HeaderView.expandedSizeThatFits(_:)(a2, a3);
      v7 = v6;
      v8.n128_f64[0] = Header.HeaderView.collapsedStateSizeThatFits(_:)(a2, a3);
      v10 = v9;
      v11 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1E0))(v8);
      static Geometry.lerp(t:min:max:)(v11, v10, v7);
    }
  }

  else
  {
    Header.HeaderView.expandedSizeThatFits(_:)(a2, a3);
  }
}

double Header.HeaderView.expandedSizeThatFits(_:)(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for HeaderSizeInterpolator(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide);
  v12 = _s20CommunicationDetails22HeaderSizeInterpolatorVWOcTm_0(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide, v10, type metadata accessor for Header.StyleGuide);
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v12);
  v15 = *v11;
  v47 = v14;
  v48 = v15;
  v45 = v15;
  v44 = v15;
  v16 = cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in Header.HeaderView.topHeaderPadding.getterpartial apply, v46, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), v49, 0, implicit closure #5 in Header.HeaderView.topHeaderPadding.getterpartial apply, v43, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v17 = *((*v13 & *v2) + 0x210);
  v17(v16);
  outlined destroy of DetailsStyleGuide(v8, type metadata accessor for HeaderSizeInterpolator);
  v18 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel);
  v19 = *(**(v18 + 16) + 584);

  v19(v49, v20);

  if (v49[0] == 1)
  {
    v21 = *(**(v18 + 16) + 584);

    v21(v49, v22);

    v24 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C8))(v23);
    if (v24)
    {
      v26 = v25;
      v27 = v24;
      v28 = v24();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      outlined consume of (@escaping @callee_guaranteed () -> (@unowned CGRect))?(v27, v26);
      v50.origin.x = v28;
      v50.origin.y = v30;
      v50.size.width = v32;
      v50.size.height = v34;
      CGRectGetMaxY(v50);
    }
  }

  v35 = *(**(v18 + 16) + 584);

  v35(v49, v36);

  v17(v37);
  outlined destroy of DetailsStyleGuide(v8, type metadata accessor for HeaderSizeInterpolator);
  [*(v3 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_swiftUIHeaderContentView) sizeThatFits_];
  v38 = *(v3 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
  if (v38)
  {
    v39 = v38;
    if ([v39 isHidden])
    {
    }

    else
    {
      [v39 sizeThatFits_];
    }
  }

  outlined destroy of DetailsStyleGuide(v10, type metadata accessor for Header.StyleGuide);
  return a1;
}

double Header.HeaderView.collapsedStateSizeThatFits(_:)(double a1, double a2)
{
  v5 = type metadata accessor for HeaderSizeInterpolator(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v6);
  v11 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide);
  v25 = v10;
  v26 = v11;
  v23 = v11;
  v22 = v11;
  v12 = cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in Header.HeaderView.topHeaderPadding.getterpartial apply, v24, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v27, 0, implicit closure #5 in Header.HeaderView.topHeaderPadding.getterpartial apply, v21, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v13 = *((*v9 & *v2) + 0x210);
  v13(v12);
  outlined destroy of DetailsStyleGuide(v8, type metadata accessor for HeaderSizeInterpolator);
  v14 = *(**(*(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel) + 16) + 584);

  v14(&v27, v15);

  v13(v16);
  v17 = outlined destroy of DetailsStyleGuide(v8, type metadata accessor for HeaderSizeInterpolator);
  v13(v17);
  outlined destroy of DetailsStyleGuide(v8, type metadata accessor for HeaderSizeInterpolator);
  [*(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_swiftUIHeaderContentView) sizeThatFits_];
  v18 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
  if (v18)
  {
    v19 = v18;
    if (([v19 isHidden] & 1) == 0)
    {
      [v19 sizeThatFits_];
    }
  }

  return a1;
}

Swift::Void __swiftcall Header.HeaderView.configureAvatarView(with:)(Swift::OpaquePointer with)
{
  v2 = *(**(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarViewModel) + 144);

  v2(v3);
}

void Header.HeaderView.configureHeaderTabs(for:selectedTab:onTabChange:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  if (v5)
  {
    v6 = v4;
    v10 = a2[2];
    v45 = *a2;
    v46 = a2[3];
    v11 = a2[4];
    v12 = MEMORY[0x1E69E7D40];
    v13 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x148);

    v47 = v11;

    v15 = v13(v14);
    if (v15)
    {
      v16 = *(*v15 + 144);

      v16(v17);
    }

    v18 = *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
    if (v18)
    {
      if (*(a1 + 16) == 1)
      {
        [v18 setHidden_];
      }

      else
      {
        [v18 setHidden_];
      }

      outlined consume of DetailsTab?(v45, v5, v10, v46, v11);
    }

    else
    {
      type metadata accessor for HorizontalTabControl.ViewModel(0);
      *&v51 = v45;
      *(&v51 + 1) = v5;
      *&v52 = v10;
      *(&v52 + 1) = v46;
      *&v53 = v11;

      sub_19011E3EC(a3, a4);
      HorizontalTabControl.ViewModel.__allocating_init(tabs:selectedTab:onTabChange:)(a1, &v51, a3, a4);
      v19 = *((*v12 & *v6) + 0x150);

      v19(v20);
      v21 = v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide;
      v22 = &v21[*(type metadata accessor for DetailsStyleGuide(0) + 20)];
      v23 = v22[1];
      v67 = *v22;
      v68 = v23;
      v24 = v22[5];
      v71 = v22[4];
      v72 = v24;
      v25 = v22[3];
      v69 = v22[2];
      v70 = v25;
      v26 = v67;
      v27 = v68;
      v28 = BYTE8(v68);
      if (((*(&v72 + 1) | ((*(&v72 + 5) | (SBYTE7(v72) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        type metadata accessor for SegmentedTabControl();
        v51 = v26;
        *&v52 = v27;
        BYTE8(v52) = v28 & 1;

        v37 = SegmentedTabControl.__allocating_init(viewModel:styleGuide:)(v38, &v51);
      }

      else
      {
        v29 = v72;
        v51 = v67;
        v52 = v68;
        v53 = v69;
        v54 = v70;
        v55 = v71;
        LOBYTE(v56) = v72;
        BYTE7(v56) = (*(&v72 + 1) | ((*(&v72 + 5) | (SBYTE7(v72) << 16)) << 32)) >> 48;
        *(&v56 + 5) = *(&v72 + 5);
        *(&v56 + 1) = *(&v72 + 1);
        *(&v56 + 1) = *(&v72 + 1);
        outlined init with copy of DetailsStyleGuide.TabBarConfiguration(&v67, v49);

        outlined init with copy of DetailsStyleGuide.TabBarConfiguration(&v67, v49);
        DetailsTabBarViewRepresentable.init(viewModel:styleGuide:)(&v51, &v60);
        v30 = static Edge.Set.vertical.getter();
        v31 = 0uLL;
        v32 = v30;
        v33 = 0uLL;
        if ((v29 & 1) == 0)
        {
          EdgeInsets.init(_all:)();
          *(&v31 + 1) = v34;
          *(&v33 + 1) = v35;
        }

        v59 = v29 & 1;
        v55 = v64;
        v56 = v65;
        v57 = v66;
        v51 = v60;
        v52 = v61;
        v53 = v62;
        v54 = v63;
        v58[0] = v32;
        *&v58[8] = v31;
        *&v58[24] = v33;
        v58[40] = v29 & 1;
        v49[6] = v66;
        v49[7] = *v58;
        v50[0] = *&v58[16];
        *(v50 + 9) = *&v58[25];
        v49[2] = v62;
        v49[3] = v63;
        v49[4] = v64;
        v49[5] = v65;
        v49[0] = v60;
        v49[1] = v61;
        v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVy20CommunicationDetails0h6TabBarD13RepresentableVAA14_PaddingLayoutVGGMd, &_s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVy20CommunicationDetails0h6TabBarD13RepresentableVAA14_PaddingLayoutVGGMR));
        outlined init with copy of ModifiedContent<DetailsTabBarViewRepresentable, _PaddingLayout>(&v51, v48);
        v37 = _UIHostingView.init(rootView:)();
        outlined destroy of DetailsStyleGuide.TabBarConfiguration(&v67);
        outlined destroy of ModifiedContent<DetailsTabBarViewRepresentable, _PaddingLayout>(&v51);
      }

      v39 = objc_opt_self();
      v40 = v37;
      v41 = [v39 clearColor];
      [v40 setBackgroundColor_];

      [v6 addSubview_];
      v42 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView;
      v43 = *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
      *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView) = v40;

      v44 = *(v6 + v42);
      if (*(a1 + 16) == 1)
      {
        if (v44)
        {
          [v44 setHidden_];
        }
      }

      else if (v44)
      {
        [v44 setHidden_];
      }

      outlined consume of DetailsTab?(v45, v5, v10, v46, v47);
    }
  }
}

void Header.HeaderView.updateScrollPocketInteractions(basePocketInteraction:pocketContainerInteraction:)(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction);
  v6 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketContainerInteraction;
  v15 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketContainerInteraction);
  *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction) = a1;
  *(v2 + v6) = a2;
  if (v5)
  {
    v7 = a2;
    v8 = a1;
    v9 = [v2 removeInteraction_];
    v10 = &off_1E72E3000;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = a2;
  v9 = a1;
  v10 = &off_1E72E3000;
  if (a1)
  {
LABEL_3:
    v9 = [v2 v10[255]];
  }

LABEL_4:
  if (v15)
  {
    v9 = [v2 removeInteraction_];
  }

  if (a2)
  {
    v9 = [v2 v10[255]];
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))(v9))
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v2, 1, ObjectType, v12);
    swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for Header.HeaderView(uint64_t a1)
{
  result = type metadata singleton initialization cache for Header.HeaderView;
  if (!type metadata singleton initialization cache for Header.HeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *specialized Header.HeaderView.init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v84 = a5;
  v85 = a4;
  v88 = a3;
  v9 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Header.SwiftUIContainerView(0);
  MEMORY[0x1EEE9AC00](v83);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy20CommunicationDetails6HeaderV0a11UIContainerC0V_AH36QuickActionsContainerDelegateWrapperCQo_Md, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy20CommunicationDetails6HeaderV0a11UIContainerC0V_AH36QuickActionsContainerDelegateWrapperCQo_MR);
  v15 = *(v14 - 8);
  v86 = v14;
  v87 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - v18;
  v20 = &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_delegate];
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarViewModel;
  type metadata accessor for WrappedAvatarView.ViewModel(0);
  *&v5[v21] = WrappedAvatarView.ViewModel.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketContainerInteraction] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsViewModel] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView] = 0;
  v22 = &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_effectiveSafeAreaInsets];
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  *v22 = *MEMORY[0x1E69DDCE0];
  *(v22 + 1) = v23;
  v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible] = 0;
  v24 = &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hitButtonTimestamp];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_posterSaliencyRect];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_headerInterpolationProgress] = 0x3FF0000000000000;
  v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge] = 0;
  v26 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_quickActionsContainerPool;
  type metadata accessor for QuickActionsContainer.Pool();
  *&v5[v26] = QuickActionsContainer.Pool.__allocating_init()();
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_overrideTraitCollection] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel] = a1;
  _s20CommunicationDetails22HeaderSizeInterpolatorVWOcTm_0(a2, &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide], type metadata accessor for DetailsStyleGuide);
  swift_beginAccess();
  *(v20 + 1) = v85;
  swift_unknownObjectWeakAssign();

  v91 = WrappedAvatarView.init(viewModel:backgroundStyle:)(v27);
  v92 = v28;
  v93 = v29;
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy20CommunicationDetails013WrappedAvatarD0VGMd, &_s7SwiftUI14_UIHostingViewCy20CommunicationDetails013WrappedAvatarD0VGMR));
  v31 = _UIHostingView.init(rootView:)();
  v32 = &unk_1EAD3F000;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarView] = v31;
  v33 = v31;
  dispatch thunk of _UIHostingView.safeAreaRegions.setter();

  v85 = a2;
  _s20CommunicationDetails22HeaderSizeInterpolatorVWOcTm_0(a2, v11, type metadata accessor for Header.StyleGuide);
  v34 = *&v6[v26];

  v35 = v11;
  v36 = v86;
  Header.SwiftUIContainerView.init(viewModel:styleGuide:pool:)(v35, v34, v13);
  type metadata accessor for QuickActionsContainerDelegateWrapper(0);
  lazy protocol witness table accessor for type Header.SwiftUIContainerView and conformance Header.SwiftUIContainerView(&lazy protocol witness table cache variable for type Header.SwiftUIContainerView and conformance Header.SwiftUIContainerView, type metadata accessor for Header.SwiftUIContainerView, &protocol conformance descriptor for Header.SwiftUIContainerView);
  lazy protocol witness table accessor for type Header.SwiftUIContainerView and conformance Header.SwiftUIContainerView(&lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper, type metadata accessor for QuickActionsContainerDelegateWrapper, &protocol conformance descriptor for QuickActionsContainerDelegateWrapper);

  View.environment<A>(_:)();

  outlined destroy of DetailsStyleGuide(v13, type metadata accessor for Header.SwiftUIContainerView);
  v37 = *(v87 + 16);
  v84 = v19;
  v37(v82, v19, v36);
  v38 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCyAA0D0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy20CommunicationDetails6HeaderV0a11UIContainerD0V_AJ36QuickActionsContainerDelegateWrapperCQo_GMd, &_s7SwiftUI14_UIHostingViewCyAA0D0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy20CommunicationDetails6HeaderV0a11UIContainerD0V_AJ36QuickActionsContainerDelegateWrapperCQo_GMR));
  v39 = _UIHostingView.init(rootView:)();
  v40 = &type metadata singleton initialization cache for QuickActionsContainerDelegateWrapper;
  *&v6[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_swiftUIHeaderContentView] = v39;
  v41 = type metadata accessor for Header.HeaderView(0);
  v89.receiver = v6;
  v89.super_class = v41;
  v42 = v39;
  v43 = objc_msgSendSuper2(&v89, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v44 = *(*&v43[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel] + 16);
  v45 = v43;
  v46 = *(*v44 + 584);

  v46(&v91, v47);

  if ((v45[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide + 8] & 1) == 0)
  {
    v49 = v91;
    v50 = (*((*MEMORY[0x1E69E7D40] & *v45) + 0x148))(v48);
    if (v50)
    {
      (*(*v50 + 184))(&v91);

      v51 = v92;
      if (v92)
      {
        v52 = v91;
        v53 = v36;
        v54 = v93;
        v55 = v94;
        v56 = v95;

        v57 = v55;
        v36 = v53;
        outlined consume of DetailsTab?(v52, v51, v54, v57, v56);
        LOBYTE(v51) = (*(*v54 + 176))();
      }

      else
      {
        outlined consume of DetailsTab?(v91, 0, v93, v94, v95);
      }
    }

    else
    {
      LOBYTE(v51) = 0;
    }

    type metadata accessor for PlatformTopEdgeBlurView();
    v58 = PlatformTopEdgeBlurView.__allocating_init(wantsPlatterBlur:)(v51 & 1);
    [v45 addSubview_];
    v59 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView;
    v60 = *&v45[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView];
    *&v45[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView] = v58;
    v61 = v58;

    LOBYTE(v91) = v49;
    v90 = 0;
    lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle(v62, v63, v64);
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    v66 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible;
    if ((v65 & 1) == v45[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible])
    {

      v32 = &unk_1EAD3F000;
      v40 = &type metadata singleton initialization cache for QuickActionsContainerDelegateWrapper;
    }

    else
    {
      v67 = v65;
      v68 = v42;
      v69 = *&v45[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction];
      v70 = MEMORY[0x1E69E7D40];
      v71 = (*((*MEMORY[0x1E69E7D40] & *v45) + 0xE8))();
      v73 = v72;
      if (v69)
      {
        v42 = v68;
        if (v71)
        {
          ObjectType = swift_getObjectType();
          (*(v73 + 8))(v45, (v67 & 1) == 0, ObjectType, v73);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v71)
        {
          v75 = swift_getObjectType();
          (*(v73 + 8))(v45, 1, v75, v73);
          swift_unknownObjectRelease();
        }

        v76 = *&v45[v59];
        v42 = v68;
        if (v76)
        {
          v77 = *((*v70 & *v76) + 0x90);
          v78 = v76;
          v77(v67 & 1, 0);
        }
      }

      v45[v66] = v67 & 1;
      v36 = v86;
      v32 = &unk_1EAD3F000;
      v40 = &type metadata singleton initialization cache for QuickActionsContainerDelegateWrapper;
    }
  }

  [v45 addSubview_];
  v79 = *&v45[v40[210]];
  v80 = [objc_opt_self() clearColor];
  [v79 setBackgroundColor_];

  [v45 addSubview_];
  swift_unknownObjectRelease();

  outlined destroy of DetailsStyleGuide(v85, type metadata accessor for DetailsStyleGuide);
  (*(v87 + 8))(v84, v36);
  return v45;
}

void specialized Header.HeaderView.init(frame:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarViewModel;
  type metadata accessor for WrappedAvatarView.ViewModel(0);
  *(v1 + v2) = WrappedAvatarView.ViewModel.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView) = 0;
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction) = 0;
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketContainerInteraction) = 0;
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsViewModel) = 0;
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView) = 0;
  v3 = (v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_effectiveSafeAreaInsets);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  *v3 = *MEMORY[0x1E69DDCE0];
  v3[1] = v4;
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible) = 0;
  v5 = v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hitButtonTimestamp;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_posterSaliencyRect);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_headerInterpolationProgress) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge) = 0;
  v7 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_quickActionsContainerPool;
  type metadata accessor for QuickActionsContainer.Pool();
  *(v1 + v7) = QuickActionsContainer.Pool.__allocating_init()();
  *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_overrideTraitCollection) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized Header.HeaderView.sizeForContactIdentityView(proposedSize:sizingStrategy:)()
{
  v1 = type metadata accessor for HeaderSizeInterpolator(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(**(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel) + 16) + 584);

  v4(v18, v5);

  if ((v18[0] & 1) == 0)
  {
    v7 = MEMORY[0x1E69E7D40];
    v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x210);
    (v8)(v6);
    v9 = *(v3 + 1);
    v18[0] = *v3;
    v18[1] = v9;
    v19 = *(v3 + 4);
    v10 = outlined destroy of DetailsStyleGuide(v3, type metadata accessor for HeaderSizeInterpolator);
    v11 = *((*v7 & *v0) + 0x1E0);
    v12 = v11(v10);
    InterpolationValue.evaluate(at:)(v12);
    v8();
    v13 = *(v3 + 56);
    v16[0] = *(v3 + 40);
    v16[1] = v13;
    v17 = *(v3 + 9);
    v14 = outlined destroy of DetailsStyleGuide(v3, type metadata accessor for HeaderSizeInterpolator);
    v15 = v11(v14);
    InterpolationValue.evaluate(at:)(v15);
  }
}

void partial apply for implicit closure #1 in Header.HeaderView.topHeaderPadding.getter(double *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 < 2.0)
  {
    v2 = *(v1 + 24);
  }

  *a1 = v2;
}

double partial apply for implicit closure #3 in Header.HeaderView.topHeaderPadding.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type Header.HeaderView.SizingStrategy and conformance Header.HeaderView.SizingStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Header.HeaderView.SizingStrategy and conformance Header.HeaderView.SizingStrategy;
  if (!lazy protocol witness table cache variable for type Header.HeaderView.SizingStrategy and conformance Header.HeaderView.SizingStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Header.HeaderView.SizingStrategy and conformance Header.HeaderView.SizingStrategy);
  }

  return result;
}

uint64_t type metadata completion function for Header.HeaderView(uint64_t a1)
{
  result = type metadata accessor for DetailsStyleGuide(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Header.HeaderView.SizingStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Header.HeaderView.SizingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned CGRect)(uint64_t a1@<X8>)
{
  *a1 = (*(v1 + 16))();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t outlined init with copy of ModifiedContent<DetailsTabBarViewRepresentable, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F23TabBarViewRepresentableVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F23TabBarViewRepresentableVAA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<DetailsTabBarViewRepresentable, _PaddingLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F23TabBarViewRepresentableVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F23TabBarViewRepresentableVAA14_PaddingLayoutVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20CommunicationDetails22HeaderSizeInterpolatorVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Header.SwiftUIContainerView and conformance Header.SwiftUIContainerView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of DetailsStyleGuide(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ParticipantView.AddContactButtonBadgeOverlay.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.contextMenuPreview.getter();
  *v4 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMR);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ParticipantView.AddContactButtonBadgeOverlay@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.contextMenuPreview.getter();
  *v4 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMR);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t View.addContactButtonBadgeOverlay(addToContactsButton:isAddedToContacts:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2;
  return MEMORY[0x193AEA300](&v4, a3, &type metadata for ParticipantView.AddContactButtonBadgeOverlay);
}

uint64_t getEnumTagSinglePayload for ParticipantView.AddContactButtonBadgeOverlay(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for ParticipantView.AddContactButtonBadgeOverlay(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMd, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMR, MEMORY[0x1E697FDF8]);
    lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay;
  if (!lazy protocol witness table cache variable for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay);
  }

  return result;
}

Swift::Void __swiftcall DetailsViewController.didFinishTransition(to:animated:)(Swift::Int to, Swift::Bool animated)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C8))();
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = (*((*v6 & *v7) + 0x148))();

  if (!v9)
  {
    return;
  }

  v43 = v9;
  v10 = (*(*v9 + 184))(&v45);
  v11 = v45;
  v12 = v46;
  v13 = v47;
  v14 = v48;
  v15 = v49;
  v38 = animated;
  if (v46)
  {
    v16 = *((*v6 & *v3) + 0x240);

    v16(0, &v45);
    v6 = MEMORY[0x1E69E7D40];
    outlined consume of DetailsTab?(v45, v46, v47, v48, v49);
  }

  v41 = v12;
  v42 = v11;
  v40 = v13;
  v17 = (*((*v6 & *v3) + 0xD8))(v10);
  if (to < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(v17 + 16) <= to)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v39 = v14;
  v44 = v15;
  v18 = (v17 + 40 * to);
  v19 = v18[4];
  v20 = v18[5];
  v22 = v18[6];
  v21 = v18[7];
  v23 = v18[8];

  v45 = v19;
  v46 = v20;
  v47 = v22;
  v48 = v21;
  v49 = v23;
  v24 = *(*v43 + 192);
  v25 = to;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v24(&v45);
  DetailsViewController.updatePosterScrollGeometry(for:animated:)(to, 1);
  if (v20)
  {
    toTabIndex = to;
    v45 = v19;
    v46 = v20;
    v47 = v22;
    v48 = v21;
    v49 = v23;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    if (v41)
    {
      v29 = v39;
      outlined copy of DetailsTab?(v42, v41, v40, v39, v44);
      outlined copy of DetailsTab?(v19, v20, v22, v21, v23);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v30, v31, v32);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();

      v27 = v41;

      v33 = v21;
      v34 = v40;
      outlined consume of DetailsTab?(v19, v20, v22, v33, v23);
      if (v36)
      {
        outlined consume of DetailsTab?(v42, v41, v40, v39, v44);

LABEL_16:

        return;
      }

LABEL_15:
      v35._countAndFlagsBits = v19;
      v35._object = v20;
      DetailsViewController.performHeaderTransition(toTabIndex:tabId:animated:)(toTabIndex, v35, v38);

      outlined consume of DetailsTab?(v42, v27, v34, v29, v44);
      goto LABEL_16;
    }

    v29 = v39;
    outlined copy of DetailsTab?(v42, 0, v40, v39, v44);
    outlined copy of DetailsTab?(v19, v20, v22, v21, v23);

LABEL_14:
    outlined consume of DetailsTab?(v19, v20, v22, v21, v23);
    outlined consume of DetailsTab?(v28, v27, v26, v29, v44);
    v34 = v26;
    goto LABEL_15;
  }

  v26 = v40;
  v27 = v41;
  v28 = v42;
  if (v41)
  {
    toTabIndex = v25;
    v29 = v39;
    outlined copy of DetailsTab?(v42, v41, v40, v39, v44);
    goto LABEL_14;
  }

  outlined consume of DetailsTab?(v19, 0, v22, v21, v23);
}

uint64_t DetailsViewControllerRepresentable.tabs.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMR);
  MEMORY[0x193AEA550](v3, v1);
  return v3[0];
}

void *key path getter for DetailsViewControllerRepresentable.tabs : DetailsViewControllerRepresentable@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[1] = *a1;
  v6 = *(a1 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMR);
  result = MEMORY[0x193AEA550](v5, v3);
  *a2 = v5[0];
  return result;
}

uint64_t key path setter for DetailsViewControllerRepresentable.tabs : DetailsViewControllerRepresentable(void *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMR);
  return Binding.wrappedValue.setter();
}

void (*DetailsViewControllerRepresentable.tabs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMR);
  MEMORY[0x193AEA550]();
  return DetailsViewControllerRepresentable.tabs.modify;
}

void DetailsViewControllerRepresentable.tabs.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t DetailsViewControllerRepresentable.$tabs.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMR);
  Binding.projectedValue.getter();
  return v1;
}

double key path getter for DetailsViewControllerRepresentable.selectedTab : DetailsViewControllerRepresentable@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  MEMORY[0x193AEA550](v6, v2);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void key path setter for DetailsViewControllerRepresentable.selectedTab : DetailsViewControllerRepresentable(uint64_t *a1, void *a2)
{
  v2 = a2[6];
  v3 = a2[7];
  v4 = a2[8];
  v5 = a2[9];
  v6 = a2[10];
  outlined copy of DetailsTab?(*a1, a1[1], a1[2], a1[3], a1[4]);

  outlined copy of DetailsTab?(v2, v3, v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  Binding.wrappedValue.setter();

  outlined consume of DetailsTab?(v2, v3, v4, v5, v6);
}

void DetailsViewControllerRepresentable.selectedTab.setter(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];

  outlined copy of DetailsTab?(v2, v3, v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  Binding.wrappedValue.setter();

  outlined consume of DetailsTab?(v2, v3, v4, v5, v6);
}

void (*DetailsViewControllerRepresentable.selectedTab.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v6 = v1[5];
  v4[24] = v5;
  v4[25] = v6;
  v7 = v1[6];
  v8 = v1[7];
  v4[26] = v7;
  v4[27] = v8;
  v9 = v1[8];
  v10 = v1[9];
  v4[28] = v9;
  v4[29] = v10;
  v11 = v1[10];
  v4[30] = v11;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;

  outlined copy of DetailsTab?(v7, v8, v9, v10, v11);
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  MEMORY[0x193AEA550]();
  return DetailsViewControllerRepresentable.selectedTab.modify;
}

void DetailsViewControllerRepresentable.selectedTab.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 224);
  *(v3 + 9) = *(*a1 + 208);
  v5 = v3[25];
  v3[7] = v3[24];
  v6 = v3[14];
  v3[19] = v6;
  v7 = v3[15];
  v8 = v3[16];
  v9 = v3[17];
  v10 = v3[18];
  v11 = v3[30];
  v3[8] = v5;
  *(v3 + 11) = v4;
  v3[13] = v11;
  v3[20] = v7;
  v3[21] = v8;
  v3[22] = v9;
  v3[23] = v10;
  if (a2)
  {
    outlined copy of DetailsTab?(v6, v7, v8, v9, v10);
    Binding.wrappedValue.setter();
    v12 = v3[9];
    v13 = v3[10];
    v14 = v3[11];
    v15 = v3[12];
    v16 = v3[13];

    outlined consume of DetailsTab?(v12, v13, v14, v15, v16);
    v17 = v3[14];
    v18 = v3[15];
    v19 = v3[16];
    v20 = v3[17];
    v21 = v3[18];
  }

  else
  {
    Binding.wrappedValue.setter();
    v22 = v3[9];
    v23 = v3[10];
    v24 = v3[11];
    v25 = v3[12];
    v26 = v3[13];

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = v26;
  }

  outlined consume of DetailsTab?(v17, v18, v19, v20, v21);

  free(v3);
}

void *DetailsViewControllerRepresentable.makeUIViewController(context:)()
{
  v1 = v0;
  v2 = type metadata accessor for DetailsStyleGuide(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsViewController(0);
  v12 = *v0;
  v13 = *(v0 + 1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd, &_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMR);
  MEMORY[0x193AEA550](&v11, v5);
  v6 = v11;
  v7 = v1[3];
  v8 = type metadata accessor for DetailsViewControllerRepresentable(0);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v1 + *(v8 + 28), v4, type metadata accessor for DetailsStyleGuide);

  v9 = DetailsViewController.__allocating_init(tabs:configuration:styleGuide:)(v6, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy20CommunicationDetails0h4ViewdE0VGMd, &_s7SwiftUI36UIViewControllerRepresentableContextVy20CommunicationDetails0h4ViewdE0VGMR);
  UIViewControllerRepresentableContext.coordinator.getter();
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x218))(v12, &protocol witness table for DetailsViewControllerRepresentable.Coordinator);
  return v9;
}

id DetailsViewControllerRepresentable.makeCoordinator()()
{
  v1 = type metadata accessor for DetailsViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v0, v3, type metadata accessor for DetailsViewControllerRepresentable);
  v4 = type metadata accessor for DetailsViewControllerRepresentable.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v3, v5 + OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent, type metadata accessor for DetailsViewControllerRepresentable);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  outlined destroy of DetailsViewControllerRepresentable(v3);
  return v6;
}

uint64_t _s20CommunicationDetails0B10StyleGuideVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id DetailsViewControllerRepresentable.Coordinator.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(a1, v3 + OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent, type metadata accessor for DetailsViewControllerRepresentable);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  outlined destroy of DetailsViewControllerRepresentable(a1);
  return v4;
}

uint64_t type metadata accessor for DetailsViewControllerRepresentable(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path setter for DetailsViewControllerRepresentable.Coordinator.parent : DetailsViewControllerRepresentable.Coordinator(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for DetailsViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(a1, v6, type metadata accessor for DetailsViewControllerRepresentable);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x68))(v6);
}

uint64_t DetailsViewControllerRepresentable.Coordinator.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent;
  swift_beginAccess();
  return _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v1 + v3, a1, type metadata accessor for DetailsViewControllerRepresentable);
}

uint64_t DetailsViewControllerRepresentable.Coordinator.parent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent;
  swift_beginAccess();
  outlined assign with take of DetailsViewControllerRepresentable(a1, v1 + v3);
  return swift_endAccess();
}

id DetailsViewControllerRepresentable.Coordinator.init(_:)(uint64_t a1)
{
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(a1, v1 + OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent, type metadata accessor for DetailsViewControllerRepresentable);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetailsViewControllerRepresentable.Coordinator(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  outlined destroy of DetailsViewControllerRepresentable(a1);
  return v3;
}

uint64_t outlined assign with take of DetailsViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewControllerRepresentable(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double DetailsViewControllerRepresentable.Coordinator.detailsViewController(_:didUpdateSelectedTab:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v12;
  v23 = *(a2 + 32);
  type metadata accessor for OS_dispatch_queue();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 24) = *a2;
  *(v14 + 16) = v2;
  *(v14 + 40) = v15;
  *(v14 + 56) = *(a2 + 32);
  aBlock[4] = partial apply for closure #1 in DetailsViewControllerRepresentable.Coordinator.detailsViewController(_:didUpdateSelectedTab:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);
  v17 = v2;
  outlined init with copy of DetailsTab(v22, v20);
  static DispatchQoS.unspecified.getter();
  v20[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x193AEACA0](0, v11, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);

  return result;
}

double closure #1 in DetailsViewControllerRepresentable.Coordinator.detailsViewController(_:didUpdateSelectedTab:)(void *a1, uint64_t *a2)
{
  v22 = *a2;
  v4 = *(a2 + 1);
  v23 = *(a2 + 3);
  v24 = v4;
  v5 = type metadata accessor for DetailsViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))(isCurrentExecutor);
  v9 = v7[5];
  v10 = v7[6];
  v11 = v7[7];
  v12 = v7[8];
  v13 = v7[9];
  v14 = v7[10];
  v29 = v7[4];
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v26 = v22;
  v27 = v24;
  v28 = v23;
  outlined init with copy of DetailsTab(a2, v25);

  outlined copy of DetailsTab?(v10, v11, v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd, &_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMR);
  Binding.wrappedValue.setter();
  outlined destroy of DetailsViewControllerRepresentable(v7);
  v15 = v31;
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;

  outlined consume of DetailsTab?(v15, v16, v17, v18, v19);

  return result;
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id DetailsViewControllerRepresentable.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DetailsViewControllerRepresentable.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsViewControllerRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:) in conformance DetailsViewControllerRepresentable.Coordinator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](protocol witness for DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:) in conformance DetailsViewControllerRepresentable.Coordinator, v7, v6);
}

uint64_t protocol witness for DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:) in conformance DetailsViewControllerRepresentable.Coordinator()
{

  v1 = DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:)();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t DetailsViewControllerRepresentable.init(tabs:configuration:selectedTab:styleGuide:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a5;
  v10 = a5[1];
  v11 = a5[6];
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v9;
  *(a7 + 40) = v10;
  v12 = *(a5 + 2);
  *(a7 + 48) = *(a5 + 1);
  *(a7 + 64) = v12;
  *(a7 + 80) = v11;
  v13 = a7 + *(type metadata accessor for DetailsViewControllerRepresentable(0) + 28);

  return outlined init with take of DetailsStyleGuide(a6, v13);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance DetailsViewControllerRepresentable@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v2, v5, type metadata accessor for DetailsViewControllerRepresentable);
  v6 = type metadata accessor for DetailsViewControllerRepresentable.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v5, v7 + OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent, type metadata accessor for DetailsViewControllerRepresentable);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = outlined destroy of DetailsViewControllerRepresentable(v5);
  *a2 = v8;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DetailsViewControllerRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable, type metadata accessor for DetailsViewControllerRepresentable, &protocol conformance descriptor for DetailsViewControllerRepresentable);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DetailsViewControllerRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable, type metadata accessor for DetailsViewControllerRepresentable, &protocol conformance descriptor for DetailsViewControllerRepresentable);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance DetailsViewControllerRepresentable(uint64_t a1)
{
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable, type metadata accessor for DetailsViewControllerRepresentable, &protocol conformance descriptor for DetailsViewControllerRepresentable);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void type metadata completion function for DetailsViewControllerRepresentable(uint64_t a1)
{
  type metadata accessor for Binding<[DetailsTab]>(319, &lazy cache variable for type metadata for Binding<[DetailsTab]>, &_sSay20CommunicationDetails0B3TabVGMd, &_sSay20CommunicationDetails0B3TabVGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailsViewController.ObservableConfiguration(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding<[DetailsTab]>(319, &lazy cache variable for type metadata for Binding<DetailsTab?>, &_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DetailsStyleGuide(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<[DetailsTab]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Binding();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for DetailsViewControllerRepresentable.Coordinator(uint64_t a1)
{
  result = type metadata accessor for DetailsViewControllerRepresentable(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ParticipantView.ViewModel.contact.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v13 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v4 = v15;
  v5 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v11 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 96) = v4;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  return outlined init with copy of CommunicationDetailsContact(v10, v9);
}

uint64_t key path getter for ParticipantView.ViewModel.delegate : ParticipantView.ViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ParticipantView.ViewModel.delegate : ParticipantView.ViewModel(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ParticipantView.ViewModel.delegate.getter()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t ParticipantView.ViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0))(KeyPath, partial apply for closure #1 in ParticipantView.ViewModel.delegate.setter, &v7, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.delegate.setter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__delegate);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t (*ParticipantView.ViewModel.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ParticipantView.ViewModel._delegate.modify(v4);
  return ParticipantView.ViewModel.delegate.modify;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel;
  if (!lazy protocol witness table cache variable for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel)
  {
    type metadata accessor for ParticipantView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel);
  }

  return result;
}

uint64_t type metadata accessor for ParticipantView.ViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParticipantView.ViewModel;
  if (!type metadata singleton initialization cache for ParticipantView.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ParticipantView.ViewModel.__allocating_init(contact:configuration:participantGridActionHandlers:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = &v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__delegate];
  *v13 = 0;
  v13[1] = 0;
  v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__selectedRemoveFromGroup] = 0;
  v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__selectedBlockContact] = 0;
  ObservationRegistrar.init()();
  v14 = &v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact];
  v15 = *(a1 + 80);
  *(v14 + 4) = *(a1 + 64);
  *(v14 + 5) = v15;
  *(v14 + 12) = *(a1 + 96);
  v16 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 1) = v16;
  v17 = *(a1 + 48);
  *(v14 + 2) = *(a1 + 32);
  *(v14 + 3) = v17;
  *&v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration] = a2;
  *&v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers] = a3;

  v18 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v13 = a4;
  v13[1] = a5;
  *&v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_supportedContextMenuSections] = &outlined read-only object #0 of ParticipantView.ViewModel.__allocating_init(contact:configuration:participantGridActionHandlers:delegate:);
  v21.receiver = v12;
  v21.super_class = v6;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  swift_unknownObjectRelease();
  return v19;
}

id ParticipantView.ViewModel.init(contact:configuration:participantGridActionHandlers:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = &v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__delegate];
  *v11 = 0;
  v11[1] = 0;
  v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__selectedRemoveFromGroup] = 0;
  v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__selectedBlockContact] = 0;
  ObservationRegistrar.init()();
  v12 = &v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact];
  v13 = *(a1 + 80);
  *(v12 + 4) = *(a1 + 64);
  *(v12 + 5) = v13;
  *(v12 + 12) = *(a1 + 96);
  v14 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 1) = v14;
  v15 = *(a1 + 48);
  *(v12 + 2) = *(a1 + 32);
  *(v12 + 3) = v15;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration] = a2;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers] = a3;

  v16 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v11 = a4;
  v11[1] = a5;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_supportedContextMenuSections] = &outlined read-only object #0 of ParticipantView.ViewModel.init(contact:configuration:participantGridActionHandlers:delegate:);
  v19.receiver = v5;
  v19.super_class = type metadata accessor for ParticipantView.ViewModel(0);
  v17 = objc_msgSendSuper2(&v19, sel_init);

  swift_unknownObjectRelease();
  return v17;
}

void ParticipantView.ViewModel.selectedRemoveFromGroup.setter(char a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1 & 1;
  v5 = *a2;
  swift_beginAccess();
  if (*(v3 + v5) == v4)
  {
    *(v3 + v5) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1D0))(v7);
  }
}

uint64_t key path getter for ParticipantView.ViewModel.selectedRemoveFromGroup : ParticipantView.ViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ParticipantView.ViewModel.selectedRemoveFromGroup.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ParticipantView.ViewModel._selectedRemoveFromGroup.modify(v4);
  return ParticipantView.ViewModel.selectedRemoveFromGroup.modify;
}

uint64_t key path getter for ParticipantView.ViewModel.selectedBlockContact : ParticipantView.ViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

uint64_t ParticipantView.ViewModel.selectedRemoveFromGroup.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C8))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void partial apply for closure #1 in ParticipantView.ViewModel.selectedRemoveFromGroup.setter(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = v3;
}

uint64_t (*ParticipantView.ViewModel.selectedBlockContact.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ParticipantView.ViewModel._selectedBlockContact.modify(v4);
  return ParticipantView.ViewModel.selectedBlockContact.modify;
}

void ParticipantView.ViewModel.delegate.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t key path getter for ParticipantView.ViewModel.presentSafetyCheck : ParticipantView.ViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result & 1;
  return result;
}

uint64_t ParticipantView.ViewModel.presentSafetyCheck.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration);
  v2 = [*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16) identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 712))();
  if (!*(v6 + 16))
  {

    goto LABEL_5;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v5);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v6 + 56) + v7);
LABEL_6:

  return v10;
}

uint64_t ParticipantView.ViewModel.presentSafetyCheck.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration);
  v4 = [*(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16) identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v3 + 728))(v14);
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v5, v7, isUniquelyReferenced_nonNull_native);

  *v10 = v13;

  return v8(v14, 0);
}

uint64_t (*ParticipantView.ViewModel.presentSafetyCheck.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ParticipantView.ViewModel.presentSafetyCheck.getter() & 1;
  return ParticipantView.ViewModel.presentSafetyCheck.modify;
}

uint64_t ParticipantView.ViewModel.isPhoneCallAvailable.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0xD8))();
  v2 = v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40), *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48));

  return v2 & 1;
}

uint64_t ParticipantView.ViewModel.isFaceTimeVideoAvailable.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0x108))();
  v2 = v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40), *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48));

  return v2 & 1;
}

BOOL ParticipantView.ViewModel.isEmailAvailable.getter()
{
  v1 = [objc_opt_self() bestGuessEmailAddressForContact:*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16) sendingAddressDomain:0];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 != 0;
}

uint64_t ParticipantView.ViewModel.isScreenSharingAvailable()()
{
  v1[54] = v0;
  type metadata accessor for MainActor();
  v1[55] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[56] = v3;
  v1[57] = v2;

  return MEMORY[0x1EEE6DFA0](ParticipantView.ViewModel.isScreenSharingAvailable(), v3, v2);
}

{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 432)) + 0xA8))();
  *(v0 + 464) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 432);
    ObjectType = swift_getObjectType();
    v6 = (v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v7 = *(v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v8 = *(v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    *(v0 + 152) = *(v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
    *(v0 + 136) = v8;
    *(v0 + 120) = v7;
    v9 = v6[3];
    v10 = v6[4];
    v11 = v6[5];
    *(v0 + 216) = *(v6 + 12);
    *(v0 + 200) = v11;
    *(v0 + 184) = v10;
    *(v0 + 168) = v9;
    v12 = v6[2];
    v13 = *v6;
    *(v0 + 240) = v6[1];
    *(v0 + 256) = v12;
    *(v0 + 224) = v13;
    v15 = v6[4];
    v14 = v6[5];
    v16 = v6[3];
    *(v0 + 320) = *(v6 + 12);
    *(v0 + 288) = v15;
    *(v0 + 304) = v14;
    *(v0 + 272) = v16;
    v17 = *(v3 + 32);
    outlined init with copy of CommunicationDetailsContact(v0 + 120, v0 + 328);
    v21 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 472) = v18;
    *v18 = v0;
    v18[1] = ParticipantView.ViewModel.isScreenSharingAvailable();

    return v21(v0 + 224, ObjectType, v3);
  }

  else
  {

    v20 = *(v0 + 8);

    return v20(0);
  }
}

{

  v1 = *(v0 + 480);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t ParticipantView.ViewModel.isScreenSharingAvailable()(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 480) = a1;

  swift_unknownObjectRelease();
  v4 = *(v3 + 18);
  *(v3 + 4) = *(v3 + 17);
  *(v3 + 5) = v4;
  *(v3 + 6) = *(v3 + 19);
  v3[14] = v2[40];
  v5 = *(v3 + 15);
  *(v3 + 1) = *(v3 + 14);
  *(v3 + 2) = v5;
  *(v3 + 3) = *(v3 + 16);
  outlined destroy of CommunicationDetailsContact((v3 + 2));
  v6 = v2[57];
  v7 = v2[56];

  return MEMORY[0x1EEE6DFA0](ParticipantView.ViewModel.isScreenSharingAvailable(), v7, v6);
}

Swift::Void __swiftcall ParticipantView.ViewModel.startPhoneCall()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0xF0))();
  v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40), *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48));
}

Swift::Void __swiftcall ParticipantView.ViewModel.startFaceTimeVideoCall()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0x120))();
  v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40), *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48));
}

Swift::Void __swiftcall ParticipantView.ViewModel.startMessage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - v1;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  URLComponents.init(string:)();
  v16 = *(v4 + 48);
  if (!v16(v15, 1, v3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for URLQueryItem();
    v21 = v6;
    *(swift_allocObject() + 16) = xmmword_1901E6CD0;
    URLQueryItem.init(name:value:)();
    v9 = v22;
    URLComponents.queryItems.setter();
    v6 = v21;
  }

  if (v16(v15, 1, v3))
  {
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  else
  {
    (*(v4 + 16))(v6, v15, v3);
    URLComponents.url.getter();
    (*(v4 + 8))(v6, v3);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  _s10Foundation3URLVSgWOcTm_0(v12, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  outlined init with take of URL?(v9, v20 + v19);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in ParticipantView.ViewModel.startMessage(), v20);

  outlined destroy of URL?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of URL?(v15, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
}

uint64_t closure #1 in ParticipantView.ViewModel.startMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startMessage(), 0, 0);
}

uint64_t closure #1 in ParticipantView.ViewModel.startMessage()()
{
  *(v0 + 192) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 200) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startMessage(), v2, v1);
}

{
  v1 = *(v0 + 192);

  *(v0 + 208) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startMessage(), 0, 0);
}

{
  v1 = v0[23];
  _s10Foundation3URLVSgWOcTm_0(v0[19], v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = 0;
  if (v4 != 1)
  {
    v7 = v0[23];
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v3 + 8))(v7, v2);
  }

  v0[27] = v6;
  v9 = v0[26];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = closure #1 in ParticipantView.ViewModel.startMessage();
  swift_continuation_init();
  v0[17] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_38_0;
  [v9 openURL:v6 withCompletionHandler:v0 + 10];
  (*(v11 + 8))(boxed_opaque_existential_0, v12);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startMessage(), 0, 0);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  **(v0 + 144) = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  _s10Foundation3URLVSgWOcTm_0(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
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

Swift::Void __swiftcall ParticipantView.ViewModel.startEmail()()
{
  v1 = type metadata accessor for Logger();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v44 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v42 = *(v14 + 56);
  v42(v12, 1, 1, v13);
  v15 = [objc_allocWithZone(MEMORY[0x1E695CEF0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1901E6230;
  v38 = v0;
  v17 = *&v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16];
  *(v16 + 32) = v17;
  type metadata accessor for CNContact();
  v18 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v43 = v15;
  v20 = [v15 mailUrlForContacts:isa needsEmailAddresses:1];

  if (v20)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v42(v10, v21, 1, v13);
  outlined assign with take of URL?(v10, v12);
  _s10Foundation3URLVSgWOcTm_0(v12, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v22 = (*(v14 + 48))(v7, 1, v13);
  outlined destroy of URL?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v22 == 1)
  {
    v23 = v18;
    v24 = Logger.detailsViewController.unsafeMutableAddressor();
    v26 = v39;
    v25 = v40;
    v27 = v41;
    (*(v40 + 16))(v39, v24, v41);
    v28 = v38;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v23;
      *v32 = v23;
      v33 = v23;
      _os_log_impl(&dword_190119000, v29, v30, "Unable to send email from context menu to non-email handle for contact %@", v31, 0xCu);
      outlined destroy of URL?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x193AEBB30](v32, -1, -1);
      MEMORY[0x193AEBB30](v31, -1, -1);
    }

    (*(v25 + 8))(v26, v27);
  }

  else
  {
    v34 = type metadata accessor for TaskPriority();
    v35 = v37;
    (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v44;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in ParticipantView.ViewModel.startEmail(), v36);
  }
}

uint64_t closure #1 in ParticipantView.ViewModel.startEmail()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[25] = swift_task_alloc();
  v4[26] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startEmail(), 0, 0);
}

uint64_t closure #1 in ParticipantView.ViewModel.startEmail()()
{
  *(v0 + 216) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startEmail(), v2, v1);
}

{
  v1 = *(v0 + 216);

  *(v0 + 232) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startEmail(), 0, 0);
}

{
  v2 = v0[25];
  v1 = v0[26];
  swift_beginAccess();
  _s10Foundation3URLVSgWOcTm_0(v1, v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v7 = v0[25];
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  v0[30] = v6;
  v9 = v0[29];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = closure #1 in ParticipantView.ViewModel.startEmail();
  swift_continuation_init();
  v0[17] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_7;
  [v9 openURL:v6 withCompletionHandler:v0 + 10];
  (*(v11 + 8))(boxed_opaque_existential_0, v12);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startEmail(), 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  **(v0 + 168) = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall ParticipantView.ViewModel.shareScreen()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
    v5 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
    v22 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
    v23 = v5;
    v6 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    v19[0] = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v19[1] = v6;
    v7 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
    v9 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v8 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    v20 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
    v21 = v7;
    v10 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
    v16 = v22;
    v17 = v10;
    v12 = v9;
    v13 = v8;
    v24 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
    v18 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
    v14 = v20;
    v15 = v4;
    v11 = *(v2 + 24);
    outlined init with copy of CommunicationDetailsContact(v19, v25);
    v11(&v12, ObjectType, v2);
    swift_unknownObjectRelease();
    v25[4] = v16;
    v25[5] = v17;
    v26 = v18;
    v25[0] = v12;
    v25[1] = v13;
    v25[2] = v14;
    v25[3] = v15;
    outlined destroy of CommunicationDetailsContact(v25);
  }
}

Swift::Void __swiftcall ParticipantView.ViewModel.requestToShareScreen()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
    v5 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
    v22 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
    v23 = v5;
    v6 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    v19[0] = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v19[1] = v6;
    v7 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
    v9 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v8 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    v20 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
    v21 = v7;
    v10 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
    v16 = v22;
    v17 = v10;
    v12 = v9;
    v13 = v8;
    v24 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
    v18 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
    v14 = v20;
    v15 = v4;
    v11 = *(v2 + 16);
    outlined init with copy of CommunicationDetailsContact(v19, v25);
    v11(&v12, ObjectType, v2);
    swift_unknownObjectRelease();
    v25[4] = v16;
    v25[5] = v17;
    v26 = v18;
    v25[0] = v12;
    v25[1] = v13;
    v25[2] = v14;
    v25[3] = v15;
    outlined destroy of CommunicationDetailsContact(v25);
  }
}

uint64_t ParticipantView.ViewModel.showContactCard(using:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v4 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v21 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
  v22 = v4;
  v5 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v18[0] = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v18[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v8 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v7 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v19 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
  v20 = v6;
  v9 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v15 = v21;
  v16 = v9;
  v11 = v8;
  v12 = v7;
  v23 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v17 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v13 = v19;
  v14 = v3;
  outlined init with copy of CommunicationDetailsContact(v18, v24);
  static CommunicationDetailsContactCard.pushContactCard(for:from:)(&v11, a1);
  v24[4] = v15;
  v24[5] = v16;
  v25 = v17;
  v24[0] = v11;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  return outlined destroy of CommunicationDetailsContact(v24);
}

Swift::Void __swiftcall ParticipantView.ViewModel.blockContact()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration);
  v3 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v4 = [v3 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v2 + 776))(v18);
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *v10 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    *v10 = v11;
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = v5;
  *(v15 + 5) = v7;
  v16 = v8(v18, 0);
  v17 = (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0xA8))(v16);
  v17(v3);
}

Swift::Void __swiftcall ParticipantView.ViewModel.unblockContact()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0xC0))();
  v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16));
}

void ParticipantView.ViewModel.createNewContact(using:from:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v5 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v24 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
  v25 = v5;
  v6 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v21[0] = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v21[1] = v6;
  v7 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v9 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v8 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v22 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
  v23 = v7;
  v10 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v18 = v24;
  v19 = v10;
  v14 = v9;
  v15 = v8;
  v26 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v20 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v16 = v22;
  v17 = v4;
  outlined init with copy of CommunicationDetailsContact(v21, v27);
  v11 = static CommunicationDetailsContactCard.createNewContactViewController(for:)(&v14);
  v27[4] = v18;
  v27[5] = v19;
  v28 = v20;
  v27[0] = v14;
  v27[1] = v15;
  v27[2] = v16;
  v27[3] = v17;
  outlined destroy of CommunicationDetailsContact(v27);
  [v11 setDelegate_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  if (a1)
  {
    LOBYTE(v14) = 0;
    v13 = v12;
    (*(*a1 + 104))(v12, &v14, 1);
  }

  else
  {
  }
}

void ParticipantView.ViewModel.addToExistingContact(using:from:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  [v4 setAllowsCancel_];
  [v4 setAutocloses_];
  [v4 setMode_];
  v7 = [objc_opt_self() predicateWithValue_];
  [v4 setPredicateForSelectionOfContact_];
  [v4 setAllowsNamePicking_];
  [v4 setDelegate_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  if (a1)
  {
    v8 = 0;
    v6 = v5;
    (*(*a1 + 104))(v5, &v8, 1);
  }

  else
  {
  }
}

id ParticipantView.ViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParticipantView.ViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantView.ViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ParticipantView.ViewModel.contactPicker(_:didSelect:)(CNContactPickerViewController *_, CNContact didSelect)
{
  v4 = [objc_opt_self() viewControllerForUpdatingContact:didSelect.super.isa withPropertiesFromContact:*(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16)];
  if (v4)
  {
    v7 = v4;
    [v4 setDelegate_];
    v5 = [(CNContactPickerViewController *)_ navigationController];
    if (v5)
    {
      v6 = v5;
      [v5 pushViewController:v7 animated:1];
    }
  }
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.startMessage()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in ParticipantView.ViewModel.startMessage();

  return closure #1 in ParticipantView.ViewModel.startMessage()(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.startEmail()(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in ParticipantView.ViewModel.startEmail();

  return closure #1 in ParticipantView.ViewModel.startEmail()(a1, v5, v6, v4);
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.startEmail()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata completion function for ParticipantView.ViewModel(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParticipantView.ViewModel.isScreenSharingAvailable()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of ParticipantView.ViewModel.isScreenSharingAvailable();

  return v5();
}

uint64_t dispatch thunk of ParticipantView.ViewModel.isScreenSharingAvailable()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t _s10Foundation3URLVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA_33(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA_33TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA_33TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id DetailsHeaderContainer.HeaderContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsHeaderContainer.HeaderContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance DetailsHeaderContainer()
{
  v1 = *v0;
  v2 = type metadata accessor for DetailsHeaderContainer.HeaderContainerView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCV20CommunicationDetailsP33_2DB30AA36CA0269A8F3FE974D4E6106422DetailsHeaderContainer19HeaderContainerView_contentOffsetProxy] = v1;
  v8.receiver = v3;
  v8.super_class = v2;

  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = *(*v1 + 664);
  v6 = v4;
  v5(v4);

  return v6;
}

double protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance DetailsHeaderContainer()
{

  specialized DetailsHeaderContainer.HeaderContainerView.contentOffsetProxy.setter(v0);

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DetailsHeaderContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer(a1, a2, a3);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DetailsHeaderContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer(a1, a2, a3);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance DetailsHeaderContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

void DetailsScrollView.DetailsScrollBehavior.updateTarget(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ScrollTarget.rect.getter();
  MinY = CGRectGetMinY(v12);
  v5 = *(*a3 + 560);
  v6 = v5() * 0.5;
  ScrollTarget.rect.getter();
  if (MinY >= v6)
  {
    v11 = CGRectGetMinY(*&v7);
    if (v11 >= v5())
    {
      return;
    }

    ScrollTarget.rect.getter();
    CGRectGetMinX(v15);
    v5();
    ScrollTarget.rect.getter();
    CGRectGetWidth(v16);
    ScrollTarget.rect.getter();
    CGRectGetHeight(v17);
  }

  else
  {
    CGRectGetMinX(*&v7);
    ScrollTarget.rect.getter();
    CGRectGetWidth(v13);
    ScrollTarget.rect.getter();
    CGRectGetHeight(v14);
  }

  ScrollTarget.rect.setter();
}

double protocol witness for ScrollTargetBehavior.updateTarget(_:context:) in conformance DetailsScrollView<A>.DetailsScrollBehavior(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsScrollView.DetailsScrollBehavior.updateTarget(_:context:)(a1, v3, *v1);

  return result;
}

uint64_t property wrapper backing initializer of DetailsScrollView.scrollPosition(uint64_t a1)
{
  v3 = type metadata accessor for ScrollPosition();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  State.init(wrappedValue:)();
  return (*(v4 + 8))(a1, v3);
}

void DetailsScrollView.init(contentOffsetProxy:shouldInsetAutomatically:_:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ScrollPosition();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsScrollView(0, a4, a5, v15);
  ScrollPosition.init<A>(idType:edge:)();
  property wrapper backing initializer of DetailsScrollView.scrollPosition(v14);
  (*(*a1 + 544))(1);
  *(a6 + 8) = a1;
  *a6 = a2;
  *(a6 + 1) = 0;

  v17 = a3(v16);
  (*(*a1 + 456))(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd, &_s7SwiftUI5StateVyAA14ScrollPositionVGMR);
  State.wrappedValue.getter();
  ScrollPosition.scrollTo(y:)();
  State.wrappedValue.setter();
}

void DetailsScrollView.init(contentOffsetProxy:shouldInsetAutomatically:showsScrollIndicators:_:)(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ScrollPosition();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsScrollView(0, a5, a6, v17);
  ScrollPosition.init<A>(idType:edge:)();
  property wrapper backing initializer of DetailsScrollView.scrollPosition(v16);
  (*(*a1 + 544))(1);
  *(a7 + 8) = a1;
  *a7 = a2;
  *(a7 + 1) = a3;

  v19 = a4(v18);
  (*(*a1 + 456))(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd, &_s7SwiftUI5StateVyAA14ScrollPositionVGMR);
  State.wrappedValue.getter();
  ScrollPosition.scrollTo(y:)();
  State.wrappedValue.setter();
}

void DetailsScrollView.scrollIfNeeded()()
{
  v1 = type metadata accessor for ScrollPosition();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *(v0 + 8);
  v4 = *(*v3 + 816);
  if ((v4(v2) & 1) != 0 || ((*(*v3 + 488))() & 1) != 0 || ((*(*v3 + 720))() & 1) == 0 && (v6 = (*(*v3 + 608))(v7), vabdd_f64(v7[0], (*(*v3 + 456))(v6)) > 0.1))
  {
    (*(*v3 + 456))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd, &_s7SwiftUI5StateVyAA14ScrollPositionVGMR);
    State.wrappedValue.getter();
    ScrollPosition.scrollTo(y:)();
    v5 = State.wrappedValue.setter();
    if ((v4)(v5))
    {
      (*(*v3 + 496))(0);
    }
  }
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance DetailsScrollView<A>.HeaderBodyLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance DetailsScrollView<A>.HeaderBodyLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981820]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance DetailsScrollView<A>.HeaderBodyLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981828]);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance DetailsScrollView<A>.HeaderBodyLayout(uint64_t *a1))()
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance DetailsScrollView<A>.HeaderBodyLayout;
}

void protocol witness for Animatable.animatableData.modify in conformance DetailsScrollView<A>.HeaderBodyLayout(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t DetailsScrollView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v223 = a2;
  v222 = type metadata accessor for ContentMarginPlacement();
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v220 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for ScrollIndicatorVisibility();
  v218 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v229 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v217 = &v167 - v6;
  v239 = *(a1 - 8);
  v231 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v235 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  type metadata accessor for DetailsScrollView.HeaderBodyLayout(255, v9, v10, v11);
  swift_getWitnessTable();
  type metadata accessor for _LayoutRoot();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  v250 = *&v9;
  v251 = v10;
  v240 = v9;
  v238 = v10;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMR);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for _VariadicView.Tree();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v254 = WitnessTable;
  v255 = v14;
  v236 = v12;
  v234 = swift_getWitnessTable();
  *&v15 = COERCE_DOUBLE(type metadata accessor for ScrollView());
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v167 - v17;
  v20 = type metadata accessor for DetailsScrollView.DetailsScrollBehavior(255, v9, v10, v19);
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v250 = *&v15;
  v251 = v20;
  v23 = v20;
  v230 = v20;
  v252 = v21;
  v253 = v22;
  v233 = v21;
  v24 = v22;
  v232 = v22;
  *&v25 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v186 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v168 = &v167 - v26;
  v250 = *&v15;
  v251 = v23;
  v252 = v21;
  v253 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat(OpaqueTypeConformance2, v28, v29);
  v250 = *&v25;
  v251 = MEMORY[0x1E69E7DE0];
  v169 = v25;
  v31 = MEMORY[0x1E69E7DE0];
  v252 = OpaqueTypeConformance2;
  v253 = v30;
  v170 = OpaqueTypeConformance2;
  v32 = v30;
  v228 = v30;
  *&v33 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v188 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  *&v224 = &v167 - v34;
  v250 = *&v25;
  v251 = v31;
  v252 = OpaqueTypeConformance2;
  v253 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v250 = *&v33;
  v251 = MEMORY[0x1E69E6370];
  v36 = *&v33;
  v173 = v33;
  v37 = MEMORY[0x1E69E6370];
  v252 = v35;
  v253 = MEMORY[0x1E69E6388];
  v38 = v35;
  v174 = v35;
  v39 = MEMORY[0x1E69E6388];
  *&v40 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v189 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v225 = &v167 - v41;
  v250 = v36;
  v251 = v37;
  v252 = v38;
  v253 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v250 = *&v40;
  v251 = v37;
  v43 = *&v40;
  v171 = v40;
  v44 = v37;
  v252 = v42;
  v253 = v39;
  v45 = v42;
  v172 = v42;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v190 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v226 = &v167 - v46;
  *&v47 = COERCE_DOUBLE(type metadata accessor for ModifiedContent());
  v194 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v185 = &v167 - v48;
  v250 = v43;
  v251 = v44;
  v252 = v45;
  v253 = v39;
  v182 = swift_getOpaqueTypeConformance2();
  v248 = v182;
  v249 = MEMORY[0x1E69805D0];
  v49 = swift_getWitnessTable();
  v250 = *&v47;
  v251 = v49;
  v50 = *&v47;
  v180 = v47;
  v51 = v49;
  v181 = v49;
  *&v52 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v193 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  *&v227 = &v167 - v53;
  v250 = v50;
  v251 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v57 = lazy protocol witness table accessor for type DetailsContentOffsetProxy.ScrollMetrics and conformance DetailsContentOffsetProxy.ScrollMetrics(v54, v55, v56);
  v250 = *&v52;
  v251 = &type metadata for DetailsContentOffsetProxy.ScrollMetrics;
  v58 = *&v52;
  v183 = v52;
  v252 = v54;
  v253 = v57;
  v184 = v54;
  v177 = v57;
  *&v59 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v191 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v179 = &v167 - v60;
  v250 = v58;
  v251 = &type metadata for DetailsContentOffsetProxy.ScrollMetrics;
  v252 = v54;
  v253 = v57;
  v61 = swift_getOpaqueTypeConformance2();
  v250 = *&v59;
  v251 = v61;
  v175 = v59;
  v62 = v61;
  v176 = v61;
  v63 = swift_getOpaqueTypeMetadata2();
  v200 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v178 = &v167 - v64;
  v201 = v65;
  *&v66 = COERCE_DOUBLE(type metadata accessor for ModifiedContent());
  v198 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v197 = &v167 - v67;
  v250 = *&v59;
  v251 = v62;
  v195 = swift_getOpaqueTypeConformance2();
  v246 = v195;
  v247 = MEMORY[0x1E6980A30];
  v68 = swift_getWitnessTable();
  v250 = *&v66;
  v251 = v68;
  *&v69 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v205 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v203 = &v167 - v70;
  v199 = v66;
  v250 = *&v66;
  v251 = v68;
  v196 = v68;
  v71 = swift_getOpaqueTypeConformance2();
  v250 = *&v69;
  v251 = v71;
  *&v72 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v206 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v204 = &v167 - v73;
  v207 = v69;
  v250 = *&v69;
  v251 = v71;
  v202 = v71;
  v74 = swift_getOpaqueTypeConformance2();
  v213 = v72;
  v250 = *&v72;
  v251 = v74;
  v208 = v74;
  v75 = swift_getOpaqueTypeMetadata2();
  v211 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v209 = &v167 - v76;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI23_GeometryActionModifierVy12CoreGraphics7CGFloatVGMR);
  v214 = v75;
  v216 = type metadata accessor for ModifiedContent();
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v210 = &v167 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v212 = &v167 - v79;
  static Axis.Set.vertical.getter();
  v80 = v240;
  v241 = v240;
  v81 = v238;
  v242 = v238;
  v82 = v237;
  v243 = v237;
  ScrollView.init(_:showsIndicators:content:)();
  v250 = *(v82 + 8);
  v83 = v250;

  swift_checkMetadataState();
  v84 = v168;
  View.scrollTargetBehavior<A>(_:)();

  v85 = (*(v16 + 8))(v18, v15);
  v250 = (*(**&v83 + 440))(v85);
  v86 = v239;
  v87 = *(v239 + 16);
  v233 = v239 + 16;
  v232 = v87;
  v88 = v235;
  v89 = v82;
  v90 = v192;
  v87(v235, v89, v192);
  v236 = *(v86 + 80);
  v231 += (v236 + 32) & ~v236;
  v91 = (v236 + 32) & ~v236;
  v92 = swift_allocObject();
  *(v92 + 16) = v80;
  *(v92 + 24) = v81;
  v230 = *(v86 + 32);
  v93 = v91;
  v234 = v91;
  v230(v92 + v91, v88, v90);
  v239 = v86 + 32;
  v94 = v169;
  View.onChange<A>(of:initial:_:)();

  v95 = (*(v186 + 8))(v84, v94);
  LOBYTE(v250) = (*(**&v83 + 720))(v95) & 1;
  v232(v88, v237, v90);
  v96 = swift_allocObject();
  v97 = v238;
  *(v96 + 16) = v240;
  *(v96 + 24) = v97;
  v98 = v230;
  v230(v96 + v93, v88, v90);
  v99 = v173;
  v100 = *&v224;
  View.onChange<A>(of:initial:_:)();

  v101 = (*(v188 + 8))(v100, v99);
  v102 = *(**&v83 + 816);
  v224 = v83;
  LOBYTE(v250) = v102(v101) & 1;
  v103 = v235;
  v104 = v237;
  v105 = v232;
  v232(v235, v237, v90);
  v106 = swift_allocObject();
  v107 = v240;
  *(v106 + 16) = v240;
  *(v106 + 24) = v97;
  v108 = v103;
  v98(v106 + v234, v103, v90);
  v109 = v171;
  v110 = v225;
  View.onChange<A>(of:initial:_:)();

  (*(v189 + 8))(v110, v109);
  v105(v108, v104, v90);
  v111 = swift_allocObject();
  v112 = v238;
  *(v111 + 16) = v107;
  *(v111 + 24) = v112;
  v113 = v234;
  v230(v111 + v234, v108, v90);
  v114 = v185;
  v115 = OpaqueTypeMetadata2;
  v116 = v226;
  View.onAppear(perform:)();

  (*(v190 + 8))(v116, v115);
  v117 = v235;
  v118 = v232;
  v232(v235, v237, v90);
  v119 = swift_allocObject();
  v120 = v238;
  *(v119 + 16) = v240;
  *(v119 + 24) = v120;
  v121 = v230;
  v230(v119 + v113, v117, v90);
  v122 = v180;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v194 + 8))(v114, v122);
  v123 = v237;
  v118(v117, v237, v90);
  v124 = swift_allocObject();
  *(v124 + 16) = v240;
  *(v124 + 24) = v120;
  v125 = v90;
  v121(v124 + v234, v117, v90);
  v126 = v179;
  v127 = v183;
  v128 = v227;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v193 + 8))(v128, v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd, &_s7SwiftUI5StateVyAA14ScrollPositionVGMR);
  v129 = v123;
  v130 = v178;
  v131 = v217;
  State.projectedValue.getter();
  static UnitPoint.top.getter();
  v132 = v175;
  View.scrollPosition(_:anchor:)();
  outlined destroy of Binding<ScrollPosition>(v131, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMd, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMR);
  (*(v191 + 8))(v126, v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, "DY");
  inited = swift_initStackObject();
  v227 = xmmword_1901E6240;
  *(inited + 16) = xmmword_1901E6240;
  LOBYTE(v113) = static Edge.Set.top.getter();
  *(inited + 32) = v113;
  v134 = static Edge.Set.bottom.getter();
  *(inited + 33) = v134;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v113)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v134)
  {
    Edge.Set.init(rawValue:)();
  }

  v135 = v203;
  static SafeAreaRegions.all.getter();
  v136 = v197;
  v137 = v201;
  View.ignoresSafeArea(_:edges:)();
  (*(v200 + 8))(v130, v137);
  v138 = v199;
  View.scrollIndicatorsFlash(onAppear:)();
  v139 = (*(v198 + 8))(v136, v138);
  if (*(v129 + 1))
  {
    MEMORY[0x193AE9E10](v139);
  }

  else
  {
    MEMORY[0x193AE9E00](v139);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMR);
  v140 = swift_initStackObject();
  *(v140 + 16) = v227;
  v141 = static Axis.Set.vertical.getter();
  *(v140 + 32) = v141;
  v142 = static Axis.Set.horizontal.getter();
  *(v140 + 33) = v142;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v141)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v142)
  {
    Axis.Set.init(rawValue:)();
  }

  v143 = v204;
  v144 = v229;
  v145 = v207;
  View.scrollIndicators(_:axes:)();
  (*(v218 + 8))(v144, v219);
  (*(v205 + 8))(v135, v145);
  v146 = static Edge.Set.top.getter();
  (*(**&v224 + 216))();
  v148 = v147;
  v149 = v220;
  static ContentMarginPlacement.scrollIndicators.getter();
  v150 = v209;
  v151 = v146;
  v152 = *&v213;
  v153 = v208;
  MEMORY[0x193AEA1C0](v151, v148, 0, v149, v213, v208);
  (*(v221 + 8))(v149, v222);
  (*(v206 + 8))(v143, COERCE_DOUBLE(*&v152));
  v154 = v235;
  v232(v235, v129, v125);
  v155 = swift_allocObject();
  v156 = v238;
  *(v155 + 16) = v240;
  *(v155 + 24) = v156;
  v121(v155 + v234, v154, v125);
  v250 = v152;
  v251 = v153;
  v157 = swift_getOpaqueTypeConformance2();
  v158 = v210;
  v159 = v214;
  View.onGeometryChange<A>(of:do:)();

  (*(v211 + 8))(v150, v159);
  v160 = lazy protocol witness table accessor for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>(&lazy protocol witness table cache variable for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>, &_s7SwiftUI23_GeometryActionModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI23_GeometryActionModifierVy12CoreGraphics7CGFloatVGMR, MEMORY[0x1E69802E0]);
  v244 = v157;
  v245 = v160;
  v161 = v216;
  swift_getWitnessTable();
  v162 = v215;
  v163 = *(v215 + 16);
  v164 = v212;
  v163(v212, v158, v161);
  v165 = *(v162 + 8);
  v165(v158, v161);
  v163(v223, v164, v161);
  return (v165)(v164, v161);
}

double closure #1 in DetailsScrollView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v23 = a1;
  v24 = a5;
  type metadata accessor for DetailsScrollView.HeaderBodyLayout(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for _LayoutRoot();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  v27 = a2;
  v28 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMR);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v22[1] = v7;
  v8 = type metadata accessor for _VariadicView.Tree();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  MEMORY[0x1EEE9AC00](v15);
  v22[-4] = a2;
  v22[-3] = a3;
  v22[-2] = v23;
  partial apply for implicit closure #2 in implicit closure #1 in closure #1 in DetailsScrollView.body.getter(partial apply for closure #1 in closure #1 in DetailsScrollView.body.getter, &v22[-6], v16, v11);

  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v25 = WitnessTable;
  v26 = v18;
  swift_getWitnessTable();
  v19 = *(v9 + 16);
  v19(v14, v11, v8);
  v20 = *(v9 + 8);
  v20(v11, v8);
  v19(v24, v14, v8);
  v20(v14, v8);

  return result;
}

uint64_t Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _LayoutRoot();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  _LayoutRoot.init(_:)();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

void closure #1 in closure #1 in DetailsScrollView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  *&v43[0] = a2;
  *(&v43[0] + 1) = a3;
  v25 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v23 - v12;
  type metadata accessor for MainActor();
  v26 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v14 = v25;
  *(&v23 - 4) = a2;
  *(&v23 - 3) = v14;
  *(&v23 - 2) = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  v15 = *(v8 + 16);
  v15(v28, v10, v7);
  v25 = *(v8 + 8);
  v16 = (v25)(v10, v7);
  v17 = *(a1 + 8);
  v18 = (*(*v17 + 608))(v43, v16);
  v19 = *&v43[0];
  v20 = *(*v17 + 216);
  (v20)(v18);
  v20();
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v38 = v17;
  BYTE8(v38) = 1;
  *&v39 = 0;
  *(&v39 + 1) = v19;
  v21 = v28;
  v15(v10, v28, v7);
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v32 = v38;
  v33 = v39;
  v37[0] = v10;
  v37[1] = &v32;

  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout>(&v38, v43);
  v31[0] = v7;
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMR);
  v29 = WitnessTable;
  v30 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildBlock<each A>(_:)(v37, 2uLL, v31);
  outlined destroy of Binding<ScrollPosition>(&v38, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMR);
  v22 = v25;
  v25(v21, v7);
  v43[2] = v34;
  v43[3] = v35;
  v43[4] = v36;
  v43[0] = v32;
  v43[1] = v33;
  outlined destroy of Binding<ScrollPosition>(v43, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMR);
  v22(v10, v7);
}

void closure #1 in closure #1 in closure #1 in DetailsScrollView.body.getter(unsigned __int8 *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[2] = a4;
  v34 = a2;
  v35 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  type metadata accessor for MainActor();
  v23[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v16 = *a1;
  v17 = 0.0;
  v18 = 0.0;
  if (v16 == 1)
  {
    v18 = (*(**(a1 + 1) + 360))(isCurrentExecutor);
  }

  type metadata accessor for DetailsScrollView(0, a2, a3, v15);
  View.listHasLazyStackBehavior()();
  v34 = a2;
  v35 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = *(v8 + 16);
  v20(v13, v10, OpaqueTypeMetadata2);
  v21 = *(v8 + 8);
  v22 = v21(v10, OpaqueTypeMetadata2);
  if (v16)
  {
    v17 = (*(**(a1 + 1) + 384))(v22);
  }

  v31 = v18;
  v32 = 0;
  v33 = v16 ^ 1;
  v34 = &v31;
  v20(v10, v13, OpaqueTypeMetadata2);
  v28 = v17;
  v29 = 0;
  v30 = v16 ^ 1;
  v35 = v10;
  v36 = &v28;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  v27[1] = OpaqueTypeMetadata2;
  v27[2] = v27[0];
  v24 = lazy protocol witness table accessor for type Spacer? and conformance <A> A?();
  v25 = OpaqueTypeConformance2;
  v26 = v24;
  static ViewBuilder.buildBlock<each A>(_:)(&v34, 3uLL, v27);
  v21(v13, OpaqueTypeMetadata2);
  v21(v10, OpaqueTypeMetadata2);
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

double partial apply for closure #2 in DetailsScrollView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return partial apply for closure #2 in DetailsScrollView.body.getter(a1, a2, 195, a4);
}

{
  type metadata accessor for DetailsScrollView(0, *(v4 + 16), *(v4 + 24), a4);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsScrollView.scrollIfNeeded()();

  return result;
}

double partial apply for closure #4 in DetailsScrollView.body.getter(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for DetailsScrollView(0, *(v5 + 16), *(v5 + 24), a4);
  v7 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v7)
  {
    DetailsScrollView.scrollIfNeeded()();
  }

  return result;
}

double partial apply for closure #5 in DetailsScrollView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsScrollView(0, *(v4 + 16), *(v4 + 24), a4);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsScrollView.scrollIfNeeded()();

  return result;
}

double partial apply for closure #6 in DetailsScrollView.body.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsScrollView(0, *(v4 + 16), *(v4 + 24), a4);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    DetailsScrollView.scrollIfNeeded()();
  }

  return result;
}

double closure #7 in DetailsScrollView.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ScrollGeometry.contentOffset.getter();
  v3 = v2;
  ScrollGeometry.contentSize.getter();
  v5 = v4;
  ScrollGeometry.containerSize.getter();
  DetailsContentOffsetProxy.ScrollMetrics.init(contentOffsetY:contentHeight:containerHeight:)(v5, 0, a1, v3, v6);

  return result;
}

double partial apply for closure #8 in DetailsScrollView.body.getter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*(type metadata accessor for DetailsScrollView(0, *(v5 + 16), *(v5 + 24), a4) - 8) + 80);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  v11 = a2[3];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(v5 + ((v7 + 32) & ~v7) + 8);
  v14[0] = v8;
  v14[1] = v9;
  v15 = v10;
  v16 = v11;
  (*(*v12 + 808))(v14);
  DetailsScrollView.scrollIfNeeded()();

  return result;
}

uint64_t objectdestroyTm_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for DetailsScrollView(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[13], v5);
  v10 = v4 + v8 + v6[14];
  v11 = type metadata accessor for ScrollPosition();
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd, &_s7SwiftUI5StateVyAA14ScrollPositionVGMR);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

double partial apply for closure #10 in DetailsScrollView.body.getter(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*(type metadata accessor for DetailsScrollView(0, *(v5 + 16), *(v5 + 24), a4) - 8) + 80);
  v8 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(**(v5 + ((v7 + 32) & ~v7) + 8) + 272))(isCurrentExecutor, v8);

  return result;
}

void type metadata completion function for DetailsScrollView(uint64_t a1)
{
  type metadata accessor for DetailsContentOffsetProxy(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for State<ScrollPosition>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DetailsScrollView(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for ScrollPosition();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  if (*(v9 + 84) <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v11 + v14 + ((v10 + 16) & ~v10)) & ~v14) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
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

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v26 = (v24 + v10 + 8) & ~v10;
    if (v7 == v13)
    {
      v27 = *(v6 + 48);

      return v27(v26, v7, v5);
    }

    else
    {
      v28 = *(v9 + 48);
      v29 = (v26 + v11 + v14) & ~v14;

      return v28(v29);
    }
  }

  else
  {
    v25 = *v24;
    if (*v24 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void storeEnumTagSinglePayload for DetailsScrollView(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = type metadata accessor for ScrollPosition();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (*(v11 + 84) <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = ((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v13 + v16 + ((v12 + 16) & ~v12)) & ~v16) + 8;
  if (v15 >= a3)
  {
    v20 = 0;
    v21 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v13 + v16 + ((v12 + 16) & ~v12)) & ~v16) == -8)
    {
      v18 = a3 - v15 + 1;
    }

    else
    {
      v18 = 2;
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

    v21 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        v24 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) != 0)
        {
          v26 = (v24 + v12 + 8) & ~v12;
          if (v9 == v15)
          {
            v27 = *(v30 + 56);

            v27(v26, a2, v9, v7);
          }

          else
          {
            v28 = *(v11 + 56);
            v29 = (v26 + v13 + v16) & ~v16;

            v28(v29, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v13 + v16 + ((v12 + 16) & ~v12)) & ~v16) == -8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v13 + v16 + ((v12 + 16) & ~v12)) & ~v16) != -8)
  {
    v23 = ~v15 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void type metadata accessor for State<ScrollPosition>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for State<ScrollPosition>)
  {
    type metadata accessor for ScrollPosition();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for State<ScrollPosition>);
    }
  }
}

uint64_t type metadata instantiation function for DetailsScrollView.DetailsScrollBehavior(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer;
  if (!lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer;
  if (!lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer);
  }

  return result;
}

uint64_t closure #1 in Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v5 + 16);
  v13(v11, v7, a2);
  v14 = *(v5 + 8);
  v14(v7, a2);
  v13(a3, v11, a2);
  return (v14)(v11, a2);
}

double specialized DetailsHeaderContainer.HeaderContainerView.contentOffsetProxy.setter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV20CommunicationDetailsP33_2DB30AA36CA0269A8F3FE974D4E6106422DetailsHeaderContainer19HeaderContainerView_contentOffsetProxy;
  v3 = *&v1[OBJC_IVAR____TtCV20CommunicationDetailsP33_2DB30AA36CA0269A8F3FE974D4E6106422DetailsHeaderContainer19HeaderContainerView_contentOffsetProxy];
  *&v1[OBJC_IVAR____TtCV20CommunicationDetailsP33_2DB30AA36CA0269A8F3FE974D4E6106422DetailsHeaderContainer19HeaderContainerView_contentOffsetProxy] = a1;
  v4 = *(*v3 + 664);

  v4(0);
  v5 = *(**&v1[v2] + 664);

  v6 = v1;
  v5(v1);

  return result;
}

uint64_t specialized DetailsScrollView.HeaderBodyLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-v7];
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(v9);
  Collection.first.getter();
  v10 = type metadata accessor for LayoutSubview();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    return outlined destroy of Binding<ScrollPosition>(v8, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  }

  v13[8] = a2 & 1;
  v13[0] = a4 & 1;
  LayoutSubview.sizeThatFits(_:)();
  return (*(v11 + 8))(v8, v10);
}

uint64_t specialized DetailsScrollView.HeaderBodyLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7)
{
  v38 = a1;
  v39 = a3;
  v37 = type metadata accessor for LayoutSubview();
  v10 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v32[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32[-v17];
  v19 = type metadata accessor for LayoutSubviews();
  v20.n128_f64[0] = (*(*(v19 - 8) + 16))(v18, a5, v19);
  v21 = *(v16 + 44);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(v20);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v18[v21] != v41[0])
  {
    v34 = (v10 + 32);
    v35 = (v10 + 16);
    v22 = a2;
    v23 = (v10 + 8);
    v24 = v22 & 1;
    v33 = a4 & 1;
    do
    {
      v25 = dispatch thunk of Collection.subscript.read();
      v26 = v36;
      v27 = v37;
      (*v35)(v36);
      v25(v41, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v28 = (*v34)(v12, v26, v27);
      lazy protocol witness table accessor for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey(v28, v29, v30);
      LayoutSubview.subscript.getter();
      static UnitPoint.topLeading.getter();
      LOBYTE(v41[0]) = v24;
      v40 = v33;
      LayoutSubview.place(at:anchor:proposal:)();
      (*v23)(v12, v27);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v18[v21] != v41[0]);
  }

  return outlined destroy of Binding<ScrollPosition>(v18, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
}

unint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(__n128 a1)
{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey;
  if (!lazy protocol witness table cache variable for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGMd, &_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGMR);
    lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer(v1, v2, v3);
    lazy protocol witness table accessor for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy20CommunicationDetails0H18HeaderContainerKey33_2DB30AA36CA0269A8F3FE974D4E61064LLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy20CommunicationDetails0H18HeaderContainerKey33_2DB30AA36CA0269A8F3FE974D4E61064LLVGGMR, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined destroy of Binding<ScrollPosition>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Spacer? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Spacer? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Spacer? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacer? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in closure #1 in DetailsScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DetailsScrollView.HeaderBodyLayout(0, *(v4 + 16), *(v4 + 24), a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMR);
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  return Layout.callAsFunction<A>(_:)(a1, a2, v8, v9, WitnessTable, v11, a4);
}

id ParticipantView.AddToContactsMenu.makeUIView(context:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for ParticipantView.AddToContactsMenuButton();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel] = a2;
  *&v6[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy] = a3;
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = a2;

  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ParticipantView.AddToContactsMenuButton.setupButton()();

  return v8;
}

id ParticipantView.AddToContactsMenuButton.__allocating_init(viewModel:presentationProxy:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel] = a1;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  v6 = a1;

  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ParticipantView.AddToContactsMenuButton.setupButton()();

  return v7;
}

double ParticipantView.AddToContactsMenu.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance ParticipantView.AddToContactsMenu()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = type metadata accessor for ParticipantView.AddToContactsMenuButton();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel] = v2;
  *&v4[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy] = v1;
  v8.receiver = v4;
  v8.super_class = v3;
  v5 = v2;

  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ParticipantView.AddToContactsMenuButton.setupButton()();

  return v6;
}

double protocol witness for UIViewRepresentable.sizeThatFits(_:uiView:context:) in conformance ParticipantView.AddToContactsMenu(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ParticipantView.AddToContactsMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu(a1, a2, a3);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ParticipantView.AddToContactsMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu(a1, a2, a3);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ParticipantView.AddToContactsMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

id ParticipantView.AddToContactsMenuButton.init(viewModel:presentationProxy:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel] = a1;
  *&v2[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ParticipantView.AddToContactsMenuButton();
  v4 = a1;

  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ParticipantView.AddToContactsMenuButton.setupButton()();

  return v5;
}

id ParticipantView.AddToContactsMenuButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t ParticipantView.AddToContactsMenuButton.setupButton()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v49 = v44 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = v44 - v3;
  v4 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AttributedString();
  v44[0] = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAccessibilityCustomAction(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v11._object = 0x80000001901FFC70;
  v11._countAndFlagsBits = 0xD000000000000012;
  LocalizedString(_:)(v11);
  v12 = MEMORY[0x193AEA8E0](0xD000000000000012, 0x80000001901FC4C0);
  v13 = objc_opt_self();
  v14 = [v13 systemImageNamed_];

  swift_allocObject();
  v15 = v44[1];
  swift_unknownObjectWeakInit();
  v48 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x80000001901FFC90;
  LocalizedString(_:)(v16);
  v17 = MEMORY[0x193AEA8E0](0xD00000000000001DLL, 0x80000001901FFCB0);
  v18 = v44[0];
  v19 = [v13 systemImageNamed_];

  v20 = v15;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v45;
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  static UIButton.Configuration.plain()();
  v23._countAndFlagsBits = 0x435F4F545F444441;
  v23._object = 0xEF53544341544E4FLL;
  LocalizedString(_:)(v23);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v52 = [objc_opt_self() preferredFontForTextStyle_];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute(v52, v24, v25);
  AttributedString.subscript.setter();
  v26 = v47;
  (*(v18 + 16))(v47, v7, v21);
  (*(v18 + 56))(v26, 0, 1, v21);
  UIButton.Configuration.attributedTitle.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v27 = [objc_opt_self() systemBlueColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v28 = v49;
  v29 = v50;
  v30 = v51;
  (*(v50 + 16))(v49, v10, v51);
  (*(v29 + 56))(v28, 0, 1, v30);
  UIButton.configuration.setter();
  v31 = MEMORY[0x193AEA8E0](0xD000000000000013, 0x80000001901FFCD0);
  [v20 setAccessibilityIdentifier_];

  v32 = [v20 titleLabel];
  if (v32)
  {
    v33 = v32;
    [v32 setTextAlignment_];
  }

  [v20 setShowsMenuAsPrimaryAction_];
  type metadata accessor for UIAccessibilityCustomAction(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1901E8240;
  v35 = v48;
  *(v34 + 32) = v48;
  *(v34 + 40) = v22;
  v36 = v35;
  v37 = v22;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v53.value.super.isa = 0;
  v53.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, v38, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, v34, v43);
  v41 = v40;
  [v20 setMenu_];

  (*(v18 + 8))(v7, v21);
  return (*(v50 + 8))(v10, v51);
}

double ParticipantView.AddToContactsMenuButton.accessibilityCustomActions.getter()
{
  v0._countAndFlagsBits = 0x435F4F545F444441;
  v0._object = 0xEF53544341544E4FLL;
  v1 = LocalizedString(_:)(v0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v4 = MEMORY[0x193AEA8E0](v1._countAndFlagsBits, v1._object);

  v9[4] = partial apply for closure #1 in ParticipantView.AddToContactsMenuButton.accessibilityCustomActions.getter;
  v9[5] = v2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v9[3] = &block_descriptor_8;
  v5 = _Block_copy(v9);
  v6 = [v3 initWithName:v4 actionHandler:v5];

  _Block_release(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_1901E6230;
  *(v7 + 32) = v6;
  return result;
}

double @objc ParticipantView.AddToContactsMenuButton.accessibilityLabel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

BOOL partial apply for closure #1 in ParticipantView.AddToContactsMenuButton.accessibilityCustomActions.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong performPrimaryAction];
  }

  return v1 != 0;
}

id ParticipantView.AddToContactsMenuButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantView.AddToContactsMenuButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantView.AddToContactsMenuButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu;
  if (!lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu;
  if (!lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView.AddToContactsMenu(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ParticipantView.AddToContactsMenu(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double partial apply for closure #1 in ParticipantView.AddToContactsMenuButton.setupButton()()
{
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
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy);
      v5 = v3;
    }

    else
    {
      v4 = 0;
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B8))(v4, v6);
  }

  return result;
}

double partial apply for closure #2 in ParticipantView.AddToContactsMenuButton.setupButton()()
{
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
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy);
      v5 = v3;
    }

    else
    {
      v4 = 0;
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C0))(v4, v6);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

uint64_t type metadata accessor for UIAccessibilityCustomAction(uint64_t a1, unint64_t *a2, void *a3)
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

id PhotosGridAssetActionManager.__allocating_init(selectionManager:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSelectionManager_];

  return v3;
}

id PhotosGridAssetActionManager.init(selectionManager:)(void *a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v13, sel_initWithSelectionManager_, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1901EAE60;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v6;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v7;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v9;
  v10 = v3;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v10 setAllowedActionTypes_];

  return v10;
}

id PhotosGridAssetActionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

id PhotosSenderAvatarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *PhotosSenderAvatarView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData] = 0;
  v9 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions] = 0;
  v10 = &v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect];
  v11 = *(MEMORY[0x1E695F040] + 16);
  *v10 = *MEMORY[0x1E695F040];
  *(v10 + 1) = v11;
  swift_beginAccess();
  *&v4[v9] = 0;
  type metadata accessor for AttributionAvatarView.ViewModel(0);
  v12 = AttributionAvatarView.ViewModel.__allocating_init(_:)(0);

  AttributionAvatarView.init(viewModel:)(v24);
  v22 = v24[0];
  v23 = v24[1];
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy20CommunicationDetails017AttributionAvatarD0VGMd, &_s7SwiftUI14_UIHostingViewCy20CommunicationDetails017AttributionAvatarD0VGMR));
  *&v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarView] = _UIHostingView.init(rootView:)();
  *&v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarViewModel] = v12;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for PhotosSenderAvatarView();

  v14 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setUserInteractionEnabled_];
  v15 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarView;
  v16 = *&v14[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarView];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor_];

  [*&v14[v15] setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 addSubview_];

  return v14;
}

id PhotosSenderAvatarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PhotosSenderAvatarView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect);
  v2 = *(MEMORY[0x1E695F040] + 16);
  *v1 = *MEMORY[0x1E695F040];
  v1[1] = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t PhotosSenderAvatarView.userData.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  PhotosSenderAvatarView.userData.didset();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for PhotosSenderAvatarView.userData : PhotosSenderAvatarView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PhotosSenderAvatarView.userData : PhotosSenderAvatarView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void PhotosSenderAvatarView.userData.didset()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData;
  swift_beginAccess();
  if (*(v0 + v1) && (type metadata accessor for AvatarViewUserData(), (v2 = swift_dynamicCastClass()) != 0) && (v3 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact)) != 0)
  {
    v4 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarViewModel;
    v5 = v0;
    v6 = *(**(v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarViewModel) + 120);
    v7 = v3;

    v9 = v6(v8);

    if (v9)
    {
      type metadata accessor for CNContact();
      v10 = v7;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {

        return;
      }
    }

    else
    {
      v13 = v7;
    }

    v14 = *(**(v5 + v4) + 128);

    v14(v3);
  }

  else
  {
    v12 = *(**(v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarViewModel) + 128);

    v12(0);
  }
}

void (*PhotosSenderAvatarView.userData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PhotosSenderAvatarView.userData.modify;
}

void PhotosSenderAvatarView.userData.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PhotosSenderAvatarView.userData.didset();
  }
}

uint64_t PhotosSenderAvatarView.decorationOptions.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

void PhotosSenderAvatarView.decorationOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for PhotosSenderAvatarView.decorationOptions : PhotosSenderAvatarView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

double PhotosSenderAvatarView.clippingRect.getter()
{
  v1 = v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect;
  swift_beginAccess();
  return *v1;
}

void PhotosSenderAvatarView.clippingRect.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

void key path getter for PhotosSenderAvatarView.clippingRect : PhotosSenderAvatarView(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double @objc PhotosSenderAvatarView.becomeReusable()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

Swift::Void __swiftcall PhotosSenderAvatarView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PhotosSenderAvatarView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = *DetailsStyleGuide.mediaItemBadgeSize.unsafeMutableAddressor();
  v3 = 8.0;
  if (!v1)
  {
    [v0 bounds];
    v3 = v4 - v2 + -8.0;
  }

  v5 = 8.0;
  v6 = v2;
  v7 = v2;
  v9 = CGRectIntegral(*&v3);
  [*&v0[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarView] setFrame_];
}

id PhotosSenderAvatarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSenderAvatarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance PXGDecorationViewOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance PXGDecorationViewOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance PXGDecorationViewOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PXGDecorationViewOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PXGDecorationViewOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t lazy protocol witness table accessor for type PXGDecorationViewOptions and conformance PXGDecorationViewOptions(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PXGDecorationViewOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void _sSo6CGRectVMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t Header.SwiftUIContainerView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
  State.wrappedValue.getter();
  return v1;
}

void *key path getter for Header.SwiftUIContainerView.viewModel : Header.SwiftUIContainerView@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
  result = State.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t key path setter for Header.SwiftUIContainerView.viewModel : Header.SwiftUIContainerView(uint64_t *a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
  return State.wrappedValue.setter();
}

void (*Header.SwiftUIContainerView.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
  State.wrappedValue.getter();
  return Header.SwiftUIContainerView.viewModel.modify;
}

void Header.SwiftUIContainerView.viewModel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t Header.SwiftUIContainerView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
  State.projectedValue.getter();
  return v1;
}

uint64_t Header.SwiftUIContainerView.styleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for Header.SwiftUIContainerView(0) + 24);

  return outlined init with copy of Header.StyleGuide(v4, a1);
}

uint64_t type metadata accessor for Header.SwiftUIContainerView(uint64_t a1)
{
  result = type metadata singleton initialization cache for Header.SwiftUIContainerView;
  if (!type metadata singleton initialization cache for Header.SwiftUIContainerView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Header.SwiftUIContainerView.delegate.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for Header.SwiftUIContainerView(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper()
{
  result = lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper;
  if (!lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper)
  {
    type metadata accessor for QuickActionsContainerDelegateWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper);
  }

  return result;
}

double Header.SwiftUIContainerView.pool.getter()
{
  type metadata accessor for Header.SwiftUIContainerView(0);

  return result;
}

void Header.SwiftUIContainerView.pool.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Header.SwiftUIContainerView(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t Header.SwiftUIContainerView.init(viewModel:styleGuide:pool:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = FocusState.init<>()() & 1;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8 & 1;
  v9 = type metadata accessor for Header.SwiftUIContainerView(0);
  v10 = a4 + v9[7];
  type metadata accessor for QuickActionsContainerDelegateWrapper(0);
  lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper();
  *v10 = Environment.init<A>(_:)();
  *(v10 + 8) = v11 & 1;
  v12 = v9[8];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Header.ViewModel(0);
  State.init(wrappedValue:)();
  *a4 = v14;
  *(a4 + 8) = v15;
  result = outlined init with take of Header.StyleGuide(a2, a4 + v9[6], type metadata accessor for Header.StyleGuide);
  *(a4 + v9[9]) = a3;
  return result;
}

void Header.SwiftUIContainerView.body.getter(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA08_PaddingG0VGAA12_ScaleEffectVGAMyAMyAA0F0VyAIyAMyAMyAA6HStackVyAIyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA5_0S0OGGAA016_ForegroundStyleZ0VyAA5ColorVGGSg_AMyAMyAMyAA4TextVA7_ySiSgGGA7_yAA13TextAlignmentOGGAA023AccessibilityAttachmentZ0VGtGGA7_yAA4FontVSgGGA16_G_AMyAMyAMyA3_yAIyA11__A20_tGGA36_GA16_GA29_GSgtGGAWGAZGG_AMyAA6SpacerVAA06_FrameG0VGAMyAMyAMyAMyAMyAMy20CommunicationDetails21QuickActionsContainerVAA08_OpacityT0VGAA05_BlurT0VGAA010_BlendModeT0VGAA07_OffsetT0VGAZGAA06_TraityZ0VyAA011ZIndexTraitX0VGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA08_PaddingG0VGAA12_ScaleEffectVGAMyAMyAA0F0VyAIyAMyAMyAA6HStackVyAIyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA5_0S0OGGAA016_ForegroundStyleZ0VyAA5ColorVGGSg_AMyAMyAMyAA4TextVA7_ySiSgGGA7_yAA13TextAlignmentOGGAA023AccessibilityAttachmentZ0VGtGGA7_yAA4FontVSgGGA16_G_AMyAMyAMyA3_yAIyA11__A20_tGGA36_GA16_GA29_GSgtGGAWGAZGG_AMyAA6SpacerVAA06_FrameG0VGAMyAMyAMyAMyAMyAMy20CommunicationDetails21QuickActionsContainerVAA08_OpacityT0VGAA05_BlurT0VGAA010_BlendModeT0VGAA07_OffsetT0VGAZGAA06_TraityZ0VyAA011ZIndexTraitX0VGGtGGMR);
  closure #1 in Header.SwiftUIContainerView.body.getter(v2, a2 + *(v4 + 44));
}

void closure #1 in Header.SwiftUIContainerView.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v166 = type metadata accessor for Header.StyleGuide(0);
  MEMORY[0x1EEE9AC00](v166);
  v167 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMR);
  MEMORY[0x1EEE9AC00](v170);
  v172 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v171 = (&v150 - v6);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMR);
  MEMORY[0x1EEE9AC00](v165);
  v8 = &v150 - v7;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAGyAGyAA6VStackVyAA9TupleViewVyAGyAGyAA6HStackVyAYyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA1_0O0OGGAA016_ForegroundStyleY0VyAA5ColorVGGSg_AGyAGyAGyAA4TextVA3_ySiSgGGA3_yAA13TextAlignmentOGGAA023AccessibilityAttachmentY0VGtGGA3_yAA4FontVSgGGA12_G_AGyAGyAGyA_yAYyA7__A16_tGGA32_GA12_GA25_GSgtGGAQGATG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAGyAGyAA6VStackVyAA9TupleViewVyAGyAGyAA6HStackVyAYyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA1_0O0OGGAA016_ForegroundStyleY0VyAA5ColorVGGSg_AGyAGyAGyAA4TextVA3_ySiSgGGA3_yAA13TextAlignmentOGGAA023AccessibilityAttachmentY0VGtGGA3_yAA4FontVSgGGA12_G_AGyAGyAGyA_yAYyA7__A16_tGGA32_GA12_GA25_GSgtGGAQGATG_GMR);
  MEMORY[0x1EEE9AC00](v164);
  v10 = &v150 - v9;
  v11 = type metadata accessor for ContactCardDetailsStyle();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v156 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMd, &_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMR);
  MEMORY[0x1EEE9AC00](v153);
  v155 = &v150 - v13;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMR);
  MEMORY[0x1EEE9AC00](v154);
  v158 = &v150 - v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMR);
  MEMORY[0x1EEE9AC00](v163);
  v157 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v159 = &v150 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ContactsUI26ContactCardActionsProviderVSgMd, &_s10ContactsUI26ContactCardActionsProviderVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v150 - v19;
  v21 = type metadata accessor for ContactCardActionsProvider();
  v22 = *(v21 - 8);
  v161 = v21;
  v162 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v160 = &v150 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v169 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v175 = &v150 - v29;
  type metadata accessor for MainActor();
  v168 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = a1;
  v32 = *a1;
  v31 = a1[1];
  *&v189 = v32;
  *(&v189 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
  State.wrappedValue.getter();
  v33 = v187[2];

  v34 = v32;

  (*(*v33 + 584))(&v189, v35);

  LOBYTE(v187) = v189;
  LOBYTE(v183[0]) = 1;
  lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle(v36, v37, v38);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v174 = v31;
  if ((v39 & 1) == 0)
  {
    goto LABEL_11;
  }

  *&v189 = v32;
  *(&v189 + 1) = v31;
  State.wrappedValue.getter();
  v40 = v187[2];

  (*(*v40 + 200))(&v189, v41);

  v183[4] = v193;
  v183[5] = v194;
  v184 = v195;
  v183[0] = v189;
  v183[1] = v190;
  v183[2] = v191;
  v183[3] = v192;
  if ((*(&v193 + 1) & 0x8000000000000000) != 0)
  {
    v49 = *(&v183[0] + 1);

LABEL_10:
    v34 = v32;
    goto LABEL_11;
  }

  outlined destroy of DetailsViewController.CommunicationType(v183);
  *&v189 = v32;
  *(&v189 + 1) = v31;
  v42 = State.wrappedValue.getter();
  v43 = (*(*v187 + 224))(v42);

  if (!*(v43 + 16))
  {

    goto LABEL_10;
  }

  v150 = v10;
  v44 = *(v43 + 96);
  v179 = *(v43 + 80);
  v180 = v44;
  v181 = *(v43 + 112);
  v182 = *(v43 + 128);
  v45 = *(v43 + 48);
  v176 = *(v43 + 32);
  v177 = v45;
  v178 = *(v43 + 64);
  outlined init with copy of CommunicationDetailsContact(&v176, &v189);

  v151 = v177;
  outlined destroy of CommunicationDetailsContact(&v176);
  *&v189 = v32;
  *(&v189 + 1) = v31;
  v46 = State.wrappedValue.getter();
  (*(*v187 + 152))(v46);

  v48 = v161;
  v47 = v162;
  v34 = v32;
  if ((*(v162 + 48))(v20, 1, v161) != 1)
  {
    v114 = v151;
    (*(v47 + 32))(v160, v20, v48);
    v115 = v30[1];
    *&v189 = *v30;
    *(&v189 + 1) = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
    v116 = State.wrappedValue.getter();
    v117 = (*(*v187 + 224))(v116);

    if (*(v117 + 16))
    {
      v118 = *(v117 + 96);
      v192 = *(v117 + 80);
      v193 = v118;
      v194 = *(v117 + 112);
      v195 = *(v117 + 128);
      v119 = *(v117 + 48);
      v189 = *(v117 + 32);
      v190 = v119;
      v191 = *(v117 + 64);
      outlined init with copy of CommunicationDetailsContact(&v189, &v187);

      v120 = v194;

      outlined destroy of CommunicationDetailsContact(&v189);
      v121 = v174;
      if (!*(&v120 + 1))
      {
        goto LABEL_19;
      }

      [v114 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CNMutableContact();
      if (swift_dynamicCast())
      {
        v122 = v187;
        v123 = MEMORY[0x193AEA8E0](v120, *(&v120 + 1));

        [v122 setOrganizationName_];

        v121 = v174;
        if (v122)
        {
LABEL_20:
          (*(v162 + 16))(v152, v160, v48);
          *&v191 = 0;
          v189 = 0u;
          v190 = 0u;
          v124 = v122;
          ContactCardDetailsStyle.init(backgroundStyle:headerNameFont:propertyLabelFont:propertyLabelColor:propertyValueFont:propertyValueColor:separatorColor:allowEditingNotesInViewMode:groupPropertiesByType:)();
          v125 = v121;
          v126 = v155;
          ContactCardHeader.init(contact:actionsProvider:style:)();
          *(v126 + *(v153 + 52)) = v124;
          LOBYTE(v124) = static Edge.Set.horizontal.getter();
          EdgeInsets.init(_all:)();
          v128 = v127;
          v130 = v129;
          v132 = v131;
          v134 = v133;
          v135 = v158;
          outlined init with take of IDView<ContactCardHeader, CNContact>(v126, v158, &_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMd, &_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMR);
          v136 = v135 + *(v154 + 36);
          *v136 = v124;
          *(v136 + 8) = v128;
          *(v136 + 16) = v130;
          *(v136 + 24) = v132;
          *(v136 + 32) = v134;
          *(v136 + 40) = 0;
          *&v189 = v34;
          *(&v189 + 1) = v125;
          v137 = State.wrappedValue.getter();
          v142 = Header.ViewModel.nameViewScale.getter(v137, v138, v139, v140, v141);

          static UnitPoint.top.getter();
          v144 = v143;
          v146 = v145;
          v147 = v157;
          outlined init with take of IDView<ContactCardHeader, CNContact>(v135, v157, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMR);
          v148 = (v147 + *(v163 + 36));
          *v148 = v142;
          v148[1] = v142;
          *(v148 + 2) = v144;
          *(v148 + 3) = v146;
          v149 = v159;
          outlined init with take of IDView<ContactCardHeader, CNContact>(v147, v159, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMR);
          outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v149, v150, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMR);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
          v62 = v34;
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
          _ConditionalContent<>.init(storage:)();

          outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v149, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMR);
          (*(v162 + 8))(v160, v161);
          goto LABEL_12;
        }

LABEL_19:
        v122 = v114;
        goto LABEL_20;
      }
    }

    v121 = v174;
    goto LABEL_19;
  }

  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v20, &_s10ContactsUI26ContactCardActionsProviderVSgMd, &_s10ContactsUI26ContactCardActionsProviderVSgMR);
  v31 = v174;
  v10 = v150;
LABEL_11:
  v50 = *(v30 + *(type metadata accessor for Header.SwiftUIContainerView(0) + 24) + 160);
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = v50;
  v8[16] = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA016_ForegroundStyleP0VyAA5ColorVGGSg_AKyAKyAKyAA4TextVAQySiSgGGAQyAA0U9AlignmentOGGAA023AccessibilityAttachmentP0VGtGGAQyAA4FontVSgGGAZG_AKyAKyAKyAMyAIyAU_A2_tGGA18_GAZGA11_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA016_ForegroundStyleP0VyAA5ColorVGGSg_AKyAKyAKyAA4TextVAQySiSgGGAQyAA0U9AlignmentOGGAA023AccessibilityAttachmentP0VGtGGAQyAA4FontVSgGGAZG_AKyAKyAKyAMyAIyAU_A2_tGGA18_GAZGA11_GSgtGGMR);
  closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter(v30, &v8[*(v51 + 44)]);
  LOBYTE(v50) = static Edge.Set.horizontal.getter();
  v52 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGMR) + 36)];
  *v52 = v50;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  v52[40] = 1;
  *&v189 = v34;
  *(&v189 + 1) = v31;
  v53 = State.wrappedValue.getter();
  v58 = Header.ViewModel.nameViewScale.getter(v53, v54, v55, v56, v57);

  static UnitPoint.top.getter();
  v59 = &v8[*(v165 + 36)];
  *v59 = v58;
  v59[1] = v58;
  *(v59 + 2) = v60;
  *(v59 + 3) = v61;
  v62 = v34;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v8, v10, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v8, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMR);
LABEL_12:
  v63 = type metadata accessor for Header.SwiftUIContainerView(0);
  v64 = v30 + *(v63 + 24);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v165 = v190;
  v166 = v189;
  v163 = *(&v191 + 1);
  v164 = v191;
  LOBYTE(v176) = 1;
  v186 = BYTE8(v189);
  v185 = BYTE8(v190);
  v65 = v62;
  v187 = v62;
  v66 = v174;
  v188 = v174;
  v67 = State.wrappedValue.getter();
  v162 = (*(**&v183[0] + 232))(v67);

  v187 = v65;
  v188 = v66;
  v68 = State.wrappedValue.getter();
  v69 = (*(**&v183[0] + 256))(v68);

  v70 = v167;
  outlined init with copy of Header.StyleGuide(v64, v167);
  v71 = Header.SwiftUIContainerView.delegate.getter();
  v72 = *(v30 + *(v63 + 36));

  v73 = v171;
  QuickActionsContainer.init(contacts:requestedQuickActions:styleGuide:delegate:pool:)(v162, v69, v70, v71, v72, v171);
  v187 = v65;
  v188 = v66;
  v74 = State.wrappedValue.getter();
  v79 = Header.ViewModel.quickActionAlpha.getter(v74, v75, v76, v77, v78);

  *(v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGMR) + 36)) = v79;
  v187 = v65;
  v188 = v66;
  v80 = State.wrappedValue.getter();
  v85 = Header.ViewModel.quickActionBlurRadius.getter(v80, v81, v82, v83, v84);

  v86 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGMd, &_s7SwiftUI15ModifiedContentVyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGMR) + 36));
  *v86 = v85;
  *(v86 + 8) = 0;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGMR);
  Header.SwiftUIContainerView.quickActionsContainerBlendMode.getter(v73 + *(v87 + 36));
  v187 = v65;
  v188 = v66;
  v88 = State.wrappedValue.getter();
  v93 = Header.ViewModel.quickActionsTranslationY.getter(v88, v89, v90, v91, v92);

  v94 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGMR) + 36));
  *v94 = 0.0;
  v94[1] = v93;
  v187 = v65;
  v188 = v66;
  v95 = State.wrappedValue.getter();
  v100 = Header.ViewModel.quickActionsScale.getter(v95, v96, v97, v98, v99);

  static UnitPoint.center.getter();
  v102 = v101;
  v104 = v103;
  v105 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGMR) + 36));
  *v105 = v100;
  v105[1] = v100;
  *(v105 + 2) = v102;
  *(v105 + 3) = v104;
  v106 = v169;
  *(v73 + *(v170 + 36)) = 0xBFF0000000000000;
  v107 = v175;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v175, v106, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMR);
  LOBYTE(v70) = v176;
  LOBYTE(v65) = v186;
  LOBYTE(v64) = v185;
  v108 = v172;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v73, v172, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMR);
  v109 = v173;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v106, v173, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMR);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGG_AEyAA6SpacerVAA06_FrameM0VGAEyAEyAEyAEyAEyAEy20CommunicationDetails21QuickActionsContainerVAA08_OpacityO0VGAA05_BlurO0VGAA010_BlendModeO0VGAA07_OffsetO0VGARGAA06_TraitwX0VyAA011ZIndexTraitV0VGGtMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGG_AEyAA6SpacerVAA06_FrameM0VGAEyAEyAEyAEyAEyAEy20CommunicationDetails21QuickActionsContainerVAA08_OpacityO0VGAA05_BlurO0VGAA010_BlendModeO0VGAA07_OffsetO0VGARGAA06_TraitwX0VyAA011ZIndexTraitV0VGGtMR);
  v111 = v109 + *(v110 + 48);
  *v111 = 0;
  *(v111 + 8) = v70;
  v112 = v165;
  *(v111 + 16) = v166;
  *(v111 + 24) = v65;
  *(v111 + 32) = v112;
  *(v111 + 40) = v64;
  v113 = v163;
  *(v111 + 48) = v164;
  *(v111 + 56) = v113;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v108, v109 + *(v110 + 64), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v73, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v107, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v108, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v106, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMR);
}

uint64_t Header.SwiftUIContainerView.quickActionsContainerBlendMode.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd, &_s20CommunicationDetails12BlendedColorVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = v1 + *(type metadata accessor for Header.SwiftUIContainerView(0) + 24);
  v13 = type metadata accessor for Header.StyleGuide(0);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v12 + *(v13 + 96), v8, &_s20CommunicationDetails12BlendedColorVSgMd, &_s20CommunicationDetails12BlendedColorVSgMR);
  v14 = type metadata accessor for BlendedColor(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v8, &_s20CommunicationDetails12BlendedColorVSgMd, &_s20CommunicationDetails12BlendedColorVSgMR);
    v15 = type metadata accessor for BlendMode();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  else
  {
    specialized Environment.wrappedValue.getter(v5);
    BlendedColor.resolvedBlendMode(for:)(v5, v11);
    (*(v3 + 8))(v5, v2);
    outlined destroy of BlendedColor(v8, type metadata accessor for BlendedColor);
    v15 = type metadata accessor for BlendMode();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) != 1)
    {
      return (*(v16 + 32))(v21, v11, v15);
    }
  }

  v17 = *MEMORY[0x1E6981DF0];
  type metadata accessor for BlendMode();
  v18 = *(v15 - 8);
  (*(v18 + 104))(v21, v17, v15);
  result = (*(v18 + 48))(v11, 1, v15);
  if (result != 1)
  {
    return outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v11, &_s7SwiftUI9BlendModeOSgMd, &_s7SwiftUI9BlendModeOSgMR);
  }

  return result;
}

double closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGMR);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMR);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  type metadata accessor for MainActor();
  v40 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v18 = 1;
  v17[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA016_ForegroundStyleO0VyAA5ColorVGGSg_AKyAKyAKyAA4TextVAOySiSgGGAOyAA0T9AlignmentOGGAA023AccessibilityAttachmentO0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA016_ForegroundStyleO0VyAA5ColorVGGSg_AKyAKyAKyAA4TextVAOySiSgGGAOyAA0T9AlignmentOGGAA023AccessibilityAttachmentO0VGtGGMR);
  closure #1 in closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter(a1, &v17[*(v19 + 44)]);
  v20 = (a1 + *(type metadata accessor for Header.SwiftUIContainerView(0) + 24));
  v21 = v20[19];
  KeyPath = swift_getKeyPath();
  v23 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGMR) + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = v20[23];

  v25 = v24;
  *&v17[*(v12 + 36)] = Color.init(uiColor:)();
  v26 = a1[1];
  v46 = *a1;
  v47 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
  v27 = State.wrappedValue.getter();
  LOBYTE(v24) = (*(*v45 + 240))(v27);

  if (v24)
  {
    v28 = v20[22];
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = v28;
    v4[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AA4TextVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AA4TextVtGGMR);
    closure #2 in closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter(&v4[*(v29 + 44)]);
    v30 = v20[21];
    v31 = swift_getKeyPath();
    v32 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGMR) + 36)];
    *v32 = v31;
    v32[1] = v30;

    *&v4[*(v39 + 36)] = static Color.red.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v33 = v38;
    View.accessibilityIdentifier(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v4, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
    outlined init with take of IDView<ContactCardHeader, CNContact>(v33, v11, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGMR);
    v18 = 0;
  }

  (*(v41 + 56))(v11, v18, 1, v42);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v17, v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMR);
  v34 = v43;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v11, v43, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMR);
  v35 = v44;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v14, v44, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMR);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATG_ACyACyACyAEyAGyAO_AXtGGA12_GATGA5_GSgtMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATG_ACyACyACyAEyAGyAO_AXtGGA12_GATGA5_GSgtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v34, v35 + *(v36 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v11, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v17, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v34, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMR);

  return result;
}

double closure #1 in closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v55 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGMR);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v8 = (&v55 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails6HeaderV22TitleIconConfigurationVSgMd, &_s20CommunicationDetails6HeaderV22TitleIconConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for Header.TitleIconConfiguration(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v60 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v55 - v19;
  type metadata accessor for MainActor();
  v59 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *a1;
  v21 = a1[1];
  *&v71[0] = *a1;
  *(&v71[0] + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd, &_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMR);
  v22 = State.wrappedValue.getter();
  (*(*v64 + 216))(v71, v22);

  LOBYTE(v64) = v71[0];
  Header.SwiftUIContainerView.titleIconConfiguration(for:)(&v64, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v11, &_s20CommunicationDetails6HeaderV22TitleIconConfigurationVSgMd, &_s20CommunicationDetails6HeaderV22TitleIconConfigurationVSgMR);
    v23 = 1;
    v24 = v58;
    v25 = v57;
  }

  else
  {
    outlined init with take of Header.StyleGuide(v11, v15, type metadata accessor for Header.TitleIconConfiguration);

    v26 = Image.init(systemName:)();
    v27 = *(v12 + 24);
    KeyPath = swift_getKeyPath();
    v29 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR) + 36));
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v31 = type metadata accessor for Image.Scale();
    (*(*(v31 - 8) + 16))(v29 + v30, &v15[v27], v31);
    *v29 = KeyPath;
    *v8 = v26;
    v32 = *(v15 + 2);

    outlined destroy of BlendedColor(v15, type metadata accessor for Header.TitleIconConfiguration);
    v25 = v57;
    *(v8 + *(v57 + 36)) = v32;
    v33 = v8;
    v24 = v58;
    outlined init with take of IDView<ContactCardHeader, CNContact>(v33, v58, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGMR);
    v23 = 0;
  }

  (*(v56 + 56))(v24, v23, 1, v25);
  *&v71[0] = v20;
  *(&v71[0] + 1) = v21;
  v34 = State.wrappedValue.getter();
  v35 = (*(*v64 + 248))(v34);
  v37 = v36;

  *&v71[0] = v35;
  *(&v71[0] + 1) = v37;
  lazy protocol witness table accessor for type String and conformance String(v38, v39, v40);
  v41 = Text.init<A>(_:)();
  v43 = v42;
  LOBYTE(v37) = v44;
  v46 = v45;
  v47 = swift_getKeyPath();
  v48 = swift_getKeyPath();
  v70 = v37 & 1;
  v69 = 0;
  *&v64 = v41;
  *(&v64 + 1) = v43;
  LOBYTE(v65) = v37 & 1;
  *(&v65 + 1) = v46;
  *&v66 = v47;
  *(&v66 + 1) = 2;
  LOBYTE(v67) = 0;
  *(&v67 + 1) = v48;
  v68 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  v49 = v61;
  View.accessibilityIdentifier(_:)();
  v71[2] = v66;
  v71[3] = v67;
  v72 = v68;
  v71[0] = v64;
  v71[1] = v65;
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v71, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMR);
  v50 = v60;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v24, v60, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMR);
  v51 = v63;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v49, v63, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMR);
  v52 = v62;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v50, v62, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMR);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSg_ACyACyACyAA4TextVAGySiSgGGAGyAA0N9AlignmentOGGAA023AccessibilityAttachmentI0VGtMd, _s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSg_ACyACyACyAA4TextVAGySiSgGGAGyAA0N9AlignmentOGGAA023AccessibilityAttachmentI0VGtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v51, v52 + *(v53 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v49, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v24, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v51, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v50, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMR);

  return result;
}

double closure #2 in closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23._countAndFlagsBits - v6);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = Image.init(systemName:)();
  v9 = (v7 + *(v2 + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v11 = *MEMORY[0x1E69816C8];
  v12 = type metadata accessor for Image.Scale();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  v13._countAndFlagsBits = 0x64656B636F6C42;
  v13._object = 0xE700000000000000;
  v23 = LocalizedString(_:)(v13);
  lazy protocol witness table accessor for type String and conformance String(v23._countAndFlagsBits, v23._object, v14);
  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(v9) = v18;
  v20 = v19;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v7, v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v4, a1, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGG_AA4TextVtMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGG_AA4TextVtMR) + 48);
  *v21 = v15;
  *(v21 + 8) = v17;
  *(v21 + 16) = v9 & 1;
  *(v21 + 24) = v20;
  outlined copy of Text.Storage(v15, v17, v9 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  outlined consume of Text.Storage(v15, v17, v9 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);

  return result;
}

void protocol witness for View.body.getter in conformance Header.SwiftUIContainerView(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA08_PaddingG0VGAA12_ScaleEffectVGAMyAMyAA0F0VyAIyAMyAMyAA6HStackVyAIyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA5_0S0OGGAA016_ForegroundStyleZ0VyAA5ColorVGGSg_AMyAMyAMyAA4TextVA7_ySiSgGGA7_yAA13TextAlignmentOGGAA023AccessibilityAttachmentZ0VGtGGA7_yAA4FontVSgGGA16_G_AMyAMyAMyA3_yAIyA11__A20_tGGA36_GA16_GA29_GSgtGGAWGAZGG_AMyAA6SpacerVAA06_FrameG0VGAMyAMyAMyAMyAMyAMy20CommunicationDetails21QuickActionsContainerVAA08_OpacityT0VGAA05_BlurT0VGAA010_BlendModeT0VGAA07_OffsetT0VGAZGAA06_TraityZ0VyAA011ZIndexTraitX0VGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA08_PaddingG0VGAA12_ScaleEffectVGAMyAMyAA0F0VyAIyAMyAMyAA6HStackVyAIyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA5_0S0OGGAA016_ForegroundStyleZ0VyAA5ColorVGGSg_AMyAMyAMyAA4TextVA7_ySiSgGGA7_yAA13TextAlignmentOGGAA023AccessibilityAttachmentZ0VGtGGA7_yAA4FontVSgGGA16_G_AMyAMyAMyA3_yAIyA11__A20_tGGA36_GA16_GA29_GSgtGGAWGAZGG_AMyAA6SpacerVAA06_FrameG0VGAMyAMyAMyAMyAMyAMy20CommunicationDetails21QuickActionsContainerVAA08_OpacityT0VGAA05_BlurT0VGAA010_BlendModeT0VGAA07_OffsetT0VGAZGAA06_TraityZ0VyAA011ZIndexTraitX0VGGtGGMR);
  closure #1 in Header.SwiftUIContainerView.body.getter(v2, a2 + *(v4 + 44));
}

void type metadata completion function for Header.SwiftUIContainerView(uint64_t a1)
{
  type metadata accessor for State<Header.ViewModel>(319, &lazy cache variable for type metadata for State<Header.ViewModel>, type metadata accessor for Header.ViewModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FocusState<Bool>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Header.StyleGuide(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for State<Header.ViewModel>(319, &lazy cache variable for type metadata for Environment<QuickActionsContainerDelegateWrapper>, type metadata accessor for QuickActionsContainerDelegateWrapper, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for State<Header.ViewModel>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for QuickActionsContainer.Pool();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for FocusState<Bool>()
{
  if (!lazy cache variable for type metadata for FocusState<Bool>)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusState<Bool>);
    }
  }
}

void type metadata accessor for State<Header.ViewModel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Modif (&lazy protocol witness table cache variable for type IDView<ContactCardHeader, CNContact> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMd, &_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMR, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Modif (&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_AGyAGyAGyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_AGyAGyAGyAIyAEyAQ_AZtGGA14_GAVGA7_GSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_AGyAGyAGyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_AGyAGyAGyAIyAEyAQ_AZtGGA14_GAVGA7_GSgtGGMR, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t type metadata accessor for CNMutableContact()
{
  result = lazy cache variable for type metadata for CNMutableContact;
  if (!lazy cache variable for type metadata for CNMutableContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNMutableContact);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Modif (&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Modif (&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Header.StyleGuide(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of BlendedColor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of IDView<ContactCardHeader, CNContact>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

char *QuickActionsContainerView.__allocating_init(contacts:requestedQuickActions:styleGuide:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized QuickActionsContainerView.init(contacts:requestedQuickActions:styleGuide:delegate:)(a1, a2, a3, a4);

  return v10;
}

char *QuickActionsContainerView.init(contacts:requestedQuickActions:styleGuide:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized QuickActionsContainerView.init(contacts:requestedQuickActions:styleGuide:delegate:)(a1, a2, a3, a4);

  return v4;
}

id QuickActionsContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void QuickActionsContainerView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model) = 0;
  v1 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMd, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMR);
  v3 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_customActionButtons;
  *(v0 + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(v2, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMd, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMR);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void QuickActionsContainerView.setupSubviews()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setAxis_];
  v3 = &v1[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_styleGuide];
  v4 = type metadata accessor for Header.StyleGuide(0);
  v5 = &v3[*(v4 + 124)];
  if (v5[8])
  {
    [v2 setDistribution_];
  }

  else
  {
    [v2 setSpacing_];
  }

  [v2 setAlignment_];
  v61 = v2;
  [v61 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = *&v3[*(v4 + 144)];
  v7 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = *(v8 + 16);
  v62 = v1;
  if (v9)
  {
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(v9, 0, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMR);
    v58 = specialized Sequence._copySequenceContents(initializing:)(v63, v10 + 32, v9, v8);
    v11 = v63[0];
    swift_bridgeObjectRetain_n();
    outlined consume of [QuickActionView.ButtonType : QuickActionView].Iterator._Variant(v11);
    if (v58 != v9)
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v63[0] = v10;
  v57 = v6;
  specialized MutableCollection<>.sort(by:)(v63, v6);

  v59 = v63[0];
  v12 = *(v63[0] + 2);
  if (v12)
  {
    type metadata accessor for MainActor();
    v13 = (v59 + 32);
    for (i = v12 - 1; ; --i)
    {
      v16 = *v13++;
      v15 = v16;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v17 = *&v1[v7];
      if (*(v17 + 16))
      {

        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v18, v19);
        if (v21)
        {
          v22 = *(*(v17 + 56) + 8 * v20);

          [v61 addArrangedSubview_];
          [*&v22[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_button] addTarget:v62 action:sel_handleAction_ forControlEvents:64];

          v1 = v62;
          if (!i)
          {
            break;
          }
        }

        else
        {

          if (!i)
          {
            break;
          }
        }
      }

      else
      {

        if (!i)
        {
          break;
        }
      }
    }
  }

  v23 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_customActionButtons;
  swift_beginAccess();
  v24 = *&v1[v23];
  v25 = *(v24 + 16);
  if (!v25)
  {

    v26 = MEMORY[0x1E69E7CC0];
    v29 = v57;
    goto LABEL_23;
  }

  v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(*(v24 + 16), 0, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMR);
  v27 = specialized Sequence._copySequenceContents(initializing:)(v63, v26 + 32, v25, v24);
  v28 = v63[0];
  v10 = v63[1];
  swift_bridgeObjectRetain_n();
  outlined consume of [QuickActionView.ButtonType : QuickActionView].Iterator._Variant(v28);
  v29 = v57;
  if (v27 != v25)
  {
LABEL_36:
    __break(1u);

    __break(1u);
    return;
  }

  v1 = v62;
LABEL_23:
  v63[0] = v26;
  specialized MutableCollection<>.sort(by:)(v63, v29);

  v60 = v63[0];
  v30 = *(v63[0] + 2);
  if (v30)
  {
    type metadata accessor for MainActor();
    v31 = (v60 + 32);
    for (j = v30 - 1; ; --j)
    {
      v35 = *v31++;
      v34 = v35;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v36 = *&v1[v23];
      if (*(v36 + 16))
      {

        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v37, v38);
        if (v40)
        {
          v33 = *(*(v36 + 56) + 8 * v39);

          [v61 addArrangedSubview_];

          v1 = v62;
          if (!j)
          {
            break;
          }
        }

        else
        {

          if (!j)
          {
            break;
          }
        }
      }

      else
      {

        if (!j)
        {
          break;
        }
      }
    }
  }

  [v1 addSubview_];
  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1901E5DD0;
  v43 = v1;
  v44 = [v61 topAnchor];
  v45 = [v43 topAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v42 + 32) = v46;
  v47 = [v61 bottomAnchor];
  v48 = [v43 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v42 + 40) = v49;
  v50 = [v61 leadingAnchor];
  v51 = [v43 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v42 + 48) = v52;
  v53 = [v61 trailingAnchor];

  v54 = [v43 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v42 + 56) = v55;
  _sSo18NSLayoutConstraintCMaTm_0(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];
}

Swift::Void __swiftcall QuickActionsContainerView.setContacts(_:)(Swift::OpaquePointer a1)
{
  v2 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
  swift_beginAccess();
  v31 = v1;
  v3 = *&v1[v2];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(*(v3 + 16), 0, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMR);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v32, v5 + 32, v4, v3);
    v7 = v32;
    swift_bridgeObjectRetain_n();
    outlined consume of [QuickActionView.ButtonType : QuickActionView].Iterator._Variant(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v32 = v5;
  specialized MutableCollection<>.sort(by:)(&v32);

  v8 = &v31[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_styleGuide];
  v9 = &v8[*(type metadata accessor for Header.StyleGuide(0) + 144)];
  v10 = *v9;
  v11 = *&v31[v2];
  v12 = *(v11 + 16);
  if (v12)
  {
    v29 = *v9;
    v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(v12, 0, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMR);
    v14 = specialized Sequence._copySequenceContents(initializing:)(&v32, v13 + 32, v12, v11);
    v15 = v32;
    swift_bridgeObjectRetain_n();
    outlined consume of [QuickActionView.ButtonType : QuickActionView].Iterator._Variant(v15);
    if (v14 != v12)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v10 = v29;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v32 = v13;
  specialized MutableCollection<>.sort(by:)(&v32, v10);

  v16 = v32;
  v17 = *(v32 + 2);
  if (v17)
  {
    type metadata accessor for MainActor();
    v18 = (v16 + 32);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = *v18++;
      v21 = v22;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v23 = QuickActionView.ButtonType.cnActionType.getter(v21);
      v25 = v24;

      if (v25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v19);
        }

        *(v19 + 2) = v27 + 1;
        v20 = &v19[16 * v27];
        *(v20 + 4) = v23;
        *(v20 + 5) = v25;
      }

      --v17;
    }

    while (v17);
  }

  QuickActionsContainerView.groupActions(for:)(a1._rawValue);
  type metadata accessor for CNContactHeaderQuickActionsModel();
  swift_allocObject();
  v28 = v31;

  *&v28[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model] = CNContactHeaderQuickActionsModel.init(contacts:actionTypes:groupActionsPerType:container:)();
}

id QuickActionsContainerView.view(forActionType:)(uint64_t a1, uint64_t a2)
{

  v5 = QuickActionView.ButtonType.init(actionType:)(a1, a2);
  if (v5 == 5)
  {
    _StringGuts.grow(_:)(74);
    MEMORY[0x193AEA970](0xD00000000000002ELL, 0x80000001901FFFF0);
    MEMORY[0x193AEA970](a1, a2);
    MEMORY[0x193AEA970](0xD00000000000001ALL, 0x8000000190200020);
  }

  else
  {
    v6 = v5;
    v7 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v9, v10);
      if (v12)
      {
        v13 = *(*(v8 + 56) + 8 * v11);

        return v13;
      }
    }

    _StringGuts.grow(_:)(52);
    MEMORY[0x193AEA970](0xD000000000000022, 0x8000000190200040);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193AEA970](0xD000000000000010, 0x8000000190200070);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t QuickActionsContainerView.handleAction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = QuickActionView.ButtonType.cnActionType.getter(*(a1 + OBJC_IVAR____TtCC20CommunicationDetails15QuickActionView6Button_type));
  if (v9)
  {
    v10 = result;
    v11 = v9;
    v12 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v12, v4);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);
      _os_log_impl(&dword_190119000, v13, v14, "Quick action button pressed for action type: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193AEBB30](v16, -1, -1);
      MEMORY[0x193AEBB30](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    if (*(v2 + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model))
    {

      dispatch thunk of CNContactHeaderQuickActionsModel.buttonPressed(for:)();
    }
  }

  return result;
}

unint64_t QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v130);
  v132 = v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v131 = v121 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = v121 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v128 = v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v129 = v121 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v134 = v121 - v18;
  v19 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
  v135 = *(v19 - 8);
  v136 = v19;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v121 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v121 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = a1;
  v31 = v121 - v30;
  if (v29 >> 62)
  {
    if (v29 < 0)
    {
      v118 = v29;
    }

    else
    {
      v118 = v29 & 0xFFFFFFFFFFFFFF8;
    }

    v123 = v27;
    v133 = v29;
    v119 = MEMORY[0x193AEB0F0](v118, v28);
    v29 = v133;
    v27 = v123;
    if (v119 >= 2)
    {
LABEL_3:
      v133 = v29;
      v122 = v9;
      v123 = v27;
      v124 = v7;
      v138 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v126 = v31;
      CNContactHeaderQuickActionsGroupAction.init(actionBlock:)();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v125 = v25;
      v32 = CNContactHeaderQuickActionsGroupAction.init(actionBlock:)();
      v33 = *(**(v1 + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_delegate) + 120);
      v34 = v33(v32);
      v121[0] = v6;
      if (v34 && (v36 = v35, ObjectType = swift_getObjectType(), LOBYTE(v137) = 2, LOBYTE(v36) = (*(v36 + 24))(&v137, ObjectType, v36), swift_unknownObjectRelease(), (v36 & 1) != 0))
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        (*(v135 + 16))(v22, v126, v136);
        v41 = v138;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137 = v41;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v38, v40, isUniquelyReferenced_nonNull_native);

        v138 = v137;
      }

      else
      {
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v134;
        specialized Dictionary._Variant.removeValue(forKey:)(v44, v46, v134);

        v43 = outlined destroy of CNContactHeaderQuickActionsGroupAction?(v45, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMR);
      }

      if (v33(v43) && (v48 = v47, v49 = swift_getObjectType(), LOBYTE(v137) = 3, LOBYTE(v48) = (*(v48 + 24))(&v137, v49, v48), swift_unknownObjectRelease(), (v48 & 1) != 0))
      {
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;
        (*(v135 + 16))(v22, v125, v136);
        v53 = v138;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v53;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v50, v52, v54);

        v138 = v137;
      }

      else
      {
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v134;
        specialized Dictionary._Variant.removeValue(forKey:)(v55, v57, v134);

        outlined destroy of CNContactHeaderQuickActionsGroupAction?(v56, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMR);
      }

      v58 = [objc_allocWithZone(MEMORY[0x1E695CF10]) init];
      v121[1] = _sSo18NSLayoutConstraintCMaTm_0(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v60 = [v58 messageUrlForContacts_];

      if (v60)
      {
        v61 = v129;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = v128;
        (*(v13 + 16))(v128, v61, v12);
        v63 = (*(v13 + 80) + 16) & ~*(v13 + 80);
        v64 = swift_allocObject();
        (*(v13 + 32))(v64 + v63, v62, v12);
        CNContactHeaderQuickActionsGroupAction.init(actionBlock:)();
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
        v69 = v135;
        v68 = v136;
        v70 = v123;
        (*(v135 + 16))(v123, v22, v136);
        v71 = v138;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v71;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v65, v67, v72);

        (*(v69 + 8))(v22, v68);
        (*(v13 + 8))(v61, v12);
        v138 = v137;
      }

      else
      {
        v73 = Logger.detailsViewController.unsafeMutableAddressor();
        v74 = v124;
        v75 = v127;
        v76 = v121[0];
        (*(v124 + 16))(v127, v73, v121[0]);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_190119000, v77, v78, "Unable to build recipient url for at least one of the contacts, disabling group message.", v79, 2u);
          v80 = v79;
          v74 = v124;
          MEMORY[0x193AEBB30](v80, -1, -1);
        }

        (*(v74 + 8))(v75, v76);
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v134;
        specialized Dictionary._Variant.removeValue(forKey:)(v81, v83, v134);

        outlined destroy of CNContactHeaderQuickActionsGroupAction?(v82, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMR);
      }

      v130 = swift_allocBox();
      v85 = v84;
      v86 = *(v13 + 56);
      v87 = 1;
      v86(v84, 1, 1, v12);
      v88 = [objc_allocWithZone(MEMORY[0x1E695CEF0]) init];
      v89 = Array._bridgeToObjectiveC()().super.isa;
      v90 = [v88 mailUrlForContacts:v89 needsEmailAddresses:1];

      v91 = v131;
      if (v90)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v87 = 0;
      }

      v86(v91, v87, 1, v12);
      outlined assign with take of URL?(v91, v85);
      v92 = v132;
      _s10Foundation3URLVSgWOcTm_1(v85, v132, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v93 = (*(v13 + 48))(v92, 1, v12);
      outlined destroy of CNContactHeaderQuickActionsGroupAction?(v92, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v93 == 1)
      {
        v94 = Logger.detailsViewController.unsafeMutableAddressor();
        v95 = v124;
        v96 = v121[0];
        (*(v124 + 16))(v122, v94, v121[0]);
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.info.getter();
        v99 = os_log_type_enabled(v97, v98);
        v100 = v125;
        if (v99)
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_190119000, v97, v98, "List of contacts has at least one non-email recipient, disabling group email quick action.", v101, 2u);
          v102 = v101;
          v95 = v124;
          MEMORY[0x193AEBB30](v102, -1, -1);
        }

        (*(v95 + 8))(v122, v96);
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v134;
        specialized Dictionary._Variant.removeValue(forKey:)(v103, v105, v134);

        outlined destroy of CNContactHeaderQuickActionsGroupAction?(v104, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMR);
        v106 = v136;
        v107 = *(v135 + 8);
        v107(v100, v136);
        v107(v126, v106);

        return v138;
      }

      else
      {

        CNContactHeaderQuickActionsGroupAction.init(actionBlock:)();
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;
        v113 = v135;
        v112 = v136;
        v114 = v123;
        (*(v135 + 16))(v123, v22, v136);
        v115 = v138;
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v115;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v114, v109, v111, v116);

        v117 = *(v113 + 8);
        v117(v22, v112);
        v117(v125, v112);
        v117(v126, v112);

        return v137;
      }
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_3;
  }

  v120 = MEMORY[0x1E69E7CC0];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVTt0g5Tf4g_n(v120);
}

double closure #1 in QuickActionsContainerView.groupActions(for:)(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_190119000, v11, v12, a3, v13, 2u);
    MEMORY[0x193AEBB30](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v15 = *(Strong + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_delegate), v16 = Strong, , v16, v17 = (*(*v15 + 120))(), v19 = v18, , v17))
  {
    ObjectType = swift_getObjectType();
    HIBYTE(v22) = a4;
    (*(v19 + 8))(&v22 + 7, ObjectType, v19);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

double closure #3 in QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v27 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = v25 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v25[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v8 + 16))(v10, v11, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[0] = v3;
    v15 = v2;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_190119000, v12, v13, "Quick action to send message to group pressed.", v14, 2u);
    v17 = v16;
    v2 = v15;
    v3 = v25[0];
    MEMORY[0x193AEBB30](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v18 = type metadata accessor for TaskPriority();
  v19 = v26;
  (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
  v20 = v27;
  (*(v3 + 16))(v27, a1, v2);
  v21 = static MainActor.shared.getter();
  v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = MEMORY[0x1E69E85E0];
  (*(v3 + 32))(v23 + v22, v20, v2);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:), v23);

  return result;
}

uint64_t closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v7;
  v4[25] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:), v7, v6);
}

uint64_t closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:)()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = [objc_opt_self() sharedApplication];
  v0[26] = v4;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v0[27] = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey();
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[28] = isa;

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:);
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_9;
  [v4 openURL:v7 options:isa completionHandler:?];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:), v2, v1);
}

{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 144);

  *v4 = *(v0 + 232);

  v5 = *(v0 + 8);

  return v5();
}

double closure #4 in QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v9 = MEMORY[0x1E69E85E0];
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v10, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_190119000, v11, v12, "Quick action to send email to group pressed.", v13, 2u);
    v14 = v13;
    v9 = MEMORY[0x1E69E85E0];
    MEMORY[0x193AEBB30](v14, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v9;
  v17[4] = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:), v17);

  return result;
}

uint64_t closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[25] = swift_task_alloc();
  v4[26] = swift_projectBox();
  type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v7;
  v4[29] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:), v7, v6);
}

uint64_t closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:)()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = [objc_opt_self() sharedApplication];
  v0[30] = v3;
  swift_beginAccess();
  _s10Foundation3URLVSgWOcTm_1(v1, v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v8 = v0[25];
    URL._bridgeToObjectiveC()(v6);
    v7 = v9;
    (*(v5 + 8))(v8, v4);
  }

  v0[31] = v7;
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:);
  swift_continuation_init();
  v0[17] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_35;
  [v3 openURL:v7 withCompletionHandler:v0 + 10];
  (*(v11 + 8))(boxed_opaque_existential_0, v12);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:), v2, v1);
}

{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 168);

  *v3 = *(v0 + 256);

  v4 = *(v0 + 8);

  return v4();
}

id QuickActionsContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id QuickActionsContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickActionsContainerView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x193AEA8E0](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance UIApplicationOpenExternalURLOptionsKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x193AEA990](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIApplicationOpenExternalURLOptionsKey(void *a1, uint64_t *a2)
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x193AEA8E0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_8(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()(v10);
      v11 = v22;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
    v21 = *(v13 - 8);
    v14.n128_f64[0] = (*(v21 + 32))(a3, v12 + *(v21 + 72) * v8, v13);
    specialized _NativeDictionary._delete(at:)(v8, v11, v14);
    *v4 = v11;
    v15 = *(v21 + 56);
    v16 = a3;
    v17 = 0;
    v18 = v13;
  }

  else
  {
    v19 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v47 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10ContactsUI38CNContactHeaderQuickActionsGroupActionVGMd, &_ss18_DictionaryStorageCySS10ContactsUI38CNContactHeaderQuickActionsGroupActionVGMR);
  v44 = v5;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v40 = v3;
    v41 = (v6 + 16);
    v42 = v8;
    v43 = v6;
    v45 = (v6 + 32);
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v43 + 72);
      v29 = v24 + v28 * v23;
      if (v44)
      {
        (*v45)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      (*v45)((*(v10 + 56) + v28 * v18), v46, v47);
      ++*(v10 + 16);
      v8 = v42;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v4 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v4 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v4 = v10;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v8;
  if (*(v7 + 16))
  {
    v35 = v7;
    v12 = 0;
    v13 = (v7 + 64);
    v14 = 1 << *(v7 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v7 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v8 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v7 + 56);
      v25 = *(*(v7 + 48) + v23);
      v26 = *(v24 + 8 * v23);
      if ((v36 & 1) == 0)
      {
        v8 = v26;
      }

      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(v8, v9, v10);
      v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v8 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + v19) = v25;
      *(*(v11 + 56) + 8 * v19) = v26;
      ++*(v11 + 16);
      v7 = v35;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v11;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v4);
      v14 = (v12 + 16 * v7);
      if (v4 != v7 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for CNContactHeaderQuickActionsGroupAction() - 8) + 72);
      v17 = v16 * v4;
      result = v15 + v16 * v4;
      v18 = v16 * v7;
      v19 = v15 + v16 * v7 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __n128 a6)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void specialized _NativeDictionary.copy()(__n128 a1)
{
  v2 = v1;
  v36 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10ContactsUI38CNContactHeaderQuickActionsGroupActionVGMd, &_ss18_DictionaryStorageCySS10ContactsUI38CNContactHeaderQuickActionsGroupActionVGMR);
  v4 = *v1;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v2;
    v32 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v6;
  }
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v84 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
    }

    v75 = *(v10 + 2);
    if (v75 >= 2)
    {
      while (1)
      {
        v76 = *v7;
        if (!*v7)
        {
          goto LABEL_128;
        }

        v7 = (v75 - 1);
        v77 = *&v10[16 * v75];
        v78 = *&v10[16 * v75 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(&v76[v77], &v76[*&v10[16 * v75 + 16]], &v76[v78], v5);
        if (v6)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v75 - 2 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v10[16 * v75];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = specialized Array.remove(at:)(v7);
        v75 = *(v10 + 2);
        v7 = a3;
        if (v75 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v82 = v6;
      v5 = *v7;
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(result, a2, a3);
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      v13 = v11;
      v14 = result;
      v81 = v13;
      while (v8 - 2 != v13)
      {
        result = dispatch thunk of static Comparable.< infix(_:_:)();
        ++v13;
        if ((v14 & 1) != (result & 1))
        {
          v8 = v13 + 1;
          break;
        }
      }

      v6 = v82;
      v7 = a3;
      if (v14)
      {
        v11 = v81;
        if (v8 < v81)
        {
          goto LABEL_121;
        }

        if (v81 < v8)
        {
          v15 = v8 - 1;
          v16 = v81;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v17 = v19[v16];
              v19[v16] = v19[v15];
              v19[v15] = v17;
            }
          }

          while (++v16 < v15--);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v11 = v81;
      }
    }

    v20 = v7[1];
    if (v12 < v20)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_120;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 >= v20)
        {
          v21 = v7[1];
        }

        else
        {
          v21 = (v11 + a4);
        }

        if (v21 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v12 != v21)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v12 < v11)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v88 = v12;
    v28 = v6;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v30 = *(v10 + 2);
    v29 = *(v10 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v31;
    v32 = &v10[16 * v30];
    *(v32 + 4) = v11;
    *(v32 + 5) = v88;
    v33 = *v84;
    if (!*v84)
    {
      goto LABEL_129;
    }

    if (v30)
    {
      v6 = v28;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v10 + 4);
          v36 = *(v10 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_61:
          if (v38)
          {
            goto LABEL_108;
          }

          v51 = &v10[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_111;
          }

          v57 = &v10[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_115;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v61 = &v10[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_75:
        if (v56)
        {
          goto LABEL_110;
        }

        v64 = &v10[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_113;
        }

        if (v67 < v55)
        {
          goto LABEL_4;
        }

LABEL_82:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v7)
        {
          goto LABEL_126;
        }

        v73 = *&v10[16 * v72 + 32];
        v5 = *&v10[16 * v34 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v7)[v73], &(*v7)[*&v10[16 * v34 + 32]], &v5[*v7], v33);
        if (v6)
        {
        }

        if (v5 < v73)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v72 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v74 = &v10[16 * v72];
        *(v74 + 4) = v73;
        *(v74 + 5) = v5;
        result = specialized Array.remove(at:)(v34);
        v31 = *(v10 + 2);
        if (v31 <= 1)
        {
          goto LABEL_4;
        }
      }

      v39 = &v10[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_106;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_107;
      }

      v46 = &v10[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_109;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_112;
      }

      if (v50 >= v42)
      {
        v68 = &v10[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_116;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v6 = v28;
LABEL_4:
    v8 = v7[1];
    v9 = v88;
    if (v88 >= v8)
    {
      goto LABEL_92;
    }
  }

  v83 = v6;
  v22 = *v7;
  lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(result, a2, a3);
  v23 = &v22[v12];
  v24 = v11 - v12;
  v86 = v21;
LABEL_33:
  v87 = v12;
  v25 = v24;
  v5 = v23;
  while (1)
  {
    result = dispatch thunk of static Comparable.< infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_32:
      ++v12;
      ++v23;
      --v24;
      if ((v87 + 1) != v86)
      {
        goto LABEL_33;
      }

      v12 = v86;
      v6 = v83;
      v7 = a3;
      goto LABEL_40;
    }

    if (!v22)
    {
      break;
    }

    v26 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}