uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s15ConversationKit014CallControlsInC15ButtonViewModel_pSgMd, &_s15ConversationKit014CallControlsInC15ButtonViewModel_pSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo18NSLayoutConstraintCSgMd, &_sSo18NSLayoutConstraintCSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo6UIViewCSgMd, &_sSo6UIViewCSgMR);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s15ConversationKit26ParticipantsViewController_pMd, &_s15ConversationKit26ParticipantsViewController_pMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(type metadata accessor for Participant);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo18NSAttributedStringCSgMd, &_sSo18NSAttributedStringCSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSSSgMd, &_sSSSgMR);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(MEMORY[0x1E69695A8]);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo8NSStringCSgMd, &_sSo8NSStringCSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo9CNContactCSgMd, &_sSo9CNContactCSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s15ConversationKit015CallControlsPreC15ButtonViewModel_pMd, &_s15ConversationKit015CallControlsPreC15ButtonViewModel_pMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo8TUHandleCSgMd, &_sSo8TUHandleCSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(type metadata accessor for RecentsCallItem);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo18UIFocusEnvironment_pSgMd, &_sSo18UIFocusEnvironment_pSgMR);
}

{
  type metadata accessor for NSNotificationName(0);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_SStMd, &_sSS_SStMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo16UIViewControllerCSgMd, &_sSo16UIViewControllerCSgMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo8UIActionCSgMd, &_sSo8UIActionCSgMR);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1(0);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocClassInstance();
}

void outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0](a1);

  [a4 setTitle:v6 forState:a3];
}

id specialized UIButton.init(imageNamed:supressesHairlineThickening:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v11, v9);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v14 = v12;
  v15 = specialized static UIImage.image(named:)(v11, v13, a4, a5);
  v16 = v15;
  if (a2)
  {
    v17 = [v15 _imageThatSuppressesAccessibilityHairlineThickening];

    v16 = v17;
  }

  [v14 setImage:v16 forState:0];

  (*(v8 + 8))(v11, a4);
  return v14;
}

uint64_t outlined init with copy of SymbolImageDescribing?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_20_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

id LinkDetailActionCollectionViewCell.accessoryImageView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t key path getter for LinkDetailActionCollectionViewCell.linkDetailImage : LinkDetailActionCollectionViewCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LinkDetailActionCollectionViewCell.linkDetailImage : LinkDetailActionCollectionViewCell(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void *LinkDetailActionCollectionViewCell.linkDetailImage.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell_linkDetailImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LinkDetailActionCollectionViewCell.linkDetailImage.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell_linkDetailImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  LinkDetailActionCollectionViewCell.applyValues()();
}

uint64_t (*LinkDetailActionCollectionViewCell.linkDetailImage.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return LinkDetailActionCollectionViewCell.linkDetailImage.modify;
}

uint64_t LinkDetailActionCollectionViewCell.linkDetailImage.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return LinkDetailActionCollectionViewCell.applyValues()();
  }

  return result;
}

Swift::Void __swiftcall LinkDetailActionCollectionViewCell.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LinkDetailActionCollectionViewCell();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(0);
}

uint64_t LinkDetailActionCollectionViewCell.applyValues()()
{
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_1();
  v65 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v64 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v55 - v7;
  type metadata accessor for UICellAccessory.Placement();
  OUTLINED_FUNCTION_1();
  v58 = v9;
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  type metadata accessor for UICellAccessory.CustomViewConfiguration();
  OUTLINED_FUNCTION_1();
  v62 = v14;
  v63 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v61 = v16 - v15;
  v17 = type metadata accessor for UIListContentConfiguration.TextProperties();
  OUTLINED_FUNCTION_1();
  v55 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v55 - v24;
  v26 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  v33 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if (v33)
  {
    v56 = v33;
    v57 = v1;
    v34 = [v0 tintColor];
    MEMORY[0x1BFB216D0](v66);
    if (v67)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd, &_s5UIKit22UIContentConfiguration_pMR);
      v35 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v25, v35 ^ 1u, 1, v26);
      if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
      {
        (*(v28 + 32))(v32, v25, v26);
        UIListContentConfiguration.textProperties.getter();
        v36 = UIListContentConfiguration.TextProperties.color.getter();

        (*(v55 + 8))(v22, v17);
        UIListContentConfiguration.directionalLayoutMargins.setter();
        v67 = v26;
        v68 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
        (*(v28 + 16))(boxed_opaque_existential_1, v32, v26);
        MEMORY[0x1BFB216E0](v66);
        (*(v28 + 8))(v32, v26);
        v34 = v36;
LABEL_10:
        v39 = LinkDetailActionCollectionViewCell.accessoryImageView.getter();
        v40 = v56;
        [v39 setImage_];

        v41 = *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView);
        v42 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48));
        v43 = *MEMORY[0x1E69DBF28];
        v44 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v44 - 8) + 104))(v12, v43, v44);
        *v42 = OUTLINED_FUNCTION_14_0;
        v42[1] = 0;
        (*(v58 + 104))(v12, *MEMORY[0x1E69DBF60], v59);
        v45 = type metadata accessor for UICellAccessory.LayoutDimension();
        __swift_storeEnumTagSinglePayload(v60, 1, 1, v45);
        v46 = v41;
        v47 = v34;
        v48 = v61;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        v49 = v64;
        static UICellAccessory.customView(configuration:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
        v50 = v65;
        v51 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1BC4BA940;
        v53 = v52 + v51;
        v54 = v57;
        (*(v50 + 16))(v53, v49, v57);
        UICollectionViewListCell.accessories.setter();

        (*(v50 + 8))(v49, v54);
        return (*(v62 + 8))(v48, v63);
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v66, &_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
    }

    outlined destroy of TapInteractionHandler?(v25, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
    goto LABEL_10;
  }

  return UICollectionViewListCell.accessories.setter();
}

id LinkDetailActionCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id LinkDetailActionCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell_linkDetailImage) = 0;
  v5 = type metadata accessor for LinkDetailActionCollectionViewCell();
  v1 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id LinkDetailActionCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LinkDetailActionCollectionViewCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell____lazy_storage___accessoryImageView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit34LinkDetailActionCollectionViewCell_linkDetailImage] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LinkDetailActionCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LinkDetailActionCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkDetailActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LocalParticipantView.controlsBottomAnchor.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView) bottomAnchor];

  return v1;
}

id LocalParticipantView.addIndicatorView(_:)(void *a1)
{
  [a1 removeFromSuperview];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);

  return [v3 addSubview_];
}

Swift::Int LocalParticipantLongPressAction.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalParticipantLongPressAction(uint64_t a1)
{
  Hasher.init(_seed:)();
  LocalParticipantLongPressAction.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LocalParticipantView.zoomButtonLayoutGuide.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 568))();
}

void *LocalParticipantView.buttonShelfHost.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void LocalParticipantView.buttonShelfHost.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t key path getter for LocalParticipantView.delegate : LocalParticipantView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for LocalParticipantView.delegate : LocalParticipantView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t LocalParticipantView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate);
  OUTLINED_FUNCTION_3_5(v4, v5);
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t LocalParticipantView.delegate.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2(v5, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_28_3();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalParticipantAction(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t LocalParticipantView.dragEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t LocalParticipantView.dragEnabled.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled;
  result = OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled, a2);
  *(v2 + v4) = a1;
  return result;
}

uint64_t LocalParticipantView.blurEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for LocalParticipantView.blurEnabled : LocalParticipantView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t LocalParticipantView.blurEnabled.didset(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  v5 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled;
  OUTLINED_FUNCTION_4_5(v3 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled, a2);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x300))(*(v3 + v5));
  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(*(v3 + v5), 8);
}

uint64_t LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(char a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ButtonShelfView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v2 + v11, v6, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  }

  (*(v8 + 32))(v10, v6, v7);
  switch(a2)
  {
    case 7:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.memojiIsEnabled.setter();
      goto LABEL_10;
    case 8:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.cameraBlurIsEnabled.setter();
      goto LABEL_10;
    case 10:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.cinematicFramingIsEnabled.setter();
      goto LABEL_10;
    case 14:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.reactionEffectGestureIsEnabled.setter();
      goto LABEL_10;
    case 15:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.studioLightIsEnabled.setter();
      goto LABEL_10;
    case 16:
      ButtonShelfView.viewModel.getter();
      ButtonShelfViewModel.backgroundReplacementIsEnabled.setter();
LABEL_10:

      break;
    default:
      return (*(v8 + 8))(v10, v7);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t LocalParticipantView.blurEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t LocalParticipantView.backgroundReplacementEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for LocalParticipantView.backgroundReplacementEnabled : LocalParticipantView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t LocalParticipantView.backgroundReplacementEnabled.didset(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(*(v1 + v2), 16);
}

uint64_t LocalParticipantView.backgroundReplacementEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t LocalParticipantView.shouldAddOverlayBlur.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for LocalParticipantView.shouldAddOverlayBlur : LocalParticipantView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void LocalParticipantView.shouldAddOverlayBlur.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 != v2)
  {
    v5 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView, closure #1 in LocalParticipantView.overlayBlurView.getter);
    isa = v5;
    if (v4)
    {
      [v1 addSubview_];

      v7 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BC4BA7F0;
      v9 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView;
      v10 = [*&v1[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView] topAnchor];
      v11 = [v1 topAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      *(v8 + 32) = v12;
      v13 = [*&v1[v9] bottomAnchor];
      v14 = [v1 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      *(v8 + 40) = v15;
      v16 = [*&v1[v9] trailingAnchor];
      v17 = [v1 trailingAnchor];
      v18 = [v16 constraintEqualToAnchor_];

      *(v8 + 48) = v18;
      v19 = [*&v1[v9] leadingAnchor];
      v20 = [v1 leadingAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v8 + 56) = v21;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 activateConstraints_];
    }

    else
    {
      [(objc_class *)v5 removeFromSuperview];
    }
  }
}

uint64_t LocalParticipantView.shouldAddOverlayBlur.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur, v1);
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

id closure #1 in LocalParticipantView.overlayBlurView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD370]) initWithPrivateStyle_];
  if (!v0)
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

uint64_t LocalParticipantView.shouldAddGlassDimmingView.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for LocalParticipantView.shouldAddGlassDimmingView : LocalParticipantView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void LocalParticipantView.shouldAddGlassDimmingView.didset(uint64_t a1)
{
  v2 = a1;
  if (_UISolariumEnabled())
  {
    v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
    swift_beginAccess();
    if (*(v1 + v3) != (v2 & 1))
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      aBlock[4] = partial apply for closure #1 in LocalParticipantView.shouldAddGlassDimmingView.didset;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_95;
      v6 = _Block_copy(aBlock);
      v7 = v1;

      [v4 animateWithDuration:v6 animations:0.3];
      _Block_release(v6);
    }
  }
}

void closure #1 in LocalParticipantView.shouldAddGlassDimmingView.didset(uint64_t a1, __n128 a2)
{
  v3 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, closure #1 in LocalParticipantView.glassDimmingView.getter);
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
  swift_beginAccess();
  v5 = 0.0;
  if (*(a1 + v4))
  {
    v5 = 1.0;
  }

  [v3 setAlpha_];
}

id LocalParticipantView.overlayBlurView.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t LocalParticipantView.shouldAddGlassDimmingView.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView, v1);
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void LocalParticipantView.shouldAddOverlayBlur.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

id closure #1 in LocalParticipantView.glassDimmingView.getter()
{
  type metadata accessor for GlassDimmingView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static GlassDimmingView.videoMatrix.getter();
  dispatch thunk of GlassDimmingView.colorMatrix.setter();
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setUserInteractionEnabled_];

  return v0;
}

uint64_t LocalParticipantView.requiresControlsHidden.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for LocalParticipantView.requiresControlsHidden : LocalParticipantView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void LocalParticipantView.requiresControlsHidden.didset(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden, a2);
  v5 = 1.0;
  if (*(v2 + v4))
  {
    v5 = 0.0;
  }

  [v3 setAlpha_];
  v6 = LocalParticipantView.hidesGradientOverlayView.getter();
  ParticipantView.updateGradientOverlayView(isHidden:alpha:)(v6 & 1, 0, 1);
}

uint64_t LocalParticipantView.hidesGradientOverlayView.getter()
{
  v1 = v0;
  if ((*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x250))() != 3)
  {
    return 1;
  }

  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t LocalParticipantView.requiresControlsHidden.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t LocalParticipantView.requiresViewHidden.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for LocalParticipantView.requiresViewHidden : LocalParticipantView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t LocalParticipantView.blurEnabled.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_6_0(v3 + *a2, a2);
  *(v3 + v6) = a1;
  return a3(v7);
}

Swift::Void __swiftcall LocalParticipantView.updateHiding()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
  OUTLINED_FUNCTION_4_0(&v1[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden], v8);
  if (v1[v2])
  {
    v3 = 1;
  }

  else
  {
    v4 = &v1[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate];
    OUTLINED_FUNCTION_4_0(&v1[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate], &v7);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      v3 = (*(v5 + 40))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
    }
  }

  [v1 setHidden_];
}

uint64_t LocalParticipantView.requiresViewHidden.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

BOOL LocalParticipantView.canSetControlButtonAlphaDuringRotation.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v3 + 592))() == 2;
}

void LocalParticipantView.controlsStyle.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GlassDimmingView.GradientValues();
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x250);
  if ((v10)(v7) != a1)
  {
    (*((*v9 & *v8) + 0x258))(a1);
    v11 = LocalParticipantView.hidesGradientOverlayView.getter();
    v12 = 1;
    ParticipantView.updateGradientOverlayView(isHidden:alpha:)(v11 & 1, 0, 1);
    if ((*(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) & 1) == 0)
    {
      v12 = v10() == 3;
    }

    v13 = LocalParticipantView.shouldAddGlassDimmingView.setter(v12);
    v14 = (v10)(v13);
    if (v14 == 2)
    {
      v19 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, closure #1 in LocalParticipantView.glassDimmingView.getter);
      static GlassDimmingView.GradientValues.bottomExpandedMePip.getter();
      dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();

      v20 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView);
      static GlassDimmingView.GradientValues.topExpandedMePip.getter();
    }

    else
    {
      if (v14 != 3)
      {
        return;
      }

      v15 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, closure #1 in LocalParticipantView.glassDimmingView.getter);
      v16 = objc_opt_self();
      v17 = [v16 currentDevice];
      v18 = [v17 userInterfaceIdiom];

      if (v18)
      {
        static GlassDimmingView.GradientValues.bottomLargeVideo.getter();
      }

      else
      {
        static GlassDimmingView.GradientValues.topSmallVideo.getter();
      }

      dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();

      v20 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView);
      v21 = [v16 currentDevice];
      v22 = [v21 userInterfaceIdiom];

      if (v22)
      {
        static GlassDimmingView.GradientValues.topLargeVideo.getter();
      }

      else
      {
        static GlassDimmingView.GradientValues.bottomSmallVideo.getter();
      }
    }

    dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
  }
}

unint64_t LocalParticipantView.supportsRotation.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 32) & 1;
}

uint64_t LocalParticipantView.supportsRotation.setter()
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v1 += 80;
  v2 = *v1;
  result = (*v1)();
  if ((BYTE4(result) & 1) != v0)
  {
    v2();
    OUTLINED_FUNCTION_137();
    v5 = OUTLINED_FUNCTION_38_17(v4);
    return v6(v5);
  }

  return result;
}

uint64_t (*LocalParticipantView.supportsRotation.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = ((*(v2 + 640))() >> 32) & 1;
  return LocalParticipantView.supportsRotation.modify;
}

unint64_t LocalParticipantView.supportsCameraBlur.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 8) & 1;
}

unint64_t LocalParticipantView.supportsCameraBlur.setter()
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v1 += 80;
  v2 = *v1;
  result = (*v1)();
  if (((result >> 8) & 1) != v0)
  {
    v2();
    OUTLINED_FUNCTION_137();
    v5 = OUTLINED_FUNCTION_38_17(v4);
    return v6(v5);
  }

  return result;
}

unint64_t (*LocalParticipantView.supportsCameraBlur.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = ((*(v2 + 640))() >> 8) & 1;
  return LocalParticipantView.supportsCameraBlur.modify;
}

unint64_t LocalParticipantView.capabilitiesSupportsEffects.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 16) & 1;
}

uint64_t key path setter for LocalParticipantView.hudRecipe : LocalParticipantView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v6 - v3, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  return LocalParticipantView.hudRecipe.setter(v4);
}

uint64_t LocalParticipantView.hudRecipe.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v8 - v4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v6) + 0x1B0))(v5);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
}

uint64_t LocalParticipantView.hudRecipe.modify(void *a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  (*(v5 + 424))();
  return OUTLINED_FUNCTION_28_3();
}

void LocalParticipantView.hudRecipe.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(*(a1 + 16), v2, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    LocalParticipantView.hudRecipe.setter(v2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  else
  {
    LocalParticipantView.hudRecipe.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t LocalParticipantView.isInComingCall.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 664))() & 1;
}

uint64_t LocalParticipantView.isInComingCall.setter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 672))();
}

uint64_t (*LocalParticipantView.isInComingCall.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 664))();
  OUTLINED_FUNCTION_18_2(v3);
  return LocalParticipantView.isInComingCall.modify;
}

uint64_t LocalParticipantView.isInComingCall.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_2(a1);
  OUTLINED_FUNCTION_5_18();
  return (*(v1 + 672))();
}

uint64_t LocalParticipantView.isOutgoingCall.getter()
{
  v0 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  (*(v5 + 712))();
  v6 = *(v4 + 9);
  outlined destroy of LocalParticipantControlsView.ViewModel(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  return v6;
}

uint64_t LocalParticipantView.isOutgoingCall.setter(char a1)
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  v3 = (*(v2 + 728))(v6);
  *(v4 + 9) = a1;
  return v3(v6, 0);
}

uint64_t (*LocalParticipantView.isOutgoingCall.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  v1 = LocalParticipantView.isOutgoingCall.getter();
  OUTLINED_FUNCTION_18_2(v1);
  return LocalParticipantView.isOutgoingCall.modify;
}

uint64_t LocalParticipantView.isInRoster.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for LocalParticipantView.isInRoster : LocalParticipantView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t LocalParticipantView.shouldAddOverlayBlur.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_6_0(v3 + *a2, a2);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void LocalParticipantView.isInRoster.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    LocalParticipantView.isInRosterDidChange()();
  }
}

uint64_t LocalParticipantView.isInRosterDidChange()()
{
  v1 = v0;
  v2 = type metadata accessor for _UICornerMaskingConfiguration();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [v0 layer];
  closure #1 in LocalParticipantView.isInRosterDidChange()(v6, v1);

  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
  LocalParticipantView.participantViewCornerRadius.getter();
  v9 = v8;
  v10 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  swift_beginAccess();
  *(v7 + v10) = v9;
  ParticipantView.customCornerRadius.didset();
  LocalParticipantView.participantViewConcentricCornerStyle.getter();
  ParticipantView.concentricCornerStyle.setter(v5);
  v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  swift_beginAccess();
  return ParticipantView.isInRoster.setter(*(v1 + v11));
}

uint64_t LocalParticipantView.isInRoster.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster, v1);
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

uint64_t LocalParticipantView.cinematicFramingIsAvailable.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 640))() & 1;
}

uint64_t LocalParticipantView.cinematicFramingIsAvailable.setter(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v3 += 80;
  v4 = *v3;
  result = (*v3)();
  if ((result & 1) != v2)
  {
    v4();
    OUTLINED_FUNCTION_137();
    return (*(v6 + 648))(v7 & 0x1010101010100 | a1 & 1);
  }

  return result;
}

uint64_t (*LocalParticipantView.cinematicFramingIsAvailable.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = (*(v2 + 640))() & 1;
  return LocalParticipantView.cinematicFramingIsAvailable.modify;
}

uint64_t LocalParticipantView.cinematicFramingIsEnabled.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 784))() & 1;
}

uint64_t LocalParticipantView.cinematicFramingIsEnabled.setter()
{
  OUTLINED_FUNCTION_9_56();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v1 + 792))();
  OUTLINED_FUNCTION_13_2();
  v3 = (*((*v0 & v2) + 0x310))() & 1;

  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(v3, 10);
}

uint64_t (*LocalParticipantView.cinematicFramingIsEnabled.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 784))();
  OUTLINED_FUNCTION_18_2(v2);
  return LocalParticipantView.cinematicFramingIsEnabled.modify;
}

unint64_t LocalParticipantView.supportsReactionGestures.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 40) & 1;
}

unint64_t LocalParticipantView.supportsReactionGestures.setter()
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v1 += 80;
  v2 = *v1;
  result = (*v1)();
  if (((result >> 40) & 1) != v0)
  {
    v2();
    OUTLINED_FUNCTION_137();
    v5 = OUTLINED_FUNCTION_38_17(v4);
    return v6(v5);
  }

  return result;
}

unint64_t (*LocalParticipantView.supportsReactionGestures.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = (((*(v2 + 640))() >> 32) >> 8) & 1;
  return LocalParticipantView.supportsReactionGestures.modify;
}

unint64_t LocalParticipantView.supportsStudioLight.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 48) & 1;
}

unint64_t LocalParticipantView.supportsStudioLight.setter()
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_137();
  v1 += 80;
  v2 = *v1;
  result = (*v1)();
  if ((HIWORD(result) & 1) != v0)
  {
    v2();
    OUTLINED_FUNCTION_137();
    v5 = OUTLINED_FUNCTION_38_17(v4);
    return v6(v5);
  }

  return result;
}

