uint64_t closure #1 in MOSuggestionSheetPrivacyOverlayView.updateClientLabel()(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetPrivacyOverlayView.updateClientLabel();
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_26_0;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

void closure #1 in closure #1 in MOSuggestionSheetPrivacyOverlayView.updateClientLabel()(void *a1, void *a2, uint64_t a3, NSString a4)
{
  if (a1)
  {
    v6 = a1;
    v19 = [v6 content];
    v7 = [objc_allocWithZone(UIImageView) initWithImage:v19];
    v8 = OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView;
    v9 = *(a2 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView);
    *(a2 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView) = v7;

    v10 = [objc_allocWithZone(UILabel) init];
    v11 = OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel;
    v12 = *(a2 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel);
    *(a2 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel) = v10;
    v13 = v10;

    if (v13)
    {
      if (a4)
      {
        a4 = String._bridgeToObjectiveC()();
      }

      [v13 setText:a4];
    }

    v14 = *(a2 + v8);
    if (v14)
    {
      v15 = *(a2 + v11);
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        [a2 addSubview:v16];
        v18 = [a2 addSubview:v17];
        (*((swift_isaMask & *a2) + 0xB8))(v18);
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetPrivacyOverlayView.layoutIconAndLabels()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel);
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5 = [v3 heightAnchor];
      v6 = [v5 constraintEqualToConstant:35.0];

      [v6 setActive:1];
      v7 = [v3 widthAnchor];
      v8 = [v7 constraintEqualToConstant:35.0];

      [v8 setActive:1];
      v9 = [v3 superview];
      if (v9)
      {
        v10 = v9;
        [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
        v11 = [v3 leadingAnchor];
        v12 = [v10 leadingAnchor];
        v13 = [v11 constraintEqualToAnchor:v12];

        [v13 setConstant:25.0];
        [v13 setActive:1];
      }

      v14 = [v3 superview];
      if (v14)
      {
        v15 = v14;
        [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
        v16 = [v3 topAnchor];
        v17 = [v15 topAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];

        [v18 setConstant:60.0];
        [v18 setActive:1];
      }

      v19 = v4;
      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v19 topAnchor];
      v21 = [v3 topAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      [v22 setActive:1];
      v23 = [v19 bottomAnchor];
      v24 = [v3 bottomAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];

      [v25 setActive:1];
      v26 = [v19 leadingAnchor];

      v27 = [v3 trailingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:10.0];

      [v28 setActive:1];
      v29 = [v19 superview];
      if (v29)
      {
        v30 = v29;
        [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
        v31 = [v19 trailingAnchor];
        v32 = [v30 trailingAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];

        [v33 setConstant:25.0];
        [v33 setActive:1];
      }

      v34 = [objc_opt_self() whiteColor];
      [v19 setTextColor:v34];
    }
  }
}

void MOSuggestionSheetPrivacyOverlayView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionSheetPrivacyOverlayView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetPrivacyOverlayView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100246DC4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100246E10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100246E48()
{

  return _swift_deallocObject(v0, 48, 7);
}

double MOSuggestionCarouselAssetCell.assetViewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((swift_isaMask & *v1) + 0xF0))(v4);

  return result;
}

uint64_t (*MOSuggestionCarouselAssetCell.assetViewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionCarouselAssetCell.assetViewModel.modify;
}

uint64_t MOSuggestionCarouselAssetCell.assetViewModel.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0xF0))(result);
  }

  return result;
}

void *MOSuggestionCarouselAssetCell.keyColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_keyColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionCarouselAssetCell.keyColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_keyColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_checkPlatterView);
    v7 = v5;
    if (v6)
    {
      v8 = *((swift_isaMask & *v6) + 0x88);
      v7 = v6;
      v8(v5);
    }
  }
}

uint64_t (*MOSuggestionCarouselAssetCell.keyColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_keyColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionCarouselAssetCell.keyColor.modify;
}

void MOSuggestionCarouselAssetCell.keyColor.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    if (v5)
    {
      v6 = *(v4 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_checkPlatterView);
      if (v6)
      {
        v7 = *((swift_isaMask & *v6) + 0x88);
        v8 = v5;
        v9 = v6;
        v7(v8);
      }
    }
  }

  free(v3);
}

id MOSuggestionCarouselAssetCell.isSelected.getter(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  return objc_msgSendSuper2(&v3, "isSelected");
}

void MOSuggestionCarouselAssetCell.isSelected.setter(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  objc_msgSendSuper2(&v6, "setSelected:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_checkPlatterView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 isSelected];
    (*((swift_isaMask & *v4) + 0xA0))(v5);
  }
}

Swift::Void __swiftcall MOSuggestionCarouselAssetCell.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetView];
  [v0 bounds];
  [v1 setFrame:?];
}

Swift::Void __swiftcall MOSuggestionCarouselAssetCell.setAssetViewModel()()
{
  v1 = *((swift_isaMask & *v0) + 0xA8);
  v2 = v1();
  if (v2)
  {
    (*(*v2 + 808))(1);
  }

  v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetView);
  v3 = v1();
  (*((swift_isaMask & *v4) + 0xA0))(v3);
}

void MOSuggestionCarouselAssetCell.addSelectButton()()
{
  v1 = [objc_allocWithZone(type metadata accessor for CanvasAssetAccessoryView()) initWithFrame:{0.0, 0.0, 22.0, 22.0}];
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_checkPlatterView];
  *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_checkPlatterView] = v1;
  v18 = v1;

  if (v18)
  {
    [v18 setUserInteractionEnabled:0];
    [v0 addSubview:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = [v18 widthAnchor];
    v4 = [v3 constraintEqualToConstant:28.0];

    [v4 setActive:1];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v18 heightAnchor];
    v6 = [v5 constraintEqualToConstant:28.0];

    [v6 setActive:1];
    v7 = [v18 superview];
    if (v7)
    {
      v8 = v7;
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = [v18 bottomAnchor];
      v10 = [v8 bottomAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];

      if (v11)
      {
        [v11 setConstant:-8.0];
        [v11 setActive:1];
      }
    }

    v12 = [v18 superview];
    if (v12)
    {
      v13 = v12;
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [v18 trailingAnchor];
      v15 = [v13 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];

      [v16 setConstant:-8.0];
      [v16 setActive:1];
    }

    v17 = [v0 isSelected];
    (*((swift_isaMask & *v18) + 0x70))(v17);
  }
}

Swift::Void __swiftcall MOSuggestionCarouselAssetCell.prepareForReuse()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetView];
  v2 = *((swift_isaMask & *v1) + 0xC8);
  v3 = v1;
  v2();
}

id MOSuggestionCarouselAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *specialized MOSuggestionCarouselAssetCell.init(frame:)()
{
  *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_checkPlatterView] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_blurEffectView] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetViewModel] = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_keyColor] = 0;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  v5 = objc_msgSendSuper2(&v21, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v6 = *&v5[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetView];
  v7 = v5;
  [v7 addSubview:v6];
  v8 = objc_opt_self();
  v9 = [v8 clearColor];
  [v7 setBackgroundColor:v9];

  [v7 setClipsToBounds:0];
  v10 = [v7 layer];

  [v10 setCornerRadius:11.0];
  MOSuggestionCarouselAssetCell.addSelectButton()();
  v11 = [v7 layer];

  v12 = [v8 blackColor];
  v13 = [v12 CGColor];

  [v11 setShadowColor:v13];
  v14 = [v7 layer];

  LODWORD(v15) = 1036831949;
  [v14 setShadowOpacity:v15];

  v16 = [v7 layer];
  [v16 setShadowOffset:{0.0, 2.0}];

  v17 = [v7 layer];
  [v17 setShadowRadius:4.0];

  v18 = [v7 layer];
  [v18 setCornerCurve:kCACornerCurveContinuous];

  v19 = [v7 layer];
  [v19 setShadowPathIsBounds:1];

  return v7;
}

void specialized MOSuggestionCarouselAssetCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_checkPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_blurEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetViewModel) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_keyColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002480C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_100248120(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xB0);

  return v2(v3);
}

uint64_t sub_100248184@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_1002481E0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xE0);
  v4 = *a1;
  return v3(v2);
}

Swift::Void __swiftcall MOSuggestionPickerBadgeIconView.flipToPrivacyIconAfterDelay()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in MOSuggestionPickerBadgeIconView.flipToPrivacyIconAfterDelay();
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v3, v1);
  (*(v19 + 8))(v6, v20);
  v18(v13, v7);
}

void closure #1 in MOSuggestionPickerBadgeIconView.flipToPrivacyIconAfterDelay()(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_C1_1];
  v3 = *&a1[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_C1_1 + 8];
  v4 = *&a1[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_C1_2];
  v5 = *&a1[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_C1_2 + 8];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 2097408;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v11[4] = partial apply for closure #1 in closure #1 in MOSuggestionPickerBadgeIconView.flipToPrivacyIconAfterDelay();
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_6_4;
  v8 = _Block_copy(v11);
  v9 = a1;

  v10 = [v7 initWithDuration:v8 controlPoint1:0.5 controlPoint2:v2 animations:{v3, v4, v5}];
  _Block_release(v8);
  [v10 startAnimation];
}

id MOSuggestionPickerBadgeIconView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MOSuggestionPickerBadgeIconView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *specialized MOSuggestionPickerBadgeIconView.init(frame:)()
{
  v1 = &v0[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_C1_1];
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *v1 = v2;
  *(v1 + 1) = v3;
  v4 = &v0[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_C1_2];
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *v4 = v5;
  *(v4 + 1) = v6;
  v7 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_suggestionsImageView;
  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 imageNamed:v8];

  v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];
  *&v0[v7] = v11;
  v12 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_privacyImageView;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v9 imageNamed:v13];

  v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];
  *&v0[v12] = v15;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v37.receiver = v0;
  v37.super_class = type metadata accessor for MOSuggestionPickerBadgeIconView();
  v19 = objc_msgSendSuper2(&v37, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v20 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_suggestionsImageView;
  v21 = *&v19[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_suggestionsImageView];
  v22 = v19;
  [v21 setAutoresizingMask:18];
  v23 = *&v19[v20];
  v24 = v22;
  v25 = v23;
  [v24 bounds];
  [v25 setFrame:?];

  [v24 addSubview:*&v19[v20]];
  v26 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_privacyImageView;
  [*&v24[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_privacyImageView] setAutoresizingMask:18];
  v27 = *&v24[v26];
  [v24 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v27 setFrame:{v29, v31, v33, v35}];
  [*&v24[v26] setHidden:1];
  [v24 addSubview:*&v24[v26]];

  return v24;
}

void specialized MOSuggestionPickerBadgeIconView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_C1_1);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *v1 = v2;
  v1[1] = v3;
  v4 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_C1_2);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *v4 = v5;
  v4[1] = v6;
  v7 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_suggestionsImageView;
  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 imageNamed:v8];

  v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];
  *(v0 + v7) = v11;
  v12 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_privacyImageView;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v9 imageNamed:v13];

  v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];
  *(v0 + v12) = v15;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100248C74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100248CF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id partial apply for closure #1 in closure #1 in MOSuggestionPickerBadgeIconView.flipToPrivacyIconAfterDelay()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = objc_opt_self();
  v4 = *(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_suggestionsImageView);
  v5 = *(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionPickerBadgeIconView_privacyImageView);

  return [v3 transitionFromView:v4 toView:v5 duration:v1 options:0 completion:0.5];
}

__int128 *NewEntryHeaderConstants.HEADER_LABEL.unsafeMutableAddressor()
{
  if (one-time initialization token for HEADER_LABEL != -1)
  {
    swift_once();
  }

  return &static NewEntryHeaderConstants.HEADER_LABEL;
}

void static NewEntryHeaderConstants.HEADER_FONT.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  if (v3)
  {
    [v0 fontWithDescriptor:v3 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for HEADER_LABEL()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002BB9B0;
  v1._object = 0x80000001002BB990;
  v4._countAndFlagsBits = 0xD000000000000045;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static NewEntryHeaderConstants.HEADER_LABEL = v3;
}

uint64_t static NewEntryHeaderConstants.HEADER_LABEL.getter()
{
  if (one-time initialization token for HEADER_LABEL != -1)
  {
    swift_once();
  }

  v0 = static NewEntryHeaderConstants.HEADER_LABEL;

  return v0;
}

uint64_t MOSuggestionCollectionViewBlankEntrySectionHeaderView.segmentedDelegate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_segmentedDelegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t outlined init with copy of MOSuggestionSheetNewEntryButtonDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService39MOSuggestionSheetNewEntryButtonDelegate_pSgMd, &_s16MomentsUIService39MOSuggestionSheetNewEntryButtonDelegate_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MOSuggestionSheetNewEntryButtonDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService39MOSuggestionSheetNewEntryButtonDelegate_pSgMd, &_s16MomentsUIService39MOSuggestionSheetNewEntryButtonDelegate_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MOSuggestionCollectionViewBlankEntrySectionHeaderView.privacyTipShown.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipShown;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionCollectionViewBlankEntrySectionHeaderView.privacyTipShown.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipShown;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void closure #1 in variable initialization expression of MOSuggestionCollectionViewBlankEntrySectionHeaderView.headerLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:2];
  [v0 setAdjustsFontSizeToFitWidth:1];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    if (one-time initialization token for HEADER_LABEL != -1)
    {
      swift_once();
    }

    v6 = String._bridgeToObjectiveC()();
    [v0 setText:v6];

    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    [v0 setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of MOSuggestionCollectionViewBlankEntrySectionHeaderView.suggestionSegmentedControl()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002A4A00;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3._object = 0xEB00000000646564;
  v16._object = 0xEB00000000646564;
  v3._countAndFlagsBits = 0x6E656D6D6F636552;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0x6E656D6D6F636552;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v16);

  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = v5;
  v6 = [v1 mainBundle];
  v17._object = 0xE600000000000000;
  v7._countAndFlagsBits = 0x746E65636552;
  v7._object = 0xE600000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x746E65636552;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v17);

  *(v0 + 88) = &type metadata for String;
  *(v0 + 64) = v9;
  v10 = objc_allocWithZone(UISegmentedControl);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithItems:isa];

  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_opt_self() secondarySystemBackgroundColor];
  [v13 setBackgroundColor:v14];

  [v13 setSelectedSegmentIndex:0];
  [v13 setHidden:1];

  return v13;
}

double MOSuggestionCollectionViewBlankEntrySectionHeaderView.privacyTipModel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipModel;
  swift_beginAccess();
  *(v1 + v4) = a1;

  v5 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipView;
  if (*(v1 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipView))
  {
    MOSuggestionCollectionViewBlankEntrySectionHeaderView.collapsePrivacyTip()();
  }

  if (*(v1 + v4))
  {
    type metadata accessor for MOSuggestionPrivacyTipCell();
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v7 = [v6 init];
    v8 = *((swift_isaMask & *v7) + 0x88);

    v8(v9);
    v10 = v7;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setHidden:1];

    v11 = *(v2 + v5);
    *(v2 + v5) = v7;
  }

  else
  {
  }

  return result;
}

uint64_t (*MOSuggestionCollectionViewBlankEntrySectionHeaderView.privacyTipModel.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipModel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionCollectionViewBlankEntrySectionHeaderView.privacyTipModel.modify;
}

void MOSuggestionCollectionViewBlankEntrySectionHeaderView.privacyTipModel.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipView;
    v6 = v4;
    if (*(v4 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipView))
    {
      MOSuggestionCollectionViewBlankEntrySectionHeaderView.collapsePrivacyTip()();
      v6 = v3[3];
    }

    if (*(v6 + v3[4]))
    {
      type metadata accessor for MOSuggestionPrivacyTipCell();
      v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v8 = [v7 init];
      v9 = *((swift_isaMask & *v8) + 0x88);

      v9(v10);
      v11 = v8;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v11 setHidden:1];

      v12 = *(v4 + v5);
      *(v4 + v5) = v8;
    }
  }

  free(v3);
}

double MOSuggestionCollectionViewBlankEntrySectionHeaderView.stateOfMindTipModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  if (*(v1 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipView))
  {
    MOSuggestionCollectionViewBlankEntrySectionHeaderView.collapseStateOfMindTip()();
  }

  if (*(v1 + v3))
  {

    MOSuggestionCollectionViewBlankEntrySectionHeaderView.setupStateOfMindTip(model:)();
  }

  return result;
}

uint64_t (*MOSuggestionCollectionViewBlankEntrySectionHeaderView.stateOfMindTipModel.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipModel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionCollectionViewBlankEntrySectionHeaderView.stateOfMindTipModel.modify;
}

void MOSuggestionCollectionViewBlankEntrySectionHeaderView.stateOfMindTipModel.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipView))
    {
      MOSuggestionCollectionViewBlankEntrySectionHeaderView.collapseStateOfMindTip()();
      v4 = v3[3];
    }

    if (*(v4 + v3[4]))
    {

      MOSuggestionCollectionViewBlankEntrySectionHeaderView.setupStateOfMindTip(model:)();
    }
  }

  free(v3);
}

uint64_t MOSuggestionCollectionViewBlankEntrySectionHeaderView.usePublicUI.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_usePublicUI;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionCollectionViewBlankEntrySectionHeaderView.usePublicUI.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_usePublicUI;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.setPublicUI(_:)(Swift::Bool a1)
{
  if (((*((swift_isaMask & *v1) + 0x198))() & 1) != a1)
  {
    if (a1)
    {
      MOSuggestionCollectionViewBlankEntrySectionHeaderView.set3PConstraints()();
    }

    else
    {
      MOSuggestionCollectionViewBlankEntrySectionHeaderView.set1PConstraints()();
    }

    (*((swift_isaMask & *v1) + 0x1A0))(a1);

    [v1 setNeedsLayout];
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.activateTipConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipView];
  if (v1)
  {
    v2 = v1;
    [v0 addSubview:v2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002A48D0;
    v4 = [v2 topAnchor];
    v5 = [*&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl] bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:24.0];

    *(v3 + 32) = v6;
    v7 = [v2 bottomAnchor];

    v8 = [v0 bottomAnchor];
    v9 = [v7 constraintLessThanOrEqualToAnchor:v8];

    *(v3 + 40) = v9;
    v10 = [v2 leadingAnchor];

    v11 = [v0 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

    *(v3 + 48) = v12;
    v13 = [v2 trailingAnchor];

    v14 = [v0 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

    *(v3 + 56) = v15;
    *&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipConstraints] = v3;

    v16 = objc_opt_self();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints:isa];
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.activatePrivacyTipConstraints()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipView);
  if (v1)
  {
    v2 = *((swift_isaMask & *v0) + 0xF0);
    isa = v1;
    if ((v2() & 1) == 0)
    {
      v3 = isa;
      [v0 addSubview:v3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1002A48D0;
      v5 = [(objc_class *)v3 topAnchor];
      v6 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl) bottomAnchor];
      v7 = [v5 constraintEqualToAnchor:v6 constant:24.0];

      *(v4 + 32) = v7;
      v8 = [(objc_class *)v3 bottomAnchor];

      v9 = [v0 bottomAnchor];
      v10 = [v8 constraintLessThanOrEqualToAnchor:v9];

      *(v4 + 40) = v10;
      v11 = [(objc_class *)v3 leadingAnchor];

      v12 = [v0 leadingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];

      *(v4 + 48) = v13;
      v14 = [(objc_class *)v3 trailingAnchor];

      v15 = [v0 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];

      *(v4 + 56) = v16;
      *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipConstraints) = v4;

      v17 = objc_opt_self();
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v17 activateConstraints:isa];
    }
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.updateSelectedSegment(withSegment:)(MomentsUIService::SegmentType withSegment)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = withSegment & 1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in MOSuggestionCollectionViewBlankEntrySectionHeaderView.updateSelectedSegment(withSegment:);
  *(v5 + 24) = v4;
  v9[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_47;
  v6 = _Block_copy(v9);
  v7 = v1;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void MOSuggestionCollectionViewBlankEntrySectionHeaderView.set1PConstraints()()
{
  MOSuggestionCollectionViewBlankEntrySectionHeaderView.clearConstraints()();
  v1 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryButton;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryButton]];
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_headerLabel];
  [v0 addSubview:v2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002A5370;
  v4 = [*&v0[v1] topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] heightAnchor];
  v11 = [v10 constraintEqualToConstant:44.0];

  *(v3 + 48) = v11;
  v12 = [*&v0[v1] leadingAnchor];
  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:24.0];

  *(v3 + 56) = v14;
  v15 = [*&v0[v1] trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-24.0];

  *(v3 + 64) = v17;
  v18 = [v2 topAnchor];
  v19 = [*&v0[v1] bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:24.0];

  *(v3 + 72) = v20;
  v21 = [v2 leadingAnchor];
  v22 = [v0 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:24.0];

  *(v3 + 80) = v23;
  v24 = [v2 trailingAnchor];
  v25 = [v0 trailingAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor:v25];

  *(v3 + 88) = v26;
  v27 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl;
  v28 = [*&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl] topAnchor];
  v29 = [v2 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:8.0];

  *(v3 + 96) = v30;
  v31 = [*&v0[v27] centerXAnchor];
  v32 = [v0 centerXAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v3 + 104) = v33;
  v34 = [*&v0[v27] bottomAnchor];
  v35 = [v0 bottomAnchor];
  v36 = [v34 constraintLessThanOrEqualToAnchor:v35];

  *(v3 + 112) = v36;
  v37 = [*&v0[v27] leadingAnchor];
  v38 = [v0 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:24.0];

  *(v3 + 120) = v39;
  v40 = [*&v0[v27] trailingAnchor];
  v41 = [v0 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-24.0];

  *(v3 + 128) = v42;
  *&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_layoutConstrains] = v3;

  v43 = objc_opt_self();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];
}

void MOSuggestionCollectionViewBlankEntrySectionHeaderView.set3PConstraints()()
{
  MOSuggestionCollectionViewBlankEntrySectionHeaderView.clearConstraints()();
  [*&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryButton] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_headerLabel] removeFromSuperview];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002A7C80;
  v2 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl;
  v3 = [*&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl] topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [*&v0[v2] centerXAnchor];
  v7 = [v0 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v1 + 40) = v8;
  v9 = [*&v0[v2] bottomAnchor];
  v10 = [v0 bottomAnchor];
  v11 = [v9 constraintLessThanOrEqualToAnchor:v10];

  *(v1 + 48) = v11;
  v12 = [*&v0[v2] leadingAnchor];
  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:24.0];

  *(v1 + 56) = v14;
  v15 = [*&v0[v2] trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-24.0];

  *(v1 + 64) = v17;
  *&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_layoutConstrains] = v1;

  v18 = objc_opt_self();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];
}

void MOSuggestionCollectionViewBlankEntrySectionHeaderView.clearConstraints()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_layoutConstrains;
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_layoutConstrains);
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = objc_opt_self();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  *(v0 + v1) = _swiftEmptyArrayStorage;
}

char *MOSuggestionCollectionViewBlankEntrySectionHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_segmentedDelegate];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryDelegate];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipShown] = 0;
  v11 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_headerLabel;
  closure #1 in variable initialization expression of MOSuggestionCollectionViewBlankEntrySectionHeaderView.headerLabel();
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl;
  *&v4[v13] = closure #1 in variable initialization expression of MOSuggestionCollectionViewBlankEntrySectionHeaderView.suggestionSegmentedControl();
  v14 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryButton;
  type metadata accessor for MOSuggestionSheetNewEntryButton();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipView] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipModel] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipView] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipModel] = 0;
  v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_usePublicUI] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_layoutConstrains] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipConstraints] = _swiftEmptyArrayStorage;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for MOSuggestionCollectionViewBlankEntrySectionHeaderView();
  v15 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl;
  v17 = *&v15[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryButton;
  [*&v18[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryButton] addTarget:v18 action:"pressedNewEntryButton" forControlEvents:64];
  [*&v15[v16] addTarget:v18 action:"pressedSegmentControl" forControlEvents:4096];
  [*&v18[v19] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v18[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_headerLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v15[v16] setTranslatesAutoresizingMaskIntoConstraints:0];
  MOSuggestionCollectionViewBlankEntrySectionHeaderView.set1PConstraints()();

  return v18;
}

void MOSuggestionCollectionViewBlankEntrySectionHeaderView.setupStateOfMindTip(model:)()
{
  v1 = v0;
  type metadata accessor for MOSuggestionSheetStateOfMindTipCell();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *((swift_isaMask & *v2) + 0x80);

  v3(v4);
  v5 = v2;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setHidden:1];

  v6 = *&v1[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipView];
  *&v1[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipView] = v2;
  v7 = v5;

  [v1 setNeedsLayout];
}

id MOSuggestionCollectionViewBlankEntrySectionHeaderView.collapsePrivacyTip()(void *a1, uint64_t *a2)
{
  v4 = objc_opt_self();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deactivateConstraints:isa];

  v6 = *a2;
  v7 = *&v2[v6];
  if (v7)
  {
    [v7 removeFromSuperview];
    v8 = *&v2[v6];
    *&v2[v6] = 0;
  }

  return [v2 setNeedsLayout];
}

uint64_t sub_10024B418()
{

  return _swift_deallocObject(v0, 25, 7);
}

id partial apply for closure #1 in MOSuggestionCollectionViewBlankEntrySectionHeaderView.updateSelectedSegment(withSegment:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl;
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl) setSelectedSegmentIndex:v2];
  v4 = *(v1 + v3);

  return [v4 layoutIfNeeded];
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.pressedSegmentControl()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl) selectedSegmentIndex];
  if (v1)
  {
    if (v1 != 1)
    {
      return;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if ((*((swift_isaMask & *v0) + 0xC0))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, 0, 0, ObjectType, v4);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.pressedNewEntryButton()()
{
  (*((swift_isaMask & *v0) + 0xD8))(aBlock);
  if (v10)
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(aBlock, v6);
    outlined destroy of MOSuggestionSheetNewEntryButtonDelegate?(aBlock);
    v1 = v7;
    v2 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    outlined destroy of MOSuggestionSheetNewEntryButtonDelegate?(aBlock);
  }

  v3 = [objc_allocWithZone(MOPromptManager) init];
  v4 = String._bridgeToObjectiveC()();
  v11 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v12 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v10 = &block_descriptor_7_0;
  v5 = _Block_copy(aBlock);
  [v3 triggerFeedbackAssistantFlow:v4 handler:v5];
  _Block_release(v5);
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.shouldUpdateHeader(newEntryButtonOnly:)(Swift::Bool newEntryButtonOnly)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = newEntryButtonOnly;
  aBlock[4] = partial apply for closure #1 in MOSuggestionCollectionViewBlankEntrySectionHeaderView.shouldUpdateHeader(newEntryButtonOnly:);
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void closure #1 in MOSuggestionCollectionViewBlankEntrySectionHeaderView.shouldUpdateHeader(newEntryButtonOnly:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl);

    [v5 setHidden:a2 & 1];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_headerLabel);

    [v8 setHidden:a2 & 1];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipView);
    v11 = v9;
    v12 = v10;

    if (v10)
    {
      [v12 setHidden:a2 & 1];
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipView);
    v15 = v13;
    v16 = v14;

    if (v14)
    {
      [v16 setHidden:a2 & 1];
    }
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.showTip(tipType:)(MomentsUIService::MOSuggestionTipType tipType)
{
  if (tipType == MomentsUIService_MOSuggestionTipType_stateOfMind)
  {
    (*((swift_isaMask & *v1) + 0x1B8))();
  }

  else if (tipType == MomentsUIService_MOSuggestionTipType_privacy)
  {
    (*((swift_isaMask & *v1) + 0x1C0))();
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewBlankEntrySectionHeaderView.removeTip(tipType:)(MomentsUIService::MOSuggestionTipType tipType)
{
  if (tipType == MomentsUIService_MOSuggestionTipType_stateOfMind)
  {
    MOSuggestionCollectionViewBlankEntrySectionHeaderView.collapseStateOfMindTip()();
  }

  else if (tipType == MomentsUIService_MOSuggestionTipType_privacy)
  {
    MOSuggestionCollectionViewBlankEntrySectionHeaderView.collapsePrivacyTip()();
  }
}

uint64_t MOSuggestionCollectionViewBlankEntrySectionHeaderView.newEntryDelegate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of MOSuggestionSheetNewEntryButtonDelegate?(v2 + v4, a2);
}

uint64_t MOSuggestionCollectionViewBlankEntrySectionHeaderView.newEntryDelegate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of MOSuggestionSheetNewEntryButtonDelegate?(a1, v2 + v4);
  return swift_endAccess();
}

double MOSuggestionCollectionViewOnboardingSectionHeaderView.onboardingTipModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView;
  v5 = *(v1 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView);
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *(v1 + v4);
    *(v1 + v4) = 0;
  }

  if (*(v1 + v3))
  {

    MOSuggestionCollectionViewOnboardingSectionHeaderView.setupOnboardingTip(tipModel:)(v7);
  }

  return result;
}

uint64_t (*MOSuggestionCollectionViewOnboardingSectionHeaderView.onboardingTipModel.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipModel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionCollectionViewOnboardingSectionHeaderView.onboardingTipModel.modify;
}

void MOSuggestionCollectionViewOnboardingSectionHeaderView.onboardingTipModel.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView;
    v6 = *(v4 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v4 + v5);
      *(v4 + v5) = 0;

      v4 = v3[3];
    }

    if (*(v4 + v3[4]))
    {

      MOSuggestionCollectionViewOnboardingSectionHeaderView.setupOnboardingTip(tipModel:)(v8);
    }
  }

  free(v3);
}

Swift::Void __swiftcall MOSuggestionCollectionViewOnboardingSectionHeaderView.setPublicUI(_:)(Swift::Bool a1)
{
  [*&v1[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_newEntryButton] setHidden:a1];

  [v1 setNeedsDisplay];
}

char *MOSuggestionCollectionViewOnboardingSectionHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_newEntryDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_newEntryButton;
  type metadata accessor for MOSuggestionSheetNewEntryButton();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipModel] = 0;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for MOSuggestionCollectionViewOnboardingSectionHeaderView();
  v11 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_newEntryButton;
  v13 = *&v11[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_newEntryButton];
  v14 = v11;
  [v14 addSubview:v13];
  [*&v11[v12] addTarget:v14 action:"pressedNewEntryButton" forControlEvents:64];
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002A7C80;
  v17 = [*&v11[v12] centerXAnchor];
  v18 = [v14 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [*&v11[v12] heightAnchor];
  v21 = [v20 constraintEqualToConstant:44.0];

  *(v16 + 40) = v21;
  v22 = [*&v11[v12] topAnchor];
  v23 = [v14 topAnchor];

  v24 = [v22 constraintEqualToAnchor:v23];
  *(v16 + 48) = v24;
  v25 = [*&v11[v12] leadingAnchor];
  v26 = [v14 leadingAnchor];

  v27 = [v25 constraintEqualToAnchor:v26 constant:24.0];
  *(v16 + 56) = v27;
  v28 = [*&v11[v12] trailingAnchor];
  v29 = [v14 trailingAnchor];

  v30 = [v28 constraintEqualToAnchor:v29 constant:-24.0];
  *(v16 + 64) = v30;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];

  return v14;
}

double MOSuggestionCollectionViewOnboardingSectionHeaderView.setupOnboardingTip(tipModel:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MOSuggestionSheetOnboardingTipCell();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = *((swift_isaMask & *v4) + 0x60);

  v5(v6);
  v7 = v4;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v2[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView];
  *&v2[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView] = v4;
  v9 = v7;

  LODWORD(v8) = *(a1 + 32);
  v10 = [v9 topAnchor];
  if (v8 == 1)
  {
    v11 = [v2 topAnchor];
    v12 = 12.0;
  }

  else
  {
    v11 = [*&v2[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_newEntryButton] bottomAnchor];
    v12 = 24.0;
  }

  v13 = v11;
  v14 = [v10 constraintEqualToAnchor:v13 constant:v12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002A48D0;
  *(v15 + 32) = v14;
  v16 = v14;
  v17 = [v9 bottomAnchor];
  v18 = [v2 bottomAnchor];
  v19 = [v17 constraintLessThanOrEqualToAnchor:v18];

  *(v15 + 40) = v19;
  v20 = [v9 leadingAnchor];
  v21 = [v2 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v15 + 48) = v22;
  v23 = [v9 trailingAnchor];

  v24 = [v2 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v15 + 56) = v25;
  *&v2[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipConstraints] = v15;

  return result;
}

Swift::Void __swiftcall MOSuggestionCollectionViewOnboardingSectionHeaderView.activateOnboardingConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView];
  if (v1)
  {
    v2 = v1;
    [v0 addSubview:v2];
    v3 = objc_opt_self();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:isa];
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewOnboardingSectionHeaderView.pressedNewEntryButton()()
{
  (*((swift_isaMask & *v0) + 0x78))(v6);
  if (v6[3])
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(v6, v3);
    outlined destroy of MOSuggestionSheetNewEntryButtonDelegate?(v6);
    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_0(v3, v4);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    outlined destroy of MOSuggestionSheetNewEntryButtonDelegate?(v6);
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewOnboardingSectionHeaderView.removeTip(tipType:)(MomentsUIService::MOSuggestionTipType tipType)
{
  if (tipType == MomentsUIService_MOSuggestionTipType_onboarding)
  {
    v2 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView;
    v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v1 + v2);
      *(v1 + v2) = 0;
    }
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewOnboardingSectionHeaderView.showTip(tipType:)(MomentsUIService::MOSuggestionTipType tipType)
{
  if (tipType == MomentsUIService_MOSuggestionTipType_onboarding)
  {
    (*((swift_isaMask & *v1) + 0x108))();
  }
}

id MOSuggestionSheetNewEntryButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MOSuggestionSheetNewEntryButton();
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
  MOSuggestionSheetNewEntryButton.sharedInit()();

  return v9;
}

id MOSuggestionSheetNewEntryButton.init(coder:)(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MOSuggestionSheetNewEntryButton();
  v3 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    MOSuggestionSheetNewEntryButton.sharedInit()();
  }

  return v4;
}

uint64_t MOSuggestionSheetNewEntryButton.sharedInit()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  __chkstk_darwin(v0 - 8);
  v44 = &v37 - v1;
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v43 = type metadata accessor for UIButton.Configuration();
  v9 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 preferredFontForTextStyle:UIFontTextStyleHeadline];
  v14 = [objc_opt_self() configurationWithFont:v13];

  v15 = String._bridgeToObjectiveC()();
  v37 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  static UIButton.Configuration.filled()();
  v16 = objc_opt_self();
  v17 = [v16 systemIndigoColor];
  v18 = [v16 systemIndigoColor];
  v38 = [v18 colorWithAlphaComponent:0.15];

  v19 = [objc_opt_self() mainBundle];
  v46._object = 0x80000001002BB920;
  v20._countAndFlagsBits = 0x72746E452077654ELL;
  v46._countAndFlagsBits = 0xD000000000000019;
  v20._object = 0xE900000000000079;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v46);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4A00;
  *(inited + 32) = NSFontAttributeName;
  v23 = NSFontAttributeName;
  v24 = [v12 preferredFontForTextStyle:UIFontTextStyleHeadline];
  v25 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIFont, UIFont_ptr);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIColor, UIColor_ptr);
  *(inited + 80) = v17;
  v26 = NSForegroundColorAttributeName;
  v27 = v17;
  v28 = v37;
  v29 = v27;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  AttributeContainer.init(_:)();
  AttributedString.init(_:attributes:)();
  v30 = type metadata accessor for AttributedString();
  (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
  UIButton.Configuration.attributedTitle.setter();
  (*(v41 + 104))(v40, enum case for UIButton.Configuration.CornerStyle.large(_:), v42);
  UIButton.Configuration.cornerStyle.setter();
  if (v28)
  {
    v31 = [v28 imageWithTintColor:v29 renderingMode:1];
  }

  UIButton.Configuration.image.setter();
  v32 = v38;
  UIButton.Configuration.baseBackgroundColor.setter();
  v33 = v45;
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = v43;
  v34 = v44;
  (*(v9 + 16))(v44, v11, v43);
  (*(v9 + 56))(v34, 0, 1, v35);
  UIButton.configuration.setter();
  [v33 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];

  return (*(v9 + 8))(v11, v35);
}

id MOSuggestionCollectionViewBlankEntrySectionHeaderView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void specialized MOSuggestionCollectionViewBlankEntrySectionHeaderView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_segmentedDelegate);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryDelegate;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipShown) = 0;
  v3 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_headerLabel;
  closure #1 in variable initialization expression of MOSuggestionCollectionViewBlankEntrySectionHeaderView.headerLabel();
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_suggestionSegmentedControl;
  *(v0 + v5) = closure #1 in variable initialization expression of MOSuggestionCollectionViewBlankEntrySectionHeaderView.suggestionSegmentedControl();
  v6 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_newEntryButton;
  type metadata accessor for MOSuggestionSheetNewEntryButton();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_usePublicUI) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_layoutConstrains) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_privacyTipConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewBlankEntrySectionHeaderView_stateOfMindTipConstraints) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined destroy of MOSuggestionSheetNewEntryButtonDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService39MOSuggestionSheetNewEntryButtonDelegate_pSgMd, &_s16MomentsUIService39MOSuggestionSheetNewEntryButtonDelegate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024D7A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024D7D8()
{

  return _swift_deallocObject(v0, 25, 7);
}

void specialized MOSuggestionCollectionViewOnboardingSectionHeaderView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_newEntryDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_newEntryButton;
  type metadata accessor for MOSuggestionSheetNewEntryButton();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService53MOSuggestionCollectionViewOnboardingSectionHeaderView_onboardingTipModel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10024D908@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10024D964(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0xC8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_10024DA98@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10024DB50@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t sub_10024DBB4(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x158);

  return v2(v3);
}

uint64_t sub_10024DC20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x180))();
  *a2 = result;
  return result;
}

uint64_t sub_10024DC84(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x188);

  return v2(v3);
}

uint64_t sub_10024DCF0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x198))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10024DE78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_10024DED4(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xE0);

  return v2(v3);
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return String.remove(at:)(a1);
}

Swift::String __swiftcall String.init(combinedIdentifiersFrom:)(Swift::OpaquePointer combinedIdentifiersFrom)
{
  v1 = *(combinedIdentifiersFrom._rawValue + 2);
  if (v1 == 1)
  {
  }

  else
  {
    if (v1)
    {
      v2 = combinedIdentifiersFrom._rawValue + 40;
      do
      {
        v8 = *(v2 - 8);
        swift_bridgeObjectRetain_n();
        v3._countAndFlagsBits = 38;
        v3._object = 0xE100000000000000;
        String.append(_:)(v3);

        String.append(_:)(v8);

        v2 += 16;
        --v1;
      }

      while (v1);
    }

    specialized RangeReplaceableCollection<>.removeLast()(v4);
  }

  v5 = String.init<A>(_:)();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.__allocating_init(photoAssets:)(unint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v3 = *(v2 - 1);
  v4 = __chkstk_darwin(v2);
  v141 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v145 = &v117 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v117 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v142 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14._rawValue = (a1 >> 62);
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= 1)
    {
      goto LABEL_3;
    }

LABEL_95:

    return 0;
  }

LABEL_104:
  v115 = v12;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  v12 = v115;
  if (v15 < 1)
  {
    goto LABEL_95;
  }

LABEL_3:
  rawValue = v14._rawValue;
  v153 = v11;
  v149 = v12;
  v147 = v9;
  v131 = v3;
  v132 = v2;
  v160 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v16 = 0;
  v14._rawValue = v160;
  v157 = a1 & 0xC000000000000001;
  v11 = &type metadata for String;
  v155 = a1;
  do
  {
    if (v157)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(a1 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = [v17 identifier];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v20;

    v158 = v3;
    v159 = v9;
    v161 = 35;
    v162 = 0xE100000000000000;
    v154 = lazy protocol witness table accessor for type String and conformance String();
    v2 = StringProtocol.components<A>(separatedBy:)();

    if (!v2[2])
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v9 = v2[4];
    v21 = v2[5];

    v160 = v14._rawValue;
    v23 = *(v14._rawValue + 2);
    v22 = *(v14._rawValue + 3);
    if (v23 >= v22 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v14._rawValue = v160;
    }

    ++v16;
    *(v14._rawValue + 2) = v23 + 1;
    v24 = v14._rawValue + 16 * v23;
    *(v24 + 4) = v9;
    *(v24 + 5) = v21;
    a1 = v155;
  }

  while (v15 != v16);
  v25 = String.init(combinedIdentifiersFrom:)(v14);
  countAndFlagsBits = v25._countAndFlagsBits;
  object = v25._object;
  v163 = _swiftEmptyArrayStorage;
  v164 = _swiftEmptyArrayStorage;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v14._rawValue = __swift_project_value_buffer(v26, static MOAngelLogger.assets);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v27, v28);
  v3 = rawValue;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    if (v3)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 4) = v31;

    _os_log_impl(&_mh_execute_header, v27, v28, "[MOSuggestionInterstitialListAssetViewModel.photoAssets] Processing count=%ld", v30, 0xCu);

    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
LABEL_83:
      v2 = *(v32 + 16);
      if (!v2)
      {
        goto LABEL_84;
      }

LABEL_18:
      v11 = 0;
      v150 = a1 & 0xFFFFFFFFFFFFFF8;
      v148 = (v153 + 56);
      v135 = (v153 + 48);
      v152 = MOSuggestionAssetsTypeLivePhoto;
      v127 = (v153 + 16);
      v128 = (v153 + 32);
      v126 = (v153 + 8);
      LODWORD(rawValue) = 26;
      v9 = MOSuggestionAssetsTypePhoto;
      v133 = xmmword_1002A48B0;
      v125 = xmmword_1002A4A70;
      v143 = _swiftEmptyArrayStorage;
      v144 = _swiftEmptyArrayStorage;
      v138 = _swiftEmptyArrayStorage;
      *&v139 = _swiftEmptyArrayStorage;
      v134 = v14._rawValue;
      v151 = v2;
      v153 = MOSuggestionAssetsTypePhoto;
      while (2)
      {
        if (v157)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v150 + 16))
          {
            goto LABEL_103;
          }

          v12 = *(a1 + 8 * v11 + 32);
        }

        v33 = v12;
        v34 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_102;
        }

        v35 = [v12 assetType];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
        {
LABEL_34:
        }

        else
        {
          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v41 & 1) == 0)
          {
            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;
            if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
            {
              goto LABEL_34;
            }

            v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v64 & 1) == 0)
            {
              v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v67 = v66;
              if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
              {
                goto LABEL_34;
              }

              v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v69 & 1) == 0)
              {
                v46 = v35;
                v9 = v153;
                goto LABEL_36;
              }
            }
          }
        }

        v9 = v153;
        v46 = v153;

LABEL_36:
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;
        if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
        {

          break;
        }

        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          [v33 contentClassType];
          ObjCClassMetadata = swift_getObjCClassMetadata();
          if (ObjCClassMetadata != type metadata accessor for MOSuggestionGenericFallBackInfo())
          {
            v52 = Logger.logObject.getter();
            v3 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v52, v3))
            {
              v9 = swift_slowAlloc();
              *v9 = 0;
              _os_log_impl(&_mh_execute_header, v52, v3, "[MOSuggestionInterstitialListAssetViewModel.photoAssets] Mismatched init for asset type", v9, 2u);
            }

LABEL_20:
LABEL_21:
            v2 = v151;
            ++v11;
            if (v34 == v151)
            {
              goto LABEL_85;
            }

            continue;
          }
        }

        break;
      }

      v53 = specialized MOSuggestionAssetVisualSubType.init(assetType:mediaType:motionActivityType:)([v33 assetType], 0, 1, 0);
      v54 = v53;
      v55 = rawValue;
      if (rawValue == 26)
      {
        v55 = v53;
      }

      LODWORD(rawValue) = v55;
      v56 = [v33 metadata];
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v3);
      v58 = v57;

      if (!v58)
      {
        goto LABEL_20;
      }

      if (v54 == 26)
      {

        goto LABEL_20;
      }

      v3 = [v33 content];
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (!v59)
      {

        v12 = swift_unknownObjectRelease();
        goto LABEL_21;
      }

      v146 = v59;
      if (!*(v58 + 16) || (v60 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyPhotoTakenDate), (v61 & 1) == 0))
      {
        swift_unknownObjectRelease();

        v3 = v147;
        (*v148)(v147, 1, 1, v149);
        goto LABEL_59;
      }

      v140 = v3;
      outlined init with copy of Any(*(v58 + 56) + 32 * v60, &v158);
      v3 = v147;
      v62 = v149;
      v63 = swift_dynamicCast();
      v130 = *v148;
      v130(v3, v63 ^ 1u, 1, v62);
      if ((*v135)(v3, 1, v62) == 1)
      {
        swift_unknownObjectRelease();

        v14._rawValue = v134;
LABEL_59:
        v12 = outlined destroy of Date?(v3);
        goto LABEL_21;
      }

      v70 = v142;
      (*v128)(v142, v3, v62);
      v71 = v145;
      (*v127)(v145, v70, v62);
      v130((v71 + *(v132 + 5)), 1, 1, v62);
      v138 = MOSuggestionAssetVisualSubType.singularLocalizedString.getter(v54);
      v130 = v72;
      if (*(v58 + 16) && (v73 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect), (v74 & 1) != 0))
      {
        outlined init with copy of Any(*(v58 + 56) + 32 * v73, &v158);

        type metadata accessor for MOSuggestionAssetPhotoCropRect();
        if (swift_dynamicCast())
        {
          v121 = v161;
          [v161 cgRect];
          LODWORD(v124) = 0;
          *(&v76 + 1) = v75;
          v123 = v76;
          *(&v78 + 1) = v77;
          v139 = v78;
LABEL_67:
          type metadata accessor for MOSuggestionSheetImage();
          v79 = swift_allocObject();
          *(v79 + 40) = 0;
          *(v79 + 32) = 0;
          *(v79 + 24) = 0;
          *(v79 + 72) = 0u;
          *(v79 + 56) = 0u;
          *(v79 + 88) = 1;
          *(v79 + 96) = 0;
          v122 = (v79 + 96);
          *(v79 + 104) = 1;
          *(v79 + 16) = v146;
          swift_beginAccess();
          *(v79 + 24) = 0;
          v80 = v79;
          swift_beginAccess();
          *(v79 + 32) = 0;
          swift_beginAccess();
          v81 = *(v79 + 40);
          *(v79 + 40) = 0;
          swift_unknownObjectRetain();

          *(v79 + 48) = 0;
          swift_beginAccess();
          *(v79 + 72) = v123;
          *(v79 + 56) = v139;
          *(v79 + 88) = v124;
          v82 = v122;
          swift_beginAccess();
          *v82 = 0;
          *(v79 + 104) = 1;
          v83 = [v33 identifier];
          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v85;

          v158 = v84;
          v159 = v9;
          v161 = 35;
          v162 = 0xE100000000000000;
          v86 = StringProtocol.components<A>(separatedBy:)();

          if (!*(v86 + 16))
          {
            goto LABEL_109;
          }

          v87 = *(v86 + 40);
          *&v139 = *(v86 + 32);
          v122 = v87;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR);
          v88 = (*(v131 + 80) + 32) & ~*(v131 + 80);
          v124 = *(v131 + 9);
          v89 = swift_allocObject();
          v120 = v89;
          *(v89 + 16) = v133;
          *&v123 = v88;
          outlined init with copy of MOSuggestionSheetAssetDateRange(v145, v89 + v88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v90 = swift_allocObject();
          v119 = v90;
          *(v90 + 16) = v133;
          v146 = v80;
          v91 = v130;
          *(v90 + 32) = v138;
          *(v90 + 40) = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v92 = swift_allocObject();
          v118 = v92;
          *(v92 + 16) = v125;
          *(v92 + 32) = v146;
          type metadata accessor for MOSuggestionInterstitialListAssetViewModel(0);
          v3 = swift_allocObject();
          *(v3 + 2) = 0u;
          *(v3 + 3) = 0u;
          *(v3 + 64) = 0;
          *(v3 + 1) = 0u;
          *(v3 + 90) = 1;

          UUID.init()();
          swift_beginAccess();
          v3[2] = 0.0;

          swift_beginAccess();
          v3[3] = 0.0;
          v3[4] = 0.0;

          swift_beginAccess();
          *(v3 + 5) = v120;

          swift_beginAccess();
          *(v3 + 6) = v119;

          swift_beginAccess();
          *(v3 + 7) = v118;

          *(v3 + 65) = v54;
          v93 = v122;
          *(v3 + 9) = v139;
          *(v3 + 10) = v93;
          *(v3 + 90) = 1;
          *(v3 + 44) = 0;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          *&v139 = v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v155;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v143 + 2) + 1, 1, v143);
          }

          v96 = *(v143 + 2);
          v95 = *(v143 + 3);
          if (v96 >= v95 >> 1)
          {
            v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v143);
          }

          v97 = v143;
          *(v143 + 2) = v96 + 1;
          v98 = &v97[2 * v96];
          v99 = v130;
          *(v98 + 4) = v138;
          *(v98 + 5) = v99;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v100 = v163;
          outlined init with copy of MOSuggestionSheetAssetDateRange(v145, v141);
          v101 = swift_isUniquelyReferenced_nonNull_native();
          v138 = v100;
          if ((v101 & 1) == 0)
          {
            v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v144 + 2) + 1, 1, v144);
          }

          v9 = *(v144 + 2);
          v102 = *(v144 + 3);
          if (v9 >= v102 >> 1)
          {
            v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v9 + 1, 1, v144);
          }

          swift_unknownObjectRelease();

          outlined destroy of MOSuggestionSheetAssetDateRange(v145);
          (*v126)(v142, v149);
          v103 = v144;
          *(v144 + 2) = v9 + 1;
          v12 = outlined init with take of MOSuggestionSheetAssetDateRange(v141, v103 + v123 + v9 * v124);
          v14._rawValue = v134;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v121 = 0;
      v139 = 0u;
      LODWORD(v124) = 1;
      v123 = 0u;
      goto LABEL_67;
    }
  }

  else
  {

    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
      goto LABEL_83;
    }
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  v2 = v12;
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_84:
  LODWORD(rawValue) = 26;
  v143 = _swiftEmptyArrayStorage;
  v144 = _swiftEmptyArrayStorage;
  v138 = _swiftEmptyArrayStorage;
  *&v139 = _swiftEmptyArrayStorage;
LABEL_85:

  v86 = v138;
  if (v138 >> 62)
  {
    v104 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v104 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = rawValue;
  v106 = v139;
  if (!v104)
  {

    goto LABEL_94;
  }

  if ((v86 & 0xC000000000000001) == 0)
  {
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v86 + 32);

      goto LABEL_91;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_100;
    }

LABEL_99:

    v158 = specialized Array._copyToContiguousArray()(v109, v108);
    specialized MutableCollection<>.sort(by:)(&v158);

    v110 = v158;
    swift_beginAccess();
    *(v86 + 16) = v110;
    goto LABEL_100;
  }

  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_91:

  if (v105 == 26)
  {

LABEL_94:

    goto LABEL_95;
  }

  HIBYTE(v116) = 0;
  *(&v116 + 1) = 1;
  LOBYTE(v116) = v105;
  v86 = (*(v136 + 344))(countAndFlagsBits, object, 0, 0, 0, 0, 0, 0, v116);
  if (v106 >> 62)
  {
    goto LABEL_110;
  }

  if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_99;
  }

LABEL_100:

  v111 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
  v113 = v112;
  swift_beginAccess();
  *(v86 + 24) = v111;
  *(v86 + 32) = v113;

  swift_beginAccess();
  *(v86 + 48) = v143;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1002A4A70;
  *(v114 + 32) = v9;
  swift_beginAccess();
  *(v86 + 56) = v114;

  swift_beginAccess();
  *(v86 + 40) = v144;

  return v86;
}

unint64_t type metadata accessor for MOSuggestionAssetPhotoCropRect()
{
  result = lazy cache variable for type metadata for MOSuggestionAssetPhotoCropRect;
  if (!lazy cache variable for type metadata for MOSuggestionAssetPhotoCropRect)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MOSuggestionAssetPhotoCropRect);
  }

  return result;
}

uint64_t key path getter for MOSecureWindow.controller : MOSecureWindow@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t MOSecureWindow.controller.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10024F62C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t MOSecureWindow.controller.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

void (*MOSecureWindow.controller.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isVisible.modify;
}

uint64_t key path setter for MOSecureWindow.$controller : MOSecureWindow(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16MomentsUIService24MOAngelControllerWrapperC_GMd, &_s7Combine9PublishedV9PublisherVy16MomentsUIService24MOAngelControllerWrapperC_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((swift_isaMask & **a2) + 0x80))(v6);
}

uint64_t MOSecureWindow.$controller.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMd, &_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MOSecureWindow.$controller.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16MomentsUIService24MOAngelControllerWrapperC_GMd, &_s7Combine9PublishedV9PublisherVy16MomentsUIService24MOAngelControllerWrapperC_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMd, &_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MOSecureWindow.$controller.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16MomentsUIService24MOAngelControllerWrapperC_GMd, &_s7Combine9PublishedV9PublisherVy16MomentsUIService24MOAngelControllerWrapperC_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC16MomentsUIService14MOSecureWindow__controller;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMd, &_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isVisible.modify;
}

void MOSecureWindow.init(windowScene:session:clientConnection:)(void *a1, void *a2, uint64_t a3)
{
  v47 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMd, &_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - v11;
  v13 = OBJC_IVAR____TtC16MomentsUIService14MOSecureWindow__controller;
  v49 = [objc_allocWithZone(type metadata accessor for MOAngelControllerWrapper(0)) init];
  Published.init(initialValue:)();
  (*(v10 + 32))(&v3[v13], v12, v9);
  outlined init with copy of UUID?(a3, &v3[OBJC_IVAR____TtC16MomentsUIService14MOSecureWindow_clientConnectionId]);
  v14 = type metadata accessor for MOSecureWindow(0);
  v48.receiver = v3;
  v48.super_class = v14;
  v46 = a1;
  v15 = objc_msgSendSuper2(&v48, "initWithWindowScene:", a1);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor:v18];

  [v17 setOpaque:0];
  v19 = v17;
  [v19 makeKeyAndVisible];
  v20 = [v19 setClipsToBounds:1];
  v21 = *((swift_isaMask & *v19) + 0x60);
  v22 = (swift_isaMask & *v19) + 96;
  v23 = v21(v20);
  v24 = objc_allocWithZone(type metadata accessor for MOAngelRootViewController());
  specialized MOAngelRootViewController.init(_:)(v23);
  v26 = v25;

  v27 = v26;
  v28 = [v27 view];
  if (!v28)
  {
    __break(1u);
    goto LABEL_8;
  }

  v29 = v28;
  type metadata accessor for UIColor();
  static Color.clear.getter();
  v30 = UIColor.init(_:)();
  [v29 setBackgroundColor:v30];

  v31 = [v27 view];
  if (!v31)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v32 = v31;
  v44[1] = v22;
  v45 = v21;
  v33 = [v31 layer];

  [v33 setAllowsHitTesting:0];
  v34 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v27];

  [v19 setRootViewController:v34];
  v35 = [v19 _rootSheetPresentationController];

  if (!v35)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v35 _setShouldScaleDownBehindDescendantSheets:0];

  v36 = [objc_opt_self() sharedInstance];
  v37 = a3;
  outlined init with copy of UUID?(a3, v8);
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 48))(v8, 1, v38);
  isa = 0;
  if (v40 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v40 = (*(v39 + 8))(v8, v38);
  }

  v42 = v45(v40);
  v43 = v47;
  [v36 didConnectToSecureWindowWithSession:v47 connectionId:isa delegate:v42];

  outlined destroy of UUID?(v37);
}

uint64_t type metadata accessor for MOSecureWindow(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOSecureWindow;
  if (!type metadata singleton initialization cache for MOSecureWindow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall MOSecureWindow.didDisconnect()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UUID?(v0 + OBJC_IVAR____TtC16MomentsUIService14MOSecureWindow_clientConnectionId, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of UUID?(v3);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v8 = [objc_opt_self() sharedInstance];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v8 didDisonnectToSecureWindowForConnectionId:isa];

    (*(v5 + 8))(v7, v4);
  }
}

void MOSecureWindow.init(coder:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMd, &_s7Combine9PublishedVy16MomentsUIService24MOAngelControllerWrapperCGMR);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService14MOSecureWindow__controller;
  v6[1] = [objc_allocWithZone(type metadata accessor for MOAngelControllerWrapper(0)) init];
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSecureWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSecureWindow(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

void type metadata completion function for MOSecureWindow(uint64_t a1)
{
  type metadata accessor for Published<MOAngelControllerWrapper>(319, &lazy cache variable for type metadata for Published<MOAngelControllerWrapper>, type metadata accessor for MOAngelControllerWrapper, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<MOAngelControllerWrapper>(319, &lazy cache variable for type metadata for UUID?, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<MOAngelControllerWrapper>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void MOSuggestionInterstitialSupplementaryCheckmarkView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialCarouselCheckMarkView()) initWithFrame:{0.0, 0.0, 23.0, 23.0}];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_keyColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *MOSuggestionInterstitialSupplementaryCheckmarkView.keyColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_keyColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionInterstitialSupplementaryCheckmarkView.keyColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_keyColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView)) + 0x88))(v5);
  }
}

uint64_t (*MOSuggestionInterstitialSupplementaryCheckmarkView.keyColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_keyColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionInterstitialSupplementaryCheckmarkView.keyColor.modify;
}

void MOSuggestionInterstitialSupplementaryCheckmarkView.keyColor.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    if (v5)
    {
      (*((swift_isaMask & **(v4 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView)) + 0x88))(v5);
    }
  }

  free(v3);
}

id MOSuggestionInterstitialSupplementaryCheckmarkView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *specialized MOSuggestionInterstitialSupplementaryCheckmarkView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialCarouselCheckMarkView()) initWithFrame:{0.0, 0.0, 23.0, 23.0}];
  *&v0[OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_keyColor] = 0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
  v2 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  v6 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView;
  [v4 addSubview:*&v4[OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView]];
  p_align = &stru_100327FE8.align;
  [*&v4[v6] setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v4[v6];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v8 widthAnchor];
  v10 = [v9 constraintEqualToConstant:23.0];

  [v10 setActive:1];
  v11 = *&v4[v6];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v11 heightAnchor];
  v13 = [v12 constraintEqualToConstant:23.0];

  [v13 setActive:1];
  v14 = *&v4[v6];
  v15 = [v14 superview];
  if (v15)
  {
    v16 = v15;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v14 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v19 = 0;
    v16 = v14;
  }

  v20 = *&v4[v6];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 *(p_align + 222)];
    v23 = [v20 centerXAnchor];
    v24 = [v22 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    [v25 setConstant:0.0];
    if (v25)
    {
      [v25 setActive:1];
    }
  }

  else
  {
    v25 = 0;
    v22 = v20;
  }

  [v4 setUserInteractionEnabled:0];
  [*&v4[v6] setUserInteractionEnabled:0];

  return v4;
}

uint64_t sub_100251234@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_100251290(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

uint64_t specialized static MOSuggestionSheetAssetViewModel.PLACEHOLDER_VIEW_MODEL(parent:)(uint64_t a1)
{
  *&v124 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v86 - v2;
  v121 = &v86 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v86 - v5;
  v122 = &v86 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v86 - v8;
  v123 = &v86 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v87 = type metadata accessor for Date();
  v14 = *(v87 - 8);
  v86 = *(v14 + 56);
  v111 = v14 + 56;
  v86(v3, 1, 1, v87);
  type metadata accessor for MOSuggestionSheetAssetViewModel(0);
  v15 = swift_allocObject();
  *(v15 + 64) = 0;
  v89 = (v15 + 64);
  *(v15 + 48) = 0u;
  v88 = (v15 + 48);
  *(v15 + 32) = 0u;
  *(v15 + 72) = 26;
  *(v15 + 80) = 0;
  v90 = (v15 + 72);
  v91 = (v15 + 80);
  *(v15 + 104) = 0;
  *(v15 + 96) = 0;
  v92 = (v15 + 96);
  v93 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
  v11((v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL), 1, 1, v10);
  v16 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
  v95 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactID);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
  v94 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
  v96 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
  *v19 = 0;
  v19[1] = 0;
  v97 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto) = 0;
  v98 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset) = 0;
  v20 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
  v99 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
  v100 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title);
  v101 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
  v102 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
  v103 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
  *v24 = 0;
  v24[1] = 0;
  v104 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
  v13((v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature), 1, 1, v12);
  v25 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories);
  v105 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories);
  *v25 = 0;
  v25[1] = 0;
  v26 = v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
  v106 = v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
  v107 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
  v108 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
  *v28 = 0;
  v28[1] = 0;
  v29 = v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 1;
  v30 = v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 1;
  v31 = v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 1;
  v109 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize) = 11;
  v32 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
  v110 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
  *v33 = 0;
  v33[1] = 0;
  v34 = v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
  *v34 = 0;
  *(v34 + 8) = 1;
  v112 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView) = 0;
  v35 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
  v113 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels);
  v114 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
  v115 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains);
  v116 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
  v117 = (v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
  *v39 = 0;
  v39[1] = 0;
  v118 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight) = 0;
  v119 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark) = 0;
  v120 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
  v86((v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate), 1, 1, v87);
  v111 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor) = 0;
  v40 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors) = 0;
  swift_weakInit();
  v86 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid;
  UUID.init()();
  *(v15 + 16) = 0x6C6F686563616C70;
  v87 = v15 + 16;
  *(v15 + 24) = 0xEB00000000726564;
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();
  *(v15 + 32) = 0;
  swift_beginAccess();
  *(v15 + 40) = 0;
  v41 = v88;
  swift_beginAccess();
  *v41 = 0;
  swift_beginAccess();
  *(v15 + 56) = 0;
  v42 = v89;
  swift_beginAccess();
  *v42 = 0;
  v43 = v90;
  swift_beginAccess();
  *v43 = 26;
  v44 = v91;
  swift_beginAccess();
  *(v15 + 88) = 0;
  *v44 = 0;
  v45 = v92;
  swift_beginAccess();
  *(v15 + 104) = 0;
  *v45 = 0;
  v46 = v93;
  swift_beginAccess();
  outlined assign with copy of URL?(v123, v15 + v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  swift_endAccess();
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType) = 0;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare) = 0;
  v47 = v95;
  swift_beginAccess();
  v124 = xmmword_1002A8990;
  *v47 = xmmword_1002A8990;
  v48 = v94;
  swift_beginAccess();
  *v48 = v124;
  v49 = v96;
  swift_beginAccess();
  *v49 = v124;
  v50 = v97;
  swift_beginAccess();
  *(v15 + v50) = 0;
  v51 = v98;
  swift_beginAccess();
  *(v15 + v51) = 0;
  v52 = v99;
  swift_beginAccess();
  *v52 = v124;
  v53 = v100;
  swift_beginAccess();
  *v53 = v124;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps) = 0;
  v54 = v101;
  swift_beginAccess();
  *v54 = 0;
  v54[1] = 0;
  v55 = v102;
  swift_beginAccess();
  *v55 = 0;
  v55[1] = 0;
  v56 = v103;
  swift_beginAccess();
  *v56 = v124;
  v57 = v104;
  swift_beginAccess();
  outlined assign with copy of URL?(v122, v15 + v57, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  swift_endAccess();
  v58 = v105;
  swift_beginAccess();
  *v58 = v124;
  v59 = v106;
  swift_beginAccess();
  *v59 = 0;
  *(v59 + 8) = 0;
  v60 = v107;
  swift_beginAccess();
  *v60 = v124;
  v61 = v108;
  swift_beginAccess();
  *v61 = v124;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay) = 0;
  swift_beginAccess();
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 1;
  v62 = v121;
  swift_beginAccess();
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 1;
  swift_beginAccess();
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 1;
  v63 = v109;
  swift_beginAccess();
  *(v15 + v63) = 11;
  v64 = v110;
  swift_beginAccess();
  *v64 = 0;
  v64[1] = 0;
  swift_beginAccess();
  *v33 = 0;
  v33[1] = 0;
  swift_beginAccess();
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder) = 1;
  v65 = v112;
  swift_beginAccess();
  *(v15 + v65) = 0;
  v66 = v113;
  swift_beginAccess();
  *v66 = v124;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval) = 1;
  v67 = v114;
  swift_beginAccess();
  *v67 = v124;
  v68 = v115;
  swift_beginAccess();
  *v68 = v124;
  v69 = v116;
  swift_beginAccess();
  *v69 = v124;
  v70 = v117;
  swift_beginAccess();
  *v70 = v124;
  v71 = v118;
  swift_beginAccess();
  *(v15 + v71) = 0;
  v72 = v119;
  swift_beginAccess();
  *(v15 + v72) = 0;
  v73 = v120;
  swift_beginAccess();
  outlined assign with copy of URL?(v62, v15 + v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v74 = v111;
  swift_beginAccess();
  *(v15 + v74) = 0;
  swift_beginAccess();
  *(v15 + v40) = 0;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant) = 0;
  if (one-time initialization token for memory != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static MOAngelLogger.memory);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v125[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = UUID.uuidString.getter();
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v125);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    swift_beginAccess();
    v82 = *(v15 + 16);
    v83 = *(v15 + 24);

    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v125);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v76, v77, "[MOSuggestionSheetAssetViewModel] init=%s\t id=%s", v78, 0x16u);
    swift_arrayDestroy();
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v122, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v123, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

double *specialized static MOSuggestionSheetAssetViewModel.placeholders(count:parent:)(double *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      do
      {
        specialized static MOSuggestionSheetAssetViewModel.PLACEHOLDER_VIEW_MODEL(parent:)(a2);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = (v2 - 1);
      }

      while (v2);
      return _swiftEmptyArrayStorage;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *MOSceneDelegate.window.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSceneDelegate.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSceneDelegate.presentationWindow.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_presentationWindow;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSceneDelegate.presentationWindow.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_presentationWindow;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall MOSceneDelegate.scene(_:willConnectTo:options:)(UIScene _, UISceneSession willConnectTo, UISceneConnectionOptions options)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v89 - v12;
  __chkstk_darwin(v11);
  v15 = v89 - v14;
  v16 = [(objc_class *)options.super.isa _fbsScene];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 identityToken];
  }

  else
  {
    v18 = 0;
  }

  v102 = [objc_allocWithZone(UISceneConfiguration) init];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v21 = v3;
    isa = willConnectTo.super.isa;
    v98 = v21;
    v23 = type metadata accessor for UUID();
    v24 = *(v23 - 8);
    v25 = *(v24 + 56);
    v91 = v23;
    v90 = v25;
    v89[1] = v24 + 56;
    (v25)(v15, 1, 1);
    v101 = _.super.super.isa;
    v26 = [(objc_class *)options.super.isa userActivities];
    v27 = type metadata accessor for NSUserActivity();
    lazy protocol witness table accessor for type NSUserActivity and conformance NSObject();
    v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = v15;
    v99 = v18;
    v97 = isa;
    v96 = v20;
    v95 = v10;
    v92 = v13;
    v94 = v28;
    if ((v28 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v29 = v109[5];
      v30 = v109[6];
      v31 = v109[7];
      v32 = v109[8];
      v33 = v109[9];
    }

    else
    {
      v35 = -1 << *(v28 + 32);
      v30 = v28 + 56;
      v31 = ~v35;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v33 = v37 & *(v28 + 56);

      v29 = v28;
      v32 = 0;
    }

    v93 = v31;
    v38 = (v31 + 64) >> 6;
    v104 = 0x80000001002BAC00;
    if (v29 < 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    v39 = v32;
    v40 = v33;
    v41 = v32;
    if (!v33)
    {
      while (1)
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v41 >= v38)
        {
          goto LABEL_30;
        }

        v40 = *(v30 + 8 * v41);
        ++v39;
        if (v40)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_19:
    v42 = (v40 - 1) & v40;
    v43 = *(*(v29 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
    if (!v43)
    {
LABEL_30:
      outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v29);

      v53 = v100;
      v54 = v99;
      v55 = v98;
      v56 = v97;
      v57 = v96;
      v58 = v95;
      goto LABEL_41;
    }

    while (1)
    {
      v103 = v33;
      v45 = v29;
      v46 = v27;
      v105 = v43;
      v47 = [v43 activityType];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      if (v48 == 0xD000000000000028 && v104 == v50)
      {
        break;
      }

      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v52)
      {
        goto LABEL_32;
      }

      v32 = v41;
      v33 = v42;
      v27 = v46;
      v29 = v45;
      if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_21:
      v44 = __CocoaSet.Iterator.next()();
      if (v44)
      {
        *&v107 = v44;
        swift_dynamicCast();
        v43 = v109[0];
        v41 = v32;
        v42 = v33;
        if (v109[0])
        {
          continue;
        }
      }

      goto LABEL_30;
    }

LABEL_32:
    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v45);

    v59 = v105;
    v60 = [v105 userInfo];
    if (v60)
    {
      v61 = v60;
      v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v106, "connectionId");
      HIBYTE(v106[6]) = 0;
      v106[7] = -5120;
      AnyHashable.init<A>(_:)();
      v53 = v100;
      v54 = v99;
      v55 = v98;
      v56 = v97;
      v57 = v96;
      v58 = v95;
      if (*(v62 + 16) && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(v109), (v64 & 1) != 0))
      {
        outlined init with copy of Any(*(v62 + 56) + 32 * v63, &v107);

        outlined destroy of AnyHashable(v109);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

        if (*(&v108 + 1))
        {
          v65 = v92;
          v66 = v91;
          v67 = swift_dynamicCast() ^ 1;
          v68 = v65;
          v69 = v66;
LABEL_40:
          v90(v68, v67, 1, v69);
          outlined init with take of UUID?(v65, v53);
LABEL_41:
          [v57 _enrollInSuperlayerSecurityAnalysis];
          v109[3] = &type metadata for MOMomentsFeatureFlags;
          v109[4] = lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags();
          LOBYTE(v109[0]) = 6;
          v70 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_0(v109);
          outlined init with copy of UUID?(v53, v58);
          if (v70)
          {
            v71 = objc_allocWithZone(type metadata accessor for MOPresenterServerWindow(0));
            v72 = v101;
            MOPresenterServerWindow.init(windowScene:session:clientConnection:)(v57, v56, v58);
            v74 = v73;
            v75 = OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_presentationWindow;
            swift_beginAccess();
            v76 = *(v55 + v75);
            *(v55 + v75) = v74;

            v77 = *(v55 + v75);
            if (v77)
            {
              [v77 makeKeyAndVisible];
            }

            swift_beginAccess();
            v78 = *(v55 + v75);
            if (!v78)
            {
              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              swift_endAccess();

              return;
            }

            swift_endAccess();
            [v78 setHidden:0];
          }

          else
          {
            v79 = objc_allocWithZone(type metadata accessor for MOSecureWindow(0));
            v80 = v101;
            MOSecureWindow.init(windowScene:session:clientConnection:)(v57, v56, v58);
            v82 = v81;
            v83 = OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_window;
            swift_beginAccess();
            v84 = *(v55 + v83);
            *(v55 + v83) = v82;

            v85 = *(v55 + v83);
            if (v85)
            {
              [v85 makeKeyAndVisible];
              v86 = *(v55 + v83);
              if (v86)
              {
                [v86 setHidden:0];
              }
            }

            v87 = [objc_opt_self() sharedApplication];
            v88 = [v87 delegate];

            if (!v88)
            {
LABEL_54:
              __break(1u);
              return;
            }

            [v57 _setKeepContextAssociationInBackground:1];

            swift_unknownObjectRelease();
          }

          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          return;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v109);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v107 = 0u;
        v108 = 0u;
      }
    }

    else
    {

      v53 = v100;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v100, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v107 = 0u;
      v108 = 0u;
      v54 = v99;
      v55 = v98;
      v56 = v97;
      v57 = v96;
      v58 = v95;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v107, &_sypSgMd, &_sypSgMR);
    v65 = v92;
    v68 = v92;
    v67 = 1;
    v69 = v91;
    goto LABEL_40;
  }

  v34 = v102;
}

unint64_t type metadata accessor for NSUserActivity()
{
  result = lazy cache variable for type metadata for NSUserActivity;
  if (!lazy cache variable for type metadata for NSUserActivity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserActivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserActivity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject)
  {
    type metadata accessor for NSUserActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject);
  }

  return result;
}

Swift::Void __swiftcall MOSceneDelegate.sceneDidDisconnect(_:)(UIScene a1)
{
  v2 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static MOAngelLogger.shared);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Scene disconnected", v7, 2u);
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1.super.super.isa;
    [v9 _setBackgroundStyle:1];
    v11 = [objc_opt_self() sharedApplication];
    v12 = [v11 delegate];

    if (v12)
    {
      v13 = OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_window;
      swift_beginAccess();
      v14 = *(v2 + v13);
      if (v14)
      {
        v15 = *((swift_isaMask & *v14) + 0x98);
        v16 = v14;
        v15();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id MOSceneDelegate.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_presentationWindow] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

void specialized MOSceneDelegate.windowScene(_:didUpdate:interfaceOrientation:traitCollection:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static MOAngelLogger.shared);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Scene coordinated", v2, 2u);
  }
}

BOOL MOSuggestionSheetOversizedBoundsButton.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v6 = v5;
  [v2 bounds];
  v8 = v7;
  [v2 bounds];
  v12 = CGRectInset(v11, v6 * -1.5, v8 * -1.5);
  v10.x = a1;
  v10.y = a2;
  return CGRectContainsPoint(v12, v10);
}

id MOSuggestionSheetOversizedBoundsButton.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a2, a3, a4, a5);
}

id MOSuggestionSheetOversizedBoundsButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id MOSuggestionSheetOversizedBoundsButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t PropertyDescriptor.className.getter()
{
  v1 = *(v0 + *(type metadata accessor for PropertyDescriptor(0) + 20));

  return v1;
}

uint64_t type metadata accessor for PropertyDescriptor(uint64_t a1)
{
  result = type metadata singleton initialization cache for PropertyDescriptor;
  if (!type metadata singleton initialization cache for PropertyDescriptor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PropertyDescriptor.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for PropertyDescriptor(0) + 24));

  return v1;
}

uint64_t PropertyDescriptor.stringValue.getter()
{
  v1 = type metadata accessor for PropertyDescriptor(0);
  outlined init with copy of Any(v0 + *(v1 + 28), v4);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t PropertyDescriptor.classPropertyValues.getter()
{
  v1 = type metadata accessor for PropertyDescriptor(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2 == 0x7961727241534ELL && v2[1] == 0xE700000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  outlined init with copy of Any(v0 + *(v1 + 28), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService18PropertyDescriptorVGMd, &_sSay16MomentsUIService18PropertyDescriptorVGMR);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t PropertyDescriptor.nestedArrayValue.getter()
{
  v1 = type metadata accessor for PropertyDescriptor(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2 == 0x7961727241534ELL && v2[1] == 0xE700000000000000;
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(v0 + *(v1 + 28), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService18PropertyDescriptorVGMd, &_sSay16MomentsUIService18PropertyDescriptorVGMR);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t PropertyDescriptor.nestedDictionaryValue.getter()
{
  v1 = type metadata accessor for PropertyDescriptor(0);
  outlined init with copy of Any(v0 + *(v1 + 28), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16MomentsUIService18PropertyDescriptorVGMd, &_sSDySS16MomentsUIService18PropertyDescriptorVGMR);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t PropertyDescriptor.fullDescription.getter()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  PropertyDescriptor.buildFullDescriptionJson()(v13);
  v1 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(v13, v13[3]);
  v12 = 0;
  v2 = [v1 dataWithJSONObject:_bridgeAnythingToObjectiveC<A>(_:)() options:1 error:&v12];
  swift_unknownObjectRelease();
  v3 = v12;
  if (!v2)
  {
    v10 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  static String.Encoding.utf8.getter();
  v7 = String.init(data:encoding:)();
  v9 = v8;
  outlined consume of Data._Representation(v4, v6);
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_6:
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v7;
}

char *PropertyDescriptor.buildFullDescriptionJson()@<X0>(double **a1@<X8>)
{
  v3 = type metadata accessor for PropertyDescriptor(0);
  v86 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v87 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v85 = &v83 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v83 - v9;
  v11 = (v1 + *(v8 + 20));
  v12 = *v11 == 0x7961727241534ELL && v11[1] == 0xE700000000000000;
  v13 = v12;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of Any(v1 + *(v3 + 28), v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService18PropertyDescriptorVGMd, &_sSay16MomentsUIService18PropertyDescriptorVGMR);
    if (swift_dynamicCast())
    {
      v14 = *(*&v89[0] + 16);
      if (v14)
      {
        v15 = *&v89[0] + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        v16 = *(v86 + 72);
        v17 = _swiftEmptyArrayStorage;
        do
        {
          outlined init with copy of PropertyDescriptor(v15, v10);
          PropertyDescriptor.buildFullDescriptionJson()(v90);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
          }

          v19 = *(v17 + 2);
          v18 = *(v17 + 3);
          if (v19 >= v18 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
          }

          outlined destroy of PropertyDescriptor(v10);
          *(v17 + 2) = v19 + 1;
          outlined init with take of Any(v90, &v17[4 * v19 + 4]);
          v15 += v16;
          --v14;
        }

        while (v14);
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      a1[3] = result;
      *a1 = v17;
      return result;
    }
  }

  v84 = a1;
  v20 = *(v3 + 28);
  outlined init with copy of Any(v1 + v20, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16MomentsUIService18PropertyDescriptorVGMd, &_sSDySS16MomentsUIService18PropertyDescriptorVGMR);
  if (swift_dynamicCast())
  {
    v21 = *&v89[0];
    v22 = *&v89[0] + 64;
    v23 = 1 << *(*&v89[0] + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(*&v89[0] + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = &_swiftEmptyDictionarySingleton;
    v87 = v21;
    while (1)
    {
      while (1)
      {
        if (!v25)
        {
          while (1)
          {
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v29 >= v26)
            {

              result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
              v78 = v84;
              v84[3] = result;
              *v78 = v28;
              return result;
            }

            v25 = *(v22 + 8 * v29);
            ++v27;
            if (v25)
            {
              v27 = v29;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

LABEL_29:
        v30 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v31 = (v21[6] + ((v27 << 10) | (16 * v30)));
        v33 = *v31;
        v32 = v31[1];
        v34 = v21[2];

        if (v34)
        {
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
          if (v36)
          {
            break;
          }
        }

        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
        v49 = v48;

        if (v49)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = v28;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v28 = v88;
          }

          outlined init with take of Any((*(v28 + 7) + 32 * v47), v89);
          specialized _NativeDictionary._delete(at:)(v47, v28);
        }

        else
        {
          memset(v89, 0, sizeof(v89));
        }

        outlined destroy of Any?(v89);
      }

      v37 = v85;
      outlined init with copy of PropertyDescriptor(v21[7] + *(v86 + 72) * v35, v85);
      PropertyDescriptor.buildFullDescriptionJson()(v90);
      outlined destroy of PropertyDescriptor(v37);
      outlined init with take of Any(v90, v89);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v88 = v28;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
      v41 = *(v28 + 2);
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_76;
      }

      v45 = v40;
      if (*(v28 + 3) >= v44)
      {
        if (v38)
        {
          goto LABEL_40;
        }

        v53 = v39;
        specialized _NativeDictionary.copy()();
        v39 = v53;
        v21 = v87;
        if ((v45 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_41:
        v51 = v39;

        v28 = v88;
        v52 = (*(v88 + 7) + 32 * v51);
        __swift_destroy_boxed_opaque_existential_0(v52);
        outlined init with take of Any(v89, v52);
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, v38);
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_79;
        }

LABEL_40:
        v21 = v87;
        if (v45)
        {
          goto LABEL_41;
        }

LABEL_43:
        v28 = v88;
        *&v88[8 * (v39 >> 6) + 64] |= 1 << v39;
        v54 = (*(v28 + 6) + 16 * v39);
        *v54 = v33;
        v54[1] = v32;
        outlined init with take of Any(v89, (*(v28 + 7) + 32 * v39));
        v55 = *(v28 + 2);
        v43 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v43)
        {
          goto LABEL_78;
        }

        *(v28 + 2) = v56;
      }
    }
  }

  if ((v13 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (outlined init with copy of Any(v1 + v20, v90), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService18PropertyDescriptorVGMd, &_sSay16MomentsUIService18PropertyDescriptorVGMR), (swift_dynamicCast() & 1) == 0))
  {
    outlined init with copy of Any(v1 + v20, v90);
    result = swift_dynamicCast();
    if (result)
    {
      v80 = *(&v89[0] + 1);
      v79 = *&v89[0];
    }

    else
    {
      v79 = 0;
      v80 = 0xE000000000000000;
    }

    v81 = v84;
    v84[3] = &type metadata for String;
    *v81 = v79;
    v81[1] = v80;
    return result;
  }

  v57 = *&v89[0];
  v85 = *(*&v89[0] + 16);
  if (!v85)
  {
    v59 = &_swiftEmptyDictionarySingleton;
LABEL_72:

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v82 = v84;
    v84[3] = result;
    *v82 = v59;
    return result;
  }

  v58 = 0;
  v83 = *&v89[0] + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v59 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v58 >= *(v57 + 16))
    {
      goto LABEL_74;
    }

    v61 = v87;
    outlined init with copy of PropertyDescriptor(v83 + *(v86 + 72) * v58, v87);
    v62 = (v61 + *(v3 + 24));
    v64 = *v62;
    v63 = v62[1];
    PropertyDescriptor.buildFullDescriptionJson()(v90);
    outlined init with take of Any(v90, v89);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v59;
    v67 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v63);
    v68 = *(v59 + 2);
    v69 = (v66 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      break;
    }

    v71 = v66;
    if (*(v59 + 3) >= v70)
    {
      if (v65)
      {
        v59 = v88;
        if (v66)
        {
          goto LABEL_50;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v59 = v88;
        if (v71)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v70, v65);
      v72 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v63);
      if ((v71 & 1) != (v73 & 1))
      {
        goto LABEL_79;
      }

      v67 = v72;
      v59 = v88;
      if (v71)
      {
LABEL_50:
        v60 = (*(v59 + 7) + 32 * v67);
        __swift_destroy_boxed_opaque_existential_0(v60);
        outlined init with take of Any(v89, v60);
        goto LABEL_51;
      }
    }

    *&v59[8 * (v67 >> 6) + 64] |= 1 << v67;
    v74 = (*(v59 + 6) + 16 * v67);
    *v74 = v64;
    v74[1] = v63;
    outlined init with take of Any(v89, (*(v59 + 7) + 32 * v67));
    v75 = *(v59 + 2);
    v43 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v43)
    {
      goto LABEL_77;
    }

    *(v59 + 2) = v76;

LABEL_51:
    ++v58;
    outlined destroy of PropertyDescriptor(v87);
    if (v85 == v58)
    {
      goto LABEL_72;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static PropertyDescriptor.from(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = type metadata accessor for PropertyDescriptor(0);
  v71 = *(v65 - 1);
  v3 = __chkstk_darwin(v65);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v69 = &v64 - v6;
  __chkstk_darwin(v5);
  v8 = &v64 - v7;
  v9 = type metadata accessor for NSFastEnumerationIterator();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 propertyValue];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSArray, NSArray_ptr);
  v14 = &type metadata for Any;
  if (swift_dynamicCast())
  {
    v64 = a1;
    v70 = *&v77[0];
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (v79)
    {
      v15 = _swiftEmptyArrayStorage;
      do
      {
        outlined init with take of Any(&v78, v77);
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PrettyPropertyDescription, &off_100306450);
        swift_dynamicCast();
        v16 = v74;
        static PropertyDescriptor.from(_:)(v74, v8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
        }

        *(v15 + 2) = v18 + 1;
        outlined init with take of PropertyDescriptor(v8, v15 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v18);
        NSFastEnumerationIterator.next()();
      }

      while (v79);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    (*(v10 + 8))(v12, v9);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService18PropertyDescriptorVGMd, &_sSay16MomentsUIService18PropertyDescriptorVGMR);
    *&v78 = v15;
    v50 = v70;
LABEL_35:

    v49 = v66;
    v47 = v65;
    a1 = v64;
    goto LABEL_36;
  }

  v19 = [a1 propertyValue];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
  if (!swift_dynamicCast())
  {
    v45 = [a1 propertyValue];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PrettyPropertyDescription, &off_100306450);
    if (swift_dynamicCast())
    {
      v46 = *&v77[0];
      v47 = v65;
      v79 = v65;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
      static PropertyDescriptor.from(_:)(v46, boxed_opaque_existential_1);

      v49 = v66;
    }

    else
    {
      v51 = [a1 propertyValue];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v79 = &type metadata for String;
      swift_dynamicCast();
      v49 = v66;
      v47 = v65;
    }

LABEL_36:
    v52 = [a1 className];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = [a1 propertyName];
    if (v56)
    {
      v57 = v56;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
    }

    else
    {
      v58 = 0;
      v60 = 0xE000000000000000;
    }

    outlined init with copy of Any(&v78, v49 + v47[7]);
    UUID.init()();
    v61 = (v49 + v47[5]);
    *v61 = v53;
    v61[1] = v55;
    v62 = (v49 + v47[6]);
    *v62 = v58;
    v62[1] = v60;
    return __swift_destroy_boxed_opaque_existential_0(&v78);
  }

  v64 = a1;
  v68 = *&v77[0];
  v20 = [*&v77[0] allKeys];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v67 = *(v21 + 16);
  if (!v67)
  {
    v24 = &_swiftEmptyDictionarySingleton;
LABEL_34:

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS16MomentsUIService18PropertyDescriptorVGMd, &_sSDySS16MomentsUIService18PropertyDescriptorVGMR);
    *&v78 = v24;
    v50 = v68;
    goto LABEL_35;
  }

  v22 = 0;
  v23 = v21 + 32;
  v24 = &_swiftEmptyDictionarySingleton;
  while (v22 < *(v21 + 16))
  {
    outlined init with copy of Any(v23, &v78);
    outlined init with copy of Any(&v78, v77);
    swift_dynamicCast();
    v26 = v75;
    v25 = v76;
    __swift_project_boxed_opaque_existential_0(&v78, v79);
    v27 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_0(&v78);
    v28 = [v68 __swift_objectForKeyedSubscript:v27];
    swift_unknownObjectRelease();
    if (!v28)
    {
      goto LABEL_43;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v73, &v74);
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PrettyPropertyDescription, &off_100306450);
    v29 = v14;
    swift_dynamicCast();
    v30 = v72;
    v31 = v69;
    static PropertyDescriptor.from(_:)(v72, v69);

    outlined init with take of PropertyDescriptor(v31, v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v24;
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
    v35 = v24[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_41;
    }

    v38 = v33;
    if (v24[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v29;
        if (v33)
        {
          goto LABEL_13;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v14 = v29;
        if (v38)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_44;
      }

      v34 = v39;
      v14 = v29;
      if (v38)
      {
LABEL_13:

        v24 = v74;
        outlined assign with take of PropertyDescriptor(v70, *(v74 + 56) + *(v71 + 72) * v34);
        goto LABEL_14;
      }
    }

    v24 = v74;
    *(v74 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    v41 = (v24[6] + 16 * v34);
    *v41 = v26;
    v41[1] = v25;
    outlined init with take of PropertyDescriptor(v70, v24[7] + *(v71 + 72) * v34);
    v42 = v24[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_42;
    }

    v24[2] = v44;
LABEL_14:
    ++v22;
    v23 += 32;
    if (v67 == v22)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined init with take of PropertyDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PropertyDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescriptor(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100254CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100254D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for PropertyDescriptor(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of PropertyDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PropertyDescriptor(uint64_t a1)
{
  v2 = type metadata accessor for PropertyDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall MOSuggestionCollectionViewModel.initiateAuthentication()()
{
  v22 = &type metadata for MOAppProtectionFeatureFlags;
  v1 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v23 = v1;
  v2 = isFeatureEnabled(_:)();
  v3 = __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v2)
  {
    v4 = (*(*v0 + 512))(v3);
    v5 = swift_allocObject();
    swift_weakInit();
    v22 = &type metadata for MOAppProtectionFeatureFlags;
    v23 = v1;

    v6 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v4;
      v9[4] = v8;
      v9[5] = partial apply for closure #1 in MOSuggestionCollectionViewModel.initiateAuthentication();
      v9[6] = v5;
      v10 = *(v4 + 16);
      if (v10)
      {
        v20 = objc_opt_self();

        v11 = (v4 + 40);
        do
        {
          v13 = *(v11 - 1);
          v12 = *v11;
          v14 = one-time initialization token for accessGuard;

          if (v14 != -1)
          {
            swift_once();
          }

          v15 = static MOProtectedAppsManager.accessGuard;
          v16 = String._bridgeToObjectiveC()();
          v17 = [v20 applicationWithBundleIdentifier:v16];

          v18 = swift_allocObject();
          v18[2] = v13;
          v18[3] = v12;
          v18[4] = v8;
          v18[5] = _s16MomentsUIService22MOProtectedAppsManagerC13requestAccess10appSources10completionySayAA0C9AppSourceVG_yAA0cK20AuthenticationResultOctFZyycfU_TA_0;
          v18[6] = v9;
          v23 = partial apply for closure #2 in static MOProtectedAppsManager.requestAccess(appSources:completion:);
          v24 = v18;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
          v22 = &block_descriptor_48;
          v19 = _Block_copy(aBlock);

          [v15 authenticateForSubject:v17 completion:v19];
          _Block_release(v19);

          v11 += 2;
          --v10;
        }

        while (v10);
      }

      else
      {
      }
    }

    else
    {

      closure #1 in MOSuggestionCollectionViewModel.initiateAuthentication()(0, v5);
    }
  }
}

uint64_t sub_100255304(__n128 a1)
{
  swift_weakDestroy();

  return _swift_deallocObject(v1, 24, 7);
}

void MOSuggestionCollectionViewModel.validateConditions(additionalBundleIds:completion:)(uint64_t a1, void (*a2)(uint64_t), int64_t a3)
{
  v4 = v3;
  v65 = &type metadata for MOAppProtectionFeatureFlags;
  v8 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v66 = v8;
  v9 = isFeatureEnabled(_:)();
  v10 = __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v9)
  {
    v58 = v8;
    v59 = a2;
    swift_beginAccess();
    v11 = *(*v4 + 520);

    v11(v12);
    v61 = v4;
    if (a1)
    {
      v57 = a3;
      v13 = a1 + 56;
      v14 = 1 << *(a1 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(a1 + 56);
      a3 = (v14 + 63) >> 6;

      v17 = 0;
      v60 = a1;
      if (v16)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= a3)
        {

          a3 = v57;
          goto LABEL_19;
        }

        v16 = *(v13 + 8 * v18);
        ++v17;
        if (v16)
        {
          v17 = v18;
          do
          {
LABEL_10:
            v19 = (*(a1 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v16)))));
            v20 = v19[1];
            v62 = *v19;
            v21 = *(*v4 + 528);

            v22 = v21(aBlock);
            v24 = v23;
            v25 = *v23;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v24 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
              *v24 = v25;
            }

            v28 = *(v25 + 2);
            v27 = *(v25 + 3);
            if (v28 >= v27 >> 1)
            {
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
              *v24 = v25;
            }

            a1 = v60;
            v16 &= v16 - 1;
            *(v25 + 2) = v28 + 1;
            v29 = &v25[2 * v28];
            *(v29 + 4) = v62;
            *(v29 + 5) = v20;
            v22(aBlock, 0);
            v4 = v61;
          }

          while (v16);
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:
      if (one-time initialization token for filtering == -1)
      {
LABEL_20:
        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static MOAngelLogger.filtering);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          aBlock[0] = v34;
          *v33 = 136315138;
          (*(*v4 + 512))();
          v35 = Array.debugDescription.getter();
          v37 = v36;

          v38 = v35;
          v4 = v61;
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, aBlock);

          *(v33 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v31, v32, "[validateConditions] targetProtectedApps=%s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
        }

        v40 = (*(*v4 + 512))();
        v41 = swift_allocObject();
        swift_weakInit();
        v42 = swift_allocObject();
        v42[2] = v41;
        v42[3] = v59;
        v42[4] = a3;
        v65 = &type metadata for MOAppProtectionFeatureFlags;
        v66 = v58;
        outlined copy of (@escaping @callee_guaranteed () -> ())?(v59);

        v43 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        if (v43)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = 0;
          v45 = swift_allocObject();
          *(v45 + 16) = 1;
          v46 = swift_allocObject();
          v46[2] = v44;
          v46[3] = v40;
          v46[4] = v45;
          v46[5] = partial apply for closure #1 in MOSuggestionCollectionViewModel.validateConditions(additionalBundleIds:completion:);
          v46[6] = v42;
          v47 = *(v40 + 16);
          if (v47)
          {
            v63 = objc_opt_self();

            v48 = (v40 + 40);
            do
            {
              v49 = *(v48 - 1);
              v50 = *v48;
              v51 = one-time initialization token for accessGuard;

              if (v51 != -1)
              {
                swift_once();
              }

              v52 = static MOProtectedAppsManager.accessGuard;
              v53 = String._bridgeToObjectiveC()();
              v54 = [v63 applicationWithBundleIdentifier:v53];

              v55 = swift_allocObject();
              v55[2] = v45;
              v55[3] = v49;
              v55[4] = v50;
              v55[5] = _s16MomentsUIService22MOProtectedAppsManagerC17requiresChallenge10appSources10completionySayAA0C9AppSourceVG_yAA0ckG6ResultOctFZyycfU_TA_0;
              v55[6] = v46;
              v66 = partial apply for closure #2 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:);
              v67 = v55;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
              v65 = &block_descriptor_27_0;
              v56 = _Block_copy(aBlock);

              [v52 getIsChallengeCurrentlyRequiredForSubject:v54 completion:v56];
              _Block_release(v56);

              v48 += 2;
              --v47;
            }

            while (v47);
          }

          else
          {
          }
        }

        else
        {

          closure #1 in MOSuggestionCollectionViewModel.validateConditions(additionalBundleIds:completion:)(1, v41, v59);
        }

        return;
      }
    }

    swift_once();
    goto LABEL_20;
  }

  if (a2)
  {
    a2(v10);
  }
}

void closure #1 in MOSuggestionCollectionViewModel.validateConditions(additionalBundleIds:completion:)(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static MOAngelLogger.filtering);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Authentication not required", v7, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 416))(v27);

      if (v28)
      {
        outlined init with copy of MOProtectedAppsManagerDelegate(v27, v24);
        outlined destroy of MOSuggestionCollectionViewDelegate?(v27);
        v9 = v25;
        v10 = v26;
        __swift_project_boxed_opaque_existential_0(v24, v25);
        (*(v10 + 8))(1, v9, v10);
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      else
      {
        outlined destroy of MOSuggestionCollectionViewDelegate?(v27);
      }
    }

    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      (*(*v18 + 544))(0);
LABEL_24:
    }
  }

  else
  {
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static MOAngelLogger.filtering);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Authentication required", v14, 2u);
    }

    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      (*(*v15 + 416))(v27);

      if (v28)
      {
        outlined init with copy of MOProtectedAppsManagerDelegate(v27, v24);
        outlined destroy of MOSuggestionCollectionViewDelegate?(v27);
        v16 = v25;
        v17 = v26;
        __swift_project_boxed_opaque_existential_0(v24, v25);
        (*(v17 + 8))(0, v16, v17);
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      else
      {
        outlined destroy of MOSuggestionCollectionViewDelegate?(v27);
      }
    }

    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    if (v19)
    {
      (*(*v19 + 544))(1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      MOSuggestionCollectionViewModel.initiateAuthentication()();
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21._rawValue = (*(*v20 + 512))(v20);

    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v23 = *(v22 + 200);

      MOProtectedAppsManager.subscribeToChanges(apps:)(v21);
    }
  }

  if (a3)
  {
    a3(v20);
  }
}

double closure #1 in MOSuggestionCollectionViewModel.initiateAuthentication()(char a1, uint64_t a2)
{
  if (a1)
  {
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOAngelLogger.filtering);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Authentication failed", v5, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 416))(v22);

      if (v23)
      {
        outlined init with copy of MOProtectedAppsManagerDelegate(v22, v19);
        outlined destroy of MOSuggestionCollectionViewDelegate?(v22);
        v7 = v20;
        v8 = v21;
        __swift_project_boxed_opaque_existential_0(v19, v20);
        (*(v8 + 8))(0, v7, v8);
        __swift_destroy_boxed_opaque_existential_0(v19);
      }

      else
      {
        outlined destroy of MOSuggestionCollectionViewDelegate?(v22);
      }
    }

    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (v16)
    {
      (*(*v16 + 544))(1);
LABEL_22:
    }
  }

  else
  {
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static MOAngelLogger.filtering);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Authentication succeeded", v12, 2u);
    }

    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      (*(*v13 + 416))(v22);

      if (v23)
      {
        outlined init with copy of MOProtectedAppsManagerDelegate(v22, v19);
        outlined destroy of MOSuggestionCollectionViewDelegate?(v22);
        v14 = v20;
        v15 = v21;
        __swift_project_boxed_opaque_existential_0(v19, v20);
        (*(v15 + 8))(1, v14, v15);
        __swift_destroy_boxed_opaque_existential_0(v19);
      }

      else
      {
        outlined destroy of MOSuggestionCollectionViewDelegate?(v22);
      }
    }

    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      (*(*v18 + 544))(0);
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_100256354()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002563B4()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100256440()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t outlined destroy of MOSuggestionCollectionViewDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService34MOSuggestionCollectionViewDelegate_pSgMd, &_s16MomentsUIService34MOSuggestionCollectionViewDelegate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MOSuggestionSheetMediaAssetView.assignedTileSize.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_assignedTileSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionSheetMediaAssetView.assignedTileSize.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_assignedTileSize;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for MOSuggestionSheetMediaAssetView.mediaPreviewURL : MOSuggestionSheetMediaAssetView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of URL?(a1, &v8 - v5);
  return (*((swift_isaMask & **a2) + 0x138))(v6);
}

uint64_t MOSuggestionSheetMediaAssetView.mediaPreviewURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaPreviewURL;
  swift_beginAccess();
  return outlined init with copy of URL?(v1 + v3, a1);
}

uint64_t MOSuggestionSheetMediaAssetView.mediaPreviewURL.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaPreviewURL;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v1 + v3);
  return swift_endAccess();
}

void *MOSuggestionSheetMediaAssetView.image.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetMediaAssetView.image.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetMediaAssetView.mediaType.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaType;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionSheetMediaAssetView.mediaType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *MOSuggestionSheetMediaAssetView.bgColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetMediaAssetView.bgColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetMediaAssetView.bgColorVariant.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColorVariant;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionSheetMediaAssetView.bgColorVariant.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColorVariant;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double MOSuggestionSheetMediaAssetView.associatedColors.getter()
{
  swift_beginAccess();

  return result;
}

double MOSuggestionSheetMediaAssetView.associatedColors.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_associatedColors;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *MOSuggestionSheetMediaAssetView.circularProgressIndicator.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_circularProgressIndicator;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetMediaAssetView.circularProgressIndicator.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_circularProgressIndicator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetMediaAssetView.sourceImageMargin.getter()
{
  v1 = (*((swift_isaMask & *v0) + 0x100))();
  if ((v1 - 4) < 4)
  {
    return 0x4018000000000000;
  }

  if (v1 == 8)
  {
    return 0x4024000000000000;
  }

  if (v1 == 2)
  {
    return 0x4018000000000000;
  }

  return 0;
}

uint64_t MOSuggestionSheetMediaAssetView.sourceImageMarginThirdParty.getter()
{
  if ((*((swift_isaMask & *v0) + 0x100))() == 8)
  {
    return 0x4032000000000000;
  }

  else
  {
    return (*((swift_isaMask & *v0) + 0x318))();
  }
}

uint64_t MOSuggestionSheetMediaAssetView.sourceImageLengthThirdParty.getter()
{
  v1 = (*((swift_isaMask & *v0) + 0x100))();
  if ((v1 - 4) < 4)
  {
    return 0x402E000000000000;
  }

  if (v1 == 8)
  {
    return 0x404E000000000000;
  }

  if (v1 == 2)
  {
    return 0x402E000000000000;
  }

  return (*((swift_isaMask & *v0) + 0x318))();
}

uint64_t MOSuggestionSheetMediaAssetView.sourceImageCornerRadiusThirdParty.getter()
{
  v1 = (*((swift_isaMask & *v0) + 0x100))();
  if ((v1 - 4) < 4)
  {
    return 0x4008000000000000;
  }

  if (v1 == 8)
  {
    return 0x401C000000000000;
  }

  if (v1 == 2)
  {
    return 0x4008000000000000;
  }

  return (*((swift_isaMask & *v0) + 0x318))();
}

Swift::Void __swiftcall MOSuggestionSheetMediaAssetView.addSourceImage()()
{
  v1 = (*((swift_isaMask & *v0) + 0x318))();
  if ((v2 & 1) == 0)
  {
    v3 = *&v1;
    v4 = MOSuggestionSheetMediaAssetView.sourceSymbolImage.getter();
    if (v4)
    {
      if ((*(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_needsFallback) & 1) == 0)
      {
        v5 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceImageView;
        v54 = v4;
        [*(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceImageView) setImage:?];
        v6 = *(v0 + v5);
        v7 = objc_opt_self();
        v8 = v6;
        v9 = [v7 whiteColor];
        [v8 setTintColor:v9];

        v10 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceBlurContainerView;
        [*(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceBlurContainerView) _setCornerRadius:3.0];
        [v0 addSubview:*(v0 + v10)];
        v11 = [*(v0 + v10) contentView];
        [v11 addSubview:*(v0 + v5)];

        p_align = &stru_100327FE8.align;
        [*(v0 + v5) setTranslatesAutoresizingMaskIntoConstraints:0];
        v13 = *(v0 + v5);
        v14 = [v13 superview];
        if (v14)
        {
          v15 = v14;
          [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
          v16 = [v13 leadingAnchor];
          v17 = [v15 leadingAnchor];
          v18 = [v16 constraintEqualToAnchor:v17];

          [v18 setConstant:2.4];
          if (v18)
          {
            [v18 setActive:1];
          }

          p_align = (&stru_100327FE8 + 24);
        }

        else
        {
          v18 = 0;
          v15 = v13;
        }

        v19 = *(v0 + v5);
        v20 = [v19 superview];
        if (v20)
        {
          v21 = v20;
          [v19 *(p_align + 222)];
          v22 = [v19 trailingAnchor];
          v23 = [v21 trailingAnchor];
          v24 = [v22 constraintEqualToAnchor:v23];

          [v24 setConstant:-2.4];
          if (v24)
          {
            [v24 setActive:1];
          }

          p_align = (&stru_100327FE8 + 24);
        }

        else
        {
          v24 = 0;
          v21 = v19;
        }

        v25 = *(v0 + v5);
        v26 = [v25 superview];
        if (v26)
        {
          v27 = v26;
          [v25 *(p_align + 222)];
          v28 = [v25 topAnchor];
          v29 = [v27 topAnchor];
          v30 = [v28 constraintEqualToAnchor:v29];

          [v30 setConstant:2.0];
          if (v30)
          {
            [v30 setActive:1];
          }

          p_align = (&stru_100327FE8 + 24);
        }

        else
        {
          v30 = 0;
          v27 = v25;
        }

        v31 = *(v0 + v5);
        v32 = [v31 superview];
        if (v32)
        {
          v33 = v32;
          [v31 *(p_align + 222)];
          v34 = [v31 bottomAnchor];
          v35 = [v33 bottomAnchor];
          v36 = [v34 constraintEqualToAnchor:v35];

          if (v36)
          {
            [v36 setConstant:-2.4];
            [v36 setActive:1];
          }

          p_align = (&stru_100327FE8 + 24);
        }

        else
        {
          v36 = 0;
          v33 = v31;
        }

        v37 = v3;

        [*(v0 + v10) *(p_align + 222)];
        v38 = *(v0 + v10);
        v39 = [v38 superview];
        if (v39)
        {
          v40 = v39;
          [v38 *(p_align + 222)];
          v41 = [v38 leadingAnchor];
          v42 = [v40 leadingAnchor];
          v43 = [v41 constraintEqualToAnchor:v42];

          [v43 setConstant:v37];
          if (v43)
          {
            [v43 setActive:1];
          }

          p_align = (&stru_100327FE8 + 24);
        }

        else
        {
          v43 = 0;
          v40 = v38;
        }

        v44 = *(v0 + v10);
        v45 = [v44 superview];
        if (v45)
        {
          v46 = v45;
          [v44 *(p_align + 222)];
          v47 = [v44 bottomAnchor];
          v48 = [v46 bottomAnchor];
          v49 = [v47 constraintEqualToAnchor:v48];

          if (v49)
          {
            [v49 setConstant:-v37];
            [v49 setActive:1];
          }
        }

        else
        {
          v49 = 0;
          v46 = v44;
        }

        v50 = [*(v0 + v10) widthAnchor];
        v51 = [v50 constraintEqualToConstant:15.0];

        [v51 setActive:1];
        v52 = [*(v0 + v10) heightAnchor];
        v53 = [v52 constraintEqualToConstant:15.0];

        [v53 setActive:1];
        v4 = v53;
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetMediaAssetView.addSourceAppImageBadge(unmaskedAppIcon:)(UIImage unmaskedAppIcon)
{
  *&v3 = COERCE_DOUBLE((*((swift_isaMask & *v1) + 0x320))());
  if ((v4 & 1) == 0)
  {
    v5 = *&v3;
    v6 = (*((swift_isaMask & *v1) + 0x328))();
    if ((v7 & 1) == 0)
    {
      v8 = *&v6;
      *&v9 = COERCE_DOUBLE((*((swift_isaMask & *v1) + 0x330))());
      if ((v10 & 1) == 0)
      {
        v11 = v5;
        v12 = v8;
        v13 = *&v9;
        v14 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceImageView;
        [*(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceImageView) setImage:unmaskedAppIcon.super.isa];
        [*(v1 + v14) _setCornerRadius:v13];
        [*(v1 + v14) setClipsToBounds:1];
        [v1 addSubview:*(v1 + v14)];
        [*(v1 + v14) setTranslatesAutoresizingMaskIntoConstraints:0];
        v15 = *(v1 + v14);
        v16 = [v15 superview];
        p_align = &stru_100327FE8.align;
        if (v16)
        {
          v18 = v16;
          [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
          v19 = [v15 leadingAnchor];
          v20 = [v18 leadingAnchor];
          v21 = [v19 constraintEqualToAnchor:v20];

          [v21 setConstant:v11];
          if (v21)
          {
            [v21 setActive:1];
          }

          p_align = (&stru_100327FE8 + 24);
        }

        else
        {
          v21 = 0;
          v18 = v15;
        }

        v22 = *(v1 + v14);
        v23 = [v22 superview];
        if (v23)
        {
          v24 = v23;
          [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
          v25 = [v22 bottomAnchor];
          v26 = [v24 bottomAnchor];
          v27 = [v25 *(p_align + 278)];

          if (v27)
          {
            [v27 setConstant:-v11];
            [v27 setActive:1];
          }
        }

        else
        {
          v27 = 0;
          v24 = v22;
        }

        v28 = [*(v1 + v14) widthAnchor];
        v29 = [v28 constraintEqualToConstant:v12];

        [v29 setActive:1];
        v30 = [*(v1 + v14) heightAnchor];
        v31 = [v30 constraintEqualToConstant:v12];

        [v31 setActive:1];
      }
    }
  }
}

UIImageView __swiftcall MOSuggestionSheetMediaAssetView.createCoverArt()()
{
  v1 = [objc_allocWithZone(UIImageView) init];
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_needsFallback);
  v3 = v1;
  v4 = v3;
  if (v2 == 1)
  {
    [v3 setContentMode:4];
    if (one-time initialization token for BACKGROUND_COLOR != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:static FallbackConstants.BACKGROUND_COLOR];

    if (one-time initialization token for IMAGE_TINT_COLOR != -1)
    {
      swift_once();
    }

    v5 = [v4 setTintColor:static FallbackConstants.IMAGE_TINT_COLOR];
    v6 = *((swift_isaMask & *v0) + 0x100);
    if ((v6)(v5) == 6 || v6() == 5 || v6() == 8)
    {
      if (one-time initialization token for BIG_SYMBOL != -1)
      {
        swift_once();
      }

      v7 = &static FallbackConstants.BIG_SYMBOL;
    }

    else
    {
      if (one-time initialization token for SMALL_SYMBOL != -1)
      {
        swift_once();
      }

      v7 = &static FallbackConstants.SMALL_SYMBOL;
    }

    v8 = *v7;
    if (*(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_fallbackSymbol + 8))
    {
      v9 = v8;

      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = v8;
      v10 = 0;
    }

    v11 = [objc_opt_self() _systemImageNamed:v10 withConfiguration:v8];

    [v4 setImage:v11];
  }

  else
  {
    [v3 setContentMode:2];
    [v4 setClipsToBounds:1];

    v11 = (*((swift_isaMask & *v0) + 0x148))();
    [v4 setImage:v11];
  }

  return v4;
}

id MOSuggestionSheetMediaAssetView.blendColor(baseColor:overlayColor:opacity:)(void *a1, void *a2, double a3)
{
  if (a3 <= 0.0)
  {

    return a1;
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
    v10 = 0;
    v11 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v6 = 0;
    v7 = 0.0;
    v4 = 1.0 / (a3 + 1.0);
    [a1 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
    [a2 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
    return [objc_allocWithZone(UIColor) initWithRed:v4 * v13 + (1.0 - v4) * v9 green:v4 * v12 + (1.0 - v4) * v8 blue:v4 * v11 + (1.0 - v4) * v7 alpha:1.0];
  }
}

Swift::Void __swiftcall MOSuggestionSheetMediaAssetView.addCoverArtAndMetadataForThirdParty(horizontal:)(Swift::Bool horizontal)
{
  v2 = v1;
  v3 = *((swift_isaMask & *v1) + 0x100);
  p_align = &stru_100327FE8.align;
  if ((v3)(horizontal) == 3)
  {
    v5 = (*((swift_isaMask & *v1) + 0x348))();
    [v2 addSubview:v5];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return;
  }

  type metadata accessor for ThirdPartyMediaColorEffectView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = *((swift_isaMask & *v1) + 0x1A8);
  v8 = v7();
  v184 = v6;
  v189 = v3;
  if (v8)
  {

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static MOAngelLogger.assets);
    v10 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      v15 = v7();
      *(v13 + 4) = v15;
      *v14 = v15;
      *(v13 + 12) = 2048;
      *(v13 + 14) = (*((swift_isaMask & v10->isa) + 0x1C0))();

      _os_log_impl(&_mh_execute_header, v11, v12, "[MOSuggestionSheetMediaAssetView] bgColor %@ and variant %lu", v13, 0x16u);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v6 = v184;

      p_align = (&stru_100327FE8 + 24);
    }

    else
    {

      v11 = v10;
    }

    v21 = v7();
    v22 = (*((swift_isaMask & *v6) + 0x80))(v21);
    v23 = (*((swift_isaMask & v10->isa) + 0x1C0))(v22);
    (*((swift_isaMask & *v6) + 0x98))(v23, 0);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 *(p_align + 295)];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v3 = v189;
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static MOAngelLogger.assets);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "[MOSuggestionSheetMediaAssetView] bgColor is empty, use default color.", v19, 2u);
    }

    v20 = [objc_opt_self() systemGrayColor];
    [v2 _setBackgroundColor:v20];
  }

  v24 = v3();
  if (v24 != 2)
  {
    v24 = v3();
  }

  v187 = (*((swift_isaMask & *v2) + 0x348))(v24);
  v25 = v3();
  v26 = 3.0;
  if (v25 != 2)
  {
    v27 = (v3)(3.0);
    v26 = 8.0;
    if (v27 == 3)
    {
      v26 = 3.0;
    }
  }

  [v187 _setCornerRadius:v26];
  v28 = [v2 traitCollection];
  v29 = [v28 preferredContentSizeCategory];

  v30 = static UIContentSizeCategory.> infix(_:_:)();
  v31 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_labelStackView;
  if ((v3)([*(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_labelStackView) setAxis:1]) == 8)
  {
    [*(v2 + v31) setSpacing:2.0];
  }

  [*(v2 + v31) setAlignment:1];
  [*(v2 + v31) setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_titleLabel;
  v33 = *((swift_isaMask & *v2) + 0x178);
  v34 = *(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_titleLabel);
  v183 = v33;
  v33();
  if (v35)
  {
    v36 = String._bridgeToObjectiveC()();
    v3 = v189;
  }

  else
  {
    v36 = 0;
  }

  v37 = v30;
  [v34 setText:v36];

  v38 = [*(v2 + v32) setNumberOfLines:2];
  if ((v30 & 1) != 0 && ((v3)(v38) == 2 || v3() == 4))
  {
    [*(v2 + v32) setNumberOfLines:1];
  }

  [*(v2 + v32) setLineBreakMode:4];
  v188 = v31;
  if ((v3)([*(v2 + v32) setMaximumContentSizeCategory:?]) == 8)
  {
    v39 = *(v2 + v32);
    v40 = objc_opt_self();
    v41 = v39;
    v42 = [v40 preferredFontForTextStyle:UIFontTextStyleBody];
    v43 = [v42 fontDescriptor];
    v44 = [v43 fontDescriptorWithSymbolicTraits:2];

    if (!v44)
    {
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    isa = [v40 fontWithDescriptor:v44 size:0.0];
  }

  else
  {
    if (v3() == 7 || v3() == 5)
    {
      v46 = *(v2 + v32);
      v47 = objc_opt_self();
      v41 = v46;
      v48 = [v47 preferredFontForTextStyle:UIFontTextStyleFootnote];
    }

    else
    {
      v49 = *(v2 + v32);
      v50 = objc_opt_self();
      v41 = v49;
      v48 = [v50 preferredFontForTextStyle:UIFontTextStyleCaption2];
    }

    v51 = v48;
    isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;
  }

  [v41 setFont:isa];

  v52 = *(v2 + v32);
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 whiteColor];
  v56 = [v55 colorWithAlphaComponent:0.6];

  [v54 setTextColor:v56];
  v57 = [*(v2 + v32) layer];
  v58 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  [v57 setCompositingFilter:v58];

  v185 = *((swift_isaMask & *v2) + 0x1C0);
  if (v185() == 1)
  {
    v59 = *(v2 + v32);
    v60 = [v53 blackColor];
    v61 = [v60 colorWithAlphaComponent:0.6];

    [v59 setTextColor:v61];
  }

  [*(v2 + v32) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v2 + v32) setAdjustsFontForContentSizeCategory:1];
  v62 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_subtitleLabel;
  v63 = *((swift_isaMask & *v2) + 0x190);
  v64 = *(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_subtitleLabel);
  v182 = v63;
  v63();
  v65 = v189;
  if (v66)
  {
    v67 = String._bridgeToObjectiveC()();
  }

  else
  {
    v67 = 0;
  }

  v68 = (&stru_100327FE8 + 24);
  [v64 setText:v67];

  v186 = v53;
  if (v37)
  {
    goto LABEL_57;
  }

  v69 = v183();
  if (!v70)
  {
    goto LABEL_57;
  }

  v71 = v69;
  v72 = v70;
  v73 = v189() - 2;
  if (v73 > 8u)
  {
    v74 = 287.0;
  }

  else
  {
    v74 = dbl_1002AC748[v73];
  }

  v75 = *(v2 + v32);
  v76 = [v75 font];
  if (!v76)
  {
    goto LABEL_142;
  }

  v77 = v76;
  v78 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, v76, v74);

  v79 = *(v2 + v32);
  v80 = [v79 font];
  if (!v80)
  {
LABEL_143:
    __break(1u);
    return;
  }

  v81 = v80;
  v82 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(v71, v72, v80, v74);

  if ((v189)(v83) != 2 && v189() != 4)
  {
    v68 = &stru_100327FE8.align;
    if (v189() != 3 || v78 >= v82)
    {
      goto LABEL_54;
    }

LABEL_57:
    v84 = 1;
    goto LABEL_58;
  }

  v68 = (&stru_100327FE8 + 24);
  if (v78 < v82)
  {
    goto LABEL_57;
  }

LABEL_54:
  v84 = 2;
LABEL_58:
  [*(v2 + v62) setNumberOfLines:v84];
  [*(v2 + v62) setLineBreakMode:4];
  v85 = &UIFontTextStyleBody;
  if ((v189)([*(v2 + v62) setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium]) != 8)
  {
    v85 = &UIFontTextStyleFootnote;
    if (v189() != 7 && v189() != 5)
    {
      v85 = &UIFontTextStyleCaption2;
    }
  }

  v86 = *(v2 + v62);
  v87 = objc_opt_self();
  v88 = *v85;
  v89 = v86;
  v90 = [v87 *(v68 + 235)];
  [v89 setFont:v90];

  if (v189() == 4 || v189() == 2)
  {
    v91 = *(v2 + v62);
    v92 = v186;
    v93 = [v186 whiteColor];
    v94 = [v93 colorWithAlphaComponent:0.25];

    [v91 setTextColor:v94];
    if (v185() == 1)
    {
      v95 = 0.4;
LABEL_67:
      v99 = *(v2 + v62);
      v100 = [v92 blackColor];
      v101 = [v100 colorWithAlphaComponent:v95];

      [v99 setTextColor:v101];
    }
  }

  else
  {
    v96 = *(v2 + v62);
    v92 = v186;
    v97 = [v186 whiteColor];
    v95 = 0.6;
    v98 = [v97 colorWithAlphaComponent:0.6];

    [v96 setTextColor:v98];
    if (v185() == 1)
    {
      goto LABEL_67;
    }
  }

  [*(v2 + v62) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v2 + v62) setAdjustsFontForContentSizeCategory:1];
  v102 = v188;
  [*(v2 + v188) addArrangedSubview:*(v2 + v32)];
  [*(v2 + v188) addArrangedSubview:*(v2 + v62)];
  if ((v189)([*(v2 + v188) setCustomSpacing:*(v2 + v32) afterView:3.0]) != 5 && v189() != 8)
  {
    v137 = v182();
    if (!v138)
    {
      goto LABEL_97;
    }

    v139 = v137;
    v140 = v138;

    v141 = HIBYTE(v140) & 0xF;
    if ((v140 & 0x2000000000000000) == 0)
    {
      v141 = v139 & 0xFFFFFFFFFFFFLL;
    }

    if (!v141)
    {
      v167 = *(v2 + v62);
      v119 = v184;
      v123 = (&stru_100327FE8 + 24);
      if (*(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_category + 8))
      {
LABEL_128:
        v168 = v167;

        v169 = String._bridgeToObjectiveC()();

LABEL_131:
        v65 = v189;
        [v167 setText:v169];

        goto LABEL_81;
      }
    }

    else
    {
LABEL_97:
      (v182)(v137);
      v119 = v184;
      v123 = (&stru_100327FE8 + 24);
      if (v142)
      {

        goto LABEL_81;
      }

      v167 = *(v2 + v62);
      if (*(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_category + 8))
      {
        goto LABEL_128;
      }
    }

    v170 = v167;
    v169 = 0;
    goto LABEL_131;
  }

  v103 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_categoryLabel;
  [*(v2 + v188) addArrangedSubview:*(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_categoryLabel)];
  v104 = (v189)([*(v2 + v103) setNumberOfLines:1]);
  v105 = *(v2 + v103);
  v106 = objc_opt_self();
  if (v104 == 8)
  {
    v107 = 10.0;
  }

  else
  {
    v107 = 6.0;
  }

  v108 = &UIFontTextStyleCaption2;
  if (v104 == 8)
  {
    v108 = &UIFontTextStyleBody;
  }

  v109 = *v108;
  v110 = v105;
  v111 = [v106 preferredFontForTextStyle:v109];
  [v110 setFont:v111];

  [*(v2 + v188) setCustomSpacing:*(v2 + v62) afterView:v107];
  v112 = *(v2 + v103);
  v113 = [v186 whiteColor];
  v114 = [v113 colorWithAlphaComponent:0.25];

  [v112 setTextColor:v114];
  if (v185() == 1)
  {
    v115 = *(v2 + v103);
    v116 = [v186 blackColor];
    v117 = [v116 colorWithAlphaComponent:0.25];

    [v115 setTextColor:v117];
  }

  v118 = *(v2 + v103);
  v119 = v184;
  if (*(v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_category + 8))
  {
    v120 = v118;

    v121 = String._bridgeToObjectiveC()();
  }

  else
  {
    v122 = v118;
    v121 = 0;
  }

  v102 = v188;
  v123 = &stru_100327FE8.align;
  [v118 setText:v121];

  [*(v2 + v103) setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*(v2 + v103) setAdjustsFontForContentSizeCategory:1];
  v65 = v189;
LABEL_81:
  v124 = (v65)([*&v119[OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_contentView] *(v123 + 295)]);
  if (v124 <= 4)
  {
    if (v124 != 2 && v124 != 4)
    {
      goto LABEL_122;
    }

    v131 = *(v2 + v102);
    v132 = [v131 superview];
    if (v132)
    {
      v133 = v132;
      [v131 setTranslatesAutoresizingMaskIntoConstraints:0];
      v134 = [v131 leadingAnchor];
      v135 = [v133 leadingAnchor];
      v136 = [v134 constraintEqualToAnchor:v135];

      [v136 setConstant:6.6];
      if (v136)
      {
        [v136 setActive:1];
      }

      v102 = v188;
    }

    else
    {
      v136 = 0;
      v133 = v131;
    }

    v157 = *(v2 + v102);
    v158 = [v157 superview];
    if (v158)
    {
      v159 = v158;
      [v157 setTranslatesAutoresizingMaskIntoConstraints:0];
      v160 = [v157 trailingAnchor];
      v161 = [v159 trailingAnchor];
      v162 = [v160 constraintEqualToAnchor:v161];

      [v162 setConstant:-6.0];
      if (v162)
      {
        [v162 setActive:1];
      }

      v102 = v188;
    }

    else
    {
      v162 = 0;
      v159 = v157;
    }

    v155 = *(v2 + v102);
    v156 = [v155 superview];
    if (v156)
    {
      goto LABEL_119;
    }

    goto LABEL_121;
  }

  if (v124 - 5 >= 3)
  {
    if (v124 == 8)
    {
      v143 = *(v2 + v102);
      v144 = [v143 superview];
      if (v144)
      {
        v145 = v144;
        [v143 setTranslatesAutoresizingMaskIntoConstraints:0];
        v146 = [v143 leadingAnchor];
        v147 = [v145 leadingAnchor];
        v148 = [v146 constraintEqualToAnchor:v147];

        [v148 setConstant:18.0];
        if (v148)
        {
          [v148 setActive:1];
        }

        v102 = v188;
      }

      else
      {
        v148 = 0;
        v145 = v143;
      }

      v171 = *(v2 + v102);
      v172 = [v171 superview];
      if (v172)
      {
        v173 = v172;
        [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
        v174 = [v171 trailingAnchor];
        v175 = [v173 trailingAnchor];
        v176 = [v174 constraintEqualToAnchor:v175];

        [v176 setConstant:-18.0];
        if (v176)
        {
          [v176 setActive:1];
        }

        v102 = v188;
      }

      else
      {
        v176 = 0;
        v173 = v171;
      }

      v177 = *(v2 + v102);
      v178 = [v177 superview];
      if (v178)
      {
        v190 = v178;
        [v177 setTranslatesAutoresizingMaskIntoConstraints:0];
        v179 = [v177 topAnchor];
        v180 = [v190 topAnchor];
        v181 = [v179 constraintEqualToAnchor:v180];

        [v181 setConstant:23.4];
        [v181 setActive:1];

        goto LABEL_120;
      }

LABEL_123:
      v166 = v187;
      goto LABEL_124;
    }

LABEL_122:

    goto LABEL_123;
  }

  v125 = *(v2 + v102);
  v126 = [v125 superview];
  if (v126)
  {
    v127 = v126;
    [v125 setTranslatesAutoresizingMaskIntoConstraints:0];
    v128 = [v125 leadingAnchor];
    v129 = [v127 leadingAnchor];
    v130 = [v128 constraintEqualToAnchor:v129];

    [v130 setConstant:14.3];
    if (v130)
    {
      [v130 setActive:1];
    }

    v102 = v188;
  }

  else
  {
    v130 = 0;
    v127 = v125;
  }

  v149 = *(v2 + v102);
  v150 = [v149 superview];
  if (v150)
  {
    v151 = v150;
    [v149 setTranslatesAutoresizingMaskIntoConstraints:0];
    v152 = [v149 trailingAnchor];
    v153 = [v151 trailingAnchor];
    v154 = [v152 constraintEqualToAnchor:v153];

    [v154 setConstant:-13.0];
    if (v154)
    {
      [v154 setActive:1];
    }

    v102 = v188;
  }

  else
  {
    v154 = 0;
    v151 = v149;
  }

  v155 = *(v2 + v102);
  v156 = [v155 superview];
  if (!v156)
  {
LABEL_121:

    goto LABEL_122;
  }

LABEL_119:
  v190 = v156;
  [v155 setTranslatesAutoresizingMaskIntoConstraints:0];
  v163 = [v155 topAnchor];
  v164 = [v190 topAnchor];
  v165 = [v163 constraintEqualToAnchor:v164];

  [v165 setConstant:13.0];
  [v165 setActive:1];

LABEL_120:
  v166 = v190;
LABEL_124:
}

Swift::Void __swiftcall MOSuggestionSheetMediaAssetView.addCoverArtAndMetadata()()
{
  v1 = v0;
  v142 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_needsFallback;
  if ((*(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_needsFallback) & 1) == 0)
  {
    v2 = (*((swift_isaMask & *v0) + 0x348))();
    [v1 addSubview:v2];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  v3 = [objc_opt_self() effectWithStyle:16];
  v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];
  [v1 addSubview:v4];
  v5 = [v4 superview];
  if (v5)
  {
    v6 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v4 trailingAnchor];
    v8 = [v6 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    [v9 setConstant:0.0];
    if (v9)
    {
      [v9 setActive:1];
    }
  }

  v10 = [v4 superview];
  if (v10)
  {
    v11 = v10;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v4 bottomAnchor];
    v13 = [v11 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    if (v14)
    {
      [v14 setConstant:-0.0];
      [v14 setActive:1];
    }
  }

  v15 = [v4 superview];
  if (v15)
  {
    v16 = v15;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v4 topAnchor];
    v18 = [v16 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }
  }

  v20 = [v4 widthAnchor];
  v145 = v4;

  v21 = [v1 widthAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 multiplier:0.5];

  [v22 setActive:1];
  v23 = (*((swift_isaMask & *v1) + 0x348))();
  [v1 addSubview:v23];
  v24 = [v23 superview];
  v150 = v23;
  if (v24)
  {
    v25 = v24;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [v23 leadingAnchor];
    v27 = [v25 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    v23 = v150;
    [v28 setConstant:0.0];
    [v28 setActive:1];
  }

  v29 = [v23 superview];
  if (v29)
  {
    v30 = v29;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v23 topAnchor];
    v32 = [v30 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    v23 = v150;
    [v33 setConstant:0.0];
    [v33 setActive:1];
  }

  v34 = [v23 superview];
  if (v34)
  {
    v35 = v34;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = [v23 bottomAnchor];
    v37 = [v35 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    if (v38)
    {
      [v38 setConstant:-0.0];
      [v38 setActive:1];
    }

    v23 = v150;
  }

  v39 = [v23 widthAnchor];

  v40 = [v1 widthAnchor];
  v41 = v23;
  v42 = [v39 constraintEqualToAnchor:v40 multiplier:0.5];

  [v42 setActive:1];
  v146 = v3;
  v144 = [objc_opt_self() effectForBlurEffect:v3 style:4];
  v43 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v144];
  [v1 addSubview:v43];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = [v43 leadingAnchor];
  v45 = [v41 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  [v46 setConstant:0.0];
  [v46 setActive:1];

  v47 = [v43 superview];
  if (v47)
  {
    v48 = v47;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [v43 trailingAnchor];
    v50 = [v48 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    [v51 setConstant:0.0];
    [v51 setActive:1];
  }

  v52 = [v43 superview];
  if (v52)
  {
    v53 = v52;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = [v43 bottomAnchor];
    v55 = [v53 bottomAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    if (v56)
    {
      [v56 setConstant:-0.0];
      [v56 setActive:1];
    }
  }

  v57 = [v43 superview];
  if (v57)
  {
    v58 = v57;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = [v43 topAnchor];
    v60 = [v58 topAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    [v61 setConstant:0.0];
    [v61 setActive:1];
  }

  v62 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_labelStackView;
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_labelStackView) setAxis:1];
  [*(v1 + v62) setSpacing:2.0];
  [*(v1 + v62) setAlignment:1];
  [*(v1 + v62) setTranslatesAutoresizingMaskIntoConstraints:0];
  v63 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_titleLabel;
  v64 = *((swift_isaMask & *v1) + 0x178);
  v65 = *(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_titleLabel);
  v64();
  v147 = v43;
  if (v66)
  {
    v67 = String._bridgeToObjectiveC()();
  }

  else
  {
    v67 = 0;
  }

  [v65 setText:v67];

  [*(v1 + v63) setNumberOfLines:3];
  [*(v1 + v63) setLineBreakMode:4];
  [*(v1 + v63) setMaximumContentSizeCategory:?];
  v68 = *(v1 + v63);
  v69 = objc_opt_self();
  v70 = v68;
  v71 = [v69 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v72.super.isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  v73 = [(objc_class *)v72.super.isa fontDescriptor];
  v74 = [v73 fontDescriptorWithSymbolicTraits:2];

  if (v74)
  {
    v148 = v69;
    v75 = [v69 fontWithDescriptor:v74 size:0.0];

    [v70 setFont:v75];
    v76 = *(v1 + v63);
    v77 = objc_opt_self();
    v78 = v76;
    v79 = [v77 whiteColor];
    v80 = [v79 colorWithAlphaComponent:0.7];

    [v78 setTextColor:v80];
    [*(v1 + v63) setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_subtitleLabel;
    v82 = *((swift_isaMask & *v1) + 0x190);
    v83 = *(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_subtitleLabel);
    v82();
    v85 = v62;
    if (v84)
    {
      v86 = String._bridgeToObjectiveC()();
    }

    else
    {
      v86 = 0;
    }

    [v83 setText:v86];

    [*(v1 + v81) setNumberOfLines:1];
    [*(v1 + v81) setLineBreakMode:4];
    [*(v1 + v81) setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v87 = *(v1 + v81);
    v88 = [v148 preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v87 setFont:v88];

    v89 = *((swift_isaMask & *v1) + 0x100);
    v90 = *(v1 + v81);
    LODWORD(v88) = v89();
    v91 = [v77 whiteColor];
    v92 = v91;
    v93 = 0.7;
    if (v88 != 6)
    {
      v93 = 0.4;
    }

    v94 = [v91 colorWithAlphaComponent:v93];

    [v90 setTextColor:v94];
    [*(v1 + v81) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v1 + v85) addArrangedSubview:*(v1 + v63)];
    if ((v89)([*(v1 + v85) addArrangedSubview:*(v1 + v81)]) == 6)
    {
      [*(v1 + v85) setCustomSpacing:*(v1 + v81) afterView:5.0];
      v95 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_categoryLabel;
      [*(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_categoryLabel) setNumberOfLines:1];
      v96 = *(v1 + v95);
      v97 = [v148 preferredFontForTextStyle:UIFontTextStyleFootnote];
      [v96 setFont:v97];

      v98 = *(v1 + v95);
      v99 = [v77 whiteColor];
      v100 = [v99 colorWithAlphaComponent:0.4];

      [v98 setTextColor:v100];
      v101 = *(v1 + v95);
      if (*(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_category + 8))
      {
        v102 = v101;

        v103 = String._bridgeToObjectiveC()();
      }

      else
      {
        v104 = v101;
        v103 = 0;
      }

      [v101 setText:v103];

      [*(v1 + v95) setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v105 = [*(v1 + v85) addArrangedSubview:*(v1 + v95)];
      v106 = *((swift_isaMask & *v1) + 0x160);
      if (((v106)(v105) == 1 || v106() == 4) && (*(v1 + v143) & 1) == 0)
      {
        v107 = (*((swift_isaMask & *v1) + 0x118))();
        v109 = v108;
        v110 = objc_allocWithZone(type metadata accessor for MOCircularProgressIndicatorView());
        v111 = MOCircularProgressIndicatorView.init(mediaAssetID:)(v107, v109);
        v112 = *((swift_isaMask & *v1) + 0x300);
        v113 = v111;
        v112(v111);
        v114 = v113;
        [v1 addSubview:v114];
        [v114 setTranslatesAutoresizingMaskIntoConstraints:0];

        [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
        v115 = [v114 topAnchor];
        v116 = [v147 topAnchor];
        v117 = [v115 constraintEqualToAnchor:v116 constant:7.0];

        [v117 setActive:1];
        [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
        v118 = [v114 leadingAnchor];
        v119 = [v147 leadingAnchor];
        v120 = [v118 constraintEqualToAnchor:v119 constant:7.0];

        [v120 setActive:1];
        [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
        v121 = [v114 widthAnchor];
        v122 = [v121 constraintEqualToConstant:30.0];

        [v122 setActive:1];
        [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
        v123 = [v114 heightAnchor];
        v124 = [v123 constraintEqualToConstant:30.0];

        [v124 setActive:1];
      }
    }

    if (v89() == 4)
    {
      v125 = 8.0;
    }

    else
    {
      v125 = 12.0;
    }

    [v1 addSubview:*(v1 + v85)];
    v126 = *(v1 + v85);
    [v126 setTranslatesAutoresizingMaskIntoConstraints:0];
    v127 = [v126 leadingAnchor];
    v128 = [v147 leadingAnchor];
    v129 = [v127 constraintEqualToAnchor:v128 constant:v125];

    [v129 setActive:1];
    v130 = -v125;
    v131 = *(v1 + v85);
    [v131 setTranslatesAutoresizingMaskIntoConstraints:0];
    v132 = [v131 trailingAnchor];
    v133 = [v147 trailingAnchor];
    v134 = [v132 constraintEqualToAnchor:v133 constant:v130];

    [v134 setActive:1];
    v135 = *(v1 + v85);
    v136 = [v135 superview];
    if (v136)
    {
      v137 = v136;
      [v135 setTranslatesAutoresizingMaskIntoConstraints:0];
      v138 = [v135 bottomAnchor];
      v139 = [v137 bottomAnchor];
      v149 = [v138 constraintEqualToAnchor:v139];

      v141 = v145;
      v140 = v146;
      if (v149)
      {
        [v149 setConstant:v130];
        [v149 setActive:1];
      }

      else
      {
        v149 = 0;
      }
    }

    else
    {
      v149 = 0;
      v137 = v135;
      v141 = v145;
      v140 = v146;
    }
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionSheetMediaAssetView.sourceSymbolImage.getter()
{
  v1 = (*((swift_isaMask & *v0) + 0x160))();
  v2 = 0;
  if (v1 <= 8 && (((1 << v1) & 0x1C0) != 0 || ((1 << v1) & 0x12) != 0 || ((1 << v1) & 0x24) != 0))
  {
    v3 = String._bridgeToObjectiveC()();
    v2 = [objc_opt_self() _systemImageNamed:v3];
  }

  return v2;
}

void *ThirdPartyMediaColorEffectView.fillColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ThirdPartyMediaColorEffectView.fillColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ThirdPartyMediaColorEffectView.colorVariant.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_colorVariant;
  swift_beginAccess();
  return *v1;
}

void ThirdPartyMediaColorEffectView.colorVariant.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_colorVariant;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

char *ThirdPartyMediaColorEffectView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_contentView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_overlayView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillColor] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_colorVariant];
  *v12 = 0;
  v12[8] = 1;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for ThirdPartyMediaColorEffectView();
  v13 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillView;
  v15 = *&v13[OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillView];
  v16 = v13;
  v17 = v15;
  [v16 bounds];
  [v17 setFrame:?];

  [*&v13[v14] setAutoresizingMask:18];
  [*&v13[v14] setContentMode:2];
  [v16 addSubview:*&v13[v14]];
  v18 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_overlayView;
  v19 = *&v16[OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_overlayView];
  [v16 bounds];
  [v19 setFrame:?];

  [*&v16[v18] setAutoresizingMask:18];
  [v16 addSubview:*&v16[v18]];
  v20 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_contentView;
  v21 = *&v16[OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_contentView];
  [v16 bounds];
  [v21 setFrame:?];

  [*&v16[v20] setAutoresizingMask:18];
  [v16 addSubview:*&v16[v20]];

  return v16;
}

uint64_t ThirdPartyMediaColorEffectView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_contentView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillView;
  *(v1 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_overlayView;
  v6 = [objc_allocWithZone(UIView) init];

  *(v1 + v5) = v6;
  v7 = OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillColor;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillColor) = 0;
  v8 = v1 + OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_colorVariant;
  *v8 = 0;
  *(v8 + 8) = 1;

  type metadata accessor for ThirdPartyMediaColorEffectView();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ThirdPartyMediaColorEffectView.layoutSubviews()()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for ThirdPartyMediaColorEffectView();
  v1 = objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_fillView);
  v3 = (*((swift_isaMask & *v0) + 0x78))(v1);
  [v2 setBackgroundColor:v3];

  v4 = (*((swift_isaMask & *v0) + 0x90))();
  if (v5)
  {
    v6 = &kCAFilterPlusL;
    v7 = &selRef_systemWhiteColor;
    v8 = 0.13;
    v9 = 2;
  }

  else
  {
    v10 = v4 - 1;
    if ((v4 - 1) > 2)
    {
      return;
    }

    v9 = qword_1002AC790[v10];
    v7 = off_100316FC0[v10];
    v8 = dbl_1002AC7A8[v10];
    v6 = *(&off_100316FD8 + v10);
  }

  [v0 setOverrideUserInterfaceStyle:v9];
  v11 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_overlayView);
  v12 = [objc_opt_self() *v7];
  v13 = [v12 colorWithAlphaComponent:v8];

  [v11 setBackgroundColor:v13];
  v14 = [v11 layer];
  [v14 setCompositingFilter:0];

  v15 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService30ThirdPartyMediaColorEffectView_contentView) layer];
  [v15 setCompositingFilter:*v6];
}

id MOSuggestionSheetMediaAssetView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *specialized MOSuggestionSheetMediaAssetView.init(mediaAssetID:mediaPreviewURL:image:mediaType:sizeType:title:subtitle:assignedTileSize:bgColor:associatedColors:colorVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, void *a11, uint64_t a12, uint64_t a13)
{
  v14 = &v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaAssetID];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaPreviewURL;
  v107 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaPreviewURL;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(&v13[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_image;
  *&v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_image] = 0;
  v18 = &v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_title];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_subtitle];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColor;
  *&v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColor] = 0;
  v108 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColorVariant;
  *&v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColorVariant] = 0;
  v109 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_associatedColors;
  *&v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_associatedColors] = 0;
  v21 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_coverArtView;
  *&v13[v21] = [objc_allocWithZone(UIImageView) init];
  v22 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_titleLabel;
  *&v13[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_subtitleLabel;
  *&v13[v23] = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_categoryLabel;
  *&v13[v24] = [objc_allocWithZone(UILabel) init];
  v25 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_labelStackView;
  *&v13[v25] = [objc_allocWithZone(UIStackView) init];
  v26 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_imageView;
  *&v13[v26] = [objc_allocWithZone(UIImageView) init];
  v27 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceBlurContainerView;
  v28 = [objc_opt_self() effectWithStyle:16];
  v29 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v28];

  *&v13[v27] = v29;
  v30 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceImageView;
  *&v13[v30] = [objc_allocWithZone(UIImageView) init];
  v31 = &v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_category];
  v31->_countAndFlagsBits = 0;
  v31->_object = 0;
  v116 = v31;
  v32 = &v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_fallbackSymbol];
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_needsFallback;
  v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_needsFallback] = 0;
  *&v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_circularProgressIndicator] = 0;
  swift_beginAccess();
  *v14 = a1;
  v14[1] = a2;

  swift_beginAccess();
  v34 = *&v13[v17];
  *&v13[v17] = a4;
  v106 = a4;

  *&v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaType] = a5;
  swift_beginAccess();
  outlined assign with copy of URL?(a3, &v13[v107]);
  swift_endAccess();
  swift_beginAccess();
  *v18 = a6;
  v18[1] = a7;

  swift_beginAccess();
  *v19 = a8;
  v19[1] = a9;

  swift_beginAccess();
  v35 = *&v13[v20];
  *&v13[v20] = a11;
  v36 = a11;

  swift_beginAccess();
  *&v13[v108] = a13;
  swift_beginAccess();
  *&v13[v109] = a12;

  v13[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_assignedTileSize] = a10;
  if (!*&v13[v17])
  {
    v13[v33] = 1;
  }

  if (a5 <= 3)
  {
    if (a5 != 1)
    {
      if (a5 != 2)
      {
        if (a5 == 3)
        {
          v37 = [objc_opt_self() mainBundle];
          v104 = 0x80000001002BBEA0;
          v38 = 0x6F65646956;
LABEL_21:
          v40 = 0xE500000000000000;
          v41.super.isa = v37;
          v42 = 0;
          v43 = 0xE000000000000000;
          v39 = 0xD000000000000014;
          goto LABEL_22;
        }

LABEL_17:
        v37 = [objc_opt_self() mainBundle];
        v104 = 0x80000001002BBE10;
        v38 = 0x616964654DLL;
        goto LABEL_21;
      }

LABEL_15:
      v44 = [objc_opt_self() mainBundle];
      v123._object = 0x80000001002BBEE0;
      v45._countAndFlagsBits = 0x74736163646F50;
      v123._countAndFlagsBits = 0xD000000000000016;
      v45._object = 0xE700000000000000;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v123);

      *v116 = v47;

      *v32 = xmmword_1002AC570;
      goto LABEL_23;
    }

    v48 = [objc_opt_self() mainBundle];
    v49 = 0xD000000000000013;
    v105 = 0x80000001002BBEC0;
    v50 = 1735290707;
    v51 = 0xE400000000000000;
    v52.super.isa = v48;
    v53 = 0;
    v54 = 0xE000000000000000;
LABEL_19:
    v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, 0, v52, *&v53, *&v49);

    *v116 = v55;

    *v32 = xmmword_1002AC560;
    goto LABEL_23;
  }

  if (a5 <= 6)
  {
    if (a5 != 4)
    {
      if (a5 != 5)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v48 = [objc_opt_self() mainBundle];
    v105 = 0x80000001002BBE80;
    v50 = 0x6D75626C41;
    v51 = 0xE500000000000000;
    v52.super.isa = v48;
    v53 = 0;
    v54 = 0xE000000000000000;
    v49 = 0xD000000000000014;
    goto LABEL_19;
  }

  if (a5 == 7)
  {
    v37 = [objc_opt_self() mainBundle];
    v104 = 0x80000001002BBE80;
    v38 = 0x6D75626C41;
    goto LABEL_21;
  }

  if (a5 != 8)
  {
    goto LABEL_17;
  }

  v37 = [objc_opt_self() mainBundle];
  v104 = 0x80000001002BBE60;
  v38 = 0x747369747241;
  v39 = 0xD000000000000015;
  v40 = 0xE600000000000000;
  v41.super.isa = v37;
  v42 = 0;
  v43 = 0xE000000000000000;
LABEL_22:
  v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v38, 0, v41, *&v42, *(&v104 - 1));

  *v116 = v56;
LABEL_23:

  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v122.receiver = v13;
  v122.super_class = type metadata accessor for MOSuggestionSheetMediaAssetView(0);
  v60 = objc_msgSendSuper2(&v122, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v61 = v60;
  v62 = a5;
  v63 = a5 - 6;
  if ((a5 - 6) <= 2)
  {
    v113 = v60;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static MOAngelLogger.assets);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v121[0] = v68;
      *v67 = 136315138;
      v69 = MOSuggestionAssetTileSize.description.getter(a10);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v121);

      *(v67 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v65, v66, "[MOSuggestionSheetMediaAssetView] assignedTileSize=%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v63 = a5 - 6;

      v62 = a5;
    }

    v61 = v113;
  }

  if (a10 > 5u)
  {
    if (a10 != 6)
    {
      if (a10 == 7)
      {
        if (v63 <= 2)
        {
LABEL_57:
          (*((swift_isaMask & *v61) + 0x358))(1);
        }
      }

      else if (a10 == 8)
      {
        goto LABEL_37;
      }

LABEL_58:

      goto LABEL_59;
    }

LABEL_39:
    if (v63 > 2)
    {

      (*((swift_isaMask & *v61) + 0x360))(v72);
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  if (a10 - 2 < 2)
  {
    goto LABEL_37;
  }

  if (a10 == 4)
  {
    goto LABEL_39;
  }

  if (a10 != 5)
  {
    goto LABEL_58;
  }

LABEL_37:
  if (v63 > 2)
  {
    v73 = (*((swift_isaMask & *v61) + 0x348))();
    [v61 addSubview:v73];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  else
  {
    (*((swift_isaMask & *v61) + 0x358))(0);
  }

  if (a10 != 5 && a10 != 8 || v62 != 4 && v62 != 1 || (*(v61 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_needsFallback) & 1) != 0)
  {
    goto LABEL_58;
  }

  v74 = objc_allocWithZone(type metadata accessor for MOCircularProgressIndicatorView());
  v75 = v61;
  v76 = MOCircularProgressIndicatorView.init(mediaAssetID:)(a1, a2);
  v77 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_circularProgressIndicator;
  swift_beginAccess();
  v78 = *&v75[v77];
  *&v75[v77] = v76;
  v79 = v76;

  v80 = v79;
  v114 = v75;
  [v75 addSubview:v80];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];

  v81 = [v80 superview];
  if (v81)
  {
    v82 = v81;
    [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
    v83 = [v80 topAnchor];
    v84 = [v82 topAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];

    [v85 setConstant:7.0];
    if (v85)
    {
      [v85 setActive:1];
    }
  }

  v86 = [v80 superview];
  if (v86)
  {
    v87 = v86;
    [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
    v88 = [v80 leadingAnchor];
    v89 = [v87 leadingAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];

    [v90 setConstant:7.0];
    if (v90)
    {
      [v90 setActive:1];
    }
  }

  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v91 = [v80 widthAnchor];
  v92 = [v91 constraintEqualToConstant:30.0];

  [v92 setActive:1];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v93 = [v80 heightAnchor];
  v94 = [v93 constraintEqualToConstant:30.0];

  [v94 setActive:1];
  v61 = v114;
LABEL_59:
  v95 = v61;
  [v95 setIsAccessibilityElement:1];
  v96 = UIAccessibilityTraitImage;
  v97 = [v95 accessibilityTraits];
  if ((v96 & ~v97) != 0)
  {
    v98 = v96;
  }

  else
  {
    v98 = 0;
  }

  [v95 setAccessibilityTraits:v98 | v97];
  [v95 setAccessibilityIgnoresInvertColors:1];
  v99 = [objc_opt_self() mainBundle];
  v124._object = 0x80000001002BBE30;
  v124._countAndFlagsBits = 0xD000000000000024;
  v100._countAndFlagsBits = 0x616964654DLL;
  v100._object = 0xE500000000000000;
  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v100, 0, v99, v101, v124);

  v102 = String._bridgeToObjectiveC()();

  [v95 setAccessibilityLabel:v102];

  if ((a5 - 6) > 2)
  {
    (*((swift_isaMask & *v95) + 0x338))();
  }

  else
  {
    if (!a4)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      return v95;
    }

    (*((swift_isaMask & *v95) + 0x340))(v106);
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v95;
}

void specialized MOSuggestionSheetMediaAssetView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaAssetID);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_mediaPreviewURL;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_image) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_title);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_subtitle);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_bgColorVariant) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_associatedColors) = 0;
  v6 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_coverArtView;
  *(v0 + v6) = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_titleLabel;
  *(v0 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_subtitleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_categoryLabel;
  *(v0 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_labelStackView;
  *(v0 + v10) = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_imageView;
  *(v0 + v11) = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceBlurContainerView;
  v13 = [objc_opt_self() effectWithStyle:16];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *(v0 + v12) = v14;
  v15 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_sourceImageView;
  *(v0 + v15) = [objc_allocWithZone(UIImageView) init];
  v16 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_category);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_fallbackSymbol);
  *v17 = 0;
  v17[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_needsFallback) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetMediaAssetView_circularProgressIndicator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for MOSuggestionSheetMediaAssetView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOSuggestionSheetMediaAssetView;
  if (!type metadata singleton initialization cache for MOSuggestionSheetMediaAssetView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10025D618@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_10025D6DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x118))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10025D740(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x120);

  return v4(v2, v3);
}

uint64_t sub_10025D820@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_10025D884(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x150);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10025D8F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t sub_10025D9B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x178))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10025DA1C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x180);

  return v4(v2, v3);
}

uint64_t sub_10025DA9C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x190))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10025DB00(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x198);

  return v4(v2, v3);
}

uint64_t sub_10025DB80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t sub_10025DBE4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x1B0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10025DC54@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t sub_10025DD18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

uint64_t sub_10025DD7C(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x1E0);

  return v2(v3);
}

uint64_t sub_10025DDE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x2F8))();
  *a2 = result;
  return result;
}

uint64_t sub_10025DE4C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x300);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10025DEBC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_10025DF18(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10025DF80@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x90))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void type metadata completion function for MOSuggestionSheetMediaAssetView(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void _s16MomentsUIService11MOWeakArrayVyACyxGSayxGcfCAA31MOSuggestionSheetAssetViewModelC_Tt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      do
      {
        v4 = v3 + 1;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService15MOWeakReferenceCyAA31MOSuggestionSheetAssetViewModelCGMd, &_s16MomentsUIService15MOWeakReferenceCyAA31MOSuggestionSheetAssetViewModelCGMR);
        swift_allocObject();
        swift_weakInit();
        swift_beginAccess();
        swift_weakAssign();
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v3 = v4;
      }

      while (v2 != v4);
    }

    else
    {
      v5 = 32;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService15MOWeakReferenceCyAA31MOSuggestionSheetAssetViewModelCGMd, &_s16MomentsUIService15MOWeakReferenceCyAA31MOSuggestionSheetAssetViewModelCGMR);
        swift_allocObject();
        swift_weakInit();
        swift_beginAccess();
        swift_weakAssign();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 += 8;
        --v2;
      }

      while (v2);
    }

    goto LABEL_12;
  }

  __break(1u);
}

Swift::String __swiftcall Date.getFullDateNumber()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for fullDateFormatter, &static MODateFormatter.fullDateFormatter, one-time initialization function for fullDateFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getRelativeDate()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  if (Calendar.isDateInToday(_:)() & 1) != 0 || (Calendar.isDateInYesterday(_:)())
  {
    if (one-time initialization token for relativeDateFormatter != -1)
    {
      swift_once();
    }

    v8 = static MODateFormatter.relativeDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    static Date.now.getter();
    v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    v11 = [v8 localizedStringForDate:isa relativeToDate:v10.super.isa];
  }

  else
  {
    v32 = v4;
    if (one-time initialization token for dayNameFormatter != -1)
    {
      swift_once();
    }

    v12 = static MODateFormatter.dayNameFormatter;
    v31 = static MODateFormatter.dayNameFormatter;
    v13 = Date._bridgeToObjectiveC()().super.isa;
    v14 = [v12 stringFromDate:v13];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    static Date.now.getter();
    v18 = Date._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    v19 = [v31 stringFromDate:v18];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    Date.timeIntervalSinceNow.getter();
    if (fabs(v23) >= 604800.0 || (v15 == v20 ? (v24 = v17 == v22) : (v24 = 0), v24))
    {
      v4 = v32;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4 = v32;
      if ((v25 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (one-time initialization token for fullDateFormatter != -1)
    {
      swift_once();
    }

    v26 = static MODateFormatter.fullDateFormatter;
    v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v11 = [v26 stringFromDate:v10.super.isa];
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v27;

LABEL_20:
  (*(v5 + 8))(v7, v4);
  v28 = v15;
  v29 = v17;
  result._object = v29;
  result._countAndFlagsBits = v28;
  return result;
}

id closure #1 in variable initialization expression of MOSuggestionCollectionViewCell.titleLabel(SEL *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setLineBreakMode:4];
  [v2 setNumberOfLines:2];
  v3 = [objc_opt_self() *a1];
  [v2 setTextColor:v3];

  [v2 setTextAlignment:4];
  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

  return v2;
}

uint64_t key path setter for MOSuggestionCollectionViewCell.accessoryButtonAction : MOSuggestionCollectionViewCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((swift_isaMask & **a2) + 0xB8);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t MOSuggestionCollectionViewCell.accessoryButtonAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_accessoryButtonAction);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double MOSuggestionCollectionViewCell.accessoryButtonAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_accessoryButtonAction);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_retain_n();

  (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_journalButton)) + 0x68))(a1, a2);

  return result;
}

uint64_t (*MOSuggestionCollectionViewCell.accessoryButtonAction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_accessoryButtonAction;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionCollectionViewCell.accessoryButtonAction.modify;
}

void MOSuggestionCollectionViewCell.accessoryButtonAction.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *v5;
    v7 = v5[1];
    v8 = *((swift_isaMask & **(v4 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_journalButton)) + 0x68);

    v8(v6, v7);
  }

  free(v3);
}

void *MOSuggestionCollectionViewCell.gridViewHeightAnchor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridViewHeightAnchor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionCollectionViewCell.gridViewHeightAnchor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridViewHeightAnchor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double MOSuggestionCollectionViewCell.heightMultiplier.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_heightMultiplier;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionCollectionViewCell.heightMultiplier.setter(double a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_heightMultiplier;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = *((swift_isaMask & *v1) + 0xC8);
    v7 = v6(v4);
    if (v7)
    {
      v8 = v7;
      [v7 setActive:0];
    }

    v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);
    v10 = [v9 heightAnchor];
    v11 = [v9 widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 multiplier:*(v1 + v3)];

    v13 = (*((swift_isaMask & *v1) + 0xD0))(v12);
    v14 = v6(v13);
    if (v14)
    {
      v15 = v14;
      [v14 setActive:1];
    }
  }
}

void (*MOSuggestionCollectionViewCell.heightMultiplier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_heightMultiplier;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return MOSuggestionCollectionViewCell.heightMultiplier.modify;
}

void MOSuggestionCollectionViewCell.heightMultiplier.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    MOSuggestionCollectionViewCell.heightMultiplier.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v6 != v3)
    {
      v7 = *((swift_isaMask & *v2[4]) + 0xC8);
      v8 = v7();
      if (v8)
      {
        v9 = v8;
        [v8 setActive:0];
      }

      v10 = v2[4];
      v11 = v2[5];
      v12 = *(v10 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);
      v13 = [v12 heightAnchor];
      v14 = [v12 widthAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 multiplier:*(v10 + v11)];

      v16 = (*((swift_isaMask & *v10) + 0xD0))(v15);
      v17 = (v7)(v16);
      if (v17)
      {
        v18 = v17;
        [v17 setActive:1];
      }
    }
  }

  free(v2);
}

void MOSuggestionCollectionViewCell.cellViewModel.didset()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_titleLabel);
    v71 = *(*Strong + 176);
    (v71)(Strong);
    v5 = String._bridgeToObjectiveC()();

    [v4 setText:v5];

    v6 = specialized static MOSuggestionTheme.Fonts.footnoteEmphShortFont()();
    v7 = [v4 text];
    if (v7)
    {
      v8 = v7;
      v70 = v6;
      v9 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v9 setLineSpacing:0.0];
      [v9 setLineBreakMode:4];
      [v9 setLineHeightMultiple:0.95];
      LODWORD(v10) = 0.5;
      [v9 setHyphenationFactor:v10];
      v11 = [v4 attributedText];
      if (v11)
      {
        v12 = v11;

        v13 = &selRef_initWithAttributedString_;
        v8 = v12;
      }

      else
      {
        v13 = &selRef_initWithString_;
      }

      v19 = [objc_allocWithZone(NSMutableAttributedString) *v13];

      if (v70)
      {
        v20 = v70;
        [v19 addAttribute:NSFontAttributeName value:v20 range:{0, objc_msgSend(v19, "length")}];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002A4A00;
      *(inited + 32) = NSBaselineOffsetAttributeName;
      *(inited + 40) = 0;
      *(inited + 64) = &type metadata for CGFloat;
      *(inited + 72) = NSParagraphStyleAttributeName;
      *(inited + 104) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, NSMutableParagraphStyle_ptr);
      *(inited + 80) = v9;
      v22 = NSBaselineOffsetAttributeName;
      v23 = NSParagraphStyleAttributeName;
      v6 = v9;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      swift_arrayDestroy();
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 addAttributes:isa range:{0, objc_msgSend(v19, "length")}];

      [v4 setAttributedText:v19];
      p_align = &stru_100327FE8.align;
    }

    else
    {
      p_align = (&stru_100327FE8 + 24);
    }

    v25 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_subtitleLabel);
    (*(*v3 + 376))();
    v26 = String._bridgeToObjectiveC()();

    [v25 setText:v26];

    v27 = specialized static MOSuggestionTheme.Fonts.footnoteShortFont()();
    v28 = [v25 text];
    if (v28)
    {
      v29 = v28;
      v30 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v30 setLineSpacing:0.0];
      [v30 setLineBreakMode:4];
      [v30 setLineHeightMultiple:0.95];
      LODWORD(v31) = 0.5;
      [v30 setHyphenationFactor:v31];
      v32 = [v25 *(p_align + 439)];
      if (v32)
      {
        v33 = v32;

        v34 = &selRef_initWithAttributedString_;
        v29 = v33;
      }

      else
      {
        v34 = &selRef_initWithString_;
      }

      v36 = [objc_allocWithZone(NSMutableAttributedString) *v34];

      if (v27)
      {
        v37 = v27;
        [v36 addAttribute:NSFontAttributeName value:v37 range:{0, objc_msgSend(v36, "length")}];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1002A4A00;
      *(v38 + 32) = NSBaselineOffsetAttributeName;
      *(v38 + 40) = 0;
      *(v38 + 64) = &type metadata for CGFloat;
      *(v38 + 72) = NSParagraphStyleAttributeName;
      *(v38 + 104) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, NSMutableParagraphStyle_ptr);
      *(v38 + 80) = v30;
      v39 = NSBaselineOffsetAttributeName;
      v40 = NSParagraphStyleAttributeName;
      v35 = v30;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v38);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      swift_arrayDestroy();
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      v41 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v36 addAttributes:v41 range:{0, objc_msgSend(v36, "length")}];

      [v25 setAttributedText:v36];
    }

    else
    {
      v35 = v27;
    }

    v42 = (*(*v3 + 224))();
    v43 = (*((swift_isaMask & *v0) + 0x188))(v42 & 1);
    v44 = (*(*v3 + 248))(v43);
    v45 = (*((swift_isaMask & *v0) + 0x190))(v44 & 1);
    v46 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);
    v47 = (*(*v3 + 392))(v45);
    (*((swift_isaMask & *v46) + 0x110))(v47);
    v48 = [v0 traitCollection];
    v49 = [v48 preferredContentSizeCategory];

    v50 = static UIContentSizeCategory.> infix(_:_:)();
    v51 = (*v3 + 400);
    v52 = *v51;
    if (((*v51)() & 1) == 0)
    {
      goto LABEL_27;
    }

    v53.n128_u64[0] = 0.25;
    if ((v50 & 1) == 0)
    {
      v54 = 0;
      goto LABEL_29;
    }

    if ((*(*v3 + 328))(0.25))
    {
      v54 = 0;
      v53.n128_u64[0] = 0.25;
    }

    else
    {
LABEL_27:
      v54 = 1;
      v53.n128_u64[0] = 0.5;
    }

LABEL_29:
    (*((swift_isaMask & *v1) + 0xE8))(v53);
    v55 = (*((swift_isaMask & *v46) + 0x140))(v54);
    v56 = (*((swift_isaMask & *v1) + 0x198))(v55);
    v57 = (*((swift_isaMask & *v1) + 0x110))(v56);
    (*((swift_isaMask & *v57) + 0x70))(v3[80]);

    (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_journalButton)) + 0x98))(v3[80]);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static MOAngelLogger.shared);
    swift_retain_n();
    v59 = v1;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v69 = v52;
      v63 = swift_slowAlloc();
      v72 = v63;
      *v62 = 136315650;
      v64 = v71();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v72);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2048;
      *(v62 + 14) = (*((swift_isaMask & *v59) + 0xE0))(v67);
      *(v62 + 22) = 1024;
      v68 = v69();

      *(v62 + 24) = v68 & 1;

      _os_log_impl(&_mh_execute_header, v60, v61, "[MOSuggestionCollectionViewCell] cellViewModel set, title=%s, heightMultiplier=%f, isCondensedHeight=%{BOOL}d", v62, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v63);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static MOAngelLogger.shared);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "[MOSuggestionCollectionViewCell] cellViewModel cleared or nil", v17, 2u);
  }
}

double MOSuggestionCollectionViewCell.cellViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  MOSuggestionCollectionViewCell.cellViewModel.didset();

  return result;
}

void (*MOSuggestionCollectionViewCell.cellViewModel.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_cellViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionCollectionViewCell.cellViewModel.modify;
}

void MOSuggestionCollectionViewCell.cellViewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    MOSuggestionCollectionViewCell.cellViewModel.didset();
  }

  free(v3);
}

id MOSuggestionCollectionViewCell.photoMemoryBanner.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_photoMemoryBanner;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionCollectionViewCell.photoMemoryBanner.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_photoMemoryBanner;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MOSuggestionCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView;
  type metadata accessor for MOSuggestionSheetAssetGridView();
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_titleLabel;
  *&v5[v11] = closure #1 in variable initialization expression of MOSuggestionCollectionViewCell.titleLabel(&selRef_labelColor);
  v12 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridContainerView;
  v13 = [objc_allocWithZone(UIView) init];
  v14 = [v13 traitCollection];
  v15 = [v14 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v13, v15);
  *&v5[v12] = v13;
  v16 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_subtitleLabel;
  *&v5[v16] = closure #1 in variable initialization expression of MOSuggestionCollectionViewCell.titleLabel(&selRef_secondaryLabelColor);
  v17 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_journalButton;
  v18 = type metadata accessor for MOSuggestionSheetJournalButton();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v20 = 0;
  v20[1] = 0;
  v19[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = 0;
  v43.receiver = v19;
  v43.super_class = v18;
  v21 = objc_msgSendSuper2(&v43, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  MOSuggestionSheetJournalButton.sharedInit()();

  *&v5[v17] = v21;
  v22 = &v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_accessoryButtonAction];
  *v22 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v22[1] = 0;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridViewHeightAnchor] = 0;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_heightMultiplier] = 0x3FE0000000000000;
  swift_weakInit();
  v23 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_photoMemoryBanner;
  type metadata accessor for MOSuggestionPhotoMemoryBanner();
  *&v5[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_bannerHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_bannerPresentConstraints] = _swiftEmptyArrayStorage;
  v42.receiver = v5;
  v42.super_class = type metadata accessor for MOSuggestionCollectionViewCell();
  v24 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView;
  v26 = *&v24[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView];
  v27 = *((swift_isaMask & *v26) + 0x128);
  v28 = v24;
  v29 = v26;
  v27(1);

  v30 = [v28 contentView];
  [v30 addSubview:*&v24[v25]];

  v31 = [v28 contentView];
  [v31 addSubview:*&v28[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_titleLabel]];

  v32 = [v28 contentView];
  [v32 addSubview:*&v28[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_subtitleLabel]];

  v33 = [v28 contentView];
  [v33 addSubview:*&v28[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_journalButton]];

  v34 = [v28 contentView];
  v35 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_photoMemoryBanner;
  swift_beginAccess();
  [v34 addSubview:*&v28[v35]];

  v36 = [v28 contentView];
  v37 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridContainerView;
  [v36 addSubview:*&v28[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridContainerView]];

  [*&v28[v37] addSubview:*&v28[v35]];
  v38 = [*&v28[v37] addSubview:*&v24[v25]];
  (*((swift_isaMask & *v28) + 0x160))(v38);
  v39 = [objc_opt_self() clearColor];
  [v28 setBackgroundColor:v39];

  [v28 setClipsToBounds:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1002A48B0;
  *(v40 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v40 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v28;
}

Swift::Void __swiftcall MOSuggestionCollectionViewCell.handleTraitChange()()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridContainerView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v1, v3);
}

Swift::Void __swiftcall MOSuggestionCollectionViewCell.setupConstraints()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridContainerView);
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:4.0];
    if (v7)
    {
      [v7 setActive:1];
    }
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:4.0];
    if (v12)
    {
      [v12 setActive:1];
    }
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:-4.0];
    if (v17)
    {
      [v17 setActive:1];
    }
  }

  v18 = *((swift_isaMask & *v1) + 0x110);
  v19 = v18();
  v20 = [v19 topAnchor];

  v123 = v2;
  v21 = [v2 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:4.0];

  v23 = *((swift_isaMask & *v1) + 0x150);
  v24 = v23(v124);
  v26 = v25;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v24(v124, 0);
  v27 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);
  v28 = [v27 topAnchor];
  v29 = v18();
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  v32 = v23(v124);
  v34 = v33;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v35 = v32(v124, 0);
  v36 = (v18)(v35);
  v37 = [v36 superview];
  if (v37)
  {
    v38 = v37;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v36 leadingAnchor];
    v40 = [v38 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    [v41 setConstant:4.0];
    if (v41)
    {
      [v41 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v41 = 0;
    v38 = v36;
    p_align = &stru_100327FE8.align;
  }

  v43 = v18();
  v44 = [v43 superview];
  if (v44)
  {
    v45 = v44;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [v43 trailingAnchor];
    v47 = [v45 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    [v48 setConstant:-4.0];
    if (v48)
    {
      [v48 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v48 = 0;
    v45 = v43;
  }

  v49 = [v27 *(p_align + 275)];
  v50 = [v123 *(p_align + 275)];
  v51 = [v49 constraintEqualToAnchor:v50];

  v52 = (*((swift_isaMask & *v1) + 0x138))(v124);
  v54 = v53;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v52(v124, 0);
  v55 = [v27 superview];
  if (v55)
  {
    v56 = v55;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = [v27 leadingAnchor];
    v58 = [v56 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    [v59 setConstant:0.0];
    if (v59)
    {
      [v59 setActive:1];
    }
  }

  v60 = [v27 superview];
  if (v60)
  {
    v61 = v60;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v62 = [v27 trailingAnchor];
    v63 = [v61 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    [v64 setConstant:0.0];
    if (v64)
    {
      [v64 setActive:1];
    }
  }

  v65 = [v27 superview];
  if (v65)
  {
    v66 = v65;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v67 = [v27 bottomAnchor];
    v68 = [v66 bottomAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    if (v69)
    {
      [v69 setConstant:-0.0];
      [v69 setActive:1];
    }
  }

  v70 = [v27 heightAnchor];
  v71 = [v27 widthAnchor];
  (*((swift_isaMask & *v1) + 0xE0))();
  v72 = [v70 constraintEqualToAnchor:v71 multiplier:?];

  v73 = (*((swift_isaMask & *v1) + 0xD0))(v72);
  v74 = (*((swift_isaMask & *v1) + 0xC8))(v73);
  if (v74)
  {
    v75 = v74;
    [v74 setActive:1];
  }

  v122 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1002A5170;
  v77 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_titleLabel);
  v78 = p_align;
  v79 = [v77 *(p_align + 275)];
  v80 = [v123 bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:8.0];

  *(v76 + 32) = v81;
  v82 = [v77 leadingAnchor];
  v83 = [v1 leadingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:5.0];

  *(v76 + 40) = v84;
  v85 = v77;
  v86 = [v77 trailingAnchor];
  v87 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_journalButton);
  v88 = [v87 leadingAnchor];
  v89 = [v86 constraintEqualToAnchor:v88 constant:-4.0];

  *(v76 + 48) = v89;
  v90 = [v87 *(v78 + 275)];
  v91 = [v123 bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91 constant:10.0];

  *(v76 + 56) = v92;
  v93 = [v87 leadingAnchor];
  v94 = [v85 trailingAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  *(v76 + 64) = v95;
  v96 = [v87 trailingAnchor];
  v97 = [v123 trailingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:-3.0];

  *(v76 + 72) = v98;
  v99 = [v87 heightAnchor];
  v100 = [v87 widthAnchor];
  v101 = [v99 constraintEqualToAnchor:v100];

  *(v76 + 80) = v101;
  v102 = [v87 widthAnchor];
  v103 = [v102 constraintGreaterThanOrEqualToConstant:27.0];

  *(v76 + 88) = v103;
  v104 = [v87 widthAnchor];
  v105 = [v104 constraintLessThanOrEqualToConstant:40.0];

  *(v76 + 96) = v105;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v122 activateConstraints:isa];

  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1002A48D0;
  v108 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_subtitleLabel);
  v109 = [v108 topAnchor];
  v110 = [v85 bottomAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:1.0];

  *(v107 + 32) = v111;
  v112 = [v108 leadingAnchor];
  v113 = [v85 leadingAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];

  *(v107 + 40) = v114;
  v115 = [v108 trailingAnchor];
  v116 = [v85 trailingAnchor];
  v117 = [v115 constraintEqualToAnchor:v116];

  *(v107 + 48) = v117;
  v118 = [v108 bottomAnchor];
  v119 = [v1 bottomAnchor];
  v120 = [v118 constraintLessThanOrEqualToAnchor:v119];

  *(v107 + 56) = v120;
  v121 = Array._bridgeToObjectiveC()().super.isa;

  [v122 activateConstraints:v121];
}

Swift::Void __swiftcall MOSuggestionCollectionViewCell.prepareForReuse()()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MOSuggestionCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_titleLabel);
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_subtitleLabel);
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  v6 = (*((swift_isaMask & *v1) + 0xF8))();
  if (v6)
  {
    (*(*v6 + 304))(0);
  }

  (*((swift_isaMask & *v1) + 0x100))(0);
  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);
  (*((swift_isaMask & *v7) + 0x158))(0, 0, 0);
  v8 = (*((swift_isaMask & *v7) + 0x188))(0);
  (*((swift_isaMask & *v1) + 0xE8))(v8, 0.5);
}

void MOSuggestionCollectionViewCell.setAssetViewModels(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);

  _s16MomentsUIService11MOWeakArrayVyACyxGSayxGcfCAA31MOSuggestionSheetAssetViewModelC_Tt0g5(v4);
  v5 = (*((swift_isaMask & *v3) + 0x158))();
  v6 = *((swift_isaMask & *v2) + 0xF8);
  v7 = v6(v5);
  if (v7)
  {
    v8 = *(*v7 + 304);

    v8(v9);
  }

  v10 = *(v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_subtitleLabel);
  v11 = v6(v7);
  if (v11)
  {
    (*(*v11 + 376))(v11);

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];
}

uint64_t MOSuggestionCollectionViewCell.updateCell(with:index:)(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);
  v5 = (*((swift_isaMask & *v4) + 0x160))(v13);
  if (*v6)
  {

    specialized MOWeakArray.subscript.setter(v7, a2);
  }

  v8 = v5(v13, 0);
  v9 = *(v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_subtitleLabel);
  v10 = (*((swift_isaMask & *v2) + 0xF8))(v8);
  v11 = v10;
  if (v10)
  {
    (*(*v10 + 376))(v10);

    v11 = String._bridgeToObjectiveC()();
  }

  [v9 setText:v11];

  return (*((swift_isaMask & *v4) + 0x1D0))(a2);
}

Swift::Void __swiftcall MOSuggestionCollectionViewCell.setAddedVisibility(applyAdded:)(Swift::Bool applyAdded)
{
  v2 = applyAdded;
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);
  (*((swift_isaMask & *v3) + 0x1B0))(0);
  (*((swift_isaMask & *v3) + 0x188))(v2);
}

Swift::Void __swiftcall MOSuggestionCollectionViewCell.setQuickAddedVisibility(_:)(Swift::Bool_optional a1)
{
  if (a1.value != 2 && a1.value)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView);
    (*((swift_isaMask & *v2) + 0x1B0))(1);
    (*((swift_isaMask & *v2) + 0x188))(1);
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewCell.setPhotoMemoryBannerVisibility()()
{
  v1 = (*((swift_isaMask & *v0) + 0xF8))();
  if (v1)
  {
    v2 = (*(*v1 + 320))();
    v3 = objc_opt_self();
    if (v2)
    {
      (*((swift_isaMask & *v0) + 0x140))();
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v3 activateConstraints:isa];

      (*((swift_isaMask & *v0) + 0x128))();
    }

    else
    {
      (*((swift_isaMask & *v0) + 0x128))();
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
      v5 = Array._bridgeToObjectiveC()().super.isa;

      [v3 activateConstraints:v5];

      (*((swift_isaMask & *v0) + 0x140))();
    }

    v6 = Array._bridgeToObjectiveC()().super.isa;

    [v3 deactivateConstraints:v6];

    v7 = (*((swift_isaMask & *v0) + 0x110))();
    [v7 setHidden:(v2 & 1) == 0];
  }
}

id MOSuggestionCollectionViewCell.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for MOSuggestionCollectionViewCell();
  v7 = objc_msgSendSuper2(&v10, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIButton, UIButton_ptr);
    if (([v7 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
    {
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHLivePhotoView, PHLivePhotoView_ptr);
      if (([v7 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
      {

        v8 = v3;
        return v3;
      }
    }
  }

  return v7;
}

id closure #1 in variable initialization expression of MOSuggestionCollectionViewDateSectionHeaderView.dateLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:1];
  [v0 setAdjustsFontSizeToFitWidth:1];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  isa = UIFont.withWeight(_:)(UIFontWeightRegular).super.isa;

  [v0 setFont:isa];
  return v0;
}

uint64_t key path setter for MOSuggestionCollectionViewDateSectionHeaderView.date : MOSuggestionCollectionViewDateSectionHeaderView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*((swift_isaMask & **a2) + 0x68))(v6);
}

uint64_t MOSuggestionCollectionViewDateSectionHeaderView.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_date;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t MOSuggestionCollectionViewDateSectionHeaderView.date.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_date;
  swift_beginAccess();
  outlined assign with copy of Date?(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((swift_isaMask & *v1) + 0x78))(v4);
  return outlined destroy of Date?(a1);
}

uint64_t (*MOSuggestionCollectionViewDateSectionHeaderView.date.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionCollectionViewDateSectionHeaderView.date.modify;
}

uint64_t MOSuggestionCollectionViewDateSectionHeaderView.date.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0x78))(result);
  }

  return result;
}

void MOSuggestionCollectionViewDateSectionHeaderView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_dateLabel;
  *(v0 + v1) = closure #1 in variable initialization expression of MOSuggestionCollectionViewDateSectionHeaderView.dateLabel();
  v2 = OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_date;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionCollectionViewDateSectionHeaderView.setUpDate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x60))(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Date?(v4);
    [*(v0 + OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_dateLabel) setText:0];
    return;
  }

  v10 = *(v6 + 32);
  v38 = v5;
  v10(v9, v4, v5);
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  v11 = static MODateFormatter.fullDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v11 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v43 = v14;
  v44 = v16;
  v41 = 8236;
  v42 = 0xE200000000000000;
  v39 = 32;
  v40 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v20 = *(v1 + OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_dateLabel);
  v21 = String._bridgeToObjectiveC()();
  [v20 setText:v21];

  v43 = v17;
  v44 = v19;
  if (one-time initialization token for dayNameFormatter != -1)
  {
    swift_once();
  }

  v22 = static MODateFormatter.dayNameFormatter;
  v23 = Date._bridgeToObjectiveC()().super.isa;
  v24 = [v22 stringFromDate:v23];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v41 = v25;
  v42 = v27;
  LOBYTE(v25) = StringProtocol.contains<A>(_:)();

  if (v25)
  {

    v28 = Date._bridgeToObjectiveC()().super.isa;
    v29 = [v22 stringFromDate:v28];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = v30;
LABEL_11:
    v36 = v32;
    UILabel.styleDateWithWeekday(weekday:)(*&v33);

    (*(v6 + 8))(v9, v38);
    return;
  }

  v43 = v17;
  v44 = v19;
  v41 = 32;
  v42 = 0xE100000000000000;
  v34 = StringProtocol.components<A>(separatedBy:)();

  if (v34[2])
  {
    v35 = v34[4];
    v32 = v34[5];

    v33 = v35;
    goto LABEL_11;
  }

  (*(v6 + 8))(v9, v38);
}

Swift::String __swiftcall Date.getDayName()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for dayNameFormatter, &static MODateFormatter.dayNameFormatter, one-time initialization function for dayNameFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

id MOSuggestionCollectionViewCell.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::String __swiftcall Date.getMonthName()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for monthNameFormatter, &static MODateFormatter.monthNameFormatter, one-time initialization function for monthNameFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getMonthDayNumber()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for monthDayNumberFormatter, &static MODateFormatter.monthDayNumberFormatter, one-time initialization function for monthDayNumberFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Date.getFullDateNumber()(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v3 = *a2;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = [v3 stringFromDate:isa];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

double specialized static MOSuggestionCollectionViewCell.calculateLabelHeight(width:)(double a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setAdjustsFontForContentSizeCategory:1];
  v3 = specialized static MOSuggestionTheme.Fonts.footnoteEmphShortFont()();
  if (!v3)
  {
    v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
    isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

    v5 = specialized static MOSuggestionTheme.Fonts.footnoteShortFont()();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  isa = v3;
  v5 = specialized static MOSuggestionTheme.Fonts.footnoteShortFont()();
  if (!v5)
  {
LABEL_3:
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  }

LABEL_4:
  v6 = v5;
  v7 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, isa, a1);
  v8 = v7 + v7;
  v9 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, v6, a1);

  return v8 + v9 + 8.0 + 1.0;
}

void specialized MOSuggestionCollectionViewCell.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_assetGridView;
  type metadata accessor for MOSuggestionSheetAssetGridView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_titleLabel;
  *(v1 + v3) = closure #1 in variable initialization expression of MOSuggestionCollectionViewCell.titleLabel(&selRef_labelColor);
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridContainerView;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v5, v7);
  *(v1 + v4) = v5;
  v8 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_subtitleLabel;
  *(v1 + v8) = closure #1 in variable initialization expression of MOSuggestionCollectionViewCell.titleLabel(&selRef_secondaryLabelColor);
  v9 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_journalButton;
  v10 = type metadata accessor for MOSuggestionSheetJournalButton();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v12 = 0;
  v12[1] = 0;
  v11[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = 0;
  v16.receiver = v11;
  v16.super_class = v10;
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  MOSuggestionSheetJournalButton.sharedInit()();

  *(v1 + v9) = v13;
  v14 = (v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_accessoryButtonAction);
  *v14 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridViewHeightAnchor) = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_heightMultiplier) = 0x3FE0000000000000;
  swift_weakInit();
  v15 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_photoMemoryBanner;
  type metadata accessor for MOSuggestionPhotoMemoryBanner();
  *(v1 + v15) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_bannerHiddenConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_bannerPresentConstraints) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *specialized MOSuggestionCollectionViewDateSectionHeaderView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_dateLabel;
  *&v0[v1] = closure #1 in variable initialization expression of MOSuggestionCollectionViewDateSectionHeaderView.dateLabel();
  v2 = OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_date;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for MOSuggestionCollectionViewDateSectionHeaderView(0);
  v7 = objc_msgSendSuper2(&v27, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v8 = OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_dateLabel;
  v9 = *&v7[OBJC_IVAR____TtC16MomentsUIService47MOSuggestionCollectionViewDateSectionHeaderView_dateLabel];
  v10 = v7;
  [v10 addSubview:v9];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002A48D0;
  v13 = [*&v7[v8] topAnchor];
  v14 = [v10 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [*&v7[v8] bottomAnchor];
  v17 = [v10 bottomAnchor];

  v18 = [v16 constraintEqualToAnchor:v17];
  *(v12 + 40) = v18;
  v19 = [*&v7[v8] leadingAnchor];
  v20 = [v10 leadingAnchor];

  v21 = [v19 constraintEqualToAnchor:v20 constant:24.0];
  *(v12 + 48) = v21;
  v22 = [*&v7[v8] trailingAnchor];
  v23 = [v10 trailingAnchor];

  v24 = [v22 constraintEqualToAnchor:v23 constant:-10.0];
  *(v12 + 56) = v24;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];

  return v10;
}

uint64_t type metadata accessor for MOSuggestionCollectionViewDateSectionHeaderView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOSuggestionCollectionViewDateSectionHeaderView;
  if (!type metadata singleton initialization cache for MOSuggestionCollectionViewDateSectionHeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002639FC@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((swift_isaMask & **a1) + 0xB0))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_100263A94@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_100263AF0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100263C0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_100263C68(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x100);

  return v2(v3);
}

uint64_t sub_100263CD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_100263DA4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_100263E08(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x130);

  return v2(v3);
}

uint64_t sub_100263E74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_100263ED8(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x148);

  return v2(v3);
}

void type metadata completion function for MOSuggestionCollectionViewDateSectionHeaderView(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100264068()
{

  return _swift_deallocObject(v0, 32, 7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(a1, a2);
}

{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t MOSuggestionAssetMediaItem.primaryTitle.getter()
{
  v1 = [v0 mediaType];
  v2 = &selRef_albumTitle;
  v3 = &selRef_artistName;
  if (v1 != 5)
  {
    v3 = &selRef_title;
  }

  if (v1 != 4)
  {
    v2 = v3;
  }

  v4 = [v0 *v2];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

void one-time initialization function for Bag()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  static Constants.Bag = v2;
}

uint64_t MOSuggestionAssetMediaItemType.mediaTaskType.getter(uint64_t a1)
{
  v1 = 207;
  v2 = 301;
  if (a1 != 2)
  {
    v2 = 0;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 203;
  }

  else
  {
    return v1;
  }
}

unint64_t MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C7070612E6D6F63;
  v2 = 0xD000000000000029;
  if (a1 == 2)
  {
    v2 = 0x6C7070612E6D6F63;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = 0xEC00000076742E65;
  v3 = 0x6C7070612E6D6F63;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x80000001002AEB90;
  if (v4 == 2)
  {
    v7 = 0x6C7070612E6D6F63;
  }

  else
  {
    v7 = 0xD000000000000029;
  }

  if (v4 == 2)
  {
    v8 = 0xEF636973754D2E65;
  }

  else
  {
    v8 = 0x80000001002AEB90;
  }

  if (*a1)
  {
    v9 = 0xD000000000000012;
  }

  else
  {
    v9 = 0x6C7070612E6D6F63;
  }

  if (*a1)
  {
    v10 = 0x80000001002AE910;
  }

  else
  {
    v10 = 0xEC00000076742E65;
  }

  if (*a1 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = 0xD000000000000029;
  if (v5 == 2)
  {
    v13 = 0x6C7070612E6D6F63;
    v6 = 0xEF636973754D2E65;
  }

  if (v5)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001002AE910;
  }

  if (v5 <= 1)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (v5 <= 1)
  {
    v15 = v2;
  }

  else
  {
    v15 = v6;
  }

  if (v11 == v14 && v12 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications(unint64_t *a1@<X8>)
{
  v2 = 0x6C7070612E6D6F63;
  v3 = 0xEC00000076742E65;
  v4 = 0xEF636973754D2E65;
  v5 = 0xD000000000000029;
  if (*v1 == 2)
  {
    v5 = 0x6C7070612E6D6F63;
  }

  else
  {
    v4 = 0x80000001002AEB90;
  }

  if (*v1)
  {
    v2 = 0xD000000000000012;
    v3 = 0x80000001002AE910;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6;
}

BOOL MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications, *a1);

  *a2 = v3 != 0;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.trackIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void MOSuggestionAssetMediaCoverArtQueryInput.trackIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.bundleIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void MOSuggestionAssetMediaCoverArtQueryInput.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

__n128 MOSuggestionAssetMediaCoverArtQueryInput.init(title:albumTitle:artistName:trackIdentifier:bundleIdentifier:type:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t MOSuggestionAssetSongAlbumArtProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  MOSuggestionAssetMediaAlbumArtProvider.init()();
  return v0;
}

uint64_t *MOSuggestionMediaCoverArtProviders.sharedSongProvider.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedSongProvider != -1)
  {
    swift_once();
  }

  return &static MOSuggestionMediaCoverArtProviders.sharedSongProvider;
}

uint64_t one-time initialization function for sharedSongProvider(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  a2(a1);
  v4 = swift_allocObject();
  result = MOSuggestionAssetMediaAlbumArtProvider.init()();
  *a3 = v4;
  return result;
}

uint64_t *MOSuggestionMediaCoverArtProviders.sharedPodcastProvider.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedPodcastProvider != -1)
  {
    swift_once();
  }

  return &static MOSuggestionMediaCoverArtProviders.sharedPodcastProvider;
}

uint64_t static MOSuggestionMediaCoverArtProviders.sharedSongProvider.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t MOSuggestionAssetMediaAlbumArtProvider.init()()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  *(v0 + 32) = 0;
  *(v0 + 40) = [objc_allocWithZone(NSCache) init];
  v6 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v9[0] = "JournalingSuggestionsIcon";
  v9[1] = v6;
  static DispatchQoS.utility.getter();
  v11 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *(v0 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 56) = &_swiftEmptySetSingleton;
  *(v0 + 64) = [objc_allocWithZone(MOConfigurationManagerBase) init];
  v7 = *(v0 + 40);
  [v7 setCountLimit:MOSuggestionAssetMediaAlbumArtProvider.dynamicCacheCount.getter()];

  return v0;
}

uint64_t MOSuggestionAssetMediaAlbumArtProvider.dynamicCacheCount.getter()
{
  v1 = *(v0 + 64);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 getIntegerSettingForKey:v2 withFallback:7];

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static MOAngelLogger.assets);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "[MOSuggestionAssetMediaAlbumArtProvider] dynamicCacheCount=%d", v7, 8u);
  }

  return v3;
}

void MOSuggestionAssetMediaAlbumArtProvider.fetchAssetWithPossibleBatching(queryInput:tileSize:completion:)(__int128 *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = a1[3];
  v98 = a1[2];
  v99 = v10;
  v100 = a1[4];
  v101 = *(a1 + 10);
  v11 = a1[1];
  v96 = *a1;
  v97 = v11;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v12 - 8);
  __chkstk_darwin(v12);
  v84 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchTime();
  v81 = *(v87 - 1);
  v15 = __chkstk_darwin(v87);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v75 - v18;
  v19 = *(a1 + 7);
  if (!v19)
  {
LABEL_16:
    if (*(v5 + 32))
    {
      swift_beginAccess();
      v39 = *(v5 + 24);
      outlined init with copy of MOSuggestionAssetMediaCoverArtQueryInput(a1, &v90);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 24) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
        *(v5 + 24) = v39;
      }

      v42 = *(v39 + 2);
      v41 = *(v39 + 3);
      if (v42 >= v41 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
      }

      v92 = v98;
      v93 = v99;
      v94 = v100;
      v95 = v101;
      v43 = v96;
      v91 = v97;
      v90 = v96;
      *(v39 + 2) = v42 + 1;
      v44 = &v39[14 * v42];
      v45 = v95;
      v47 = v93;
      v46 = v94;
      *(v44 + 4) = v92;
      *(v44 + 5) = v47;
      *(v44 + 6) = v46;
      *(v44 + 14) = v45;
      v48 = v91;
      *(v44 + 2) = v43;
      *(v44 + 3) = v48;
      *(v44 + 15) = a3;
      *(v44 + 16) = a4;
      v44[17] = 0.0;
      *(v5 + 24) = v39;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      v49 = *(v5 + 16);
      outlined init with copy of MOSuggestionAssetMediaCoverArtQueryInput(a1, &v90);

      v50 = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 16) = v49;
      if ((v50 & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        *(v5 + 16) = v49;
      }

      v52 = *(v49 + 2);
      v51 = *(v49 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v49);
      }

      v92 = v98;
      v93 = v99;
      v94 = v100;
      v95 = v101;
      v54 = v96;
      v91 = v97;
      v90 = v96;
      *(v49 + 2) = v53;
      v55 = &v49[14 * v52];
      v56 = v95;
      v58 = v93;
      v57 = v94;
      *(v55 + 4) = v92;
      *(v55 + 5) = v58;
      *(v55 + 6) = v57;
      *(v55 + 14) = v56;
      v59 = v91;
      *(v55 + 2) = v54;
      *(v55 + 3) = v59;
      *(v55 + 15) = a3;
      *(v55 + 16) = a4;
      v55[17] = 0.0;
      *(v5 + 16) = v49;
      swift_endAccess();
      v79 = *(v5 + 48);
      static DispatchTime.now()();
      MOSuggestionAssetMediaAlbumArtProvider.dynamicBatchRequestInterval.getter();
      v60 = v80;
      + infix(_:_:)();
      v81 = *(v81 + 8);
      (v81)(v17, v87);
      v61 = swift_allocObject();
      swift_weakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v53;
      aBlock[4] = partial apply for closure #1 in MOSuggestionAssetMediaAlbumArtProvider.fetchAssetWithPossibleBatching(queryInput:tileSize:completion:);
      aBlock[5] = v62;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_49;
      v63 = _Block_copy(aBlock);

      v64 = v82;
      static DispatchQoS.unspecified.getter();
      v88 = _swiftEmptyArrayStorage;
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v65 = v84;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v63);
      (*(v86 + 8))(v65, v12);
      (*(v83 + 8))(v64, v85);
      (v81)(v60, v87);
    }

    return;
  }

  v76 = v12;
  v77 = a3;
  v78 = a4;
  v20 = *(a1 + 6);
  v21 = *(v5 + 40);
  v22 = objc_allocWithZone(NSString);
  v79 = v20;
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 initWithString:v23];

  v25 = [v21 objectForKey:v24];
  if (!v25)
  {
LABEL_11:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static MOAngelLogger.assets);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    v36 = os_log_type_enabled(v34, v35);
    v12 = v76;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v90 = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v19, &v90);
      _os_log_impl(&_mh_execute_header, v34, v35, "[MOSuggestionAssetMediaAlbumArtProvider] Adding batch request trackID=%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    a4 = v78;
    a3 = v77;
    goto LABEL_16;
  }

  v26 = [v25 content];
  v27 = [v26 albumArt];

  if (!v27)
  {
LABEL_6:
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(aBlock, v79, v19);
    swift_endAccess();

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static MOAngelLogger.assets);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v90 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v19, &v90);
      _os_log_impl(&_mh_execute_header, v29, v30, "[MOSuggestionAssetMediaAlbumArtProvider] Cache quality insufficient trackID=%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    goto LABEL_11;
  }

  [v27 size];
  if ((a2 & 0xFE) == 6)
  {

    goto LABEL_6;
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static MOAngelLogger.assets);

  v67 = v27;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *&v90 = swift_slowAlloc();
    *v70 = 136315394;
    *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v19, &v90);
    *(v70 + 12) = 2080;
    [v67 size];
    v71 = CGSize.debugDescription.getter();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v90);

    *(v70 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v68, v69, "[MOSuggestionAssetMediaAlbumArtProvider] Early cache hit trackID=%s quality=%s", v70, 0x16u);
    swift_arrayDestroy();
  }

  v87 = v25;
  v77(v25);

  v74 = v87;
}

double MOSuggestionAssetMediaAlbumArtProvider.dynamicBatchRequestInterval.getter()
{
  v1 = *(v0 + 64);
  v2 = String._bridgeToObjectiveC()();
  [v1 getDoubleSettingForKey:v2 withFallback:1.5];
  v4 = v3;

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static MOAngelLogger.assets);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "[MOSuggestionAssetMediaAlbumArtProvider] dynamicBatchRequestInterval=%f", v8, 0xCu);
  }

  return v4;
}

double closure #1 in MOSuggestionAssetMediaAlbumArtProvider.fetchAssetWithPossibleBatching(queryInput:tileSize:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (*(*(v4 + 16) + 16) == a2)
    {
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static MOAngelLogger.assets);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "[MOSuggestionAssetMediaAlbumArtProvider] Met quiescent criteria", v8, 2u);
      }

      if (*(v4 + 32) == 1)
      {
        swift_beginAccess();

        specialized Array.append<A>(contentsOf:)(v9);
        swift_endAccess();
        *(v4 + 16) = _swiftEmptyArrayStorage;

        return result;
      }

      MOSuggestionAssetMediaAlbumArtProvider.fireBatchOperation()();
    }
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static MOAngelLogger.assets);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[MOSuggestionAssetMediaAlbumArtProvider] Invalid media query task type", v14, 2u);
    }
  }

  return result;
}

void MOSuggestionAssetMediaAlbumArtProvider.fireBatchOperation()()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOAngelLogger.assets);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134218240;
      *(v5 + 4) = *(*(v1 + 16) + 16);
      *(v5 + 12) = 2048;
      swift_beginAccess();
      *(v5 + 14) = *(*(v1 + 24) + 16);

      _os_log_impl(&_mh_execute_header, v3, v4, "[MOSuggestionAssetMediaAlbumArtProvider] Starting batch operation activeCount=%ld staleCount=%ld", v5, 0x16u);
    }

    else
    {
    }

    *(v1 + 32) = 1;
    v10 = swift_allocObject();
    *(v10 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v49 = &_swiftEmptySetSingleton;
    v11 = *(v1 + 16);
    v12 = *(v11 + 16);
    if (v12)
    {
      v39 = v10;

      v13 = v12 - 1;
      for (i = 32; ; i += 112)
      {
        v15 = *(v11 + i + 80);
        v16 = *(v11 + i + 96);
        v17 = *(v11 + i + 64);
        v45 = *(v11 + i + 48);
        v46 = v17;
        v18 = *(v11 + i);
        v19 = *(v11 + i + 32);
        v43 = *(v11 + i + 16);
        v44 = v19;
        aBlock = v18;
        v47 = v15;
        v48 = v16;
        v20 = v45;
        v41 = v46;
        v40[14] = 0x6C7070612E6D6F63;
        v40[15] = 0xE900000000000065;
        outlined init with copy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&aBlock, v40);
        lazy protocol witness table accessor for type String and conformance String();
        if ((StringProtocol.contains<A>(_:)() & 1) != 0 && *(&v20 + 1))
        {

          specialized Set._Variant.insert(_:)(v40, v20, *(&v20 + 1));
          outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&aBlock);

          if (!v13)
          {
            goto LABEL_20;
          }
        }

        else
        {
          (*(&v47 + 1))(0);
          outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&aBlock);
          if (!v13)
          {
LABEL_20:

            v10 = v39;
            break;
          }
        }

        --v13;
      }
    }

    v21 = (*(*v1 + 256))();
    if (one-time initialization token for Bag != -1)
    {
      swift_once();
    }

    v22 = static Constants.Bag;
    v23 = objc_allocWithZone(AMSMediaTask);
    v24 = v22;
    v25 = String._bridgeToObjectiveC()();
    v26 = String._bridgeToObjectiveC()();
    v27 = [v23 initWithType:v21 clientIdentifier:v25 clientVersion:v26 bag:v24];

    v28 = v49;
    v29 = v49[2];
    if (v29)
    {
      v30 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v49[2], 0);
      v31 = specialized Sequence._copySequenceContents(initializing:)(&aBlock, v30 + 4, v29, v28);
      outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(aBlock);
      if (v31 == v29)
      {
LABEL_27:
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v27 setItemIdentifiers:isa];

        v33 = [v27 perform];
        v34 = swift_allocObject();
        swift_weakInit();
        *&v44 = partial apply for closure #1 in MOSuggestionAssetMediaAlbumArtProvider.fireBatchOperation();
        *(&v44 + 1) = v34;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v43 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
        *(&v43 + 1) = &block_descriptor_77_0;
        v35 = _Block_copy(&aBlock);

        [v33 addErrorBlock:v35];
        _Block_release(v35);
        v36 = swift_allocObject();
        swift_weakInit();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *(v37 + 24) = v10;
        *&v44 = partial apply for closure #2 in MOSuggestionAssetMediaAlbumArtProvider.fireBatchOperation();
        *(&v44 + 1) = v37;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v43 = thunk for @escaping @callee_guaranteed (@guaranteed AMSMediaResult) -> ();
        *(&v43 + 1) = &block_descriptor_84;
        v38 = _Block_copy(&aBlock);

        [v33 addSuccessBlock:v38];
        _Block_release(v38);

        return;
      }

      __break(1u);
    }

    goto LABEL_27;
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static MOAngelLogger.assets);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[MOSuggestionAssetMediaAlbumArtProvider] No active requets to fire", v9, 2u);
  }
}

double MOSuggestionAssetMediaAlbumArtProvider.handleStaleRequests()()
{
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v18 = v5;
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v16 = *(v0 + 48);
  static DispatchTime.now()();
  MOSuggestionAssetMediaAlbumArtProvider.dynamicBatchRequestInterval.getter();
  + infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionAssetMediaAlbumArtProvider.handleStaleRequests();
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_88_0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v14 = v20;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v13);
  (*(v22 + 8))(v2, v14);
  (*(v19 + 8))(v4, v21);
  v17(v11, v18);

  return result;
}

double closure #1 in MOSuggestionAssetMediaAlbumArtProvider.handleStaleRequests()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    MOSuggestionAssetMediaAlbumArtProvider._handleStaleRequests()();
  }

  return result;
}

void MOSuggestionAssetMediaAlbumArtProvider._handleStaleRequests()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_beginAccess();
  v44 = *(v0 + 16);
  v2 = *(v44 + 16);
  if (!v2)
  {

    goto LABEL_27;
  }

  v3 = "ovider_CacheCount";
  v39 = v0;
  v4 = *(v0 + 64);

  v5 = v2 - 1;
  for (i = 32; ; i += 112)
  {
    v7 = *(v44 + i);
    v8 = *(v44 + i + 32);
    v52 = *(v44 + i + 16);
    v53 = v8;
    v51 = v7;
    v9 = *(v44 + i + 48);
    v10 = *(v44 + i + 64);
    v11 = *(v44 + i + 96);
    v56 = *(v44 + i + 80);
    v57 = v11;
    v54 = v9;
    v55 = v10;
    outlined init with copy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51, &v45);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v4 getIntegerSettingForKey:v12 withFallback:3];

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static MOAngelLogger.assets);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v15, v16, "[MOSuggestionAssetMediaAlbumArtProvider] dynamicRetryCount=%d", v17, 8u);
    }

    v18 = *(&v57 + 1);
    v19 = v57;
    v20 = *(&v56 + 1);
    if (*(&v57 + 1) < v13)
    {
      break;
    }

    (*(&v56 + 1))(0);
    outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51);
    if (!v5)
    {
      goto LABEL_25;
    }

LABEL_24:
    --v5;
  }

  outlined init with copy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51, &v45);
  outlined init with copy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51, &v45);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v43 = v5;
  if (os_log_type_enabled(v21, v22))
  {
    v42 = v1;
    v23 = v54;
    v41 = v20;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v45 = v25;
    *v24 = 136315394;
    v40 = v19;
    v26 = v4;
    v27 = v3;
    if (*(&v23 + 1))
    {
      v28 = v23;
    }

    else
    {
      v28 = 7104878;
    }

    if (*(&v23 + 1))
    {
      v29 = *(&v23 + 1);
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v45);
    v1 = v42;

    *(v24 + 4) = v30;
    v3 = v27;
    v4 = v26;
    v19 = v40;
    *(v24 + 12) = 2048;
    outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51);
    *(v24 + 14) = v18;
    outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51);
    _os_log_impl(&_mh_execute_header, v21, v22, "[MOSuggestionAssetMediaAlbumArtProvider] Queueing trackId=%s, numRetries=%ld", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);

    v20 = v41;
  }

  else
  {
    outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51);
    outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51);
  }

  outlined init with copy of MOSuggestionAssetMediaCoverArtQueryInput(&v51, &v45);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
  }

  v32 = *(v1 + 2);
  v31 = *(v1 + 3);
  if (v32 >= v31 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v1);
  }

  outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v51);
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v33 = v51;
  v45 = v51;
  v46 = v52;
  *(v1 + 2) = v32 + 1;
  v34 = &v1[14 * v32];
  v35 = v50;
  v37 = v48;
  v36 = v49;
  *(v34 + 4) = v47;
  *(v34 + 5) = v37;
  *(v34 + 6) = v36;
  *(v34 + 14) = v35;
  v38 = v46;
  *(v34 + 2) = v33;
  *(v34 + 3) = v38;
  *(v34 + 15) = v20;
  *(v34 + 16) = v19;
  *(v34 + 17) = v18 + 1;
  v5 = v43;
  if (v43)
  {
    goto LABEL_24;
  }

LABEL_25:

  v0 = v39;
LABEL_27:
  *(v0 + 32) = 0;
  *(v0 + 16) = v1;

  *(v0 + 24) = _swiftEmptyArrayStorage;

  MOSuggestionAssetMediaAlbumArtProvider.fireBatchOperation()();
}

uint64_t MOSuggestionAssetMediaAlbumArtProvider.dynamicRetryCount.getter()
{
  v1 = *(v0 + 64);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 getIntegerSettingForKey:v2 withFallback:3];

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static MOAngelLogger.assets);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "[MOSuggestionAssetMediaAlbumArtProvider] dynamicRetryCount=%d", v7, 8u);
  }

  return v3;
}

double closure #1 in MOSuggestionAssetMediaAlbumArtProvider.fireBatchOperation()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.assets);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MOSuggestionAssetMediaAlbumArtProvider] AMSMedia promise error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    MOSuggestionAssetMediaAlbumArtProvider.handleStaleRequests()();
  }

  return result;
}

void closure #2 in MOSuggestionAssetMediaAlbumArtProvider.fireBatchOperation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v167 - v6;
  v195 = type metadata accessor for URL();
  v193 = *(v195 - 8);
  v8 = __chkstk_darwin(v195);
  v191 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v167 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v167 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v167 - v17;
  __chkstk_darwin(v16);
  v20 = &v167 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v22 = &off_100333000;
  if (!Strong)
  {
LABEL_47:
    if (v22[207] == -1)
    {
LABEL_48:
      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, static MOAngelLogger.assets);
      v70 = a1;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v200 = v74;
        *v73 = 136315138;
        v75 = [v70 debugDescription];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v200);

        *(v73 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v71, v72, "[MOSuggestionAssetMediaAlbumArtProvider] Did not decode AMS result struct correctly result=%s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
      }

      return;
    }

LABEL_111:
    swift_once();
    goto LABEL_48;
  }

  v23 = Strong;
  v24 = [a1 responseDictionary];
  if (!v24)
  {
    goto LABEL_44;
  }

  v180 = v7;
  v25 = v24;
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v198 = 1635017060;
  v199 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v26 + 16) || (v27 = specialized __RawDictionaryStorage.find<A>(_:)(&v200), (v28 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v200);
    goto LABEL_46;
  }

  outlined init with copy of Any(*(v26 + 56) + 32 * v27, v197);
  outlined destroy of AnyHashable(&v200);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:

LABEL_46:
    v22 = &off_100333000;
    goto LABEL_47;
  }

  v29 = *(v198 + 16);
  v30 = &off_1002A1000;
  v176 = v12;
  v182 = a3;
  if (v29)
  {
    v31 = v29;
    v187 = v198;
    v196 = v198 + 32;
    swift_beginAccess();
    a1 = 0;
    v185 = (v193 + 16);
    v186 = (v193 + 8);
    *&v32 = 136315138;
    v184 = v32;
    v194 = v31;
    while (1)
    {
      v33 = *(v196 + 8 * a1);
      v198 = 0x7475626972747461;
      v199 = 0xEA00000000007365;

      AnyHashable.init<A>(_:)();
      if (*(v33 + 16))
      {
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(&v200);
        if (v35)
        {
          break;
        }
      }

      outlined destroy of AnyHashable(&v200);
LABEL_9:
      if (++a1 == v31)
      {

        v30 = &off_1002A1000;
        goto LABEL_53;
      }
    }

    outlined init with copy of Any(*(v33 + 56) + 32 * v34, v197);
    outlined destroy of AnyHashable(&v200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if (swift_dynamicCast())
    {
      v192 = v198;
      v198 = 25705;
      v199 = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v33 + 16))
      {
        goto LABEL_27;
      }

      v36 = specialized __RawDictionaryStorage.find<A>(_:)(&v200);
      if ((v37 & 1) == 0)
      {
        goto LABEL_27;
      }

      outlined init with copy of Any(*(v33 + 56) + 32 * v36, v197);
      outlined destroy of AnyHashable(&v200);

      if (swift_dynamicCast())
      {
        v38 = v23[7];
        v39 = *(v38 + 16);
        v189 = v198;
        v190 = v199;
        if (v39)
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v40 = Hasher._finalize()();
          v41 = -1 << *(v38 + 32);
          v42 = v40 & ~v41;
          v188 = (v38 + 56);
          if ((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
          {
            v43 = ~v41;
            while (1)
            {
              v44 = *(v38 + 48) + 16 * v42;
              v45 = *v44 == v189 && *(v44 + 8) == v190;
              if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v42 = (v42 + 1) & v43;
              if (((*&v188[(v42 >> 3) & 0xFFFFFFFFFFFFFF8] >> v42) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            v46 = 0x408F400000000000;
          }

          else
          {
LABEL_25:
            v46 = 0x4079000000000000;
          }

          v47 = *&v46;

          a3 = v182;
        }

        else
        {
          v47 = 400.0;
        }

        v48 = v192;
        v198 = 0x6B726F77747261;
        v199 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        if (v48[2])
        {
          v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v200);
          if (v50)
          {
            outlined init with copy of Any(v192[7] + 32 * v49, v197);
            outlined destroy of AnyHashable(&v200);

            if (swift_dynamicCast())
            {
              v51 = objc_allocWithZone(AMSMediaArtwork);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              v53 = [v51 initWithDictionary:isa];

              v54 = [v53 URLWithSize:{v47, v47}];
              if (v54)
              {
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                swift_beginAccess();
                v192 = *v185;
                (v192)(v18, v20, v195);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v197[0] = *(a3 + 16);
                *(a3 + 16) = 0x8000000000000000;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v189, v190, isUniquelyReferenced_nonNull_native);

                *(a3 + 16) = v197[0];
                swift_endAccess();
                if (one-time initialization token for assets != -1)
                {
                  swift_once();
                }

                v56 = type metadata accessor for Logger();
                __swift_project_value_buffer(v56, static MOAngelLogger.assets);
                v57 = v195;
                (v192)(v15, v20, v195);
                v58 = Logger.logObject.getter();
                v59 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v58, v59))
                {
                  v60 = swift_slowAlloc();
                  v188 = v60;
                  v61 = swift_slowAlloc();
                  v189 = v58;
                  v190 = v61;
                  *&v200 = v61;
                  *v60 = v184;
                  v62 = URL.debugDescription.getter();
                  v64 = v63;
                  v192 = *v186;
                  (v192)(v15, v195);
                  v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v200);

                  v66 = v188;
                  *(v188 + 4) = v65;
                  v67 = v189;
                  _os_log_impl(&_mh_execute_header, v189, v59, "[MOSuggestionAssetMediaAlbumArtProvider] Obtained %s", v66, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v190);

                  (v192)(v20, v195);
                }

                else
                {

                  v68 = *v186;
                  (*v186)(v15, v57);
                  v68(v20, v57);
                }

                goto LABEL_28;
              }
            }

            goto LABEL_42;
          }
        }

LABEL_27:

        outlined destroy of AnyHashable(&v200);
LABEL_28:
        v31 = v194;
        goto LABEL_9;
      }
    }

LABEL_42:

    goto LABEL_28;
  }

LABEL_53:
  swift_beginAccess();
  v80 = v23[2];
  v194 = *(v80 + 16);
  if (!v194)
  {
    goto LABEL_105;
  }

  swift_beginAccess();
  if (!*(v80 + 16))
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v82 = 0;
  v178 = 0;
  v192 = (v80 + 32);
  v173 = v193 + 32;
  v174 = v193 + 16;
  v175 = (v193 + 8);
  v167 = (v193 + 48);
  v168 = (v193 + 56);
  *&v81 = *(v30 + 438);
  v179 = v81;
  v183 = v80;
  v181 = v23;
  while (1)
  {
    v83 = &v192[14 * v82];
    v85 = v83[1];
    v84 = v83[2];
    v200 = *v83;
    v201 = v85;
    v202 = v84;
    v86 = v83[6];
    v88 = v83[3];
    v87 = v83[4];
    v205 = v83[5];
    v206 = v86;
    v203 = v88;
    v204 = v87;
    v89 = *(&v88 + 1);
    if (!*(&v88 + 1))
    {
      goto LABEL_90;
    }

    v90 = v203;
    v91 = v23[7];
    v92 = *(v91 + 16);
    v189 = v202;
    v190 = v205;
    v187 = v201;
    v188 = *(&v202 + 1);
    v185 = v200;
    v186 = *(&v201 + 1);
    *&v184 = *(&v200 + 1);
    if (!v92)
    {
      outlined init with copy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v200, v197);

      goto LABEL_68;
    }

    Hasher.init(_seed:)();
    outlined init with copy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v200, v197);

    String.hash(into:)();
    v93 = Hasher._finalize()();
    v94 = -1 << *(v91 + 32);
    v95 = v93 & ~v94;
    if (((*(v91 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
    {
LABEL_66:

LABEL_68:
      v99 = 0;
      goto LABEL_70;
    }

    v96 = ~v94;
    while (1)
    {
      v97 = (*(v91 + 48) + 16 * v95);
      v98 = *v97 == v90 && v89 == v97[1];
      if (v98 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v95 = (v95 + 1) & v96;
      if (((*(v91 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v99 = 1;
LABEL_70:
    a1 = *(&v205 + 1);
    v196 = v206;
    v100 = v23[5];
    v101 = objc_allocWithZone(NSString);
    v102 = v100;
    v103 = String._bridgeToObjectiveC()();
    v104 = [v101 initWithString:v103];

    v105 = [v102 objectForKey:v104];
    if (v105)
    {
      if ((v99 & 1) == 0)
      {
        v125 = a1;
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v126 = type metadata accessor for Logger();
        __swift_project_value_buffer(v126, static MOAngelLogger.assets);

        v127 = Logger.logObject.getter();
        a1 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v127, a1))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v197[0] = v129;
          *v128 = v179;
          v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v89, v197);

          *(v128 + 4) = v130;
          _os_log_impl(&_mh_execute_header, v127, a1, "[MOSuggestionAssetMediaAlbumArtProvider] Cache hit trackID=%s", v128, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v129);
        }

        else
        {
        }

        v80 = v183;
        v131 = v105;
        v125(v105);

        outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v200);
        v23 = v181;
        goto LABEL_90;
      }
    }

    v106 = v182;
    swift_beginAccess();
    v107 = *(v106 + 16);
    if (!*(v107 + 16) || (v108 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v89), (v109 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_78;
    }

    v177 = a1;
    v110 = v193;
    v111 = *(v107 + 56) + *(v193 + 72) * v108;
    v112 = v191;
    v113 = v195;
    (*(v193 + 16))(v191, v111, v195);
    v114 = v176;
    (*(v110 + 32))(v176, v112, v113);
    swift_endAccess();
    v115 = v178;
    v116 = Data.init(contentsOf:options:)();
    if (v115)
    {

      (*v175)(v114, v113);
      v178 = 0;
      a1 = v177;
LABEL_78:
      v80 = v183;
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      __swift_project_value_buffer(v118, static MOAngelLogger.assets);

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = a1;
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v197[0] = v123;
        *v122 = v179;
        v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v89, v197);

        *(v122 + 4) = v124;
        _os_log_impl(&_mh_execute_header, v119, v120, "[MOSuggestionAssetMediaAlbumArtProvider] Artwork failed for trackID=%s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v123);

        a1 = v121;
        v23 = v181;
      }

      else
      {
      }

      (a1)(0);
      outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v200);
      goto LABEL_90;
    }

    v171 = v116;
    v172 = v117;
    v178 = 0;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    __swift_project_value_buffer(v132, static MOAngelLogger.assets);

    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v197[0] = v136;
      *v135 = v179;
      *(v135 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v89, v197);
      _os_log_impl(&_mh_execute_header, v133, v134, "[MOSuggestionAssetMediaAlbumArtProvider] Downloading Artwork for trackID=%s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v136);
    }

    v137 = objc_allocWithZone(UIImage);
    v138 = v171;
    v139 = v172;
    outlined copy of Data._Representation(v171, v172);
    v140 = Data._bridgeToObjectiveC()().super.isa;
    v141 = [v137 initWithData:v140];

    v142 = outlined consume of Data._Representation(v138, v139);
    v143 = v180;
    v144 = v195;
    (*v168)(v180, 1, 1, v195, v142);
    v170 = v141;
    v185 = String._bridgeToObjectiveC()();
    v187 = String._bridgeToObjectiveC()();
    v188 = String._bridgeToObjectiveC()();
    v189 = String._bridgeToObjectiveC()();
    v145 = (*v167)(v143, 1, v144);
    v169 = v99;
    if (v145 == 1)
    {
      v186 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v146);
      v186 = v147;
      (*v175)(v143, v144);
    }

    v148 = objc_allocWithZone(MOSuggestionAssetMediaItem);
    v150 = v185;
    v149 = v186;
    v151 = v187;
    v152 = v188;
    v153 = v170;
    v154 = v189;
    v190 = [v148 initTitle:v185 albumTitle:v187 artistName:v188 albumArt:v170 trackIdentifier:v189 previewURL:v186 mediaType:v190];

    v155 = MOSuggestionAssetsTypeMediaCoverArt;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetMediaItem, MOSuggestionAssetMediaItem_ptr);
    v156 = objc_allocWithZone(MOSuggestionAsset);
    v157 = [v156 init:v190 type:v155 contentClassType:swift_getObjCClassFromMetadata()];
    v23 = v181;
    v158 = v181[5];
    v159 = objc_allocWithZone(NSString);
    a1 = v158;
    v160 = String._bridgeToObjectiveC()();
    v161 = [v159 initWithString:v160];

    [a1 setObject:v157 forKey:v161];
    v162 = v157;
    v177(v157);

    if (v169)
    {
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v90, v89);
      swift_endAccess();

      outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v200);

      outlined consume of Data._Representation(v171, v172);

      (*v175)(v176, v195);
    }

    else
    {
      (*v175)(v176, v195);
      outlined consume of Data._Representation(v171, v172);

      outlined destroy of MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(&v200);
    }

    v80 = v183;
LABEL_90:
    if (++v82 == v194)
    {
      break;
    }

    if (v82 >= *(v80 + 16))
    {
      goto LABEL_110;
    }
  }

LABEL_105:
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v163 = type metadata accessor for Logger();
  __swift_project_value_buffer(v163, static MOAngelLogger.assets);
  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    *v166 = 0;
    _os_log_impl(&_mh_execute_header, v164, v165, "[MOSuggestionAssetMediaAlbumArtProvider] Finished executing all active requests", v166, 2u);
  }

  v23[2] = _swiftEmptyArrayStorage;

  MOSuggestionAssetMediaAlbumArtProvider.handleStaleRequests()();
}

id *MOSuggestionAssetMediaAlbumArtProvider.deinit()
{

  return v0;
}

double MOSuggestionAssetMediaAlbumArtProvider.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

double *MOSuggestionAssetMediaAlbumArtProvider.thirdPartyAppPredefinedColors.getter()
{
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  v2 = &off_10030A118;
  do
  {
    v3 = *(v21 + 64);
    v22[0] = v0;

    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v22[0] = 0xD000000000000035;
    v22[1] = 0x80000001002BC190;
    String.append(_:)(v4);

    v5 = String._bridgeToObjectiveC()();

    v6 = String._bridgeToObjectiveC()();

    v7 = [v3 getStringSettingForKey:v5 withFallback:v6];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v12 = *(v1 + 2);
    v11 = *(v1 + 3);
    if (v12 >= v11 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v1);
    }

    *(v1 + 2) = v12 + 1;
    v13 = &v1[2 * v12];
    *(v13 + 4) = v8;
    *(v13 + 5) = v10;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static MOAngelLogger.assets);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v22);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "[MOSuggestionAssetMediaAlbumArtProvider] ThirdPartyAppPredefinedColors=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
    }

    ++v0;
    v2 += 2;
  }

  while (v0 != 15);
  return v1;
}

uint64_t MOSuggestionAssetMediaAlbumArtProvider.thirdPartyAppColorFallbackValue.getter()
{
  v1 = *(v0 + 64);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 getStringSettingForKey:v2 withFallback:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static MOAngelLogger.assets);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v14);
    _os_log_impl(&_mh_execute_header, v9, v10, "[MOSuggestionAssetMediaAlbumArtProvider] ThirdPartyAppColorFallbackValue=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return v5;
}

uint64_t specialized static MOSuggestionAssetMediaCoverArtQueryInput.typeFromBundleId(_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEC00000076742E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD000000000000012 && 0x80000001002AE910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEF636973754D2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000029 && 0x80000001002AEB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  if (BidirectionalCollection<>.starts<A>(with:)())
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

unint64_t specialized MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static MOSuggestionAssetMediaCoverArtQueryInput.typeFromBundleMediaType(_:)(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    return 1;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 1;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    return 4;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return 4;
    }

    else
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        return 2;
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          return 2;
        }

        else
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
          {

            return 5;
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v23)
            {
              return 5;
            }

            else
            {
              v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;
              if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
              {

                return 6;
              }

              else
              {
                v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v28)
                {
                  return 6;
                }

                else
                {
                  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v31 = v30;
                  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
                  {

                    return 7;
                  }

                  else
                  {
                    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v33)
                    {
                      return 7;
                    }

                    else
                    {
                      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v36 = v35;
                      if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
                      {

                        return 8;
                      }

                      else
                      {
                        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v38)
                        {
                          return 8;
                        }

                        else
                        {
                          return 0;
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

uint64_t sub_1002694E8(__n128 a1)
{
  swift_weakDestroy();

  return _swift_deallocObject(v1, 24, 7);
}

uint64_t sub_100269520()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications and conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications and conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications and conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications and conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownFirstPartyApplications);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications and conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications and conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications and conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications and conformance MOSuggestionAssetMediaCoverArtQueryInput.MOKnownThirdPartyApplications);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for MOSuggestionAssetMediaCoverArtQueryInput(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetMediaCoverArtQueryInput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetMediaAlbumArtProvider.QueuableRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10026986C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100269914()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t MapLocation.init(resource:mapItem:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DateInterval();
  __chkstk_darwin(v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11MapLocationC9PlaceTypeOSgMd, &_s9MomentsUI11MapLocationC9PlaceTypeOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v78 - v11;
  v13 = [a1 data];
  if (!v13)
  {
    goto LABEL_35;
  }

  v81 = v8;
  v82 = a2;
  v14 = v13;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v84[0] = 0;
  v20 = [v18 JSONObjectWithData:isa options:0 error:v84];

  if (!v20)
  {
    v63 = v84[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    outlined consume of Data._Representation(v15, v17);

    return 0;
  }

  v21 = v84[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v15, v17);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v22 = v83;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v22 + 16))
  {
    goto LABEL_33;
  }

  v80 = v2;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_34;
  }

  v84[0] = *(*(v22 + 56) + 8 * v25);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

LABEL_39:

    goto LABEL_36;
  }

  v28 = v83;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v28 + 16))
  {

    goto LABEL_33;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_33:

    goto LABEL_34;
  }

  v84[0] = *(*(v28 + 56) + 8 * v31);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_42;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v28 + 16))
  {
LABEL_43:

    goto LABEL_33;
  }

  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_33;
  }

  v84[0] = *(*(v28 + 56) + 8 * v36);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:

    goto LABEL_39;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v28 + 16))
  {
    goto LABEL_43;
  }

  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_33;
  }

  v44 = *(*(v28 + 56) + 8 * v41);
  swift_unknownObjectRetain();

  v84[0] = v44;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v22 + 16))
  {
    goto LABEL_33;
  }

  v47 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_34:

LABEL_35:

LABEL_36:

    return 0;
  }

  v84[0] = *(*(v22 + 56) + 8 * v47);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v22 + 16))
  {
    goto LABEL_33;
  }

  v52 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
    goto LABEL_34;
  }

  v84[0] = *(*(v22 + 56) + 8 * v52);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v22 + 16))
  {

    goto LABEL_47;
  }

  v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v56);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
LABEL_47:
    v78 = 0;
    v79 = 0;
    goto LABEL_48;
  }

  v83 = *(*(v22 + 56) + 8 * v57);
  swift_unknownObjectRetain();
  v60 = swift_dynamicCast();
  if (v60)
  {
    v61 = v84[0];
  }

  else
  {
    v61 = 0;
  }

  if (v60)
  {
    v62 = v84[1];
  }

  else
  {
    v62 = 0;
  }

  v78 = v62;
  v79 = v61;
LABEL_48:
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v22 + 16))
  {

    goto LABEL_54;
  }

  v67 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v66);
  v69 = v68;

  if ((v69 & 1) == 0)
  {
LABEL_54:

    goto LABEL_55;
  }

  v70 = *(*(v22 + 56) + 8 * v67);
  swift_unknownObjectRetain();

  v84[0] = v70;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_55:
    [a1 placeNameConfidence];
    goto LABEL_56;
  }

  v71 = v83;
  [a1 placeNameConfidence];
  if (v71 != 2)
  {
LABEL_56:
    v75 = type metadata accessor for MapLocation.PlaceType();
    (*(*(v75 - 8) + 56))(v12, 1, 1, v75);
    goto LABEL_57;
  }

  v72 = enum case for MapLocation.PlaceType.work(_:);
  v73 = type metadata accessor for MapLocation.PlaceType();
  v74 = *(v73 - 8);
  (*(v74 + 104))(v12, v72, v73);
  (*(v74 + 56))(v12, 0, 1, v73);
LABEL_57:
  v76 = [a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init(timeIntervalSinceReferenceDate:)();
  Date.init(timeIntervalSinceReferenceDate:)();
  DateInterval.init(start:end:)();
  v77 = dispatch thunk of MapLocation.__allocating_init(latitude:longitude:mapItem:confidenceLevel:horizontalUncertainty:pinType:clusterCount:name:city:dateInterval:)();

  return v77;
}

uint64_t static MapLocation.decodedPlaceType(rawRoutineType:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) != 0 || a1 != 2)
  {
    v10 = type metadata accessor for MapLocation.PlaceType();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a3;
    v8 = 1;
  }

  else
  {
    v4 = enum case for MapLocation.PlaceType.work(_:);
    v5 = type metadata accessor for MapLocation.PlaceType();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a3, v4, v5);
    v6 = *(v12 + 56);
    v7 = a3;
    v8 = 0;
    v9 = v5;
  }

  return v6(v7, v8, 1, v9);
}

void MOEventBundle.isSingleAsset.getter(__n128 a1)
{
  MOEventBundle._orderedAssetReferences()();
  if (v1)
  {
    if (v1 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }
  }
}

uint64_t *MOSuggestionAssetCacheManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetCacheManager.shared;
}

double *specialized Sequence.compactMap<A>(_:)(unint64_t a1, double ***a2, double **a3, char *a4, double ***a5, uint64_t a6, double ***a7)
{
  v80 = a6;
  v81 = a7;
  v79 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgSgMd, &_s10Foundation4DateVSgSgMR);
  __chkstk_darwin(v11 - 8);
  v78 = &v74 - v12;
  v89 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_40:
    v86 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v86 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v76 = a4;
  v77 = a3;
  v14 = 0;
  v85 = a1 & 0xC000000000000001;
  result = _swiftEmptyArrayStorage;
  v83 = v13;
  v84 = a1;
  do
  {
    v82 = result;
    while (1)
    {
      if (v85)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v86 + 16))
        {
          goto LABEL_37;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      a4 = v16;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v87 = v14 + 1;
      v17 = [v16 name];
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      [a4 placeNameConfidence];
      v21 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *a2;
      a3 = v88;
      *a2 = 0x8000000000000000;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v19);
      v25 = a3[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_38;
      }

      v28 = v23;
      if (a3[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          a3 = v88;
          if (v23)
          {
            goto LABEL_16;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          a3 = v88;
          if (v28)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v19);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_43;
        }

        v24 = v29;
        a3 = v88;
        if (v28)
        {
LABEL_16:
          a3[7][v24] = v21;

          goto LABEL_21;
        }
      }

      a3[(v24 >> 6) + 8] = (a3[(v24 >> 6) + 8] | (1 << v24));
      v31 = &a3[6][2 * v24];
      *v31 = a1;
      *(v31 + 1) = v19;
      a3[7][v24] = v21;
      v32 = a3[2];
      v33 = __OFADD__(v32, 1);
      v34 = (v32 + 1);
      if (v33)
      {
        goto LABEL_39;
      }

      a3[2] = v34;
LABEL_21:
      *a2 = a3;

      a3 = type metadata accessor for MOMapLocation(0);
      a4 = a4;
      v35 = MOMapLocation.__allocating_init(fromResource:)(a4);
      if (v35)
      {
        break;
      }

      ++v14;
      a1 = v84;
      if (v87 == v83)
      {
        return v82;
      }
    }

    v36 = v35;
    v37 = (*v35 + 432);
    v38 = *v37;
    v39 = (*v37)();
    if (!v40)
    {
      goto LABEL_32;
    }

    v41 = v40;
    if (v39 || v40 != 0xE000000000000000)
    {
      v82 = v39;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v42 = [a4 name];
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = v77;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v88 = *v45;
        *v45 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v82, v41, v75, v44, v46);

        *v45 = v88;
        v48 = (v38)(v47);
        if (v49)
        {
          v50 = v48;
          v51 = v49;

          specialized Set._Variant.insert(_:)(&v88, v50, v51);
          goto LABEL_31;
        }

        __break(1u);
LABEL_43:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

LABEL_31:

LABEL_32:
    v52 = [a4 name];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = (*(*v36 + 504))();
    v58 = v57;
    v59 = v79;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v88 = *v59;
    *v59 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v58, v53, v55, v60);

    *v59 = v88;
    v61 = [a4 name];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = v78;
    (*(*v36 + 192))();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    specialized Dictionary.subscript.setter(v65, v62, v64);
    v67 = [a4 name];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71 = (*(*v36 + 456))();
    v72 = v81;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v88 = *v72;
    *v72 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v70, v73, v71);

    *v72 = v88;

    a3 = &v89;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a4 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v89;
    a1 = v84;
    v14 = v87;
  }

  while (v87 != v83);
  return result;
}

id MOResource.packedMetadata.getter()
{
  result = [v0 data];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12[0] = 0;
    v8 = [v6 JSONObjectWithData:isa options:0 error:v12];

    if (v8)
    {
      v9 = v12[0];
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data._Representation(v3, v5);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      if (swift_dynamicCast())
      {
        return v11;
      }
    }

    else
    {
      v10 = v12[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v3, v5);
    }

    return 0;
  }

  return result;
}

unint64_t MOEventBundle.maxAssetDisplayCount.getter()
{
  result = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  v1 = result;
  if (!result)
  {
    return v1;
  }

  v9 = &_swiftEmptySetSingleton;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_12:

    v7 = &_swiftEmptySetSingleton;
LABEL_13:
    v1 = v7[2];

    return v1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v2 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      ++v3;
      v5 = (*(*v4 + 304))();
      specialized Set._Variant.insert(_:)(&v8, v5, v6);
    }

    while (v2 != v3);

    v7 = v9;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall MOEventBundle.orderedAssetReferencesForPreview(max:)(Swift::Int max)
{
  MOEventBundle._orderedAssetReferences()();
  if (v1)
  {
    v3 = v1;
    v29 = _swiftEmptyArrayStorage;
    v28 = &_swiftEmptySetSingleton;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v23 = v4;
      v6 = 0;
      v7 = 0;
      v25 = v3 & 0xC000000000000001;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0xE000000000000000;
      v24 = v3;
      while (v25)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v10;
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

LABEL_11:
        if (v28[2] >= max)
        {
          if ((*(*v11 + 304))() == v7 && v13 == v9)
          {
          }

          else
          {
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v15 & 1) == 0)
            {

              goto LABEL_28;
            }
          }
        }

        v16 = (*v11 + 304);
        v17 = *v16;
        v18 = (*v16)(v10);
        specialized Set._Variant.insert(_:)(&v27, v18, v19);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v20 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v29;
        v7 = v17(v20);
        v4 = v21;

        v9 = v4;
        ++v6;
        v3 = v24;
        if (v12 == i)
        {

          goto LABEL_28;
        }
      }

      if (v6 >= *(v23 + 16))
      {
        goto LABEL_25;
      }

      v11 = *(v3 + 8 * v6 + 32);

      v12 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v8 = _swiftEmptyArrayStorage;
LABEL_28:
  }

  else
  {
    v8 = 0;
  }

  v22 = v8;
  result.value._rawValue = v22;
  result.is_nil = v2;
  return result;
}

double *MOEventBundle.typeSortedAssetReferencesForInterstitial.getter()
{
  result = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  if (result)
  {

    v3 = specialized Array._copyToContiguousArray()(v2, v1);
    specialized MutableCollection<>.sort(by:)(&v3);

    return v3;
  }

  return result;
}

void AppBgColor.bgColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MOSuggestionAssetCacheWorkoutInput.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0) + 20);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t MOSuggestionAssetCacheWorkoutInput.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0) + 20);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t MOSuggestionAssetCacheWorkoutInput.workoutType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MOSuggestionAssetCacheWorkoutInput.isIndoors.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

void MOSuggestionAssetCacheWorkoutInput.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = v44 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(a2, 1, 1, v7);
  v9 = type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0);
  v10 = v9[5];
  v11 = (v8)(a2 + v10, 1, 1, v7);
  v12 = a2 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v9[7];
  *(a2 + v13) = 2;
  v14 = (*(*a1 + 256))(v11);
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v15 + 16))
    {
      v45 = v10;
      v46 = v13;
      v47 = v6;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      v20 = v19;

      if (v20)
      {
        v48 = *(*(v15 + 56) + 8 * v18);
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_20;
        }

        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v15 + 16))
        {
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
          v25 = v24;

          if ((v25 & 1) == 0)
          {
LABEL_23:

            return;
          }

          v48 = *(*(v15 + 56) + 8 * v23);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_20;
          }

          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v15 + 16))
          {
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
            v30 = v29;

            if (v30)
            {
              v50 = *(*(v15 + 56) + 8 * v28);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v32 = v48;
                v31 = v49;
                v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                if (!*(v15 + 16))
                {

                  goto LABEL_21;
                }

                v44[0] = v32;
                v44[1] = v31;
                v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
                v37 = v36;

                if (v37)
                {
                  v38 = *(*(v15 + 56) + 8 * v35);
                  swift_unknownObjectRetain();

                  v48 = v38;
                  if (swift_dynamicCast())
                  {
                    v39 = v50;
                    v40 = v47;
                    Date.init(timeIntervalSince1970:)();
                    v8(v40, 0, 1, v7);
                    outlined assign with take of Date?(v40, a2);
                    Date.init(timeIntervalSince1970:)();
                    v8(v40, 0, 1, v7);
                    outlined assign with take of Date?(v40, a2 + v45);
                    v41 = objc_opt_self();
                    v42 = String._bridgeToObjectiveC()();

                    v43 = [v41 _workoutActivityTypeFromString:v42];

                    *v12 = v43;
                    *(v12 + 8) = 0;
                    *(a2 + v46) = v39 == 1;
                    return;
                  }
                }

                else
                {
                }
              }

LABEL_20:

LABEL_21:

              return;
            }

            goto LABEL_23;
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
    }
  }
}

void MOSuggestionAssetCacheWorkoutInput.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(a2, 1, 1, v6);
  v8 = type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0);
  v9 = v8[5];
  v7(a2 + v9, 1, 1, v6);
  v10 = a2 + v8[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + v8[7]) = 2;
  v11 = [v45 data];
  if (v11)
  {
    v44 = v5;
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v47 = 0;
    v18 = [v16 JSONObjectWithData:isa options:0 error:&v47];

    if (!v18)
    {
      v42 = v47;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v13, v15);

      return;
    }

    v19 = v47;
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v13, v15);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v20 = v46;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v20 + 16))
    {
      goto LABEL_18;
    }

    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }

    v47 = *(*(v20 + 56) + 8 * v23);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v20 + 16))
      {
        goto LABEL_18;
      }

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_19;
      }

      v47 = *(*(v20 + 56) + 8 * v28);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v20 + 16))
        {
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
          v35 = v34;

          if (v35)
          {
            v36 = *(*(v20 + 56) + 8 * v33);
            swift_unknownObjectRetain();

            v46 = v36;
            if (swift_dynamicCast())
            {
              v37 = v44;
              Date.init(timeIntervalSince1970:)();
              v7(v37, 0, 1, v6);
              outlined assign with take of Date?(v37, a2);
              Date.init(timeIntervalSince1970:)();
              v7(v37, 0, 1, v6);
              outlined assign with take of Date?(v37, a2 + v9);
              v38 = objc_opt_self();
              v39 = String._bridgeToObjectiveC()();

              v40 = [v38 _workoutActivityTypeFromString:v39];

              *v10 = v40;
              *(v10 + 8) = 0;
              return;
            }

            goto LABEL_20;
          }

LABEL_19:

LABEL_20:

          return;
        }

LABEL_18:

        goto LABEL_19;
      }
    }
  }

  else
  {
    v41 = v45;
  }
}

MomentsUIService::MOSuggestionAssetCacheManager::CachedAssetCost_optional __swiftcall MOSuggestionAssetCacheManager.CachedAssetCost.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 3)
  {
    v2.value = MomentsUIService_MOSuggestionAssetCacheManager_CachedAssetCost_medium;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetCacheManager.CachedAssetCost()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002ACEF0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetCacheManager.CachedAssetCost(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002ACEF0[v2]);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetCacheManager.CachedAssetCost@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 10)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

void *MOSuggestionAssetCacheManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(NSCache) init];
  v0[2] = v1;
  v0[3] = &_swiftEmptySetSingleton;
  v0[4] = &_swiftEmptyDictionarySingleton;
  v0[5] = 0;
  type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider();
  swift_allocObject();
  v0[6] = MOSuggestionAssetPhotoLivePhotoVideosProvider.init()();
  [v1 setCountLimit:30];
  [v1 setTotalCostLimit:80];
  return v0;
}

uint64_t static MOSuggestionAssetCacheManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for defaultQueue(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v11[0] = a3;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  a2();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  v11[1] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *v11[0] = result;
  return result;
}

void *MOSuggestionAssetCacheManager.predefinedBgColorDict.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    v2 = v0;
    type metadata accessor for MOSuggestionAssetMediaAlbumArtProvider();
    swift_initStackObject();
    MOSuggestionAssetMediaAlbumArtProvider.init()();
    v3 = MOSuggestionAssetMediaAlbumArtProvider.thirdPartyAppPredefinedColors.getter();
    v4 = MOSuggestionAssetMediaAlbumArtProvider.thirdPartyAppColorFallbackValue.getter();
    v6 = v5;
    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = MOSuggestionAssetCacheManager.getPredefinedAppBgColorDict(predefinedColors:colorFallbackValue:)(v3, v7);

    *(v2 + 40) = v8;

    v1 = *(v2 + 40);
  }

  if (v1)
  {
    v9 = v1;
  }

  else
  {
    v9 = &_swiftEmptyDictionarySingleton;
  }

  return v9;
}

Swift::OpaquePointer_optional __swiftcall MOSuggestionAssetCacheManager.getPredefinedAppBgColorDict(predefinedColors:colorFallbackValue:)(Swift::OpaquePointer predefinedColors, Swift::String colorFallbackValue)
{
  v55 = colorFallbackValue;
  v3 = type metadata accessor for DispatchTime();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = __chkstk_darwin(v3);
  v50 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = v49 - v6;
  v7 = swift_allocObject();
  v56 = v7;
  *(v7 + 16) = &_swiftEmptyDictionarySingleton;
  v49[1] = v7 + 16;
  v8 = dispatch_group_create();
  v60 = *(predefinedColors._rawValue + 2);
  if (v60)
  {
    v59 = predefinedColors._rawValue + 32;
    v58 = lazy protocol witness table accessor for type String and conformance String();
    v9 = 0;
    *&v10 = 136315138;
    v54 = v10;
    v57 = v8;
LABEL_6:
    v14 = &v59[16 * v9];
    v15 = v14[1];
    v61 = *v14;
    v62 = v9 + 1;
    v63[0] = v61;
    v63[1] = v15;
    v63[3] = 44;
    v63[4] = 0xE100000000000000;

    v16 = StringProtocol.components<A>(separatedBy:)();
    v17 = 0;
    v18 = *(v16 + 16);
    v8 = (v16 + 40);
    v19 = _swiftEmptyArrayStorage;
LABEL_7:
    v20 = &v8[2 * v17];
    while (1)
    {
      if (v18 == v17)
      {

        if (0xAAAAAAAAAAAAAAABLL * *(v19 + 2) + 0x7FFFFFFFFFFFFFFFLL < 0x5555555555555555)
        {

          if (!*(v19 + 2))
          {
            goto LABEL_33;
          }

          v32 = *(v19 + 4);
          v31 = *(v19 + 5);

          v8 = v57;
          dispatch_group_enter(v57);
          v33 = swift_allocObject();
          swift_weakInit();
          v34 = swift_allocObject();
          countAndFlagsBits = v55._countAndFlagsBits;
          object = v55._object;
          v34[2] = v19;
          v34[3] = countAndFlagsBits;
          v34[4] = object;
          v34[5] = v33;
          v34[6] = v56;
          v34[7] = v32;
          v34[8] = v31;
          v34[9] = v8;

          v37 = v8;
          specialized static MOSuggestionAssetAppIconProvider.getImageFor(bundleIdentifier:shouldApplyMask:completion:)(v32, v31, 0, partial apply for closure #2 in MOSuggestionAssetCacheManager.getPredefinedAppBgColorDict(predefinedColors:colorFallbackValue:), v34);
        }

        else
        {

          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, static MOAngelLogger.assets);

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v63[0] = v12;
            *v11 = v54;
            v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v15, v63);

            *(v11 + 4) = v13;
            _os_log_impl(&_mh_execute_header, v29, v30, "[MOSuggestionAssetCacheManager] predefinedColorsString invalid entry, %s", v11, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v12);
          }

          else
          {
          }

          v8 = v57;
        }

        v9 = v62;
        if (v62 == v60)
        {
          goto LABEL_25;
        }

        goto LABEL_6;
      }

      if (v17 >= *(v16 + 16))
      {
        break;
      }

      ++v17;
      isa = v20[-1].isa;
      v22 = v20->isa;
      v20 += 2;
      v23 = (v22 >> 56) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = isa & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1);
          v19 = v63[0];
        }

        v26 = *(v19 + 2);
        v25 = *(v19 + 3);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v19 = v63[0];
        }

        *(v19 + 2) = v26 + 1;
        v27 = &v19[2 * v26];
        *(v27 + 4) = isa;
        *(v27 + 5) = v22;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_27;
  }

LABEL_25:
  v38 = v50;
  static DispatchTime.now()();
  v39 = v51;
  + infix(_:_:)();
  v40 = v53;
  v41 = *(v52 + 8);
  v41(v38, v53);
  OS_dispatch_group.wait(timeout:)();
  v41(v39, v40);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {

    swift_beginAccess();
    v47 = *(v56 + 16);

    goto LABEL_31;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_34;
  }

LABEL_27:
  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static MOAngelLogger.shared);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "[getPreDefinedAppBgColorDict] timed out while fetching bg colors", v45, 2u);
  }

  v47 = 0;
LABEL_31:
  v48 = v47;
  result.value._rawValue = v48;
  result.is_nil = v46;
  return result;
}

uint64_t MOSuggestionAssetCacheManager.init()()
{
  *(v0 + 16) = [objc_allocWithZone(NSCache) init];
  *(v0 + 24) = &_swiftEmptySetSingleton;
  *(v0 + 32) = &_swiftEmptyDictionarySingleton;
  *(v0 + 40) = 0;
  type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider();
  swift_allocObject();
  *(v0 + 48) = MOSuggestionAssetPhotoLivePhotoVideosProvider.init()();
  [*(v0 + 16) setCountLimit:30];
  [*(v0 + 16) setTotalCostLimit:80];
  return v0;
}

void MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v41 = a5;
  v40 = a6;
  v37 = a4;
  v36 = a3;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_14:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      (*(*v42 + 248))(a1);
      v39 = swift_allocObject();
      *(v39 + 16) = _swiftEmptyArrayStorage;
      v12 = 0;
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      v30 = a1 & 0xC000000000000001;
      v31 = a1;
      v29 = a1 & 0xFFFFFFFFFFFFFF8;
      v27 = v45;
      v26 = (v7 + 8);
      v25 = (v9 + 8);
      v28 = v11;
      v13 = v32;
      while (1)
      {
        if (v30)
        {
          a1 = v31;
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:

            return;
          }
        }

        else
        {
          a1 = v31;
          if (v12 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_14;
          }

          v14 = *(v31 + 8 * v12 + 32);

          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_11;
          }
        }

        v9 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        *(v16 + 16) = v9;
        *(v16 + 24) = v14;
        *(v16 + 32) = v37;
        v18 = v38;
        v17 = v39;
        *(v16 + 40) = v12;
        *(v16 + 48) = v17;
        *(v16 + 56) = v18;
        *(v16 + 64) = a1;
        v19 = v40;
        *(v16 + 72) = v41;
        *(v16 + 80) = v19;
        v45[2] = partial apply for closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:);
        v46 = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v45[0] = thunk for @escaping @callee_guaranteed () -> ();
        v45[1] = &block_descriptor_50;
        v20 = _Block_copy(aBlock);
        swift_retain_n();

        static DispatchQoS.unspecified.getter();
        v43 = _swiftEmptyArrayStorage;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v21 = v33;
        v22 = v35;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v23 = v20;
        v24 = v28;
        _Block_release(v23);

        (*v26)(v21, v22);
        (*v25)(v13, v34);
        v7 = v46;

        ++v12;
        if (v15 == v24)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v41(0);
}

double closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), void *a5, void *a6, unint64_t a7, void (*a8)(double *), void *a9)
{
  v14 = a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;

    specialized MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)(a2, 0, v14, v18, a2, v14, a5, a4, a6, a7, a8, a9);
  }

  return result;
}

void closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(double *, __n128))
{
  v98 = a8;
  v99 = a5;
  v100 = a7;
  v101 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v92 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  if (!a1)
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static MOAngelLogger.assets);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v106[0] = v36;
      *v35 = 136315138;
      v37 = (*(*a2 + 312))();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v106);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    goto LABEL_49;
  }

  v95 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v17;
  v19 = one-time initialization token for assets;
  v20 = a1;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static MOAngelLogger.assets);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v97 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v94 = v20;
    v26 = v25;
    v93 = swift_slowAlloc();
    v106[0] = v93;
    *v26 = 136315138;
    v27 = (*(*a2 + 312))();
    v29 = a4;
    v30 = v16;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v106);

    *(v26 + 4) = v31;
    v16 = v30;
    a4 = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "[MOSuggestionAssetCacheManager] Successfully fetched %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);

    v20 = v94;
  }

  (*(*a2 + 192))();
  v40 = *(v16 + 48);
  v41 = v16;
  v42 = v96;
  if (v40(v14, 1, v96) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v43 = v95;
    (*(v41 + 32))(v95, v14, v42);
    v44 = [v20 metadata];
    v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = MOSuggestionAssetMetadataKeyTransferID;
    *&v104 = MOSuggestionAssetMetadataKeyTransferID;
    type metadata accessor for MOSuggestionAssetMetadataKey(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
    v47 = v46;
    AnyHashable.init<A>(_:)();
    v48 = UUID.uuidString.getter();
    v105 = &type metadata for String;
    *&v104 = v48;
    *(&v104 + 1) = v49;
    outlined init with take of Any(&v104, v103);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v45;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, v106, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v106);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addMetadata:isa];

    (*(v41 + 8))(v43, v42);
  }

  v52 = v99;
  v53 = [v20 assetType];
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
  {
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
      if ((v97 - 2) < 9u)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  if ((v97 - 2) < 9u)
  {
    goto LABEL_34;
  }

  if (v97)
  {
LABEL_33:
    [v20 contentClassType];
    ObjCClassMetadata = swift_getObjCClassMetadata();
    if (ObjCClassMetadata == type metadata accessor for MOSuggestionGenericFallBackInfo())
    {
      goto LABEL_39;
    }

LABEL_34:
    swift_beginAccess();
    v70 = *(a4 + 16);
    v71 = v20;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v70;
    if ((v72 & 1) == 0)
    {
      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
      *(a4 + 16) = v70;
    }

    v74 = *(v70 + 2);
    v73 = *(v70 + 3);
    if (v74 >= v73 >> 1)
    {
      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v70);
    }

    *(v70 + 2) = v74 + 1;
    v75 = &v70[2 * v74];
    *(v75 + 4) = v71;
    *(v75 + 5) = v52;
    *(a4 + 16) = v70;
    swift_endAccess();

    goto LABEL_49;
  }

  v59 = specialized static MOSuggestionAssetCacheManager.mappedLocationPreviewAssets(_:)(v20);
  if (!v59)
  {
LABEL_39:

    goto LABEL_49;
  }

  v60 = v59;
  if (v59 >> 62)
  {
    v61 = _CocoaArrayWrapper.endIndex.getter();
    if (v61)
    {
      goto LABEL_23;
    }

LABEL_48:

    goto LABEL_49;
  }

  v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v61)
  {
    goto LABEL_48;
  }

LABEL_23:
  if (v61 < 1)
  {
    __break(1u);

    __break(1u);
    return;
  }

  v94 = v20;
  if ((v60 & 0xC000000000000001) != 0)
  {
    v62 = 0;
    do
    {
      v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_beginAccess();
      v64 = *(a4 + 16);
      swift_unknownObjectRetain();
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v64;
      if ((v65 & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
        *(a4 + 16) = v64;
      }

      v67 = *(v64 + 2);
      v66 = *(v64 + 3);
      if (v67 >= v66 >> 1)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v64);
      }

      ++v62;
      *(v64 + 2) = v67 + 1;
      v68 = &v64[2 * v67];
      *(v68 + 4) = v63;
      *(v68 + 5) = v52;
      *(a4 + 16) = v64;
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    while (v61 != v62);
  }

  else
  {
    v76 = 32;
    do
    {
      v77 = *(v60 + v76);
      swift_beginAccess();
      v78 = *(a4 + 16);
      v79 = v77;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v78;
      if ((v80 & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
        *(a4 + 16) = v78;
      }

      v82 = *(v78 + 2);
      v81 = *(v78 + 3);
      if (v82 >= v81 >> 1)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v78);
      }

      *(v78 + 2) = v82 + 1;
      v83 = &v78[2 * v82];
      *(v83 + 4) = v79;
      *(v83 + 5) = v52;
      *(a4 + 16) = v78;
      swift_endAccess();

      v76 += 8;
      --v61;
    }

    while (v61);
  }

LABEL_49:
  v84 = v101;
  swift_beginAccess();
  v85 = *(v84 + 16);
  v86 = v85 + 1;
  if (__OFADD__(v85, 1))
  {
    __break(1u);
LABEL_60:
    if (v86 != _CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }

    goto LABEL_52;
  }

  *(v84 + 16) = v86;
  if (v100 >> 62)
  {
    goto LABEL_60;
  }

  if (v86 != *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

LABEL_52:
  swift_beginAccess();
  *&v103[0] = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(v103);

  v87 = *&v103[0];
  v88 = *(*&v103[0] + 16);
  if (v88)
  {
    *&v103[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v89 = 32;
    do
    {
      v90 = *(v87 + v89);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v89 += 16;
      --v88;
    }

    while (v88);

    v91 = *&v103[0];
  }

  else
  {

    v91 = _swiftEmptyArrayStorage;
  }

  (v98)(v91);

  swift_beginAccess();
  *(a4 + 16) = _swiftEmptyArrayStorage;
}

Swift::OpaquePointer_optional __swiftcall MOSuggestionAssetCacheManager.authorizedAssetPrototypes(_:)(Swift::OpaquePointer_optional result)
{
  if (!result.value._rawValue)
  {
    return result;
  }

  rawValue = result.value._rawValue;
  v2 = (result.value._rawValue & 0xFFFFFFFFFFFFFF8);
  if (result.value._rawValue >> 62)
  {
    goto LABEL_31;
  }

  v27 = *((result.value._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_34;
  }

  v24 = result.value._rawValue & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    v26 = rawValue & 0xC000000000000001;
    swift_beginAccess();
    v3 = 0;
    v23 = (rawValue + 32);
    v25 = rawValue;
    while (v26)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_28;
      }

LABEL_14:
      v6 = *(v28 + 24);
      v2 = *(*v4 + 288);

      (v2)(v7);
      lazy protocol witness table accessor for type String and conformance String();
      v8 = StringProtocol.components<A>(separatedBy:)();

      if (!v8[2])
      {
        goto LABEL_29;
      }

      v9 = v8[4];
      v10 = v8[5];

      if (*(v6 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v11 = Hasher._finalize()();
        v12 = -1 << *(v6 + 32);
        v13 = v11 & ~v12;
        if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = (*(v6 + 48) + 16 * v13);
            v16 = *v15 == v9 && v15[1] == v10;
            if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v18 = (*(*v4 + 120))(v17);
          v2();
          v19 = objc_allocWithZone(MOSuggestionAssetPrototype);
          v20 = String._bridgeToObjectiveC()();

          v21 = [v19 init:v18 identifier:v20];

          v22 = v21;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          rawValue = v25;
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
LABEL_24:

          rawValue = v25;
        }
      }

      else
      {
      }

      if (v3 == v27)
      {
        goto LABEL_33;
      }
    }

    if (v3 >= *(v24 + 16))
    {
      goto LABEL_30;
    }

    v4 = *&v23[8 * v3];

    v5 = __OFADD__(v3++, 1);
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      v24 = v2;
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
LABEL_33:
        result.value._rawValue = _swiftEmptyArrayStorage;
        return result;
      }

      continue;
    }

    break;
  }

LABEL_34:
  result.value._rawValue = 0;
  return result;
}

Swift::Void __swiftcall MOSuggestionAssetCacheManager.submitMediaMetrics(_:)(Swift::OpaquePointer_optional a1)
{
  if (!a1.value._rawValue)
  {
    return;
  }

  rawValue = a1.value._rawValue;
  v3 = a1.value._rawValue & 0xFFFFFFFFFFFFFF8;
  if (a1.value._rawValue >> 62)
  {
    goto LABEL_60;
  }

  v4 = *((a1.value._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return;
  }

  v61 = &_swiftEmptySetSingleton;
LABEL_5:
  v5 = 0;
  while (1)
  {
    if ((rawValue & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_57;
      }

      goto LABEL_14;
    }

    if (v5 >= *(v56 + 16))
    {
      break;
    }

    v3 = *(rawValue + 8 * v5 + 32);

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_14:
    v1 = (*(*v3 + 120))();
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {

        goto LABEL_7;
      }
    }

    v14 = (*(*v3 + 256))(v13);
    if (!v14)
    {
      goto LABEL_51;
    }

    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v15 + 16))
    {

LABEL_50:

LABEL_51:

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static MOAngelLogger.assets);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v60[0] = v50;
        *v49 = 136315138;
        v51 = (*(*v3 + 312))();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v60);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "[MOSuggestionAssetCacheManager] Metrics has empty metaData or bundleId for media asset, %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
      }

      else
      {
      }

      return;
    }

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_50;
    }

    v21 = *(*(v15 + 56) + 8 * v18);
    swift_unknownObjectRetain();

    v60[2] = v21;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_51;
    }

    v1 = &v61;
    specialized Set._Variant.insert(_:)(v60, v60[0], v60[1]);

LABEL_7:
    ++v5;
    if (v6 == v4)
    {
      v22 = v61;
      goto LABEL_27;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_60:
    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      break;
    }

    v55 = v1;
    v56 = v3;
    v22 = &_swiftEmptySetSingleton;
    v61 = &_swiftEmptySetSingleton;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_27:
    rawValue = 0;
    v3 = (v22 + 56);
    v23 = 1 << v22[32];
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v22 + 7);
    v26 = (v23 + 63) >> 6;
    v57 = v22;
    for (i = v26; v25; v26 = i)
    {
LABEL_36:
      while (1)
      {
        v28 = (*(v22 + 6) + ((rawValue << 10) | (16 * __clz(__rbit64(v25)))));
        v29 = *v28;
        v30 = v28[1];
        v31 = *(v55->isa + 27);

        v33 = v31(v32);
        if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30), (v35 & 1) != 0))
        {
          v36 = *(v33 + 56) + 32 * v34;
          v37 = *(v36 + 16);
          v38 = *(v36 + 24);

          v59 = 1;
          v58 = v38;
        }

        else
        {

          v59 = 0;
          v58 = 0;
          v37 = 0;
        }

        MOSuggestionAssetMediaAnalytics.MediaEngagementEvent.send()();

        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v25 &= v25 - 1;
        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static MOAngelLogger.assets);

        v1 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v1, v40))
        {
          break;
        }

        swift_bridgeObjectRelease_n();
        v22 = v57;
        if (!v25)
        {
          goto LABEL_32;
        }
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136315650;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v60);

      *(v41 + 4) = v43;
      *(v41 + 12) = 1024;
      if (v37)
      {

        v22 = v57;
        v44 = v59;
        v45 = v58;
      }

      else
      {
        v45 = 1;
        v22 = v57;
        v44 = v59;
      }

      *(v41 + 14) = v45;

      *(v41 + 18) = 1024;
      *(v41 + 20) = v44;
      _os_log_impl(&_mh_execute_header, v1, v40, "[MOSuggestionAssetCacheManager] Submit metrics for media asset, bundleId %s, appIconUnchanged, %{BOOL}d, predefinedApp, %{BOOL}d", v41, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v42);
    }

LABEL_32:
    while (1)
    {
      v27 = rawValue + 1;
      if (__OFADD__(rawValue, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        return;
      }

      v25 = *(v3 + 8 * v27);
      ++rawValue;
      if (v25)
      {
        rawValue = v27;
        goto LABEL_36;
      }
    }

LABEL_58:
    __break(1u);
  }
}

NSCountedSet_optional __swiftcall MOSuggestionAssetCacheManager.authorizedAssetCountsForAnalytics(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v3 = a1._rawValue >> 62;
  if (a1._rawValue >> 62)
  {
    goto LABEL_40;
  }

  if (*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_41:
    v25 = 0;
    goto LABEL_42;
  }

LABEL_3:
  v26 = [objc_allocWithZone(NSCountedSet) init];
  if (!v3)
  {
    v4 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_36;
    }

    goto LABEL_7;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
LABEL_7:
    v3 = rawValue;
    v29 = rawValue & 0xC000000000000001;
    swift_beginAccess();
    v5 = 0;
    v27 = rawValue + 32;
    v28 = rawValue & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v29)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v5 >= *(v28 + 16))
        {
          goto LABEL_39;
        }

        v6 = *(v27 + 8 * v5);

        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          if (_CocoaArrayWrapper.endIndex.getter() < 1)
          {
            goto LABEL_41;
          }

          goto LABEL_3;
        }
      }

      v8 = *(v30 + 24);
      v3 = *(*v6 + 288);

      (v3)(v9);
      lazy protocol witness table accessor for type String and conformance String();
      rawValue = StringProtocol.components<A>(separatedBy:)();

      if (!*(rawValue + 16))
      {
        goto LABEL_38;
      }

      v10 = *(rawValue + 32);
      v11 = *(rawValue + 40);

      if (*(v8 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v12 = Hasher._finalize()();
        rawValue = v8 + 56;
        v13 = -1 << *(v8 + 32);
        v3 = v12 & ~v13;
        if ((*(v8 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
        {
          break;
        }
      }

LABEL_8:

LABEL_9:

      if (v5 == v4)
      {
        goto LABEL_36;
      }
    }

    v14 = ~v13;
    while (1)
    {
      v15 = (*(v8 + 48) + 16 * v3);
      v16 = *v15 == v10 && v15[1] == v11;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v3 = (v3 + 1) & v14;
      if (((*(rawValue + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    rawValue = (*(*v6 + 120))(v17);
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
        goto LABEL_35;
      }
    }

    v24 = MOSuggestionAssetsTypeMultiPinMap;

    rawValue = v24;
LABEL_35:
    [v26 addObject:rawValue];

    goto LABEL_9;
  }

LABEL_36:
  v25 = v26;
LABEL_42:
  result.value.super.super.super.isa = v25;
  result.is_nil = v1;
  return result;
}

Swift::Void __swiftcall MOSuggestionAssetCacheManager.markEligibleForTransfer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (!a1._countAndFlagsBits && a1._object == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || countAndFlagsBits == 0x6C6F686563616C70 && object == 0xEB00000000726564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static MOAngelLogger.assets);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "[MOSuggestionAssetCacheManager] Failed to mark as authorized for transfer, blank ID", v7, 2u);
    }

    return;
  }

  v15[0] = countAndFlagsBits;
  v15[1] = object;
  v16[0] = 35;
  v16[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  if (!v8[2])
  {
    __break(1u);
    goto LABEL_20;
  }

  v1 = v8[4];
  v2 = v8[5];

  if (one-time initialization token for assets != -1)
  {
LABEL_20:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static MOAngelLogger.assets);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "[MOSuggestionAssetCacheManager] Marking asset as authorized for transfer %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v16, v1, v2);
  swift_endAccess();
}

Swift::Void __swiftcall MOSuggestionAssetCacheManager.markEligibleForTransfer(_:reflectionPromptIndex:)(Swift::String _, Swift::Int reflectionPromptIndex)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  (*(*v2 + 264))();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2[4];
  v2[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(reflectionPromptIndex, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  v2[4] = v7;
  swift_endAccess();
}

void MOSuggestionAssetCacheManager.markEligibleForTransfer(_:)()
{
  v1 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_4:
      if (v3 < 1)
      {
        __break(1u);
        return;
      }

      v4 = 0;
      v5 = *(*v0 + 264);
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v2 + 8 * v4 + 32);
        }

        ++v4;
        v7 = (*(*v6 + 296))();
        v5(v7);
      }

      while (v3 != v4);
    }
  }
}

Swift::Void __swiftcall MOSuggestionAssetCacheManager.clearEligibleAssetMarkings()()
{
  swift_beginAccess();
  *(v0 + 24) = &_swiftEmptySetSingleton;
}

double MOSuggestionAssetCacheManager.preCache(_:)(void *a1)
{
  v2 = v1;
  MOEventBundle._orderedAssetReferences()();
  if (v4)
  {
    v6 = v4;
    if (one-time initialization token for lowPriorityQueue != -1)
    {
      swift_once();
    }

    v7 = static MOSuggestionAssetCacheManager.lowPriorityQueue;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = *(*v2 + 232);
    v10 = a1;
    v9(v6, 0, v7, 5, partial apply for closure #1 in MOSuggestionAssetCacheManager.preCache(_:), v8);
  }

  return result;
}

void closure #1 in MOSuggestionAssetCacheManager.preCache(_:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static MOAngelLogger.assets);
  v8 = a2;
  v18 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = [v8 bundleIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v18, v9, "[MOSuggestionAssetCacheManager] Successfully pre-cached bundleId=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v17 = v18;
  }
}

uint64_t MOSuggestionAssetCacheManager.deinit()
{

  return v0;
}

double MOSuggestionAssetCacheManager.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t closure #1 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static MOAngelLogger.assets);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = *(**(a1 + 16) + 312);

    v14 = v12(v13);
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v19);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "[MOSuggestionAssetCacheManager] Cache hit for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return a2(a4);
}

void closure #1 in MOSuggestionAssetCacheManager.fetchAndCachePhotoLivePhotoVideosFromProvider(_:cacheType:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v7 = a3;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_17:
    v30 = (*(*a2 + 312))(a1, a2, a3, a4);
    v32 = v31;
    type metadata accessor for MOSuggestionGenericFallBackInfo();
    v33 = swift_allocObject();
    *(v33 + 24) = 0;
    *(v33 + 16) = 0;
    swift_beginAccess();
    *(v33 + 16) = v30;
    *(v33 + 24) = v32;
    MOSuggestionGenericFallBackInfo.description()();
    v34 = *(*a2 + 120);

    v36 = v34(v35);
    v37 = [objc_allocWithZone(MOSuggestionAsset) init:v33 type:v36 contentClassType:swift_getObjCClassFromMetadata()];

    v25 = v37;
    a5(v37);

    goto LABEL_18;
  }

  v26 = a1;
  v27 = a4;
  v28 = _CocoaArrayWrapper.endIndex.getter();
  a4 = v27;
  v29 = v28;
  a1 = v26;
  if (!v29)
  {
    goto LABEL_17;
  }

LABEL_4:
  v38 = a4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v10 = v9;
    v11 = (*a2 + 288);
    v12 = *v11;
    (*v11)();
    v13 = String._bridgeToObjectiveC()();

    [v10 addIdentifier:v13];

    if (v7 - 2 <= 8)
    {
      v14 = [v10 assetType];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {

        goto LABEL_12;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
LABEL_12:
        [v10 contentClassType];
        ObjCClassMetadata = swift_getObjCClassMetadata();
        if (ObjCClassMetadata == type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHLivePhoto, PHLivePhoto_ptr))
        {
          swift_beginAccess();
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v22 = *(Strong + 16);

            (v12)(v23);
            v24 = String._bridgeToObjectiveC()();

            [v22 setObject:v10 forKey:v24 cost:1];
          }
        }
      }
    }

    v25 = v10;
    a5(v10);
LABEL_18:

    return;
  }

  if (*(v8 + 16))
  {
    v9 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

void closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheRingsFromProvider(_:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  if (a2)
  {
    v8 = MOSuggestionAssetsTypeActivityRings;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKActivitySummary, HKActivitySummary_ptr);
    v9 = objc_allocWithZone(MOSuggestionAsset);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = a2;
    v12 = [v9 init:v11 type:v8 contentClassType:ObjCClassFromMetadata];
    v13 = *(*a3 + 288);
    v13();
    v14 = String._bridgeToObjectiveC()();

    [v12 addIdentifier:v14];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + 16);

      (v13)(v17);
      v18 = String._bridgeToObjectiveC()();

      [v16 setObject:v12 forKey:v18 cost:1];
    }

    v19 = v12;
    a5(v12);
  }

  else
  {
    (a5)(0, 0, a3, a4);
  }
}

void closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:)(uint64_t inited, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_class *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, unsigned __int8 a19, uint64_t a20, void (*a21)(void, __n128), char *a22)
{
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v177 = *(v31 - 8);
  __chkstk_darwin(v31);
  v175 = &v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for DispatchQoS();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v173 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v34 = *(inited + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
    goto LABEL_37;
  }

  *(inited + 16) = v36;
  v37 = *(a2 + 16);
  if (v37 + 0x4000000000000000 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v35 = __OFADD__(a3, 2 * v37);
  v38 = a3 + 2 * v37;
  if (v35)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    v77 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_16;
  }

  if (v36 != v38)
  {
    return;
  }

  v172 = a9;
  swift_beginAccess();
  v39 = *(a4 + 16);
  if (v39 && a5)
  {
    v40 = objc_allocWithZone(HKQuantityFormattingParameters);
    v41 = a5;
    v42 = v39;
    v43 = [v40 init];
    [v43 setPreferredUnit:v42];
    [v43 setPrecision:0];
    swift_beginAccess();
    v44 = *(a6 + 16);
    v45 = objc_opt_self();
    v178 = v42;
    v46 = [v45 quantityWithUnit:v42 doubleValue:v44];
    v171 = v41;
    v47 = v41;
    v48 = v43;
    v49 = [v46 localizedStringForType:v47 parameters:v43];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.uppercased()();

    v50 = String._bridgeToObjectiveC()();

    v51 = [v50 trimmedString];

    if (v51)
    {
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    swift_beginAccess();
    *(a7 + 16) = v52;
    *(a7 + 24) = v54;

    v55 = v178;
    [v46 doubleValueForUnit:v178];
    v57 = v56;

    swift_beginAccess();
    *(a8 + 16) = v57;
    *(a8 + 24) = 0;
    v58 = v172;
    swift_beginAccess();
    v59 = v58[2];
    v58[2] = v46;
  }

  v161 = v31;
  v178 = a13;
  swift_beginAccess();
  v60 = *(a10 + 16);
  if (v60 < 1)
  {
    v22 = 0.0;
  }

  else
  {
    swift_beginAccess();
    v22 = *(a11 + 16) / v60;
  }

  v171 = a18;
  a4 = a16;
  a3 = a17;
  a5 = a14;
  a6 = a15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A7010;
  v61 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalTime;
  *(inited + 32) = MOSuggestionAssetMetadataKeyWorkoutGroupTotalTime;
  v169 = v61;
  v170 = inited + 32;
  swift_beginAccess();
  *(inited + 40) = *(a12 + 16);
  v62 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCalories;
  *(inited + 64) = &type metadata for Double;
  *(inited + 72) = v62;
  swift_beginAccess();
  v63 = *(a8 + 16);
  v64 = *(a8 + 24);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  *(inited + 80) = v63;
  *(inited + 88) = v64;
  v66 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCaloriesQuantity;
  *(inited + 104) = v65;
  *(inited + 112) = v66;
  v167 = v66;
  v67 = v172;
  swift_beginAccess();
  v68 = v67[2];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
  *(inited + 120) = v68;
  v70 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCaloriesWithUnit;
  *(inited + 144) = v69;
  *(inited + 152) = v70;
  v166 = v70;
  swift_beginAccess();
  v72 = *(a7 + 16);
  v71 = *(a7 + 24);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(inited + 160) = v72;
  *(inited + 168) = v71;
  v164 = v71;
  v74 = MOSuggestionAssetMetadataKeyWorkoutGroupCount;
  *(inited + 184) = v73;
  *(inited + 192) = v74;
  v75 = v178;
  swift_beginAccess();
  v76 = *(v75 + 2);
  v172 = v68;
  v168 = v62;
  v165 = v74;
  if (v76 >> 62)
  {
    goto LABEL_39;
  }

  v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  *(inited + 200) = v77;
  v78 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrate;
  v163 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrate;
  *(inited + 224) = &type metadata for Int;
  *(inited + 232) = v78;
  *(inited + 240) = v22;
  v79 = MOSuggestionAssetMetadataKeyWorkoutGroupTypes;
  v162 = MOSuggestionAssetMetadataKeyWorkoutGroupTypes;
  *(inited + 264) = &type metadata for Double;
  *(inited + 272) = v79;
  swift_beginAccess();
  v80 = a5[2];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(inited + 280) = v80;
  v82 = MOSuggestionAssetMetadataKeyWorkoutGroupTypeEnumValues;
  *(inited + 304) = v81;
  *(inited + 312) = v82;
  swift_beginAccess();
  v83 = *(a6 + 16);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
  *(inited + 320) = v83;
  v85 = MOSuggestionAssetMetadataKeyWorkoutGroupStartDates;
  *(inited + 344) = v84;
  *(inited + 352) = v85;
  swift_beginAccess();
  v86 = *(a4 + 16);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
  *(inited + 360) = v86;
  v88 = MOSuggestionAssetMetadataKeyWorkoutGroupEndDates;
  *(inited + 384) = v87;
  *(inited + 392) = v88;
  swift_beginAccess();
  v89 = *(a3 + 16);
  *(inited + 424) = v87;
  *(inited + 400) = v89;

  v90 = v169;
  v91 = v168;
  v92 = v167;
  v93 = v166;
  v94 = v165;
  v95 = v163;
  v96 = v162;

  v97 = v82;

  v98 = v85;

  v99 = v88;

  v100 = v172;
  v101 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOSuggestionAssetMetadataKeya_yptMd, &_sSo28MOSuggestionAssetMetadataKeya_yptMR);
  swift_arrayDestroy();
  v188 = v101;
  v102 = v171;
  swift_beginAccess();
  v103 = v102[2];
  if (v103 && v22 > 0.0)
  {
    v104 = objc_allocWithZone(HKHealthStore);
    v105 = v103;
    v106 = [v104 init];
    v107 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore:v106];

    v108 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v107];
    if (v108)
    {
      v109 = [objc_opt_self() quantityWithUnit:v105 doubleValue:v22];
      v110 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrateQuantity;
      v184 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantity, HKQuantity_ptr);
      *&v182 = v109;
      outlined init with take of Any(&v182, v180);
      v111 = v109;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v181[0] = v101;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v180, v110, isUniquelyReferenced_nonNull_native);
      v188 = v181[0];
      v113 = MOSuggestionAssetMetadataKeyWorkoutAverageHeartRateWithUnit;
      v114 = [v108 localizedStringWithHeartRate:v111 unitStyle:1];
      if (!v114)
      {
        __break(1u);
        return;
      }

      v115 = v114;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.uppercased()();

      v116 = String._bridgeToObjectiveC()();

      v117 = [v116 trimmedString];

      if (v117)
      {
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        v184 = &type metadata for String;
        *&v182 = v118;
        *(&v182 + 1) = v120;
        outlined init with take of Any(&v182, v180);
        v121 = v188;
        v122 = swift_isUniquelyReferenced_nonNull_native();
        v181[0] = v121;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v180, v113, v122);

        v188 = v181[0];
      }

      else
      {
        specialized Dictionary._Variant.removeValue(forKey:)(&v182);

        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v182, &_sypSgMd, &_sypSgMR);
      }
    }

    else
    {
    }
  }

  if (a19 - 4 >= 7 && a19 != 2)
  {
    if (a19 != 3)
    {
      v153 = [objc_opt_self() mainScreen];
      [v153 scale];
      v155 = v154;

      swift_beginAccess();

      v157 = specialized static MOSuggestionAssetSnowglobeEffect.imageFor(images:targetSize:)(v156, v155 * 300.0, v155 * 300.0);

      if (!v157)
      {

        (a21)(0);
        return;
      }

      v158 = MOSuggestionAssetsTypeWorkoutGroup;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
      v147 = [objc_allocWithZone(MOSuggestionAsset) init:v157 type:v158 contentClassType:swift_getObjCClassFromMetadata()];
      (*(*a20 + 288))();
      v159 = String._bridgeToObjectiveC()();

      [v147 addIdentifier:v159];

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v188);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v147 addMetadata:isa];

      specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLIfNecessary(asset:cacheType:completion:)(v147, a19, a21, a22);
      goto LABEL_28;
    }

    v148 = MOSuggestionAssetMetadataKeyWorkoutGroupIcons;
    v149 = v178;
    swift_beginAccess();
    v150 = *(v149 + 2);
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIImageCGMd, &_sSaySo7UIImageCGMR);
    *&v182 = v150;
    outlined init with take of Any(&v182, v180);

    v151 = v188;
    v152 = swift_isUniquelyReferenced_nonNull_native();
    v179 = v151;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v180, v148, v152);
    v188 = v179;
  }

  v170 = a20;
  v171 = a22;
  v172 = a21;
  v123 = v178;
  swift_beginAccess();
  v124 = *(v123 + 2);
  v125 = one-time initialization token for exerciseGreen;

  if (v125 != -1)
  {
    swift_once();
  }

  v126 = static MOSuggestionTheme.Colors.exerciseGreen;
  v127 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];
  v128 = [v126 colorWithAlphaComponent:0.18];
  v129 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
  v178 = v129;
  v130 = objc_allocWithZone(v129);
  *&v130[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v187.receiver = v130;
  v187.super_class = v129;
  v131 = objc_msgSendSuper2(&v187, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v169 = v131;
  v168 = static OS_dispatch_queue.main.getter();
  v132 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v133 = swift_allocObject();
  v133[2] = v124;
  v133[3] = v127;
  v133[4] = v128;
  v133[5] = v126;
  v133[6] = v132;
  v185 = closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)partial apply;
  v186 = v133;
  *&v182 = _NSConcreteStackBlock;
  *(&v182 + 1) = 1107296256;
  v183 = thunk for @escaping @callee_guaranteed () -> ();
  v184 = &block_descriptor_316;
  v134 = _Block_copy(&v182);
  v135 = v127;
  v136 = v128;
  v137 = v126;

  v138 = v173;
  static DispatchQoS.unspecified.getter();
  *&v182 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v139 = v175;
  v140 = v161;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v141 = v168;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v134);

  v142 = v169;
  (*(v177 + 8))(v139, v140);
  (*(v174 + 8))(v138, v176);
  v143 = v142;
  v144 = [objc_allocWithZone(MOSuggestionAsset) init:v142 type:MOSuggestionAssetsTypeWorkoutGroup contentClassType:swift_getObjCClassFromMetadata()];
  (*(*v170 + 288))();
  v145 = String._bridgeToObjectiveC()();

  [v144 addIdentifier:v145];

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v188);

  v146 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v144 addMetadata:v146];

  v147 = v144;
  (v172)(v144);

LABEL_28:
}

uint64_t closure #3 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = specialized Dictionary.subscript.getter(a3, a1);
  if (v7)
  {
    v8 = v7;
    swift_beginAccess();
    v9 = *(a4 + 16);
    *(a4 + 16) = v8;
  }

  return a5();
}

void closure #5 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a1)
  {
    v25 = a7;
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;
    *(v22 + 32) = a4;
    *(v22 + 40) = a5;
    *(v22 + 48) = a6;
    *(v22 + 56) = a1;
    *(v22 + 64) = v25;
    *(v22 + 72) = a8;
    *(v22 + 80) = a9;
    *(v22 + 88) = a10;
    *(v22 + 96) = a11;
    *(v22 + 104) = a12;
    *(v22 + 112) = a13;
    *(v22 + 120) = a14;
    *(v22 + 128) = a15;
    v23 = a1;

    HKWorkout.packedSuggestionAssetMetadata(completion:)(partial apply for closure #1 in closure #5 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:), v22);
  }

  else
  {
    v24 = (a9)(0, a2, a3, a4, a5, a6, a7, a8);
    (a9)(v24);
  }
}

void closure #1 in closure #5 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, uint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v135 = a8;
  v136 = a7;
  v137 = a6;
  v134 = a5;
  v133 = a4;
  v142 = a10;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v124 - v23;
  v140 = type metadata accessor for Date();
  v141 = *(v140 - 8);
  v25 = __chkstk_darwin(v140);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v124 - v29;
  v31 = __chkstk_darwin(v28);
  v138 = &v124 - v32;
  v33 = __chkstk_darwin(v31);
  v139 = &v124 - v34;
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v33 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutType);
  if ((v35 & 1) == 0)
  {
    goto LABEL_11;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v33, v147);
  v33 = swift_dynamicCast();
  if ((v33 & 1) == 0)
  {
    goto LABEL_11;
  }

  v36 = v146;
  if (!*(a1 + 16) || (v131 = v145, v37 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutWorkoutStartTime), (v38 & 1) == 0))
  {

    (*(v141 + 56))(v24, 1, 1, v140);
    goto LABEL_9;
  }

  v130 = v36;
  v132 = a11;
  outlined init with copy of Any(*(a1 + 56) + 32 * v37, v147);
  v39 = v140;
  v40 = swift_dynamicCast();
  v41 = v141;
  v42 = *(v141 + 56);
  *&v129 = v141 + 56;
  v128 = v42;
  v42(v24, v40 ^ 1u, 1, v39);
  v127 = *(v41 + 48);
  if (v127(v24, 1, v39) == 1)
  {

LABEL_9:
    v43 = v24;
LABEL_10:
    v33 = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_11:
    v44 = v142;
LABEL_12:
    (v44)(v33);
    return;
  }

  v45 = *(v41 + 32);
  v126 = v41 + 32;
  v125 = v45;
  v45(v139, v24, v39);
  if (!*(a1 + 16) || (v46 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutWorkoutEndTime), (v47 & 1) == 0))
  {

    (*(v141 + 8))(v139, v39);
    v128(v22, 1, 1, v39);
    goto LABEL_18;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v46, v147);
  v48 = swift_dynamicCast();
  v128(v22, v48 ^ 1u, 1, v39);
  if (v127(v22, 1, v39) == 1)
  {
    (*(v141 + 8))(v139, v39);

LABEL_18:
    v43 = v22;
    goto LABEL_10;
  }

  v49 = v138;
  v125(v138, v22, v39);
  if (!*(a1 + 16))
  {

    v82 = *(v141 + 8);
    v82(v49, v39);
    v33 = (v82)(v139, v39);
    goto LABEL_11;
  }

  v50 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutHKType);
  v51 = v141;
  if ((v52 & 1) == 0 || (outlined init with copy of Any(*(a1 + 56) + 32 * v50, v147), v53 = swift_dynamicCast(), v54 = v130, (v53 & 1) == 0))
  {

    v83 = *(v51 + 8);
    v84 = v140;
    v83(v49, v140);
    v33 = (v83)(v139, v84);
    goto LABEL_11;
  }

  v129 = v145;
  swift_beginAccess();
  v55 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v55;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
    *(a2 + 16) = v55;
  }

  v58 = *(v55 + 2);
  v57 = *(v55 + 3);
  if (v58 >= v57 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v55);
  }

  *(v55 + 2) = v58 + 1;
  v59 = &v55[2 * v58];
  v59[4] = v131;
  *(v59 + 5) = v54;
  *(a2 + 16) = v55;
  swift_endAccess();
  v60 = *(v51 + 16);
  v60(v30, v139, v140);
  swift_beginAccess();
  v61 = *(a3 + 16);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v61;
  if ((v62 & 1) == 0)
  {
    v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
    *(a3 + 16) = v61;
  }

  v64 = *(v61 + 2);
  v63 = *(v61 + 3);
  if (v64 >= v63 >> 1)
  {
    v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
  }

  *(v61 + 2) = v64 + 1;
  v65 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v66 = *(v51 + 72);
  v67 = v30;
  v68 = v140;
  v125(v61 + v65 + v66 * v64, v67, v140);
  *(a3 + 16) = v61;
  v60(v27, v138, v68);
  v69 = v133;
  swift_beginAccess();
  v70 = *(v69 + 16);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  *(v69 + 16) = v70;
  if ((v71 & 1) == 0)
  {
    v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
    *(v69 + 16) = v70;
  }

  v73 = *(v70 + 2);
  v72 = *(v70 + 3);
  if (v73 >= v72 >> 1)
  {
    v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
  }

  *(v70 + 2) = v73 + 1;
  v125(v70 + v65 + v73 * v66, v27, v140);
  *(v69 + 16) = v70;
  v74 = v134;
  swift_beginAccess();
  v75 = *(v74 + 16);
  v76 = swift_isUniquelyReferenced_nonNull_native();
  *(v74 + 16) = v75;
  if ((v76 & 1) == 0)
  {
    v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
    *(v74 + 16) = v75;
  }

  v44 = v142;
  v78 = *(v75 + 2);
  v77 = *(v75 + 3);
  if (v78 >= v77 >> 1)
  {
    v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v75);
  }

  *(v75 + 2) = v78 + 1;
  v75[v78 + 4] = v129;
  *(v74 + 16) = v75;
  if (*(a1 + 16) && (v79 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutIsIndoors), (v80 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v79, v147), (swift_dynamicCast() & 1) != 0))
  {
    v81 = v144;
  }

  else
  {
    v81 = 0;
  }

  v85 = v137;
  swift_beginAccess();
  v86 = *(v85 + 16);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  *(v85 + 16) = v86;
  if ((v87 & 1) == 0)
  {
    v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86);
    *(v137 + 16) = v86;
  }

  v88 = v135;
  v90 = *(v86 + 2);
  v89 = *(v86 + 3);
  if (v90 >= v89 >> 1)
  {
    v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1, v86);
  }

  *(v86 + 2) = v90 + 1;
  *(v86 + v90 + 32) = v81;
  *(v137 + 16) = v86;
  v91 = [v136 workoutActivityType];
  v92 = (v88 - 11) < 0xFFFFFFF7;

  v93 = v132;

  specialized MOSuggestionAssetSystemIconImageProvider.getAssetFor(workoutType:size:renderGlyph:isIndoors:completion:)(v91, 5, v92, v81, a9, v44, v93);

  Date.timeIntervalSinceReferenceDate.getter();
  v95 = v94;
  Date.timeIntervalSinceReferenceDate.getter();
  v97 = v95 - v96;
  swift_beginAccess();
  *(a12 + 16) = v97 + *(a12 + 16);
  if (*(a1 + 16))
  {
    v98 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurntQuantity);
    if (v99)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v98, v147);
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantity, HKQuantity_ptr);
      if (swift_dynamicCast())
      {
        v100 = v143[0];
        swift_beginAccess();
        v101 = *(a13 + 16);
        if (v101)
        {
          v102 = v101;
          [*&v100 doubleValueForUnit:v102];
          v104 = v103;

          swift_beginAccess();
          *(a14 + 16) = v104 + *(a14 + 16);
        }

        else
        {
        }
      }
    }
  }

  v105 = v141;
  if (!*(a1 + 16) || (v106 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutAverageHeartRate), (v107 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v106, v147), (swift_dynamicCast() & 1) == 0))
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    __swift_project_value_buffer(v118, static MOAngelLogger.assets);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "workout group avg heart rate ignored from average", v121, 2u);
    }

    v122 = *(v105 + 8);
    v123 = v140;
    v122(v138, v140);
    v33 = (v122)(v139, v123);
    goto LABEL_12;
  }

  v108 = v143[0];
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  __swift_project_value_buffer(v109, static MOAngelLogger.assets);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 134217984;
    *(v112 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v110, v111, "workout group avg heart rate += %f", v112, 0xCu);
  }

  v113 = *(v141 + 8);
  v114 = v140;
  v113(v138, v140);
  v113(v139, v114);
  swift_beginAccess();
  *(a15 + 16) = v108 + *(a15 + 16);
  v33 = swift_beginAccess();
  v115 = *(a16 + 16);
  v116 = __OFADD__(v115, 1);
  v117 = v115 + 1;
  if (!v116)
  {
    *(a16 + 16) = v117;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #5 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v5 = a1;
    swift_beginAccess();
    v6 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    a1 = swift_endAccess();
  }

  return a3(a1, a2);
}

void closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(id))
{
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    return;
  }

  *(a1 + 16) = v20;
  if (v20 == a2)
  {
    swift_beginAccess();
    v21 = *(a3 + 16);
    if (v21)
    {
      swift_beginAccess();
      v22 = *(a4 + 16);
      swift_beginAccess();
      v23 = *(a5 + 16);
      if ((a6 - 2) >= 9u)
      {
        if ((a6 & 1) != 0 || !v22)
        {
          goto LABEL_10;
        }
      }

      else if (!v22)
      {
LABEL_10:
        swift_beginAccess();
        v24 = *(a7 + 16);
LABEL_11:
        v25 = objc_allocWithZone(MOSuggestionAssetWorkout);
        v26 = v23;

        v27 = v22;
        v28 = [v25 init:0 route:v27 renderedRouteMap:v26 icon:v24];

        v29 = MOSuggestionAssetsTypeWorkout;
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetWorkout, MOSuggestionAssetWorkout_ptr);
        v30 = [objc_allocWithZone(MOSuggestionAsset) init:v28 type:v29 contentClassType:swift_getObjCClassFromMetadata()];
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v30 addMetadata:isa];

        v32 = *(*a8 + 288);
        v32();
        v33 = String._bridgeToObjectiveC()();

        [v30 addIdentifier:v33];

        if (a6 - 2 >= 6 && a6 - 9 > 1)
        {
          static MOSuggestionAssetCacheManager.wrapWorkoutAssetInURLIfNecessary(asset:cacheType:completion:)();
        }

        else
        {
          swift_beginAccess();
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v35 = *(Strong + 16);

            (v32)(v36);
            v37 = String._bridgeToObjectiveC()();

            swift_beginAccess();
            if (*(a4 + 16))
            {
              v38 = 3;
            }

            else
            {
              v38 = 1;
            }

            [v35 setObject:v30 forKey:v37 cost:{v38, a10}];
          }

          v39 = v30;
          a10(v30);
        }

        return;
      }

      v24 = 0;
      goto LABEL_11;
    }
  }
}

void closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id))
{
  if (a1)
  {
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a4;
    v11 = a1;

    HKWorkout.packedSuggestionAssetMetadata(completion:)(partial apply for closure #1 in closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:), v10);
  }

  else
  {
    v14 = (*(*a5 + 312))(0, a2, a3, a4);
    v16 = v15;
    type metadata accessor for MOSuggestionGenericFallBackInfo();
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    *(v17 + 16) = 0;
    swift_beginAccess();
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    MOSuggestionGenericFallBackInfo.description()();
    v18 = *(*a5 + 120);

    v20 = v18(v19);
    v21 = [objc_allocWithZone(MOSuggestionAsset) init:v17 type:v20 contentClassType:swift_getObjCClassFromMetadata()];

    v22 = v21;
    a6(v21);
  }
}

uint64_t closure #1 in closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  *(a2 + 16) = a1;

  return a3(v6);
}

void closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, unsigned int a7, uint64_t a8, double a9)
{
  v85 = a2;
  v86 = a3;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v80 - v24;
  if (!a1)
  {
    goto LABEL_26;
  }

  v83 = a8;
  v84 = a7;
  v87 = a4;
  v26 = a1;
  v27 = [v26 locationReadings];
  v88 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CLLocation, CLLocation_ptr);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29 < 2)
  {

    a4 = v87;
LABEL_26:
    (a4)(v23);
    return;
  }

  v30 = [v26 locationReadings];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_30:

    goto LABEL_34;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_30;
  }

LABEL_7:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
    v82 = v32;

    v33 = [v26 locationReadings];
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v34 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
LABEL_12:
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (v36)
        {
          __break(1u);
        }

        else
        {
          v80 = a6;
          v81 = a5;
          if ((v34 & 0xC000000000000001) == 0)
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_45;
            }

            if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v38 = *(v34 + 8 * v37 + 32);
LABEL_17:
            a6 = v38;

            v39 = [a6 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            Date.timeIntervalSinceReferenceDate.getter();
            v41 = v40;
            v42 = *(v19 + 8);
            v42(v25, v18);
            v43 = v82;
            v44 = [v82 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            Date.timeIntervalSinceReferenceDate.getter();
            v46 = v45;
            v42(v22, v18);
            v47 = v41 - v46;
            Date.timeIntervalSinceReferenceDate.getter();
            v49 = v48;
            Date.timeIntervalSinceReferenceDate.getter();
            v51 = v49 - v50;
            [v43 coordinate];
            v53 = v52;
            [a6 coordinate];
            v55 = (v53 - v54) * (v53 - v54);
            [v43 coordinate];
            v57 = v56;
            [a6 coordinate];
            v10 = v55 + (v57 - v58) * (v57 - v58);
            v9 = v47 / v51;
            if (one-time initialization token for assets == -1)
            {
LABEL_18:
              v59 = fabs(v9);
              v60 = sqrt(v10);
              v61 = type metadata accessor for Logger();
              __swift_project_value_buffer(v61, static MOAngelLogger.assets);
              v62 = Logger.logObject.getter();
              v63 = static os_log_type_t.default.getter();
              v64 = os_log_type_enabled(v62, v63);
              a5 = v81;
              if (v64)
              {
                v65 = swift_slowAlloc();
                *v65 = 134218496;
                *(v65 + 4) = v59;
                *(v65 + 12) = 2048;
                *(v65 + 14) = v60;
                *(v65 + 22) = 2048;
                *(v65 + 24) = 0x3F7DAE6076B981DBLL;
                _os_log_impl(&_mh_execute_header, v62, v63, "[MOSuggestionAssetCacheManager] routeDurationPercentage=%f, routeDistance=%f, threshold=%f", v65, 0x20u);
              }

              if (v59 < a9 && v60 < 0.00724637681)
              {
                v66 = Logger.logObject.getter();
                v67 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  *v68 = 134217984;
                  *(v68 + 4) = v59;
                  _os_log_impl(&_mh_execute_header, v66, v67, "[MOSuggestionAssetCacheManager] Duration of route is less than threshold, falling back to icon, routeDurationPercentage=%f", v68, 0xCu);
                }

                v87();
                return;
              }

              a6 = v80;
LABEL_34:
              swift_beginAccess();
              v69 = a6[2];
              a6[2] = a1;
              v22 = v26;

              v30 = v84;
              if ((v84 - 2) > 8u)
              {
                v87();

                return;
              }

              if (one-time initialization token for assets == -1)
              {
                goto LABEL_36;
              }

              goto LABEL_41;
            }

LABEL_45:
            swift_once();
            goto LABEL_18;
          }
        }

        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_17;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_34;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v31 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_41:
  swift_once();
LABEL_36:
  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static MOAngelLogger.assets);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v83;
  if (v73)
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "[MOSuggestionAssetCacheManager] Sheet only, rendering route", v75, 2u);
  }

  type metadata accessor for MOSuggestionAssetMapSnapshotProvider();
  swift_allocObject();
  MOSuggestionAssetMapSnapshotProvider.init(targetQueue:)(0);
  v76 = [v22 locationReadings];
  v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v78 = swift_allocObject();
  v79 = v87;
  v78[2] = v74;
  v78[3] = v79;
  v78[4] = a5;

  MOSuggestionAssetMapSnapshotProvider.getRouteMapFor(_:size:completion:)(v77, v30, partial apply for closure #1 in closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:), v78);
}

uint64_t closure #1 in closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = a1;
    v7 = a1;
  }

  return a3();
}

void specialized closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheMediaArtworkFromProvider(_:cacheType:completion:)(uint64_t a1, uint64_t a2, void (**a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, void (*a11)(void), uint64_t a12, unsigned __int8 a13)
{
  v109 = a8;
  v112 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = __chkstk_darwin(v18 - 8);
  v111 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v110 = v99 - v21;
  if (!a1)
  {
    a11(0);
    return;
  }

  v106 = a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v23 = (*(*Strong + 216))();

  if (!*(v23 + 16))
  {

    goto LABEL_11;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v112, a4);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (!v26)
  {
LABEL_55:
    v113 = 0;
    goto LABEL_56;
  }

  v27 = (*(*v26 + 216))();

  if (!*(v27 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v112, a4), (v29 & 1) == 0))
  {
LABEL_54:

    goto LABEL_55;
  }

  a6 = *(*(v27 + 56) + 32 * v28 + 16);

LABEL_12:
  v113 = 0;
  if (a6)
  {
    v30 = objc_allocWithZone(NSScanner);
    v31 = String._bridgeToObjectiveC()();

    v32 = [v30 initWithString:v31];

    [v32 scanHexLongLong:&v113];
    v33 = BYTE2(v113) / 255.0;
    v34 = BYTE1(v113) / 255.0;
    v35 = v113 / 255.0;
    v36 = [objc_allocWithZone(UIColor) initWithRed:v33 green:v34 blue:v35 alpha:1.0];
    swift_beginAccess();
    v37 = swift_weakLoadStrong();
    v105 = a12;
    v108 = v36;
    if (v37)
    {
      v38 = (*(*v37 + 216))();

      if (*(v38 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v112, a4);
        v40 = v39;

        if (v40)
        {
          swift_beginAccess();
          v41 = swift_weakLoadStrong();
          if (v41)
          {
            v42 = (*(*v41 + 216))();

            if (*(v42 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v112, a4), (v44 & 1) != 0))
            {
              v45 = 0;
              v46 = *(*(v42 + 56) + 32 * v43);
            }

            else
            {
              v46 = 0;
              v45 = 1;
            }
          }

          else
          {
            v46 = 0;
            v45 = 1;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v45 = 0;
    if (v35 * 0.0722 + v33 * 0.2126 + v34 * 0.7152 <= 0.1)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

LABEL_28:
    v103 = a4;
    v104 = a11;
    v99[1] = a2;
    swift_beginAccess();
    v102 = v46;
    *(a7 + 16) = v46;
    *(a7 + 24) = v45;
    v47 = type metadata accessor for URL();
    v107 = *(v47 - 8);
    v48 = *(v107 + 56);
    v48(v110, 1, 1, v47);
    v48(v111, 1, 1, v47);
    if ((v45 & 1) == 0)
    {
      v49 = *(v109 + 56);
      v108 = v108;
      v101 = String._bridgeToObjectiveC()();
      v50 = String._bridgeToObjectiveC()();
      v51 = String._bridgeToObjectiveC()();
      if (v49)
      {
        v49 = String._bridgeToObjectiveC()();
      }

      v52 = v110;
      v53 = v107;
      v110 = a9;
      v54 = *(v107 + 48);
      if (v54(v52, 1, v47) == 1)
      {
        v56 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v55);
        v56 = v57;
        (*(v53 + 8))(v52, v47);
      }

      v58 = v111;
      v59 = v54(v111, 1, v47);
      v100 = a10;
      if (v59 == 1)
      {
        v61 = 0;
      }

      else
      {
        v62 = v58;
        URL._bridgeToObjectiveC()(v60);
        v61 = v63;
        (*(v107 + 8))(v62, v47);
      }

      v64 = *(v109 + 80);
      v65 = objc_allocWithZone(MOSuggestionAssetMediaItem);
      v66 = v108;
      v67 = v101;
      v68 = [v65 initTitle:v101 albumTitle:v50 artistName:v51 albumArt:v106 trackIdentifier:v49 previewURL:v56 mediaType:v64 imageURL:v61 bgColor:v108 bgColorVariant:v102];

      v69 = MOSuggestionAssetsTypeMediaCoverArt;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetMediaItem, MOSuggestionAssetMediaItem_ptr);
      v70 = objc_allocWithZone(MOSuggestionAsset);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v111 = v68;
      v72 = [v70 init:v68 type:v69 contentClassType:ObjCClassFromMetadata];
      v73 = (*v110 + 288);
      v74 = *v73;
      (*v73)();
      v75 = String._bridgeToObjectiveC()();

      [v72 addIdentifier:v75];

      v76 = objc_allocWithZone(LSApplicationRecord);
      v77 = v103;

      v78 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v112, v77, 1);
      v79 = v78;
      v80 = v100;
      if (v78)
      {
        v81 = [v78 localizedName];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;
      }

      else
      {
        v82 = 0;
        v84 = 0;
      }

      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v80 + 16))
      {
        v112 = v73;
        v87 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v86);
        v89 = v88;

        if (v89 & 1) != 0 && (v114 = *(*(v80 + 56) + 8 * v87), swift_unknownObjectRetain(), (swift_dynamicCast()))
        {
          if (!v84)
          {
            v104(0);
LABEL_50:

            return;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, _ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002A4A00;
          v91 = MOSuggestionAssetMetadataKeyMediaStartDate;
          v114 = MOSuggestionAssetMetadataKeyMediaStartDate;
          type metadata accessor for MOSuggestionAssetMetadataKey(0);
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
          v92 = v91;
          AnyHashable.init<A>(_:)();
          *(inited + 96) = type metadata accessor for Date();
          __swift_allocate_boxed_opaque_existential_1((inited + 72));
          Date.init(timeIntervalSinceReferenceDate:)();
          v114 = MOSuggestionAssetMetadataKeyMediaThirdPartyAppeName;
          v93 = MOSuggestionAssetMetadataKeyMediaThirdPartyAppeName;
          AnyHashable.init<A>(_:)();
          *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          *(inited + 144) = v82;
          *(inited + 152) = v84;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
          swift_arrayDestroy();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v72 addMetadata:isa];
        }

        else
        {
        }
      }

      else
      {
      }

      swift_beginAccess();
      v95 = swift_weakLoadStrong();
      if (v95)
      {
        v96 = *(v95 + 16);

        (v74)(v97);
        v98 = String._bridgeToObjectiveC()();

        [v96 setObject:v72 forKey:v98 cost:1];
      }

      specialized static MOSuggestionAssetCacheManager.wrapMediaItemAssetInURLIfNecessary(asset:cacheType:completion:)(v72, a13, v104, v105);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_56:
  __break(1u);
}

void closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheMediaArtworkFromProvider(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, void (*a5)(id), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v56 = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v18 - 8);
  v20 = &v53 - v19;
  if (a1)
  {
    v21 = *(*a2 + 288);
    v22 = a1;
    v21();
    v23 = String._bridgeToObjectiveC()();

    [v22 addIdentifier:v23];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a3 + 16))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
      v28 = v27;

      if (v28)
      {
        v58 = *(*(a3 + 56) + 8 * v26);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, _ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002A48B0;
          v30 = MOSuggestionAssetMetadataKeyMediaStartDate;
          v58 = MOSuggestionAssetMetadataKeyMediaStartDate;
          type metadata accessor for MOSuggestionAssetMetadataKey(0);
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
          v31 = v30;
          AnyHashable.init<A>(_:)();
          *(inited + 96) = type metadata accessor for Date();
          __swift_allocate_boxed_opaque_existential_1((inited + 72));
          Date.init(timeIntervalSinceReferenceDate:)();
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v22 addMetadata:isa];
        }
      }
    }

    else
    {
    }

    specialized static MOSuggestionAssetCacheManager.wrapMediaItemAssetInURLIfNecessary(asset:cacheType:completion:)(v22, a4, v56, a6);
  }

  else
  {
    v55 = a6;
    v53 = a12;
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v20, 1, 1, v33);
    swift_beginAccess();
    v54 = *(a13 + 16);
    v35 = String._bridgeToObjectiveC()();
    v36 = String._bridgeToObjectiveC()();
    v37 = String._bridgeToObjectiveC()();
    v39 = 0;
    if ((*(v34 + 48))(v20, 1, v33) != 1)
    {
      URL._bridgeToObjectiveC()(v38);
      v39 = v40;
      (*(v34 + 8))(v20, v33);
    }

    v41 = objc_allocWithZone(MOSuggestionAssetMediaItem);
    v42 = [v41 initTitle:v35 albumTitle:v36 artistName:v37 albumArt:0 trackIdentifier:0 previewURL:v39 mediaType:v54];

    v43 = MOSuggestionAssetsTypeMediaCoverArt;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetMediaItem, MOSuggestionAssetMediaItem_ptr);
    v44 = [objc_allocWithZone(MOSuggestionAsset) init:v42 type:v43 contentClassType:swift_getObjCClassFromMetadata()];
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static MOAngelLogger.assets);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = v49;
      *v48 = 136315138;
      v50 = (*(*a2 + 312))();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v57);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "[MOSuggestionAssetCacheManager] Using fallback media image for: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    v22 = v44;
    v56(v44);
  }
}

void closure #2 in MOSuggestionAssetCacheManager.getPredefinedAppBgColorDict(predefinedColors:colorFallbackValue:)(UIImage a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, dispatch_group_t group)
{
  if (!a1.super.isa)
  {
    goto LABEL_44;
  }

  v15 = hashImage(image:)(a1);
  v16 = *(a2 + 16);
  if (v16 < 4)
  {
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

  object = v15._object;
  v57 = a7;
  v55 = a6;
  v56 = a8;
  v58 = *(a2 + 16);
  v17 = ((v16 - 1) * 0x5555555555555556) >> 64;
  v18 = v17 + (v17 >> 63) - 1;
  lazy protocol witness table accessor for type String and conformance String();
  a5 = 0;
  v19 = 0;
  v59 = a2 + 32;
  a7 = v18;
  do
  {
    v20 = v19;
    countAndFlagsBits = v15._countAndFlagsBits;
    v66 = object;
    v63 = a3;
    v64 = a4;
    v21 = object;
    object = v15._countAndFlagsBits;
    if (StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      countAndFlagsBits = v15._countAndFlagsBits;
      v66 = v21;
      v22 = 3 * a5;
      if ((a5 * 3) >> 64 != (3 * a5) >> 63)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v23 = __OFADD__(v22, 3);
      v24 = v22 + 3;
      if (v23)
      {
        goto LABEL_52;
      }

      if (v24 >= v58)
      {
        goto LABEL_53;
      }

      v25 = (v59 + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v63 = v27;
      v64 = v26;
      v28 = StringProtocol.caseInsensitiveCompare<A>(_:)();
      v19 = (v28 == 0) | v20;
      if (!v28)
      {
        a7 = a5;
      }
    }

    else
    {
      v19 = 1;
      a7 = a5;
    }

    object = v15._object;
    if (v18 == a5)
    {
      goto LABEL_16;
    }

    v23 = __OFADD__(a5++, 1);
  }

  while (!v23);
  __break(1u);
LABEL_16:
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_63;
  }

  v29 = 3 * a7;
  a5 = v57;
  if ((a7 * 3) >> 64 != (3 * a7) >> 63)
  {
    goto LABEL_55;
  }

  v30 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    goto LABEL_56;
  }

  if (v30 >= v58)
  {
    goto LABEL_57;
  }

  a4 = v15._countAndFlagsBits;
  v31 = (v59 + 16 * v30);
  v32 = *v31;
  v33 = v31[1];
  if (*v31 == 0x746867696CLL && v33 == 0xE500000000000000)
  {
    v34 = 1;
    a7 = v56;
  }

  else
  {
    a7 = v56;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v34 = 1;
    }

    else if (v32 == 1802658148 && v33 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v34 = 2;
    }

    else if (v32 == 0x6B72614479726576 && v33 == 0xE800000000000000)
    {
      v34 = 3;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }
  }

  v35 = v29 + 2;
  if (__OFADD__(v29, 2))
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
LABEL_33:
    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static MOAngelLogger.assets);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a7, &v63);
      *(v44 + 12) = 2080;
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, object, &v63);

      *(v44 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v42, v43, "[MOSuggestionAssetCacheManager] app icon background color hash value unchanged, bundleId, %s, hashValue, %s", v44, 0x16u);
      swift_arrayDestroy();

LABEL_41:

      goto LABEL_43;
    }

LABEL_42:

LABEL_43:

LABEL_44:
    dispatch_group_leave(group);
    return;
  }

  if (v35 >= v58)
  {
    goto LABEL_59;
  }

  v36 = (v59 + 16 * v35);
  v37 = v19;
  v38 = *v36;
  v39 = v36[1];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v55 + 16);
  *(v55 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v38, v39, v37 & 1, v57, a7, isUniquelyReferenced_nonNull_native);

  *(v55 + 16) = v62;
  swift_endAccess();
  if (v37)
  {
    if (one-time initialization token for assets != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_33;
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static MOAngelLogger.assets);

  v42 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v42, v47))
  {
    goto LABEL_42;
  }

  v48 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  *v48 = 136315650;
  *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, a7, &v63);
  *(v48 + 12) = 2080;
  v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15._countAndFlagsBits, v15._object, &v63);

  *(v48 + 14) = v49;
  *(v48 + 22) = 2080;
  v50 = v29 + 3;
  if (__OFADD__(v29, 3))
  {
    __break(1u);
  }

  else if (v50 < v58)
  {
    v51 = (v59 + 16 * v50);
    v52 = *v51;
    v53 = v51[1];

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v63);

    *(v48 + 24) = v54;
    _os_log_impl(&_mh_execute_header, v42, v47, "[MOSuggestionAssetCacheManager] app icon background color hash value changed, bundleId, %s, new hashValue, %s, old hashValue, %s", v48, 0x20u);
    swift_arrayDestroy();

    goto LABEL_41;
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

Swift::String __swiftcall hashImage(image:)(UIImage image)
{
  v1 = [(objc_class *)image.super.isa CGImage];
  if (v1)
  {
    v2 = v1;
    v3 = CGImageGetDataProvider(v1);

    if (v3)
    {
      v4 = CGDataProviderCopyData(v3);

      if (v4)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          static Data._conditionallyBridgeFromObjectiveC(_:result:)();
        }
      }
    }

    v1 = 0;
  }

  v5 = 0xE000000000000000;
  result._object = v5;
  result._countAndFlagsBits = v1;
  return result;
}

void closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheAppIconsFromProvider(_:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a1)
  {
    v6 = *(*a2 + 288);
    v7 = a1;
    v6();
    v8 = String._bridgeToObjectiveC()();

    [v7 addIdentifier:v8];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = *(Strong + 16);

      (v6)(v11);
      v12 = String._bridgeToObjectiveC()();

      [v10 setObject:v7 forKey:v12 cost:1];
    }

    v13 = v7;
    a4(a1);
  }

  else
  {
    (a4)(0, a2, a3);
  }
}

void specialized closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheGenericMapSnapshots(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (a1)
  {
    v7 = *(*a2 + 288);
    v8 = a1;
    v7();
    v9 = String._bridgeToObjectiveC()();

    [v8 addIdentifier:v9];

    specialized _dictionaryUpCast<A, B, C, D>(_:)(a3);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 addMetadata:isa];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + 16);

      (v7)(v13);
      v14 = String._bridgeToObjectiveC()();

      [v12 setObject:v8 forKey:v14 cost:1];
    }

    v15 = v8;
    a5(a1);
  }

  else
  {
    (a5)(0, a2, a3, a4);
  }
}

void closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, void (*a7)(id), uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_beginAccess();
  v141 = a1;
  v15 = *(a1 + 16);
  if (v15 >> 62)
  {
    goto LABEL_91;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v17 = a5;
  v146 = a5 >> 62;
  v157 = a6;
  if (v16)
  {
    v18 = v15 & 0xC000000000000001;

    swift_beginAccess();
    swift_beginAccess();
    a6 = 0;
    v149 = v15 + 32;
    v150 = v15 & 0xFFFFFFFFFFFFFF8;
    v148 = v15 & 0xC000000000000001;
    v152 = v16;
    while (1)
    {
      if (v18)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = __OFADD__(a6++, 1);
        if (v20)
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (a6 >= *(v150 + 16))
        {
          goto LABEL_89;
        }

        v19 = *(v149 + 8 * a6);

        v20 = __OFADD__(a6++, 1);
        if (v20)
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v16 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v21 = v16;
      v15 = *(a2 + 16);
      v22 = *(*v19 + 336);

      v156 = v22;
      v24 = (v22)(v23);
      v26 = v25;
      if (*(v15 + 16))
      {
        v27 = v24;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v28 = Hasher._finalize()();
        v29 = -1 << *(v15 + 32);
        v30 = v28 & ~v29;
        if ((*(v15 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          v31 = ~v29;
          while (1)
          {
            v32 = (*(v15 + 48) + 16 * v30);
            v33 = *v32 == v27 && v32[1] == v26;
            if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v30 = (v30 + 1) & v31;
            if (((*(v15 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v16 = v21;
          goto LABEL_7;
        }
      }

LABEL_23:

      v35 = (*v19 + 288);
      v15 = *v35;
      v36 = (*v35)(v34);
      v16 = v21;
      if (!v36)
      {
        goto LABEL_6;
      }

      v37 = v36;
      v38 = [v36 name];
      if (!v38)
      {
        swift_unknownObjectRelease();
LABEL_6:

        goto LABEL_7;
      }

      v154 = v15;
      v39 = v38;
      v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v15 = *(a3 + 16);

      v42 = v37;
      v43 = [v37 name];
      if (!v43)
      {
        __break(1u);
        return;
      }

      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (*(v15 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v48 = Hasher._finalize()();
        v49 = -1 << *(v15 + 32);
        v50 = v48 & ~v49;
        if ((*(v15 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          v51 = ~v49;
          while (1)
          {
            v52 = (*(v15 + 48) + 16 * v50);
            v53 = *v52 == v45 && v52[1] == v47;
            if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v50 = (v50 + 1) & v51;
            if (((*(v15 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          swift_unknownObjectRelease();

          v16 = v152;
          v18 = v148;
          goto LABEL_7;
        }
      }

LABEL_35:

      v54 = v42;
      v16 = v152;
      if ((specialized static MOSuggestionAssetCacheManager.shouldDropUninterestingPOI(_:mapItem:location:)(a4, v42) & 1) == 0)
      {
        break;
      }

      if (v146)
      {
        if (_CocoaArrayWrapper.endIndex.getter() <= 2)
        {
          break;
        }
      }

      else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 2)
      {
        break;
      }

      v55 = 1;
      v56 = 1;
LABEL_48:
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static MOAngelLogger.assets);
      swift_retain_n();

      swift_unknownObjectRetain();
      v62 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v62, v15))
      {
        v145 = v55;
        v63 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v161[0] = v144;
        *v63 = 134219266;
        v64 = String.hashValue.getter();

        *(v63 + 4) = v64;

        *(v63 + 12) = 2080;
        v65 = [v54 _poiCategory];
        v160 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14GEOPOICategoryaSgMd, &_sSo14GEOPOICategoryaSgMR);
        v66 = Optional.debugDescription.getter();
        v68 = v67;

        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v161);

        *(v63 + 14) = v69;
        *(v63 + 22) = 2048;
        v156(v70);
        v71 = String.hashValue.getter();

        *(v63 + 24) = v71;

        *(v63 + 32) = 1024;
        *(v63 + 34) = v56;
        *(v63 + 38) = 1024;
        if ((*(*v19 + 360))(v72) <= 0.9)
        {
        }

        else
        {
          v73 = v154();

          if (v73)
          {
            swift_unknownObjectRelease();
            v74 = 1;
LABEL_57:
            v18 = v148;
            *(v63 + 40) = v74;

            *(v63 + 44) = 1024;
            *(v63 + 46) = v145;
            _os_log_impl(&_mh_execute_header, v62, v15, "[POIClustering] mapItemName=%ld, mapItemPOICategory=%s, poiLocationName=%ld, shouldDropAirportInTrip=%{BOOL}d, shouldUseMarker=%{BOOL}d, shouldDropPOI=%{BOOL}d", v63, 0x32u);
            __swift_destroy_boxed_opaque_existential_0(v144);

            swift_unknownObjectRelease();

            v16 = v152;
            goto LABEL_7;
          }
        }

        v74 = 0;
        goto LABEL_57;
      }

      swift_unknownObjectRelease();

      swift_bridgeObjectRelease_n();

      v18 = v148;
LABEL_7:
      if (a6 == v16)
      {

        a6 = v157;
        v17 = a5;
        goto LABEL_59;
      }
    }

    if ((*(*v19 + 360))() > 0.9 && v154())
    {
      swift_unknownObjectRelease();
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v157 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v157 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57 = swift_endAccess();
      v58 = (v156)(v57);
      v60 = v59;
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(&v160, v58, v60);
      swift_endAccess();

      swift_beginAccess();

      specialized Set._Variant.insert(_:)(&v160, v153, v41);
      swift_endAccess();

      v55 = 0;
      v56 = 0;
    }

    else
    {
      v56 = 0;
      v55 = 1;
    }

    goto LABEL_48;
  }

LABEL_59:
  if (v146)
  {
    v75 = _CocoaArrayWrapper.endIndex.getter();
    if (v75)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v75 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
LABEL_61:
      a6 = a5;
      swift_beginAccess();
      v15 = 0;
      do
      {
        if ((a5 & 0xC000000000000001) != 0)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v20 = __OFADD__(v15++, 1);
          if (v20)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v15 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_90;
          }

          v78 = *(a5 + 32 + 8 * v15);

          v20 = __OFADD__(v15++, 1);
          if (v20)
          {
            goto LABEL_88;
          }
        }

        v79 = *(a2 + 16);
        v80 = *(*v78 + 336);

        v82 = (v80)(v81);
        v84 = v83;
        if (*(v79 + 16) && (v85 = v82, Hasher.init(_seed:)(), String.hash(into:)(), v86 = Hasher._finalize()(), v87 = -1 << *(v79 + 32), v88 = v86 & ~v87, ((*(v79 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) != 0))
        {
          v89 = ~v87;
          while (1)
          {
            v90 = (*(v79 + 48) + 16 * v88);
            v91 = *v90 == v85 && v90[1] == v84;
            if (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v88 = (v88 + 1) & v89;
            if (((*(v79 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          v92 = 0;
          a6 = v157;
        }

        else
        {
LABEL_79:

          a6 = v157;
          swift_beginAccess();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            a6 = v157;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v92 = 1;
        }

        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for Logger();
        __swift_project_value_buffer(v93, static MOAngelLogger.assets);

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v76 = swift_slowAlloc();
          *v76 = 134218240;
          v80();
          v77 = String.hashValue.getter();

          *(v76 + 4) = v77;

          *(v76 + 12) = 1024;
          *(v76 + 14) = v92;
          _os_log_impl(&_mh_execute_header, v94, v95, "[POIClustering] visitLocationName=%ld, shouldAddVisit=%{BOOL}d", v76, 0x12u);
        }

        else
        {
        }
      }

      while (v15 != v75);
    }
  }

  swift_beginAccess();
  v96 = *(a6 + 16);
  if (v96 >> 62)
  {
    goto LABEL_141;
  }

  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_142:
    a7(0);
  }

  else
  {
LABEL_95:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static MOAngelLogger.assets);

    v98 = a6;
    v99 = Logger.logObject.getter();
    LOBYTE(v100) = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 134218496;
      swift_beginAccess();
      v102 = *(v98 + 16);
      if (!(v102 >> 62))
      {
        v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_100;
      }

      goto LABEL_146;
    }

    while (1)
    {
      swift_beginAccess();
      v99 = *(v98 + 16);
      v107 = v99 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v101 = _swiftEmptyArrayStorage;
      if (!v107)
      {
        break;
      }

      v159 = _swiftEmptyArrayStorage;

      v100 = &v159;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v107 & 0x8000000000000000) == 0)
      {
        v108 = 0;
        do
        {
          if ((v99 & 0xC000000000000001) != 0)
          {
            v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v109 = *(v99 + 8 * v108 + 32);
          }

          ++v108;
          (*(*v109 + 536))();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v107 != v108);

        v101 = v159;
        break;
      }

      __break(1u);
LABEL_146:
      v103 = _CocoaArrayWrapper.endIndex.getter();
LABEL_100:
      *(v101 + 4) = v103;

      *(v101 + 12) = 2048;
      swift_beginAccess();
      v104 = *(v141 + 16);
      if (v104 >> 62)
      {
        v105 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v101 + 14) = v105;

      *(v101 + 22) = 2048;
      if (v146)
      {
        v106 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v106 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v101 + 24) = v106;

      _os_log_impl(&_mh_execute_header, v99, v100, "[MOPOIAnnotationView] count %ld, poiCount=%ld, visitCount=%ld", v101, 0x20u);

      v98 = v157;
    }

    swift_beginAccess();
    *(v157 + 16) = v101;

    if (v101 >> 62)
    {
      a6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      a6 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a6)
    {
      v110 = 0;
      v111 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v101 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v112 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (v110 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_140;
          }

          v112 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            if (_CocoaArrayWrapper.endIndex.getter() <= 0)
            {
              goto LABEL_142;
            }

            goto LABEL_95;
          }
        }

        v113 = MOMapLocation.transferrableMetadata.getter();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v111 + 2) + 1, 1, v111);
        }

        v115 = *(v111 + 2);
        v114 = *(v111 + 3);
        if (v115 >= v114 >> 1)
        {
          v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v111);
        }

        *(v111 + 2) = v115 + 1;
        *&v111[v115 + 4] = v113;
        ++v110;
        if (v112 == a6)
        {
          goto LABEL_134;
        }
      }
    }

    v111 = _swiftEmptyArrayStorage;
LABEL_134:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_ypSgtGMd, &_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_ypSgtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A4A00;
    v117 = MOSuggestionAssetMetadataKeyMultiPinMapLocations;
    *(inited + 32) = MOSuggestionAssetMetadataKeyMultiPinMapLocations;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo28MOSuggestionAssetMetadataKeyaypSgGGMd, &_sSaySDySo28MOSuggestionAssetMetadataKeyaypSgGGMR);
    *(inited + 40) = v111;
    v119 = MOSuggestionAssetMetadataKeyMultiPinMapRepresentativeArea;
    *(inited + 64) = v118;
    *(inited + 72) = v119;
    swift_beginAccess();
    v120 = v117;
    v121 = v119;

    countAndFlagsBits = specialized Collection.first.getter(v122);
    object = v124;

    *(inited + 104) = &type metadata for String;
    if (!object)
    {
      v126 = [objc_opt_self() mainBundle];
      v162._object = 0x80000001002BC5F0;
      v127._countAndFlagsBits = 0x206E776F6E6B6E55;
      v127._object = 0xEC00000061657241;
      v128._countAndFlagsBits = 0;
      v128._object = 0xE000000000000000;
      v162._countAndFlagsBits = 0xD000000000000051;
      v129 = NSLocalizedString(_:tableName:bundle:value:comment:)(v127, countAndFlagsBits, v126, v128, v162);
      countAndFlagsBits = v129._countAndFlagsBits;
      object = v129._object;
    }

    *(inited + 80) = countAndFlagsBits;
    *(inited + 88) = object;
    v130 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypSgTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOSuggestionAssetMetadataKeya_ypSgtMd, &_sSo28MOSuggestionAssetMetadataKeya_ypSgtMR);
    swift_arrayDestroy();
    if ((a10 - 2) > 8u)
    {
      v135 = [objc_allocWithZone(NSNull) init];
      v136 = MOSuggestionAssetsTypeMultiPinMap;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
      v137 = [objc_allocWithZone(MOSuggestionAsset) init:v135 type:v136 contentClassType:swift_getObjCClassFromMetadata()];

      (*(*a13 + 288))();
      v138 = String._bridgeToObjectiveC()();

      [v137 addIdentifier:v138];

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v130);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v137 addMetadata:isa];

      v140 = v137;
      a7(v137);
    }

    else
    {
      swift_beginAccess();
      v131 = *(v157 + 16);
      v132 = swift_allocObject();
      swift_weakInit();
      v133 = swift_allocObject();
      v133[2] = a13;
      v133[3] = v130;
      v133[4] = v132;
      v133[5] = a7;
      v133[6] = a8;
      v134 = *(*a11 + 184);

      v134(v131, a10, partial apply for closure #3 in closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:), v133);
    }
  }
}

void closure #3 in closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (a1)
  {
    v9 = *(*a2 + 288);
    v10 = a1;
    v9();
    v11 = String._bridgeToObjectiveC()();

    [v10 addIdentifier:v11];

    specialized _dictionaryUpCast<A, B, C, D>(_:)(a3);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 addMetadata:isa];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = *(Strong + 16);

      (v9)(v15);
      v16 = String._bridgeToObjectiveC()();

      [v14 setObject:v10 forKey:v16 cost:10];
    }

    v17 = v10;
    a5(a1);
  }

  else
  {
    v18 = (*(*a2 + 312))(0, a2, a3, a4);
    v20 = v19;
    type metadata accessor for MOSuggestionGenericFallBackInfo();
    v21 = swift_allocObject();
    *(v21 + 24) = 0;
    *(v21 + 16) = 0;
    swift_beginAccess();
    *(v21 + 16) = v18;
    *(v21 + 24) = v20;
    MOSuggestionGenericFallBackInfo.description()();
    v22 = *(*a2 + 120);

    v24 = v22(v23);
    v25 = [objc_allocWithZone(MOSuggestionAsset) init:v21 type:v24 contentClassType:swift_getObjCClassFromMetadata()];

    v17 = v25;
    a5(v25);
  }
}

double closure #3 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for defaultQueue != -1)
  {
    swift_once();
  }

  v14[1] = static MOSuggestionAssetCacheManager.defaultQueue;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_221;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);

  return result;
}

uint64_t closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t (*a11)(void))
{
  v129 = a8;
  v130 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgSgMd, &_s10Foundation4DateVSgSgMR);
  __chkstk_darwin(v17 - 8);
  v19 = &v119 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v127 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v132 = &v119 - v24;
  swift_beginAccess();
  v25 = *(a2 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
    goto LABEL_49;
  }

  v128 = v20;
  v28 = a10;
  *(a2 + 16) = v27;
  if (a1)
  {
    v125 = a10;
    v126 = a2;
    v131 = a1;
    swift_unknownObjectRetain();
    v29 = [a4 name];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v31;
    v124 = v30;

    v32 = [a4 name];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    swift_beginAccess();
    v36 = *(a5 + 16);
    if (*(v36 + 16))
    {
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v35);
      v39 = v38;

      v40 = 0;
      if (v39)
      {
        v40 = *(*(v36 + 56) + 8 * v37);
      }
    }

    else
    {

      v40 = 0;
    }

    swift_endAccess();
    v41 = [a4 name];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    swift_beginAccess();
    v45 = *(a6 + 16);
    if (*(v45 + 16))
    {
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v44);
      v48 = v47;

      if (v48)
      {
        v49 = (*(v45 + 56) + 16 * v46);
        v50 = *v49;
        v121 = v49[1];
        v122 = v50;

        goto LABEL_12;
      }
    }

    else
    {
    }

    v121 = 0;
    v122 = 0;
LABEL_12:
    v51 = v131;
    swift_endAccess();
    v52 = [a4 name];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    swift_beginAccess();
    v56 = *(a7 + 16);
    if (*(v56 + 16))
    {
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v55);
      v59 = v58;

      if (v59)
      {
        v60 = (*(v56 + 56) + 16 * v57);
        v61 = *v60;
        v62 = v60[1];
        swift_endAccess();
        if (v62)
        {
          v119 = v61;
          v120 = v62;

          goto LABEL_19;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
    }

    v119 = 0;
    v120 = 0;
LABEL_19:
    v63 = [a4 name];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = v129;
    swift_beginAccess();
    v68 = *(v67 + 16);
    if (*(v68 + 16))
    {
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v66);
      v71 = v70;

      if (v71)
      {
        outlined init with copy of Date?(*(v68 + 56) + *(v21 + 72) * v69, v19);
        v72 = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v72 = 1;
LABEL_24:
    v73 = v128;
    (*(v21 + 56))(v19, v72, 1, v128);
    swift_endAccess();
    if ((*(v21 + 48))(v19, 1, v73) == 1)
    {
      v74 = &_s10Foundation4DateVSgSgMd;
      v75 = &_s10Foundation4DateVSgSgMR;
      v76 = v19;
    }

    else
    {
      v77 = v127;
      outlined init with take of Date?(v19, v127);
      v78 = type metadata accessor for Date();
      v79 = *(v78 - 8);
      if ((*(v79 + 48))(v77, 1, v78) != 1)
      {
        v81 = v132;
        (*(v79 + 32))(v132, v77, v78);
        (*(v79 + 56))(v81, 0, 1, v78);
        goto LABEL_30;
      }

      v74 = &_s10Foundation4DateVSgMd;
      v75 = &_s10Foundation4DateVSgMR;
      v76 = v77;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v76, v74, v75);
    v80 = type metadata accessor for Date();
    (*(*(v80 - 8) + 56))(v132, 1, 1, v80);
LABEL_30:
    v82 = [a4 name];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    swift_beginAccess();
    v86 = *(a9 + 16);
    if (*(v86 + 16))
    {
      v87 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v85);
      v89 = v88;

      v90 = 0;
      if (v89)
      {
        v90 = *(*(v86 + 56) + 8 * v87);
      }
    }

    else
    {

      v90 = 0;
    }

    swift_endAccess();
    [swift_unknownObjectRetain() coordinate];
    v92 = v91;
    [v51 coordinate];
    v94 = v93;
    type metadata accessor for MOMapLocation(0);
    v95 = swift_allocObject();
    v96 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
    v129 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
    v97 = type metadata accessor for Date();
    v98 = *(*(v97 - 8) + 56);
    v98(v95 + v96, 1, 1, v97);
    v98(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, 1, 1, v97);
    v99 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
    *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem) = 0;
    v100 = v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
    *v100 = 0;
    *(v100 + 8) = 1;
    v101 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
    *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel) = 0;
    v102 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
    *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork) = 0;
    *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType) = -1;
    v103 = (v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
    *v103 = 0;
    v103[1] = 0;
    v104 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
    *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty) = 0;
    v128 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
    *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI) = 0;
    v105 = (v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
    *v105 = 0;
    v105[1] = 0xE000000000000000;
    *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude) = v92;
    *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude) = v94;
    v106 = (v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
    *v106 = 0;
    v106[1] = 0xE000000000000000;
    swift_beginAccess();
    *v100 = 0;
    *(v100 + 8) = 1;
    swift_beginAccess();
    *(v95 + v99) = 0;
    swift_beginAccess();
    *(v95 + v101) = v40;
    v107 = v131;
    swift_beginAccess();
    *(v95 + v102) = 0;
    swift_beginAccess();
    *v103 = 0;
    v103[1] = 0;
    swift_beginAccess();
    *(v95 + v104) = v90;
    v108 = v128;
    swift_beginAccess();
    *(v95 + v108) = 0;
    swift_beginAccess();
    *v105 = 0;
    v105[1] = 0xE000000000000000;

    *(v95 + v99) = v107;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_beginAccess();
    v109 = v123;
    *v106 = v124;
    v106[1] = v109;

    v110 = v121;
    *v103 = v122;
    v103[1] = v110;

    v111 = v129;
    swift_beginAccess();
    outlined assign with copy of Date?(v132, v95 + v111);
    swift_endAccess();

    v112 = v120;
    if (v120)
    {
      *v105 = v119;
      v105[1] = v112;
    }

    v113 = v130;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    __swift_project_value_buffer(v114, static MOAngelLogger.assets);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 134218240;
      *(v117 + 4) = v40;
      *(v117 + 12) = 2048;
      *(v117 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v115, v116, "[MOMapLocation] confidence: %f, unc=%f", v117, 0x16u);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    a2 = v126;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v132, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v113 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v113 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_unknownObjectRelease();
    v28 = v125;
  }

  swift_beginAccess();
  a5 = *(a2 + 16);
  if (!(v28 >> 62))
  {
    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a5 != result)
    {
      return result;
    }

    return a11();
  }

LABEL_49:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (a5 != result)
  {
    return result;
  }

  return a11();
}

void closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheLinkPreviews(_:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), double a5)
{
  if (a1)
  {
    v6 = *(*a2 + 288);
    v7 = a1;
    v6();
    v8 = String._bridgeToObjectiveC()();

    [v7 addIdentifier:v8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A48B0;
    v10 = MOSuggestionAssetMetadataKeyLinkPreviewGeneratedDate;
    *(inited + 32) = MOSuggestionAssetMetadataKeyLinkPreviewGeneratedDate;
    *(inited + 64) = type metadata accessor for Date();
    __swift_allocate_boxed_opaque_existential_1((inited + 40));
    v11 = v10;
    Date.init(timeIntervalSinceReferenceDate:)();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo28MOSuggestionAssetMetadataKeya_yptMd, &_sSo28MOSuggestionAssetMetadataKeya_yptMR);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v7 addMetadata:isa];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + 16);

      (v6)(v16);
      v17 = String._bridgeToObjectiveC()();

      [v15 setObject:v7 forKey:v17 cost:1];
    }

    v18 = v7;
    a4(a1);
  }

  else
  {
    (a4)(0, a2, a3, a5);
  }
}

void MOEventBundle._orderedAssetReferences()()
{
  v245 = type metadata accessor for UUID();
  v233 = *(v245 - 8);
  __chkstk_darwin(v245);
  v240 = &v222 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = v0;
  v4 = [v0 resources];
  if (!v4)
  {
    goto LABEL_116;
  }

  v5 = v4;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOResource, MOResource_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_114;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_115:

LABEL_116:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    __swift_project_value_buffer(v112, static MOAngelLogger.assets);
    v113 = v241;
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v251[0] = v117;
      *v116 = 136315138;
      v118 = [v113 bundleIdentifier];
      v119 = v240;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v120 = v245;
      v121 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v122;
      (*(v233 + 8))(v119, v120);
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v251);

      *(v116 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v114, v115, "[MOEventBundle] No assets for bundleIdentifier=%s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
    }

    return;
  }

  while (1)
  {
    v247 = _swiftEmptyArrayStorage;
    v248 = _swiftEmptyArrayStorage;
    v246 = _swiftEmptyArrayStorage;
    v251[0] = specialized Array._copyToContiguousArray()(v7, v6);
    specialized MutableCollection<>.sort(by:)(v251);
    v9 = v251[0];
    if ((v251[0] & 0x8000000000000000) != 0 || (v251[0] & 0x4000000000000000) != 0)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *(v251[0] + 2);
    }

    v224 = 0;
    if (!v10)
    {
      break;
    }

    v1 = 0;
    v229 = 0;
    v6 = 0;
    v11 = v9 & 0xC000000000000001;
    v232 = (v233 + 8);
    v234 = (v233 + 56);
    v228 = -1;
    v223 = @"MOActivityMetaDataMotionType";
    *&v8 = 136315394;
    v222 = v8;
    *&v8 = 134218242;
    v230 = v8;
    v235 = _swiftEmptyArrayStorage;
    *&v236 = v9 & 0xC000000000000001;
    v231 = _swiftEmptyArrayStorage;
    v244 = _swiftEmptyArrayStorage;
    v226 = -1;
    v227 = _swiftEmptyArrayStorage;
    v225 = -1;
    v237 = v9;
    v239 = v10;
    while (1)
    {
      if (v11)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *(v9 + 16))
        {
          goto LABEL_113;
        }

        v13 = *(v9 + 8 * v1 + 32);
      }

      v2 = v13;
      v12 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      [v13 priorityScore];
      if (v14 >= 20000.0)
      {
        v242 = (v1 + 1);
        v243 = v1;
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static MOAngelLogger.assets);
        v23 = v2;
        v24 = v241;
        v25 = Logger.logObject.getter();
        v2 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v2))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v251[0] = v27;
          *v26 = v230;
          *(v26 + 4) = [v23 type];

          *(v26 + 12) = 2080;
          v28 = [v24 bundleIdentifier];
          v238 = v6;
          v29 = v240;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v30 = v245;
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v32;
          v34 = v29;
          v35 = v30;
          v9 = v237;
          v6 = v238;
          (*v232)(v34, v35);
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v251);

          *(v26 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v25, v2, "[MOEventBundle] Filtering out resource type=%lu, bundleIdentifier=%s", v26, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v27);

          v11 = v236;
        }

        else
        {
        }

        v10 = v239;
        v12 = v242;
        v1 = v243;
        goto LABEL_11;
      }

      v15 = [v2 type];
      if (v15 > 9)
      {
        if (v15 > 12)
        {
          switch(v15)
          {
            case 13:
              v16 = (v1 + 1);
              v68 = v226;
              if (v226 == -1)
              {
                v68 = v1;
              }

              v226 = v68;
              v69 = MOSuggestionAssetsTypeMotionActivity;
              type metadata accessor for MOSuggestionAssetReference(0);
              v70 = swift_allocObject();
              *(v70 + 5) = 0;
              *(v70 + 4) = 0;
              (*v234)(&v70[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID], 1, 1, v245);
              *&v70[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource] = v2;
              swift_beginAccess();
              *(v70 + 5) = 0;
              *(v70 + 4) = 0;
              *(v70 + 2) = v69;
              *(v70 + 3) = 0;
              v2 = v2;
              v71 = v69;
              v72 = [v2 data];
              if (!v72)
              {

                v6 = 0;
                goto LABEL_100;
              }

              v243 = v1;
              v73 = v72;
              v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v76 = v75;

              v77 = objc_opt_self();
              isa = Data._bridgeToObjectiveC()().super.isa;
              v251[0] = 0;
              v79 = [v77 JSONObjectWithData:isa options:0 error:v251];

              if (v79)
              {
                v80 = v251[0];
                _bridgeAnyObjectToAny(_:)();

                outlined consume of Data._Representation(v74, v76);
                swift_unknownObjectRelease();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
                if (swift_dynamicCast())
                {
                  v81 = v249;
                  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  if (*(v81 + 16))
                  {
                    v84 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v83);
                    v86 = v85;

                    if (v86)
                    {
                      v87 = *(*(v81 + 56) + 8 * v84);
                      swift_unknownObjectRetain();

                      v251[0] = v87;
                      type metadata accessor for MOWorkoutMotionActivityAction(0);
                      v88 = swift_dynamicCast();
                      v1 = v243;
                      if (v88)
                      {
                        v6 = v249;
                      }

                      else
                      {
                        v6 = 0;
                      }

                      v10 = v239;
LABEL_100:
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v244 + 2) + 1, 1, v244);
                      }

                      v107 = *(v244 + 2);
                      v106 = *(v244 + 3);
                      if (v107 >= v106 >> 1)
                      {
                        v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v244);
                      }

                      v108 = v244;
                      *(v244 + 2) = v107 + 1;
                      v109 = &v108[2 * v107];
                      *(v109 + 4) = v70;
                      *(v109 + 5) = v1;
                      v9 = v237;
LABEL_83:
                      v11 = v236;
                      v12 = v16;
                      goto LABEL_11;
                    }
                  }

                  else
                  {
                  }
                }

                v6 = 0;
              }

              else
              {
                v104 = v6;
                v105 = v251[0];
                _convertNSErrorToError(_:)();

                swift_willThrow();
                outlined consume of Data._Representation(v74, v76);

                v6 = 0;
                v224 = 0;
              }

              v10 = v239;
              v1 = v243;
              goto LABEL_100;
            case 14:

              v229 = v2;
              goto LABEL_11;
            case 16:
              v16 = (v1 + 1);
              v17 = v6;
              v18 = v1;
              v19 = MOSuggestionAssetsTypeStateOfMindAsset;
              type metadata accessor for MOSuggestionAssetReference(0);
              v20 = swift_allocObject();
              v20[5] = 0;
              v20[4] = 0;
              v21 = v20 + 4;
              (*v234)(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID, 1, 1, v245);
              *(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource) = v2;
              goto LABEL_78;
          }

          goto LABEL_76;
        }

        if (v15 == 10)
        {
          v242 = (v1 + 1);
          if (v228 == -1)
          {
            if (one-time initialization token for assets != -1)
            {
              swift_once();
            }

            v52 = type metadata accessor for Logger();
            __swift_project_value_buffer(v52, static MOAngelLogger.assets);
            v53 = v241;
            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v231 = swift_slowAlloc();
              v251[0] = v231;
              *v56 = v222;
              v57 = [v53 bundleIdentifier];
              LODWORD(v228) = v55;
              v58 = v57;
              v238 = v6;
              v59 = v240;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v60 = v245;
              v61 = dispatch thunk of CustomStringConvertible.description.getter();
              v63 = v62;
              v64 = v59;
              v6 = v238;
              (*v232)(v64, v60);
              v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v251);

              *(v56 + 4) = v65;
              *(v56 + 12) = 2048;
              *(v56 + 14) = v1;
              _os_log_impl(&_mh_execute_header, v54, v228, "[MOEventBundle] (debug) bundleIdentifier=%s setting singleWorkoutIndex=%ld", v56, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v231);

              v11 = v236;
            }

            v228 = v1;
            v10 = v239;
          }

          v66 = v2;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = v6;
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v231 = v246;
          v9 = v237;
          v12 = v242;
          goto LABEL_11;
        }

        if (v15 == 11)
        {
          if ([v241 bundleSuperType] == 3)
          {
            v16 = (v1 + 1);
            v17 = v6;
            v18 = v1;
            v19 = MOSuggestionAssetsTypeContactPhoto;
            type metadata accessor for MOSuggestionAssetReference(0);
            v20 = swift_allocObject();
            v20[5] = 0;
            v20[4] = 0;
            v21 = v20 + 4;
            (*v234)(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID, 1, 1, v245);
            *(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource) = v2;
            goto LABEL_78;
          }

          goto LABEL_76;
        }

        v37 = (v1 + 1);
        v38 = v225;
        if (v225 == -1)
        {
          v38 = v1;
        }

        v225 = v38;
        v39 = v2;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v248 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v248 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v2 = v6;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v235 = v248;
      }

      else
      {
        if (v15 <= 5)
        {
          v16 = (v1 + 1);
          if (v15 == 2)
          {
            v238 = v6;
            v43 = v1;
            v44 = MOResource.photoType.getter();
            if (v44)
            {
              v45 = v44;
              type metadata accessor for MOSuggestionAssetReference(0);
              v46 = swift_allocObject();
              *(v46 + 5) = 0;
              *(v46 + 4) = 0;
              (*v234)(&v46[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID], 1, 1, v245);
              *&v46[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource] = v2;
              swift_beginAccess();
              *(v46 + 5) = 0;
              *(v46 + 4) = 0;
              *(v46 + 2) = v45;
              *(v46 + 3) = 0;
              v47 = v2;
              v48 = v45;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v244 + 2) + 1, 1, v244);
              }

              v2 = *(v244 + 2);
              v49 = *(v244 + 3);
              if (v2 >= v49 >> 1)
              {
                v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v2 + 1, 1, v244);
              }

              v50 = v244;
              *(v244 + 2) = v2 + 1;
              v51 = &v50[2 * v2];
              *(v51 + 4) = v46;
              *(v51 + 5) = v43;
              v1 = v43;
              goto LABEL_91;
            }

            v9 = v237;
LABEL_92:
            v6 = v238;
            v12 = v16;
            goto LABEL_11;
          }

          if (v15 == 3)
          {
            v17 = v6;
            v18 = v1;
            v19 = MOSuggestionAssetsTypeMediaCoverArt;
            type metadata accessor for MOSuggestionAssetReference(0);
            v20 = swift_allocObject();
            v20[5] = 0;
            v20[4] = 0;
            v21 = v20 + 4;
            (*v234)(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID, 1, 1, v245);
            *(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource) = v2;
            goto LABEL_78;
          }

          v9 = v237;
          if (v15 == 4)
          {
            v17 = v6;
            v18 = v1;
            v19 = MOSuggestionAssetsTypeLinkPreview;
            type metadata accessor for MOSuggestionAssetReference(0);
            v20 = swift_allocObject();
            v20[5] = 0;
            v20[4] = 0;
            v21 = v20 + 4;
            (*v234)(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID, 1, 1, v245);
            *(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource) = v2;
            goto LABEL_78;
          }

LABEL_76:

          goto LABEL_11;
        }

        if (v15 != 6)
        {
          if (v15 == 7)
          {
            v16 = (v1 + 1);
            v17 = v6;
            v18 = v1;
            v19 = MOSuggestionAssetsTypeAppIcon;
            type metadata accessor for MOSuggestionAssetReference(0);
            v20 = swift_allocObject();
            v20[5] = 0;
            v20[4] = 0;
            v21 = v20 + 4;
            (*v234)(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID, 1, 1, v245);
            *(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource) = v2;
LABEL_78:
            swift_beginAccess();
            v20[5] = 0;
            *v21 = 0;
            v20[2] = v19;
            v20[3] = 0;
            v89 = v2;
            v90 = v19;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v244 + 2) + 1, 1, v244);
            }

            v92 = *(v244 + 2);
            v91 = *(v244 + 3);
            if (v92 >= v91 >> 1)
            {
              v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v244);
            }

            v93 = v244;
            *(v244 + 2) = v92 + 1;
            v94 = &v93[2 * v92];
            *(v94 + 4) = v20;
            *(v94 + 5) = v18;
            v1 = v18;
            v9 = v237;
            v10 = v239;
            v6 = v17;
            goto LABEL_83;
          }

          if (v15 == 9)
          {
            v16 = (v1 + 1);
            v238 = v6;
            v40 = [v241 promptLanguages];
            v243 = v1;
            if (v40)
            {
              v41 = v40;
              v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            }

            else
            {
              v42 = 0;
            }

            type metadata accessor for MOEvergreenAssetReference(0);
            v95 = swift_allocObject();
            *&v95[OBJC_IVAR____TtC16MomentsUIService25MOEvergreenAssetReference_prompts] = 0;
            v96 = MOSuggestionAssetsTypeReflectionPrompt;
            *(v95 + 5) = 0;
            *(v95 + 4) = 0;
            (*v234)(&v95[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID], 1, 1, v245);
            *&v95[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource] = v2;
            swift_beginAccess();
            *(v95 + 5) = 0;
            *(v95 + 4) = 0;
            *(v95 + 2) = v96;
            *(v95 + 3) = 0;
            v97 = OBJC_IVAR____TtC16MomentsUIService25MOEvergreenAssetReference_prompts;
            swift_beginAccess();
            *&v95[v97] = v42;
            v98 = v2;
            v99 = v96;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v244 + 2) + 1, 1, v244);
            }

            v101 = *(v244 + 2);
            v100 = *(v244 + 3);
            if (v101 >= v100 >> 1)
            {
              v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v244);
            }

            v102 = v244;
            *(v244 + 2) = v101 + 1;
            v103 = &v102[2 * v101];
            v1 = v243;
            *(v103 + 4) = v95;
            *(v103 + 5) = v1;
LABEL_91:
            v9 = v237;
            v10 = v239;
            goto LABEL_92;
          }

          goto LABEL_76;
        }

        v37 = (v1 + 1);
        v67 = v2;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v247 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v247 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v2 = v6;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v227 = v247;
      }

      v9 = v237;
      v12 = v37;
LABEL_11:
      ++v1;
      if (v12 == v10)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_115;
    }
  }

  v6 = 0;
  v225 = -1;
  v226 = -1;
  v244 = _swiftEmptyArrayStorage;
  v227 = _swiftEmptyArrayStorage;
  v231 = _swiftEmptyArrayStorage;
  v235 = _swiftEmptyArrayStorage;
  v228 = -1;
  v229 = 0;
LABEL_108:

  if (v231 >> 62)
  {
    v110 = _CocoaArrayWrapper.endIndex.getter();
    if (v110 < 2)
    {
      goto LABEL_123;
    }

LABEL_110:
    if ([v241 interfaceType] != 12)
    {
      goto LABEL_123;
    }

    v111 = [v241 bundleSubType] == 202;
  }

  else
  {
    v110 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v110 >= 2)
    {
      goto LABEL_110;
    }

LABEL_123:
    v111 = 0;
  }

  if ((v235 & 0x8000000000000000) != 0 || (v235 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_143;
    }
  }

  else if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_143;
  }

  if (v111)
  {
    goto LABEL_143;
  }

  if (v226 == -1)
  {
    goto LABEL_137;
  }

  if (v235 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_137;
    }
  }

  else if (!*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_137;
  }

  if ((v235 & 0xC000000000000001) != 0)
  {
    goto LABEL_191;
  }

  if (!*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_193;
  }

  v125 = *(v235 + 32);
  while (2)
  {
    v126 = v125;
    v127 = [v125 placeName];
    if (v127)
    {
      v128 = v127;

      v126 = v128;
LABEL_136:

LABEL_137:
      v129 = v6;
      v130 = v229;
      v131 = v229;
      v132 = v227;

      v133 = v235;

      v134 = [v241 interfaceType];
      type metadata accessor for MOMultiMapAssetReference(0);
      swift_allocObject();
      v111 = MOMultiMapAssetReference.init(locationResources:weatherResource:pointOfInterestResources:bundleType:)(v133, v130, v132, v134);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v244 + 2) + 1, 1, v244);
      }

      v136 = *(v244 + 2);
      v135 = *(v244 + 3);
      v137 = v136 + 1;
      v6 = v129;
      if (v136 >= v135 >> 1)
      {
        v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1, v244);
      }

      v2 = v225;
    }

    else
    {
      if (!v6)
      {
        goto LABEL_136;
      }

      v2 = v226;
      type metadata accessor for MOGenericMapAssetReference(0);
      v111 = swift_allocObject();
      *(v111 + OBJC_IVAR____TtC16MomentsUIService26MOGenericMapAssetReference_associatedMotionType) = v6;
      v219 = MOSuggestionAssetsTypeGenericMap;
      *(v111 + 40) = 0;
      *(v111 + 32) = 0;
      (*(v233 + 56))(v111 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID, 1, 1, v245);
      *(v111 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource) = v126;
      swift_beginAccess();
      *(v111 + 40) = 0;
      *(v111 + 32) = 0;
      *(v111 + 16) = v219;
      *(v111 + 24) = 0;
      v1 = v6;
      v10 = v126;
      v220 = v219;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_193:
        v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v244 + 2) + 1, 1, v244);
      }

      v136 = *(v244 + 2);
      v221 = *(v244 + 3);
      v137 = v136 + 1;
      if (v136 >= v221 >> 1)
      {
        v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v221 > 1), v136 + 1, 1, v244);
      }
    }

    v138 = v244;
    *(v244 + 2) = v137;
    v139 = &v138[2 * v136];
    *(v139 + 4) = v111;
    *(v139 + 5) = v2;
LABEL_143:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    v141 = __swift_project_value_buffer(v140, static MOAngelLogger.assets);
    v142 = v241;
    v234 = v141;
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();

    v145 = os_log_type_enabled(v143, v144);
    v238 = v6;
    if (v145)
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v243 = v110;
      v148 = v147;
      v251[0] = v147;
      *v146 = 136315394;
      v149 = [v142 bundleIdentifier];
      v150 = v240;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v151 = v245;
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v154 = v153;
      (*(v233 + 8))(v150, v151);
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, v251);

      *(v146 + 4) = v155;
      *(v146 + 12) = 2048;
      *(v146 + 14) = v228;
      _os_log_impl(&_mh_execute_header, v143, v144, "[MOEventBundle] (debug) bundleIdentifier=%s singleWorkoutIndex=%ld", v146, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v148);
      v110 = v243;
    }

    v6 = v231;
    if (v110 >= 2)
    {
      type metadata accessor for MOWorkoutGroupAssetReference(0);
      swift_allocObject();

      v157 = specialized MOWorkoutGroupAssetReference.init(workoutResources:)(v156);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v244 + 2) + 1, 1, v244);
      }

      v159 = *(v244 + 2);
      v158 = *(v244 + 3);
      v160 = v159 + 1;
      if (v159 >= v158 >> 1)
      {
        v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v244);
      }

      goto LABEL_162;
    }

    if (v231 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_163;
      }
    }

    else if (!*((v231 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_163;
    }

    if ((v6 & 0xC000000000000001) == 0)
    {
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v161 = *(v6 + 32);
        goto LABEL_157;
      }

      __break(1u);
LABEL_191:
      v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

  v161 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_157:
  v162 = v161;
  v163 = MOSuggestionAssetsTypeWorkout;
  type metadata accessor for MOSuggestionAssetReference(0);
  v157 = swift_allocObject();
  v157[5] = 0;
  v157[4] = 0;
  (*(v233 + 56))(v157 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID, 1, 1, v245);
  *(v157 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource) = v162;
  swift_beginAccess();
  v157[5] = 0;
  v157[4] = 0;
  v157[2] = v163;
  v157[3] = 0;
  v164 = v162;
  v165 = v163;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v244 + 2) + 1, 1, v244);
  }

  v159 = *(v244 + 2);
  v166 = *(v244 + 3);
  v160 = v159 + 1;
  if (v159 >= v166 >> 1)
  {
    v244 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v159 + 1, 1, v244);
  }

LABEL_162:
  v231 = v6;
  v167 = v244;
  *(v244 + 2) = v160;
  v168 = &v167[2 * v159];
  v169 = v228;
  *(v168 + 4) = v157;
  *(v168 + 5) = v169;
LABEL_163:
  v250 = v244;

  v170 = v224;
  specialized MutableCollection<>.sort(by:)(&v250);
  if (v170)
  {

    __break(1u);
  }

  else
  {

    v171 = v250;
    swift_retain_n();
    v172 = v142;
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();

    v175 = os_log_type_enabled(v173, v174);
    v239 = v172;
    if (v175)
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v250 = v177;
      *v176 = 136315394;
      v178 = [v239 bundleIdentifier];
      v179 = v240;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v180 = v245;
      v181 = dispatch thunk of CustomStringConvertible.description.getter();
      v183 = v182;
      (*(v233 + 8))(v179, v180);
      v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v183, &v250);

      *(v176 + 4) = v184;
      *(v176 + 12) = 2048;
      v185 = *(v171 + 2);

      *(v176 + 14) = v185;

      _os_log_impl(&_mh_execute_header, v173, v174, "[MOEventBundle] Building asset references bundleIdentifier=%s expectedAssetReferenceCount=%ld", v176, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v177);

      v172 = v239;
    }

    else
    {
    }

    v187 = *(v171 + 2);
    v188 = v234;
    if (v187)
    {
      v237 = (v233 + 8);
      v189 = 4;
      *&v186 = 136315650;
      v236 = v186;
      do
      {
        v213 = v171[v189];
        v214 = v172;

        v215 = Logger.logObject.getter();
        v216 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v215, v216))
        {
          v190 = swift_slowAlloc();
          v241 = v190;
          v244 = swift_slowAlloc();
          v250 = v244;
          *v190 = v236;
          v191 = [v214 bundleIdentifier];
          v243 = v215;
          v192 = v191;
          LODWORD(v242) = v216;
          v193 = v240;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v194 = v187;
          v195 = v188;
          v196 = v171;
          v197 = v245;
          v198 = dispatch thunk of CustomStringConvertible.description.getter();
          v200 = v199;
          v201 = v197;
          v171 = v196;
          v188 = v195;
          v187 = v194;
          (*v237)(v193, v201);
          v202 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v200, &v250);

          v204 = v241;
          *(v241 + 4) = v202;
          *(v204 + 6) = 2080;
          v205 = (*(**&v213 + 312))(v203);
          v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v206, &v250);

          *(v204 + 14) = v207;
          *(v204 + 11) = 2048;
          v209 = (*(**&v213 + 216))(v208);
          [v209 priorityScore];
          v211 = v210;

          *(v204 + 3) = v211;
          v212 = v243;
          _os_log_impl(&_mh_execute_header, v243, v242, "[MOEventBundle] (bundleIdentifier=%s) -- expected asset reference: %s priorityScore: %f", v204, 0x20u);
          swift_arrayDestroy();

          v172 = v239;
        }

        else
        {
        }

        v189 += 2;
        --v187;
      }

      while (v187);
      v217 = *(v171 + 2);
      if (v217)
      {
        v250 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v218 = 32;
        do
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v218 += 16;
          --v217;
        }

        while (v217);
      }
    }
  }
}

BOOL closure #1 in MOEventBundle.typeSortedAssetReferencesForInterstitial.getter(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(**a1 + 120);
  v5 = v4();
  v97 = specialized static MOSuggestionAssetReference.consolidatedType(_:)(v5);

  v6 = *(*v3 + 120);
  v7 = v6();
  v98 = specialized static MOSuggestionAssetReference.consolidatedType(_:)(v7);

  v8 = v4();
  v96 = v6;
  v9 = v6();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    v17 = v97;
LABEL_16:

LABEL_17:
    v53 = (v4)(v16);
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
    if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
    {

LABEL_24:
      v61 = (*(*v2 + 256))(v60);
      if (v61)
      {
        v62 = v61;
        v63 = (*(*v3 + 256))();
        if (v63)
        {
          v64 = v63;
          goto LABEL_35;
        }

        goto LABEL_53;
      }

      goto LABEL_54;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v59)
    {

      goto LABEL_24;
    }

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
    if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
    {
      goto LABEL_29;
    }

    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v70)
    {
      goto LABEL_31;
    }

    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
    if (v81 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v83 != v84)
    {
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v85)
      {
LABEL_31:

        goto LABEL_32;
      }

      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;
      if (v86 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v88 != v89)
      {
        v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v90 & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_32:
        v71 = (*(*v2 + 256))(v69);
        if (v71)
        {
          v62 = v71;
          v72 = (*(*v3 + 256))();
          if (v72)
          {
            v64 = v72;
LABEL_35:
            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(v62 + 16))
            {
              specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
              v76 = v75;

              if (v76)
              {
                swift_unknownObjectRetain();

                if (swift_dynamicCast())
                {
                  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  if (*(v64 + 16))
                  {
                    specialized __RawDictionaryStorage.find<A>(_:)(v77, v78);
                    v80 = v79;

                    if (v80)
                    {
                      swift_unknownObjectRetain();

                      if (swift_dynamicCast())
                      {
                        return 0;
                      }

                      return 0;
                    }
                  }

                  else
                  {
                  }
                }

                goto LABEL_53;
              }
            }

            else
            {
            }

            return 0;
          }

LABEL_53:
        }

LABEL_54:

        return 0;
      }
    }

LABEL_29:

    goto LABEL_32;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v17 = v97;
  if (v15)
  {
    goto LABEL_17;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
    goto LABEL_16;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22MOSuggestionAssetsTypeaGMd, &_ss23_ContiguousArrayStorageCySo22MOSuggestionAssetsTypeaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A7010;
  v25 = MOSuggestionAssetsTypeMultiPinMap;
  *(inited + 32) = MOSuggestionAssetsTypeMultiPinMap;
  v26 = MOSuggestionAssetsTypeVideo;
  v27 = MOSuggestionAssetsTypeLivePhoto;
  *(inited + 40) = MOSuggestionAssetsTypeVideo;
  *(inited + 48) = v27;
  v28 = MOSuggestionAssetsTypePhoto;
  v29 = MOSuggestionAssetsTypeWorkoutGroup;
  v92 = MOSuggestionAssetsTypeWorkoutGroup;
  *(inited + 56) = MOSuggestionAssetsTypePhoto;
  *(inited + 64) = v29;
  v91 = MOSuggestionAssetsTypeWorkout;
  v30 = MOSuggestionAssetsTypeContactPhoto;
  v93 = MOSuggestionAssetsTypeContactPhoto;
  *(inited + 72) = MOSuggestionAssetsTypeWorkout;
  *(inited + 80) = v30;
  v31 = MOSuggestionAssetsTypeMotionActivity;
  v32 = MOSuggestionAssetsTypeGenericMap;
  v94 = MOSuggestionAssetsTypeGenericMap;
  *(inited + 88) = MOSuggestionAssetsTypeMotionActivity;
  *(inited + 96) = v32;
  v95 = MOSuggestionAssetsTypeMediaCoverArt;
  *(inited + 104) = MOSuggestionAssetsTypeMediaCoverArt;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v92;
  v38 = v91;
  v39 = v93;
  v40 = v31;
  v41 = v94;
  v42 = (v4)(v95);
  v43 = specialized Collection<>.firstIndex(of:)(v42, inited);
  LOBYTE(v27) = v44;

  if (v27 & 1) != 0 || (v45 = v96(), v46 = specialized Collection<>.firstIndex(of:)(v45, inited), v48 = v47, v45, (v48))
  {
    v49 = v96();
    specialized Collection<>.firstIndex(of:)(v49, inited);
    v51 = v50;

    swift_setDeallocating();
    type metadata accessor for MOSuggestionAssetsType(0);
    swift_arrayDestroy();
    return (v51 & 1) == 0;
  }

  swift_setDeallocating();
  type metadata accessor for MOSuggestionAssetsType(0);
  swift_arrayDestroy();
  return v43 < v46;
}

void *MOEventBundle.uniqueAssetTypes.getter()
{
  v0 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  result = &_swiftEmptySetSingleton;
  if (!v0)
  {
    return result;
  }

  v7 = &_swiftEmptySetSingleton;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_12:

    return &_swiftEmptySetSingleton;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v2 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      ++v3;
      v5 = (*(*v4 + 120))();
      specialized Set._Variant.insert(_:)(&v6, v5);
    }

    while (v2 != v3);

    return v7;
  }

  return result;
}

id MOResource.photoType.getter()
{
  v1 = v0;
  v2 = [v0 data];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v39[0] = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:v39];

  if (!v9)
  {
    v21 = v39[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v4, v6);

    goto LABEL_13;
  }

  v10 = v39[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v4, v6);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v38[2])
  {

    goto LABEL_12;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v16 = *(v38[7] + 8 * v13);
  swift_unknownObjectRetain();

  v39[0] = v16;
  type metadata accessor for MOPhotoResourceType(0);
  if (swift_dynamicCast())
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {

LABEL_16:
      v26 = &MOSuggestionAssetsTypePhoto;
LABEL_17:
      v23 = *v26;

      return v23;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_16;
    }

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
    {

LABEL_22:
      v26 = &MOSuggestionAssetsTypeLivePhoto;
      goto LABEL_17;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_22;
    }

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
    {

LABEL_27:
      v26 = &MOSuggestionAssetsTypeVideo;
      goto LABEL_17;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_27;
    }

    return 0;
  }

LABEL_13:
  v22 = [v1 assets];
  if (!v22)
  {
    return 0;
  }

  v23 = MOSuggestionAssetsTypePhoto;
  v24 = MOSuggestionAssetsTypePhoto;
  return v23;
}

Swift::Bool __swiftcall MOEventBundle.isSingleAssetType()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v46 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MOEventBundle._orderedAssetReferences()();
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_26:

LABEL_27:
    if (one-time initialization token for assets != -1)
    {
LABEL_33:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static MOAngelLogger.assets);
    v32 = v0;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      v37 = [v32 bundleIdentifier];
      v38 = v46;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v2 + 8))(v38, v1);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v50);

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "[MOEventBundle] isSingleAssetType=true bundleIdentifier=%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    return 1;
  }

LABEL_4:
  v47 = v6;
  v48 = v5 & 0xC000000000000001;
  v43 = v2;
  v44 = v1;
  v45 = v0;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(v6 + 16))
  {
    v49 = *(v5 + 32);

LABEL_7:
    v2 = 0;
    while (1)
    {
      if (v48)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v2 >= *(v47 + 16))
        {
          goto LABEL_32;
        }

        v8 = *(v5 + 8 * v2 + 32);

        v9 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v10 = v7;
      v11 = (*(*v8 + 120))();
      v0 = (*(*v49 + 120))();
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v1 == v14)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {

          if (one-time initialization token for assets != -1)
          {
            goto LABEL_38;
          }

          goto LABEL_22;
        }
      }

      ++v2;
      v7 = v10;
      if (v9 == v10)
      {

        v2 = v43;
        v1 = v44;
        v0 = v45;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_22:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static MOAngelLogger.assets);
  v18 = v45;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v50 = v22;
    *v21 = 136315138;
    v23 = [v18 bundleIdentifier];
    v24 = v46;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = v44;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v43 + 8))(v24, v25);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v50);

    *(v21 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "[MOEventBundle] isSingleAssetType=false bundleIdentifier=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  return 0;
}

unint64_t digest(input:)(void *a1)
{
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 32;
  *(v2 + 32) = 0u;
  v3 = (v2 + 32);
  *(v2 + 48) = 0u;
  v4 = [a1 bytes];
  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    CC_SHA256(v4, result, v3);
    v6 = [objc_allocWithZone(NSData) initWithBytes:v3 length:32];

    return v6;
  }

  __break(1u);
  return result;
}

size_t hexStringFromData(input:)(void *a1)
{
  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v3 = result;
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 2) = v3;
      bzero(v4 + 4, v3);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    [a1 getBytes:v4 + 4 length:{objc_msgSend(a1, "length")}];
    v5 = *(v4 + 2);
    if (v5)
    {
      v6 = 32;
      do
      {
        v7 = *(v4 + v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1002A48B0;
        *(v8 + 56) = &type metadata for UInt8;
        *(v8 + 64) = &protocol witness table for UInt8;
        *(v8 + 32) = v7;
        v9._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v9);

        ++v6;
        --v5;
      }

      while (v5);

      return 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

double *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SitGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService29MOSuggestionAssetCacheManagerC0fG22CompletionResultHolderVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService29MOSuggestionAssetCacheManagerC0fG22CompletionResultHolderVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, double *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService19MOAssetAndMediaTypeV_SitGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService19MOAssetAndMediaTypeV_SitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService19MOAssetAndMediaTypeV_SitMd, &_s16MomentsUIService19MOAssetAndMediaTypeV_SitMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22MOSuggestionAssetsTypeaGMd, &_ss23_ContiguousArrayStorageCySo22MOSuggestionAssetsTypeaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    type metadata accessor for MOSuggestionAssetsType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t type metadata accessor for MOSuggestionAssetCacheWorkoutInput(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOSuggestionAssetCacheWorkoutInput;
  if (!type metadata singleton initialization cache for MOSuggestionAssetCacheWorkoutInput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10027BD3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10027BD74(__n128 a1)
{
  swift_weakDestroy();

  return _swift_deallocObject(v1, 24, 7);
}

uint64_t sub_10027BDAC()
{

  return _swift_deallocObject(v0, 80, 7);
}

double *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR, type metadata accessor for MOSuggestionSheetAssetDateRange);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMR, &type metadata accessor for CloudDevice.Capability);
}

double *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy16MomentsUIService26MOSuggestionAssetReferenceC_SitGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService26MOSuggestionAssetReferenceC_SitGMR, &_s16MomentsUIService26MOSuggestionAssetReferenceC_SitMd, &_s16MomentsUIService26MOSuggestionAssetReferenceC_SitMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, uint64_t *a2)
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

uint64_t sub_10027C070()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetCacheManager.CachedAssetCost and conformance MOSuggestionAssetCacheManager.CachedAssetCost()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetCacheManager.CachedAssetCost and conformance MOSuggestionAssetCacheManager.CachedAssetCost;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetCacheManager.CachedAssetCost and conformance MOSuggestionAssetCacheManager.CachedAssetCost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetCacheManager.CachedAssetCost and conformance MOSuggestionAssetCacheManager.CachedAssetCost);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppBgColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for AppBgColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10027C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10027C3A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void type metadata completion function for MOSuggestionAssetCacheWorkoutInput(uint64_t a1)
{
  _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for HKWorkoutActivityType?, type metadata accessor for HKWorkoutActivityType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for Bool?()
{
  if (!lazy cache variable for type metadata for Bool?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bool?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetCacheManager.MOSuggestionAssetCompletionResultHolder(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetCacheManager.MOSuggestionAssetCompletionResultHolder(uint64_t result, int a2, int a3)
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

unint64_t specialized static MOSuggestionAssetCacheManager.mappedLocationPreviewAssets(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v90 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 assetType];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v101 = v8;
  v106 = _swiftEmptyArrayStorage;
  v16 = [a1 metadata];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = MOSuggestionAssetMetadataKeyMultiPinMapLocations;
  v103 = MOSuggestionAssetMetadataKeyMultiPinMapLocations;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  v20 = v19;
  v21 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
  v22 = v18;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v104), (v24 & 1) == 0))
  {

    outlined destroy of AnyHashable(v104);
    goto LABEL_77;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v23, v105);
  outlined destroy of AnyHashable(v104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo28MOSuggestionAssetMetadataKeyaypGGMd, &_sSaySDySo28MOSuggestionAssetMetadataKeyaypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_77;
  }

  v99 = v21;
  v25 = v103;
  v26 = *(v103 + 16);
  if (!v26)
  {

LABEL_77:
    v27 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_83;
    }

LABEL_78:
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_79;
    }

    return v27;
  }

  v97 = v20;
  v100 = (v6 + 56);
  v98 = (v6 + 48);
  v96 = (v6 + 32);
  v27 = _swiftEmptyArrayStorage;
  v95 = (v6 + 8);
  v102 = MOSuggestionAssetMetadataKeyLocationPreviewVisitLatitude;
  v28 = 32;
  v94 = xmmword_1002A49F0;
  do
  {
    v29 = *(v25 + v28);
    if (!*(v29 + 16))
    {
      goto LABEL_14;
    }

    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v102);
    if ((v31 & 1) == 0 || (outlined init with copy of Any(*(v29 + 56) + 32 * v30, v104), (swift_dynamicCast() & 1) == 0) || !*(v29 + 16) || (v32 = *v105, v33 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewVisitLongitude), (v34 & 1) == 0) || (outlined init with copy of Any(*(v29 + 56) + 32 * v33, v104), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_14;
    }

    if (!*(v29 + 16) || (v35 = *v105, v93 = MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime, v36 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime), (v37 & 1) == 0))
    {

      (*v100)(v4, 1, 1, v5);
      goto LABEL_26;
    }

    outlined init with copy of Any(*(v29 + 56) + 32 * v36, v104);
    v38 = swift_dynamicCast();
    (*v100)(v4, v38 ^ 1u, 1, v5);
    if ((*v98)(v4, 1, v5) == 1)
    {

LABEL_26:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_14;
    }

    (*v96)(v101, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_ypSgtGMd, &_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_ypSgtGMR);
    inited = swift_initStackObject();
    v40 = inited;
    *(inited + 16) = v94;
    v41 = MOSuggestionAssetMetadataKeyLocationPreviewPlaceName;
    *(inited + 32) = MOSuggestionAssetMetadataKeyLocationPreviewPlaceName;
    v92 = inited + 32;
    if (*(v29 + 16))
    {
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
      if (v43)
      {
        outlined init with copy of Any(*(v29 + 56) + 32 * v42, v40 + 40);
      }

      else
      {
        *(v40 + 56) = 0u;
        *(v40 + 40) = 0u;
      }
    }

    else
    {
      *(inited + 56) = 0u;
      *(inited + 40) = 0u;
      v44 = v41;
    }

    v45 = MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace;
    *(v40 + 72) = MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace;
    if (*(v29 + 16))
    {
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
      if (v47)
      {
        outlined init with copy of Any(*(v29 + 56) + 32 * v46, v40 + 80);
      }

      else
      {
        *(v40 + 80) = 0u;
        *(v40 + 96) = 0u;
      }
    }

    else
    {
      *(v40 + 80) = 0u;
      *(v40 + 96) = 0u;
      v48 = v45;
    }

    v49 = MOSuggestionAssetMetadataKeyLocationPreviewCityName;
    *(v40 + 112) = MOSuggestionAssetMetadataKeyLocationPreviewCityName;
    if (*(v29 + 16))
    {
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
      if (v51)
      {
        outlined init with copy of Any(*(v29 + 56) + 32 * v50, v40 + 120);
      }

      else
      {
        *(v40 + 136) = 0u;
        *(v40 + 120) = 0u;
      }
    }

    else
    {
      *(v40 + 136) = 0u;
      *(v40 + 120) = 0u;
      v52 = v49;
    }

    v53 = v93;
    *(v40 + 152) = v93;
    if (*(v29 + 16))
    {
      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v53);
      if (v55)
      {
        outlined init with copy of Any(*(v29 + 56) + 32 * v54, v40 + 160);
      }

      else
      {
        *(v40 + 160) = 0u;
        *(v40 + 176) = 0u;
      }
    }

    else
    {
      *(v40 + 160) = 0u;
      *(v40 + 176) = 0u;
      v56 = v53;
    }

    v57 = MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime;
    *(v40 + 192) = MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime;
    if (*(v29 + 16))
    {
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
      if (v59)
      {
        outlined init with copy of Any(*(v29 + 56) + 32 * v58, v40 + 200);
      }

      else
      {
        *(v40 + 216) = 0u;
        *(v40 + 200) = 0u;
      }
    }

    else
    {
      *(v40 + 216) = 0u;
      *(v40 + 200) = 0u;
      v60 = v57;
    }

    v61 = MOSuggestionAssetMetadataKeyLocationPreviewVisitMapItem;
    *(v40 + 232) = MOSuggestionAssetMetadataKeyLocationPreviewVisitMapItem;
    if (*(v29 + 16))
    {
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v61);
      if (v63)
      {
        outlined init with copy of Any(*(v29 + 56) + 32 * v62, v40 + 240);
      }

      else
      {
        *(v40 + 240) = 0u;
        *(v40 + 256) = 0u;
      }
    }

    else
    {
      *(v40 + 240) = 0u;
      *(v40 + 256) = 0u;
      v64 = v61;
    }

    v91 = (v40 + 280);
    v65 = MOSuggestionAssetMetadataKeyMultiPinMapRepresentativeArea;
    v93 = v40;
    *(v40 + 272) = MOSuggestionAssetMetadataKeyMultiPinMapRepresentativeArea;
    v90 = v65;
    v66 = [a1 metadata];
    v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = v67;
    v105[0] = v90;
    v69 = v90;
    AnyHashable.init<A>(_:)();
    if (*(v67 + 16))
    {
      v70 = v91;
      v71 = specialized __RawDictionaryStorage.find<A>(_:)(v104);
      if (v72)
      {
        outlined init with copy of Any(*(v68 + 56) + 32 * v71, v70);
      }

      else
      {
        *v70 = 0u;
        v70[1] = 0u;
      }
    }

    else
    {
      v73 = v91;
      *v91 = 0u;
      v73[1] = 0u;
    }

    outlined destroy of AnyHashable(v104);
    v74 = MOSuggestionAssetMetadataKeyLocationPreviewVisitHorizontalUncertainty;
    v75 = v93;
    v93[39] = MOSuggestionAssetMetadataKeyLocationPreviewVisitHorizontalUncertainty;
    if (*(v29 + 16))
    {
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v74);
      v75 = v93;
      if (v77)
      {
        outlined init with copy of Any(*(v29 + 56) + 32 * v76, (v93 + 40));
      }

      else
      {
        *(v93 + 20) = 0u;
        v75[21] = 0u;
      }
    }

    else
    {
      v75[20] = 0u;
      v75[21] = 0u;
      v78 = v74;
    }

    v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypSgTt0g5Tf4g_n(v75);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOSuggestionAssetMetadataKeya_ypSgtMd, &_sSo28MOSuggestionAssetMetadataKeya_ypSgtMR);
    swift_arrayDestroy();
    if (!*(v29 + 16) || (v79 = specialized __RawDictionaryStorage.find<A>(_:)(v74), (v80 & 1) == 0))
    {

LABEL_72:
      v81 = 0.0;
      goto LABEL_73;
    }

    outlined init with copy of Any(*(v29 + 56) + 32 * v79, v104);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_72;
    }

    v81 = *v105;
LABEL_73:
    v82 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v93 = [v82 initWithCoordinate:isa altitude:v32 horizontalAccuracy:v35 verticalAccuracy:0.0 timestamp:{v81, 0.0}];

    v84 = MOSuggestionAssetsTypeLocationPreview;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CLLocation, CLLocation_ptr);
    v85 = objc_allocWithZone(MOSuggestionAsset);
    v86 = [v85 init:v93 type:v84 contentClassType:swift_getObjCClassFromMetadata()];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v91);

    v87 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v86 addMetadata:v87];

    v88 = v86;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*v95)(v101, v5);
    v27 = v106;
LABEL_14:
    v28 += 8;
    --v26;
  }

  while (v26);

  if (!(v27 >> 62))
  {
    goto LABEL_78;
  }

LABEL_83:
  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
LABEL_79:

    return 0;
  }

  return v27;
}

uint64_t specialized MOSuggestionAssetCacheManager.isInQueryList(_:reference:)(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(*a2 + 120);
  v4 = v3();
  v5 = MOSuggestionAssetsTypePhoto;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v17 = MOSuggestionAssetsTypeWorkout;
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
          v27 = MOSuggestionAssetsTypeLocationPreview;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;
          if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
          {
          }

          else
          {
            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v33 & 1) == 0)
            {
              v35 = (v3)(v32);
              v39 = v35;
              __chkstk_darwin(v35);
              v38 = &v39;
              v36 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v37, a1);

              v16 = v36;
              return v16 & 1;
            }
          }

          v39 = v27;
          __chkstk_darwin(v32);
          v38 = &v39;
          v34 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v37, a1);
          if ((v34 & 1) == 0)
          {
            v39 = MOSuggestionAssetsTypeMapSnapshot;
            __chkstk_darwin(v34);
            v38 = &v39;
            v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v37, a1);
            return v16 & 1;
          }

          goto LABEL_29;
        }
      }

      v39 = v17;
      __chkstk_darwin(v24);
      v38 = &v39;
      v25 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v37, a1);
      if ((v25 & 1) == 0)
      {
        v39 = MOSuggestionAssetsTypeActivityRings;
        __chkstk_darwin(v25);
        v38 = &v39;
        v26 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v37, a1);
        if ((v26 & 1) == 0)
        {
          v39 = MOSuggestionAssetsTypeRoutePreview;
          __chkstk_darwin(v26);
          v38 = &v39;
          goto LABEL_13;
        }
      }

LABEL_29:
      v16 = 1;
      return v16 & 1;
    }
  }

  v39 = v5;
  __chkstk_darwin(v12);
  v38 = &v39;
  v14 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v37, a1);
  if (v14)
  {
    goto LABEL_29;
  }

  v39 = MOSuggestionAssetsTypeLivePhoto;
  __chkstk_darwin(v14);
  v38 = &v39;
  v15 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v37, a1);
  if (v15)
  {
    goto LABEL_29;
  }

  v39 = MOSuggestionAssetsTypeVideo;
  __chkstk_darwin(v15);
  v38 = &v39;
LABEL_13:
  v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v37, a1);
  return v16 & 1;
}

void specialized MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(unint64_t a1, int a2, uint64_t (*a3)(), uint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9, void (*a10)(double *), void *a11)
{
  v257 = a8;
  v247 = a7;
  v234 = a3;
  v237 = a2;
  v255 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = __chkstk_darwin(v15 - 8);
  v240 = &v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v246 = &v213 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v243 = v19;
  v244 = v20;
  v21 = __chkstk_darwin(v19);
  v235 = &v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v233 = &v213 - v24;
  v25 = __chkstk_darwin(v23);
  v238 = &v213 - v26;
  v232 = v27;
  __chkstk_darwin(v25);
  v241 = &v213 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v29 - 8);
  v31 = &v213 - v30;
  v32 = type metadata accessor for UUID();
  v252 = *(v32 - 8);
  v253 = v32;
  __chkstk_darwin(v32);
  v245 = &v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0);
  __chkstk_darwin(v239);
  v35 = &v213 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_allocObject();
  *(v36 + 16) = a4;
  v231 = a5;
  *(v36 + 24) = a5;
  v37 = v247;
  *(v36 + 32) = a6;
  *(v36 + 40) = v37;
  *(v36 + 48) = v257;
  *(v36 + 56) = a9;
  v242 = a10;
  *(v36 + 64) = a10;
  *(v36 + 72) = v255;
  v38 = swift_allocObject();
  *(v38 + 16) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
  *(v38 + 24) = v36;
  v250 = v38;
  v254 = a4;
  swift_retain_n();
  v256 = a6;
  swift_retain_n();
  swift_retain_n();
  v249 = a9;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v251 = v36;
  swift_retain_n();

  MOSuggestionAssetCacheWorkoutInput.init(_:)(v39, v35);
  v40 = *(*a1 + 216);
  v236 = a1;
  v41 = v40();
  MOResource.workoutUUID.getter(v31);

  v42 = v252;
  v43 = v253;
  if ((*(v252 + 48))(v31, 1, v253) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v44 = v257;
    v45 = v254;
    v46 = v249;
    goto LABEL_12;
  }

  v47 = v245;
  (*(v42 + 32))(v245, v31, v43);
  v48 = v246;
  outlined init with copy of Date?(v35, v246);
  v49 = v244;
  v50 = v244[6];
  v51 = v48;
  v52 = v243;
  v53 = v50(v51, 1, v243);
  v248 = v35;
  if (v53 == 1)
  {
    (*(v42 + 8))(v47, v43);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v246, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v44 = v257;
    v45 = v254;
    v35 = v248;
    v46 = v249;
    goto LABEL_12;
  }

  v54 = v49;
  v57 = v49[4];
  v55 = v49 + 4;
  v56 = v57;
  v58 = v241;
  v57(v241, v246, v52);
  v60 = v239;
  v59 = v240;
  outlined init with copy of Date?(&v248[*(v239 + 20)], v240);
  if (v50(v59, 1, v52) == 1)
  {
    (v54[1])(v58, v52);
    (*(v252 + 8))(v245, v253);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v45 = v254;
    v35 = v248;
    v46 = v249;
LABEL_11:
    v44 = v257;
LABEL_12:
    v65 = one-time initialization token for assets;

    v66 = v256;

    if (v65 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static MOAngelLogger.assets);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v259[0] = v255;
      *v70 = 136315138;
      v71 = *(*v45 + 312);
      LODWORD(v253) = v69;
      v72 = v71();
      v74 = v46;
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v259);

      *(v70 + 4) = v75;
      v46 = v74;
      _os_log_impl(&_mh_execute_header, v68, v253, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v255);

      v66 = v256;
    }

    swift_beginAccess();
    v76 = *(v44 + 16);
    v77 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
    }

    else
    {
      *(v44 + 16) = v77;
      if (!(v46 >> 62))
      {
        if (v77 == *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_19:
          swift_beginAccess();
          v258 = *(v66 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(&v258);

          v78 = v258;
          v79 = *(v258 + 2);
          if (v79)
          {
            v248 = v35;
            v258 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v80 = 4;
            do
            {
              v81 = *&v78[v80];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v80 += 2;
              --v79;
            }

            while (v79);

            v82 = v258;
            v66 = v256;
            v35 = v248;
          }

          else
          {

            v82 = _swiftEmptyArrayStorage;
          }

          v242(v82);

          swift_beginAccess();
          *(v66 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_92;
        }

LABEL_91:

LABEL_92:

        outlined destroy of MOSuggestionAssetCacheWorkoutInput(v35);

LABEL_93:

        return;
      }
    }

    if (v77 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_19;
    }

    goto LABEL_91;
  }

  v61 = v238;
  v56(v238, v59, v52);
  v46 = v249;
  v62 = &v248[*(v60 + 24)];
  v45 = v254;
  if (v62[8])
  {
    v63 = v54[1];
    v63(v61, v52);
    v63(v241, v52);
    (*(v252 + 8))(v245, v253);
    v35 = v248;
    goto LABEL_11;
  }

  v35 = v248;
  if (v248[*(v60 + 28)] == 2)
  {
    v64 = v244[1];
    v64(v61, v52);
    v64(v241, v52);
    (*(v252 + 8))(v245, v253);
    goto LABEL_11;
  }

  LODWORD(v226) = v248[*(v60 + 28)];
  v222 = v56;
  v223 = v55;
  v227 = *v62;
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  v225 = (v83 + 16);
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v217 = (v84 + 16);
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  v216 = (v85 + 16);
  v86 = swift_allocObject();
  *(v86 + 16) = 0;
  v220 = (v86 + 16);
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  v218 = (v87 + 16);
  v88 = swift_allocObject();
  v230 = v88;
  swift_weakInit();
  v89 = swift_allocObject();
  *(v89 + 16) = v83;
  *(v89 + 24) = 3;
  v229 = v83;
  *(v89 + 32) = v87;
  *(v89 + 40) = v84;
  v239 = v86;
  v240 = v84;
  *(v89 + 48) = v85;
  v246 = v85;
  *(v89 + 56) = v237;
  v90 = v236;
  *(v89 + 64) = v86;
  *(v89 + 72) = v90;
  v234 = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
  *(v89 + 80) = v88;
  *(v89 + 88) = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
  v91 = v250;
  *(v89 + 96) = v250;
  v221 = type metadata accessor for MOSuggestionAssetWorkoutProvider();
  inited = swift_initStackObject();
  v224 = objc_allocWithZone(HKHealthStore);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v224 = [v224 init];
  *(inited + 24) = v224;
  v92 = swift_allocObject();
  v92[2] = v87;
  v92[3] = partial apply for closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:);
  v92[4] = v89;
  v92[5] = v90;
  v92[6] = v234;
  v92[7] = v91;

  MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:)(v245, partial apply for closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:), v92);

  v93 = one-time initialization token for shared;
  swift_retain_n();
  swift_retain_n();
  v94 = v229;
  swift_retain_n();
  swift_retain_n();
  v234 = v87;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  inited = v89;

  if (v93 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  v96 = __swift_project_value_buffer(v95, static MOAngelLogger.shared);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 134218240;
    *(v99 + 4) = v227;
    *(v99 + 12) = 1024;
    *(v99 + 14) = v226 & 1;
    _os_log_impl(&_mh_execute_header, v97, v98, "[workoutIcon] workoutType=%lu, isIndoor=%{BOOL}d", v99, 0x12u);
  }

  v226 = [objc_opt_self() activityTypeWithHKWorkoutActivityTypeIdentifier:v227 isIndoor:v226 & 1 metadata:0];
  v100 = FIUIStaticScalableWorkoutIconImage();
  if (!v100)
  {
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v96 = swift_slowAlloc();
      LODWORD(v96->super.isa) = 134217984;
      *(&v96->super.isa + 4) = v227;
      _os_log_impl(&_mh_execute_header, v106, v107, "[Assets] Unable to fetch system image for workoutType:%lu", v96, 0xCu);
    }

    v108 = v225;
    swift_beginAccess();
    v109 = *v108 + 1;
    if (__OFADD__(*v108, 1))
    {
      goto LABEL_96;
    }

    *v108 = v109;
    if (v109 != 3 || (v110 = v218, swift_beginAccess(), (v111 = *v110) == 0))
    {

      goto LABEL_86;
    }

    v112 = v217;
    swift_beginAccess();
    v113 = *v112;
    v114 = v216;
    swift_beginAccess();
    v115 = *v114;
    if ((v237 - 2) >= 9u)
    {
      if ((v237 & 1) != 0 || !v113)
      {
        goto LABEL_77;
      }
    }

    else if (!v113)
    {
LABEL_77:
      v170 = v220;
      swift_beginAccess();
      v169 = *v170;
      goto LABEL_78;
    }

    v169 = 0;
LABEL_78:
    v171 = objc_allocWithZone(MOSuggestionAssetWorkout);
    v172 = v115;
    swift_retain_n();
    v173 = v236;

    v174 = v113;
    v175 = [v171 init:0 route:v174 renderedRouteMap:v172 icon:v169];

    v176 = MOSuggestionAssetsTypeWorkout;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetWorkout, MOSuggestionAssetWorkout_ptr);
    v177 = objc_allocWithZone(MOSuggestionAsset);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v227 = v175;
    v179 = [v177 init:v175 type:v176 contentClassType:ObjCClassFromMetadata];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v111);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v179 addMetadata:isa];

    v181 = *(*v173 + 288);
    v181();
    v182 = String._bridgeToObjectiveC()();

    [v179 addIdentifier:v182];

    if (v237 - 2 >= 6 && v237 - 9 >= 2)
    {

      static MOSuggestionAssetCacheManager.wrapWorkoutAssetInURLIfNecessary(asset:cacheType:completion:)();
    }

    else
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v184 = *(Strong + 16);

        (v181)(v185);
        v186 = String._bridgeToObjectiveC()();

        if (*v217)
        {
          v187 = 3;
        }

        else
        {
          v187 = 1;
        }

        [v184 setObject:v179 forKey:v186 cost:v187];
      }

      v188 = v179;
      closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v179, v45, v231, v256, v247, v257, v249, v242);
    }

LABEL_86:

LABEL_87:

    type metadata accessor for MOSuggestionAssetWorkoutRouteProvider();
    v189 = swift_allocObject();
    v190 = [objc_allocWithZone(HKHealthStore) init];
    v247 = v189;
    v189[2] = v190;
    v189[3] = _swiftEmptyArrayStorage;
    v189[4] = 0;
    v192 = v243;
    v191 = v244;
    v193 = v244[2];
    v194 = v233;
    v193(v233, v238, v243);
    v193(v235, v241, v192);
    v195 = *(v191 + 80);
    v196 = (v195 + 16) & ~v195;
    v197 = (v232 + v195 + v196) & ~v195;
    v198 = (v232 + v197 + 7) & 0xFFFFFFFFFFFFFFF8;
    v199 = (v198 + 15) & 0xFFFFFFFFFFFFFFF8;
    v242 = ((v199 + 23) & 0xFFFFFFFFFFFFFFF8);
    v236 = (v199 + 39) & 0xFFFFFFFFFFFFFFF8;
    v200 = swift_allocObject();
    v201 = v194;
    v202 = v222;
    v222(v200 + v196, v201, v192);
    v202(v200 + v197, v235, v192);
    *(v200 + v198) = 0x3FD51EB851EB851FLL;
    v203 = (v200 + v199);
    v204 = inited;
    *v203 = partial apply for closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:);
    v203[1] = v204;
    v205 = v242 + v200;
    *v205 = v240;
    v205[8] = v237;
    *(v200 + v236) = v246;
    v206 = swift_initStackObject();
    v207 = objc_allocWithZone(HKHealthStore);

    v208 = [v207 init];
    *(v206 + 24) = v208;
    v209 = swift_allocObject();
    v209[2] = partial apply for closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:);
    v209[3] = v200;
    v209[4] = v247;

    v210 = v245;
    MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:)(v245, partial apply for closure #1 in MOSuggestionAssetWorkoutRouteProvider.getAsset(workoutUUID:completion:), v209);

    v211 = v243;
    v212 = v244[1];
    v212(v238, v243);
    v212(v241, v211);
    (*(v252 + 8))(v210, v253);
    outlined destroy of MOSuggestionAssetCacheWorkoutInput(v248);

    goto LABEL_93;
  }

  LODWORD(v227) = v237 - 2;
  v219 = v100;
  if ((v237 - 2) < 9u)
  {
    goto LABEL_50;
  }

  if (one-time initialization token for exerciseGreen != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v101 = static MOSuggestionTheme.Colors.exerciseGreen;
    v102 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];
    v103 = v101;
    v104 = v219;
    v105 = UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:assetSize:)(v103, v102, v237, 0.0);

    if (v105)
    {

      v219 = v105;
      goto LABEL_50;
    }

    v116 = v225;
    swift_beginAccess();
    v117 = *v116 + 1;
    if (__OFADD__(*v116, 1))
    {
      break;
    }

    *v116 = v117;
    if (v117 == 3)
    {
      v118 = v218;
      swift_beginAccess();
      v119 = *v118;
      if (*v118)
      {
        v215 = v96;
        v120 = v217;
        swift_beginAccess();
        v121 = *v120;
        v122 = v216;
        swift_beginAccess();
        v123 = *v122;
        if ((v237 & 1) != 0 || (v124 = 0, !v121))
        {
          v125 = v220;
          swift_beginAccess();
          v124 = *v125;
        }

        v214 = objc_allocWithZone(MOSuggestionAssetWorkout);
        v126 = v123;
        v213 = "init:route:renderedRouteMap:icon:";
        swift_retain_n();
        v127 = v236;

        v128 = v121;
        v129 = v124;
        v130 = [v214 v213];

        v131 = MOSuggestionAssetsTypeWorkout;
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetWorkout, MOSuggestionAssetWorkout_ptr);
        v132 = [objc_allocWithZone(MOSuggestionAsset) init:v130 type:v131 contentClassType:swift_getObjCClassFromMetadata()];
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v119);

        v133 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v132 addMetadata:v133];

        (*(*v127 + 288))();
        v134 = String._bridgeToObjectiveC()();

        [v132 addIdentifier:v134];

        static MOSuggestionAssetCacheManager.wrapWorkoutAssetInURLIfNecessary(asset:cacheType:completion:)();

        v94 = v229;
      }
    }

LABEL_50:
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v135, v136, "[Assets] Packed asset for system image", v137, 2u);
    }

    swift_beginAccess();
    v138 = *(v239 + 16);
    v139 = v219;
    *(v239 + 16) = v219;
    swift_retain_n();

    v96 = v139;

    v140 = v225;
    swift_beginAccess();
    v141 = *(v94 + 16);
    v142 = __OFADD__(v141, 1);
    v143 = v141 + 1;
    if (!v142)
    {
      *v140 = v143;
      if (v143 == 3)
      {
        v225 = v96;
        v144 = v218;
        swift_beginAccess();
        v145 = *v144;
        if (v145)
        {
          v146 = v227;
          v147 = v217;
          swift_beginAccess();
          v148 = *v147;
          v149 = v216;
          swift_beginAccess();
          v150 = *v149;
          if (v146 >= 9)
          {
            if ((v237 & 1) == 0 && v148)
            {
              goto LABEL_62;
            }

LABEL_63:
            v151 = *v220;
          }

          else
          {
            if (!v148)
            {
              goto LABEL_63;
            }

LABEL_62:
            v151 = 0;
          }

          v152 = objc_allocWithZone(MOSuggestionAssetWorkout);
          v153 = v150;
          swift_retain_n();

          v154 = v148;
          v155 = [v152 init:0 route:v154 renderedRouteMap:v153 icon:v151];

          v156 = MOSuggestionAssetsTypeWorkout;
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetWorkout, MOSuggestionAssetWorkout_ptr);
          v157 = objc_allocWithZone(MOSuggestionAsset);
          v158 = swift_getObjCClassFromMetadata();
          v227 = v155;
          v159 = [v157 init:v155 type:v156 contentClassType:v158];
          specialized _dictionaryUpCast<A, B, C, D>(_:)(v145);

          v160 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v159 addMetadata:v160];

          v161 = *(*v236 + 288);
          v161();
          v162 = String._bridgeToObjectiveC()();

          [v159 addIdentifier:v162];

          if (v237 - 2 >= 6 && v237 - 9 >= 2)
          {

            static MOSuggestionAssetCacheManager.wrapWorkoutAssetInURLIfNecessary(asset:cacheType:completion:)();
          }

          else
          {
            swift_beginAccess();
            v163 = swift_weakLoadStrong();
            if (v163)
            {
              v164 = *(v163 + 16);

              (v161)(v165);
              v166 = String._bridgeToObjectiveC()();

              if (*v217)
              {
                v167 = 3;
              }

              else
              {
                v167 = 1;
              }

              [v164 setObject:v159 forKey:v166 cost:v167];
            }

            v168 = v159;
            closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v159, v45, v231, v256, v247, v257, v249, v242);
          }

          v96 = v225;
        }

        else
        {

          v96 = v225;
        }
      }

      else
      {
      }

      goto LABEL_87;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  __break(1u);

  __break(1u);
}

uint64_t specialized MOSuggestionAssetCacheManager.fetchAndCacheMotionActivityFromProvider(_:cacheType:completion:)(uint64_t a1, int a2, id *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(double *), uint64_t a11)
{
  v372 = a7;
  v371 = a5;
  p_isa = a3;
  LODWORD(v373) = a2;
  v374 = a10;
  v370 = type metadata accessor for CharacterSet();
  *&v369 = v370[-1].length;
  v15 = __chkstk_darwin(v370);
  v17 = &v353 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v353 - v18;
  v367 = type metadata accessor for DispatchWorkItemFlags();
  v366 = *(v367 - 8);
  __chkstk_darwin(v367);
  v364 = &v353 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = type metadata accessor for DispatchQoS();
  v363 = *(v365 - 8);
  __chkstk_darwin(v365);
  v362 = &v353 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*a1 + 256);
  v375 = a4;
  swift_retain_n();
  v376 = a6;
  swift_retain_n();
  v377 = a8;
  swift_retain_n();
  v378 = a9;
  swift_bridgeObjectRetain_n();
  v379 = a11;
  v23 = swift_retain_n();
  v24 = v22(v23);
  if (!v24)
  {
LABEL_7:
    v34 = one-time initialization token for assets;
    v35 = v375;

    v36 = v376;

    v37 = v377;

    v38 = v378;

    if (v34 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static MOAngelLogger.assets);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&aBlock = v43;
      *v42 = 136315138;
      v44 = (*(*v35 + 312))();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &aBlock);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);

      v38 = v378;
    }

    swift_beginAccess();
    v47 = *(v37 + 16);
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
    }

    else
    {
      *(v37 + 16) = v48;
      if (!(v38 >> 62))
      {
        if (v48 == *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_14:
          swift_beginAccess();
          v387 = *(v36 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(&v387);

          v49 = v387;
          v50 = *(v387 + 2);
          if (v50)
          {
            v387 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v51 = 4;
            do
            {
              v52 = *&v49[v51];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v51 += 2;
              --v50;
            }

            while (v50);

            v53 = v387;
          }

          else
          {

            v53 = _swiftEmptyArrayStorage;
          }

          v374(v53);

          swift_beginAccess();
          *(v36 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_161;
        }

LABEL_160:

LABEL_161:

        goto LABEL_176;
      }
    }

    if (v48 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_14;
    }

    goto LABEL_160;
  }

  v25 = v24;
  v26 = (*(*a1 + 280))();
  if (!v26)
  {

    goto LABEL_7;
  }

  v27 = v26;
  v358 = a1;
  v360 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v28 = MOWorkoutMotionActivityActionWalk[0];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v359 = v27;
  if (v29 == v32 && v31 == v33)
  {

LABEL_19:
    v55 = [objc_opt_self() mainBundle];
    v388._object = 0x80000001002BC5B0;
    v388._countAndFlagsBits = 0xD00000000000001FLL;
    v56._countAndFlagsBits = 1802264919;
    v56._object = 0xE400000000000000;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v388);
    countAndFlagsBits = v58._countAndFlagsBits;
    object = v58._object;
    v61 = &MOSuggestionAssetMotionActivityTypeWalking;
    goto LABEL_20;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_19;
  }

  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;
  if (v97 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v99 == v100)
  {

LABEL_44:
    v55 = [objc_opt_self() mainBundle];
    v389._object = 0x80000001002BC590;
    v102._countAndFlagsBits = 7238994;
    v102._object = 0xE300000000000000;
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v389._countAndFlagsBits = 0xD00000000000001ELL;
    v104 = NSLocalizedString(_:tableName:bundle:value:comment:)(v102, 0, v55, v103, v389);
    countAndFlagsBits = v104._countAndFlagsBits;
    object = v104._object;
    v61 = &MOSuggestionAssetMotionActivityTypeRunning;
    goto LABEL_20;
  }

  v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v101)
  {
    goto LABEL_44;
  }

  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v139 = v138;
  if (v137 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v139 == v140)
  {
  }

  else
  {
    v295 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v295 & 1) == 0)
    {
      v62 = 0;
      goto LABEL_28;
    }
  }

  v55 = [objc_opt_self() mainBundle];
  v391._object = 0x80000001002BC530;
  v296._countAndFlagsBits = 0x61572026206E7552;
  v391._countAndFlagsBits = 0xD000000000000025;
  v296._object = 0xEA00000000006B6CLL;
  v297._countAndFlagsBits = 0;
  v297._object = 0xE000000000000000;
  v298 = NSLocalizedString(_:tableName:bundle:value:comment:)(v296, 0, v55, v297, v391);
  countAndFlagsBits = v298._countAndFlagsBits;
  object = v298._object;
  v61 = &MOSuggestionAssetMotionActivityTypeRunningWalking;
LABEL_20:

  v62 = *v61;
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v25 + 16))
  {
    v361 = v62;
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v64);
    v67 = v66;

    if (v67)
    {
      *&v380[0] = *(*(v25 + 56) + 8 * v65);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v356 = countAndFlagsBits;
        v357 = *(&aBlock + 1);
        v355 = aBlock;
        static CharacterSet.decimalDigits.getter();
        CharacterSet.inverted.getter();
        v68 = *(v369 + 8);
        v69 = v370;
        v68(v19, v370);
        lazy protocol witness table accessor for type String and conformance String();
        v70 = StringProtocol.trimmingCharacters(in:)();
        v72 = v71;
        v68(v17, v69);
        v73 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v70, v72);
        if ((v74 & 1) == 0)
        {
          v105 = v73;
          v370 = v28;
          v106 = [objc_opt_self() mainBundle];
          v390._object = 0x80000001002BC560;
          v107._countAndFlagsBits = 0x7370657473204025;
          v390._countAndFlagsBits = 0xD00000000000002DLL;
          v107._object = 0xE800000000000000;
          v108._countAndFlagsBits = 0;
          v108._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v107, 0, v106, v108, v390);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v109 = swift_allocObject();
          *(v109 + 16) = xmmword_1002A48B0;
          *(v109 + 56) = &type metadata for String;
          *(v109 + 64) = lazy protocol witness table accessor for type String and conformance String();
          v110 = v357;
          *(v109 + 32) = v355;
          *(v109 + 40) = v110;
          v111 = static String.localizedStringWithFormat(_:_:)();
          v113 = v112;

          v114 = MOSuggestionAssetMetadataKeyMotionActivityType;
          v383 = &type metadata for String;
          v115 = v356;
          *&aBlock = v356;
          *(&aBlock + 1) = object;
          outlined init with take of Any(&aBlock, v380);

          v116 = v360;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v387 = v116;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v114, isUniquelyReferenced_nonNull_native);
          v118 = v387;
          v119 = MOSuggestionAssetMetadataKeyMotionActivityTypeLocalized;
          v383 = &type metadata for String;
          *&aBlock = v115;
          *(&aBlock + 1) = object;
          outlined init with take of Any(&aBlock, v380);
          v120 = swift_isUniquelyReferenced_nonNull_native();
          v387 = v118;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v119, v120);
          v121 = v387;
          v122 = MOSuggestionAssetMetadataKeyMotionActivityTypeEnum;
          type metadata accessor for MOSuggestionAssetMotionActivityType(0);
          v383 = v123;
          v62 = v361;
          *&aBlock = v361;
          outlined init with take of Any(&aBlock, v380);
          v124 = v122;
          v28 = v370;
          v125 = v124;
          v126 = v62;
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v387 = v121;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v125, v127);

          v128 = v387;
          v129 = MOSuggestionAssetMetadataKeyMotionActivityStepCount;
          v383 = &type metadata for String;
          *&aBlock = v111;
          *(&aBlock + 1) = v113;
          outlined init with take of Any(&aBlock, v380);

          v130 = swift_isUniquelyReferenced_nonNull_native();
          v387 = v128;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v129, v130);
          v131 = v387;
          v132 = MOSuggestionAssetMetadataKeyMotionActivityStepCountLocalized;
          v383 = &type metadata for String;
          *&aBlock = v111;
          *(&aBlock + 1) = v113;
          outlined init with take of Any(&aBlock, v380);
          v133 = swift_isUniquelyReferenced_nonNull_native();
          v387 = v131;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v132, v133);
          v134 = v387;
          v135 = MOSuggestionAssetMetadataKeyMotionActivityNumberOfSteps;
          v383 = &type metadata for Int;
          *&aBlock = v105;
          outlined init with take of Any(&aBlock, v380);
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v387 = v134;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v135, v136);
          v360 = v387;
          goto LABEL_26;
        }
      }
    }

    v62 = v361;
LABEL_26:
    v27 = v359;
    goto LABEL_28;
  }

LABEL_28:
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v376;
  v78 = v378;
  if (!*(v25 + 16))
  {

LABEL_36:

    v96 = v377;
    if (!v62)
    {
      goto LABEL_70;
    }

    goto LABEL_52;
  }

  v79 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76);
  v81 = v80;

  if ((v81 & 1) == 0)
  {
    goto LABEL_36;
  }

  v82 = v28;
  *&aBlock = *(*(v25 + 56) + 8 * v79);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v25 + 16))
  {

    goto LABEL_50;
  }

  v85 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v84);
  v87 = v86;

  if ((v87 & 1) == 0)
  {
LABEL_50:

    goto LABEL_51;
  }

  v88 = *(*(v25 + 56) + 8 * v85);
  swift_unknownObjectRetain();

  *&aBlock = v88;
  if (swift_dynamicCast())
  {
    v89 = MOSuggestionAssetMetadataKeyMotionActivityStartDate;
    v90 = type metadata accessor for Date();
    v383 = v90;
    __swift_allocate_boxed_opaque_existential_1(&aBlock);
    Date.init(timeIntervalSince1970:)();
    outlined init with take of Any(&aBlock, v380);
    v91 = v360;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v387 = v91;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v89, v92);
    v93 = v387;
    v94 = MOSuggestionAssetMetadataKeyMotionActivityEndDate;
    v383 = v90;
    __swift_allocate_boxed_opaque_existential_1(&aBlock);
    Date.init(timeIntervalSince1970:)();
    outlined init with take of Any(&aBlock, v380);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v387 = v93;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v94, v95);
    v360 = v387;
  }

LABEL_51:
  v96 = v377;
  v28 = v82;
  if (!v62)
  {
    goto LABEL_70;
  }

LABEL_52:
  v141 = MOSuggestionAssetMotionActivityTypeRunning;
  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v144 = v143;
  if (v142 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v144 == v145)
  {

LABEL_55:

    goto LABEL_57;
  }

  v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v146 & 1) == 0)
  {
    v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v169 = v168;
    if (v167 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v169 != v170)
    {
      v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v171 & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_57;
    }

    goto LABEL_55;
  }

LABEL_57:
  specialized static MOSuggestionAssetSystemSymbolProvider.symbolName(type:)(v27);
  if (v147)
  {
    v361 = v62;

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v148 = *(*static MOSuggestionAssetSystemSymbolProvider.shared + 128);
    v149 = v373;
    v150 = v148(v27, v373, 0, 1);
    if (v150)
    {
      v151 = v150;
      v152 = v148(v27, v149, 0, 2);
      if (v152)
      {
        v153 = v152;
        v154 = [v151 imageAsset];
        if (v154)
        {
          v155 = v154;
          v156 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
          [v155 registerImage:v153 withTraitCollection:v156];
        }

        v157 = MOSuggestionAssetsTypeMotionActivity;
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
        v158 = [objc_allocWithZone(MOSuggestionAsset) init:v151 type:v157 contentClassType:swift_getObjCClassFromMetadata()];
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v360);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v158 addMetadata:isa];

        v160 = *(*v358 + 288);
        v160();
        v161 = String._bridgeToObjectiveC()();

        [v158 addIdentifier:v161];

        if ((v373 - 2) <= 8u)
        {
          v162 = p_isa[2];
          v160();
          v163 = String._bridgeToObjectiveC()();

          [v162 setObject:v158 forKey:v163 cost:1];
        }

        v164 = v375;

        v165 = v378;

        v166 = v379;

        specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary(asset:cacheType:completion:)(v158, v373, v164, v371, v77, v372, v96, v165, v374, v166);

        goto LABEL_170;
      }
    }

    v217 = one-time initialization token for assets;
    v218 = v375;

    if (v217 != -1)
    {
      swift_once();
    }

    v219 = type metadata accessor for Logger();
    __swift_project_value_buffer(v219, static MOAngelLogger.assets);

    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.error.getter();

    v222 = os_log_type_enabled(v220, v221);
    v223 = v361;
    if (v222)
    {
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      *&aBlock = v225;
      *v224 = 136315138;
      v226 = (*(*v218 + 312))();
      v228 = v223;
      v229 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v226, v227, &aBlock);

      *(v224 + 4) = v229;
      v223 = v228;
      _os_log_impl(&_mh_execute_header, v220, v221, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v224, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v225);

      v78 = v378;
    }

    swift_beginAccess();
    v230 = *(v96 + 16);
    v231 = v230 + 1;
    if (__OFADD__(v230, 1))
    {
      __break(1u);
    }

    else
    {
      *(v96 + 16) = v231;
      if (!(v78 >> 62))
      {
        if (v231 == *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_89:
          swift_beginAccess();
          v387 = *(v77 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(&v387);

          v232 = v387;
          v233 = *(v387 + 2);
          if (v233)
          {
            v387 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v234 = 4;
            do
            {
              v235 = *&v232[v234];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v234 += 2;
              --v233;
            }

            while (v233);

            v236 = v387;
            v223 = v361;
          }

          else
          {

            v236 = _swiftEmptyArrayStorage;
          }

          v374(v236);

          swift_beginAccess();
          *(v77 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_169;
        }

LABEL_168:

LABEL_169:

LABEL_170:

        goto LABEL_175;
      }
    }

    if (v231 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_89;
    }

    goto LABEL_168;
  }

LABEL_70:
  specialized static MOSuggestionAssetSystemSymbolProvider.symbolName(type:)(v28);
  if (!v172 || (, v173 = MOWorkoutMotionActivityActionRun[0], specialized static MOSuggestionAssetSystemSymbolProvider.symbolName(type:)(MOWorkoutMotionActivityActionRun[0]), !v174))
  {

LABEL_175:

    goto LABEL_176;
  }

  v175 = v28;
  v361 = v62;

  v176 = v373;
  if (v373 - 2 >= 7 && v373 != 10)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v237 = *(*static MOSuggestionAssetSystemSymbolProvider.shared + 128);
    v238 = v237(v175, v373, 0, 1);
    v176 = v373;
    v370 = v238;
    if (v238)
    {
      v239 = v373;
      v240 = v237(v173, v373, 0, 1);
      if (v240)
      {
        v241 = v240;
        v242 = v237(v175, v239, 0, 2);
        if (v242)
        {
          v243 = v242;
          v244 = v237(v173, v239, 0, 2);
          if (v244)
          {
            v245 = v244;
            v246 = [objc_opt_self() mainScreen];
            [v246 scale];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v247 = swift_allocObject();
            v369 = xmmword_1002A6160;
            *(v247 + 16) = xmmword_1002A6160;
            v248 = v370;
            *(v247 + 32) = v241;
            *(v247 + 40) = v248;
            MOSuggestionInterstitialExpandableListViewCellConstants.init()();
            v250 = v249;
            v252 = v251;
            v253 = v241;
            v370 = v248;
            v254 = specialized static MOSuggestionAssetSnowglobeEffect.imageFor(images:targetSize:)(v247, v250, v252);

            if (v254)
            {
              v255 = swift_allocObject();
              *(v255 + 16) = v369;
              *(v255 + 32) = v245;
              *(v255 + 40) = v243;
              *&v369 = v245;
              v256 = v243;
              v257 = specialized static MOSuggestionAssetSnowglobeEffect.imageFor(images:targetSize:)(v255, v250, v252);

              v258 = v378;
              v259 = v361;
              if (v257)
              {
                v260 = v256;
                v261 = v253;
                v262 = [v254 imageAsset];
                if (v262)
                {
                  v263 = v262;
                  v264 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
                  [v263 registerImage:v257 withTraitCollection:v264];
                }

                v265 = MOSuggestionAssetsTypeMotionActivity;
                type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
                v266 = [objc_allocWithZone(MOSuggestionAsset) init:v254 type:v265 contentClassType:swift_getObjCClassFromMetadata()];
                specialized _dictionaryUpCast<A, B, C, D>(_:)(v360);

                v267 = Dictionary._bridgeToObjectiveC()().super.isa;

                [v266 addMetadata:v267];

                (*(*v358 + 288))();
                v268 = String._bridgeToObjectiveC()();

                [v266 addIdentifier:v268];

                v269 = v375;

                v270 = v376;

                v271 = v377;

                v272 = v379;

                specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary(asset:cacheType:completion:)(v266, v373, v269, v371, v270, v372, v271, v258, v374, v272);

                goto LABEL_79;
              }

              if (one-time initialization token for assets != -1)
              {
                swift_once();
              }

              v326 = type metadata accessor for Logger();
              __swift_project_value_buffer(v326, static MOAngelLogger.assets);
              v327 = Logger.logObject.getter();
              v328 = static os_log_type_t.error.getter();
              v329 = os_log_type_enabled(v327, v328);
              v330 = v375;
              if (v329)
              {
                v331 = swift_slowAlloc();
                *v331 = 0;
                _os_log_impl(&_mh_execute_header, v327, v328, "Failed to generate dark mode snowglobe motion activity", v331, 2u);
              }

              swift_retain_n();

              v332 = Logger.logObject.getter();
              v333 = static os_log_type_t.error.getter();

              v334 = os_log_type_enabled(v332, v333);
              p_isa = &v253->isa;
              if (v334)
              {
                v335 = swift_slowAlloc();
                v336 = swift_slowAlloc();
                *&aBlock = v336;
                *v335 = 136315138;
                v337 = (*(*v330 + 312))();
                v339 = v259;
                v340 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v337, v338, &aBlock);

                *(v335 + 4) = v340;
                v259 = v339;
                _os_log_impl(&_mh_execute_header, v332, v333, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v335, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v336);

                v258 = v378;
              }

              v341 = v377;
              swift_beginAccess();
              v342 = *(v341 + 16);
              v343 = v342 + 1;
              if (__OFADD__(v342, 1))
              {
                __break(1u);
              }

              else
              {
                *(v341 + 16) = v343;
                if (!(v258 >> 62))
                {
                  if (v343 == *((v258 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
LABEL_154:
                    v344 = v376;
                    swift_beginAccess();
                    v387 = *(v344 + 16);
                    swift_bridgeObjectRetain_n();
                    specialized MutableCollection<>.sort(by:)(&v387);

                    v345 = v387;
                    v346 = *(v387 + 2);
                    if (v346)
                    {
                      v387 = _swiftEmptyArrayStorage;
                      specialized ContiguousArray.reserveCapacity(_:)();
                      v347 = 4;
                      do
                      {
                        v348 = *&v345[v347];
                        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                        specialized ContiguousArray._endMutation()();
                        v347 += 2;
                        --v346;
                      }

                      while (v346);

                      v349 = v387;
                      v259 = v361;
                    }

                    else
                    {

                      v349 = _swiftEmptyArrayStorage;
                    }

                    v374(v349);

                    v350 = v376;
                    swift_beginAccess();
                    *(v350 + 16) = _swiftEmptyArrayStorage;

                    goto LABEL_184;
                  }

LABEL_183:

LABEL_184:

                  goto LABEL_176;
                }
              }

              if (v343 == _CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_154;
              }

              goto LABEL_183;
            }

            v373 = v245;

            v300 = v378;
            v301 = v361;
            if (one-time initialization token for assets != -1)
            {
              swift_once();
            }

            v302 = type metadata accessor for Logger();
            __swift_project_value_buffer(v302, static MOAngelLogger.assets);
            v303 = Logger.logObject.getter();
            v304 = static os_log_type_t.error.getter();
            v305 = os_log_type_enabled(v303, v304);
            v306 = v375;
            v307 = v376;
            if (v305)
            {
              v308 = swift_slowAlloc();
              *v308 = 0;
              _os_log_impl(&_mh_execute_header, v303, v304, "Failed to generate snowglobe motion activity", v308, 2u);
            }

            swift_retain_n();

            v309 = Logger.logObject.getter();
            v310 = static os_log_type_t.error.getter();

            v311 = os_log_type_enabled(v309, v310);
            p_isa = &v253->isa;
            if (v311)
            {
              v312 = swift_slowAlloc();
              v313 = swift_slowAlloc();
              *&aBlock = v313;
              *v312 = 136315138;
              v314 = (*(*v306 + 312))();
              v316 = v301;
              v317 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v314, v315, &aBlock);

              *(v312 + 4) = v317;
              v301 = v316;
              _os_log_impl(&_mh_execute_header, v309, v310, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v312, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v313);

              v300 = v378;
            }

            v318 = v377;
            swift_beginAccess();
            v319 = *(v318 + 16);
            v320 = v319 + 1;
            if (__OFADD__(v319, 1))
            {
              __break(1u);
            }

            else
            {
              *(v318 + 16) = v320;
              if (!(v300 >> 62))
              {
                if (v320 == *((v300 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_141:
                  swift_beginAccess();
                  v387 = *(v307 + 16);
                  swift_bridgeObjectRetain_n();
                  specialized MutableCollection<>.sort(by:)(&v387);

                  v321 = v387;
                  v322 = *(v387 + 2);
                  if (v322)
                  {
                    v387 = _swiftEmptyArrayStorage;
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v323 = 4;
                    do
                    {
                      v324 = *&v321[v323];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v323 += 2;
                      --v322;
                    }

                    while (v322);

                    v325 = v387;
                  }

                  else
                  {

                    v325 = _swiftEmptyArrayStorage;
                  }

                  v374(v325);

                  swift_beginAccess();
                  *(v307 + 16) = _swiftEmptyArrayStorage;

                  v301 = v361;
                  goto LABEL_180;
                }

LABEL_179:

LABEL_180:
                v352 = p_isa;

                goto LABEL_176;
              }
            }

            if (v320 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_141;
            }

            goto LABEL_179;
          }

          v299 = v241;
          v241 = v243;
        }

        else
        {
          v299 = v370;
        }

        v96 = v377;
        v78 = v378;
      }

      else
      {
        v78 = v378;
        v241 = v370;
      }

      v176 = v373;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
    v176 = v373;
  }

  v177 = *(*static MOSuggestionAssetSystemSymbolProvider.shared + 128);
  v178 = v177(v175, v176, 1, 1);
  if (!v178)
  {
LABEL_109:

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v273 = type metadata accessor for Logger();
    __swift_project_value_buffer(v273, static MOAngelLogger.assets);
    v274 = Logger.logObject.getter();
    v275 = static os_log_type_t.error.getter();
    v276 = os_log_type_enabled(v274, v275);
    v277 = v375;
    v278 = v361;
    if (v276)
    {
      v279 = swift_slowAlloc();
      *v279 = 0;
      _os_log_impl(&_mh_execute_header, v274, v275, "Failed to generate asset for motion activity", v279, 2u);
    }

    swift_retain_n();

    v280 = Logger.logObject.getter();
    v281 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v280, v281))
    {
      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      *&aBlock = v283;
      *v282 = 136315138;
      v284 = (*(*v277 + 312))();
      v286 = v278;
      v287 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v284, v285, &aBlock);

      *(v282 + 4) = v287;
      v278 = v286;
      _os_log_impl(&_mh_execute_header, v280, v281, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v282, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v283);

      v78 = v378;
    }

    swift_beginAccess();
    v288 = *(v96 + 16);
    v289 = v288 + 1;
    if (__OFADD__(v288, 1))
    {
      __break(1u);
    }

    else
    {
      *(v96 + 16) = v289;
      if (!(v78 >> 62))
      {
        if (v289 == *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_118:
          swift_beginAccess();
          v387 = *(v77 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(&v387);

          v290 = v387;
          v291 = *(v387 + 2);
          if (v291)
          {
            v387 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v292 = 4;
            do
            {
              v293 = *&v290[v292];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v292 += 2;
              --v291;
            }

            while (v291);

            v294 = v387;
            v278 = v361;
          }

          else
          {

            v294 = _swiftEmptyArrayStorage;
          }

          v374(v294);

          swift_beginAccess();
          *(v77 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_174;
        }

LABEL_173:

LABEL_174:

        goto LABEL_175;
      }
    }

    if (v289 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_118;
    }

    goto LABEL_173;
  }

  v179 = v178;
  v180 = v177(v173, v176, 1, 1);
  if (!v180)
  {
LABEL_108:

    goto LABEL_109;
  }

  v181 = v180;
  v182 = String._bridgeToObjectiveC()();
  v183 = objc_opt_self();
  v184 = [v183 colorNamed:v182];

  if (!v184)
  {

    v179 = v181;
    v96 = v377;
    v78 = v378;
    goto LABEL_108;
  }

  v185 = [v183 systemWhiteColor];
  v186 = [v185 colorWithAlphaComponent:0.55];

  v187 = [v183 systemBlackColor];
  v188 = [v187 colorWithAlphaComponent:0.2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_1002A6160;
  *(v189 + 32) = v181;
  *(v189 + 40) = v179;
  v190 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
  *&v369 = v190;
  v191 = objc_allocWithZone(v190);
  *&v191[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v386.receiver = v191;
  v386.super_class = v190;
  v373 = v181;
  v370 = v179;
  v192 = v186;
  v193 = v188;
  v194 = v184;
  v195 = objc_msgSendSuper2(&v386, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v356 = v195;
  v355 = static OS_dispatch_queue.main.getter();
  v196 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v197 = swift_allocObject();
  v197[2] = v189;
  v197[3] = v192;
  v197[4] = v193;
  v197[5] = v194;
  v197[6] = v196;
  v384 = _s16MomentsUIService33MOSuggestionWorkoutsSnowGlobeViewC5icons25glyphLightBackgroundColor0i4DarkkL00i4TintL0ACSaySo7UIImageCG_So7UIColorCA2LtcfcyyScMYccfU_TA_0;
  v385 = v197;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v382 = thunk for @escaping @callee_guaranteed () -> ();
  v383 = &block_descriptor_196;
  v198 = _Block_copy(&aBlock);
  v199 = v192;
  p_isa = v199;
  v200 = v193;
  v357 = v200;
  v354 = v194;

  v201 = v362;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v202 = v364;
  v203 = v367;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v204 = v355;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  v205 = v198;
  v206 = v376;
  _Block_release(v205);

  v207 = v354;
  v208 = v356;

  (*(v366 + 8))(v202, v203);
  (*(v363 + 8))(v201, v365);
  v209 = [objc_allocWithZone(MOSuggestionAsset) init:v208 type:MOSuggestionAssetsTypeMotionActivity contentClassType:swift_getObjCClassFromMetadata()];
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v360);

  v210 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v209 addMetadata:v210];

  (*(*v358 + 288))();
  v211 = String._bridgeToObjectiveC()();

  [v209 addIdentifier:v211];

  v212 = v27;
  v213 = v375;

  v214 = v377;

  v215 = v378;

  v216 = v209;
  closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v209, v213, v371, v206, v372, v214, v215, v374);

LABEL_79:

  swift_bridgeObjectRelease_n();

LABEL_176:

  swift_bridgeObjectRelease_n();
}

double specialized MOSuggestionAssetCacheManager.fetchAndCacheMediaArtworkFromProvider(_:cacheType:completion:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, unint64_t a9, void (*a10)(double *, __n128), uint64_t a11)
{
  v141 = a3;
  v142 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v17 - 8);
  v143 = &v135 - v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  v145 = a5;
  *(v19 + 24) = a5;
  *(v19 + 32) = a6;
  *(v19 + 40) = a7;
  v146 = a7;
  *(v19 + 48) = a8;
  *(v19 + 56) = a9;
  v144 = a10;
  *(v19 + 64) = a10;
  *(v19 + 72) = a11;
  v20 = swift_allocObject();
  *(v20 + 16) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
  *(v20 + 24) = v19;
  v150 = v20;
  v21 = *(*a1 + 256);

  v147 = a6;

  v149 = a8;

  v148 = a11;

  v23 = (v21)(v22);
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v24 + 16))
  {
    v27 = a1;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_30;
    }

    *&v151[0] = *(*(v24 + 56) + 8 * v28);
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_30;
    }

    v31 = v153;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v24 + 16))
    {
      v140 = v31;
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33);
      v36 = v35;

      if ((v36 & 1) == 0)
      {
        goto LABEL_29;
      }

      *&v151[0] = *(*(v24 + 56) + 8 * v34);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_29;
      }

      v37 = v153;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v24 + 16))
      {

        goto LABEL_29;
      }

      v139 = v37;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
      v42 = v41;

      if (v42)
      {
        *&v151[0] = *(*(v24 + 56) + 8 * v40);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v43 = v153;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!*(v24 + 16))
          {

            goto LABEL_29;
          }

          v138 = v43;
          v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
          v48 = v47;

          if (v48)
          {
            *&v151[0] = *(*(v24 + 56) + 8 * v46);
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              v49 = v153;
              v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              if (!*(v24 + 16))
              {
LABEL_48:

                goto LABEL_28;
              }

              v137 = v49;
              v52 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
              v54 = v53;

              if ((v54 & 1) == 0)
              {

                goto LABEL_28;
              }

              *&v151[0] = *(*(v24 + 56) + 8 * v52);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v136 = v153;
                v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                if (*(v24 + 16))
                {
                  v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v56);
                  v59 = v58;

                  if (v59)
                  {
                    *&v151[0] = *(*(v24 + 56) + 8 * v57);
                    swift_unknownObjectRetain();
                    if (swift_dynamicCast())
                    {
                      v60 = v153;
                      v61 = swift_allocObject();
                      v62 = specialized static MOSuggestionAssetMediaCoverArtQueryInput.typeFromBundleId(_:)(v138, *(&v138 + 1));
                      *(v61 + 16) = v62;
                      v63 = swift_allocObject();
                      *(v63 + 16) = 0;
                      *(v63 + 24) = 0;
                      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v66 = *(v24 + 16);
                      if (v62 == 6)
                      {
                        if (v66)
                        {
                          v67 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
                          v69 = v68;

                          if ((v69 & 1) == 0)
                          {
                            goto LABEL_59;
                          }

                          *&v153 = *(*(v24 + 56) + 8 * v67);
                          type metadata accessor for MOMediaPlayMetaDataKeyPlayerMediaType(0);
                          swift_unknownObjectRetain();
                          if (!swift_dynamicCast())
                          {
                            goto LABEL_59;
                          }

                          v149 = *&v151[0];
                          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v72 = v71;
                          if (v70 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v72 != v73)
                          {
                            v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v122)
                            {
                              goto LABEL_72;
                            }

                            v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v127 = v126;
                            if (v125 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v127 != v128)
                            {
                              v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v129)
                              {
                                goto LABEL_72;
                              }

                              v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                              v132 = v131;
                              if (v130 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v132 != v133)
                              {
                                v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v134 & 1) == 0)
                                {

                                  goto LABEL_59;
                                }

                                goto LABEL_72;
                              }
                            }
                          }

LABEL_72:
                          v123 = v149;
                          v124 = specialized static MOSuggestionAssetMediaCoverArtQueryInput.typeFromBundleMediaType(_:)(v149);

                          *(v61 + 16) = v124;
                          goto LABEL_59;
                        }
                      }

                      else if (v66)
                      {
                        v98 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
                        v100 = v99;

                        if (v100)
                        {
                          *&v153 = *(*(v24 + 56) + 8 * v98);
                          type metadata accessor for MOMediaPlayMetaDataKeyPlayerMediaType(0);
                          swift_unknownObjectRetain();
                          if (swift_dynamicCast())
                          {
                            v101 = *&v151[0];
                            v102 = specialized static MOSuggestionAssetMediaCoverArtQueryInput.typeFromBundleMediaType(_:)(*&v151[0]);

                            *(v61 + 16) = v102;
                          }
                        }

                        goto LABEL_59;
                      }

LABEL_59:
                      v103 = *(v61 + 16);
                      v151[0] = v140;
                      v151[1] = v60;
                      v151[2] = v137;
                      v151[3] = v139;
                      v151[4] = v138;
                      v152 = v103;
                      v158 = v103;
                      v156 = v139;
                      v157 = v138;
                      v153 = v140;
                      v154 = v60;
                      v155 = v137;
                      if ((v103 - 6) > 2)
                      {

                        v113 = *(v61 + 16);
                        if (v113 == 4 || v113 == 1)
                        {
                          if (one-time initialization token for sharedSongProvider != -1)
                          {
                            swift_once();
                          }

                          v114 = &static MOSuggestionMediaCoverArtProviders.sharedSongProvider;
                        }

                        else
                        {
                          if (one-time initialization token for sharedPodcastProvider != -1)
                          {
                            swift_once();
                          }

                          v114 = &static MOSuggestionMediaCoverArtProviders.sharedPodcastProvider;
                        }

                        v115 = *v114;

                        v116 = swift_allocObject();
                        *(v116 + 16) = v27;
                        *(v116 + 24) = v24;
                        v117 = v142;
                        *(v116 + 32) = v142;
                        v118 = v150;
                        *(v116 + 40) = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
                        *(v116 + 48) = v118;
                        v119 = *(&v140 + 1);
                        *(v116 + 56) = v140;
                        *(v116 + 64) = v119;
                        *(v116 + 72) = v60;
                        v120 = *(&v137 + 1);
                        *(v116 + 88) = v137;
                        *(v116 + 96) = v120;
                        *(v116 + 104) = v61;
                        v121 = *(*v115 + 248);

                        v121(&v153, v117, partial apply for closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheMediaArtworkFromProvider(_:cacheType:completion:), v116);
                        outlined destroy of MOSuggestionAssetMediaCoverArtQueryInput(v151);
                      }

                      else
                      {
                        v104 = swift_allocObject();
                        swift_weakInit();
                        v105 = swift_allocObject();
                        v106 = v138;
                        *(v105 + 16) = v104;
                        *(v105 + 24) = v106;
                        v107 = *(&v138 + 1);
                        v108 = v136;
                        *(v105 + 32) = *(&v138 + 1);
                        *(v105 + 40) = __PAIR128__(*(&v136 + 1), v108);
                        *(v105 + 56) = v63;
                        v109 = v156;
                        v110 = v157;
                        *(v105 + 96) = v155;
                        *(v105 + 112) = v109;
                        *(v105 + 128) = v110;
                        v111 = v158;
                        v112 = v154;
                        *(v105 + 64) = v153;
                        *(v105 + 80) = v112;
                        *(v105 + 144) = v111;
                        *(v105 + 152) = v27;
                        *(v105 + 160) = v24;
                        *(v105 + 168) = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
                        *(v105 + 176) = v150;
                        *(v105 + 184) = v142;
                        swift_bridgeObjectRetain_n();

                        specialized static MOSuggestionAssetAppIconProvider.getImageFor(bundleIdentifier:shouldApplyMask:completion:)(v106, v107, 0, partial apply for specialized closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheMediaArtworkFromProvider(_:cacheType:completion:), v105);
                      }

                      goto LABEL_41;
                    }

                    goto LABEL_48;
                  }
                }

                else
                {
                }

                goto LABEL_29;
              }
            }
          }
        }
      }
    }

LABEL_28:

LABEL_29:

LABEL_30:

    goto LABEL_31;
  }

LABEL_31:
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  __swift_project_value_buffer(v74, static MOAngelLogger.assets);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v153 = v78;
    *v77 = 136315138;
    if (v21())
    {
      v79 = Dictionary.debugDescription.getter();
      v81 = v80;
    }

    else
    {
      v81 = 0xE300000000000000;
      v79 = 7104878;
    }

    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v153);

    *(v77 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v75, v76, "[MOSuggestionAssetCacheManager] Incomplete media metadata for artwork fetch %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
  }

  v83 = type metadata accessor for URL();
  v84 = *(v83 - 8);
  v85 = v143;
  (*(v84 + 56))(v143, 1, 1, v83);
  v86 = String._bridgeToObjectiveC()();
  v87 = String._bridgeToObjectiveC()();
  v88 = String._bridgeToObjectiveC()();
  v90 = 0;
  if ((*(v84 + 48))(v85, 1, v83) != 1)
  {
    URL._bridgeToObjectiveC()(v89);
    v90 = v91;
    (*(v84 + 8))(v85, v83);
  }

  v92 = [objc_allocWithZone(MOSuggestionAssetMediaItem) initTitle:v86 albumTitle:v87 artistName:v88 albumArt:0 trackIdentifier:0 previewURL:v90 mediaType:0];

  v93 = MOSuggestionAssetsTypeMediaCoverArt;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetMediaItem, MOSuggestionAssetMediaItem_ptr);
  v94 = [objc_allocWithZone(MOSuggestionAsset) init:v92 type:v93 contentClassType:swift_getObjCClassFromMetadata()];

  v95 = v147;

  v96 = v149;

  closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v94, a4, v145, v95, v146, v96, a9, v144);

LABEL_41:

  return result;
}

void specialized MOSuggestionAssetCacheManager.fetchAndCacheReflectionsPromptsFromProvider(_:isProxyForClient:completion:)(void *a1, char a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(double *), uint64_t a11)
{
  v18 = a9;
  type metadata accessor for MOEvergreenAssetReference(0);
  v19 = swift_dynamicCastClass();
  v20 = &off_100333000;
  v125 = a6;
  if (!v19)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    goto LABEL_12;
  }

  v118 = a5;
  v119 = a7;
  v21 = *(*v19 + 344);
  v22 = v19;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v121 = v22;
  v24 = v21(v23);
  if (!v24)
  {

    v20 = &off_100333000;
LABEL_12:
    v45 = v20[207];

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static MOAngelLogger.assets);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v128[0] = v50;
      *v49 = 136315138;
      v51 = (*(*a4 + 312))();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v128);

      *(v49 + 4) = v53;
      v18 = a9;
      _os_log_impl(&_mh_execute_header, v47, v48, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);

      a6 = v125;
    }

    swift_beginAccess();
    v54 = *(a8 + 16);
    v55 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
    }

    else
    {
      *(a8 + 16) = v55;
      if (!(v18 >> 62))
      {
        if (v55 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_19:
          swift_beginAccess();
          v126[0] = *(a6 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(v126);

          v56 = v126[0];
          v57 = *(v126[0] + 2);
          if (v57)
          {
            v126[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v58 = 4;
            do
            {
              v59 = *&v56[v58];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v58 += 2;
              --v57;
            }

            while (v57);

            v60 = v126[0];
          }

          else
          {

            v60 = _swiftEmptyArrayStorage;
          }

          a10(v60);

          swift_beginAccess();
          *(v125 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_94;
        }

LABEL_43:

LABEL_93:

LABEL_94:

        goto LABEL_95;
      }
    }

    if (v55 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  v25 = v24;
  v124 = a1;
  v120 = a9 >> 62;
  if ((a2 & 1) == 0)
  {

    v37 = a1;
    goto LABEL_48;
  }

  v26 = (*a1 + 288);
  v27 = *v26;
  v28 = (*v26)();
  v30 = v29;
  swift_beginAccess();
  v31 = a3[4];
  if (*(v31 + 16))
  {

    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v30);
    v34 = v33;

    if (v34)
    {
      v35 = *(*(v31 + 56) + 8 * v32);

      v18 = a9;
      if (v35 < *(v25 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1002A48B0;
        if ((v35 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v37 = v124;
          if (v35 < *(v25 + 16))
          {
            v38 = v36;
            v39 = v25 + 16 * v35;
            v40 = *(v39 + 40);
            *(v38 + 32) = *(v39 + 32);
            *(v38 + 40) = v40;

            v42 = (v27)(v41);
            v44 = v43;
            swift_beginAccess();
            specialized Dictionary._Variant.removeValue(forKey:)(v42, v44);
            swift_endAccess();

            a6 = v125;
            goto LABEL_48;
          }
        }

        __break(1u);
        goto LABEL_98;
      }
    }

    else
    {

      v18 = a9;
    }
  }

  else
  {
  }

  v61 = one-time initialization token for assets;

  a6 = v125;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static MOAngelLogger.assets);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v123 = v18;
    v66 = swift_slowAlloc();
    v128[0] = v66;
    *v65 = 136315138;
    v67 = (*(*a4 + 312))();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v128);

    *(v65 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v63, v64, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v18 = v123;

    a6 = v125;
  }

  swift_beginAccess();
  v70 = *(a8 + 16);
  v71 = v70 + 1;
  v37 = v124;
  if (__OFADD__(v70, 1))
  {
    __break(1u);
LABEL_45:
    if (v71 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

  *(a8 + 16) = v71;
  if (v120)
  {
    goto LABEL_45;
  }

  if (v71 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:
    swift_beginAccess();
    v128[0] = *(a6 + 16);
    swift_bridgeObjectRetain_n();
    specialized MutableCollection<>.sort(by:)(v128);

    v72 = v128[0];
    v73 = *(v128[0] + 2);
    if (v73)
    {
      v128[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v74 = 4;
      do
      {
        v75 = *&v72[v74];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v74 += 2;
        --v73;
      }

      while (v73);

      v76 = v128[0];
      v37 = v124;
    }

    else
    {

      v76 = _swiftEmptyArrayStorage;
    }

    a10(v76);

    a6 = v125;
    swift_beginAccess();
    *(v125 + 16) = _swiftEmptyArrayStorage;

    goto LABEL_47;
  }

LABEL_46:

LABEL_47:

LABEL_48:
  v77 = *(*v121 + 256);

  v79 = v77(v78);

  if (!v79)
  {
    goto LABEL_60;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v79 + 16))
  {

LABEL_60:

    goto LABEL_62;
  }

  v82 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v81);
  v84 = v83;

  if ((v84 & 1) == 0 || (v128[0] = *(*(v79 + 56) + 8 * v82), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {

    a6 = v125;
LABEL_62:
    v87 = one-time initialization token for assets;

    if (v87 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static MOAngelLogger.assets);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v128[0] = v92;
      *v91 = 136315138;
      v93 = (*(*a4 + 312))();
      v95 = v18;
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v128);

      *(v91 + 4) = v96;
      v18 = v95;
      _os_log_impl(&_mh_execute_header, v89, v90, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);

      a6 = v125;
    }

    swift_beginAccess();
    v97 = *(a8 + 16);
    v98 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      __break(1u);
    }

    else
    {
      *(a8 + 16) = v98;
      if (!v120)
      {
        if (v98 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_69:
          swift_beginAccess();
          v126[0] = *(a6 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(v126);

          v99 = v126[0];
          v100 = *(v126[0] + 2);
          if (v100)
          {
            v126[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v101 = 4;
            do
            {
              v102 = *&v99[v101];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v101 += 2;
              --v100;
            }

            while (v100);

            v103 = v126[0];
          }

          else
          {

            v103 = _swiftEmptyArrayStorage;
          }

          a10(v103);

          swift_beginAccess();
          *(v125 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_93;
        }

        goto LABEL_92;
      }
    }

    if (v98 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_69;
    }

LABEL_92:

    goto LABEL_93;
  }

  a6 = v25;
  if (v127 <= 3)
  {
    if (v127 != 1)
    {
      if (v127 == 2)
      {
LABEL_86:
        v108 = String._bridgeToObjectiveC()();
        v86 = [objc_opt_self() _systemImageNamed:v108];

        if (v86)
        {
          goto LABEL_89;
        }

        swift_bridgeObjectRelease_n();

        __break(1u);
        goto LABEL_88;
      }

      if (v127 == 3)
      {
        v85 = String._bridgeToObjectiveC()();
        v86 = [objc_opt_self() _systemImageNamed:v85];

        if (!v86)
        {

          swift_bridgeObjectRelease_n();

          __break(1u);
          goto LABEL_60;
        }

LABEL_89:

        v110 = objc_allocWithZone(MOSuggestionAssetReflectionPrompt);
        v111 = v86;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v113 = [v110 initWithReflectionPrompts:isa icon:v111 type:v127];

        v114 = MOSuggestionAssetsTypeReflectionPrompt;
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOSuggestionAssetReflectionPrompt, MOSuggestionAssetReflectionPrompt_ptr);
        v115 = [objc_allocWithZone(MOSuggestionAsset) init:v113 type:v114 contentClassType:swift_getObjCClassFromMetadata()];
        (*(*v37 + 288))();
        v116 = String._bridgeToObjectiveC()();

        [v115 addIdentifier:v116];

        v117 = v115;
        closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v115, a4, v118, v125, v119, a8, v18, a10);

LABEL_95:

        swift_bridgeObjectRelease_n();

        return;
      }

LABEL_84:
      v107 = String._bridgeToObjectiveC()();
      v86 = [objc_opt_self() _systemImageNamed:v107];

      if (v86)
      {
        goto LABEL_89;
      }

      swift_bridgeObjectRelease_n();

      __break(1u);
      goto LABEL_86;
    }

    goto LABEL_80;
  }

  if (v127 == 4)
  {
LABEL_82:
    v106 = String._bridgeToObjectiveC()();
    v86 = [objc_opt_self() _systemImageNamed:v106];

    if (v86)
    {
      goto LABEL_89;
    }

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_84;
  }

  if (v127 != 5)
  {
    if (v127 != 6)
    {
      goto LABEL_84;
    }

    v104 = String._bridgeToObjectiveC()();
    v86 = [objc_opt_self() _systemImageNamed:v104];

    if (v86)
    {
      goto LABEL_89;
    }

    swift_bridgeObjectRelease_n();

    __break(1u);
LABEL_80:
    v105 = String._bridgeToObjectiveC()();
    v86 = [objc_opt_self() _systemImageNamed:v105];

    if (v86)
    {
      goto LABEL_89;
    }

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_82;
  }

LABEL_88:
  v109 = String._bridgeToObjectiveC()();
  v86 = [objc_opt_self() _systemImageNamed:v109];

  if (v86)
  {
    goto LABEL_89;
  }

LABEL_98:

  swift_bridgeObjectRelease_n();

  __break(1u);

  __break(1u);

  __break(1u);
}

uint64_t specialized MOSuggestionAssetCacheManager.fetchAndCacheLocationsPreviews(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, void (*a9)(double *, __n128), uint64_t a10)
{
  v164 = a6;
  v163 = a4;
  v162 = a2;
  v170 = a9;
  v15 = type metadata accessor for Date();
  v166 = *(v15 - 8);
  v167 = v15;
  v16 = __chkstk_darwin(v15);
  v168 = v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v169 = v159 - v18;
  v19 = *(*a1 + 256);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v20 = swift_retain_n();
  v165 = a1;
  v21 = v19(v20);
  if (!v21)
  {
    v79 = one-time initialization token for assets;

    v80 = a10;
    if (v79 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static MOAngelLogger.assets);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v171 = a7;
      v172 = a5;
      v85 = a8;
      v86 = v84;
      v87 = swift_slowAlloc();
      *&v173 = v87;
      *v86 = 136315138;
      v88 = (*(*a3 + 312))();
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v173);

      *(v86 + 4) = v90;
      v80 = a10;
      _os_log_impl(&_mh_execute_header, v82, v83, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);

      a8 = v85;
      a7 = v171;
      a5 = v172;
    }

    swift_beginAccess();
    v91 = *(a7 + 16);
    v92 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      __break(1u);
    }

    else
    {
      *(a7 + 16) = v92;
      if (!(a8 >> 62))
      {
        if (v92 != *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

LABEL_30:
        swift_beginAccess();
        v175[0] = *(a5 + 16);
        swift_bridgeObjectRetain_n();
        specialized MutableCollection<>.sort(by:)(v175);

        v93 = v175[0];
        v94 = *(v175[0] + 2);
        if (v94)
        {
          v171 = a7;
          v172 = v80;
          v175[0] = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v95 = 4;
          do
          {
            v96 = *&v93[v95];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v95 += 2;
            --v94;
          }

          while (v94);
          goto LABEL_33;
        }

LABEL_46:

        v97 = _swiftEmptyArrayStorage;
        goto LABEL_47;
      }
    }

    if (v92 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_58;
    }

    goto LABEL_30;
  }

  v22 = v21;
  v171 = a8;
  v172 = a10;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v22 + 16))
  {
    goto LABEL_34;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_35;
  }

  *&v173 = *(*(v22 + 56) + 8 * v25);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v22 + 16))
  {
LABEL_34:

    goto LABEL_35;
  }

  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
  v32 = v31;

  if (v32)
  {
    *&v173 = *(*(v22 + 56) + 8 * v30);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v22 + 16))
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
        v37 = v36;

        if (v37)
        {
          *&v173 = *(*(v22 + 56) + 8 * v35);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v38 = v176;
            Date.init(timeIntervalSinceReferenceDate:)();
            Date.init(timeIntervalSinceReferenceDate:)();
            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (!*(v22 + 16))
            {

              goto LABEL_65;
            }

            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
            v43 = v42;

            if (v43)
            {
              *&v173 = *(*(v22 + 56) + 8 * v41);
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
              if (swift_dynamicCast())
              {
                v44 = v176;
                v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                if (!*(*&v44 + 16))
                {

                  goto LABEL_65;
                }

                v161 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
                v48 = v47;

                if (v48)
                {
                  *&v173 = *(*(*&v44 + 56) + 8 * v161);
                  swift_unknownObjectRetain();
                  if (swift_dynamicCast())
                  {
                    v49 = v176;
                    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    if (*(*&v44 + 16))
                    {
                      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
                      v53 = v52;

                      if (v53)
                      {
                        v54 = *(*(*&v44 + 56) + 8 * v161);
                        swift_unknownObjectRetain();

                        *&v173 = v54;
                        if (swift_dynamicCast())
                        {
                          v55 = [objc_allocWithZone(CLLocation) initWithLatitude:v49 longitude:v176];
                          v56 = MOSuggestionAssetsTypeLocationPreview;
                          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CLLocation, CLLocation_ptr);
                          v57 = objc_allocWithZone(MOSuggestionAsset);
                          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                          v161 = v55;
                          v160 = [v57 init:v55 type:v56 contentClassType:ObjCClassFromMetadata];
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMR);
                          inited = swift_initStackObject();
                          *(inited + 16) = xmmword_1002A4D20;
                          v60 = MOSuggestionAssetMetadataKeyLocationPreviewPlaceName;
                          *(inited + 32) = MOSuggestionAssetMetadataKeyLocationPreviewPlaceName;
                          v159[1] = inited + 32;
                          v61 = (*(*v165 + 216))(v60);
                          v62 = [v61 name];

                          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v65 = v64;

                          *(inited + 40) = v63;
                          *(inited + 48) = v65;
                          v66 = MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace;
                          *(inited + 64) = &type metadata for String;
                          *(inited + 72) = v66;
                          *(inited + 80) = v38;
                          v67 = MOSuggestionAssetMetadataKeyLocationPreviewCityName;
                          *(inited + 104) = &type metadata for Int;
                          *(inited + 112) = v67;
                          v68 = inited;
                          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v71 = v70;
                          if (*(v22 + 16))
                          {
                            v72 = v69;
                            v73 = v66;
                            v74 = v67;
                            v75 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v71);
                            v77 = v76;

                            if (v77)
                            {
                              v78 = *(*(v22 + 56) + 8 * v75);
                              swift_unknownObjectRetain();

                              ObjectType = swift_getObjectType();
                              *&v173 = v78;
                              outlined init with take of Any(&v173, (v68 + 120));
LABEL_80:
                              v135 = MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime;
                              v136 = v68;
                              *(v68 + 152) = MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime;
                              v137 = v167;
                              v136[23] = v167;
                              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v136 + 20);
                              v139 = *(v166 + 16);
                              v139(boxed_opaque_existential_1, v169, v137);
                              v140 = MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime;
                              v136[24] = MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime;
                              v136[28] = v137;
                              v141 = __swift_allocate_boxed_opaque_existential_1(v136 + 25);
                              v139(v141, v168, v137);
                              v142 = v135;
                              v143 = v140;
                              v144 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(v136);
                              swift_setDeallocating();
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOSuggestionAssetMetadataKeya_yptMd, &_sSo28MOSuggestionAssetMetadataKeya_yptMR);
                              swift_arrayDestroy();
                              specialized _dictionaryUpCast<A, B, C, D>(_:)(v144);

                              isa = Dictionary._bridgeToObjectiveC()().super.isa;

                              v146 = v160;
                              [v160 addMetadata:isa];

                              v147 = *(*v165 + 288);
                              v147();
                              v148 = String._bridgeToObjectiveC()();

                              [v146 addIdentifier:v148];

                              v149 = *(v162 + 16);
                              v147();
                              v150 = String._bridgeToObjectiveC()();

                              v151 = v146;
                              [v149 setObject:v146 forKey:v150 cost:1];

                              v152 = v171;

                              v153 = v151;
                              v154 = v151;
                              closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v153, a3, v163, a5, v164, a7, v152, v170);

                              v155 = v167;
                              v156 = *(v166 + 8);
                              v156(v168, v167);
                              v156(v169, v155);
LABEL_85:

                              goto LABEL_60;
                            }
                          }

                          else
                          {
                            v133 = v66;
                            v134 = v67;
                          }

                          *(v68 + 144) = &type metadata for String;
                          *(v68 + 120) = 0;
                          *(v68 + 128) = 0xE000000000000000;
                          goto LABEL_80;
                        }

                        goto LABEL_65;
                      }
                    }

                    else
                    {
                    }
                  }
                }
              }
            }

LABEL_65:

            v115 = one-time initialization token for assets;

            v116 = v171;

            if (v115 != -1)
            {
              swift_once();
            }

            v117 = type metadata accessor for Logger();
            __swift_project_value_buffer(v117, static MOAngelLogger.assets);

            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              *&v173 = v121;
              *v120 = 136315138;
              v122 = *(*a3 + 312);
              LODWORD(v165) = v119;
              v123 = v122();
              v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v173);

              *(v120 + 4) = v125;
              _os_log_impl(&_mh_execute_header, v118, v165, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v120, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v121);
            }

            swift_beginAccess();
            v126 = *(a7 + 16);
            v127 = v126 + 1;
            if (__OFADD__(v126, 1))
            {
              __break(1u);
            }

            else
            {
              *(a7 + 16) = v127;
              if (!(v116 >> 62))
              {
                if (v127 == *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_72:
                  swift_beginAccess();
                  v175[0] = *(a5 + 16);
                  swift_bridgeObjectRetain_n();
                  specialized MutableCollection<>.sort(by:)(v175);

                  v128 = v175[0];
                  v129 = *(v175[0] + 2);
                  if (v129)
                  {
                    v175[0] = _swiftEmptyArrayStorage;
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v130 = 4;
                    do
                    {
                      v131 = *&v128[v130];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v130 += 2;
                      --v129;
                    }

                    while (v129);

                    v132 = v175[0];
                  }

                  else
                  {

                    v132 = _swiftEmptyArrayStorage;
                  }

                  (v170)(v132);

                  swift_beginAccess();
                  *(a5 + 16) = _swiftEmptyArrayStorage;

                  goto LABEL_84;
                }

LABEL_83:

LABEL_84:

                v157 = v167;
                v158 = *(v166 + 8);
                v158(v168, v167);
                v158(v169, v157);
                goto LABEL_85;
              }
            }

            if (v127 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_72;
            }

            goto LABEL_83;
          }
        }
      }

      else
      {
      }
    }
  }

LABEL_35:

  v98 = one-time initialization token for assets;

  v99 = v171;

  if (v98 != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  __swift_project_value_buffer(v100, static MOAngelLogger.assets);

  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v173 = v104;
    *v103 = 136315138;
    v105 = (*(*a3 + 312))();
    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, &v173);

    *(v103 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v101, v102, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);

    v99 = v171;
  }

  swift_beginAccess();
  v108 = *(a7 + 16);
  v109 = v108 + 1;
  if (__OFADD__(v108, 1))
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v109;
    if (!(v99 >> 62))
    {
      if (v109 == *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

LABEL_58:

      goto LABEL_59;
    }
  }

  if (v109 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_58;
  }

LABEL_42:
  swift_beginAccess();
  v175[0] = *(a5 + 16);
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(v175);

  v110 = v175[0];
  v111 = *(v175[0] + 2);
  if (!v111)
  {
    goto LABEL_46;
  }

  v175[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v112 = 4;
  do
  {
    v113 = *&v110[v112];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v112 += 2;
    --v111;
  }

  while (v111);
LABEL_33:

  v97 = v175[0];
LABEL_47:
  (v170)(v97);

  swift_beginAccess();
  *(a5 + 16) = _swiftEmptyArrayStorage;

LABEL_59:

LABEL_60:

  swift_bridgeObjectRelease_n();
}

uint64_t specialized MOSuggestionAssetCacheManager.fetchAndCacheContactPhotoFromProvider(_:cacheType:completion:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(double *, __n128), uint64_t a11)
{
  v15 = a9;
  v16 = *(*a1 + 216);
  swift_retain_n();
  v137 = a6;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v17 = swift_retain_n();
  v18 = (v16)(v17);
  v19 = [v18 personName];

  if (v19)
  {
    v131 = a7;
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v16();
    v23 = [v22 contactIdentifier];

    if (v23)
    {
      v134 = v21;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      swift_weakInit();
      v27 = objc_allocWithZone(CNContactStore);

      v133 = v26;
      v28 = [v27 init];
      v29 = String._bridgeToObjectiveC()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v140[0] = 0;
      v132 = v28;
      v31 = [v28 unifiedContactWithIdentifier:v29 keysToFetch:isa error:v140];

      if (v31)
      {
        if ((a2 - 2) >= 9u)
        {
          v32 = 300.0;
        }

        else
        {
          v32 = dbl_1002ACF08[(a2 - 2)];
        }

        v68 = one-time initialization token for sharedFetcher;
        v69 = v140[0];
        if (v68 != -1)
        {
          swift_once();
        }

        v70 = [static MOSuggestionAssetContactProfilePictureProvider.sharedFetcher avatarForContact:v31 size:{v32, v32}];
        v129 = v31;
        if (v70)
        {
          v71 = MOSuggestionAssetsTypeContactPhoto;
          v72 = v70;
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
          v128 = v72;
          v73 = [objc_allocWithZone(MOSuggestionAsset) init:v72 type:v71 contentClassType:swift_getObjCClassFromMetadata()];
          if (v73)
          {
            v125 = v73;
            v74 = specialized static MOSuggestionAssetContactProfilePictureProvider.getFirstNameFor(idInput:)();
            v126 = v75;
            v127 = v74;
            v124 = *(*a1 + 288);
            v124();
            v76 = String._bridgeToObjectiveC()();

            [v125 addIdentifier:v76];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, _ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1002A55C0;
            v78 = MOSuggestionAssetMetadataKeyContactName;
            v140[0] = MOSuggestionAssetMetadataKeyContactName;
            type metadata accessor for MOSuggestionAssetMetadataKey(0);
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
            v79 = v78;
            AnyHashable.init<A>(_:)();
            *(inited + 96) = &type metadata for String;
            *(inited + 72) = v130;
            *(inited + 80) = v134;
            v80 = MOSuggestionAssetMetadataKeyContactIdentifier;
            v140[0] = MOSuggestionAssetMetadataKeyContactIdentifier;

            v81 = v80;
            AnyHashable.init<A>(_:)();
            *(inited + 168) = &type metadata for String;
            *(inited + 144) = v24;
            *(inited + 152) = v133;
            v82 = MOSuggestionAssetMetadataKeyContactFirstName;
            v140[0] = MOSuggestionAssetMetadataKeyContactFirstName;

            v83 = v82;
            AnyHashable.init<A>(_:)();
            *(inited + 240) = &type metadata for String;
            *(inited + 216) = v127;
            *(inited + 224) = v126;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
            swift_arrayDestroy();
            v84 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v125 addMetadata:v84];

            if ((a2 - 2) < 9u)
            {
              swift_beginAccess();
              Strong = swift_weakLoadStrong();
              if (Strong)
              {
                v86 = *(Strong + 16);

                (v124)(v87);
                v88 = String._bridgeToObjectiveC()();

                [v86 setObject:v125 forKey:v88 cost:3];
              }
            }

            specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLIfNecessary(asset:cacheType:completion:)(v125, a2, a4, a5, v137, v131, a8, a9, a10, a11);

            goto LABEL_85;
          }

          v106 = one-time initialization token for assets;

          v107 = v137;

          if (v106 != -1)
          {
            swift_once();
          }

          v108 = type metadata accessor for Logger();
          __swift_project_value_buffer(v108, static MOAngelLogger.assets);

          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v140[0] = v112;
            *v111 = 136315138;
            v113 = (*(*a4 + 312))();
            v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v140);

            *(v111 + 4) = v115;
            _os_log_impl(&_mh_execute_header, v109, v110, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v111, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v112);

            v107 = v137;
          }

          swift_beginAccess();
          v116 = *(a8 + 16);
          v117 = v116 + 1;
          if (__OFADD__(v116, 1))
          {
            __break(1u);
          }

          else
          {
            *(a8 + 16) = v117;
            if (!(a9 >> 62))
            {
              if (v117 == *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_58:
                swift_beginAccess();
                v139[0] = *(v107 + 16);
                swift_bridgeObjectRetain_n();
                specialized MutableCollection<>.sort(by:)(v139);

                v118 = v139[0];
                v119 = *(v139[0] + 2);
                if (v119)
                {
                  v139[0] = _swiftEmptyArrayStorage;
                  specialized ContiguousArray.reserveCapacity(_:)();
                  v120 = 4;
                  do
                  {
                    v121 = *&v118[v120];
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                    v120 += 2;
                    --v119;
                  }

                  while (v119);

                  v122 = v139[0];
                  v107 = v137;
                }

                else
                {

                  v122 = _swiftEmptyArrayStorage;
                }

                (a10)(v122);

                swift_beginAccess();
                *(v107 + 16) = _swiftEmptyArrayStorage;

                goto LABEL_84;
              }

LABEL_83:

LABEL_84:

LABEL_85:

              swift_bridgeObjectRelease_n();

              goto LABEL_86;
            }
          }

          if (v117 == _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_58;
          }

          goto LABEL_83;
        }

        v89 = one-time initialization token for assets;

        v90 = v137;

        if (v89 != -1)
        {
          swift_once();
        }

        v91 = type metadata accessor for Logger();
        __swift_project_value_buffer(v91, static MOAngelLogger.assets);

        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v140[0] = v95;
          *v94 = 136315138;
          v96 = (*(*a4 + 312))();
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v140);

          *(v94 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v92, v93, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);

          v90 = v137;
        }

        swift_beginAccess();
        v99 = *(a8 + 16);
        v100 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          __break(1u);
        }

        else
        {
          *(a8 + 16) = v100;
          if (!(a9 >> 62))
          {
            if (v100 == *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_47:
              swift_beginAccess();
              v139[0] = *(v90 + 16);
              swift_bridgeObjectRetain_n();
              specialized MutableCollection<>.sort(by:)(v139);

              v101 = v139[0];
              v102 = *(v139[0] + 2);
              if (v102)
              {
                v139[0] = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v103 = 4;
                do
                {
                  v104 = *&v101[v103];
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v103 += 2;
                  --v102;
                }

                while (v102);

                v105 = v139[0];
                v90 = v137;
              }

              else
              {

                v105 = _swiftEmptyArrayStorage;
              }

              (a10)(v105);

              swift_beginAccess();
              *(v90 + 16) = _swiftEmptyArrayStorage;

              goto LABEL_79;
            }

LABEL_78:

LABEL_79:

            v28 = v129;
            goto LABEL_80;
          }
        }

        if (v100 == _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_47;
        }

        goto LABEL_78;
      }

      v50 = v140[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v51 = one-time initialization token for assets;

      v52 = v137;

      if (v51 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static MOAngelLogger.assets);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v140[0] = v57;
        *v56 = 136315138;
        v58 = (*(*a4 + 312))();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v140);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);

        v52 = v137;
      }

      swift_beginAccess();
      v61 = *(a8 + 16);
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
      }

      else
      {
        *(a8 + 16) = v62;
        if (!(a9 >> 62))
        {
          if (v62 == *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_25:
            swift_beginAccess();
            v139[0] = *(v52 + 16);
            swift_bridgeObjectRetain_n();
            specialized MutableCollection<>.sort(by:)(v139);

            v63 = v139[0];
            v64 = *(v139[0] + 2);
            if (v64)
            {
              v139[0] = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              v65 = 4;
              do
              {
                v66 = *&v63[v65];
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v65 += 2;
                --v64;
              }

              while (v64);

              v67 = v139[0];
              v52 = v137;
            }

            else
            {

              v67 = _swiftEmptyArrayStorage;
            }

            (a10)(v67);

            swift_beginAccess();
            *(v52 + 16) = _swiftEmptyArrayStorage;

            goto LABEL_75;
          }

LABEL_74:

LABEL_75:

LABEL_80:

LABEL_86:
          swift_weakDestroy();

          goto LABEL_87;
        }
      }

      if (v62 == _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_25;
      }

      goto LABEL_74;
    }
  }

  v33 = one-time initialization token for assets;

  v34 = v137;

  if (v33 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static MOAngelLogger.assets);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v140[0] = v39;
    *v38 = 136315138;
    v40 = (*(*a4 + 312))();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v140);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);

    v34 = v137;
    v15 = a9;
  }

  swift_beginAccess();
  v43 = *(a8 + 16);
  v44 = v43 + 1;
  if (__OFADD__(v43, 1))
  {
    __break(1u);
LABEL_69:
    if (v44 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_14;
    }

    goto LABEL_70;
  }

  *(a8 + 16) = v44;
  if (v15 >> 62)
  {
    goto LABEL_69;
  }

  if (v44 == *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    swift_beginAccess();
    v139[0] = *(v34 + 16);
    swift_bridgeObjectRetain_n();
    specialized MutableCollection<>.sort(by:)(v139);

    v45 = v139[0];
    v46 = *(v139[0] + 2);
    if (v46)
    {
      v139[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v47 = 4;
      do
      {
        v48 = *&v45[v47];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v47 += 2;
        --v46;
      }

      while (v46);

      v49 = v139[0];
    }

    else
    {

      v49 = _swiftEmptyArrayStorage;
    }

    (a10)(v49);

    swift_beginAccess();
    *(v34 + 16) = _swiftEmptyArrayStorage;

    goto LABEL_71;
  }

LABEL_70:

LABEL_71:

LABEL_87:

  swift_bridgeObjectRelease_n();
}

void specialized MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:)(uint64_t a1, int a2, void *a3, int a4, void *a5, void *a6, void *a7, unint64_t a8, void (*a9)(double *, __n128), void *a10)
{
  v499 = a8;
  v500 = a1;
  v503 = a5;
  v519 = a2;
  v522 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v458 - v16;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v505 = *(v18 - 8);
  v506 = v18;
  __chkstk_darwin(v18);
  v486 = &v458 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = type metadata accessor for DispatchQoS();
  v485 = *(v504 - 1);
  __chkstk_darwin(v504);
  v484 = &v458 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v516 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v518 = &v458 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v525 = &v458 - v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  LODWORD(v507) = a4;
  *(v25 + 24) = a4;
  *(v25 + 32) = v503;
  *(v25 + 40) = a6;
  v508 = a6;
  v509 = a9;
  v26 = v499;
  *(v25 + 48) = a7;
  *(v25 + 56) = v26;
  *(v25 + 64) = a9;
  *(v25 + 72) = a10;
  v27 = swift_allocObject();
  *(v27 + 16) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
  *(v27 + 24) = v25;
  v496 = v27;
  type metadata accessor for MOWorkoutGroupAssetReference(0);
  v501 = a3;
  v28 = a7;
  v29 = v26;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v30 = swift_dynamicCastClass();
  v492 = v25;
  v493 = a10;
  if (!v30)
  {
    v63 = one-time initialization token for assets;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    if (v63 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static MOAngelLogger.assets);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v501;
      *&aBlock = v68;
      *v67 = 136315138;
      v70 = (*(*v69 + 312))();
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &aBlock);

      *(v67 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);

      v29 = v499;
    }

    swift_beginAccess();
    v73 = v28[2];
    v74 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
    }

    else
    {
      v28[2] = v74;
      if (!(v29 >> 62))
      {
        if (v74 == *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_41:
          v75 = v503;
          swift_beginAccess();
          v540 = v75[2];
          swift_bridgeObjectRetain_n();
          v76 = v522;
          specialized MutableCollection<>.sort(by:)(&v540);
          if (v76)
          {
            goto LABEL_174;
          }

          v77 = v540;
          v78 = *(v540 + 2);
          if (v78)
          {
            v540 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v79 = 4;
            do
            {
              v80 = *&v77[v79];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v79 += 2;
              --v78;
            }

            while (v78);

            v81 = v540;
          }

          else
          {

            v81 = _swiftEmptyArrayStorage;
          }

          (v509)(v81);

          v159 = v503;
          swift_beginAccess();
          v159[2] = _swiftEmptyArrayStorage;

          goto LABEL_154;
        }

LABEL_153:

LABEL_154:

        swift_bridgeObjectRelease_n();

        return;
      }
    }

    if (v74 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_41;
    }

    goto LABEL_153;
  }

  v521 = v21;
  v31 = *(*v30 + 344);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  v33 = v31(v32);
  v34 = v33;
  if (v33 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v488 = v28;
  v36 = v521;
  if (v35)
  {
    v37 = 0;
    v527 = v34 & 0xC000000000000001;
    v526 = v34 & 0xFFFFFFFFFFFFFF8;
    v520 = @"MOWorkoutMetaDataKeyWorkoutID";
    v517 = (v516 + 48);
    v515 = (v516 + 32);
    v38 = (v516 + 56);
    v502 = _swiftEmptyArrayStorage;
    v524 = v34;
    v523 = v35;
    while (1)
    {
      if (v527)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v526 + 16))
        {
          goto LABEL_121;
        }

        v39 = *(v34 + 8 * v37 + 32);
      }

      v40 = v39;
      v41 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v42 = [v39 data];
      if (!v42)
      {
        break;
      }

      v43 = v42;
      v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&aBlock = 0;
      v49 = [v47 JSONObjectWithData:isa options:0 error:&aBlock];

      if (!v49)
      {
        v58 = aBlock;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data._Representation(v44, v46);

        v522 = 0;
        goto LABEL_23;
      }

      v50 = aBlock;
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data._Representation(v44, v46);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v51 = *&v531[0];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v51 + 16))
      {

LABEL_21:

LABEL_22:

LABEL_23:
        v36 = v521;
        v34 = v524;
        v35 = v523;
LABEL_24:
        (*v38)(v17, 1, 1, v36);
        goto LABEL_25;
      }

      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v53);
      v56 = v55;

      if ((v56 & 1) == 0)
      {
        goto LABEL_21;
      }

      v57 = *(*(v51 + 56) + 8 * v54);
      swift_unknownObjectRetain();

      *&v531[0] = v57;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      UUID.init(uuidString:)();

      v36 = v521;
      if ((*v517)(v17, 1, v521) != 1)
      {
        v59 = *v515;
        (*v515)(v518, v17, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v502 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v502 + 2) + 1, 1, v502);
        }

        v61 = *(v502 + 2);
        v60 = *(v502 + 3);
        if (v61 >= v60 >> 1)
        {
          v502 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v502);
        }

        v62 = v502;
        *(v502 + 2) = v61 + 1;
        v59(v62 + ((*(v516 + 80) + 32) & ~*(v516 + 80)) + *(v516 + 72) * v61, v518, v36);
        v34 = v524;
        v35 = v523;
        goto LABEL_26;
      }

      v34 = v524;
      v35 = v523;
LABEL_25:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_26:
      ++v37;
      if (v41 == v35)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_24;
  }

  v502 = _swiftEmptyArrayStorage;
LABEL_47:

  v82 = swift_allocObject();
  v518 = v82;
  *(v82 + 16) = _swiftEmptyArrayStorage;
  v523 = (v82 + 16);
  v83 = swift_allocObject();
  v514 = v83;
  *(v83 + 16) = 0;
  v475 = (v83 + 16);
  v84 = swift_allocObject();
  v495 = v84;
  *(v84 + 16) = 0;
  v470 = (v84 + 16);
  v85 = swift_allocObject();
  v517 = v85;
  *(v85 + 16) = 0;
  v472 = (v85 + 16);
  v86 = swift_allocObject();
  v515 = v86;
  *(v86 + 16) = 0;
  v474 = (v86 + 16);
  v87 = swift_allocObject();
  v494 = v87;
  *(v87 + 16) = 0;
  v527 = v87 + 16;
  v88 = swift_allocObject();
  v520 = v88;
  *(v88 + 16) = 0;
  v471 = (v88 + 16);
  v89 = swift_allocObject();
  v498 = v89;
  *(v89 + 16) = 0;
  v483 = (v89 + 16);
  *(v89 + 24) = 0;
  v90 = swift_allocObject();
  v497 = v90;
  *(v90 + 16) = 0;
  v481 = (v90 + 16);
  *(v90 + 24) = 1;
  v91 = swift_allocObject();
  *(v91 + 16) = 0;
  v482 = (v91 + 16);
  v92 = [objc_allocWithZone(HKQuantityType) initWithIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
  v490 = [objc_allocWithZone(HKQuantityType) initWithIdentifier:HKQuantityTypeIdentifierHeartRate];
  v93 = swift_allocObject();
  *(v93 + 16) = _swiftEmptyArrayStorage;
  v476 = (v93 + 16);
  v38 = swift_allocObject();
  v38[2] = _swiftEmptyArrayStorage;
  v477 = v38 + 2;
  v524 = swift_allocObject();
  *(v524 + 16) = _swiftEmptyArrayStorage;
  v94 = swift_allocObject();
  v94[2] = _swiftEmptyArrayStorage;
  v478 = v94 + 2;
  v95 = v92;
  v96 = swift_allocObject();
  *(v96 + 16) = _swiftEmptyArrayStorage;
  v479 = (v96 + 16);
  v97 = swift_allocObject();
  *(v97 + 16) = 0;
  v480 = (v97 + 16);
  v98 = swift_allocObject();
  v99 = v502;
  *(v98 + 16) = v494;
  *(v98 + 24) = v99;
  *(v98 + 32) = 2;
  *(v98 + 40) = v520;
  *(v98 + 48) = v95;
  v100 = v497;
  v101 = v498;
  *(v98 + 56) = v495;
  *(v98 + 64) = v101;
  *(v98 + 72) = v100;
  *(v98 + 80) = v91;
  v491 = v91;
  v102 = v514;
  v104 = v517;
  v103 = v518;
  *(v98 + 88) = v515;
  *(v98 + 96) = v104;
  *(v98 + 104) = v102;
  *(v98 + 112) = v103;
  v512 = v98;
  v513 = v93;
  *(v98 + 120) = v93;
  *(v98 + 128) = v38;
  v526 = v38;
  *(v98 + 136) = v94;
  *(v98 + 144) = v96;
  *(v98 + 152) = v97;
  *(v98 + 160) = v519;
  *(v98 + 168) = v500;
  *(v98 + 176) = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
  v105 = v496;
  *(v98 + 184) = v496;
  v489 = v97;
  v487 = v95;
  v510 = v94;
  v511 = v96;
  v502 = v99;
  if (v95)
  {
    v106 = v98;
    v38 = v102;
    v473 = objc_allocWithZone(HKHealthStore);
    v107 = v95;

    v108 = v107;

    v109 = v515;

    v110 = v520;

    v94 = [v473 init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A4A70;
    *(inited + 32) = v108;
    v112 = v108;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo14HKQuantityTypeC_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType, HKQuantityType_ptr);
    lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    v113 = Set._bridgeToObjectiveC()().super.isa;

    v114 = swift_allocObject();
    v114[2] = v112;
    v114[3] = v110;
    v114[4] = partial apply for closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:);
    v114[5] = v106;
    v537 = partial apply for closure #3 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:);
    v538 = v114;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v535 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKQuantityType : HKUnit], @guaranteed Error?) -> ();
    v536 = &block_descriptor_305;
    v115 = _Block_copy(&aBlock);
    v116 = v112;

    v117 = &selRef_data;
    [v94 preferredUnitsForQuantityTypes:v113 completion:v115];
    _Block_release(v115);

    v95 = v490;
    v118 = v527;
    if (!v490)
    {
      goto LABEL_57;
    }

LABEL_49:
    v119 = objc_allocWithZone(HKHealthStore);
    v120 = v95;
    v121 = [v119 init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v122 = swift_initStackObject();
    *(v122 + 16) = xmmword_1002A4A70;
    *(v122 + 32) = v120;
    v123 = v120;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo14HKQuantityTypeC_Tt0g5Tf4g_n(v122);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType, HKQuantityType_ptr);
    lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    v124 = Set._bridgeToObjectiveC()().super.isa;

    v125 = swift_allocObject();
    v126 = v489;
    v125[2] = v123;
    v125[3] = v126;
    v127 = v512;
    v125[4] = partial apply for closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:);
    v125[5] = v127;
    v537 = partial apply for closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:);
    v538 = v125;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v535 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKQuantityType : HKUnit], @guaranteed Error?) -> ();
    v536 = &block_descriptor_291;
    v128 = _Block_copy(&aBlock);

    v129 = v123;

    [v121 v117[219]];
    _Block_release(v128);

    v94 = v525;
    v130 = v520;
LABEL_110:
    v140 = v502;
LABEL_111:
    v375 = *(v140 + 2);
    v376 = v521;
    v377 = v495;
    v378 = v526;
    v379 = v519;
    if (v375)
    {
      v509 = objc_opt_self();
      v380 = objc_opt_self();
      v507 = *(v516 + 16);
      v508 = v380;
      v381 = v502 + ((*(v516 + 80) + 32) & ~*(v516 + 80));
      v382 = *(v516 + 72);
      v505 = &v535;
      v506 = v382;
      v516 += 16;
      v504 = (v516 - 8);
      do
      {
        v527 = v381;
        v523 = v375;
        v507(v94, v381, v376);
        v522 = [objc_allocWithZone(HKHealthStore) init];
        v383 = v130;
        v384 = swift_allocObject();
        v385 = v510;
        *(v384 + 16) = v513;
        *(v384 + 24) = v385;
        *(v384 + 32) = v511;
        *(v384 + 40) = v378;
        v386 = v109;
        v387 = v517;
        v388 = v518;
        *(v384 + 48) = v524;
        *(v384 + 56) = v379;
        *(v384 + 64) = v388;
        *(v384 + 72) = partial apply for closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:);
        v389 = v514;
        *(v384 + 80) = v512;
        *(v384 + 88) = v389;
        *(v384 + 96) = v383;
        *(v384 + 104) = v377;
        *(v384 + 112) = v387;
        *(v384 + 120) = v386;

        v390 = v515;

        v391 = v523;

        v392 = UUID._bridgeToObjectiveC()().super.isa;
        v393 = [v509 predicateForObjectWithUUID:v392];

        v394 = [v508 workoutType];
        v395 = swift_allocObject();
        *(v395 + 16) = partial apply for closure #5 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:);
        *(v395 + 24) = v384;
        v396 = v390;
        v397 = objc_allocWithZone(HKSampleQuery);
        v537 = partial apply for closure #1 in MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:);
        v538 = v395;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v535 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
        v536 = &block_descriptor_277;
        v398 = _Block_copy(&aBlock);

        v399 = [v397 initWithSampleType:v394 predicate:v393 limit:1 sortDescriptors:0 resultsHandler:v398];

        v400 = v398;
        v376 = v521;
        v379 = v519;
        _Block_release(v400);

        v401 = v522;
        [v522 executeQuery:v399];

        v94 = v525;

        v109 = v396;
        v378 = v526;
        v130 = v520;
        (*v504)(v94, v376);

        v381 = (v527 + v506);
        v375 = (v391 - 1);
      }

      while (v375);
    }

    goto LABEL_154;
  }

  v110 = v105;
  v118 = v527;
  swift_beginAccess();
  v131 = *v118 + 1;
  if (__OFADD__(*v118, 1))
  {
    __break(1u);
    goto LABEL_156;
  }

  *v118 = v131;
  v132 = *(v502 + 2);
  v109 = v515;
  v94 = v491;
  if (v132 + 0x4000000000000000 < 0)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  v133 = 2 * v132;
  v134 = __OFADD__(v133, 2);
  v135 = v133 + 2;
  if (v134)
  {
    goto LABEL_158;
  }

  if (v131 == v135)
  {
    v136 = v474;
    swift_beginAccess();
    v137 = *v136;
    if (v137 <= 0)
    {
      v10 = 0.0;
    }

    else
    {
      v138 = v472;
      swift_beginAccess();
      v10 = *v138 / v137;
    }

    v160 = v497;
    v161 = v498;
    v110 = v513;
    v38 = v526;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMR);
    v94 = swift_allocObject();
    *(v94 + 1) = xmmword_1002A7010;
    v469 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalTime;
    v94[4] = MOSuggestionAssetMetadataKeyWorkoutGroupTotalTime;
    v473 = v94 + 4;
    v162 = v475;
    swift_beginAccess();
    v163 = *v162;
    v95 = &type metadata for Double;
    v94[5] = v163;
    v164 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCalories;
    v94[8] = &type metadata for Double;
    v94[9] = v164;
    v467 = v164;
    swift_beginAccess();
    v165 = *(v160 + 16);
    LOBYTE(v160) = *(v160 + 24);
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v94[10] = v165;
    *(v94 + 88) = v160;
    v167 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCaloriesQuantity;
    v94[13] = v166;
    v94[14] = v167;
    v466 = v167;
    v168 = v482;
    swift_beginAccess();
    v169 = *v168;
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
    v468 = v169;
    v94[15] = v169;
    v171 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCaloriesWithUnit;
    v94[18] = v170;
    v94[19] = v171;
    v465 = v171;
    swift_beginAccess();
    v172 = *(v161 + 16);
    v173 = *(v161 + 24);
    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v94[20] = v172;
    v94[21] = v173;
    v175 = MOSuggestionAssetMetadataKeyWorkoutGroupCount;
    v94[23] = v174;
    v94[24] = v175;
    v464 = v175;
    v176 = v523;
    swift_beginAccess();
    if (!(*v176 >> 62))
    {
      v177 = *((*v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_70;
    }

    goto LABEL_161;
  }

  v95 = v490;
  v117 = &selRef_data;
  if (v490)
  {
    goto LABEL_49;
  }

  while (1)
  {
LABEL_57:
    swift_beginAccess();
    v139 = *v118 + 1;
    if (__OFADD__(*v118, 1))
    {
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    *v118 = v139;
    v140 = v502;
    v141 = *(v502 + 2);
    v94 = v525;
    if (v141 + 0x4000000000000000 < 0)
    {
      goto LABEL_159;
    }

    v142 = 2 * v141;
    v134 = __OFADD__(v142, 2);
    v143 = v142 + 2;
    if (!v134)
    {
      v130 = v520;
      if (v139 != v143)
      {
        goto LABEL_111;
      }

      v144 = v471;
      swift_beginAccess();
      v145 = *v144;
      v146 = v487;
      if (v145 && v487)
      {
        v147 = objc_allocWithZone(HKQuantityFormattingParameters);
        v148 = v146;
        v149 = v145;
        v150 = [v147 init];
        [v150 setPreferredUnit:v149];
        [v150 setPrecision:0];
        v151 = v470;
        swift_beginAccess();
        v152 = [objc_opt_self() quantityWithUnit:v149 doubleValue:*v151];
        v153 = [v152 localizedStringForType:v148 parameters:v150];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.uppercased()();

        v154 = String._bridgeToObjectiveC()();

        v155 = [v154 trimmedString];

        if (v155)
        {
          v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v158 = v157;
        }

        else
        {
          v156 = 0;
          v158 = 0;
        }

        swift_beginAccess();
        v225 = v498;
        *(v498 + 16) = v156;
        *(v225 + 24) = v158;

        [v152 doubleValueForUnit:v149];
        v227 = v226;

        swift_beginAccess();
        v228 = v497;
        *(v497 + 16) = v227;
        *(v228 + 24) = 0;
        v229 = v482;
        swift_beginAccess();
        v230 = *v229;
        *v229 = v152;
      }

      v231 = v474;
      swift_beginAccess();
      v232 = *v231;
      if (v232 < 1)
      {
        v234 = 0.0;
      }

      else
      {
        v233 = v472;
        swift_beginAccess();
        v234 = *v233 / v232;
      }

      v235 = v498;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_yptGMR);
      v236 = swift_allocObject();
      *(v236 + 16) = xmmword_1002A7010;
      v237 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalTime;
      *(v236 + 32) = MOSuggestionAssetMetadataKeyWorkoutGroupTotalTime;
      v238 = v475;
      swift_beginAccess();
      *(v236 + 40) = *v238;
      v239 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCalories;
      *(v236 + 64) = &type metadata for Double;
      *(v236 + 72) = v239;
      v475 = v239;
      swift_beginAccess();
      v240 = *(v497 + 16);
      v241 = *(v497 + 24);
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      *(v236 + 80) = v240;
      *(v236 + 88) = v241;
      v243 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCaloriesQuantity;
      *(v236 + 104) = v242;
      *(v236 + 112) = v243;
      v481 = v243;
      v244 = v482;
      swift_beginAccess();
      v245 = *v244;
      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
      *(v236 + 120) = v245;
      v247 = MOSuggestionAssetMetadataKeyWorkoutGroupTotalCaloriesWithUnit;
      *(v236 + 144) = v246;
      *(v236 + 152) = v247;
      v473 = v247;
      swift_beginAccess();
      v249 = *(v235 + 16);
      v248 = *(v235 + 24);
      v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      *(v236 + 160) = v249;
      *(v236 + 168) = v248;
      v472 = v248;
      v251 = MOSuggestionAssetMetadataKeyWorkoutGroupCount;
      *(v236 + 184) = v250;
      *(v236 + 192) = v251;
      v483 = v251;
      v252 = v523;
      swift_beginAccess();
      v253 = *v252;
      v254 = *v252 >> 62;
      v527 = v236 + 32;
      v474 = v237;
      v482 = v245;
      if (v254)
      {
        v255 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v255 = *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v236 + 200) = v255;
      v256 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrate;
      v471 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrate;
      *(v236 + 224) = &type metadata for Int;
      *(v236 + 232) = v256;
      *(v236 + 240) = v234;
      v257 = MOSuggestionAssetMetadataKeyWorkoutGroupTypes;
      v470 = MOSuggestionAssetMetadataKeyWorkoutGroupTypes;
      *(v236 + 264) = &type metadata for Double;
      *(v236 + 272) = v257;
      v258 = v476;
      swift_beginAccess();
      v259 = *v258;
      v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      *(v236 + 280) = v259;
      v261 = MOSuggestionAssetMetadataKeyWorkoutGroupTypeEnumValues;
      *(v236 + 304) = v260;
      *(v236 + 312) = v261;
      v262 = v477;
      swift_beginAccess();
      v263 = *v262;
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
      *(v236 + 320) = v263;
      v265 = MOSuggestionAssetMetadataKeyWorkoutGroupStartDates;
      *(v236 + 344) = v264;
      *(v236 + 352) = v265;
      v266 = v478;
      swift_beginAccess();
      v267 = *v266;
      v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
      *(v236 + 360) = v267;
      v269 = MOSuggestionAssetMetadataKeyWorkoutGroupEndDates;
      *(v236 + 384) = v268;
      *(v236 + 392) = v269;
      v270 = v479;
      swift_beginAccess();
      v271 = *v270;
      *(v236 + 424) = v268;
      *(v236 + 400) = v271;

      v272 = v474;
      v273 = v475;
      v274 = v481;
      v275 = v473;
      v276 = v483;
      v277 = v471;
      v278 = v470;

      v279 = v261;

      v280 = v265;

      v281 = v269;

      v282 = v482;
      v283 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(v236);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOSuggestionAssetMetadataKeya_yptMd, &_sSo28MOSuggestionAssetMetadataKeya_yptMR);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v530 = v283;
      v284 = v480;
      swift_beginAccess();
      v285 = *v284;
      v286 = v501;
      v287 = v488;
      if (*v284 && v234 > 0.0)
      {
        v288 = objc_allocWithZone(HKHealthStore);
        v289 = v285;
        v290 = [v288 init];
        v291 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore:v290];

        v292 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v291];
        if (v292)
        {
          v293 = [objc_opt_self() quantityWithUnit:v289 doubleValue:v234];
          v294 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrateQuantity;
          v536 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantity, HKQuantity_ptr);
          *&aBlock = v293;
          outlined init with take of Any(&aBlock, v531);
          v295 = v293;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v532[0] = v283;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v531, v294, isUniquelyReferenced_nonNull_native);
          v530 = v532[0];
          v297 = MOSuggestionAssetMetadataKeyWorkoutAverageHeartRateWithUnit;
          v298 = [v292 localizedStringWithHeartRate:v295 unitStyle:1];
          if (!v298)
          {
            goto LABEL_173;
          }

          v299 = v298;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          String.uppercased()();

          v300 = String._bridgeToObjectiveC()();

          v301 = [v300 trimmedString];

          if (v301)
          {
            v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v304 = v303;

            v536 = &type metadata for String;
            *&aBlock = v302;
            *(&aBlock + 1) = v304;
            outlined init with take of Any(&aBlock, v531);
            v305 = v530;
            v306 = swift_isUniquelyReferenced_nonNull_native();
            v532[0] = v305;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v531, v297, v306);

            v530 = v532[0];
          }

          else
          {
            specialized Dictionary._Variant.removeValue(forKey:)(&aBlock);

            outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&aBlock, &_sypSgMd, &_sypSgMR);
          }
        }

        else
        {
        }
      }

      if (v519 - 4 < 7 || v519 == 2)
      {
        goto LABEL_105;
      }

      if (v519 == 3)
      {
        v402 = MOSuggestionAssetMetadataKeyWorkoutGroupIcons;
        v403 = *v523;
        v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIImageCGMd, &_sSaySo7UIImageCGMR);
        *&aBlock = v403;
        outlined init with take of Any(&aBlock, v531);

        v404 = v530;
        v405 = swift_isUniquelyReferenced_nonNull_native();
        v532[0] = v404;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v531, v402, v405);
        v530 = v532[0];
LABEL_105:
        v347 = *v523;
        v348 = one-time initialization token for exerciseGreen;

        if (v348 != -1)
        {
          swift_once();
        }

        v349 = static MOSuggestionTheme.Colors.exerciseGreen;
        v350 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];
        v351 = [v349 colorWithAlphaComponent:0.18];
        v352 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
        v527 = v352;
        v353 = objc_allocWithZone(v352);
        *&v353[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
        v529.receiver = v353;
        v529.super_class = v352;
        v354 = objc_msgSendSuper2(&v529, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
        v523 = v354;
        v355 = static OS_dispatch_queue.main.getter();
        v356 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v357 = swift_allocObject();
        v357[2] = v347;
        v357[3] = v350;
        v357[4] = v351;
        v357[5] = v349;
        v357[6] = v356;
        v537 = closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)partial apply;
        v538 = v357;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v535 = thunk for @escaping @callee_guaranteed () -> ();
        v536 = &block_descriptor_285;
        v358 = _Block_copy(&aBlock);
        v359 = v350;
        v360 = v351;
        v361 = v349;

        v362 = v484;
        static DispatchQoS.unspecified.getter();
        *&aBlock = _swiftEmptyArrayStorage;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v363 = v486;
        v364 = v506;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v358);

        v365 = v523;
        (v505[1])(v363, v364);
        (*(v485 + 8))(v362, v504);
        v366 = v365;
        v367 = [objc_allocWithZone(MOSuggestionAsset) init:v365 type:MOSuggestionAssetsTypeWorkoutGroup contentClassType:swift_getObjCClassFromMetadata()];
        (*(*v500 + 288))();
        v368 = String._bridgeToObjectiveC()();

        [v367 addIdentifier:v368];

        specialized _dictionaryUpCast<A, B, C, D>(_:)(v530);

        v369 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v367 addMetadata:v369];

        v370 = v501;

        v371 = v503;

        v372 = v488;

        v373 = v499;

        v374 = v367;
        closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v367, v370, v507, v371, v508, v372, v373, v509);

        goto LABEL_108;
      }

      v406 = [objc_opt_self() mainScreen];
      [v406 scale];
      v408 = v407;

      v410 = specialized static MOSuggestionAssetSnowglobeEffect.imageFor(images:targetSize:)(v409, v408 * 300.0, v408 * 300.0);

      if (v410)
      {
        v411 = MOSuggestionAssetsTypeWorkoutGroup;
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
        v412 = [objc_allocWithZone(MOSuggestionAsset) init:v410 type:v411 contentClassType:swift_getObjCClassFromMetadata()];
        (*(*v500 + 288))();
        v413 = String._bridgeToObjectiveC()();

        [v412 addIdentifier:v413];

        specialized _dictionaryUpCast<A, B, C, D>(_:)(v530);

        v414 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v412 addMetadata:v414];

        v415 = v503;

        v416 = v499;

        v417 = v493;

        specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLIfNecessary(asset:cacheType:completion:)(v412, v519, v286, v507, v415, v508, v287, v416, v509, v417);

LABEL_108:
        v94 = v525;
        v109 = v515;
        v130 = v520;
LABEL_109:

        goto LABEL_110;
      }

      v435 = one-time initialization token for assets;

      v436 = v287;

      v437 = v499;

      v438 = v520;
      if (v435 != -1)
      {
        swift_once();
      }

      v439 = type metadata accessor for Logger();
      __swift_project_value_buffer(v439, static MOAngelLogger.assets);

      v440 = Logger.logObject.getter();
      v441 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v440, v441))
      {
        v442 = swift_slowAlloc();
        v443 = swift_slowAlloc();
        *&aBlock = v443;
        *v442 = 136315138;
        v444 = (*(*v286 + 312))();
        v446 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v444, v445, &aBlock);

        *(v442 + 4) = v446;
        _os_log_impl(&_mh_execute_header, v440, v441, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v442, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v443);

        v437 = v499;
      }

      v109 = v515;
      swift_beginAccess();
      v447 = *(v436 + 16);
      v448 = v447 + 1;
      if (__OFADD__(v447, 1))
      {
        __break(1u);
      }

      else
      {
        *(v436 + 16) = v448;
        if (!(v437 >> 62))
        {
          if (v448 == *((v437 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_141:
            v449 = v503;
            swift_beginAccess();
            *&aBlock = v449[2];
            swift_bridgeObjectRetain_n();
            v450 = v522;
            specialized MutableCollection<>.sort(by:)(&aBlock);
            if (v450)
            {
              goto LABEL_175;
            }

            v451 = aBlock;
            v452 = *(aBlock + 16);
            if (v452)
            {
              *&aBlock = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              v453 = 32;
              do
              {
                v454 = *(v451 + v453);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v453 += 16;
                --v452;
              }

              while (v452);

              v455 = aBlock;
              v438 = v520;
            }

            else
            {

              v455 = _swiftEmptyArrayStorage;
            }

            (v509)(v455);

            v457 = v503;
            swift_beginAccess();
            v457[2] = _swiftEmptyArrayStorage;

            goto LABEL_171;
          }

LABEL_170:

LABEL_171:

          v94 = v525;
          v130 = v438;
          goto LABEL_109;
        }
      }

      if (v448 == _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_141;
      }

      goto LABEL_170;
    }

LABEL_160:
    __break(1u);
LABEL_161:
    v177 = _CocoaArrayWrapper.endIndex.getter();
LABEL_70:
    v178 = v510;
    v94[25] = v177;
    v179 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrate;
    v463 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrate;
    v94[28] = &type metadata for Int;
    v94[29] = v179;
    *(v94 + 30) = v10;
    v180 = MOSuggestionAssetMetadataKeyWorkoutGroupTypes;
    v462 = MOSuggestionAssetMetadataKeyWorkoutGroupTypes;
    v94[33] = v95;
    v94[34] = v180;
    swift_beginAccess();
    v460 = *(v110 + 16);
    v181 = v460;
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v94[35] = v181;
    v183 = MOSuggestionAssetMetadataKeyWorkoutGroupTypeEnumValues;
    v461 = MOSuggestionAssetMetadataKeyWorkoutGroupTypeEnumValues;
    v94[38] = v182;
    v94[39] = v183;
    swift_beginAccess();
    v458 = v38[2];
    v184 = v458;
    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
    v94[40] = v184;
    v186 = MOSuggestionAssetMetadataKeyWorkoutGroupStartDates;
    v459 = MOSuggestionAssetMetadataKeyWorkoutGroupStartDates;
    v94[43] = v185;
    v94[44] = v186;
    swift_beginAccess();
    v187 = v178[2];
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    v94[45] = v187;
    v189 = MOSuggestionAssetMetadataKeyWorkoutGroupEndDates;
    v94[48] = v188;
    v94[49] = v189;
    swift_beginAccess();
    v190 = *(v511 + 16);
    v94[53] = v188;
    v94[50] = v190;

    v191 = v489;

    v192 = v469;
    v193 = v467;
    v194 = v466;
    v195 = v465;
    v196 = v464;
    v197 = v463;
    v198 = v462;

    v199 = v461;

    v200 = v459;

    v201 = v189;

    v202 = v468;
    v203 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(v94);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOSuggestionAssetMetadataKeya_yptMd, &_sSo28MOSuggestionAssetMetadataKeya_yptMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v539[0] = v203;
    swift_beginAccess();
    v204 = *(v191 + 16);
    v38 = v501;
    v205 = v488;
    if (!v204 || v10 <= 0.0)
    {
      goto LABEL_92;
    }

    v206 = objc_allocWithZone(HKHealthStore);
    v207 = v204;
    v208 = [v206 init];
    v209 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore:v208];

    v210 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v209];
    if (v210)
    {
      break;
    }

LABEL_92:
    if (v519 - 4 < 7 || v519 == 2)
    {
      goto LABEL_93;
    }

    if (v519 == 3)
    {
      v332 = MOSuggestionAssetMetadataKeyWorkoutGroupIcons;
      v333 = *v523;
      v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIImageCGMd, &_sSaySo7UIImageCGMR);
      *&aBlock = v333;
      outlined init with take of Any(&aBlock, v531);

      v334 = v539[0];
      v335 = swift_isUniquelyReferenced_nonNull_native();
      v533[0] = v334;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v531, v332, v335);
      v539[0] = v533[0];
LABEL_93:
      v307 = *v523;
      v308 = one-time initialization token for exerciseGreen;

      if (v308 != -1)
      {
        swift_once();
      }

      v309 = static MOSuggestionTheme.Colors.exerciseGreen;
      v10 = 0.18;
      v310 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];
      v311 = [v309 colorWithAlphaComponent:0.18];
      v312 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
      v473 = v312;
      v313 = objc_allocWithZone(v312);
      *&v313[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
      v528.receiver = v313;
      v528.super_class = v312;
      v314 = objc_msgSendSuper2(&v528, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
      v469 = v314;
      v315 = static OS_dispatch_queue.main.getter();
      v316 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v317 = swift_allocObject();
      v317[2] = v307;
      v317[3] = v310;
      v317[4] = v311;
      v317[5] = v309;
      v317[6] = v316;
      v537 = closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)partial apply;
      v538 = v317;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v535 = thunk for @escaping @callee_guaranteed () -> ();
      v536 = &block_descriptor_299;
      v318 = _Block_copy(&aBlock);
      v319 = v310;
      v320 = v311;
      v321 = v309;

      v322 = v484;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v323 = v486;
      v324 = v506;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v318);

      v325 = v469;
      (v505[1])(v323, v324);
      (*(v485 + 8))(v322, v504);
      v38 = v325;
      v326 = [objc_allocWithZone(MOSuggestionAsset) init:v325 type:MOSuggestionAssetsTypeWorkoutGroup contentClassType:swift_getObjCClassFromMetadata()];
      (*(*v500 + 288))();
      v327 = String._bridgeToObjectiveC()();

      [v326 addIdentifier:v327];

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v539[0]);

      v328 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v326 addMetadata:v328];

      v329 = v501;

      v330 = v503;

      v331 = v488;

      v110 = v499;

      v94 = v326;
      closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v326, v329, v507, v330, v508, v331, v110, v509);

      goto LABEL_96;
    }

    v336 = [objc_opt_self() mainScreen];
    [v336 scale];
    v338 = v337;

    v10 = v338 * 300.0;

    v340 = specialized static MOSuggestionAssetSnowglobeEffect.imageFor(images:targetSize:)(v339, v10, v10);

    if (v340)
    {
      v341 = MOSuggestionAssetsTypeWorkoutGroup;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
      v342 = [objc_allocWithZone(MOSuggestionAsset) init:v340 type:v341 contentClassType:swift_getObjCClassFromMetadata()];
      (*(*v500 + 288))();
      v343 = String._bridgeToObjectiveC()();

      [v342 addIdentifier:v343];

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v539[0]);

      v344 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v342 addMetadata:v344];

      v94 = v503;

      v345 = v499;

      v346 = v493;

      v110 = v492;

      specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLIfNecessary(asset:cacheType:completion:)(v342, v519, v38, v507, v94, v508, v205, v345, v509, v346);

LABEL_96:
      v109 = v515;
      v95 = v490;
      v118 = v527;
      v117 = &selRef_data;

      if (v95)
      {
        goto LABEL_49;
      }
    }

    else
    {
LABEL_122:

      v418 = one-time initialization token for assets;

      v419 = v499;

      if (v418 != -1)
      {
        swift_once();
      }

      v420 = type metadata accessor for Logger();
      __swift_project_value_buffer(v420, static MOAngelLogger.assets);

      v421 = Logger.logObject.getter();
      v422 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v421, v422))
      {
        v423 = swift_slowAlloc();
        v424 = swift_slowAlloc();
        *&aBlock = v424;
        *v423 = 136315138;
        v425 = (*(*v38 + 312))();
        v427 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v425, v426, &aBlock);

        *(v423 + 4) = v427;
        _os_log_impl(&_mh_execute_header, v421, v422, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v423, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v424);

        v419 = v499;
      }

      v109 = v515;
      v118 = v527;
      v117 = &selRef_data;
      v110 = v488;
      swift_beginAccess();
      v428 = *(v110 + 16);
      v94 = (v428 + 1);
      if (__OFADD__(v428, 1))
      {
        __break(1u);
      }

      else
      {
        *(v110 + 16) = v94;
        if (!(v419 >> 62))
        {
          if (v94 == *((v419 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          goto LABEL_165;
        }
      }

      if (v94 == _CocoaArrayWrapper.endIndex.getter())
      {
LABEL_129:
        v429 = v503;
        swift_beginAccess();
        *&aBlock = v429[2];
        swift_bridgeObjectRetain_n();
        v430 = v522;
        specialized MutableCollection<>.sort(by:)(&aBlock);
        v522 = v430;
        if (v430)
        {
          goto LABEL_175;
        }

        v431 = aBlock;
        v432 = *(aBlock + 16);
        if (v432)
        {
          *&aBlock = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v110 = 32;
          do
          {
            v433 = *(v431 + v110);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v110 += 16;
            --v432;
          }

          while (v432);

          v434 = aBlock;
          v109 = v515;
          v117 = &selRef_data;
        }

        else
        {

          v434 = _swiftEmptyArrayStorage;
        }

        (v509)(v434);

        v456 = v503;
        swift_beginAccess();
        v94 = v456[2];
        v456[2] = _swiftEmptyArrayStorage;

        v118 = v527;
        goto LABEL_166;
      }

LABEL_165:

LABEL_166:

      v95 = v490;

      if (v95)
      {
        goto LABEL_49;
      }
    }
  }

  v211 = [objc_opt_self() quantityWithUnit:v207 doubleValue:v10];
  v212 = MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrateQuantity;
  v536 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantity, HKQuantity_ptr);
  *&aBlock = v211;
  outlined init with take of Any(&aBlock, v531);
  v213 = v211;
  v214 = swift_isUniquelyReferenced_nonNull_native();
  v533[0] = v203;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v531, v212, v214);
  v539[0] = v533[0];
  v215 = MOSuggestionAssetMetadataKeyWorkoutAverageHeartRateWithUnit;
  v216 = [v210 localizedStringWithHeartRate:v213 unitStyle:1];
  if (v216)
  {
    v217 = v216;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.uppercased()();

    v218 = String._bridgeToObjectiveC()();

    v219 = [v218 trimmedString];

    if (v219)
    {
      v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v222 = v221;

      v536 = &type metadata for String;
      *&aBlock = v220;
      *(&aBlock + 1) = v222;
      outlined init with take of Any(&aBlock, v531);
      v223 = v539[0];
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v533[0] = v223;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v531, v215, v224);

      v539[0] = v533[0];
    }

    else
    {
      specialized Dictionary._Variant.removeValue(forKey:)(&aBlock);

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    goto LABEL_92;
  }

  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_173:

  swift_bridgeObjectRelease_n();

  __break(1u);
LABEL_174:

  __break(1u);
LABEL_175:

  __break(1u);
}

uint64_t specialized MOSuggestionAssetCacheManager.fetchAndCacheGenericMapSnapshots(_:cacheType:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(double *), uint64_t a11)
{
  v151 = a3;
  LODWORD(v156) = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v17 - 8);
  v155 = &v146 - v18;
  v154 = type metadata accessor for Date();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  v148 = a5;
  *(v20 + 24) = a5;
  *(v20 + 32) = a6;
  *(v20 + 40) = a7;
  v149 = a7;
  *(v20 + 48) = a8;
  *(v20 + 56) = a9;
  v158 = a10;
  *(v20 + 64) = a10;
  *(v20 + 72) = a11;
  v21 = swift_allocObject();
  *(v21 + 16) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
  *(v21 + 24) = v20;
  type metadata accessor for MOGenericMapAssetReference(0);
  v162 = a4;

  v161 = a6;

  v163 = a9;

  v160 = a11;

  v22 = swift_dynamicCastClass();
  v159 = v21;
  if (!v22)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    goto LABEL_8;
  }

  v23 = v22;
  type metadata accessor for MOMapLocation(0);
  v24 = *(*a1 + 216);
  swift_retain_n();
  swift_retain_n();
  v157 = a8;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v26 = v24(v25);
  v27 = MOMapLocation.__allocating_init(fromResource:)(v26);
  if (!v27)
  {

    a8 = v157;
LABEL_8:
    v35 = one-time initialization token for assets;

    v36 = a8;

    if (v35 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static MOAngelLogger.assets);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v162;
      v164[0] = v41;
      *v40 = 136315138;
      v43 = (*(*v42 + 312))();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v164);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    swift_beginAccess();
    v46 = *(v36 + 16);
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
    }

    else
    {
      *(v36 + 16) = v47;
      if (!(v163 >> 62))
      {
        if (v47 == *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_15:
          v48 = v161;
          swift_beginAccess();
          v166[0] = *(v48 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(v166);

          v49 = v166[0];
          v50 = *(v166[0] + 2);
          if (v50)
          {
            v166[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v51 = 4;
            do
            {
              v52 = *&v49[v51];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v51 += 2;
              --v50;
            }

            while (v50);

            v53 = v166[0];
          }

          else
          {

            v53 = _swiftEmptyArrayStorage;
          }

          v158(v53);

          v63 = v161;
          swift_beginAccess();
          *(v63 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_69;
        }

LABEL_68:

LABEL_69:

LABEL_70:

        goto LABEL_71;
      }
    }

    if (v47 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

  v147 = a1;
  v28 = *(*v27 + 536);
  v146 = v27;
  v150 = v28(v27);
  v29 = MOMapLocation.transferrableMetadata.getter();
  v30 = (*(*v23 + 344))();
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

LABEL_21:
    v55 = MOSuggestionAssetMetadataKeyMotionActivityTypeEnum;
    v56 = MOSuggestionAssetMotionActivityTypeRunning;
    type metadata accessor for MOSuggestionAssetMotionActivityType(0);
    v164[0] = v56;
    v165 = v57;
    v58 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = v29;
    v60 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v55, isUniquelyReferenced_nonNull_native);
    v61 = v167;
    v62 = v147;
    goto LABEL_31;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {

    goto LABEL_21;
  }

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  if (v64 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v66 != v67)
  {
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v68)
    {

      goto LABEL_29;
    }

    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;
    v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v147;
    if (v120 == v123 && v122 == v124)
    {

LABEL_53:
      v69 = MOSuggestionAssetMetadataKeyMotionActivityTypeEnum;
      v70 = &MOSuggestionAssetMotionActivityTypeRunningWalking;
      goto LABEL_30;
    }

    v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v126)
    {
      goto LABEL_53;
    }

    v127 = one-time initialization token for assets;

    if (v127 != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for Logger();
    __swift_project_value_buffer(v128, static MOAngelLogger.assets);

    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = v162;
      v164[0] = v132;
      *v131 = 136315138;
      v134 = (*(*v133 + 312))();
      v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v135, v164);

      *(v131 + 4) = v136;
      _os_log_impl(&_mh_execute_header, v129, v130, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v132);
    }

    v137 = v157;
    swift_beginAccess();
    v138 = *(v137 + 16);
    v139 = v138 + 1;
    if (__OFADD__(v138, 1))
    {
      __break(1u);
    }

    else
    {
      *(v137 + 16) = v139;
      if (!(v163 >> 62))
      {
        if (v139 != *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

LABEL_61:
        v140 = v161;
        swift_beginAccess();
        v166[0] = *(v140 + 16);
        swift_bridgeObjectRetain_n();
        specialized MutableCollection<>.sort(by:)(v166);

        v141 = v166[0];
        v142 = *(v166[0] + 2);
        if (v142)
        {
          v166[0] = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v143 = 4;
          do
          {
            v144 = *&v141[v143];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v143 += 2;
            --v142;
          }

          while (v142);
          goto LABEL_44;
        }

LABEL_50:

        v103 = _swiftEmptyArrayStorage;
        goto LABEL_51;
      }
    }

    if (v139 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_74;
    }

    goto LABEL_61;
  }

LABEL_29:
  v62 = v147;
  v69 = MOSuggestionAssetMetadataKeyMotionActivityTypeEnum;
  v70 = &MOSuggestionAssetMotionActivityTypeWalking;
LABEL_30:
  v71 = *v70;
  type metadata accessor for MOSuggestionAssetMotionActivityType(0);
  v164[0] = v71;
  v165 = v72;
  v73 = v71;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v167 = v29;
  v60 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v69, v74);
  v61 = v167;
LABEL_31:
  v75 = v155;
  v76 = v156;
  if ((v156 - 2) >= 9u)
  {
    (*(*v150 + 192))(v60);
    v83 = v153;
    v84 = v154;
    if ((*(v153 + 48))(v75, 1, v154) != 1)
    {
      v104 = (*(v83 + 32))(v152, v75, v84);
      v105 = v150;
      v106 = (*(*v150 + 240))(v104);
      v107 = (*(*v105 + 264))();
      v108 = (*(*v105 + 456))();
      v109 = objc_allocWithZone(CLLocation);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v111 = [v109 initWithCoordinate:isa altitude:v106 horizontalAccuracy:v107 verticalAccuracy:0.0 timestamp:{v108, 0.0}];

      v112 = MOSuggestionAssetsTypeGenericMap;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CLLocation, CLLocation_ptr);
      v113 = [objc_allocWithZone(MOSuggestionAsset) init:v111 type:v112 contentClassType:swift_getObjCClassFromMetadata()];
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v61);

      v114 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v113 addMetadata:v114];

      v115 = v162;

      v116 = v161;

      v117 = v157;

      v156 = v20;
      v118 = v163;

      v119 = v113;
      closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)(v113, v115, v148, v116, v149, v117, v118, v158);

      (*(v153 + 8))(v152, v154);

      goto LABEL_46;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v85 = one-time initialization token for assets;

    if (v85 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static MOAngelLogger.assets);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = v162;
      v164[0] = v90;
      *v89 = 136315138;
      v92 = (*(*v91 + 312))();
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v164);

      *(v89 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v87, v88, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
    }

    v95 = v157;
    swift_beginAccess();
    v96 = *(v95 + 16);
    v97 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      __break(1u);
    }

    else
    {
      *(v95 + 16) = v97;
      if (!(v163 >> 62))
      {
        if (v97 == *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        goto LABEL_74;
      }
    }

    if (v97 == _CocoaArrayWrapper.endIndex.getter())
    {
LABEL_41:
      v98 = v161;
      swift_beginAccess();
      v166[0] = *(v98 + 16);
      swift_bridgeObjectRetain_n();
      specialized MutableCollection<>.sort(by:)(v166);

      v99 = v166[0];
      v100 = *(v166[0] + 2);
      if (v100)
      {
        v166[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v101 = 4;
        do
        {
          v102 = *&v99[v101];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v101 += 2;
          --v100;
        }

        while (v100);
LABEL_44:

        v103 = v166[0];
LABEL_51:
        v158(v103);

        v125 = v161;
        swift_beginAccess();
        *(v125 + 16) = _swiftEmptyArrayStorage;

LABEL_75:

        goto LABEL_70;
      }

      goto LABEL_50;
    }

LABEL_74:

    goto LABEL_75;
  }

  type metadata accessor for MOSuggestionAssetMapSnapshotProvider();
  swift_allocObject();
  v77 = MOSuggestionAssetMapSnapshotProvider.init(targetQueue:)(0);
  v78 = swift_allocObject();
  swift_weakInit();
  v79 = swift_allocObject();
  v79[2] = v62;
  v79[3] = v61;
  v79[4] = v78;
  v79[5] = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
  v79[6] = v159;

  v80 = specialized MOSuggestionAssetMapSnapshotProvider.makeOptionsForArea(for:size:)(v150, v76);
  v81 = swift_allocObject();
  *(v81 + 16) = partial apply for specialized closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheGenericMapSnapshots(_:cacheType:completion:);
  *(v81 + 24) = v79;
  v82 = *(*v77 + 200);

  v82(v80, partial apply for closure #1 in MOSuggestionAssetMapSnapshotProvider.getGenericMapFor(location:size:completion:), v81);

LABEL_46:

LABEL_71:

  return swift_bridgeObjectRelease_n();
}

void specialized closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheStateOfMindFromProvider(_:cacheType:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, double a9, double a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, void (*a16)(double *, __n128), uint64_t a17)
{
  v19 = a14;
  v18 = a15;
  v20 = a12;
  if (!a1)
  {
    v34 = one-time initialization token for assets;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if (v34 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v148 = a1;
  v144 = a2;
  v26 = HKUILocalizedStringForValenceClassificationAndReflectiveInterval();
  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v151 = v27;

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a4 + 16))
  {

    goto LABEL_18;
  }

  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  *&v155[0] = *(*(a4 + 56) + 8 * v30);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  if (swift_dynamicCast())
  {
    v33 = *&v154[0];
  }

  else
  {
    v33 = 0;
  }

LABEL_19:
  v140 = specialized static MOSuggestionAssetStateOfMindProvider.getLabelsLocalized(labelResource:)(v33);
  v149 = v51;
  v150 = v50;
  v53 = v52;

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v138 = a8;
  v141 = v53;
  if (!*(a4 + 16))
  {

    goto LABEL_25;
  }

  v56 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v55);
  v58 = v57;

  if ((v58 & 1) == 0)
  {
LABEL_25:
    v59 = 0;
    goto LABEL_26;
  }

  *&v155[0] = *(*(a4 + 56) + 8 * v56);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  if (swift_dynamicCast())
  {
    v59 = *&v154[0];
  }

  else
  {
    v59 = 0;
  }

LABEL_26:
  v60 = specialized static MOSuggestionAssetStateOfMindProvider.getDomainsLocalized(domainResource:)(v59);
  v62 = v61;
  v139 = v63;
  v65 = v64;

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CAGradientLayer, CAGradientLayer_ptr);
  v153 = static CAGradientLayer.gradientLayerForValence(_:style:)();
  v152 = static CAGradientLayer.gradientLayerForValence(_:style:)();
  v137 = *(*a5 + 288);
  v137();
  v66 = String._bridgeToObjectiveC()();

  [v148 addIdentifier:v66];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, _ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002ACC60;
  v67 = MOSuggestionAssetMetadataKeyStateOfMindValenceClassificationAndReflectiveIntervalLocalized;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  v19 = v68;
  a8 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
  v69 = v67;
  AnyHashable.init<A>(_:)();
  *(v20 + 96) = &type metadata for String;
  *(v20 + 72) = v142;
  *(v20 + 80) = v151;
  v70 = MOSuggestionAssetMetadataKeyStateOfMindReflectiveInterval;

  v71 = v70;
  AnyHashable.init<A>(_:)();
  *(v20 + 168) = &type metadata for Int;
  *(v20 + 144) = a3;
  v72 = MOSuggestionAssetMetadataKeyStateOfMindValence;
  AnyHashable.init<A>(_:)();
  *(v20 + 240) = &type metadata for Double;
  *(v20 + 216) = a9;
  v73 = MOSuggestionAssetMetadataKeyStateOfMindLabelsLocalized;
  AnyHashable.init<A>(_:)();
  *(v20 + 312) = &type metadata for String;
  *(v20 + 288) = v140;
  *(v20 + 296) = v150;
  v74 = MOSuggestionAssetMetadataKeyStateOfMindLabelsLocalizedShortened;

  v75 = v74;
  AnyHashable.init<A>(_:)();
  *(v20 + 384) = &type metadata for String;
  *(v20 + 360) = v141;
  *(v20 + 368) = v149;
  v76 = MOSuggestionAssetMetadataKeyStateOfMindDomainsLocalized;

  v77 = v76;
  AnyHashable.init<A>(_:)();
  *(v20 + 456) = &type metadata for String;
  *(v20 + 432) = v60;
  *(v20 + 440) = v62;
  v78 = MOSuggestionAssetMetadataKeyStateOfMindDomainsLocalizedShortened;

  v79 = v78;
  AnyHashable.init<A>(_:)();
  *(v20 + 528) = &type metadata for String;
  *(v20 + 504) = v139;
  *(v20 + 512) = v65;
  v80 = MOSuggestionAssetMetadataKeyStateOfMindLabels;
  *&v155[0] = MOSuggestionAssetMetadataKeyStateOfMindLabels;

  v81 = v80;
  AnyHashable.init<A>(_:)();
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  *(v20 + 600) = v85;
  if (*(a4 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v82, v84);
    v87 = v86;

    if (v87)
    {
      v88 = swift_unknownObjectRetain();
      goto LABEL_31;
    }
  }

  else
  {
  }

  v88 = 0;
LABEL_31:
  *(v20 + 576) = v88;
  *&v155[0] = MOSuggestionAssetMetadataKeyStateOfMindDomains;
  v89 = MOSuggestionAssetMetadataKeyStateOfMindDomains;
  AnyHashable.init<A>(_:)();
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 672) = v85;
  if (*(a4 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v90, v91);
    v93 = v92;

    if (v93)
    {
      v94 = swift_unknownObjectRetain();
      goto LABEL_36;
    }
  }

  else
  {
  }

  v94 = 0;
LABEL_36:
  *(v20 + 648) = v94;
  v95 = MOSuggestionAssetMetadataKeyStateOfMindValenceClassification;
  AnyHashable.init<A>(_:)();
  *(v20 + 744) = &type metadata for Int;
  *(v20 + 720) = v144;
  *&v155[0] = MOSuggestionAssetMetadataKeyStateOfMindAssociatedColorsLight;
  v96 = MOSuggestionAssetMetadataKeyStateOfMindAssociatedColorsLight;
  AnyHashable.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1002A6160;
  v98 = [v153 colors];
  if (!v98)
  {

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_64;
  }

  v99 = v98;
  v143 = v85;
  v18 = &type metadata for Any;
  v100 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v100 + 16))
  {
LABEL_64:

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_65;
  }

  outlined init with copy of Any(v100 + 32, v154);

  outlined init with take of Any(v154, v155);
  type metadata accessor for CGColorRef(0);
  swift_dynamicCast();
  v101 = v156;
  v102 = [objc_allocWithZone(UIColor) initWithCGColor:v156];

  *(v97 + 32) = v102;
  v103 = [v153 colors];
  if (!v103)
  {
LABEL_65:

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_66;
  }

  v104 = v103;
  v105 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v106 = *(v105 + 16);
  if (!v106)
  {
LABEL_66:

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_67;
  }

  outlined init with copy of Any(v105 + 32 * v106, v154);

  outlined init with take of Any(v154, v155);
  swift_dynamicCast();
  v107 = v156;
  v108 = [objc_allocWithZone(UIColor) initWithCGColor:v156];

  *(v97 + 40) = v108;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIColorCGMd, &_sSaySo7UIColorCGMR);
  *(v20 + 816) = v109;
  *(v20 + 792) = v97;
  *&v155[0] = MOSuggestionAssetMetadataKeyStateOfMindAssociatedColorsDark;
  v110 = MOSuggestionAssetMetadataKeyStateOfMindAssociatedColorsDark;
  AnyHashable.init<A>(_:)();
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1002A6160;
  v112 = [v152 colors];
  if (!v112)
  {
LABEL_67:

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_68;
  }

  v113 = v112;
  v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v114 + 16))
  {
LABEL_68:

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_69;
  }

  outlined init with copy of Any(v114 + 32, v154);

  outlined init with take of Any(v154, v155);
  swift_dynamicCast();
  v115 = v156;
  v116 = [objc_allocWithZone(UIColor) initWithCGColor:v156];

  *(v111 + 32) = v116;
  v117 = [v152 colors];
  if (!v117)
  {
LABEL_69:

    swift_bridgeObjectRelease_n();

    __break(1u);
    goto LABEL_70;
  }

  v118 = v117;
  v119 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v120 = *(v119 + 16);
  if (v120)
  {

    if (v120 <= *(v119 + 16))
    {
      outlined init with copy of Any(v119 + 32 * v120, v154);

      outlined init with take of Any(v154, v155);
      swift_dynamicCast();
      v121 = v156;
      v122 = [objc_allocWithZone(UIColor) initWithCGColor:v156];

      *(v111 + 40) = v122;
      *(v20 + 888) = v109;
      *(v20 + 864) = v111;
      *&v155[0] = MOSuggestionAssetMetadataKeyStateOfMindIdentifier;
      v123 = MOSuggestionAssetMetadataKeyStateOfMindIdentifier;
      AnyHashable.init<A>(_:)();
      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 960) = v143;
      if (*(a4 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v124, v125);
        v127 = v126;

        v128 = a17;
        v129 = a6;
        if (v127)
        {
          v130 = swift_unknownObjectRetain();
        }

        else
        {
          v130 = 0;
        }
      }

      else
      {

        v130 = 0;
        v128 = a17;
        v129 = a6;
      }

      *(v20 + 936) = v130;
      *&v155[0] = MOSuggestionAssetMetadataKeyStateOfMindStartDate;
      v131 = MOSuggestionAssetMetadataKeyStateOfMindStartDate;
      AnyHashable.init<A>(_:)();
      *(v20 + 1032) = type metadata accessor for Date();
      __swift_allocate_boxed_opaque_existential_1((v20 + 1008));
      Date.init(timeIntervalSince1970:)();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(v20);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v148 addMetadata:isa];

      if ((v129 - 2) <= 8u)
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v134 = *(Strong + 16);

          (v137)(v135);
          v136 = String._bridgeToObjectiveC()();

          [v134 setObject:v148 forKey:v136 cost:1];
        }
      }

      specialized static MOSuggestionAssetCacheManager.wrapImageAssetInURLPairIfNecessary(asset:cacheType:completion:)(v148, v129, v138, a11, a12, a13, a14, a15, a16, v128);

      goto LABEL_61;
    }

    __break(1u);
LABEL_57:
    swift_once();
LABEL_8:
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static MOAngelLogger.assets);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v146 = v18;
      v39 = swift_slowAlloc();
      *&v155[0] = v39;
      *v38 = 136315138;
      v40 = (*(*a8 + 312))();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v155);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      v18 = v146;
    }

    swift_beginAccess();
    v43 = *(v19 + 16);
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
    }

    else
    {
      *(v19 + 16) = v44;
      if (!(v18 >> 62))
      {
        if (v44 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_13:
          swift_beginAccess();
          v156 = *(v20 + 16);
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(&v156);

          v45 = v156;
          v46 = *(v156 + 2);
          if (v46)
          {
            v156 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v47 = 4;
            do
            {
              v48 = *&v45[v47];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v47 += 2;
              --v46;
            }

            while (v46);

            v49 = v156;
          }

          else
          {

            v49 = _swiftEmptyArrayStorage;
          }

          (a16)(v49);

          swift_beginAccess();
          *(v20 + 16) = _swiftEmptyArrayStorage;

          goto LABEL_62;
        }

LABEL_60:

LABEL_61:

LABEL_62:

        swift_bridgeObjectRelease_n();

        return;
      }
    }

    if (v44 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_70:

  swift_bridgeObjectRelease_n();

  __break(1u);

  __break(1u);
}

uint64_t specialized MOSuggestionAssetCacheManager.buildCacheAndReturnAsset(_:cacheType:completion:)(void *a1, int a2, uint64_t (*a3)(), void *a4, int a5, void *a6, uint64_t (*a7)(void), void *a8, unint64_t a9, void (*a10)(double *), void *a11)
{
  v496 = a7;
  LODWORD(v495) = a5;
  v494 = a3;
  LODWORD(v492) = a2;
  v15 = a11;
  v498 = a10;
  v484 = type metadata accessor for StateOfMindVisualization.ValenceImageProvider.ImageScale();
  v483 = *(v484 - 1);
  __chkstk_darwin(v484);
  v481 = &v475 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = type metadata accessor for StateOfMindVisualization.ValenceImageProvider();
  v480 = *(v482 - 8);
  __chkstk_darwin(v482);
  v479 = &v475 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v18 - 8);
  v475 = &v475 - v19;
  v478 = type metadata accessor for URL();
  v477 = *(v478 - 8);
  __chkstk_darwin(v478);
  v476 = &v475 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = __chkstk_darwin(v21 - 8);
  v485 = &v475 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v475 - v24;
  v488 = type metadata accessor for Date();
  v489 = *(v488 - 8);
  v26 = __chkstk_darwin(v488);
  v486 = &v475 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v487 = &v475 - v28;
  v29 = type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0);
  __chkstk_darwin(v29);
  v490 = &v475 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(*a1 + 120);
  v500 = a4;
  swift_retain_n();
  v501 = a6;
  swift_retain_n();
  v499 = a8;
  v32 = a9;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v33 = swift_retain_n();
  v34 = v31(v33);
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v497 = a9;
  v493 = a1;
  if (v35 == v38 && v37 == v39)
  {
    goto LABEL_3;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
LABEL_5:
    v40 = a9;

LABEL_6:
    v42 = swift_allocObject();
    v44 = v500;
    v43 = v501;
    *(v42 + 16) = v500;
    *(v42 + 24) = v495;
    v45 = v496;
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    v46 = v498;
    v47 = v499;
    *(v42 + 48) = v499;
    *(v42 + 56) = v40;
    *(v42 + 64) = v46;
    *(v42 + 72) = a11;
    v48 = swift_allocObject();
    *(v48 + 16) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
    *(v48 + 24) = v42;
    v49 = *(*a1 + 264);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    v51 = v49(v50);
    if (v52)
    {
      v53 = v51;
      v54 = v52;
      v55 = *(v494 + 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1002A48B0;
      *(v56 + 32) = v53;
      *(v56 + 40) = v54;
      v57 = swift_allocObject();
      swift_weakInit();
      v58 = swift_allocObject();
      *(v58 + 16) = v493;
      v59 = v492;
      *(v58 + 24) = v492;
      *(v58 + 32) = v57;
      *(v58 + 40) = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
      *(v58 + 48) = v48;
      v60 = *v55;
      v491 = a11;
      v61 = *(v60 + 160);

      v61(v56, v59, partial apply for closure #1 in MOSuggestionAssetCacheManager.fetchAndCachePhotoLivePhotoVideosFromProvider(_:cacheType:completion:), v58);

LABEL_70:

      goto LABEL_71;
    }

    v62 = v498;
    v495 = v48;
    v496 = v42;
    v63 = one-time initialization token for assets;

    v64 = v497;

    v65 = v44;
    if (v63 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static MOAngelLogger.assets);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = v64;
      v71 = swift_slowAlloc();
      v504 = v71;
      *v69 = 136315138;
      v72 = (*(*v65 + 312))();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v504);

      *(v69 + 4) = v74;
      v47 = v499;
      _os_log_impl(&_mh_execute_header, v67, v68, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      v64 = v70;
      v75 = v498;
    }

    else
    {
      v75 = v62;
    }

    v93 = v501;
    swift_beginAccess();
    v94 = v47[2];
    v95 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      __break(1u);
    }

    else
    {
      v47[2] = v95;
      if (!(v64 >> 62))
      {
        if (v95 == *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_25:
          swift_beginAccess();
          v502[0] = v93[2];
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(v502);

          v96 = v502[0];
          v97 = *(v502[0] + 2);
          if (v97)
          {
            v502[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v98 = 4;
            do
            {
              v99 = *&v96[v98];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v98 += 2;
              --v97;
            }

            while (v97);

            v100 = v502[0];
          }

          else
          {

            v100 = _swiftEmptyArrayStorage;
          }

          v75(v100);

          swift_beginAccess();
          v93[2] = _swiftEmptyArrayStorage;

          goto LABEL_69;
        }

LABEL_68:

LABEL_69:

        goto LABEL_70;
      }
    }

    if (v95 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;
  if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
  {
    goto LABEL_3;
  }

  v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v80)
  {
    goto LABEL_5;
  }

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;
  if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
  {
LABEL_3:
    v40 = a9;

    goto LABEL_6;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v85)
  {
    goto LABEL_5;
  }

  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;
  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v491 = a11;
  if (v86 == v89 && v88 == v90)
  {

    v91 = v496;
    v92 = v490;
    goto LABEL_33;
  }

  v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v92 = v490;
  if (v101)
  {

    v91 = v496;
LABEL_33:
    v102 = swift_allocObject();
    v103 = v501;
    *(v102 + 16) = v500;
    *(v102 + 24) = v495;
    *(v102 + 32) = v103;
    *(v102 + 40) = v91;
    v104 = v498;
    v105 = v499;
    *(v102 + 48) = v499;
    *(v102 + 56) = a9;
    v106 = v491;
    *(v102 + 64) = v104;
    *(v102 + 72) = v106;
    v107 = swift_allocObject();
    *(v107 + 2) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
    *(v107 + 3) = v102;
    v496 = v107;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    v495 = v102;

    MOSuggestionAssetCacheWorkoutInput.init(_:)(a1, v92);
    outlined init with copy of Date?(v92, v25);
    v108 = *(v489 + 48);
    v109 = v488;
    v110 = v92;
    if (v108(v25, 1, v488) == 1)
    {
      v111 = v500;
    }

    else
    {
      v112 = *(v489 + 32);
      v112(v487, v25, v109);
      v25 = v485;
      outlined init with copy of Date?(v92 + *(v29 + 20), v485);
      if (v108(v25, 1, v109) != 1)
      {
        v112(v486, v25, v109);
        type metadata accessor for MOSuggestionAssetActivityRingsProvider(0);
        swift_allocObject();
        v140 = MOSuggestionAssetActivityRingsProvider.init()();
        v141 = swift_allocObject();
        swift_weakInit();
        v142 = swift_allocObject();
        v142[2] = a1;
        v142[3] = v141;
        v143 = v496;
        v142[4] = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
        v142[5] = v143;
        v144 = v489;
        v145 = *(*v140 + 304);

        v146 = v487;
        v147 = v486;
        v145(v487, v486, 0, partial apply for closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheRingsFromProvider(_:completion:), v142);

        v148 = *(v144 + 8);
        v148(v147, v109);
        v148(v146, v109);
        outlined destroy of MOSuggestionAssetCacheWorkoutInput(v490);

LABEL_72:

        goto LABEL_73;
      }

      (*(v489 + 8))(v487, v109);
      v105 = v499;
      v111 = v500;
      v110 = v92;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v113 = one-time initialization token for assets;

    v114 = v498;
    if (v113 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    __swift_project_value_buffer(v115, static MOAngelLogger.assets);

    v116 = Logger.logObject.getter();
    v117 = v111;
    v118 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v116, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v504 = v120;
      *v119 = 136315138;
      v121 = (*(*v117 + 312))();
      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &v504);

      *(v119 + 4) = v123;
      v32 = a9;
      _os_log_impl(&_mh_execute_header, v116, v118, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v120);

      v110 = v490;
    }

    swift_beginAccess();
    v124 = v105[2];
    v125 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      __break(1u);
    }

    else
    {
      v105[2] = v125;
      if (!(v32 >> 62))
      {
        if (v125 == *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_44:
          v126 = v501;
          swift_beginAccess();
          v502[0] = v126[2];
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(v502);

          v127 = v502[0];
          v128 = *(v502[0] + 2);
          if (v128)
          {
            v502[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v129 = 4;
            do
            {
              v130 = *&v127[v129];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v129 += 2;
              --v128;
            }

            while (v128);

            v131 = v502[0];
            v110 = v490;
          }

          else
          {

            v131 = _swiftEmptyArrayStorage;
          }

          v114(v131);

          v151 = v501;
          swift_beginAccess();
          v151[2] = _swiftEmptyArrayStorage;

          goto LABEL_106;
        }

LABEL_105:

LABEL_106:

        outlined destroy of MOSuggestionAssetCacheWorkoutInput(v110);

        goto LABEL_72;
      }
    }

    if (v125 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_44;
    }

    goto LABEL_105;
  }

  v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v134 = v133;
  if (v132 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v134 == v135)
  {

    v136 = v500;
    v137 = v501;
    v138 = v498;
    v139 = v499;
LABEL_54:

    specialized MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(v493, v492, v494, v136, v495, v137, v496, v139, a9, v138, v15);
LABEL_71:

    goto LABEL_72;
  }

  v149 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v150 = v500;
  v137 = v501;
  v138 = v498;
  v139 = v499;
  if (v149)
  {

    v136 = v150;
    v15 = v491;
    goto LABEL_54;
  }

  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v154 = v153;
  if (v152 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v154 == v155)
  {

LABEL_62:
    v157 = v150;

    v158 = v491;

    specialized MOSuggestionAssetCacheManager.fetchAndCacheMotionActivityFromProvider(_:cacheType:completion:)(v493, v492, v494, v157, v495, v137, v496, v139, a9, v138, v158);
    goto LABEL_71;
  }

  v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v156)
  {

    goto LABEL_62;
  }

  v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v161 = v160;
  if (v159 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v161 == v162)
  {

LABEL_76:
    v165 = v150;

    v166 = v491;

    specialized MOSuggestionAssetCacheManager.fetchAndCacheMediaArtworkFromProvider(_:cacheType:completion:)(v493, v492, v494, v165, v495, v137, v496, v139, a9, v138, v166);
    goto LABEL_71;
  }

  v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v164)
  {

    goto LABEL_76;
  }

  v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v169 = v168;
  if (v167 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v169 == v170)
  {

    goto LABEL_82;
  }

  v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v171)
  {

LABEL_82:
    v172 = swift_allocObject();
    v173 = v501;
    *(v172 + 16) = v500;
    *(v172 + 24) = v495;
    v174 = v496;
    v175 = v497;
    *(v172 + 32) = v173;
    *(v172 + 40) = v174;
    v176 = v498;
    *(v172 + 48) = v499;
    *(v172 + 56) = v175;
    v177 = v491;
    *(v172 + 64) = v176;
    *(v172 + 72) = v177;
    v178 = swift_allocObject();
    *(v178 + 16) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
    *(v178 + 24) = v172;
    v179 = v178;
    v180 = *(*v493 + 216);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    v182 = v180(v181);
    v183 = [v182 assets];

    if (v183)
    {
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v185;

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v187 = static MOSuggestionAssetAppIconProvider.shared;
      v188 = swift_allocObject();
      swift_weakInit();
      v189 = swift_allocObject();
      v189[2] = v493;
      v189[3] = v188;
      v189[4] = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
      v189[5] = v179;
      v190 = *(*v187 + 88);

      v190(v184, v186, partial apply for closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheAppIconsFromProvider(_:completion:), v189);

      goto LABEL_191;
    }

    v191 = one-time initialization token for assets;

    if (v191 != -1)
    {
      swift_once();
    }

    v192 = type metadata accessor for Logger();
    __swift_project_value_buffer(v192, static MOAngelLogger.assets);

    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v197 = v500;
      v504 = v196;
      *v195 = 136315138;
      v198 = (*(*v197 + 312))();
      v200 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v199, &v504);

      *(v195 + 4) = v200;
      _os_log_impl(&_mh_execute_header, v193, v194, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v195, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v196);
    }

    v201 = v499;
    swift_beginAccess();
    v202 = v201[2];
    v203 = v202 + 1;
    if (__OFADD__(v202, 1))
    {
      __break(1u);
    }

    else
    {
      v499[2] = v203;
      if (!(v497 >> 62))
      {
        if (v203 == *((v497 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_93:
          v204 = v501;
          swift_beginAccess();
          v502[0] = v204[2];
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(v502);

          v205 = v502[0];
          v206 = *(v502[0] + 2);
          if (v206)
          {
            v502[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v207 = 4;
            do
            {
              v208 = *&v205[v207];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v207 += 2;
              --v206;
            }

            while (v206);

            v209 = v502[0];
          }

          else
          {

            v209 = _swiftEmptyArrayStorage;
          }

          (v498)(v209);

          v225 = v501;
          swift_beginAccess();
          v225[2] = _swiftEmptyArrayStorage;

          goto LABEL_190;
        }

LABEL_189:

LABEL_190:

LABEL_191:

        goto LABEL_71;
      }
    }

    if (v203 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_93;
    }

    goto LABEL_189;
  }

  v210 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v212 = v211;
  if (v210 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v212 == v213)
  {

LABEL_102:
    v215 = (v492 - 11) < 0xF7u;
    v216 = v500;

    v217 = v501;

    v218 = v499;

    v219 = v497;

    v220 = v491;

    specialized MOSuggestionAssetCacheManager.fetchAndCacheReflectionsPromptsFromProvider(_:isProxyForClient:completion:)(v493, v215, v494, v216, v495, v217, v496, v218, v219, v498, v220);
    goto LABEL_71;
  }

  v214 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v214)
  {

    goto LABEL_102;
  }

  v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v223 = v222;
  if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v223 == v224)
  {

LABEL_114:
    v227 = v500;

    v228 = v501;

    v229 = v499;

    v230 = v497;

    v231 = v491;

    specialized MOSuggestionAssetCacheManager.fetchAndCacheLocationsPreviews(_:completion:)(v493, v494, v227, v495, v228, v496, v229, v230, v498, v231);
    goto LABEL_71;
  }

  v226 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v226)
  {

    goto LABEL_114;
  }

  v232 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v234 = v233;
  if (v232 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v234 == v235)
  {

    goto LABEL_120;
  }

  v236 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v236)
  {

LABEL_120:
    v237 = swift_allocObject();
    v238 = v501;
    *(v237 + 16) = v500;
    *(v237 + 24) = v495;
    v239 = v496;
    v240 = v497;
    *(v237 + 32) = v238;
    *(v237 + 40) = v239;
    v241 = v498;
    *(v237 + 48) = v499;
    *(v237 + 56) = v240;
    v242 = v491;
    *(v237 + 64) = v241;
    *(v237 + 72) = v242;
    v243 = swift_allocObject();
    v244 = v493;
    *(v243 + 16) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
    *(v243 + 24) = v237;
    v245 = *(*v244 + 256);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    v247 = v245(v246);
    if (!v247)
    {
      goto LABEL_134;
    }

    v248 = v247;
    v249 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v248 + 16))
    {
      v251 = specialized __RawDictionaryStorage.find<A>(_:)(v249, v250);
      v253 = v252;

      if ((v253 & 1) == 0)
      {
        goto LABEL_133;
      }

      v503 = *(*(v248 + 56) + 8 * v251);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_133;
      }

      v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v248 + 16))
      {
        v256 = specialized __RawDictionaryStorage.find<A>(_:)(v254, v255);
        v258 = v257;

        if (v258)
        {
          v259 = *(*(v248 + 56) + 8 * v256);
          swift_unknownObjectRetain();

          v504 = v259;
          if (swift_dynamicCast())
          {
            v260 = v503;
            v261 = v475;
            URL.init(string:)();

            if ((*(v477 + 48))(v261, 1, v478) != 1)
            {
              v377 = v477;
              v378 = v476;
              v379 = v478;
              (*(v477 + 32))(v476, v475, v478);
              v380 = swift_allocObject();
              swift_weakInit();
              v381 = swift_allocObject();
              *(v381 + 2) = v493;
              v381[3] = v260;
              *(v381 + 4) = v380;
              *(v381 + 5) = closure #2 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)partial apply;
              *(v381 + 6) = v243;

              specialized MOSuggestionAssetLinkPreviewProvider.getAssetFor(url:completion:)(v378, partial apply for closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheLinkPreviews(_:completion:), v381);

              (*(v377 + 8))(v378, v379);

              goto LABEL_72;
            }

            outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v475, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_134:
            v266 = one-time initialization token for assets;

            if (v266 != -1)
            {
              swift_once();
            }

            v267 = type metadata accessor for Logger();
            __swift_project_value_buffer(v267, static MOAngelLogger.assets);

            v268 = Logger.logObject.getter();
            v269 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v268, v269))
            {
              v270 = swift_slowAlloc();
              v271 = swift_slowAlloc();
              v272 = v500;
              v504 = v271;
              *v270 = 136315138;
              v273 = (*(*v272 + 312))();
              v275 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v274, &v504);

              *(v270 + 4) = v275;
              _os_log_impl(&_mh_execute_header, v268, v269, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v270, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v271);
            }

            v276 = v499;
            swift_beginAccess();
            v277 = v276[2];
            v278 = v277 + 1;
            if (__OFADD__(v277, 1))
            {
              __break(1u);
            }

            else
            {
              v499[2] = v278;
              if (!(v497 >> 62))
              {
                if (v278 == *((v497 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_141:
                  v279 = v501;
                  swift_beginAccess();
                  v502[0] = v279[2];
                  swift_bridgeObjectRetain_n();
                  specialized MutableCollection<>.sort(by:)(v502);

                  v280 = v502[0];
                  v281 = *(v502[0] + 2);
                  if (v281)
                  {
                    v502[0] = _swiftEmptyArrayStorage;
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v282 = 4;
                    do
                    {
                      v283 = *&v280[v282];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v282 += 2;
                      --v281;
                    }

                    while (v281);

                    v284 = v502[0];
                  }

                  else
                  {

                    v284 = _swiftEmptyArrayStorage;
                  }

                  (v498)(v284);

                  v285 = v501;
                  swift_beginAccess();
                  v285[2] = _swiftEmptyArrayStorage;

                  goto LABEL_226;
                }

LABEL_225:

LABEL_226:

                goto LABEL_227;
              }
            }

            if (v278 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_141;
            }

            goto LABEL_225;
          }

LABEL_133:

          goto LABEL_134;
        }
      }

      else
      {
      }

      goto LABEL_133;
    }

    goto LABEL_133;
  }

  v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v264 = v263;
  if (v262 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v264 == v265)
  {

LABEL_149:
    v287 = v500;

    v288 = v501;

    v289 = v499;

    v290 = v497;

    v291 = v491;

    specialized MOSuggestionAssetCacheManager.fetchAndCacheContactPhotoFromProvider(_:cacheType:completion:)(v493, v492, v494, v287, v495, v288, v496, v289, v290, v498, v291);
    goto LABEL_71;
  }

  v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v286)
  {

    goto LABEL_149;
  }

  v292 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v294 = v293;
  if (v292 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v294 == v295)
  {

    goto LABEL_155;
  }

  v296 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v296)
  {

LABEL_155:
    v297 = swift_allocObject();
    *(v297 + 16) = v500;
    *(v297 + 24) = v495;
    v298 = v496;
    *(v297 + 32) = v501;
    *(v297 + 40) = v298;
    v299 = v497;
    v300 = v498;
    *(v297 + 48) = v499;
    *(v297 + 56) = v299;
    v301 = v491;
    *(v297 + 64) = v300;
    *(v297 + 72) = v301;
    v302 = swift_allocObject();
    *(v302 + 16) = closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:)partial apply;
    *(v302 + 24) = v297;
    v480 = v302;
    v481 = v297;
    type metadata accessor for MOMultiMapAssetReference(0);
    v303 = swift_dynamicCastClass();
    if (v303)
    {
      v304 = v303;
      v305 = *(*v303 + 360);
      v306 = *v303 + 360;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      v496 = v305;
      v486 = v306;
      v308 = (v305)(v307);
      if (v308 >> 62)
      {
        v309 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v309 = *((v308 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v309 >= 1)
      {
        v310 = swift_allocObject();
        v311 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v495 = v310;
        *(v310 + 16) = v311;
        v312 = swift_allocObject();
        v313 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v490 = v312;
        *(v312 + 16) = v313;
        v314 = swift_allocObject();
        v315 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v489 = v314;
        *(v314 + 16) = v315;
        v316 = swift_allocObject();
        v317 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVSgTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v488 = v316;
        *(v316 + 16) = v317;
        v318 = swift_allocObject();
        v319 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v487 = v318;
        *(v318 + 16) = v319;
        v320 = swift_allocObject();
        v479 = v320;
        *(v320 + 16) = &_swiftEmptySetSingleton;
        v321 = (v320 + 16);
        v485 = v304;
        v322 = v496();
        v323 = specialized Sequence.compactMap<A>(_:)(v322, (v310 + 16), (v312 + 16), v321, (v314 + 16), v316 + 16, (v318 + 16));

        v324 = swift_allocObject();
        *(v324 + 16) = _swiftEmptyArrayStorage;
        v325 = swift_allocObject();
        *(v325 + 16) = _swiftEmptyArrayStorage;
        v326 = v325;
        v478 = v325;
        v327 = swift_allocObject();
        *(v327 + 16) = &_swiftEmptySetSingleton;
        v328 = swift_allocObject();
        *(v328 + 16) = &_swiftEmptySetSingleton;
        type metadata accessor for MOSuggestionAssetMapSnapshotProvider();
        swift_allocObject();
        v329 = MOSuggestionAssetMapSnapshotProvider.init(targetQueue:)(0);
        v330 = swift_allocObject();
        *(v330 + 16) = v324;
        *(v330 + 24) = v327;
        v331 = v485;
        *(v330 + 32) = v328;
        *(v330 + 40) = v331;
        *(v330 + 48) = v323;
        *(v330 + 56) = v326;
        v332 = v480;
        *(v330 + 64) = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
        *(v330 + 72) = v332;
        *(v330 + 80) = v479;
        *(v330 + 88) = v492;
        v334 = v493;
        v333 = v494;
        *(v330 + 96) = v329;
        *(v330 + 104) = v333;
        *(v330 + 112) = v334;
        v335 = swift_allocObject();
        *(v335 + 16) = partial apply for closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:);
        *(v335 + 24) = v330;
        v486 = v335;
        v498 = *(*v331 + 408);
        swift_retain_n();
        v492 = v324;

        v477 = v327;

        v476 = v328;

        v496 = v329;

        v475 = v330;

        v498 = (v498)(v336);
        if (v498)
        {
          if (v498 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter() > 0)
            {
              v494 = swift_allocObject();
              *(v494 + 2) = 0;
              v485 = _CocoaArrayWrapper.endIndex.getter();
              if (v485)
              {
                if (v485 >= 1)
                {
LABEL_163:
                  v337 = 0;
                  v338 = (*v496 + 176);
                  v484 = *v338;
                  v483 = v338;
                  v482 = v498 & 0xC000000000000001;
                  v339 = v495;
                  v340 = v490;
                  do
                  {
                    if (v482)
                    {
                      v341 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v341 = *(v498 + 8 * v337 + 32);
                    }

                    v342 = v341;
                    ++v337;
                    v343 = swift_allocObject();
                    v343[2] = v494;
                    v343[3] = v492;
                    v343[4] = v342;
                    v343[5] = v339;
                    v343[6] = v340;
                    v344 = v488;
                    v343[7] = v489;
                    v343[8] = v344;
                    v345 = v498;
                    v343[9] = v487;
                    v343[10] = v345;
                    v346 = v486;
                    v343[11] = partial apply for closure #3 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:);
                    v343[12] = v346;

                    v347 = v342;

                    (v484)(v347, partial apply for closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:), v343);
                  }

                  while (v485 != v337);
                  goto LABEL_265;
                }

                __break(1u);
              }

LABEL_265:

LABEL_268:

              goto LABEL_191;
            }
          }

          else
          {
            v485 = *((v498 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v485)
            {
              v494 = swift_allocObject();
              *(v494 + 2) = 0;
              goto LABEL_163;
            }
          }
        }

        closure #3 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:)(partial apply for closure #2 in MOSuggestionAssetCacheManager.fetchAndCacheMultiPinMapSnapshots(_:cacheType:completion:), v475);

        goto LABEL_268;
      }
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
    }

    v352 = one-time initialization token for assets;

    if (v352 != -1)
    {
      swift_once();
    }

    v353 = type metadata accessor for Logger();
    __swift_project_value_buffer(v353, static MOAngelLogger.assets);

    v354 = Logger.logObject.getter();
    v355 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v354, v355))
    {
      v356 = swift_slowAlloc();
      v357 = swift_slowAlloc();
      v358 = v500;
      v504 = v357;
      *v356 = 136315138;
      v359 = (*(*v358 + 312))();
      v361 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v360, &v504);

      *(v356 + 4) = v361;
      _os_log_impl(&_mh_execute_header, v354, v355, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v356, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v357);
    }

    v362 = v499;
    swift_beginAccess();
    v363 = v362[2];
    v364 = v363 + 1;
    if (__OFADD__(v363, 1))
    {
      __break(1u);
    }

    else
    {
      v499[2] = v364;
      if (!(v497 >> 62))
      {
        if (v364 != *((v497 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_189;
        }

LABEL_183:
        v365 = v501;
        swift_beginAccess();
        v502[0] = v365[2];
        swift_bridgeObjectRetain_n();
        specialized MutableCollection<>.sort(by:)(v502);

        v366 = v502[0];
        v367 = *(v502[0] + 2);
        if (v367)
        {
          v502[0] = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v368 = 4;
          do
          {
            v369 = *&v366[v368];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v368 += 2;
            --v367;
          }

          while (v367);

          v370 = v502[0];
        }

        else
        {

          v370 = _swiftEmptyArrayStorage;
        }

        (v498)(v370);

        v382 = v501;
        swift_beginAccess();
        v382[2] = _swiftEmptyArrayStorage;

        goto LABEL_190;
      }
    }

    if (v364 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_189;
    }

    goto LABEL_183;
  }

  v348 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v350 = v349;
  if (v348 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v350 == v351)
  {

LABEL_195:
    v372 = v500;

    v373 = v501;

    v374 = v499;

    v375 = v497;

    v376 = v491;

    specialized MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:)(v493, v492, v372, v495, v373, v496, v374, v375, v498, v376);
    goto LABEL_71;
  }

  v371 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v371)
  {

    goto LABEL_195;
  }

  v383 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v385 = v384;
  if (v383 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v385 == v386)
  {

LABEL_204:
    v388 = v500;

    v389 = v501;

    v390 = v499;

    v391 = v497;

    v392 = v491;

    specialized MOSuggestionAssetCacheManager.fetchAndCacheGenericMapSnapshots(_:cacheType:completion:)(v493, v492, v494, v388, v495, v389, v496, v390, v391, v498, v392);
    goto LABEL_71;
  }

  v387 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v387)
  {

    goto LABEL_204;
  }

  v393 = MOSuggestionAssetsTypeStateOfMindAsset;
  v394 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v396 = v395;
  if (v394 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v396 == v397)
  {

    goto LABEL_209;
  }

  v398 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v398)
  {
LABEL_209:
    v399 = *(*v493 + 256);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v400 = swift_retain_n();
    v401 = v399(v400);
    if (!v401)
    {
      goto LABEL_241;
    }

    v402 = v401;
    v403 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v402 + 16))
    {
      v405 = specialized __RawDictionaryStorage.find<A>(_:)(v403, v404);
      v407 = v406;

      if ((v407 & 1) == 0)
      {
        goto LABEL_240;
      }

      v504 = *(*(v402 + 56) + 8 * v405);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_240;
      }

      v408 = *&v503;
      v409 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v402 + 16))
      {
        v411 = specialized __RawDictionaryStorage.find<A>(_:)(v409, v410);
        v413 = v412;

        if ((v413 & 1) == 0)
        {
          goto LABEL_240;
        }

        v504 = *(*(v402 + 56) + 8 * v411);
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_240;
        }

        v414 = v503;
        v415 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v402 + 16))
        {
          v417 = specialized __RawDictionaryStorage.find<A>(_:)(v415, v416);
          v419 = v418;

          if ((v419 & 1) == 0)
          {
            goto LABEL_240;
          }

          v504 = *(*(v402 + 56) + 8 * v417);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_240;
          }

          v420 = v503;
          v421 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v402 + 16))
          {
            v423 = specialized __RawDictionaryStorage.find<A>(_:)(v421, v422);
            v425 = v424;

            if (v425)
            {
              v504 = *(*(v402 + 56) + 8 * v423);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v426 = *&v503;
                swift_weakInit();
                (v483[13])(v481, enum case for StateOfMindVisualization.ValenceImageProvider.ImageScale.confirmationView(_:), v484);
                v427 = v479;
                StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)();
                v428 = StateOfMindVisualization.ValenceImageProvider.uiImage.getter();
                (*(v480 + 8))(v427, v482);
                type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage, UIImage_ptr);
                v429 = [objc_allocWithZone(MOSuggestionAsset) init:v428 type:v393 contentClassType:swift_getObjCClassFromMetadata()];
                v430 = v500;

                v431 = v501;

                v432 = v499;

                v433 = v497;

                v434 = v491;

                specialized closure #1 in MOSuggestionAssetCacheManager.fetchAndCacheStateOfMindFromProvider(_:cacheType:completion:)(v429, v408, v426, v402, v493, v492, &v504, v430, v414, v420, v495, v431, v496, v432, v433, v498, v434);

                swift_weakDestroy();

                swift_bridgeObjectRelease_n();

LABEL_227:

                goto LABEL_73;
              }
            }

            goto LABEL_240;
          }
        }
      }
    }

LABEL_240:

LABEL_241:
    v454 = one-time initialization token for assets;

    if (v454 != -1)
    {
      swift_once();
    }

    v455 = type metadata accessor for Logger();
    __swift_project_value_buffer(v455, static MOAngelLogger.assets);

    v456 = Logger.logObject.getter();
    v457 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v456, v457))
    {
      v458 = swift_slowAlloc();
      v459 = swift_slowAlloc();
      v460 = v500;
      v504 = v459;
      *v458 = 136315138;
      v461 = (*(*v460 + 312))();
      v463 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v461, v462, &v504);

      *(v458 + 4) = v463;
      _os_log_impl(&_mh_execute_header, v456, v457, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v458, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v459);
    }

    v464 = v499;
    swift_beginAccess();
    v465 = v464[2];
    v466 = v465 + 1;
    if (__OFADD__(v465, 1))
    {
      __break(1u);
    }

    else
    {
      v499[2] = v466;
      if (!(v497 >> 62))
      {
        if (v466 == *((v497 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_248:
          v467 = v501;
          swift_beginAccess();
          v502[0] = v467[2];
          swift_bridgeObjectRetain_n();
          specialized MutableCollection<>.sort(by:)(v502);

          v468 = v502[0];
          v469 = *(v502[0] + 2);
          if (v469)
          {
            v502[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v470 = 4;
            do
            {
              v471 = *&v468[v470];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v470 += 2;
              --v469;
            }

            while (v469);

            v472 = v502[0];
          }

          else
          {

            v472 = _swiftEmptyArrayStorage;
          }

          (v498)(v472);

          v473 = v501;
          swift_beginAccess();
          v473[2] = _swiftEmptyArrayStorage;

          goto LABEL_272;
        }

LABEL_271:

LABEL_272:

        swift_bridgeObjectRelease_n();

        goto LABEL_73;
      }
    }

    if (v466 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_248;
    }

    goto LABEL_271;
  }

  v435 = one-time initialization token for assets;

  if (v435 != -1)
  {
    swift_once();
  }

  v436 = type metadata accessor for Logger();
  __swift_project_value_buffer(v436, static MOAngelLogger.assets);

  v437 = Logger.logObject.getter();
  v438 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v437, v438))
  {
    v439 = swift_slowAlloc();
    v440 = swift_slowAlloc();
    v441 = v500;
    v504 = v440;
    *v439 = 136315138;
    v442 = (*(*v441 + 312))();
    v444 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v442, v443, &v504);

    *(v439 + 4) = v444;
    _os_log_impl(&_mh_execute_header, v437, v438, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v439, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v440);
  }

  v445 = v499;
  swift_beginAccess();
  v446 = v445[2];
  v447 = v446 + 1;
  if (__OFADD__(v446, 1))
  {
    __break(1u);
LABEL_274:
    if (v447 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_71;
    }

    goto LABEL_235;
  }

  v499[2] = v447;
  if (v497 >> 62)
  {
    goto LABEL_274;
  }

  if (v447 != *((v497 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

LABEL_235:
  v448 = v501;
  swift_beginAccess();
  v502[0] = v448[2];
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(v502);

  v449 = v502[0];
  v450 = *(v502[0] + 2);
  if (v450)
  {
    v502[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v451 = 4;
    do
    {
      v452 = *&v449[v451];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v451 += 2;
      --v450;
    }

    while (v450);

    v453 = v502[0];
  }

  else
  {

    v453 = _swiftEmptyArrayStorage;
  }

  (v498)(v453);

  v474 = v501;
  swift_beginAccess();
  v474[2] = _swiftEmptyArrayStorage;

LABEL_73:

  swift_bridgeObjectRelease_n();
}

double specialized MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(), void *a5, int a6, void *a7, uint64_t (*a8)(void), void *a9, unint64_t a10, void (*a11)(double *), void *a12)
{
  v157 = a4;
  LODWORD(v158) = a3;
  v151 = a2;
  v147 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  v148 = a6;
  *(v19 + 24) = a6;
  *(v19 + 32) = a7;
  *(v19 + 40) = a8;
  v149 = a8;
  *(v19 + 48) = a9;
  *(v19 + 56) = a10;
  v150 = a11;
  *(v19 + 64) = a11;
  *(v19 + 72) = a12;
  v20 = *(*a1 + 120);
  v153 = a5;
  swift_retain_n();
  v152 = a7;
  swift_retain_n();
  v156 = a9;
  swift_retain_n();
  v155 = a10;
  swift_bridgeObjectRetain_n();
  v154 = a12;
  v21 = swift_retain_n();
  v22 = v20(v21);
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      v27 = (*(*a1 + 328))(v158);
    }
  }

  v29 = (*(*a1 + 296))(v27);
  v31 = v30;
  v32 = v158 - 11;
  v33 = v157;
  if ((v158 - 11) > 0xF6u)
  {
LABEL_9:

    if (specialized MOSuggestionAssetCacheManager.isInQueryList(_:reference:)(v151, a1))
    {
      v141 = v32;
      v37 = v32;
      v38 = swift_allocObject();
      v151 = v38;
      *(v38 + 16) = a1;
      v39 = v38 + 16;

      if (v37 >= 0xF7)
      {
        goto LABEL_38;
      }

      v41 = v20(v40);
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
      {
      }

      else
      {
        v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v74 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v75 = (*(*a1 + 216))(v46);
      v76 = MOSuggestionAssetsTypeLocationPreview;
      type metadata accessor for MOSuggestionAssetReference(0);
      v77 = swift_allocObject();
      *(v77 + 4) = 0;
      *(v77 + 5) = 0;
      v78 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_transferID;
      v79 = type metadata accessor for UUID();
      (*(*(v79 - 8) + 56))(&v77[v78], 1, 1, v79);
      *&v77[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionAssetReference_resource] = v75;
      swift_beginAccess();
      *(v77 + 5) = 0;
      *(v77 + 4) = 0;
      *(v77 + 2) = v76;
      *(v77 + 3) = 0;
      aBlock = 0;
      v161 = 0xE000000000000000;
      v80 = v76;
      v81._countAndFlagsBits = 0x5954454843414323;
      v81._object = 0xEA00000000004550;
      String.append(_:)(v81);
      v166[0] = v158;
      _print_unlocked<A, B>(_:_:)();
      v82 = v161;
      if (!*(v77 + 5))
      {
        *(v77 + 2) = xmmword_1002A8990;
      }

      v83 = aBlock;
      v84 = MOSuggestionSheetAssetViewModel.image.modify(&aBlock);
      if (*(v85 + 8))
      {
        v86._countAndFlagsBits = v83;
        v86._object = v82;
        String.append(_:)(v86);
      }

      (v84)(&aBlock, 0);

      *v39 = v77;

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      __swift_project_value_buffer(v87, static MOAngelLogger.assets);

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        aBlock = v140;
        *v90 = 136315138;
        swift_beginAccess();
        v91 = *(**v39 + 312);

        v93 = v91(v92);
        v95 = v94;

        v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &aBlock);

        *(v90 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v88, v89, "[MOSuggestionAssetCacheManager] Dynamic assetIdentifier swap --> %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v140);
      }

LABEL_38:
      v97 = *(v157 + 2);
      swift_beginAccess();
      v98 = *(**v39 + 288);
      v99 = v97;

      v98(v100);

      v101 = String._bridgeToObjectiveC()();

      v102 = [v99 objectForKey:v101];

      if (v102)
      {
        v103 = [v102 assetType];
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v105;
        if (v104 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v106 == v107)
        {
          v108 = v141;

          if (v108 > 0xF6)
          {
LABEL_51:
            type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
            v158 = static OS_dispatch_queue.main.getter();
            v131 = swift_allocObject();
            v131[2] = v151;
            v131[3] = partial apply for closure #1 in closure #1 in MOSuggestionAssetCacheManager.retrieveAssetsFor(_:withTypes:queue:cacheType:completion:);
            v131[4] = v19;
            v131[5] = v102;
            v164 = partial apply for closure #1 in MOSuggestionAssetCacheManager.retrieveAssetFor(_:withTypes:cacheType:completion:);
            v165 = v131;
            aBlock = _NSConcreteStackBlock;
            v161 = 1107296256;
            v162 = thunk for @escaping @callee_guaranteed () -> ();
            v163 = &block_descriptor_64_1;
            v132 = _Block_copy(&aBlock);

            v133 = v102;

            v134 = v142;
            static DispatchQoS.unspecified.getter();
            aBlock = _swiftEmptyArrayStorage;
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            v135 = v144;
            v136 = v147;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v137 = v158;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v132);

            (*(v146 + 8))(v135, v136);
            (*(v143 + 8))(v134, v145);

LABEL_57:

            goto LABEL_58;
          }
        }

        else
        {
          v109 = v141;
          v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v109 > 0xF6 || (v110 & 1) == 0)
          {
            goto LABEL_51;
          }
        }
      }

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, static MOAngelLogger.assets);

      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.info.getter();

      v114 = os_log_type_enabled(v112, v113);
      v115 = v153;
      if (v114)
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        aBlock = v117;
        *v116 = 136315138;
        v118 = *(**v39 + 312);

        v120 = v118(v119);
        v122 = v121;

        v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, &aBlock);

        *(v116 + 4) = v123;
        _os_log_impl(&_mh_execute_header, v112, v113, "[MOSuggestionAssetCacheManager] Building cache for %s", v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v117);
      }

      v124 = v156;
      v125 = v155;
      v126 = v150;
      v127 = v149;

      v128 = v152;

      v129 = v154;

      specialized MOSuggestionAssetCacheManager.buildCacheAndReturnAsset(_:cacheType:completion:)(v130, v158, v157, v115, v148, v128, v127, v124, v125, v126, v129);

      swift_bridgeObjectRelease_n();
      goto LABEL_57;
    }

LABEL_56:

    goto LABEL_57;
  }

  v34 = v29;
  swift_beginAccess();
  v35 = *(v33 + 3);

  v36 = specialized Set.contains(_:)(v34, v31, v35);

  if (v36)
  {
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v34, v31);
    swift_endAccess();

    goto LABEL_9;
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static MOAngelLogger.assets);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v50 = os_log_type_enabled(v48, v49);
  v51 = v153;
  v52 = v156;
  if (v50)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock = v54;
    *v53 = 136315138;
    v55 = (*(*a1 + 312))();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &aBlock);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v48, v49, "[MOSuggestionAssetCacheManager] Cache retrieval blocked for %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136315138;
    v62 = (*(*v51 + 312))();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &aBlock);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v58, v59, "[MOSuggestionAssetCacheManager] Failed retrieval for %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
  }

  v65 = v152;
  v66 = v155;
  swift_beginAccess();
  v67 = v52[2];
  v68 = v67 + 1;
  if (__OFADD__(v67, 1))
  {
    __break(1u);
LABEL_55:
    if (v68 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_56;
    }

    goto LABEL_24;
  }

  v52[2] = v68;
  if (v66 >> 62)
  {
    goto LABEL_55;
  }

  if (v68 != *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

LABEL_24:
  swift_beginAccess();
  v159 = v65[2];
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(&v159);

  v69 = v159;
  v70 = *(v159 + 2);
  if (v70)
  {
    v159 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v71 = 4;
    do
    {
      v72 = *&v69[v71];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v71 += 2;
      --v70;
    }

    while (v70);

    v73 = v159;
  }

  else
  {

    v73 = _swiftEmptyArrayStorage;
  }

  v150(v73);

  swift_beginAccess();
  v65[2] = _swiftEmptyArrayStorage;

LABEL_58:

  return result;
}

uint64_t sub_100293310()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100293348()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10029339C()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10029347C()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100293540()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined destroy of MOSuggestionAssetCacheWorkoutInput(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetCacheWorkoutInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_124Tm_0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100293664()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10029369C()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100293750()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002937B0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (((((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8, v4 | 7);
}

void partial apply for closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v8);
  v12 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1 + v9;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v10);
  v17 = *(v1 + v12);
  v18 = *(v1 + v10 + 8);

  closure #4 in MOSuggestionAssetCacheManager.fetchAndCacheWorkoutObjectFromProvider(_:cacheType:completion:)(a1, v1 + v5, v1 + v7, v14, v15, v16, v18, v17, v11);
}

uint64_t sub_100293990()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002939EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100293A38()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100293B38()
{

  return _swift_deallocObject(v0, 185, 7);
}

uint64_t specialized static MOSuggestionAssetCacheManager.shouldDropUninterestingPOI(_:mapItem:location:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static MOAngelLogger.assets);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    v8 = specialized static MOAngelDefaultsManager.BOOLeanValueFor(_:)();
    v9 = v8 != 2 && (v8 & 1) != 0;
    *(v7 + 4) = v9;
    *(v7 + 8) = 2048;
    *(v7 + 10) = (*(*a1 + 144))();

    _os_log_impl(&_mh_execute_header, v5, v6, "[POIClustering] [DEFAULTS] shouldDropUninterestingPOI=%{BOOL}d, bundleType=%lu", v7, 0x12u);
  }

  else
  {
  }

  v10 = specialized static MOAngelDefaultsManager.BOOLeanValueFor(_:)();
  if (v10 == 2 || (v10 & 1) == 0 || (*(*a1 + 144))() != 13)
  {
    return 0;
  }

  result = [a2 _poiCategory];
  if (result)
  {
    v12 = result;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
      goto LABEL_16;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_20;
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    if (v18 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v20 != v21)
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_20;
      }

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
      {
        goto LABEL_16;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_20;
      }

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
      {
        goto LABEL_16;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_20;
      }

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
      if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
      {
        goto LABEL_16;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_20;
      }

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
      if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
      {
        goto LABEL_16;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v42)
      {
        goto LABEL_20;
      }

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
      if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
      {
        goto LABEL_16;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
        goto LABEL_20;
      }

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
      if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
      {
        goto LABEL_16;
      }

      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v52)
      {
        goto LABEL_20;
      }

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
      if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
      {
        goto LABEL_16;
      }

      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v57)
      {
        goto LABEL_20;
      }

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
      if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
      {
        goto LABEL_16;
      }

      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v62)
      {
        goto LABEL_20;
      }

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
      if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
      {
        goto LABEL_16;
      }

      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v67)
      {
        goto LABEL_20;
      }

      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;
      if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
      {
        goto LABEL_16;
      }

      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v72)
      {
        goto LABEL_20;
      }

      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
      if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
      {
        goto LABEL_16;
      }

      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v77)
      {
LABEL_20:

        return 1;
      }

      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;
      if (v78 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v80 != v81)
      {
        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v82 & 1;
      }
    }

LABEL_16:

    return 1;
  }

  return result;
}

uint64_t sub_1002943D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100294408()
{

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100294530()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t objectdestroy_287Tm()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10029467C()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t objectdestroy_54Tm_0()
{

  return _swift_deallocObject(v0, 80, 7);
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for exerciseGreenFaded()
{
  v0 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v0, static ColorResource.exerciseGreenFaded);
  __swift_project_value_buffer(v0, static ColorResource.exerciseGreenFaded);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for motionBackground()
{
  v0 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v0, static ColorResource.motionBackground);
  __swift_project_value_buffer(v0, static ColorResource.motionBackground);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for creativity(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v6 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for journalingSuggestionsIcon()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.journalingSuggestionsIcon);
  __swift_project_value_buffer(v0, static ImageResource.journalingSuggestionsIcon);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for privacyIcon(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v6 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for momentsPrivacy80Masked()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.momentsPrivacy80Masked);
  __swift_project_value_buffer(v0, static ImageResource.momentsPrivacy80Masked);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t ColorResource.creativity.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static ColorResource.creativity.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall Suggestion.urlBasedAssetsForTransfer()()
{
  v0 = Suggestion.urlBasedAssetsForTransfer()();
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}