unint64_t (*LocalParticipantView.supportsStudioLight.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = ((*(v2 + 640))() >> 48) & 1;
  return LocalParticipantView.supportsStudioLight.modify;
}

uint64_t LocalParticipantView.reactionEffectGestureIsEnabled.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 808))() & 1;
}

uint64_t LocalParticipantView.reactionEffectGestureIsEnabled.setter()
{
  OUTLINED_FUNCTION_9_56();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v1 + 816))();
  OUTLINED_FUNCTION_13_2();
  v3 = (*((*v0 & v2) + 0x328))() & 1;

  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(v3, 14);
}

uint64_t (*LocalParticipantView.reactionEffectGestureIsEnabled.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 808))();
  OUTLINED_FUNCTION_18_2(v2);
  return LocalParticipantView.reactionEffectGestureIsEnabled.modify;
}

uint64_t LocalParticipantView.studioLightIsEnabled.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 832))() & 1;
}

uint64_t LocalParticipantView.studioLightIsEnabled.setter()
{
  OUTLINED_FUNCTION_9_56();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  (*(v1 + 840))();
  OUTLINED_FUNCTION_13_2();
  v3 = (*((*v0 & v2) + 0x340))() & 1;

  return LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(v3, 15);
}

uint64_t (*LocalParticipantView.studioLightIsEnabled.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  v2 = (*(v1 + 832))();
  OUTLINED_FUNCTION_18_2(v2);
  return LocalParticipantView.studioLightIsEnabled.modify;
}

unint64_t LocalParticipantView.cameraFlipButtonIsAvailable.getter()
{
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  return ((*(v0 + 640))() >> 24) & 1;
}

unint64_t LocalParticipantView.cameraFlipButtonIsAvailable.setter(char a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  result = (*(v2 + 920))();
  if (result)
  {
    OUTLINED_FUNCTION_137();
    v4 += 80;
    v5 = *v4;
    result = (*v4)();
    if (((result >> 24) & 1) != (a1 & 1))
    {
      v5();
      OUTLINED_FUNCTION_137();
      v7 = OUTLINED_FUNCTION_38_17(v6);
      return v8(v7);
    }
  }

  return result;
}

unint64_t (*LocalParticipantView.cameraFlipButtonIsAvailable.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_24_27(a1);
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  *(v1 + 8) = ((*(v2 + 640))() >> 24) & 1;
  return LocalParticipantView.cameraFlipButtonIsAvailable.modify;
}

__n128 LocalParticipantView.aspectRatio.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio);
  OUTLINED_FUNCTION_4_0(v3, v4);
  v5 = *(v1 + 32);
  result = *v1;
  v7 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v7;
  *(a1 + 32) = v5;
  return result;
}

__n128 LocalParticipantView.aspectRatio.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio);
  OUTLINED_FUNCTION_3_5(v3, v4);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t LocalParticipantView.localParticipantVideoOrientation.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t LocalParticipantView.localParticipantVideoOrientation.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation;
  result = OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation, a2);
  *(v2 + v4) = a1;
  return result;
}

double LocalParticipantView.shelfPiPControlsAlpha.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

double key path getter for LocalParticipantView.shelfPiPControlsAlpha : LocalParticipantView@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void LocalParticipantView.shelfPiPControlsAlpha.setter(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  v6 = OUTLINED_FUNCTION_6_0(v3 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha, a3);
  *(v3 + v5) = a1;
  LocalParticipantView.shelfPiPControlsAlpha.didset(v6, v7);
}

void LocalParticipantView.shelfPiPControlsAlpha.didset(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView);
  v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton);
  v5 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha, a2);
  [v4 setAlpha_];
  [*(v3 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText) setAlpha_];
  if (_UISolariumEnabled())
  {
    OUTLINED_FUNCTION_2_96();
    v8 = LocalParticipantView.overlayBlurView.getter(v6, v7);
    [v8 setAlpha_];
  }
}

uint64_t LocalParticipantView.shelfPiPControlsAlpha.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t LocalParticipantView.blurEnabled.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t LocalParticipantView.shouldUseConcentricRadius.getter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return Features.isICUIRedesignEnabled.getter() & 1;
}

uint64_t LocalParticipantView.videoMessagingState.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t key path getter for LocalParticipantView.videoMessagingState : LocalParticipantView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LocalParticipantView.videoMessagingState.getter(a1, a2);
  *a3 = result;
  return result;
}

uint64_t LocalParticipantView.videoMessagingState.setter(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void (*LocalParticipantView.videoMessagingState.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = static Published.subscript.modify();
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t LocalParticipantView.$videoMessagingState.getter()
{
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LocalParticipantView.$videoMessagingState : LocalParticipantView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return LocalParticipantView.$videoMessagingState.setter(v5);
}

uint64_t LocalParticipantView.$videoMessagingState.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11[-v8 - 8], a1, v3, v7);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*LocalParticipantView.$videoMessagingState.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64);
  v1[6] = __swift_coroFrameAllocStub(v5);
  v1[7] = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocalParticipantView.$videoMessagingState.modify;
}

void LocalParticipantView.$videoMessagingState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    LocalParticipantView.$videoMessagingState.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    LocalParticipantView.$videoMessagingState.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

char *LocalParticipantView.__allocating_init(isInRoster:supportsRotation:supportsCameraBlur:supportsReactions:supportsReactionGestures:supportsStudioLight:supportsCameraFlip:supportsMemojiPicker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = objc_allocWithZone(v8);
  return LocalParticipantView.init(isInRoster:supportsRotation:supportsCameraBlur:supportsReactions:supportsReactionGestures:supportsStudioLight:supportsCameraFlip:supportsMemojiPicker:)(v16, v15, v14, v13, v12, v11, v10, v9);
}

char *LocalParticipantView.init(isInRoster:supportsRotation:supportsCameraBlur:supportsReactions:supportsReactionGestures:supportsStudioLight:supportsCameraFlip:supportsMemojiPicker:)(char a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8)
{
  v9 = v8;
  v93 = a7;
  v94 = a3;
  v90 = a6;
  v91 = a5;
  v99 = a4;
  v92 = a2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
  OUTLINED_FUNCTION_1();
  v97 = v14;
  v98 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_15(v16, v88);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - v24;
  v26 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView;
  v27 = objc_allocWithZone(type metadata accessor for ParticipantView(0));
  *&v8[v26] = OUTLINED_FUNCTION_32_15(v28, v29, v30, v31);
  v32 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
  *&v9[v32] = [objc_allocWithZone(type metadata accessor for LocalParticipantControlsView(0)) init];
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost] = 0;
  v33 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  v34 = type metadata accessor for ButtonShelfView();
  __swift_storeEnumTagSinglePayload(&v9[v33], 1, 1, v34);
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel] = 0;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur] = 0;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView] = 0;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded] = 0;
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel] = 0;
  v35 = &v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v35[32] = 1;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation] = 1;
  *&v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha] = 0x3FF0000000000000;
  v36 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState;
  LOBYTE(v101[0]) = 0;
  Published.init(initialValue:)();
  v37 = *(v22 + 32);
  v96 = v20;
  v37(&v9[v36], v25, v20);
  v9[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster] = a1;
  v102.receiver = v9;
  v102.super_class = ObjectType;
  v89 = ObjectType;
  v38 = objc_msgSendSuper2(&v102, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v39 = one-time initialization token for shared;
  v40 = v38;
  if (v39 != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  v41 = static Defaults.shared;
  v42 = (*(*static Defaults.shared + 208))();
  if (static Platform.current.getter() == 2)
  {
    a8 = (*(*v41 + 200))();
  }

  v43 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
  v44 = *&v40[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView];
  v45 = MEMORY[0x1E69E7D40];
  v46 = *((*MEMORY[0x1E69E7D40] & *v44) + 0x288);
  v47 = 0x1000000000000;
  if ((v90 & 1) == 0)
  {
    v47 = 0;
  }

  v48 = 0x10000000000;
  if ((v91 & 1) == 0)
  {
    v48 = 0;
  }

  v49 = 0x100000000;
  if ((v92 & 1) == 0)
  {
    v49 = 0;
  }

  v50 = 0x1000000;
  if ((v93 & 1) == 0)
  {
    v50 = 0;
  }

  if (a8)
  {
    v51 = 0x10000;
  }

  else
  {
    v51 = 0;
  }

  v52 = 256;
  if ((v94 & 1) == 0)
  {
    v52 = 0;
  }

  v53 = (v52 | v49 | v48 | v47 | v50) & 0xFFFFFFFFFFFFFFFELL | v42 & 1;
  v54 = v44;
  v46(v53 | v51);

  v55 = [v40 layer];
  [v55 setShadowPathIsBounds_];

  v56 = [objc_opt_self() clearColor];
  [v40 setBackgroundColor_];

  LocalParticipantView.isInRosterDidChange()();
  v57 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView;
  if ((*(*v41 + 592))([v40 addSubview_]))
  {
    v58 = *&v40[v57] + OBJC_IVAR____TtC15ConversationKit15ParticipantView_delegate;
    OUTLINED_FUNCTION_3_5(v58, v100);
    *(v58 + 8) = &protocol witness table for LocalParticipantView;
    swift_unknownObjectWeakAssign();
  }

  if (_UISolariumEnabled())
  {
    v59 = *&v40[v57];
    OUTLINED_FUNCTION_2_96();
    v61 = LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, v60);
    [v59 addSubview_];

    v62 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView;
    v63 = *&v40[v57];
    v64 = *MEMORY[0x1E69DC5C0];
    v65 = *(MEMORY[0x1E69DC5C0] + 8);
    v66 = *(MEMORY[0x1E69DC5C0] + 16);
    v67 = *(MEMORY[0x1E69DC5C0] + 24);
    v68 = *&v40[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView];
    v69 = v63;
    v103.top = v64;
    v103.leading = v65;
    v103.bottom = v66;
    v103.trailing = v67;
    UIView.addConstraintsToFill(_:insets:)(v69, v103);

    LOBYTE(v68) = LocalParticipantView.shouldUseConcentricRadius.getter([*&v40[v62] setAlpha_]);
    v70 = *&v40[v62];
    if (v68)
    {
      v71 = v88;
      LocalParticipantView.participantViewConcentricCornerStyle.getter();
      v72 = type metadata accessor for _UICornerMaskingConfiguration();
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
      UIView.cornerMaskingConfiguration.setter();
    }

    else
    {
      LocalParticipantView.participantViewCornerRadius.getter();
      [v70 _setContinuousCornerRadius_];
    }
  }

  v73 = *&v40[v43];
  OUTLINED_FUNCTION_5_18();
  v75 = *(v74 + 552);
  v76 = v40;
  v77 = v73;
  v75(v40, &protocol witness table for LocalParticipantView);

  [v76 addSubview_];
  LocalParticipantView.initializeButtonShelfView()();
  UIView.addTapInteraction(withTapCount:)(1);
  OUTLINED_FUNCTION_30_2(&v76[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState], v101);
  v78 = v45;
  v79 = v95;
  Published.projectedValue.getter();
  swift_endAccess();
  v80 = *&v40[v43];
  v81 = *((*v78 & *v80) + 0x3E8);
  v82 = v80;
  v83 = v81(v101);
  lazy protocol witness table accessor for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher();
  v84 = v98;
  Publisher<>.assign(to:)();
  (*(v97 + 8))(v79, v84);
  v83(v101, 0);

  if (v99)
  {
    v101[3] = v89;
    v101[0] = v76;
    objc_allocWithZone(MEMORY[0x1E69DCC48]);
    v85 = v76;
    v86 = @nonobjc UILongPressGestureRecognizer.init(target:action:)(v101, sel_handleLongPress_);
    [v85 addGestureRecognizer_];
  }

  return v76;
}

uint64_t LocalParticipantView.participantViewConcentricCornerStyle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - v2;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) == 1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationKit);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BBC58000, v5, v6, "[LocalParticipantView] Since isExpanded, not concentric", v7, 2u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    swift_beginAccess();
    return static _UICornerMaskingConfiguration.fixed(_:)();
  }

  v8 = v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio;
  v9 = swift_beginAccess();
  v11 = *v8;
  v10 = *(v8 + 8);
  v12 = *(v8 + 32);
  v13 = *v8 == 1.0;
  if (v10 != 1.0)
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1E69E7D40];
  if ((v12 & 1) == 0 && !v13)
  {
    goto LABEL_16;
  }

  v15 = *(v8 + 16) == 1.0;
  if (*(v8 + 24) != 1.0)
  {
    v15 = 0;
  }

  if ((v12 | v15) == 1)
  {
    if (!(*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x250))(v9))
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.conversationKit);
      v26 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1BBC58000, v26, v30, "[LocalParticipantView] Since square me-Pip and controls are not showing, not concentric", v31, 2u);
        MEMORY[0x1BFB23DF0](v31, -1, -1);
      }

      goto LABEL_39;
    }

    v11 = *v8;
    v10 = *(v8 + 8);
    v16 = *(v8 + 32);
  }

  else
  {
LABEL_16:
    v16 = 0;
  }

  v17 = v11 == 1.0;
  if (v10 != 1.0)
  {
    v17 = 0;
  }

  if ((v16 & 1) == 0 && !v17)
  {
    goto LABEL_24;
  }

  v18 = *(v8 + 16) == 1.0;
  if (*(v8 + 24) != 1.0)
  {
    v18 = 0;
  }

  if (((v16 | v18) & 1) == 0)
  {
LABEL_24:
    if (!(*((*v14 & **(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x250))())
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.conversationKit);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1BBC58000, v26, v27, "[LocalParticipantView] Since non-square me-Pip and controls are not showing, not concentric", v28, 2u);
        MEMORY[0x1BFB23DF0](v28, -1, -1);
      }

LABEL_39:

      return static _UICornerMaskingConfiguration.fixed(_:)();
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationKit);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BBC58000, v20, v21, "[LocalParticipantView] Since controls are showing, concentric", v22, 2u);
    MEMORY[0x1BFB23DF0](v22, -1, -1);
  }

  static Layout.ParticipantViews.localParticipantCornerRadius.getter();
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  v23 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v23);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
}

void LocalParticipantView.participantViewCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    static Layout.Roster.iOS.getter(&v2);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static Defaults.shared + 400))();
  }
}

Swift::Void __swiftcall LocalParticipantView.initializeButtonShelfView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_49_15(v2, v92[0]);
  type metadata accessor for ButtonShelfView();
  OUTLINED_FUNCTION_1();
  v94 = v4;
  v95 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v98 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v97 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v93 = v92 - v10;
  v11 = type metadata accessor for ButtonShelfViewModel.ActionType();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v101 = type metadata accessor for ButtonShelfViewModel.ButtonConfig();
  OUTLINED_FUNCTION_1();
  v105 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v102 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v100 = v28;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v107 = v30;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v106 = v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v108 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v109 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v110 = v38;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v39);
  v103 = v92 - v40;
  v41 = objc_opt_self();
  v42 = [v41 conversationKit];
  v112._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v44._countAndFlagsBits = v43 | 0xE;
  v44._object = 0x80000001BC504310;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v46, v42, v45, v112);

  v47 = *(v13 + 104);
  v48 = OUTLINED_FUNCTION_8_12();
  v47(v48);
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v49 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v50, v51, v52, v53);
  OUTLINED_FUNCTION_34_21();
  v54 = OUTLINED_FUNCTION_8_12();
  v47(v54);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v55 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v56, v57, v58, v59);
  OUTLINED_FUNCTION_34_21();
  v60 = OUTLINED_FUNCTION_8_12();
  v47(v60);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v61 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v62, v63, v64, v65);
  OUTLINED_FUNCTION_34_21();
  v66 = OUTLINED_FUNCTION_8_12();
  v47(v66);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v99 = v41;
  v67 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_3_92(0xD000000000000017, 0x80000001BC5043A0, 0x61737265766E6F43);
  OUTLINED_FUNCTION_34_21();
  (v47)(v17, *MEMORY[0x1E6995AC8], v11);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v68 = [v41 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_3_92(0xD000000000000019, 0x80000001BC5043C0, 0x61737265766E6F43);
  OUTLINED_FUNCTION_34_21();
  (v47)(v17, *MEMORY[0x1E6995AD0], v11);
  OUTLINED_FUNCTION_44_12();
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  v69 = [v99 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v70, v71, v72, v73);

  (v47)(v17, *MEMORY[0x1E6995AF8], v11);
  v74 = v100;
  ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)();
  OUTLINED_FUNCTION_20();
  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = *(v105 + 16);
  v76 = v101;
  v75(v102, v103, v101);
  v75(v92[0], v110, v76);
  v75(v92[1], v109, v76);
  v75(v92[2], v108, v76);
  v75(v92[3], v106, v76);
  v75(v92[4], v107, v76);
  v75(v92[5], v74, v76);
  type metadata accessor for ButtonShelfViewModel();
  swift_allocObject();

  ButtonShelfViewModel.init(cameraEffects:cinematicFraming:cameraBlur:studioLight:memoji:reactionGestures:backgroundReplacement:tapHandler:)();
  v77 = v93;
  ButtonShelfView.init(viewModel:)();
  v79 = v94;
  v78 = v95;
  v80 = *(v94 + 16);
  v81 = v96;
  v80(v96, v77, v95);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v78);
  v82 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  v83 = v104;
  OUTLINED_FUNCTION_30_2(v104 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView, v111);
  outlined assign with take of ButtonShelfView?(v81, v83 + v82);
  swift_endAccess();
  v84 = v97;
  v80(v97, v77, v78);
  v85 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25UISecureHostingControllerCy16CommunicationsUI15ButtonShelfViewVGMd, &_s15ConversationKit25UISecureHostingControllerCy16CommunicationsUI15ButtonShelfViewVGMR));
  v80(v98, v84, v78);
  v86 = UIHostingController.init(rootView:)();
  v87 = *(v79 + 8);
  v87(v84, v78);
  v88 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_3_5(v83 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost, v111);
  v89 = *(v83 + v88);
  *(v83 + v88) = v86;

  LocalParticipantView.updateButtonShelfCapabilities()();

  v87(v77, v78);
  v90 = *(v105 + 8);
  v91 = v101;
  v90(v100, v101);
  v90(v107, v91);
  v90(v106, v91);
  v90(v108, v91);
  v90(v109, v91);
  v90(v110, v91);
  v90(v103, v91);
}

id LocalParticipantView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LocalParticipantView.init(coder:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18[-v6];
  v8 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView;
  v9 = objc_allocWithZone(type metadata accessor for ParticipantView(0));
  *(v0 + v8) = OUTLINED_FUNCTION_32_15(v10, v11, v12, v13);
  v14 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
  *(v1 + v14) = [objc_allocWithZone(type metadata accessor for LocalParticipantControlsView(0)) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost) = 0;
  v15 = type metadata accessor for ButtonShelfView();
  OUTLINED_FUNCTION_13_6(v15);
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = 0;
  v16 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha) = 0x3FF0000000000000;
  v17 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState;
  v18[15] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v17, v7, v2);
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

id LocalParticipantView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void LocalParticipantView.init(frame:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd, &_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMR);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18[-v6];
  v8 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView;
  v9 = objc_allocWithZone(type metadata accessor for ParticipantView(0));
  *(v0 + v8) = OUTLINED_FUNCTION_32_15(v10, v11, v12, v13);
  v14 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
  *(v1 + v14) = [objc_allocWithZone(type metadata accessor for LocalParticipantControlsView(0)) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost) = 0;
  v15 = type metadata accessor for ButtonShelfView();
  OUTLINED_FUNCTION_13_6(v15);
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_dragEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddOverlayBlur) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___overlayBlurView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shouldAddGlassDimmingView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = 0;
  v16 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha) = 0x3FF0000000000000;
  v17 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView__videoMessagingState;
  v18[15] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v17, v7, v2);
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

Swift::Void __swiftcall LocalParticipantView.handleLongPress(_:)(UILongPressGestureRecognizer *a1)
{
  if ([(UILongPressGestureRecognizer *)a1 state]== 1)
  {
    OUTLINED_FUNCTION_30_19(1);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall LocalParticipantView.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v2 + 656))())
  {
    v3 = objc_opt_self();
    [v3 begin];
    v4.receiver = v0;
    v4.super_class = ObjectType;
    objc_msgSendSuper2(&v4, sel_layoutSubviews);
    LocalParticipantView._layout()();
    [v3 commit];
  }

  else
  {
    v5.receiver = v0;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, sel_layoutSubviews);
    LocalParticipantView._layout()();
  }
}

uint64_t LocalParticipantView._layout()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for ButtonShelfView();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  result = CGRectIsInfinite(v17);
  if ((result & 1) == 0)
  {
    [v0 bounds];
    result = CGRectIsEmpty(v18);
    if ((result & 1) == 0)
    {
      if (static Platform.current.getter() == 2 || v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded] != 1)
      {
        v12 = *&v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView];
        [v0 bounds];

        return [v12 setFrame_];
      }

      else
      {
        v10 = *&v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView];
        [v10 setFrame_];
        v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
        swift_beginAccess();
        outlined init with copy of (CGFloat, AutoplayCandidate)(&v0[v11], v3, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
        if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
        {
          return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
        }

        else
        {
          (*(v5 + 32))(v8, v3, v4);
          v13 = [objc_opt_self() currentDevice];
          v14 = [v13 userInterfaceIdiom];

          if (!v14)
          {
            [v0 bounds];
            [v10 frame];
            CGRectGetMaxY(v19);
            [v0 safeAreaInsets];
            ButtonShelfView.viewModel.getter();
            ButtonShelfViewModel.phoneLandscapeMaxWidth.setter();
          }

          return (*(v5 + 8))(v8, v4);
        }
      }
    }
  }

  return result;
}

CGFloat LocalParticipantView.participantViewFrameForButtonShelf()()
{
  v1 = &v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio];
  swift_beginAccess();
  v2 = *(v1 + 1);
  v5[0] = *v1;
  v5[1] = v2;
  v6 = v1[32];
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation;
  swift_beginAccess();
  return static Layout.LocalParticipantView.participantViewFrame(in:aspectRatio:videoOrientation:)(v0, v5, *&v0[v3]);
}

uint64_t LocalParticipantView.configure(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  type metadata accessor for ParticipantViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  OUTLINED_FUNCTION_4_0(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster, v37);
  if (*(v2 + v16) == 1)
  {
    ParticipantViewModel.compatibleWithRoster.getter();
    ParticipantView.configure(with:isOneToOneMode:)(v15, 0);
    outlined destroy of LocalParticipantControlsView.ViewModel(v15, type metadata accessor for ParticipantViewModel);
  }

  else
  {
    ParticipantView.configure(with:isOneToOneMode:)(a1, 0);
  }

  outlined init with copy of ParticipantViewModel(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VAA0cg7OverlayD0CAHOtMR);
      memcpy(__dst, (v12 + *(v18 + 64)), 0x69uLL);
      UIView.addTapInteraction(withTapCount:)(1);
      outlined init with copy of ParticipantVideoOverlayView.ViewModel(__dst, v34);
      v19 = v35 != 5;
      v20 = v35 == 5;
      outlined destroy of ParticipantVideoOverlayView.ViewModel(v34);
      (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x360))(v20);
      outlined destroy of ParticipantVideoOverlayView.ViewModel(__dst);
      *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = v19;
      outlined destroy of ParticipantVideoView.ViewModel(v12 + *(v18 + 48));
    }

    else
    {
      v26 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c8MonogramD0C0dE0VtMR) + 48);
      v33 = *v26;
      v27 = *(v26 + 72);
      v28 = *(v26 + 80);

      outlined consume of (title: String, subtitle: String?)?(v27, v28);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_0_1();
      if (((*(v29 + 592))() & 1) == 0)
      {
        UIView.removeTapInteractions(withTapCount:)(1);
      }

      OUTLINED_FUNCTION_5_18();
      (*(v30 + 864))(0);
      *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = 1;
    }

    OUTLINED_FUNCTION_25_28();
    return outlined destroy of LocalParticipantControlsView.ViewModel(v12, v31);
  }

  else
  {
    outlined init with take of ParticipantViewModel.ParticipantDetails(v12, v8);
    UIView.addTapInteraction(withTapCount:)(1);
    OUTLINED_FUNCTION_5_18();
    (*(v21 + 864))(0);
    v22 = *(v8 + *(v4 + 40));
    OUTLINED_FUNCTION_25_28();
    outlined destroy of LocalParticipantControlsView.ViewModel(v8, v23);
    *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel) = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMd, &_s15ConversationKit20ParticipantViewModelO0C7DetailsV_AA0c5VideoD0C0dE0VtMR);
    return outlined destroy of ParticipantVideoView.ViewModel(v12 + *(v24 + 48));
  }
}

Swift::Void __swiftcall LocalParticipantView.addEffectsView(effectsView:)(UIView *effectsView)
{
  [v1 addSubview_];
  v3 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
  OUTLINED_FUNCTION_4_5(&v1[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost], v4);
  v5 = *&v1[v3];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    [v1 bringSubviewToFront_];

LABEL_4:
    [(UIView *)effectsView setUserInteractionEnabled:0];
    [v1 bringSubviewToFront_];
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall LocalParticipantView.updateControlsAlpha(animated:)(Swift::Bool animated)
{
  if (animated)
  {
    v2 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    *(swift_allocObject() + 16) = v1;
    OUTLINED_FUNCTION_19_27();
    OUTLINED_FUNCTION_22_31();
    v6[2] = v3;
    v6[3] = &block_descriptor_44;
    v4 = _Block_copy(v6);
    v5 = v1;

    [v2 animateWithDuration:v4 animations:0.25];
    _Block_release(v4);
  }

  else
  {
    LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
  }
}

Swift::Void __swiftcall LocalParticipantView.updateBackgroundColor(_:)(Swift::Bool a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_22_31();
  v8[2] = v5;
  v8[3] = &block_descriptor_29_0;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v3 animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];
  _Block_release(v6);
}

void closure #1 in LocalParticipantView.updateBackgroundColor(_:)(void *a1, char a2)
{
  v4 = objc_opt_self();
  v5 = &selRef_blackColor;
  if ((a2 & 1) == 0)
  {
    v5 = &selRef_clearColor;
  }

  v6 = [v4 *v5];
  [a1 setBackgroundColor_];
}

void LocalParticipantView.configureControls(_:)(char a1)
{
  v2 = v1;
  v4 = a1;
  v5 = a1;
  v6 = type metadata accessor for _UICornerMaskingConfiguration();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isExpanded) = v5 == 128;
  if (v5 == 128)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v12 = (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x250))();
  v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel;
  v14 = v12;
  v15 = a1 >> 6;
  if (v4 < 0)
  {
    v15 = v11;
  }

  if (*(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsHiddenByViewModel))
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  LocalParticipantView.controlsStyle.setter(v16);
  v17 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
  LocalParticipantView.participantViewCornerRadius.getter();
  v19 = v18;
  v20 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  OUTLINED_FUNCTION_3_5(v17 + OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius, v22);
  *(v17 + v20) = v19;
  ParticipantView.customCornerRadius.didset();
  LocalParticipantView.participantViewConcentricCornerStyle.getter();
  ParticipantView.concentricCornerStyle.setter(v10);
  if (v14 == 3)
  {
    LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v21 + 592))())
  {
    ParticipantView.setInfoViewIsVisible(_:animated:)((a1 == 128) & ~*(v2 + v13), 1);
  }
}

Swift::Void __swiftcall LocalParticipantView.configureWithRecordingLocalVideo(_:)(Swift::Bool a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v2 + 592))())
  {
    ParticipantView.configureWithRecordingLocalVideo(_:)(a1);
  }
}

Swift::Void __swiftcall LocalParticipantView.configureWithEffectsAvailable(_:effectsSelected:)(Swift::Bool _, Swift::Bool effectsSelected)
{
  v4 = _;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7 - 8];
  OUTLINED_FUNCTION_9_56();
  OUTLINED_FUNCTION_5_18();
  if ((((*(v9 + 640))() >> 16) & 1) != v4)
  {
    OUTLINED_FUNCTION_5_18();
    v11 = OUTLINED_FUNCTION_38_17(v10);
    v12(v11);
  }

  v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  OUTLINED_FUNCTION_4_0(v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView, v17);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v2 + v13, v8, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  v14 = type metadata accessor for ButtonShelfView();
  LODWORD(v13) = __swift_getEnumTagSinglePayload(v8, 1, v14);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  if (v13 == 1)
  {
    OUTLINED_FUNCTION_5_18();
    (*(v15 + 744))(effectsSelected);
  }

  else
  {
    LocalParticipantView.updateButtonShelfButtonEnabledState(_:buttonAction:)(effectsSelected, 7);
  }
}

uint64_t LocalParticipantView.handleButtonShelfAction(_:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for ButtonShelfViewModel.ActionType();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result != *MEMORY[0x1E6995AE8])
  {
    if (result == *MEMORY[0x1E6995AF0])
    {
      v10 = 10;
    }

    else if (result == *MEMORY[0x1E6995AD8])
    {
      v10 = 8;
    }

    else if (result == *MEMORY[0x1E6995AE0])
    {
      v10 = 15;
    }

    else if (result == *MEMORY[0x1E6995AC8])
    {
      v10 = 7;
    }

    else if (result == *MEMORY[0x1E6995AD0])
    {
      v10 = 14;
    }

    else
    {
      if (result != *MEMORY[0x1E6995AF8])
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v10 = 16;
    }

    v11 = v2 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(v10, v2, ObjectType, v12);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void closure #1 in LocalParticipantView.initializeButtonShelfView()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    LocalParticipantView.handleButtonShelfAction(_:)(a1, v4);
  }
}

uint64_t LocalParticipantView.updateButtonShelfCapabilities()()
{
  v1 = type metadata accessor for ButtonShelfViewModel.Capabilities();
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ButtonShelfView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v11, v6, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  }

  v13 = (*(v8 + 32))(v10, v6, v7);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x280))(v13);
  v15 = v1;
  ButtonShelfView.viewModel.getter();
  ButtonShelfViewModel.Capabilities.init(cinematicFraming:cameraBlur:studioLight:memoji:reactionGestures:backgroundReplacement:)();
  ButtonShelfViewModel.update(_:)();

  (*(v16 + 8))(v3, v15);
  return (*(v8 + 8))(v10, v7);
}

uint64_t LocalParticipantView.updateButtonShelfRotation(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18[-v4 - 8];
  v6 = type metadata accessor for ButtonShelfView();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView, v18);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v13, v5, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  }

  (*(v8 + 32))(v12, v5, v6);
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (!v16)
  {
    ButtonShelfView.viewModel.getter();
    ButtonShelfViewModel.rotationAngle.setter();
  }

  return (*(v8 + 8))(v12, v6);
}

double LocalParticipantView.controlRotation(for:)(uint64_t a1)
{
  result = -1.57079633;
  if (a1 != 2)
  {
    result = 0.0;
  }

  if (!a1)
  {
    return 1.57079633;
  }

  return result;
}

void LocalParticipantView.updateShelfPiPControls(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GlassDimmingView.GradientValues();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView;
  OUTLINED_FUNCTION_4_0(&v1[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfView], v26);
  outlined init with copy of (CGFloat, AutoplayCandidate)(&v1[v10], v9, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  v11 = type metadata accessor for ButtonShelfView();
  LODWORD(v10) = __swift_getEnumTagSinglePayload(v9, 1, v11);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  if (v10 != 1)
  {
    v12 = objc_opt_self();
    v13 = [v12 currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (!v14)
    {
      v15 = [v12 currentDevice];
      v16 = [v15 userInterfaceIdiom];

      if (v16)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_4_0(&static AmbientState.isPresented, v25);
      if (static AmbientState.isPresented != 1)
      {
        goto LABEL_8;
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
LABEL_8:
        v17 = -1.57079633;
        if (a1 != 2)
        {
          v17 = 0.0;
        }

        if (!a1)
        {
          v17 = 1.57079633;
        }

        LocalParticipantControlsView.updateConstraints(for:angle:)(a1, v17);
        if (_UISolariumEnabled())
        {
          v18 = [v12 currentDevice];
          v19 = [v18 userInterfaceIdiom];

          if (!v19)
          {
            switch(a1)
            {
              case 0:
              case 2:
                OUTLINED_FUNCTION_2_96();
                v20 = v2;
                LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, v21);
                OUTLINED_FUNCTION_50_12();
                static GlassDimmingView.GradientValues.trailingExpandedMePip.getter();
                dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();

                v22 = *&v2[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView];
                OUTLINED_FUNCTION_50_12();
                static GlassDimmingView.GradientValues.leadingExpandedMePip.getter();
                break;
              default:
                OUTLINED_FUNCTION_2_96();
                v20 = v2;
                LocalParticipantView.overlayBlurView.getter(&OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView, v23);
                OUTLINED_FUNCTION_50_12();
                static GlassDimmingView.GradientValues.bottomExpandedMePip.getter();
                dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();

                v24 = *&v2[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView____lazy_storage___glassDimmingView];
                OUTLINED_FUNCTION_50_12();
                static GlassDimmingView.GradientValues.topExpandedMePip.getter();
                break;
            }

            dispatch thunk of GlassDimmingView.foregroudGradientValues.setter();
          }
        }
      }
    }
  }
}

id closure #1 in LocalParticipantView.isInRosterDidChange()(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_isInRoster;
  swift_beginAccess();
  if (*(a2 + v4) == 1)
  {
    if (one-time initialization token for shadow != -1)
    {
      swift_once();
    }

    v5 = [static Colors.LocalParticipantView.shadow CGColor];
    [a1 setShadowColor_];

    LODWORD(v6) = 1062501089;
    [a1 setShadowOpacity_];
    [a1 setShadowOffset_];
    return [a1 setShadowRadius_];
  }

  else
  {
    v8 = [objc_opt_self() clearColor];
    v9 = [v8 CGColor];

    [a1 setShadowColor_];
    return [a1 setShadowOpacity_];
  }
}

id LocalParticipantView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall LocalParticipantView.didTap(_:)(ConversationKit::LocalParticipantAction a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate, v6);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, v1, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void __swiftcall LocalParticipantView.hostingController()(UIViewController_optional *__return_ptr retstr)
{
  v2 = v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_delegate, v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

uint64_t LocalParticipantView.participantViewDidTapShutter(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_19(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(5, v1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LocalParticipantView.layoutIdiom.getter@<X0>(char *a1@<X8>, uint64_t a2@<X0>)
{
  OUTLINED_FUNCTION_30_19(a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(v8, ObjectType, v5);
    result = swift_unknownObjectRelease();
    v7 = v8[0];
  }

  else
  {
    v7 = 2;
  }

  *a1 = v7;
  return result;
}

void LocalParticipantView.showCountdownLabelIfNeeded()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel;
  if (!*&v0[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel])
  {
    v2 = v0;
    v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v4 = [v3 fontDescriptorWithDesign_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_SitGMd, &_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_SitGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    v6 = *MEMORY[0x1E69DDCF0];
    *(inited + 32) = *MEMORY[0x1E69DDCF0];
    *(inited + 40) = 6;
    v7 = *MEMORY[0x1E69DDCE8];
    *(inited + 48) = *MEMORY[0x1E69DDCE8];
    *(inited + 56) = 0;
    type metadata accessor for UIFontDescriptorFeatureKey(0);
    lazy protocol witness table accessor for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey, &protocol conformance descriptor for UIFontDescriptorFeatureKey);
    v8 = v6;
    v9 = v7;
    v10 = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_SaySDySo0dE10FeatureKeyaSiGGtGMd, &_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_SaySDySo0dE10FeatureKeyaSiGGtGMR);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1BC4BA940;
    v12 = *MEMORY[0x1E69DB8B0];
    *(v11 + 32) = *MEMORY[0x1E69DB8B0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaSiGGMd, &_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaSiGGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BC4BA940;
    *(v13 + 32) = v10;
    *(v11 + 40) = v13;
    type metadata accessor for UIFontDescriptorAttributeName(0);
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd, &_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMR);
    lazy protocol witness table accessor for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);
    v15 = Dictionary.init(dictionaryLiteral:)();
    if (v4)
    {
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v17 = [v4 fontDescriptorByAddingAttributes_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel, 0x1E69DCC10);
      if (v17)
      {
        v18 = [objc_opt_self() fontWithDescriptor:v17 size:200.0];
LABEL_7:
        v19 = v18;
        v39.value.super.isa = [objc_opt_self() whiteColor];
        UILabel.init(font:textColor:)(v20, v19, v39);
        v22 = v21;
        [v22 setTranslatesAutoresizingMaskIntoConstraints_];
        [v22 setTextAlignment_];
        [v2 insertSubview:v22 belowSubview:*&v2[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView]];
        v23 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1BC4BA7F0;
        v25 = [v22 topAnchor];
        v26 = [v2 topAnchor];
        v27 = [v25 constraintEqualToAnchor_];

        *(v24 + 32) = v27;
        v28 = [v22 bottomAnchor];
        v29 = [v2 bottomAnchor];
        v30 = [v28 constraintEqualToAnchor_];

        *(v24 + 40) = v30;
        v31 = [v22 leadingAnchor];
        v32 = [v2 leadingAnchor];
        v33 = [v31 constraintEqualToAnchor_];

        *(v24 + 48) = v33;
        v34 = [v22 trailingAnchor];

        v35 = [v2 trailingAnchor];
        v36 = [v34 constraintEqualToAnchor_];

        *(v24 + 56) = v36;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        v37 = Array._bridgeToObjectiveC()().super.isa;

        [v23 activateConstraints_];

        v38 = *&v2[v1];
        *&v2[v1] = v22;

        return;
      }
    }

    else
    {

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel, 0x1E69DCC10);
    }

    v18 = [objc_opt_self() systemFontOfSize_];
    v17 = 0;
    goto LABEL_7;
  }
}

Swift::Void __swiftcall LocalParticipantView.updateCountdownWith(_:)(Swift::Int a1)
{
  LocalParticipantView.showCountdownLabelIfNeeded()();
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel);
  if (v2)
  {
    v3 = v2;
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    outlined bridged method (mbnn) of @objc UILabel.text.setter(v4, v5, v3);
  }
}

Swift::Void __swiftcall LocalParticipantView.endCountdown()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_countdownLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

id @nonobjc UILongPressGestureRecognizer.init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

unint64_t lazy protocol witness table accessor for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t outlined assign with take of ButtonShelfView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15ButtonShelfViewVSgMd, &_s16CommunicationsUI15ButtonShelfViewVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ParticipantViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ParticipantViewModel.ParticipantDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LocalParticipantControlsView.ViewModel(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantLongPressAction and conformance LocalParticipantLongPressAction()
{
  result = lazy protocol witness table cache variable for type LocalParticipantLongPressAction and conformance LocalParticipantLongPressAction;
  if (!lazy protocol witness table cache variable for type LocalParticipantLongPressAction and conformance LocalParticipantLongPressAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantLongPressAction and conformance LocalParticipantLongPressAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantAction and conformance LocalParticipantAction()
{
  result = lazy protocol witness table cache variable for type LocalParticipantAction and conformance LocalParticipantAction;
  if (!lazy protocol witness table cache variable for type LocalParticipantAction and conformance LocalParticipantAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantAction and conformance LocalParticipantAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantView.DragEventType and conformance LocalParticipantView.DragEventType()
{
  result = lazy protocol witness table cache variable for type LocalParticipantView.DragEventType and conformance LocalParticipantView.DragEventType;
  if (!lazy protocol witness table cache variable for type LocalParticipantView.DragEventType and conformance LocalParticipantView.DragEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantView.DragEventType and conformance LocalParticipantView.DragEventType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalParticipantLongPressAction(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalParticipantAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocalParticipantAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for LocalParticipantView(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocalParticipantView;
  if (!type metadata singleton initialization cache for LocalParticipantView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LocalParticipantView(uint64_t a1, double a2)
{
  type metadata accessor for ButtonShelfView?(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Published<VideoMessageController.State>();
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for ButtonShelfView?(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ButtonShelfView?)
  {
    type metadata accessor for ButtonShelfView();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ButtonShelfView?);
    }
  }
}

void type metadata accessor for Published<VideoMessageController.State>()
{
  if (!lazy cache variable for type metadata for Published<VideoMessageController.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<VideoMessageController.State>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LocalParticipantView.DragEventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

BOOL static CallScreeningScreeningState.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[6];
  v6 = a2[6];

  return _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v5, v6);
}

uint64_t CallScreeningScreeningState.callUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallScreeningScreeningState.onEnterState.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CallScreeningScreeningState.onLeaveState.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CallScreeningScreeningState.init(prevState:onEnterState:onLeaveState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd, &_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMR);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *a1;
  v14 = a1[1];

  *a6 = v13;
  a6[1] = v14;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  a6[6] = v12;
  return result;
}

void CallScreeningScreeningState.willExit(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(v2 + 1);
  v35[0] = *v2;
  v35[1] = v8;
  v35[2] = *(v2 + 2);
  v36 = v2[6];
  OUTLINED_FUNCTION_0_118();
  WitnessTable = swift_getWitnessTable();
  if (CallScreeningState.stateMachine.getter(a2, WitnessTable))
  {
    OUTLINED_FUNCTION_7_64();
    v10();
    v33 = v2[1];
    v34 = *v2;
    v32 = v2[4];
    v11 = v2[5];

    v37 = v11;

    outlined init with copy of CallScreening.State(a1, v35);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    outlined destroy of CallScreening.State(v12);
    if (os_log_type_enabled(v13, v14))
    {
      v31 = v6;
      v15 = swift_slowAlloc();
      *&v35[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = CallScreeningScreeningState.description.getter();
      v18 = v17;

      v19 = v33;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v35);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v21 = CallScreening.State.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v35);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1BBC58000, v13, v14, "%{public}s Exiting to %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      v24 = OUTLINED_FUNCTION_3_93();
      v26 = v31;
    }

    else
    {

      v19 = v33;

      v24 = OUTLINED_FUNCTION_3_93();
      v26 = v6;
    }

    v25(v24, v26);
    v32(v3, v34, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for answeringMachine != -1)
    {
      OUTLINED_FUNCTION_2_97(&one-time initialization token for answeringMachine);
    }

    __swift_project_value_buffer(v6, static Logger.answeringMachine);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v29, v30, "StateMachine is nil in willExit");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreeningScreeningState.enteredState()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(v1 + 1);
  v30[0] = *v1;
  v30[1] = v6;
  v30[2] = *(v1 + 2);
  v31 = v1[6];
  OUTLINED_FUNCTION_0_118();
  WitnessTable = swift_getWitnessTable();
  if (CallScreeningState.stateMachine.getter(v3, WitnessTable))
  {
    OUTLINED_FUNCTION_7_64();
    v8();
    v28 = v1[1];
    v29 = *v1;
    v9 = v1[3];
    v27 = v1[2];

    v32 = v9;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v26 = v4;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v30[0] = v13;
      *v12 = 136446210;
      v25 = CallScreeningScreeningState.description.getter();
      v15 = v14;

      v16 = v28;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v15, v30);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1BBC58000, v10, v11, "EnteredState %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      v18 = OUTLINED_FUNCTION_3_93();
      v20 = v26;
    }

    else
    {

      v16 = v28;

      v18 = OUTLINED_FUNCTION_3_93();
      v20 = v4;
    }

    v19(v18, v20);
    v27(v2, v29, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for answeringMachine != -1)
    {
      OUTLINED_FUNCTION_2_97(&one-time initialization token for answeringMachine);
    }

    __swift_project_value_buffer(v4, static Logger.answeringMachine);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v23, v24, "StateMachine is nil in enteredState");
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

uint64_t CallScreeningScreeningState.update(with:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = type metadata accessor for AnsweringMachineCallStatus(0);
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for CallScreeningStatus();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static CKStateMachineActor.shared;
  v3[21] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreeningScreeningState.update(with:), v6, 0);
}

uint64_t CallScreeningScreeningState.update(with:)()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = v1[1];
  v3 = v1[2];
  v5 = *v1;
  *(v0 + 64) = *(v1 + 6);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_0_118();
  WitnessTable = swift_getWitnessTable();
  v7 = CallScreeningState.stateMachine.getter(v2, WitnessTable);
  *(v0 + 176) = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v11 = *v8;
  v10 = *(v8 + 1);
  if (*(v9 + 16) != *v8 || *(v9 + 24) != v10)
  {
    OUTLINED_FUNCTION_77();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v20 = *(v0 + 144);
      v19 = *(v0 + 152);
      v21 = *(v0 + 136);
      (*(v20 + 104))(v19, *MEMORY[0x1E6995E98], v21);
      v22 = CallScreeningStatus.isBaseCase(_:)();
      (*(v20 + 8))(v19, v21);
      if (v22)
      {
LABEL_11:
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = *(v0 + 104);
        v25 = *(v0 + 72);
        OUTLINED_FUNCTION_7_64();
        v26();
        outlined init with copy of AnsweringMachineCallStatus(v25, v50);

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();

        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 120);
        v31 = *(v0 + 128);
        v32 = *(v0 + 104);
        v33 = *(v0 + 112);
        if (v29)
        {
          v51 = *(v0 + 128);
          v34 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v34 = 136446466;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v55);
          *(v34 + 12) = 2082;
          v35 = *(v32 + 16);
          v36 = *(v32 + 24);

          outlined destroy of AnsweringMachineCallStatus(v32);
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v55);

          *(v34 + 14) = v37;
          _os_log_impl(&dword_1BBC58000, v27, v28, "Found a call in screening that does not match the one we are tracking! Tracked: %{public}s new: %{public}s", v34, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          swift_unknownObjectRelease();

          (*(v30 + 8))(v51, v33);
        }

        else
        {
          swift_unknownObjectRelease();

          outlined destroy of AnsweringMachineCallStatus(v32);
          (*(v30 + 8))(v31, v33);
        }
      }

      goto LABEL_12;
    }

    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
  }

  v13 = *(v0 + 80);
  v14 = swift_allocObject();
  *(v0 + 184) = v14;
  *(v14 + 16) = *(v13 + 16);
  v15 = *(v13 + 24);
  *(v14 + 24) = v15;
  v16 = *v8;
  v17 = v8[1];
  v18 = v8[2];
  *(v14 + 80) = *(v8 + 6);
  *(v14 + 48) = v17;
  *(v14 + 64) = v18;
  *(v14 + 32) = v16;
  switch(*(v9 + 32))
  {
    case 1:
      (*(*(v0 + 144) + 16))(*(v0 + 160), v9 + *(*(v0 + 96) + 28), *(v0 + 136));
      v38 = OUTLINED_FUNCTION_77();
      if (v39(v38) == *MEMORY[0x1E6995E98])
      {
        v40 = *(*(v0 + 144) + 8);

        v41 = OUTLINED_FUNCTION_77();
        v40(v41);
        v52 = (*(v15 + 32) + **(v15 + 32));
        v42 = swift_task_alloc();
        *(v0 + 192) = v42;
        *v42 = v0;
        v42[1] = CallScreeningScreeningState.update(with:);
        OUTLINED_FUNCTION_1_100();
        OUTLINED_FUNCTION_12_48();
        v43 = v52;
LABEL_22:

        __asm { BRAA            X8, X16 }
      }

      swift_unknownObjectRelease();
      v48 = OUTLINED_FUNCTION_77();
      v49(v48);
      break;
    case 5:
      v44 = *(v15 + 32);

      v53 = v44 + *v44;
      v45 = swift_task_alloc();
      *(v0 + 208) = v45;
      *v45 = v0;
      v45[1] = CallScreeningScreeningState.update(with:);
      OUTLINED_FUNCTION_1_100();
      OUTLINED_FUNCTION_77();
      goto LABEL_21;
    case 6:
      v46 = *(v15 + 32);

      v53 = v46 + *v46;
      v47 = swift_task_alloc();
      *(v0 + 224) = v47;
      *v47 = v0;
      v47[1] = CallScreeningScreeningState.update(with:);
      OUTLINED_FUNCTION_1_100();
      OUTLINED_FUNCTION_12_48();
LABEL_21:
      v43 = v53;
      goto LABEL_22;
    default:

      goto LABEL_11;
  }

LABEL_12:

  OUTLINED_FUNCTION_13();

  return v23();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  else
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_9();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  else
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 232) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  else
  {
    v6 = CallScreeningScreeningState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_5_76();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_5_76();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_5_76();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

void closure #1 in CallScreeningScreeningState.update(with:)(uint64_t *a1, void *a2)
{
  if (a1[6] >> 61 == 4)
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 0;
  }

  lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
  v4 = swift_allocError();
  if (v3)
  {
  }

  else
  {
    swift_willThrow();
  }
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningScreeningState<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 72) = v7;
  *v7 = v3;
  v7[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningScreeningState<A>;

  return CallScreeningScreeningState.update(with:)(a1, a2);
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningScreeningState<A>()
{

  OUTLINED_FUNCTION_13();

  return v0();
}

unint64_t CallScreeningScreeningState.description.getter()
{
  _StringGuts.grow(_:)(28);

  MEMORY[0x1BFB20B10](*v0, v0[1]);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t instantiation function for generic protocol witness table for CallScreeningScreeningState<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for CallScreeningScreeningState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void __swiftcall UIActivityIndicatorView.init(style:size:)(UIActivityIndicatorView *__return_ptr retstr, ConversationKit::PlatformActivityIndicatorStyle style, ConversationKit::PlatformActivityIndicatorSize size)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (size)
  {
    v5 = 101;
  }

  else
  {
    v5 = 100;
  }

  [v4 setActivityIndicatorViewStyle_];
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlatformActivityIndicatorSize(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PlatformActivityIndicatorSize and conformance PlatformActivityIndicatorSize()
{
  result = lazy protocol witness table cache variable for type PlatformActivityIndicatorSize and conformance PlatformActivityIndicatorSize;
  if (!lazy protocol witness table cache variable for type PlatformActivityIndicatorSize and conformance PlatformActivityIndicatorSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformActivityIndicatorSize and conformance PlatformActivityIndicatorSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformActivityIndicatorStyle and conformance PlatformActivityIndicatorStyle()
{
  result = lazy protocol witness table cache variable for type PlatformActivityIndicatorStyle and conformance PlatformActivityIndicatorStyle;
  if (!lazy protocol witness table cache variable for type PlatformActivityIndicatorStyle and conformance PlatformActivityIndicatorStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformActivityIndicatorStyle and conformance PlatformActivityIndicatorStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatformActivityIndicatorSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

Swift::Void __swiftcall UIView.setCHCRPriority(_:)(__C::UILayoutPriority a1)
{
  [v1 setContentCompressionResistancePriority:1 forAxis:?];
  LODWORD(v3) = a1;
  [v1 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = a1;
  [v1 setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = a1;

  [v1 setContentHuggingPriority:0 forAxis:v5];
}

uint64_t static UIView.animate(with:delay:animations:completion:)(void *a1, uint64_t a2, char a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  return specialized static UIView.animate(with:delay:animations:completion:)(v16, a2, a3 & 1, a4, a5, a6, a7, v7, v14, v15);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

BOOL ContextMenuNotificationUserInfoKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContextMenuNotificationUserInfoKey.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ContextMenuNotificationUserInfoKey@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContextMenuNotificationUserInfoKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContextMenuNotificationUserInfoKey@<X0>(void *a1@<X8>)
{
  result = ContextMenuNotificationUserInfoKey.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t UIView.contextMenuUserInfo.getter()
{
  v5 = MEMORY[0x1E69E7CC8];
  v1 = [v0 SBUISA_layoutMode];
  type metadata accessor for SBUISystemApertureLayoutMode(0);
  v4[3] = v2;
  v4[0] = v1;
  specialized Dictionary.subscript.setter(v4);
  return v5;
}

void _sSo6UIViewC15ConversationKitE7animate4with5delay10animations10completionyAC15AnimationTiming_p_SdSgyycySbcSgtFZTf4ennnn_nAC06SpringI10ParametersV_Tt3g5(double *a1, uint64_t a2, char a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:a1[1] stiffness:a1[2] damping:a1[3] initialVelocity:{a1[4], a1[5]}];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v14 timingParameters:v13];

  v24 = a4;
  v25 = a5;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed () -> ();
  v23 = &block_descriptor_45;
  v16 = _Block_copy(&v20);

  [v15 addAnimations_];
  _Block_release(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  v24 = partial apply for closure #1 in static UIView.animate(with:delay:animations:completion:);
  v25 = v17;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v23 = &block_descriptor_7_0;
  v18 = _Block_copy(&v20);
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a6, a7);

  [v15 addCompletion_];
  _Block_release(v18);
  if ((a3 & 1) != 0 || (v19 = *&a2, *&a2 <= 0.0))
  {
    [v15 startAnimation];
  }

  else
  {
    [v15 startAnimationAfterDelay_];
  }
}

void _sSo6UIViewC15ConversationKitE7animate4with5delay10animations10completionyAC15AnimationTiming_p_SdSgyycySbcSgtFZTf4ennnn_nAC05CubicI10ParametersV_Tt3g5(double *a1, uint64_t a2, char a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:a1[1] controlPoint2:{a1[2], a1[3], a1[4]}];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v14 timingParameters:v13];

  v24 = a4;
  v25 = a5;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed () -> ();
  v23 = &block_descriptor_10_0;
  v16 = _Block_copy(&v20);

  [v15 addAnimations_];
  _Block_release(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  v24 = closure #1 in static UIView.animate(with:delay:animations:completion:)partial apply;
  v25 = v17;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v23 = &block_descriptor_17_0;
  v18 = _Block_copy(&v20);
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a6, a7);

  [v15 addCompletion_];
  _Block_release(v18);
  if ((a3 & 1) != 0 || (v19 = *&a2, *&a2 <= 0.0))
  {
    [v15 startAnimation];
  }

  else
  {
    [v15 startAnimationAfterDelay_];
  }
}

uint64_t specialized static UIView.animate(with:delay:animations:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = *&a2;
  v28 = a7;
  v29 = a3;
  v14 = *(a9 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  v18 = (*(a10 + 8))(a9, a10);
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:(*(a10 + 16))(a9 timingParameters:{a10), v18}];
  swift_unknownObjectRelease();
  v34 = a4;
  v35 = a5;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_20_1;
  v20 = _Block_copy(&aBlock);

  [v19 addAnimations_];
  _Block_release(v20);
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 16) = a6;
  *(v21 + 24) = v22;
  v34 = closure #1 in static UIView.animate(with:delay:animations:completion:)partial apply;
  v35 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v33 = &block_descriptor_27;
  v23 = _Block_copy(&aBlock);
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a6, v22);

  [v19 addCompletion_];
  _Block_release(v23);
  if ((v29 & 1) != 0 || (v24 = v27, v27 <= 0.0))
  {
    [v19 startAnimation];
  }

  else
  {
    [v19 startAnimationAfterDelay_];
  }

  return (*(v14 + 8))(v17, a9);
}

_BYTE *storeEnumTagSinglePayload for ContextMenuNotificationUserInfoKey(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in static UIView.animate(with:delay:animations:completion:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result == 0);
  }

  return result;
}

uint64_t ConversationControlsMicMenuButtonProvider.__allocating_init(controlsManager:context:shape:menuHostViewController:)()
{
  OUTLINED_FUNCTION_3_1();
  swift_allocObject();
  OUTLINED_FUNCTION_5_77();
  return ConversationControlsMicMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
}

uint64_t ConversationControlsMicMenuButtonProvider.routeCallbackCancellable.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

uint64_t ConversationControlsMicMenuButtonProvider.routeCallbackCancellable.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(v1 + 192, v4);
  *(v1 + 192) = a1;
}

uint64_t ConversationControlsMicMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 routeController];

  *(v0 + 184) = v2;
  *(v0 + 192) = 0;
  OUTLINED_FUNCTION_5_77();

  return ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
}

uint64_t ConversationControlsMicMenuButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd, &_s5UIKit31UIConfigurationColorTransformerVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  ConversationControlsMenuButtonProvider.buttonConfiguration.getter(a1);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  UIConfigurationColorTransformer.init(_:)();
  v5 = type metadata accessor for UIConfigurationColorTransformer();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  return UIButton.Configuration.imageColorTransformer.setter();
}

id closure #1 in ConversationControlsMicMenuButtonProvider.buttonConfiguration.getter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (static Platform.current.getter() == 2)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v4 = Features.isICUIRedesignEnabled.getter();
        v5 = objc_opt_self();
        v6 = &selRef_orangeColor;
        if ((v4 & 1) == 0)
        {
          v6 = &selRef_whiteColor;
        }

        v7 = [v5 *v6];
        if (![v3 isSelected])
        {
          v8 = [objc_opt_self() systemRedColor];

          return v8;
        }

        goto LABEL_17;
      }

      if (![v3 isSelected])
      {
        v7 = [objc_opt_self() systemRedColor];
LABEL_17:

        return v7;
      }
    }
  }

  return a1;
}

Swift::Void __swiftcall ConversationControlsMicMenuButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd, &_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMR);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  ControlsButtonProvider.buttonChanged()();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v35 = v4;
    v36 = v2;
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000013, 0x80000001BC4F7950, Strong);
    [v15 addTarget:v0 action:sel_toggleMicButtonTapped forControlEvents:0x2000];
    type metadata accessor for ConversationControlsButton();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v18 = objc_opt_self();
      v34 = v15;
      v19 = [v18 conversationKit];
      OUTLINED_FUNCTION_5_5();
      v20.super.isa = v19;
      v23 = OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC504760, v21, v22, v20);
      v25 = v24;

      v26 = (v17 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
      OUTLINED_FUNCTION_3_5(v17 + OBJC_IVAR___CNKConversationControlsButton_localizedName, v37);
      *v26 = v23;
      v26[1] = v25;

      ConversationControlsButton.localizedName.didset();
    }

    v27 = v1[20];
    v28 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v27) + 0x6C8))();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
    v29 = Publisher<>.sink(receiveValue:)();

    (*(v10 + 8))(v13, v8);
    OUTLINED_FUNCTION_3_5((v1 + 6), v39);
    v1[6] = v29;

    (*((*v28 & *v27) + 0x668))(v30);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<TURoute?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMd, &_s7Combine9PublishedV9PublisherVySo7TURouteCSg_GMR);
    v31 = v36;
    v32 = Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v7, v31);
    OUTLINED_FUNCTION_3_5((v1 + 24), v38);
    v1[24] = v32;
  }
}

uint64_t closure #1 in ConversationControlsMicMenuButtonProvider.buttonChanged()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;

      [v5 setSelected_];
      v6 = v5;
      [v6 setShowsMenuAsPrimaryAction_];

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        v7 = v2 == 0;
        if (v2)
        {
          v8 = &type metadata for SymbolImageDescribers.EphemeralAlerts;
        }

        else
        {
          v8 = &type metadata for SymbolImageDescribers.ConversationControls;
        }

        if (v7)
        {
          v9 = &protocol witness table for SymbolImageDescribers.ConversationControls;
        }

        else
        {
          v9 = &protocol witness table for SymbolImageDescribers.EphemeralAlerts;
        }

        if (v7)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        v13[3] = v8;
        v13[4] = v9;
        LOBYTE(v13[0]) = v10;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
        __swift_project_boxed_opaque_existential_1(v13, v8);
        (v9[1])(v14, v8, v9);
        v11 = static UIImage.symbolImage(for:)(v14);
        outlined destroy of SymbolImageDescription(v14);
        ControlsButtonProvider.image.setter(v11, v12);

        return __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t ConversationControlsMicMenuButtonProvider.shouldEnableMenu(localAudioEnabled:audioRoute:)(char a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    result = [*(v3 + 184) pickedRoute];
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  v8 = a2;
  if ([v6 isBluetooth] && (objc_msgSend(v6, sel_isPartnerRouteRoutable) & 1) != 0 || objc_msgSend(v6, sel_isBluetoothLE) && (objc_msgSend(v6, sel_isSiblingRoutePresent) & 1) != 0)
  {
    v9 = MEMORY[0x1E69E7D40];
    if (a1 == 2)
    {
      if (((*((*MEMORY[0x1E69E7D40] & **(v3 + 160)) + 0x6B0))() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((a1 & 1) == 0)
    {
LABEL_11:
      v10 = *(v3 + 160);
      v11 = (*((*v9 & *v10) + 0x988))();
      v12 = v11;
      if (v11)
      {
      }

      v13 = (*((*v9 & *v10) + 0x680))();
      v15 = v14;

      if (v15)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else if (!v12)
      {
        return v13 == 1;
      }

      return 1;
    }
  }

  return 0;
}

void closure #2 in ConversationControlsMicMenuButtonProvider.buttonChanged()(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [v4 setShowsMenuAsPrimaryAction_];
    }

    else
    {
    }
  }
}

Class ConversationControlsMicMenuButtonProvider.menu(for:)()
{
  v1 = v0;
  v2 = [*(v0 + 184) pickedRoute];
  if (!v2)
  {
    return 0;
  }

  v88 = v2;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Displaying Mic menu", v6, 2u);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  v7 = *(v1 + 160);
  v8 = ((*((*MEMORY[0x1E69E7D40] & *v7) + 0x6B0))() & 1) == 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v9 = objc_opt_self();
  v10 = [v9 conversationKit];
  v11.super.isa = v10;
  OUTLINED_FUNCTION_17_0(0x4F48504F5243494DLL, 0xEE0046464F5F454ELL, 0x61737265766E6F43, 0xEF74694B6E6F6974, v11);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  @nonobjc UIImage.__allocating_init(systemName:)(0x73616C732E63696DLL, 0xEE006C6C69662E68);
  OUTLINED_FUNCTION_20();
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_3_0();
  v87 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 model];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [v9 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v19.super.isa = v18;
  OUTLINED_FUNCTION_17_0(v20, v21, v22, v23, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC4BA940;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 32) = v15;
  *(v24 + 40) = v17;
  String.init(format:_:)();
  v25 = MEMORY[0x1E69E7D40];

  v27 = *((*v25 & *v7) + 0x518);
  v28 = v27(v26);
  if (v28)
  {
    v29 = [v28 audioRouteGlyphForDevice];
    v28 = swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0;
  }

  v31 = *((*v25 & *v7) + 0x2A0);
  v31(v28);
  v33 = v32;
  ObjectType = swift_getObjectType();
  v35 = (*(v33 + 296))(ObjectType, v33);
  swift_unknownObjectRelease();
  v86 = v29;
  v36 = [v9 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v37.super.isa = v36;
  OUTLINED_FUNCTION_17_0(v38, v39, v40, v41, v37);
  v43 = v42;

  OUTLINED_FUNCTION_20();
  v44 = swift_allocObject();
  swift_weakInit();
  v84 = v43;
  OUTLINED_FUNCTION_3_0();
  v45 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v50 = (v27)(v45, v46, v47, v48, v49);
  if (v50)
  {
    v51 = v88;
    v52 = [v50 audioRouteGlyphFor_];
    v50 = swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0;
    v51 = v88;
  }

  v31(v50);
  v54 = v53;
  v55 = swift_getObjectType();
  (*(v54 + 296))(v55, v54);
  swift_unknownObjectRelease();
  v56 = [v51 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  v57 = v52;
  OUTLINED_FUNCTION_3_0();
  v58 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1BC4BA930;
  *(v59 + 32) = v45;
  *(v59 + 40) = v58;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v60 = v51;
  v61 = v45;
  v62 = v58;
  OUTLINED_FUNCTION_3_0();
  isa = OUTLINED_FUNCTION_8_63(v63, v64, v65, v66, v67, v68, v69, v70, v59, 0).super.super.isa;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1BC4BA930;
  *(v72 + 32) = v87;
  *(v72 + 40) = isa;
  v73 = v87;
  v74 = isa;
  OUTLINED_FUNCTION_3_0();
  v30 = OUTLINED_FUNCTION_8_63(v75, v76, v77, v78, v79, v80, v81, v82, v72, v85).super.super.isa;

  return v30;
}

uint64_t ConversationControlsMicMenuButtonProvider.__ivar_destroyer()
{
}

uint64_t ConversationControlsMicMenuButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsMicMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsMicMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id specialized Array<A>.preferredDevice(at:previousDevice:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a2)
  {
    v3 = a2;
    v7 = specialized Array<A>.camera(_:matchesPosition:)(v3, a1);
    if (v7)
    {
      v58 = v3;
      MEMORY[0x1EEE9AC00](v7);
      v52[2] = &v58;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v52, a3))
      {
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v8 = static OS_os_log.conversationKit;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1BC4BA940;
        v58 = v3;
        type metadata accessor for AVCaptureDevice();
        v10 = v3;
        v11 = String.init<A>(reflecting:)();
        v13 = v12;
        *(v9 + 56) = MEMORY[0x1E69E6158];
        *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v9 + 32) = v11;
        *(v9 + 40) = v13;
        v14 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Previously set currentInputDevice meets position criteria for video and will be reused: %@", 90, 2, &dword_1BBC58000, v8, v14, v9);

        return v5;
      }
    }

    v53 = 0;
    v54 = v5;
    v56 = a1;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    v56 = a1;
  }

  v15 = specialized Array.count.getter();
  v16 = 0;
  v57 = a3 & 0xC000000000000001;
  v17 = a3 & 0xFFFFFFFFFFFFFF8;
  v55 = 2 - v56;
  while (v15 != v16)
  {
    if (v57)
    {
      v18 = MEMORY[0x1BFB22010](v16, a3);
    }

    else
    {
      if (v16 >= *(v17 + 16))
      {
        goto LABEL_36;
      }

      v18 = *(a3 + 8 * v16 + 32);
    }

    v3 = v18;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
LABEL_27:
      v29 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BC4BAA20;
      v58 = v3;
      type metadata accessor for AVCaptureDevice();
      v31 = v3;
      v32 = String.init<A>(reflecting:)();
      v34 = v33;
      v35 = MEMORY[0x1E69E6158];
      *(v30 + 56) = MEMORY[0x1E69E6158];
      v36 = lazy protocol witness table accessor for type String and conformance String();
      *(v30 + 64) = v36;
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      if (v54)
      {
        v58 = v54;
        v37 = v54;
        v38 = String.init<A>(reflecting:)();
      }

      else
      {
        v39 = 0xE300000000000000;
        v38 = 7104878;
      }

      *(v30 + 96) = v35;
      *(v30 + 104) = v36;
      *(v30 + 72) = v38;
      *(v30 + 80) = v39;
      v50 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Selected camera device for video: %@, differing from previously used device: %@", 79, 2, &dword_1BBC58000, v29, v50, v30);

      return v3;
    }

    v19 = a3;
    v20 = [v18 deviceType];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        v27 = [v3 position];
        v28 = v27 == v55;
        goto LABEL_23;
      }
    }

    v28 = (v56 | 2) == 2;
LABEL_23:
    a3 = v19;
    if (v28)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    ++v16;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v40 = static OS_os_log.conversationKit;
  v41 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BC4BAA20;
  LOBYTE(v58) = v56;
  v43 = String.init<A>(reflecting:)();
  v45 = v44;
  v46 = MEMORY[0x1E69E6158];
  *(v42 + 56) = MEMORY[0x1E69E6158];
  v47 = lazy protocol witness table accessor for type String and conformance String();
  *(v42 + 64) = v47;
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v58 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15AVCaptureDeviceCGMd, &_sSaySo15AVCaptureDeviceCGMR);
  v48 = String.init<A>(reflecting:)();
  *(v42 + 96) = v46;
  *(v42 + 104) = v47;
  *(v42 + 72) = v48;
  *(v42 + 80) = v49;
  os_log(_:dso:log:type:_:)("Unable to find device for requested position: %@, %@", 52, 2, &dword_1BBC58000, v40, v41, v42);

  return 0;
}

BOOL specialized Array<A>.camera(_:matchesPosition:)(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = [a1 deviceType];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return [a1 position] == (2 - v3);
    }
  }

  return (v3 & 0xFD) == 0;
}

id TUVideoDeviceController.cameraPosition.getter()
{
  result = [v0 currentInputDevice];
  if (result)
  {
    v2 = result;
    if (CameraPosition.init(avDevicePosition:)([result position]).value == ConversationKit_CameraPosition_unknownDefault)
    {
      goto LABEL_3;
    }

    v3 = [v2 deviceType];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {

      return 0;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
LABEL_3:

      return 0;
    }

    LOBYTE(v10) = CameraPosition.init(avDevicePosition:)([v2 position]);
    v11 = v10;
    v12 = v10;

    if (v12 == 3)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void TUVideoDeviceController.startCamera(at:deviceOrientation:shouldUpdateLayers:)(uint64_t a1, unint64_t a2, char a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v7 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BAA20;
  v9 = String.init<A>(reflecting:)();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  type metadata accessor for CNKDeviceOrientation(0);
  v14 = String.init<A>(reflecting:)();
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CameraContainer start camera at: %@, deviceOrientation: %@", 58, 2, &dword_1BBC58000, v7, v16, v8, a2);

  v17 = [v3 inputDevices];
  type metadata accessor for AVCaptureDevice();
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = [v3 currentInputDevice];
  v20 = specialized Array<A>.preferredDevice(at:previousDevice:)(a1, v19, v18);

  if (v20)
  {
    [v3 setCurrentInputDevice_];
    [v3 setCurrentVideoOrientation_];
    [v3 startPreview];
    if (a3)
    {
      TUVideoDeviceController.updateVideoLayers(for:)(a1);
    }
  }

  else
  {
    v21 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Cancelling startCamera as camera returned from preferredDevice is nil", 69, 2, &dword_1BBC58000, v7, v21, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t TUVideoDeviceController.tuVideoDeviceOrientationFor(_:)(unint64_t a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ([v1 currentInputIsExternal])
  {
    v5 = v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationKit);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v6 = 2;
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Forcing device orientation to be landscapeLeft due to ipad external camera", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  else if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1BC4CE7F0[a1];
  }

  return v6;
}

Swift::Void __swiftcall TUVideoDeviceController.updateVideoLayers(for:)(ConversationKit::CameraPosition a1)
{
  if (a1 == ConversationKit_CameraPosition_front)
  {
    v5 = [v2 localBackLayer];
    if (v5)
    {
      OUTLINED_FUNCTION_2_98(v5);
    }

    goto LABEL_8;
  }

  if (a1 != ConversationKit_CameraPosition_back)
  {
LABEL_8:
    v4 = [v2 localFrontLayer];
    goto LABEL_9;
  }

  v3 = [v2 localFrontLayer];
  if (v3)
  {
    OUTLINED_FUNCTION_2_98(v3);
  }

  v4 = [v2 localBackLayer];
LABEL_9:
  v6 = v4;
  if (v6)
  {
    v7 = v6;
    [v6 setHidden_];
  }
}

id TUVideoDeviceController.updateCurrentVideoOrientation(_:)(unint64_t a1)
{
  v2 = TUVideoDeviceController.tuVideoDeviceOrientationFor(_:)(a1);

  return [v1 setCurrentVideoOrientation_];
}

Swift::Void __swiftcall TUVideoDeviceController.stopCamera()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v1 = static OS_os_log.conversationKit;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CameraContainer stop camera", 27, 2, &dword_1BBC58000, v1, v2, MEMORY[0x1E69E7CC0]);
  [v0 stopPreview];
  v3 = [v0 localFrontLayer];
  if (v3)
  {
    OUTLINED_FUNCTION_2_98(v3);
  }

  v4 = [v0 localBackLayer];
  if (v4)
  {
    v5 = v4;
    [v4 setHidden_];
  }
}

Swift::Void __swiftcall TUVideoDeviceController.pauseCamera()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v1 = static OS_os_log.conversationKit;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CameraContainer pause camera", 28, 2, &dword_1BBC58000, v1, v2, MEMORY[0x1E69E7CC0]);

  [v0 pausePreview];
}

Swift::Void __swiftcall TUVideoDeviceController.setCameraBlurEnabled(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94("CameraContainer setting blur enabled: %@", 40, v8, &dword_1BBC58000, v9, v7);

  TUVideoDeviceController.setCurrentBackgroundBlurControlMode(mode:)(2);
  [v1 setCameraBlurEnabled_];
}

id TUVideoDeviceController.setCurrentBackgroundBlurControlMode(mode:)(uint64_t a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  type metadata accessor for TUVideoDeviceBackgroundBlurControlMode(0);
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94("CameraContainer setting currentBackgroundBlurControlMode: %@", 60, v8, &dword_1BBC58000, v9, v7);

  return [v1 setCurrentBackgroundBlurControlMode_];
}

Swift::Void __swiftcall TUVideoDeviceController.setBackgroundReplacementEnabled(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94("CameraContainer background replacement enabled: %@", 50, v8, &dword_1BBC58000, v9, v7);

  [v1 setBackgroundReplacementEnabled_];
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)()
{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

id TonePlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t TonePlayer.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8AA0]) init];
  v4[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallSoundPlayer, 0x1E69D8AA0);
  v4[4] = &protocol witness table for TUCallSoundPlayer;
  v4[0] = v1;
  v2 = (*(ObjectType + 184))(v4);
  swift_deallocPartialClassInstance();
  return v2;
}

char *TonePlayer.__allocating_init(soundPlayer:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_28_0();
  return TonePlayer.init(soundPlayer:)(v2);
}

char *TonePlayer.init(soundPlayer:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedConnectedToneUUID;
  v4 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundDate;
  v6 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(&v1[v5], 1, 1, v6);
  v7 = &v1[OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType];
  *v7 = 0;
  v7[8] = 1;
  outlined init with copy of IDSLookupManager(a1, &v1[OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer]);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TonePlayer(0);
  objc_msgSendSuper2(&v10, sel_init);
  v8 = OUTLINED_FUNCTION_28_0();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v1;
}

uint64_t type metadata accessor for TonePlayer(uint64_t a1)
{
  result = type metadata singleton initialization cache for TonePlayer;
  if (!type metadata singleton initialization cache for TonePlayer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *TonePlayer.playOutgoingGFTRingtone(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 504))(ObjectType, a2);
  if (result)
  {
    v7 = result;
    v10[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    v10[4] = &protocol witness table for TUConversation;
    v10[0] = v7;
    v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC8);
    v9 = v7;
    v8(v10);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

void TonePlayer.playOutgoingGFTRingtone(for:)(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v89 = v4;
  v90 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v87 = v9;
  v88 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v86 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v21 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v23 = OUTLINED_FUNCTION_3_95();
  v24(v23);
  v25 = specialized Set.count.getter();

  if (v25 < 2)
  {
    return;
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer), *(v1 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer + 24));
  v26 = OUTLINED_FUNCTION_3_95();
  if (v27(v26))
  {
    return;
  }

  v28 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v30 = OUTLINED_FUNCTION_3_95();
  if ((v31(v30) & 1) == 0)
  {
    return;
  }

  v32 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v34 = OUTLINED_FUNCTION_3_95();
  if ((v35(v34) & 1) == 0)
  {
    return;
  }

  v85 = v1;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v36 = (*(*static Defaults.shared + 904))();
    v38 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    v39 = (*(v37 + 120))(v38, v37);
    v40 = v39;
    if ((v36 & 1) == 0)
    {
      v54 = specialized Set.isEmpty.getter();

      if ((v54 & 1) == 0)
      {
        return;
      }

      goto LABEL_44;
    }

    if ((v39 & 0xC000000000000001) == 0)
    {
      break;
    }

    v41 = MEMORY[0x1E69E7CD0];
    aBlock[0] = MEMORY[0x1E69E7CD0];
    a1 = __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        v42 = __CocoaSet.Iterator.next()();
        if (!v42)
        {

          goto LABEL_43;
        }

        v91 = v42;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
        swift_dynamicCast();
        v43 = [v92 audioVideoMode];
        v44 = v92;
        if (v43)
        {
          break;
        }
      }

      v45 = *(v41 + 16);
      if (*(v41 + 24) <= v45)
      {
        specialized _NativeSet.resize(capacity:)(v45 + 1);
      }

      v41 = aBlock[0];
      v46 = NSObject._rawHashValue(seed:)(*(aBlock[0] + 40)) & ~(-1 << *(v41 + 32));
      if (((-1 << v46) & ~*(v41 + 56 + 8 * (v46 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_23:
      OUTLINED_FUNCTION_5_78(v47);
      *(*(v41 + 48) + 8 * v53) = v44;
      ++*(v41 + 16);
    }

    OUTLINED_FUNCTION_15_33();
    while (++v49 != v51 || (v50 & 1) == 0)
    {
      v52 = v49 == v51;
      if (v49 == v51)
      {
        v49 = 0;
      }

      v50 |= v52;
      if (*(v48 + 8 * v49) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v55 = *(v39 + 32);
  v56 = v55 & 0x3F;
  v57 = (1 << v55) + 63;
  v58 = 8 * (v57 >> 6);
  if (v56 <= 0xD)
  {
LABEL_28:
    v80 = &v80;
    MEMORY[0x1EEE9AC00](v39);
    v81 = v59;
    v82 = &v80 - ((v58 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v59, v82);
    v83 = 0;
    v84 = v40;
    v60 = 0;
    v61 = v40 + 56;
    v62 = 1 << *(v40 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & *(v40 + 56);
    a1 = ((v62 + 63) >> 6);
    while (v64)
    {
      v65 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
LABEL_38:
      v69 = v65 | (v60 << 6);
      if ([*(*(v84 + 48) + 8 * v69) audioVideoMode])
      {
        *(v82 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
        if (__OFADD__(v83++, 1))
        {
          __break(1u);
LABEL_42:
          specialized _NativeSet.extractSubset(using:count:)(v82, v81, v83, v67);
          goto LABEL_43;
        }
      }
    }

    v66 = v60;
    v67 = v84;
    while (1)
    {
      v60 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_49;
      }

      if (v60 >= a1)
      {
        goto LABEL_42;
      }

      v68 = *(v61 + 8 * v60);
      ++v66;
      if (v68)
      {
        v65 = __clz(__rbit64(v68));
        v64 = (v68 - 1) & v68;
        goto LABEL_38;
      }
    }
  }

  v78 = v57 >> 6;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_28;
  }

  v79 = swift_slowAlloc();

  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo25TUConversationParticipantCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So25iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v79, v78, v40, closure #1 in TonePlayer.playOutgoingGFTRingtone(for:), 0);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1BFB23DF0](v79, -1, -1);
LABEL_43:
  v71 = specialized Set.isEmpty.getter();

  if (v71)
  {
LABEL_44:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v72 = static OS_os_log.conversationKit;
    v73 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Playing outgoing ringtone", 25, 2, &dword_1BBC58000, v72, v73, MEMORY[0x1E69E7CC0]);
    TonePlayer.playTone(_:)(1);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v74 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)(30.0);
    v86 = *(v86 + 8);
    (v86)(v17, v13);
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #2 in TonePlayer.playOutgoingGFTRingtone(for:);
    aBlock[5] = v75;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_46;
    v76 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v77 = v90;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB21510](v20, v12, v7, v76);
    _Block_release(v76);

    (*(v89 + 8))(v7, v77);
    (*(v87 + 8))(v12, v88);
    (v86)(v20, v13);
  }
}

void closure #2 in TonePlayer.playOutgoingGFTRingtone(for:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (Strong + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer);
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    if ((*(v5 + 16))(v4, v5) == 1)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.conversationKit;
      v7 = static os_log_type_t.default.getter();
      v8 = os_log(_:dso:log:type:_:)("Stopping outgoing ringtone due to timeout", 41, 2, &dword_1BBC58000, v6, v7, MEMORY[0x1E69E7CC0]);
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v8);
    }
  }
}

void *TonePlayer.playConnectedTone(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 504))(ObjectType, a2);
  if (result)
  {
    v7 = result;
    v10[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    v10[4] = &protocol witness table for TUConversation;
    v10[0] = v7;
    v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8);
    v9 = v7;
    v8(v10);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

void TonePlayer.playConnectedTone(for:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v56 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v55 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v53[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53[-v21];
  v23 = OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedConnectedToneUUID;
  OUTLINED_FUNCTION_10_50(v1 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedConnectedToneUUID);
  v64 = v1;
  v60 = v23;
  outlined init with copy of Participant?(v1 + v23, v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = a1[3];
  v25 = a1[4];
  v63 = a1;
  v26 = __swift_project_boxed_opaque_existential_1(a1, v24);
  v27 = *(v25 + 8);
  v57 = v26;
  v58 = v25;
  v59 = v24;
  v28 = v25;
  v29 = v27;
  v27(v24, v28);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
  v30 = *(v8 + 56);
  outlined init with copy of Participant?(v22, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of Participant?(v19, &v11[v30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29_0(v11);
  if (v32)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_29_0(&v11[v30]);
    if (v32)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return;
    }
  }

  else
  {
    v31 = v62;
    outlined init with copy of Participant?(v11, v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_29_0(&v11[v30]);
    if (!v32)
    {
      v49 = v56;
      v50 = &v11[v30];
      v51 = v55;
      (*(v56 + 32))(v55, v50, v3);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v49 + 8);
      v52(v51, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v52(v62, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v40 = v63;
      v39 = v64;
      if (v54)
      {
        return;
      }

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, v34, v35);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, v37, v38);
    (*(v56 + 8))(v31, v3);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v40 = v63;
  v39 = v64;
LABEL_10:
  v41 = v61;
  v29(v59, v58);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v3);
  v42 = v60;
  swift_beginAccess();
  outlined assign with take of Participant?(v41, v39 + v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  v43 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v44 = OUTLINED_FUNCTION_28_0();
  v45(v44, v43);
  specialized Set.count.getter();
  OUTLINED_FUNCTION_28_0();

  if (v42 == 1 || (v46 = v40[4], __swift_project_boxed_opaque_existential_1(v40, v40[3]), v47 = OUTLINED_FUNCTION_28_0(), (v48(v47, v46) & 1) == 0))
  {
    TonePlayer.playTone(_:)(2);
  }
}

Swift::Void __swiftcall TonePlayer.playParticipantJoinedTone()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10_50(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundDate);
  OUTLINED_FUNCTION_14_37();
  outlined init with copy of Participant?(v5, v6, v7, &_s10Foundation4DateVSgMR);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_88();
  v9(v8);
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType + 8) & 1) != 0 || ((v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType), v10 != 8) ? (v11 = v10 == 2) : (v11 = 1), !v11))
  {
    v16 = OUTLINED_FUNCTION_4_83();
    v17(v16);
    goto LABEL_12;
  }

  Date.timeIntervalSinceNow.getter();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_4_83();
  v15(v14);
  if (v13 >= 2.0)
  {
LABEL_12:
    TonePlayer.playTone(_:)(8);
  }
}

Swift::Void __swiftcall TonePlayer.playParticipantLeftTone()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10_50(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundDate);
  OUTLINED_FUNCTION_14_37();
  outlined init with copy of Participant?(v5, v6, v7, &_s10Foundation4DateVSgMR);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_88();
  v9(v8);
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType) != 9)
  {
    v14 = OUTLINED_FUNCTION_4_83();
    v15(v14);
    goto LABEL_8;
  }

  Date.timeIntervalSinceNow.getter();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_83();
  v13(v12);
  if (v11 >= 2.0)
  {
LABEL_8:
    TonePlayer.playTone(_:)(9);
  }
}

Swift::Void __swiftcall TonePlayer.stopPlaying()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer), *(v0 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer + 24));
  v2 = OUTLINED_FUNCTION_62_0();
  if (v3(v2))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v4 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA940;
    v6 = v1[3];
    v7 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    (*(v7 + 16))(v6, v7);
    v8 = String.init<A>(reflecting:)();
    v10 = v9;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = v8;
    *(v5 + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Requesting to stop playing current tone %@", 42, 2, &dword_1BBC58000, v4, v11, v5);

    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v12 = OUTLINED_FUNCTION_62_0();
    v13(v12);
  }
}

double TonePlayer.playTone(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v8 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  v30 = xmmword_1BC4BA940;
  *(v9 + 16) = xmmword_1BC4BA940;
  v31 = a1;
  v10 = String.init<A>(reflecting:)();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Requesting to play sound type %@", 32, 2, &dword_1BBC58000, v8, v15, v9);

  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 providerManager];

  v18 = [v17 faceTimeProvider];
  v19 = [objc_allocWithZone(MEMORY[0x1E69D8AA8]) initWithSoundType:a1 provider:v18 video:1 region:0];

  if (v19)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))();
    v20 = *(v2 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer + 24);
    v21 = *(v2 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_soundPlayer), v20);
    (*(v21 + 32))(v19, v20, v21);
    static Date.now.getter();

    v22 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v22);
    v23 = OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundDate;
    swift_beginAccess();
    outlined assign with take of Participant?(v7, v2 + v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    v25 = v2 + OBJC_IVAR____TtC15ConversationKit10TonePlayer_lastPlayedSoundEventType;
    *v25 = a1;
    v25[8] = 0;
  }

  else
  {
    v26 = static os_log_type_t.error.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v30;
    v31 = a1;
    v28 = String.init<A>(reflecting:)();
    *(v27 + 56) = v13;
    *(v27 + 64) = v14;
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    os_log(_:dso:log:type:_:)("Failed to create descriptor for sound type %@", 45, 2, &dword_1BBC58000, v8, v26, v27);
  }

  return result;
}

id TonePlayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonePlayer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized Set._Variant.filter(_:)(uint64_t (*a1)(id *), void *a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CD0];
    v19 = MEMORY[0x1E69E7CD0];
    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        if (!__CocoaSet.Iterator.next()())
        {

          return;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
        swift_dynamicCast();
        v6 = a1(&v18);
        if (v3)
        {

          v17 = v18;

          return;
        }

        v7 = v18;
        if (v6)
        {
          break;
        }
      }

      v8 = *(v5 + 16);
      if (*(v5 + 24) <= v8)
      {
        specialized _NativeSet.resize(capacity:)(v8 + 1);
      }

      v5 = v19;
      v9 = NSObject._rawHashValue(seed:)(*(v19 + 40)) & ~(-1 << *(v5 + 32));
      if (((-1 << v9) & ~*(v5 + 56 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_18:
      OUTLINED_FUNCTION_5_78(v10);
      *(*(v5 + 48) + 8 * v16) = v7;
      ++*(v5 + 16);
    }

    OUTLINED_FUNCTION_15_33();
    while (++v12 != v14 || (v13 & 1) == 0)
    {
      v15 = v12 == v14;
      if (v12 == v14)
      {
        v12 = 0;
      }

      v13 |= v15;
      if (*(v11 + 8 * v12) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    specialized _NativeSet.filter(_:)(a1, a2, a3);
  }
}

void *specialized _NativeSet.filter(_:)(uint64_t (*a1)(id *), void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v30 = a1;
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = v4;
    v28 = &v26;
    MEMORY[0x1EEE9AC00](a1);
    v26 = v8;
    v27 = &v26 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v27);
    v29 = 0;
    v10 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = v5;
      v32[0] = *(*(v5 + 48) + 8 * v17);
      v18 = v32[0];
      v19 = v31;
      v20 = v30(v32);
      v31 = v19;
      if (v19)
      {

        swift_willThrow();
        return a2;
      }

      v21 = v20;

      v5 = v4;
      if (v21)
      {
        *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          specialized _NativeSet.extractSubset(using:count:)(v27, v26, v29, v5);
          return v23;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  a2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo25TUConversationParticipantCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So25iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v25, v8, v5, v30, a2);

  MEMORY[0x1BFB23DF0](v25, -1, -1);
  return a2;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo25TUConversationParticipantCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So25iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void type metadata completion function for TonePlayer(uint64_t a1)
{
  _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TonePlayer.playOutgoingGFTRingtone(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
}

uint64_t dispatch thunk of TonePlayer.playConnectedTone(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
}

void _s10Foundation4UUIDVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

ConversationKit::InCallControlsView::ConfigurationCapabilities __swiftcall InCallControlsView.ConfigurationCapabilities.init(supportsCinematicFraming:supportsEffects:supportsVideo:isLegacyCall:)(Swift::Bool supportsCinematicFraming, Swift::Bool supportsEffects, Swift::Bool supportsVideo, Swift::Bool isLegacyCall)
{
  if (supportsVideo || isLegacyCall)
  {
    v4 = ConversationKit_InCallControlsView_ConfigurationCapabilities_videoNoEffects;
  }

  else
  {
    v4 = ConversationKit_InCallControlsView_ConfigurationCapabilities_audioOnly;
  }

  if (supportsCinematicFraming || supportsEffects)
  {
    return !supportsCinematicFraming;
  }

  else
  {
    return v4;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InCallControlsView.JoinLeaveConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t key path getter for InCallControlsView.dataSource : InCallControlsView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for InCallControlsView.dataSource : InCallControlsView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsView.dataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsView.dataSource.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t InCallControlsView.joinLeaveConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration, v3);
  return *(v0 + v1);
}

void key path getter for InCallControlsView.joinLeaveConfiguration : InCallControlsView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void InCallControlsView.joinLeaveConfiguration.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  InCallControlsView.joinLeaveConfiguration.didset(v4);
}

void InCallControlsView.joinLeaveConfiguration.didset(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != a1)
  {
    InCallControlsView.JoinLeaveConfiguration.configure(_:)(*(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton), v4);
  }
}

uint64_t InCallControlsView.JoinLeaveConfiguration.configure(_:)(void *a1, char a2)
{
  if (!a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v12 = *MEMORY[0x1E69DDDC8];
    v32 = 0;
    v41 = 0x69662E6F65646976;
    v42 = 0xEA00000000006C6CLL;
    v43 = 3;
    v44 = v12;
    v45 = 0;
    v46 = 4;
    v47 = 0;
    v48 = 0;
    v33 = 0x69662E6F65646976;
    v34 = 0xEA00000000006C6CLL;
    v35 = 3;
    v36 = v12;
    v37 = 0;
    v38 = 4;
    v39 = 0;
    v40 = 0;
    v13 = v12;
    outlined init with copy of SymbolImageDescription(&v41, v31);
    outlined destroy of SymbolImageDescription(&v33);
    v14 = static UIImage.symbolImage(for:)(&v41);
    outlined destroy of SymbolImageDescription(&v41);
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x150))(v14);
    v7 = "DRAWER_JOIN_CALL_BUTTON";
    v8 = [objc_opt_self() conversationKit];
    v30 = 0xE000000000000000;
    v9 = 0x61737265766E6F43;
    v10 = 0xEF74694B6E6F6974;
    v11 = 0xD00000000000001FLL;
LABEL_5:
    v15 = v7 | 0x8000000000000000;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = 0;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v8, v16, *(&v30 - 1));

    (*((*v6 & *a1) + 0x1B8))(v18._countAndFlagsBits, v18._object);
    if (one-time initialization token for joinButton == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2 == 1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v3 = *MEMORY[0x1E69DDDC8];
    v32 = 0;
    v41 = 0x69662E6F65646976;
    v42 = 0xEA00000000006C6CLL;
    v43 = 3;
    v44 = v3;
    v45 = 0;
    v46 = 4;
    v47 = 0;
    v48 = 0;
    v33 = 0x69662E6F65646976;
    v34 = 0xEA00000000006C6CLL;
    v35 = 3;
    v36 = v3;
    v37 = 0;
    v38 = 4;
    v39 = 0;
    v40 = 0;
    v4 = v3;
    outlined init with copy of SymbolImageDescription(&v41, v31);
    outlined destroy of SymbolImageDescription(&v33);
    v5 = static UIImage.symbolImage(for:)(&v41);
    outlined destroy of SymbolImageDescription(&v41);
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x150))(v5);
    v7 = "buttonLabelWidthConstraints";
    v8 = [objc_opt_self() conversationKit];
    v30 = 0xE000000000000000;
    v9 = 0x61737265766E6F43;
    v10 = 0xEF74694B6E6F6974;
    v11 = 0xD000000000000017;
    goto LABEL_5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v19 = *MEMORY[0x1E69DDDC0];
  v32 = 0;
  v41 = 0x6B72616D78;
  v42 = 0xE500000000000000;
  v43 = 3;
  v44 = v19;
  v45 = 0;
  v46 = 6;
  v47 = 0;
  v48 = 0;
  v33 = 0x6B72616D78;
  v34 = 0xE500000000000000;
  v35 = 3;
  v36 = v19;
  v37 = 0;
  v38 = 6;
  v39 = 0;
  v40 = 0;
  v20 = v19;
  outlined init with copy of SymbolImageDescription(&v41, v31);
  outlined destroy of SymbolImageDescription(&v33);
  v21 = static UIImage.symbolImage(for:)(&v41);
  outlined destroy of SymbolImageDescription(&v41);
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x150))(v21);
  v22 = [objc_opt_self() conversationKit];
  v49._object = 0xE000000000000000;
  v23.value._countAndFlagsBits = 0x61737265766E6F43;
  v23.value._object = 0xEF74694B6E6F6974;
  v24._object = 0x80000001BC504C40;
  v24._countAndFlagsBits = 0xD000000000000016;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, v22, v25, v49);

  (*((*v6 & *a1) + 0x1B8))(v26._countAndFlagsBits, v26._object);
  if (one-time initialization token for leaveButton != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v27 = *((*v6 & *a1) + 0x1D0);

  return v27(v28);
}

void (*InCallControlsView.joinLeaveConfiguration.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration, v3);
  *(v3 + 32) = *(v1 + v4);
  return InCallControlsView.joinLeaveConfiguration.modify;
}

void InCallControlsView.joinLeaveConfiguration.modify(uint64_t a1)
{
  v1 = *a1;
  InCallControlsView.joinLeaveConfiguration.setter(*(*a1 + 32));

  free(v1);
}

void *InCallControlsView.__allocating_init(capabilities:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return InCallControlsView.init(frame:capabilities:)(v2);
}

void *InCallControlsView.__allocating_init(frame:capabilities:)(uint64_t a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_20_2();
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_18_1();
  return InCallControlsView.init(frame:capabilities:)(v2);
}

void *InCallControlsView.init(frame:capabilities:)(char a1)
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton;
  type metadata accessor for InCallControlButton();
  String.localized.getter();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_9_57();
  v441 = v4;
  *(v1 + v4) = OUTLINED_FUNCTION_1_102(0, v5, v6, v7, v8, v9, v10, v11, 1, 0);
  v12 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton;
  OUTLINED_FUNCTION_10_51();
  String.localized.getter();
  OUTLINED_FUNCTION_6_67();
  v434 = v12;
  *(v1 + v12) = OUTLINED_FUNCTION_1_102(0, v13, v14, v15, v16, v17, v18, v19, v394, v398);
  v20 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton;
  String.localized.getter();
  OUTLINED_FUNCTION_6_67();
  v440 = v20;
  *(v1 + v20) = OUTLINED_FUNCTION_1_102(3, v21, v22, v23, v24, v25, v26, v27, v395, v399);
  v28 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_screenShareButton;
  String.localized.getter();
  OUTLINED_FUNCTION_6_67();
  v432 = v28;
  *(v1 + v28) = OUTLINED_FUNCTION_1_102(0, v29, v30, v31, v32, v33, v34, v35, v396, v400);
  v36 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton;
  v37 = &type metadata for SymbolImageDescribers.DrawerPill;
  v450 = &type metadata for SymbolImageDescribers.DrawerPill;
  v451 = &protocol witness table for SymbolImageDescribers.DrawerPill;
  LOBYTE(v449[0]) = 1;
  String.localizedHidden.getter();
  OUTLINED_FUNCTION_6_67();
  *(v1 + v36) = OUTLINED_FUNCTION_1_102(5, v38, v39, v40, v41, v42, v43, v44, v397, v401);
  v428 = v1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration) = 2;
  switch(a1)
  {
    case 1:
      v450 = &type metadata for SymbolImageDescribers.DrawerPill;
      v451 = &protocol witness table for SymbolImageDescribers.DrawerPill;
      LOBYTE(v449[0]) = 0;
      OUTLINED_FUNCTION_10_51();
      v115 = v114;
      String.localized.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_9_57();
      v123 = OUTLINED_FUNCTION_1_102(5, v116, v117, v118, v119, v120, v121, v122, 1, 0);
      v124 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton;
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) = v123;
      OUTLINED_FUNCTION_4_84();
      OUTLINED_FUNCTION_21_1();
      v71 = OUTLINED_FUNCTION_1_102(5, v449, v125, v126, v127, v128, v129, v130, 1, 0);
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton) = v71;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v37 = swift_allocObject();
      *(v37 + 16) = *(v115 + 2032);
      v132 = *(v1 + v441);
      v133 = *(v1 + v434);
      *(v37 + 32) = v132;
      *(v37 + 40) = v133;
      v66 = *(v1 + v432);
      v69 = *(v440 + v1);
      *(v37 + 48) = v66;
      *(v37 + 56) = v69;
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMd, &_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMR);
      v67 = OUTLINED_FUNCTION_3_6(v134);
      *(v67 + 16) = xmmword_1BC4BAA20;
      *(v67 + 32) = v37;
      v135 = OUTLINED_FUNCTION_3_6(v131);
      *(v135 + 16) = xmmword_1BC4BA930;
      v61 = *(v428 + v124);
      *(v135 + 32) = v61;
      *(v135 + 40) = v71;
      *(v67 + 40) = v135;
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) = v67;
      v136 = v132;
      v137 = v133;
      v138 = v66;
      goto LABEL_6;
    case 2:
      v450 = &type metadata for SymbolImageDescribers.DrawerDisc;
      v451 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
      LOBYTE(v449[0]) = 2;
      OUTLINED_FUNCTION_10_51();
      String.localized.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_9_57();
      v83 = OUTLINED_FUNCTION_1_102(0, v76, v77, v78, v79, v80, v81, v82, 1, 0);
      v84 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton;
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) = v83;
      OUTLINED_FUNCTION_4_84();
      OUTLINED_FUNCTION_21_1();
      v71 = OUTLINED_FUNCTION_1_102(5, v449, v85, v86, v87, v88, v89, v90, 1, 0);
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v91 = swift_allocObject();
      v92 = *(v1 + v84);
      v66 = *(v1 + v441);
      *(v91 + 16) = xmmword_1BC4BA920;
      v93 = *(v1 + v434);
      v69 = *(v1 + v432);
      *(v91 + 32) = v92;
      *(v91 + 40) = v66;
      *(v91 + 48) = v93;
      *(v91 + 56) = v69;
      v61 = *(v440 + v428);
      *(v91 + 64) = v61;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMd, &_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMR);
      v67 = OUTLINED_FUNCTION_3_6(v94);
      *(v67 + 16) = xmmword_1BC4BAA20;
      *(v67 + 32) = v91;
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_1BC4BAC30;
      *(v95 + 32) = v71;
      *(v67 + 40) = v95;
      v37 = &unk_1EBCAE000;
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) = v67;
      v96 = v92;
      v97 = v66;
      v98 = v93;
      goto LABEL_6;
    case 3:
      v450 = &type metadata for SymbolImageDescribers.DrawerDisc;
      v451 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
      LOBYTE(v449[0]) = 2;
      OUTLINED_FUNCTION_10_51();
      String.localized.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_9_57();
      v66 = v1;
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) = OUTLINED_FUNCTION_1_102(0, v99, v100, v101, v102, v103, v104, v105, 1, 0);
      OUTLINED_FUNCTION_4_84();
      OUTLINED_FUNCTION_21_1();
      v69 = OUTLINED_FUNCTION_1_102(0, v449, v106, v107, v108, v109, v110, v111, 1, 0);
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton) = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMd, &_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMR);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1BC4BA940;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_1BC4BC370;
      v61 = *(v428 + v441);
      v71 = *(v440 + v428);
      *(v112 + 32) = v69;
      *(v112 + 40) = v61;
      *(v112 + 48) = v71;
      *(v67 + 32) = v112;
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) = v67;
      v113 = &unk_1EBCAE000;
      goto LABEL_7;
    default:
      v450 = &type metadata for SymbolImageDescribers.DrawerPill;
      v451 = &protocol witness table for SymbolImageDescribers.DrawerPill;
      LOBYTE(v449[0]) = 0;
      OUTLINED_FUNCTION_10_51();
      v46 = v45;
      String.localized.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_9_57();
      v54 = OUTLINED_FUNCTION_1_102(5, v47, v48, v49, v50, v51, v52, v53, 1, 0);
      v427 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton;
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCameraButton) = v54;
      OUTLINED_FUNCTION_4_84();
      OUTLINED_FUNCTION_21_1();
      v61 = OUTLINED_FUNCTION_1_102(5, v449, v55, v56, v57, v58, v59, v60, 1, 0);
      *(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_audioRouteButton) = v61;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v63 = swift_allocObject();
      *(v63 + 16) = *(v46 + 2032);
      v64 = *(v428 + v441);
      v65 = *(v428 + v434);
      *(v63 + 32) = v64;
      *(v63 + 40) = v65;
      v37 = *(v428 + v432);
      v66 = *(v440 + v428);
      *(v63 + 48) = v37;
      *(v63 + 56) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMd, &_ss23_ContiguousArrayStorageCySay15ConversationKit19InCallControlButtonCGGMR);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1BC4BB980;
      *(v67 + 32) = v63;
      v68 = OUTLINED_FUNCTION_3_6(v62);
      *(v68 + 16) = xmmword_1BC4BA930;
      v69 = *(v428 + v427);
      *(v68 + 32) = v69;
      *(v68 + 40) = v61;
      *(v67 + 40) = v68;
      v70 = swift_allocObject();
      v71 = *(v428 + v36);
      *(v70 + 16) = xmmword_1BC4BAC30;
      *(v70 + 32) = v71;
      *(v67 + 48) = v70;
      *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow) = v67;
      v72 = v64;
      v73 = v65;
      v74 = v37;
      v75 = v66;
LABEL_6:
      v113 = &unk_1EBCAE000;
LABEL_7:
      v139 = v69;
      v140 = v61;
      v141 = v71;
      protocol witness for ParticipantVideoProvider.token.getter in conformance TUVideoDeviceController();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      v142 = *(v67 + 32);
      v143 = specialized Array.count.getter();
      if (!v143)
      {
        goto LABEL_18;
      }

      v144 = v143;
      if (v143 < 1)
      {
        goto LABEL_334;
      }

      v145 = 0;
      v37 = &selRef_isRecordingAllowed;
      do
      {
        if ((v142 & 0xC000000000000001) != 0)
        {
          v146 = MEMORY[0x1BFB22010](v145, v142);
        }

        else
        {
          v146 = *(v142 + 8 * v145 + 32);
        }

        v147 = v146;
        v148 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label;
        v149 = *&v146[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
        if (v149)
        {
          [v149 setTextAlignment_];
          v150 = *&v147[v148];
          if (v150)
          {
            [v150 setNumberOfLines_];
          }
        }

        ++v145;

        v113 = &unk_1EBCAE000;
      }

      while (v144 != v145);

LABEL_18:
      v66 = *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow);
      v151 = *(v66 + 16);
      v142 = MEMORY[0x1E69E7CC0];
      v424 = MEMORY[0x1E69E7CC0];
      if (v151)
      {
        v419 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow;
        v449[0] = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v151, 0);
        v152 = 0;
        v153 = v449[0];
        v435 = v66;
        v440 = (v66 + 32);
        v433 = v151;
        do
        {
          if (v152 >= *(v66 + 16))
          {
            goto LABEL_304;
          }

          v37 = v440[v152];
          if (v37 >> 62)
          {
            v165 = __CocoaSet.count.getter();
            if (v165 < 0)
            {
              goto LABEL_305;
            }

            v154 = v165;
          }

          else
          {
            v154 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v155 = (v154 + 1);
          if (__OFADD__(v154, 1))
          {
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
            goto LABEL_311;
          }

          v448[0] = v142;

          v156 = v448;
          specialized ContiguousArray.reserveCapacity(_:)();
          if ((v155 & 0x8000000000000000) != 0)
          {
            goto LABEL_307;
          }

          v157 = v152;
          v158 = 0;
          v159 = 0;
          v160 = 0;
          v442 = v157 + 1;
          do
          {
            v66 = v158 + 1;
            if (__OFADD__(v158, 1))
            {
              __break(1u);
LABEL_279:
              __break(1u);
LABEL_280:
              __break(1u);
              goto LABEL_281;
            }

            if (v160)
            {
              goto LABEL_333;
            }

            v142 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
            v156 = v448;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v160 = v159 == v154;
            if (v159 == v154)
            {
              v159 = 0;
            }

            else
            {
              v161 = __OFADD__(v159++, 1);
              if (v161)
              {
                __break(1u);
                goto LABEL_284;
              }
            }

            v158 = (v158 + 1);
          }

          while (v66 != v155);

          v162 = v448[0];
          v449[0] = v153;
          v164 = *(v153 + 16);
          v163 = *(v153 + 24);
          if (v164 >= v163 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v163 > 1), v164 + 1, 1);
            v153 = v449[0];
          }

          *(v153 + 16) = v164 + 1;
          *(v153 + 8 * v164 + 32) = v162;
          v66 = v435;
          v152 = v442;
          v113 = &unk_1EBCAE000;
          v142 = MEMORY[0x1E69E7CC0];
        }

        while (v442 != v433);
        v427 = v153;

        v66 = *(v428 + v419);
      }

      else
      {
        v427 = MEMORY[0x1E69E7CC0];
      }

      protocol witness for ParticipantVideoProvider.token.getter in conformance TUVideoDeviceController();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      v166 = *(v66 + 32);
      v449[0] = v142;
      v167 = specialized Array.count.getter();

      v168 = 0;
      v66 = &selRef_isRecordingAllowed;
      break;
  }

  while (v167 != v168)
  {
    if ((v166 & 0xC000000000000001) != 0)
    {
      v169 = MEMORY[0x1BFB22010](v168, v166);
    }

    else
    {
      if (v168 >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_293;
      }

      v169 = *(v166 + 8 * v168 + 32);
    }

    v37 = v169;
    if (__OFADD__(v168, 1))
    {
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v170 = *&v169[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
    if (v170)
    {
      v142 = [v170 widthAnchor];
      v171 = [v142 constraintEqualToConstant_];

      if (!v171)
      {
        goto LABEL_51;
      }

      MEMORY[0x1BFB20CC0]();
      v142 = *((v449[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v142 >= *((v449[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_11_56();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v424 = v449[0];
      ++v168;
      v113 = &unk_1EBCAE000;
    }

    else
    {

LABEL_51:
      ++v168;
      v113 = &unk_1EBCAE000;
    }
  }

  *(v428 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonLabelWidthConstraints) = v424;
  v448[3] = v428;
  v448[4] = ObjectType;
  v172 = OUTLINED_FUNCTION_18_1();
  v175 = objc_msgSendSuper2(v173, v174, v172);
  v402 = v113[336];
  v176 = *&v402[v175];
  v177 = *((*MEMORY[0x1E69E7D40] & *v176) + 0x200);
  v178 = v175;
  v179 = v176;
  v403 = v175;
  v177(v175, &protocol witness table for InCallControlsView);

  v180 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration;
  OUTLINED_FUNCTION_4_0(&v178[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration], v448);
  v404 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton;
  LOBYTE(v180) = v178[v180];
  v181 = *&v178[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton];
  InCallControlsView.JoinLeaveConfiguration.configure(_:)(v181, v180);

  v447 = *&v178[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonLabelWidthConstraints];
  v182 = objc_allocWithZone(MEMORY[0x1E69DCC20]);

  v183 = [(SEL *)v182 init];
  [v178 addLayoutGuide_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_24_28(inited, xmmword_1BC4BC370);
  v186 = [v183 v185];
  v187 = [v178 v182[478]];
  v37 = &off_1E7FE9000;
  v188 = OUTLINED_FUNCTION_205();
  v190 = [v188 v189];

  inited[2].n128_u64[0] = v190;
  v191 = [(SEL *)v183 trailingAnchor];
  v192 = [v178 trailingAnchor];

  v193 = OUTLINED_FUNCTION_205();
  v195 = [v193 v194];

  inited[2].n128_u64[1] = v195;
  v405 = v183;
  v196 = [(SEL *)v183 heightAnchor];
  v197 = [v196 &selRef_fillColor + 1];

  inited[3].n128_u64[0] = v197;
  specialized Array.append<A>(contentsOf:)(inited);
  v440 = v178;
  v407 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow;
  v142 = *&v178[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow];
  protocol witness for ParticipantVideoProvider.token.getter in conformance TUVideoDeviceController();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  v198 = *(v142 + 32);
  v199 = specialized Array.count.getter();
  v66 = 0x1E7FE9000;
  v200 = &off_1E7FE9000;
  if (v199)
  {
    v201 = v199;
    if (v199 < 1)
    {
      goto LABEL_335;
    }

    for (i = 0; i != v201; ++i)
    {
      if ((v198 & 0xC000000000000001) != 0)
      {
        v203 = MEMORY[0x1BFB22010](i, v198);
      }

      else
      {
        v203 = *(v198 + 8 * i + 32);
      }

      v204 = v203;
      [v204 setTranslatesAutoresizingMaskIntoConstraints_];
      [v440 addSubview_];
      v205 = [v204 topAnchor];
      v206 = [v440 topAnchor];
      v207 = OUTLINED_FUNCTION_2_52();
      v209 = [v207 v208];

      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_2_99();
      if (v210)
      {
        OUTLINED_FUNCTION_5_79();
      }

      OUTLINED_FUNCTION_28_27();
      v211 = [(SEL *)v405 topAnchor];
      v212 = [v204 bottomAnchor];
      v213 = OUTLINED_FUNCTION_2_52();
      v215 = [v213 v214];

      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_2_99();
      if (v210)
      {
        OUTLINED_FUNCTION_5_79();
      }

      OUTLINED_FUNCTION_28_27();
      v216 = [(SEL *)v405 topAnchor];
      v217 = [v204 bottomAnchor];

      v218 = OUTLINED_FUNCTION_205();
      v220 = [v218 v219];

      LODWORD(v221) = 1144750080;
      MEMORY[0x1BFB20CC0]([v220 setPriority_]);
      OUTLINED_FUNCTION_7_65();
      if (v210)
      {
        OUTLINED_FUNCTION_11_56();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v66 = &off_1E7FE9000;
    v200 = &off_1E7FE9000;
  }

  v142 = *(v440 + v407);
  v222 = *(v142 + 16);
  v37 = &stru_1BC4BA000;
  if (v222 > 1)
  {
    v223 = v142 + 32;
    v429 = v405;

    v224 = 0;
    while (v224 != v222)
    {
      v225 = v224;
      if (v224 >= *(v142 + 16))
      {
        goto LABEL_308;
      }

      v224 = 1;
      if (v225)
      {
        v414 = v222;
        v416 = v142;
        v412 = v223;
        v37 = *(v223 + 8 * v225);
        v142 = objc_allocWithZone(MEMORY[0x1E69DCC20]);

        v226 = [v142 init];
        OUTLINED_FUNCTION_22_32();
        if (v227 != v161)
        {
          [v440 addLayoutGuide_];
          v228 = swift_initStackObject();
          OUTLINED_FUNCTION_24_28(v228, xmmword_1BC4BC370);
          v230 = [v226 v229];
          v231 = [v440 *(v222 + 3824)];
          v232 = OUTLINED_FUNCTION_205();
          v234 = [v232 v233];

          v228[2].n128_u64[0] = v234;
          v235 = [v226 trailingAnchor];
          v236 = [v440 trailingAnchor];
          v237 = OUTLINED_FUNCTION_205();
          v239 = [v237 v238];

          v228[2].n128_u64[1] = v239;
          v142 = [v226 heightAnchor];
          v240 = [v142 constraintEqualToConstant_];

          v228[3].n128_u64[0] = v240;
          v241 = v228;
          v200 = &off_1E7FE9000;
          v66 = &off_1E7FE9000;
          specialized Array.append<A>(contentsOf:)(v241);
        }

        v425 = v226;
        v242 = 0;
        v224 = v225 + 1;
        v443 = v37 & 0xFFFFFFFFFFFFFF8;
        v420 = v37;
        v436 = v37 & 0xC000000000000001;
        if (v225 == 1)
        {
          v243 = 28.0;
        }

        else
        {
          v243 = 12.0;
        }

        while (1)
        {
          v244 = v37 >> 62 ? __CocoaSet.count.getter() : *(v443 + 16);
          if (v242 == v244)
          {
            break;
          }

          if (v436)
          {
            v245 = MEMORY[0x1BFB22010](v242, v37);
          }

          else
          {
            if (v242 >= *(v443 + 16))
            {
              goto LABEL_310;
            }

            v245 = *(v37 + 8 * v242 + 32);
          }

          if (__OFADD__(v242, 1))
          {
            goto LABEL_309;
          }

          v246 = v245;
          [v246 setTranslatesAutoresizingMaskIntoConstraints_];
          [v440 addSubview_];
          v247 = [v246 v200[476]];
          v248 = [v429 *(v66 + 3840)];
          v249 = OUTLINED_FUNCTION_2_52();
          v251 = [v249 v250];

          MEMORY[0x1BFB20CC0]();
          OUTLINED_FUNCTION_2_99();
          if (v210)
          {
            OUTLINED_FUNCTION_5_79();
          }

          OUTLINED_FUNCTION_28_27();
          v252 = [v246 heightAnchor];
          v142 = [v252 constraintGreaterThanOrEqualToConstant_];

          MEMORY[0x1BFB20CC0]();
          OUTLINED_FUNCTION_2_99();
          if (v210)
          {
            OUTLINED_FUNCTION_5_79();
          }

          OUTLINED_FUNCTION_28_27();
          OUTLINED_FUNCTION_22_32();
          if (v227 != v161)
          {
            v253 = [v425 v200[476]];
            v254 = [v246 (v66 + 3365)];
            v255 = OUTLINED_FUNCTION_2_52();
            v257 = [v255 v256];

            MEMORY[0x1BFB20CC0]();
            OUTLINED_FUNCTION_2_99();
            if (v210)
            {
              OUTLINED_FUNCTION_5_79();
            }

            OUTLINED_FUNCTION_28_27();
            v142 = [v425 v200[476]];
            v258 = [v246 (v66 + 3365)];
            v259 = OUTLINED_FUNCTION_205();
            v261 = [v259 v260];

            LODWORD(v262) = 1144750080;
            MEMORY[0x1BFB20CC0]([v261 setPriority_]);
            OUTLINED_FUNCTION_7_65();
            if (v210)
            {
              OUTLINED_FUNCTION_11_56();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v66 = 0x1E7FE9000;
            v200 = &off_1E7FE9000;
            v37 = v420;
          }

          if (v242)
          {
            if (v436)
            {
              v263 = MEMORY[0x1BFB22010](0, v37);
            }

            else
            {
              if (!*(v443 + 16))
              {
                goto LABEL_332;
              }

              v263 = *(v37 + 32);
            }

            v264 = v263;
            v265 = [v263 widthAnchor];

            v266 = [v246 widthAnchor];
            v267 = OUTLINED_FUNCTION_2_52();
            v142 = [v267 v268];

            MEMORY[0x1BFB20CC0]();
            OUTLINED_FUNCTION_2_99();
            if (v210)
            {
              OUTLINED_FUNCTION_5_79();
            }

            OUTLINED_FUNCTION_28_27();
          }

          else
          {
          }

          ++v242;
        }

        v429 = v425;
        v37 = 0x1BC4BA000;
        v222 = v414;
        v142 = v416;
        v223 = v412;
      }
    }

    specialized BidirectionalCollection.last.getter(*(v440 + v407));
    if (!v275)
    {
      goto LABEL_340;
    }

    v276 = v275;
    if (!specialized Array.count.getter())
    {

      goto LABEL_340;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v276 & 0xC000000000000001) == 0, v276);
    if ((v276 & 0xC000000000000001) != 0)
    {
      v277 = MEMORY[0x1BFB22010](0, v276);
    }

    else
    {
      v277 = *(v276 + 32);
    }

    v270 = v277;

    v142 = [v440 *(v66 + 3840)];
    v278 = [v270 *(v66 + 3840)];
    v279 = OUTLINED_FUNCTION_205();
    v281 = [v279 v280];

    MEMORY[0x1BFB20CC0]();
    OUTLINED_FUNCTION_7_65();
    if (v210)
    {
      OUTLINED_FUNCTION_11_56();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v153 = v447;

LABEL_124:
    v66 = 0;
    v282 = MEMORY[0x1E69E7CC0];
    v283 = v427;
    v413 = *(v427 + 16);
    v426 = (v427 + 32);
    v437 = v153;
    while (v66 != v413)
    {
      if (v66 >= *(v283 + 16))
      {
        goto LABEL_294;
      }

      v284 = v426[v66];
      v142 = v284 >> 62;
      if (v284 >> 62)
      {
        v285 = __CocoaSet.count.getter();
      }

      else
      {
        v285 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v286 = v282 >> 62;
      if (v282 >> 62)
      {
        v287 = __CocoaSet.count.getter();
      }

      else
      {
        v287 = *((v282 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v288 = v287 + v285;
      if (__OFADD__(v287, v285))
      {
        goto LABEL_295;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v286)
        {
          v289 = v282 & 0xFFFFFFFFFFFFFF8;
          if (v288 <= *((v282 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_139;
          }

          goto LABEL_138;
        }

LABEL_137:
        __CocoaSet.count.getter();
        OUTLINED_FUNCTION_33_5();
        goto LABEL_138;
      }

      if (v286)
      {
        goto LABEL_137;
      }

LABEL_138:
      v282 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v289 = v282 & 0xFFFFFFFFFFFFFF8;
LABEL_139:
      v444 = v66 + 1;
      v290 = *(v289 + 16);
      v66 = (*(v289 + 24) >> 1) - v290;
      v291 = v289 + 8 * v290;
      if (v142)
      {
        if (v284 < 0)
        {
          v142 = v284;
        }

        else
        {
          v142 = v284 & 0xFFFFFFFFFFFFFF8;
        }

        v293 = __CocoaSet.count.getter();
        if (v293)
        {
          v294 = v293;
          v430 = __CocoaSet.count.getter();
          if (v66 < v430)
          {
            goto LABEL_329;
          }

          if (v294 < 1)
          {
            goto LABEL_330;
          }

          v408 = v282;
          v295 = v291 + 32;
          v142 = lazy protocol witness table accessor for type [UILayoutGuide] and conformance [A]();
          for (j = 0; j != v294; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13UILayoutGuideCGMd, &_sSaySo13UILayoutGuideCGMR);
            v297 = specialized protocol witness for Collection.subscript.read in conformance [A](v449, j, v284);
            v299 = *v298;
            v297(v449, 0);
            *(v295 + 8 * j) = v299;
          }

          v37 = 0x1BC4BA000;
          v282 = v408;
          v292 = v430;
          goto LABEL_152;
        }
      }

      else
      {
        v142 = v284 & 0xFFFFFFFFFFFFFF8;
        v292 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v292)
        {
          if (v66 < v292)
          {
            goto LABEL_328;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILayoutGuide, 0x1E69DCC20);
          swift_arrayInitWithCopy();
LABEL_152:

          v283 = v427;
          v153 = v437;
          v66 = v444;
          if (v292 < v285)
          {
            goto LABEL_296;
          }

          if (v292 > 0)
          {
            v300 = *(v289 + 16);
            v161 = __OFADD__(v300, v292);
            v301 = v300 + v292;
            if (v161)
            {
              goto LABEL_315;
            }

            *(v289 + 16) = v301;
          }

          continue;
        }
      }

      v283 = v427;
      v153 = v437;
      v66 = v444;
      if (v285 > 0)
      {
        goto LABEL_296;
      }
    }

    v445 = specialized Array.count.getter();
    v302 = 0;
    *v431 = *(v37 + 2352);
    while (v445 != v302)
    {
      if ((v282 & 0xC000000000000001) != 0)
      {
        v303 = MEMORY[0x1BFB22010](v302, v282);
      }

      else
      {
        if (v302 >= *((v282 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_298;
        }

        v303 = *(v282 + 8 * v302 + 32);
      }

      v304 = v303;
      if (__OFADD__(v302, 1))
      {
        goto LABEL_297;
      }

      [v440 addLayoutGuide_];
      v305 = swift_initStackObject();
      *(v305 + 16) = *v431;
      v66 = v153;
      v306 = [v304 topAnchor];
      v307 = [v440 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
      v308 = OUTLINED_FUNCTION_26_25();
      v310 = [v308 v309];

      *(v305 + 32) = v310;
      v311 = [v304 bottomAnchor];
      v312 = [v440 bottomAnchor];
      v313 = OUTLINED_FUNCTION_26_25();
      v37 = [v313 v314];

      *(v305 + 40) = v37;
      v142 = v66 >> 62;
      if (v66 >> 62)
      {
        v315 = __CocoaSet.count.getter();
      }

      else
      {
        v315 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v316 = v315 + 2;
      if (__OFADD__(v315, 2))
      {
        goto LABEL_299;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v142)
        {
          v142 = v66 & 0xFFFFFFFFFFFFFF8;
          if (v316 <= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_176;
          }

          goto LABEL_175;
        }

LABEL_174:
        __CocoaSet.count.getter();
        OUTLINED_FUNCTION_33_5();
        goto LABEL_175;
      }

      if (v142)
      {
        goto LABEL_174;
      }

LABEL_175:
      OUTLINED_FUNCTION_15_34();
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v142 = v66 & 0xFFFFFFFFFFFFFF8;
LABEL_176:
      OUTLINED_FUNCTION_8_64();
      if (v227 != v161)
      {
        goto LABEL_300;
      }

      v317 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      OUTLINED_FUNCTION_13_47(v317);

      OUTLINED_FUNCTION_31_21();
      if (v161)
      {
        goto LABEL_301;
      }

      *(v142 + 16) = v318;
      v447 = v66;
      if (v302)
      {
        if (!*(v427 + 16))
        {
          goto LABEL_302;
        }

        v319 = *v426;
        if ((*v426 & 0xC000000000000001) != 0)
        {

          v320 = MEMORY[0x1BFB22010](0, v319);
        }

        else
        {
          if (!*((v319 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_303;
          }

          v320 = *(v319 + 32);
        }

        v321 = [v320 widthAnchor];

        v322 = [v304 widthAnchor];
        v323 = OUTLINED_FUNCTION_2_52();
        v142 = [v323 v324];

        MEMORY[0x1BFB20CC0]();
        OUTLINED_FUNCTION_2_99();
        if (v210)
        {
          OUTLINED_FUNCTION_5_79();
        }

        OUTLINED_FUNCTION_28_27();

        v153 = v66;
      }

      else
      {
        v153 = v66;
      }

      ++v302;
    }

    v325 = 0;
LABEL_192:

    if (v325 == v413)
    {

      objc_opt_self();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v383 = OUTLINED_FUNCTION_26_25();
      [v383 v384];

      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x7661654C6E696F4ALL, 0xEF6E6F7474754265, *(v440 + v404));
      v385 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton;
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x696475416574754DLL, 0xEF6E6F747475426FLL, *(v440 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton));
      v142 = *MEMORY[0x1E69DD9B8];
      v153 = *MEMORY[0x1E69DDA30];
      v156 = *(v440 + v385);
      if (v142)
      {
        v386 = v142;
        v159 = &unk_1EBCAE000;
        v158 = &unk_1EBCAE000;
        v154 = v402;
        v37 = v403;
        if ((v153 & ~v142) == 0)
        {
LABEL_285:
          [v156 setAccessibilityTraits_];

          outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x75426172656D6143, 0xEC0000006E6F7474, *(v440 + *(v159 + 333)));
          outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x7475426574756F52, 0xEB000000006E6F74, *&v154[v37]);
          v387 = v158[337];
          outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000012, 0x80000001BC504D50, *(v440 + v387));
          v388 = *(v440 + v387);
          v389 = v388;
          if (v142)
          {
            v390 = v405;
            if ((v153 & ~v142) == 0)
            {
              goto LABEL_291;
            }

LABEL_289:
            v142 |= v153;
          }

          else
          {
            v390 = v405;
            if (v153)
            {
              goto LABEL_289;
            }

            v142 = 0;
          }

LABEL_291:
          [v388 setAccessibilityTraits_];

          return v440;
        }

LABEL_282:
        v386 = v153 | v142;
        goto LABEL_285;
      }

LABEL_281:
      v159 = &unk_1EBCAE000;
      v158 = &unk_1EBCAE000;
      v154 = v402;
      v37 = v403;
      if (v153)
      {
        goto LABEL_282;
      }

LABEL_284:
      v386 = 0;
      goto LABEL_285;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v326 = v426[v325];
    v327 = v326 + 32;
    v406 = v325 + 1;
    v328 = *(v440 + v407);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v329 = *(v328 + 8 * v325 + 32);
    v418 = (v329 + 32);
    v142 = specialized Array.count.getter();
    v446 = v326 & 0xFFFFFFFFFFFFFF8;
    v421 = v329 & 0xC000000000000001;
    v423 = v326 & 0xC000000000000001;
    v409 = v326;

    v330 = 0;
    v415 = v142;
    v417 = v326 + 32;
    while (1)
    {
LABEL_194:
      v156 = v423;
      while (1)
      {
        if (v142 == v330)
        {

          v325 = v406;
          goto LABEL_192;
        }

        if (v423)
        {
          v331 = MEMORY[0x1BFB22010](v330, v409);
        }

        else
        {
          if (v330 >= *(v446 + 16))
          {
            goto LABEL_280;
          }

          v331 = *(v327 + 8 * v330);
        }

        v332 = v331;
        v37 = v330 + 1;
        if (__OFADD__(v330, 1))
        {
          goto LABEL_279;
        }

        v66 = v153 >> 62;
        if (!v330)
        {
          v37 = v153;
          v334 = swift_initStackObject();
          OUTLINED_FUNCTION_24_28(v334, *v431);
          v142 = [v332 v335];
          v336 = [v440 *(v423 + 3824)];
          v337 = OUTLINED_FUNCTION_26_25();
          v339 = [v337 v338];

          v334[2].n128_u64[0] = v339;
          v340 = [v332 trailingAnchor];
          if (!v421)
          {
            if (*((v329 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v341 = *v418;
              goto LABEL_211;
            }

LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
            goto LABEL_314;
          }

          v341 = MEMORY[0x1BFB22010](0, v329);
LABEL_211:
          v342 = v341;
          v343 = *&v341[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];

          v142 = [v343 leadingAnchor];
          v345 = OUTLINED_FUNCTION_34_22(v344, sel_constraintEqualToAnchor_);

          v334[2].n128_u64[1] = v345;
          v153 = v37;
          if (v66)
          {
            v346 = __CocoaSet.count.getter();
          }

          else
          {
            v346 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v327 = v417;
          if (__OFADD__(v346, 2))
          {
            goto LABEL_312;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v66)
            {
LABEL_253:
              OUTLINED_FUNCTION_15_34();
              v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v142 = v153 & 0xFFFFFFFFFFFFFF8;
              goto LABEL_254;
            }

LABEL_252:
            OUTLINED_FUNCTION_20_29();
            OUTLINED_FUNCTION_33_5();
            goto LABEL_253;
          }

          if (v66)
          {
            goto LABEL_252;
          }

          OUTLINED_FUNCTION_23_31();
          if (!(v227 ^ v161 | v347))
          {
            goto LABEL_253;
          }

LABEL_254:
          OUTLINED_FUNCTION_8_64();
          if (v227 != v161)
          {
            goto LABEL_313;
          }

          v66 = v153;
          v375 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
          OUTLINED_FUNCTION_13_47(v375);

          OUTLINED_FUNCTION_31_21();
          if (!v161)
          {
            *(v142 + 16) = v376;

            v330 = 1;
            v142 = v415;
            goto LABEL_194;
          }

LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:

          v392 = MEMORY[0x1BFB22010](0, v142);

          v393 = *(v392 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
          v270 = v393;
          swift_unknownObjectRelease();
          if (!v393)
          {
            goto LABEL_340;
          }

LABEL_114:
          v142 = [v440 *(v66 + 3840)];
          v271 = [v270 *(v66 + 3840)];
          v272 = OUTLINED_FUNCTION_205();
          v274 = [v272 v273];

          MEMORY[0x1BFB20CC0]();
          OUTLINED_FUNCTION_7_65();
          if (v210)
          {
            OUTLINED_FUNCTION_11_56();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v153 = v447;
          goto LABEL_124;
        }

        v333 = v329 >> 62 ? __CocoaSet.count.getter() : *((v329 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v330 == v333)
        {
          break;
        }

        if (v330 < v333)
        {
          v411 = swift_initStackObject();
          *(v411 + 16) = *v431;
          v361 = [v332 leadingAnchor];
          v362 = v330 - 1;
          if (__OFSUB__(v330, 1))
          {
            goto LABEL_322;
          }

          v439 = v153;
          if (v421)
          {
            v363 = MEMORY[0x1BFB22010](v362, v329);
          }

          else
          {
            if ((v362 & 0x8000000000000000) != 0)
            {
              goto LABEL_323;
            }

            if (v362 >= *((v329 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_324;
            }

            v363 = v418[v362];
          }

          v364 = v363;
          v365 = *&v363[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];

          v142 = [v365 trailingAnchor];
          v367 = OUTLINED_FUNCTION_34_22(v366, sel_constraintEqualToAnchor_);

          *(v411 + 32) = v367;
          v368 = [v332 trailingAnchor];
          if (v421)
          {
            v369 = MEMORY[0x1BFB22010](v330, v329);
          }

          else
          {
            if (v330 >= *((v329 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_331;
            }

            v369 = v418[v330];
          }

          v370 = v369;
          v371 = *&v369[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];

          v142 = [v371 leadingAnchor];
          v373 = OUTLINED_FUNCTION_34_22(v372, sel_constraintEqualToAnchor_);

          *(v411 + 40) = v373;
          if (v66)
          {
            v374 = OUTLINED_FUNCTION_20_29();
          }

          else
          {
            v374 = *((v439 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v327 = v417;
          if (__OFADD__(v374, 2))
          {
            goto LABEL_325;
          }

          v447 = v439;
          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v66)
            {
              OUTLINED_FUNCTION_23_31();
              if (!(v227 ^ v161 | v347))
              {
                goto LABEL_264;
              }

LABEL_265:
              OUTLINED_FUNCTION_8_64();
              if (v227 != v161)
              {
                goto LABEL_326;
              }

              v380 = OUTLINED_FUNCTION_27_26();
              v381 = type metadata accessor for NSObject(v380, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
              OUTLINED_FUNCTION_13_47(v381);

              OUTLINED_FUNCTION_31_21();
              if (v161)
              {
                goto LABEL_327;
              }

              goto LABEL_267;
            }
          }

          else if (!v66)
          {
LABEL_264:
            OUTLINED_FUNCTION_15_34();
            v447 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v142 = v447 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_265;
          }

          OUTLINED_FUNCTION_20_29();
          OUTLINED_FUNCTION_33_5();
          goto LABEL_264;
        }

        ++v330;
      }

      v410 = swift_initStackObject();
      *(v410 + 16) = *v431;
      v348 = [v332 leadingAnchor];
      v349 = v330 - 1;
      if (__OFSUB__(v330, 1))
      {
        goto LABEL_316;
      }

      v438 = v153;
      if (v421)
      {
        v350 = MEMORY[0x1BFB22010](v349, v329);
      }

      else
      {
        if ((v349 & 0x8000000000000000) != 0)
        {
          goto LABEL_317;
        }

        if (v349 >= *((v329 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_319;
        }

        v350 = v418[v349];
      }

      v351 = v350;
      v352 = *&v350[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_discView];

      v353 = [v352 trailingAnchor];
      v355 = OUTLINED_FUNCTION_34_22(v354, sel_constraintEqualToAnchor_);

      *(v410 + 32) = v355;
      v142 = [v332 trailingAnchor];
      v356 = [v440 trailingAnchor];
      v357 = OUTLINED_FUNCTION_26_25();
      v359 = [v357 v358];

      *(v410 + 40) = v359;
      if (v66)
      {
        v360 = OUTLINED_FUNCTION_20_29();
      }

      else
      {
        v360 = *((v438 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v327 = v417;
      if (__OFADD__(v360, 2))
      {
        goto LABEL_318;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v66)
        {
LABEL_258:
          OUTLINED_FUNCTION_15_34();
          v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)() & 0xFFFFFFFFFFFFFF8;
          goto LABEL_259;
        }

LABEL_257:
        OUTLINED_FUNCTION_20_29();
        OUTLINED_FUNCTION_33_5();
        goto LABEL_258;
      }

      if (v66)
      {
        goto LABEL_257;
      }

      OUTLINED_FUNCTION_23_31();
      if (!(v227 ^ v161 | v347))
      {
        goto LABEL_258;
      }

LABEL_259:
      OUTLINED_FUNCTION_8_64();
      if (v227 != v161)
      {
        goto LABEL_320;
      }

      v377 = OUTLINED_FUNCTION_27_26();
      v378 = type metadata accessor for NSObject(v377, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      OUTLINED_FUNCTION_13_47(v378);

      OUTLINED_FUNCTION_31_21();
      if (v161)
      {
        goto LABEL_321;
      }

LABEL_267:
      *(v142 + 16) = v379;

      v153 = v66;
      v447 = v66;
      ++v330;
      v142 = v415;
    }
  }

  if (v222)
  {
    protocol witness for ParticipantVideoProvider.token.getter in conformance TUVideoDeviceController();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v142 = *(v142 + 32);
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v142 & 0xC000000000000001) == 0, v142);
      if ((v142 & 0xC000000000000001) != 0)
      {
        goto LABEL_336;
      }

      v269 = *(*(v142 + 32) + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
      if (v269)
      {
        v270 = v269;
        goto LABEL_114;
      }
    }
  }

LABEL_340:
  result = OUTLINED_FUNCTION_29_20();
  __break(1u);
  return result;
}

id InCallControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_muteButton;
  type metadata accessor for InCallControlButton();
  v48 = &type metadata for SymbolImageDescribers.DrawerDisc;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
  v47[0] = 1;
  v2 = objc_opt_self();
  v3 = [v2 conversationKit];
  v50._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v4._object = 0x80000001BC504C00;
  v4._countAndFlagsBits = 0xD000000000000018;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v6, v3, v5, v50);

  *(v0 + v1) = OUTLINED_FUNCTION_3_96(0, v47, v7._countAndFlagsBits, v7._object, v8, v9, v10, v11, 1, 0);
  v12 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_flipCameraButton;
  v48 = &type metadata for SymbolImageDescribers.DrawerDisc;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
  v47[0] = 0;
  v13 = [v2 conversationKit];
  v14 = OUTLINED_FUNCTION_12_49(0xD000000000000019);
  v16 = v15;

  *(v0 + v12) = OUTLINED_FUNCTION_3_96(0, v47, v14, v16, v17, v18, v19, v20, 1, 0);
  v21 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveButton;
  v48 = &type metadata for SymbolImageDescribers.DrawerDisc;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
  v47[0] = 4;
  v22 = [v2 conversationKit];
  v23 = OUTLINED_FUNCTION_12_49(0xD000000000000016);
  v25 = v24;

  *(v0 + v21) = OUTLINED_FUNCTION_3_96(3, v47, v23, v25, v26, v27, v28, v29, 1, 0);
  v30 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_screenShareButton;
  v48 = &type metadata for SymbolImageDescribers.DrawerDisc;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerDisc;
  v47[0] = 5;
  v31 = [v2 conversationKit];
  v51._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v31, v32, v51);

  *(v0 + v30) = OUTLINED_FUNCTION_3_96(0, v47, v35._countAndFlagsBits, v35._object, v36, v37, v38, v39, 1, 0);
  v40 = OBJC_IVAR____TtC15ConversationKit18InCallControlsView_toggleCinematicFramingButton;
  v48 = &type metadata for SymbolImageDescribers.DrawerPill;
  v49 = &protocol witness table for SymbolImageDescribers.DrawerPill;
  v47[0] = 1;
  String.localizedHidden.getter();
  OUTLINED_FUNCTION_21_1();
  *(v0 + v40) = OUTLINED_FUNCTION_3_96(5, v47, v41, v42, v43, v44, v45, v46, 1, 0);
  *(v0 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_joinLeaveConfiguration) = 2;
  OUTLINED_FUNCTION_29_20();
  __break(1u);
}

Swift::Void __swiftcall InCallControlsView.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  if (*(*&v0[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonsByRow] + 16))
  {
    v2 = ObjectType;
    v3 = specialized Array.count.getter();
    [v0 bounds];
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC15ConversationKit18InCallControlsView_buttonLabelWidthConstraints];
    v7 = specialized Array.count.getter();
    if (!v7)
    {
LABEL_9:
      v13.receiver = v0;
      v13.super_class = v2;
      objc_msgSendSuper2(&v13, sel_layoutSubviews);
      return;
    }

    v8 = v7;
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = (v5 + v3 * -10.0 + -10.0) / v3;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB22010](v9, v6);
        }

        else
        {
          v11 = *(v6 + 8 * v9 + 32);
        }

        v12 = v11;
        ++v9;
        [v11 setConstant_];
      }

      while (v8 != v9);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id InCallControlsView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InCallControlsView.menu(for:)(void *a1)
{
  type metadata accessor for InCallControlButton();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit18InCallControlsView_dataSource, v12);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v6 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 8);
  v9 = a1;
  v10 = v8(v1, v4, ObjectType, v6);
  swift_unknownObjectRelease();

  return v10;
}

unint64_t lazy protocol witness table accessor for type [UILayoutGuide] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UILayoutGuide] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UILayoutGuide] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13UILayoutGuideCGMd, &_sSaySo13UILayoutGuideCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UILayoutGuide] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsView.JoinLeaveConfiguration and conformance InCallControlsView.JoinLeaveConfiguration()
{
  result = lazy protocol witness table cache variable for type InCallControlsView.JoinLeaveConfiguration and conformance InCallControlsView.JoinLeaveConfiguration;
  if (!lazy protocol witness table cache variable for type InCallControlsView.JoinLeaveConfiguration and conformance InCallControlsView.JoinLeaveConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsView.JoinLeaveConfiguration and conformance InCallControlsView.JoinLeaveConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsView.ConfigurationCapabilities and conformance InCallControlsView.ConfigurationCapabilities()
{
  result = lazy protocol witness table cache variable for type InCallControlsView.ConfigurationCapabilities and conformance InCallControlsView.ConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type InCallControlsView.ConfigurationCapabilities and conformance InCallControlsView.ConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsView.ConfigurationCapabilities and conformance InCallControlsView.ConfigurationCapabilities);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InCallControlsView.JoinLeaveConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InCallControlsView.ConfigurationCapabilities(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

Swift::Bool __swiftcall CNContactStore.hasImage(forContactId:)(Swift::String forContactId)
{
  v2 = v1;
  object = forContactId._object;
  countAndFlagsBits = forContactId._countAndFlagsBits;
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1BFB209B0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BAC30;
  v7 = *MEMORY[0x1E695C270];
  *(v6 + 32) = *MEMORY[0x1E695C270];
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25[0] = 0;
  v10 = [v2 unifiedContactWithIdentifier:v5 keysToFetch:isa error:v25];

  if (v10)
  {
    v11 = v25[0];
    v12 = [v10 imageDataAvailable];
  }

  else
  {
    v13 = v25[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationKit);

    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2085;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
      *(v19 + 22) = 2112;
      v22 = v14;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v23;
      *v20 = v23;
      _os_log_impl(&dword_1BBC58000, v17, v18, "Error trying to fetch backing contact for identifier %{sensitive,mask.hash}s: %@", v19, 0x20u);
      outlined destroy of NSObject?(v20);
      OUTLINED_FUNCTION_27();
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    return 0;
  }

  return v12;
}

id static CNContactStore.authorizationStatus.getter()
{
  v0 = objc_opt_self();

  return [v0 authorizationStatusForEntityType_];
}

uint64_t CNContactStore.contactsByContactHandle(for:keyDescriptors:)(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v2 = v1;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContactFetchRequest, 0x1E695CD78);

    v4.super.super.isa = CNContactFetchRequest.__allocating_init(keysToFetch:)(v3).super.super.isa;
    v5 = objc_opt_self();
    v6 = MEMORY[0x1E69E6158];
    isa = Array._bridgeToObjectiveC()().super.isa;
    v8 = [v5 predicateForContactsMatchingHandleStrings_];

    [(objc_class *)v4.super.super.isa setPredicate:v8];
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationKit);
    v10 = v4.super.super.isa;
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138478083;
      *(v14 + 4) = v10;
      *(v14 + 12) = 2113;
      *(v14 + 14) = v11;
      *v15 = v10;
      v15[1] = v11;
      v16 = v10;
      v17 = v11;
      _os_log_impl(&dword_1BBC58000, v12, v13, "Executing contact fetch request %{private}@ using contact store %{private}@", v14, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v33[0] = 0;
    v18 = [v11 executeFetchRequest:v10 error:v33];
    if (v18)
    {
      v19 = v18;
      v20 = v33[0];
      v33[0] = [v19 value];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySo9CNContactCGGMd, &_sSDySSSaySo9CNContactCGGMR);
      if (swift_dynamicCast())
      {

        return v32;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
        v21 = Dictionary.init(dictionaryLiteral:)();
      }
    }

    else
    {
      v23 = v33[0];
      v24 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v25 = static OS_os_log.conversationKit;
      v26 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BC4BA940;
      v33[0] = v24;
      v28 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(reflecting:)();
      v31 = v30;
      *(v27 + 56) = v6;
      *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 32) = v29;
      *(v27 + 40) = v31;
      os_log(_:dso:log:type:_:)("Contact fetch failed with the following error: %@", 49, 2, &dword_1BBC58000, v25, v26, v27);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
      v21 = Dictionary.init(dictionaryLiteral:)();
    }

    return v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);

    return Dictionary.init(dictionaryLiteral:)();
  }
}

CNContactFetchRequest __swiftcall CNContactFetchRequest.__allocating_init(keysToFetch:)(Swift::OpaquePointer keysToFetch)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithKeysToFetch_];

  return v3;
}

Class @objc CNContactStore.contactsByContactHandle(for:keyDescriptors:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  CNContactStore.contactsByContactHandle(for:keyDescriptors:)(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

uint64_t CNContactStore.contactsByHandle(for:keyDescriptors:)(uint64_t a1)
{
  v102 = specialized Array.count.getter();
  if (!v102)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();

    return Dictionary.init(dictionaryLiteral:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = 0;
  v100 = a1 & 0xC000000000000001;
  v93 = a1 + 32;
  v95 = a1 & 0xFFFFFFFFFFFFFF8;
  v98 = a1;
  do
  {
    if (v100)
    {
      v4 = MEMORY[0x1BFB22010](v3, a1);
    }

    else
    {
      if (v3 >= *(v95 + 16))
      {
        goto LABEL_83;
      }

      v4 = *(v93 + 8 * v3);
    }

    v111 = v4;
    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (v5)
    {
      goto LABEL_81;
    }

    v106 = v6;
    v7 = CNContactStore.contactHandles(for:)(v4);
    v8 = v7;
    v109 = *(v7 + 16);
    if (v109)
    {
      v9 = 0;
      v10 = (v7 + 40);
      v107 = v7;
      do
      {
        if (v9 >= *(v8 + 16))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          while (1)
          {
LABEL_88:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }
        }

        v12 = *(v10 - 1);
        v11 = *v10;
        v13 = v2[2];

        if (v13 && (v14 = OUTLINED_FUNCTION_2_100(), v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15), (v17 & 1) != 0))
        {
          v113 = *(v2[7] + 8 * v16);

          v18 = v111;
          MEMORY[0x1BFB20CC0]();
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = OUTLINED_FUNCTION_2_100();
          specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
          OUTLINED_FUNCTION_4_85();
          if (v5)
          {
            goto LABEL_79;
          }

          v24 = v22;
          v25 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySo8TUHandleCGGMd, &_ss17_NativeDictionaryVySSSaySo8TUHandleCGGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2))
          {
            v26 = OUTLINED_FUNCTION_2_100();
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
            if ((v25 & 1) != (v29 & 1))
            {
              goto LABEL_88;
            }

            v24 = v28;
          }

          if ((v25 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_103(&v2[v24 >> 6]);
            v46 = (v2[6] + 16 * v24);
            *v46 = v12;
            v46[1] = v11;
            *(v2[7] + 8 * v24) = v113;
            v47 = v2[2];
            v5 = __OFADD__(v47, 1);
            v45 = v47 + 1;
            if (v5)
            {
              goto LABEL_80;
            }

            goto LABEL_32;
          }

          *(v2[7] + 8 * v24) = v113;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1BC4BAC30;
          *(v30 + 32) = v111;
          v31 = v111;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v33 = OUTLINED_FUNCTION_2_100();
          specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
          OUTLINED_FUNCTION_4_85();
          if (v5)
          {
            goto LABEL_77;
          }

          v37 = v35;
          v38 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySo8TUHandleCGGMd, &_ss17_NativeDictionaryVySSSaySo8TUHandleCGGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v32, v2))
          {
            v39 = OUTLINED_FUNCTION_2_100();
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
            if ((v38 & 1) != (v42 & 1))
            {
              goto LABEL_88;
            }

            v37 = v41;
          }

          if ((v38 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_103(&v2[v37 >> 6]);
            v43 = (v2[6] + 16 * v37);
            *v43 = v12;
            v43[1] = v11;
            *(v2[7] + 8 * v37) = v30;
            v44 = v2[2];
            v5 = __OFADD__(v44, 1);
            v45 = v44 + 1;
            if (v5)
            {
              goto LABEL_78;
            }

LABEL_32:
            v2[2] = v45;
            goto LABEL_33;
          }

          *(v2[7] + 8 * v37) = v30;
        }

LABEL_33:
        v8 = v107;
        ++v9;
        v10 += 2;
      }

      while (v109 != v9);
    }

    v3 = v106;
    a1 = v98;
  }

  while (v106 != v102);
  v48 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v49 = Dictionary.init(dictionaryLiteral:)();

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSaySo8TUHandleCG_GTt0g5(v50);
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v52 = Array._bridgeToObjectiveC()().super.isa;
  v53 = [v104 contactsByContactHandleForContactHandles:isa keyDescriptors:v52];

  v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54 + 64;
  v56 = 1 << *(v54 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v54 + 64);
  v59 = (v56 + 63) >> 6;

  v60 = 0;
  while (v58)
  {
    v61 = v58;
LABEL_44:
    v58 = (v61 - 1) & v61;
    if (v2[2])
    {
      v63 = (*(v54 + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v61)))));
      v64 = *v63;
      v65 = v63[1];

      v110 = v64;
      v66 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
      if ((v67 & 1) == 0)
      {
        goto LABEL_48;
      }

      v68 = *(v2[7] + 8 * v66);
      if (v68 >> 62)
      {
        v69 = __CocoaSet.count.getter();
        if (!v69)
        {
LABEL_48:

          continue;
        }
      }

      else
      {
        v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v69)
        {
          goto LABEL_48;
        }
      }

      v105 = (v68 & 0xC000000000000001);
      v90 = v48;
      v91 = v68 & 0xFFFFFFFFFFFFFF8;
      v99 = v69;

      v70 = 0;
      v101 = v68;
      v103 = v54;
      do
      {
        if (v105)
        {
          v71 = MEMORY[0x1BFB22010](v70, v68);
        }

        else
        {
          if (v70 >= *(v91 + 16))
          {
            goto LABEL_85;
          }

          v71 = *(v68 + 8 * v70 + 32);
        }

        if (__OFADD__(v70, 1))
        {
          goto LABEL_84;
        }

        v108 = v70 + 1;
        v112 = v71;
        if (*(v54 + 16) && (v72 = specialized __RawDictionaryStorage.find<A>(_:)(v110, v65), (v73 & 1) != 0))
        {
          *v96 = *(*(v54 + 56) + 8 * v72);

          isUnique = swift_isUniquelyReferenced_nonNull_native();
          v114 = v49;
          v74 = specialized __RawDictionaryStorage.find<A>(_:)();
          v75 = *(v49 + 16);
          v94 = v76;
          v77 = (v76 & 1) == 0;
          v78 = v75 + v77;
          if (__OFADD__(v75, v77))
          {
            goto LABEL_86;
          }

          v79 = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo8TUHandleCSaySo9CNContactCGGMd, &_ss17_NativeDictionaryVySo8TUHandleCSaySo9CNContactCGGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v78))
          {
            v80 = specialized __RawDictionaryStorage.find<A>(_:)();
            v82 = v94;
            if ((v94 & 1) != (v81 & 1))
            {
              goto LABEL_88;
            }

            v79 = v80;
          }

          else
          {
            v82 = v94;
          }

          v49 = v114;
          if (v82)
          {
            *(v114[7] + 8 * v79) = *v96;
          }

          else
          {
            OUTLINED_FUNCTION_1_103(&v114[v79 >> 6]);
            *(v114[6] + 8 * v79) = v112;
            *(v114[7] + 8 * v79) = *v96;
            v87 = v114[2];
            v5 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            if (v5)
            {
              goto LABEL_87;
            }

            v114[2] = v88;
          }
        }

        else
        {
          v83 = specialized __RawDictionaryStorage.find<A>(_:)();
          if (v84)
          {
            v85 = v83;
            v97 = swift_isUniquelyReferenced_nonNull_native();
            v115 = v49;
            v86 = *(v49 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo8TUHandleCSaySo9CNContactCGGMd, &_ss17_NativeDictionaryVySo8TUHandleCSaySo9CNContactCGGMR);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v97, v86);
            v49 = v115;

            _NativeDictionary._delete(at:)();
          }
        }

        v68 = v101;
        v54 = v103;
        ++v70;
      }

      while (v108 != v99);

      v48 = v90;
    }
  }

  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_82;
    }

    if (v62 >= v59)
    {
      break;
    }

    v61 = *(v55 + 8 * v62);
    ++v60;
    if (v61)
    {
      v60 = v62;
      goto LABEL_44;
    }
  }

  return v49;
}