id one-time initialization function for conversationKit()
{
  result = [objc_opt_self() conversationKit];
  static LocalizationSource.conversationKit = result;
  *&xmmword_1EDDCCEE8 = 0x61737265766E6F43;
  *(&xmmword_1EDDCCEE8 + 1) = 0xEF74694B6E6F6974;
  return result;
}

uint64_t *LocalizationSource.conversationKit.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
  }

  return &static LocalizationSource.conversationKit;
}

uint64_t static LocalizationSource.conversationKit.getter()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
  }

  v0 = static LocalizationSource.conversationKit;

  return OUTLINED_FUNCTION_46();
}

id one-time initialization function for conversationControls()
{
  result = [objc_opt_self() conversationKit];
  static LocalizationSource.conversationControls = result;
  unk_1EBCDAF00 = 0xD000000000000014;
  qword_1EBCDAF08 = 0x80000001BC4FEB70;
  return result;
}

uint64_t static LocalizationSource.conversationControls.getter()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_5_56(&one-time initialization token for conversationControls);
  }

  v0 = static LocalizationSource.conversationControls;

  return OUTLINED_FUNCTION_46();
}

id one-time initialization function for systemAperture()
{
  result = [objc_opt_self() conversationKit];
  static LocalizationSource.systemAperture = result;
  *&xmmword_1EDDCCED0 = 0xD00000000000001ELL;
  *(&xmmword_1EDDCCED0 + 1) = 0x80000001BC4FEB50;
  return result;
}

uint64_t *LocalizationSource.systemAperture.unsafeMutableAddressor()
{
  if (one-time initialization token for systemAperture != -1)
  {
    OUTLINED_FUNCTION_4_58(&one-time initialization token for systemAperture);
  }

  return &static LocalizationSource.systemAperture;
}

uint64_t static LocalizationSource.systemAperture.getter()
{
  if (one-time initialization token for systemAperture != -1)
  {
    OUTLINED_FUNCTION_4_58(&one-time initialization token for systemAperture);
  }

  v0 = static LocalizationSource.systemAperture;

  return OUTLINED_FUNCTION_46();
}

uint64_t localized(_:locale:source:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, NSBundle bundle, Swift::String_optional tableName, Swift::String value, Swift::String comment, uint64_t a8)
{
  object = value._object;
  value._object = comment._countAndFlagsBits;
  v13 = comment._object;
  countAndFlagsBits = value._countAndFlagsBits;
  value._countAndFlagsBits = object;
  result = NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, tableName, bundle, *(&value - 8), *&value._object)._countAndFlagsBits;
  if (*(a8 + 16))
  {
    String.init(format:locale:arguments:)();
    OUTLINED_FUNCTION_305();

    return OUTLINED_FUNCTION_46();
  }

  return result;
}

uint64_t key path getter for InCallControlsPTTLeaveChannelCell.leaveChannelButton : InCallControlsPTTLeaveChannelCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

id InCallControlsPTTLeaveChannelCell.leaveChannelButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell_leaveChannelButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void InCallControlsPTTLeaveChannelCell.leaveChannelButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell_leaveChannelButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t InCallControlsPTTLeaveChannelCell.leaveChannelButtonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  OUTLINED_FUNCTION_1();
  v42 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v41 = v7 - v6;
  v8 = type metadata accessor for AttributeContainer();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell____lazy_storage___leaveChannelButtonConfiguration;
  swift_beginAccess();
  outlined init with copy of UIButton.Configuration?(v1 + v21, v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  v22 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v20, 1, v22) == 1)
  {
    v39 = v3;
    v40 = v1;
    outlined destroy of Any?(v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    static UIButton.Configuration.filled()();
    v23 = [objc_opt_self() conversationKit];
    v45._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0x657661654CLL;
    v25.value._countAndFlagsBits = 0x61737265766E6F43;
    v25.value._object = 0xEF74694B6E6F6974;
    v24._object = 0xE500000000000000;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v45);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v27 = type metadata accessor for AttributedString();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v27);
    UIButton.Configuration.attributedTitle.setter();
    v28 = UIButton.Configuration.attributedTitle.modify();
    if (!__swift_getEnumTagSinglePayload(v29, 1, v27))
    {
      v30 = [objc_opt_self() preferredFontForTextStyle_];
      isa = UIFont.withTraits(_:)(0x8002u).super.isa;

      v32 = UIFont.caseSensitive()().super.isa;
      v43 = v32;
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
      AttributedString.subscript.setter();
    }

    v28(v44, 0);
    (*(v42 + 104))(v41, *MEMORY[0x1E69DC508], v39);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.Configuration.contentInsets.setter();
    v33 = [objc_opt_self() systemRedColor];
    v34 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v34(v44, 0);
    OUTLINED_FUNCTION_2_3();
    (*(v35 + 16))(v17, a1, v22);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v22);
    v36 = v40;
    swift_beginAccess();
    outlined assign with take of UIButton.Configuration?(v17, v36 + v21, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    return (*(v38 + 32))(a1, v20, v22);
  }
}

uint64_t InCallControlsPTTLeaveChannelCell.leaveButtonAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of UIButton.Configuration?(v9, v10, v11, &_s5UIKit15UICellAccessoryVSgMR);
  v12 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    outlined destroy of Any?(v8, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
    closure #1 in InCallControlsPTTLeaveChannelCell.leaveButtonAccessory.getter(v1, a1);
    OUTLINED_FUNCTION_71();
    (*(v13 + 16))(v2, a1, v12);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_11_40();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v15();
  }
}

uint64_t closure #1 in InCallControlsPTTLeaveChannelCell.leaveButtonAccessory.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v25 = type metadata accessor for UICellAccessory.Placement();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  v16 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v17 = v16(v13);
  InCallControlsPTTLeaveChannelCell.leaveChannelButtonConfiguration.getter(v15);
  v18 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
  UIButton.configuration.setter();

  (v16)();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v20 = *MEMORY[0x1E69DBF28];
  v21 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v21 - 8) + 104))(v8, v20, v21);
  *v19 = OUTLINED_FUNCTION_14_0;
  v19[1] = 0;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF60], v25);
  v22 = *MEMORY[0x1E69DBF30];
  v23 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v23 - 8) + 104))(v5, v22, v23);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v23);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v26 + 8))(v11, v27);
}

uint64_t InCallControlsPTTLeaveChannelCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of UIButton.Configuration?(v8, v9, v10, &_s5UIKit26UIListContentConfigurationVSgMR);
  v11 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    outlined destroy of Any?(v7, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
    closure #1 in InCallControlsPTTLeaveChannelCell.cellContentConfiguration.getter();
    OUTLINED_FUNCTION_71();
    (*(v12 + 16))(v1, a1, v11);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_11_40();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v14();
  }
}

uint64_t closure #1 in InCallControlsPTTLeaveChannelCell.cellContentConfiguration.getter()
{
  MEMORY[0x1BFB21750]();
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  v2 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v2(v9, 0);
  if (one-time initialization token for tableViewCellTitleLabel != -1)
  {
    swift_once();
  }

  v3 = static Colors.InCallControls.tableViewCellTitleLabel;
  v4 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v4(v9, 0);
  v5 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v5(v9, 0);
  v6 = [v0 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsPTTLeaveChannelCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsPTTLeaveChannelCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsPTTLeaveChannelCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell_leaveChannelButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_0_11(v2);
  v3 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v3);
  v4 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v4);
  v9 = type metadata accessor for InCallControlsPTTLeaveChannelCell(0);
  v5 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v6, v7, v5, v0, v9);
}

uint64_t type metadata accessor for InCallControlsPTTLeaveChannelCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallControlsPTTLeaveChannelCell;
  if (!type metadata singleton initialization cache for InCallControlsPTTLeaveChannelCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InCallControlsPTTLeaveChannelCell.configure(with:)(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22[-1] - v13;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v15 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  MEMORY[0x1BFB216F0](v14);
  [v3 setAutomaticallyUpdatesBackgroundConfiguration_];
  InCallControlsPTTLeaveChannelCell.cellContentConfiguration.getter(v10);

  UIListContentConfiguration.text.setter();
  v22[3] = v4;
  v22[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v6 + 16))(boxed_opaque_existential_1, v10, v4);
  MEMORY[0x1BFB216E0](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
  v17 = *(type metadata accessor for UICellAccessory() - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA940;
  InCallControlsPTTLeaveChannelCell.leaveButtonAccessory.getter(v19 + v18);
  UICollectionViewListCell.accessories.setter();
  return (*(v6 + 8))(v10, v4);
}

id InCallControlsPTTLeaveChannelCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsPTTLeaveChannelCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell_leaveChannelButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_0_11(v2);
  v3 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v3);
  v4 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double InCallControlsPTTLeaveChannelCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
{
  v3 = [a1 fontDescriptor];
  v4 = [v3 objectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v5 scaledValueForValue_];
      a2 = v6;
    }
  }

  else
  {
    outlined destroy of Any?(v11, &_sypSgMd, &_sypSgMR);
  }

  return a2;
}

id InCallControlsPTTLeaveChannelCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsPTTLeaveChannelCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for InCallControlsPTTLeaveChannelCell(uint64_t a1)
{
  type metadata accessor for UIButton.Configuration?(319, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIButton.Configuration?(319, &lazy cache variable for type metadata for UICellAccessory?, MEMORY[0x1E69DBF68]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIButton.Configuration?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of InCallControlsPTTLeaveChannelCell.configure(with:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = v3;
  v8 = *(a1 + 40);
  return v4(v6);
}

void type metadata accessor for UIButton.Configuration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_3();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t outlined assign with take of UIButton.Configuration?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_3();
  (*(v6 + 40))(v4, v5);
  return v4;
}

id CNKScreenSharingStateMonitorFactory.makeScreenSharingStateMonitor(using:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ScreenSharingStateMonitor(0));
  v3 = a1;
  return ScreenSharingStateMonitor.init(activeCall:conversationControllerProvider:)(a1, 0, 0);
}

CNKScreenSharingStateMonitorFactory __swiftcall CNKScreenSharingStateMonitorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id one-time initialization function for sharedMonitor()
{
  result = [objc_allocWithZone(type metadata accessor for ScreenSharingStateMonitor(0)) init];
  static ScreenSharingStateMonitor.sharedMonitor = result;
  return result;
}

id ScreenSharingStateMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path getter for ScreenSharingStateMonitor.isBroadcastingScreenSharing : ScreenSharingStateMonitor@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ScreenSharingStateMonitor.isBroadcastingScreenSharing.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_30_2(v0, v1);
  return CallRecordingPillViewController.cancellable.modify;
}

BOOL ScreenSharingStateMonitor.isParticipantCurrentlySharing.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))(v3);
  v6 = type metadata accessor for Participant(0);
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  return v7;
}

uint64_t key path setter for ScreenSharingStateMonitor.currentlySharingParticipant : ScreenSharingStateMonitor(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v6 - v3, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  return ScreenSharingStateMonitor.currentlySharingParticipant.setter(v4);
}

uint64_t ScreenSharingStateMonitor.currentlySharingParticipant.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_currentlySharingParticipant, a2);
  v3 = OUTLINED_FUNCTION_75_1();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v3, v4, v5, v6);
}

double ScreenSharingStateMonitor.currentlySharingParticipantContentsSize.getter()
{
  v1 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-v8 - 8];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))(v7);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1))
  {
    v10 = &_s15ConversationKit11ParticipantVSgMd;
    v11 = &_s15ConversationKit11ParticipantVSgMR;
    v12 = v9;
  }

  else
  {
    outlined init with copy of Participant(v9, v4);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    Participant.screenInfo.getter();
    outlined destroy of Participant(v4);
    if (v17 != 1)
    {
      v13 = Participant.ScreenInfo.contentsSize.getter();
      outlined destroy of Participant.ScreenInfo(v16);
      return v13;
    }

    v10 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
    v11 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR;
    v12 = v16;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, v10, v11);
  return 0.0;
}

uint64_t key path getter for ScreenSharingStateMonitor.call : ScreenSharingStateMonitor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ScreenSharingStateMonitor.call : ScreenSharingStateMonitor(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);
  v4 = *a1;
  return v3(v2);
}

void (*ScreenSharingStateMonitor.call.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_30_2(v2, v3);
  return ScreenSharingStateMonitor.call.modify;
}

void ScreenSharingStateMonitor.call.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ScreenSharingStateMonitor.call.didset();
  }
}

uint64_t ScreenSharingStateMonitor.addObserver(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v5[8] = 0;
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_observations, v4);
  specialized Dictionary.subscript.setter(v5, a1);
  swift_endAccess();
  return ScreenSharingStateMonitor.notifyNewObserverIfScreenSharingIsActive(_:)(a1);
}

uint64_t ScreenSharingStateMonitor.removeObserver(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_observations, v4);
  specialized Dictionary._Variant.removeValue(forKey:)(a1, v5);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMR);
  return swift_endAccess();
}

void @objc ScreenSharingStateMonitor.addObserver(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t ScreenSharingStateMonitor.init()()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 336))(0, 0, 0);
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t type metadata accessor for ScreenSharingStateMonitor(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScreenSharingStateMonitor;
  if (!type metadata singleton initialization cache for ScreenSharingStateMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ScreenSharingStateMonitor.init(activeCall:conversationControllerProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationController];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_observations;
  *&v3[v8] = Dictionary.init(dictionaryLiteral:)();
  v9 = &v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationControllerProvider];
  *v9 = 0;
  v9[1] = 0;
  v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_isBroadcastingScreenSharing] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_screenSharingRemoteControllerObservation] = 0;
  v10 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_currentlySharingParticipant;
  v11 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(&v3[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_call;
  *&v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_call] = 0;
  OUTLINED_FUNCTION_3_5(&v3[v12], v17);
  *&v3[v12] = a1;
  *v9 = a2;
  v9[1] = a3;
  v13 = a1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  v16.receiver = v3;
  v16.super_class = type metadata accessor for ScreenSharingStateMonitor(0);
  v14 = objc_msgSendSuper2(&v16, sel_init);
  ScreenSharingStateMonitor.updateConversationController(using:)(a1);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a2, a3);

  return v14;
}

void ScreenSharingStateMonitor.didUpdateScreenInfoForParticipant(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v28 - v5;
  v7 = ScreenSharingStateMonitor.currentObservers()();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  v8 = static OS_os_log.conversationKit;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = OUTLINED_FUNCTION_54(v9);
  *(v10 + 16) = xmmword_1BC4BAA20;
  outlined init with copy of Participant(a1, v6);
  type metadata accessor for Participant(0);
  v11 = OUTLINED_FUNCTION_5_57();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  specialized >> prefix<A>(_:)();
  v16 = v15;
  v18 = v17;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v19 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v20 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v20;
  *(v10 + 32) = v16;
  *(v10 + 40) = v18;
  v28[1] = specialized Array.count.getter();
  v21 = String.init<A>(reflecting:)();
  *(v10 + 96) = v19;
  *(v10 + 104) = v20;
  *(v10 + 72) = v21;
  *(v10 + 80) = v22;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Changed Screen Sharing info for participant: %@; notifying %@ observers", 71, 2, &dword_1BBC58000, v8, v23, v10);

  v24 = specialized Array.count.getter();
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = v24;
  if (v24 >= 1)
  {
    for (i = 0; i != v25; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1BFB22010](i, v7);
      }

      else
      {
        v27 = *(v7 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v27 respondsToSelector_])
      {
        [v27 screenSharingStateMonitorDidUpdateScreenInfoForParticipant_];
      }

      swift_unknownObjectRelease();
    }

LABEL_12:

    return;
  }

  __break(1u);
}

uint64_t ScreenSharingStateMonitor.notifyNewObserverIfScreenSharingIsActive(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x190);
  v15(v57, v13);
  v16 = v58;
  if (v58)
  {
    v17 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(v17 + 32))(v16, v17);
    v19 = v18;
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 352))(ObjectType, v19);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMR);
    v21 = 0;
  }

  v22 = [a1 respondsToSelector_];
  if (v22)
  {
    v22 = [a1 screenSharingStateMonitor:v2 didUpdateScreenSharingBroadcastingState:v21 & 1];
  }

  (v15)(v57, v22);
  v23 = v58;
  if (!v58)
  {
    v25 = &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd;
    v26 = &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMR;
    v27 = v57;
    goto LABEL_10;
  }

  v24 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (*(v24 + 40))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v57);
  Array<A>.screenSharingParticipant.getter();

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v25 = &_s15ConversationKit11ParticipantVSgMd;
    v26 = &_s15ConversationKit11ParticipantVSgMR;
    v27 = v10;
LABEL_10:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, v25, v26);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_89();
      swift_once();
    }

    v28 = static OS_os_log.conversationKit;
    v29 = static os_log_type_t.default.getter();
    return os_log(_:dso:log:type:_:)("Not sending Screen Sharing info to new observer since no active session was found", 81, 2, &dword_1BBC58000, v28, v29, MEMORY[0x1E69E7CC0]);
  }

  v31 = v56;
  outlined init with take of Participant(v10, v56);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  v55 = static OS_os_log.conversationKit;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v33 = OUTLINED_FUNCTION_54(v32);
  *(v33 + 16) = xmmword_1BC4BAA20;
  v57[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30CNKScreenSharingStateObserving_pMd, &_sSo30CNKScreenSharingStateObserving_pMR);
  v34 = String.init<A>(reflecting:)();
  v36 = v35;
  v37 = MEMORY[0x1E69E6158];
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v38 = lazy protocol witness table accessor for type String and conformance String();
  *(v33 + 64) = v38;
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v39 = OUTLINED_FUNCTION_40_2();
  outlined init with copy of Participant(v39, v40);
  v41 = OUTLINED_FUNCTION_5_57();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v11);
  specialized >> prefix<A>(_:)();
  v45 = v44;
  v47 = v46;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v33 + 96) = v37;
  *(v33 + 104) = v38;
  *(v33 + 72) = v45;
  *(v33 + 80) = v47;
  v48 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Sending Screen Sharing info to new observer: %@; for participant: %@", 68, 2, &dword_1BBC58000, v55, v48, v33);

  v49 = OUTLINED_FUNCTION_40_2();
  outlined init with copy of Participant(v49, v50);
  v51 = OUTLINED_FUNCTION_5_57();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v11);
  ScreenSharingStateMonitor.currentlySharingParticipant.setter(v7);
  if ([a1 respondsToSelector_])
  {
    [a1 screenSharingStateMonitor:v2 didUpdateScreenSharingState:1];
  }

  if ([a1 respondsToSelector_])
  {
    [a1 screenSharingStateMonitorDidUpdateScreenInfoForParticipant_];
  }

  return outlined destroy of Participant(v31);
}

void closure #1 in ScreenSharingStateMonitor.updateConversationController(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Participant(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v17 = Strong, v18 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x128))(), v17, !v18))
  {
LABEL_9:
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_10:
      v30 = static OS_os_log.conversationKit;
      v31 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Not informing observers that screen sharing started now since the call isn't connected locally yet", 98, 2, &dword_1BBC58000, v30, v31, MEMORY[0x1E69E7CC0]);
      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  if (![v18 isConnected])
  {

    goto LABEL_9;
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_12:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v20 = v19;
  v21 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationController;
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v20 + v21, v41, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMR);

  v22 = v42;
  if (!v42)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v41, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMR);
    goto LABEL_12;
  }

  v23 = v43;
  v24 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v39 = &v39;
  v40 = a1;
  v25 = *(v22 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v26);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v41, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMR);
  v29 = (*(v23 + 40))(v22, v23);
  (*(v25 + 8))(v28, v22);
  a1 = v40;
LABEL_13:
  outlined init with copy of Participant(a1, v10);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v29 = v37;
  }

  v32 = *(v29 + 16);
  if (v32 >= *(v29 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v29 = v38;
  }

  *(v29 + 16) = v32 + 1;
  outlined init with take of Participant(v10, v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32);
  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    Array<A>.screenSharingParticipant.getter();

    ScreenSharingStateMonitor.currentlySharingParticipant.setter(v6);
  }

  else
  {
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    ScreenSharingStateMonitor.didUpdateScreenInfoForParticipant(_:)(a1);
  }
}

void closure #2 in ScreenSharingStateMonitor.updateConversationController(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (one-time initialization token for conversationKit == -1)
    {
LABEL_5:
      v12 = static OS_os_log.conversationKit;
      v13 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Conversation leaving", 20, 2, &dword_1BBC58000, v12, v13, MEMORY[0x1E69E7CC0]);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        v16 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
        ScreenSharingStateMonitor.currentlySharingParticipant.setter(v6);
      }

      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        ScreenSharingStateMonitor.didChangeScreenSharingBroadcastingState(_:)(0);
LABEL_13:

        return;
      }

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.conversationKit;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Conversation joined", 19, 2, &dword_1BBC58000, v19, v20, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v18 = v21;
    ScreenSharingStateMonitor.updateCurrentSharingParticipant()();
    goto LABEL_13;
  }
}

uint64_t ScreenSharingStateMonitor.updateCurrentSharingParticipant()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-1] - v5;
  v7 = type metadata accessor for Participant(0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x190))(v22, v8);
  v11 = v23;
  if (!v23)
  {
    v13 = &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd;
    v14 = &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMR;
    v15 = v22;
    goto LABEL_5;
  }

  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v12 + 40))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v22);
  Array<A>.screenSharingParticipant.getter();

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v13 = &_s15ConversationKit11ParticipantVSgMd;
    v14 = &_s15ConversationKit11ParticipantVSgMR;
    v15 = v6;
LABEL_5:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, v13, v14);
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
    ScreenSharingStateMonitor.currentlySharingParticipant.setter(v3);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.conversationKit;
    v17 = static os_log_type_t.default.getter();
    return os_log(_:dso:log:type:_:)("No active screen sharing sharing. Clearing state.", 49, 2, &dword_1BBC58000, v16, v17, MEMORY[0x1E69E7CC0]);
  }

  outlined init with take of Participant(v6, v10);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.conversationKit;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Connected to a call that had a participant sharing their screen; informing observers", 84, 2, &dword_1BBC58000, v19, v20, MEMORY[0x1E69E7CC0]);
  outlined init with copy of Participant(v10, v3);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
  ScreenSharingStateMonitor.currentlySharingParticipant.setter(v3);
  return outlined destroy of Participant(v10);
}

void closure #3 in ScreenSharingStateMonitor.updateConversationController(using:)(char a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA940;
  v10 = a1 & 1;
  v17[8] = a1 & 1;
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Screen Sharing Broadcasting updating to %@", 42, 2, &dword_1BBC58000, v8, v14, v9);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    ScreenSharingStateMonitor.didChangeScreenSharingBroadcastingState(_:)(v10);
  }
}

void closure #4 in ScreenSharingStateMonitor.updateConversationController(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  ObjectType = swift_getObjectType();
  if (((*(a2 + 104))(ObjectType, a2) & 1) == 0)
  {
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = static OS_os_log.conversationKit;
  v11 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Call connected", 14, 2, &dword_1BBC58000, v10, v11, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    ScreenSharingStateMonitor.updateCurrentSharingParticipant()();
  }
}

uint64_t ScreenSharingStateMonitor.activeConversationController.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationController, a2);
  v3 = OUTLINED_FUNCTION_75_1();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v3, v4, v5, v6);
}

id ScreenSharingStateMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingStateMonitor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for ScreenSharingStateMonitor(uint64_t a1)
{
  type metadata accessor for Participant?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Participant?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Participant?)
  {
    type metadata accessor for Participant(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Participant?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScreenSharingStateMonitor.Observation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScreenSharingStateMonitor.Observation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t CallScreeningService.init()()
{
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  Defaults.init()();
  return CallScreeningService.init(overrides:)();
}

uint64_t ScreeningStatusOverride.callScreeningStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore19CallScreeningStatusOSgMd, &_s20CommunicationsUICore19CallScreeningStatusOSgMR);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v20 - v5);
  v7 = *v1;
  switch((*(*v7 + 848))(v4))
  {
    case 1u:
      v15 = MEMORY[0x1E6995EA0];
      goto LABEL_8;
    case 2u:
      v15 = MEMORY[0x1E6995EB0];
      goto LABEL_8;
    case 3u:
      v11 = (*(*v7 + 856))();
      if (v12)
      {
        *v6 = v11;
        v6[1] = v12;
        v13 = *MEMORY[0x1E6995EA8];
        v14 = type metadata accessor for CallScreeningStatus();
        (*(*(v14 - 8) + 104))(v6, v13, v14);
      }

      else
      {
        static CallScreeningStatus.screened.getter();
      }

      v19 = type metadata accessor for CallScreeningStatus();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v19);
      return outlined init with take of CallScreeningStatus?(v6, a1);
    case 4u:
      v15 = MEMORY[0x1E6995E98];
LABEL_8:
      v16 = *v15;
      v17 = type metadata accessor for CallScreeningStatus();
      (*(*(v17 - 8) + 104))(a1, v16, v17);
      v9 = a1;
      v10 = 0;
      v8 = v17;
      break;
    default:
      v8 = type metadata accessor for CallScreeningStatus();
      v9 = a1;
      v10 = 1;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
}

uint64_t ScreeningStatusOverride.overrideForSummary.getter()
{
  v1 = *v0;
  if ((*(*v1 + 848))() != 5)
  {
    return 0;
  }

  result = (*(*v1 + 856))();
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t ScreeningStatusOverride.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Defaults();
  swift_allocObject();
  result = Defaults.init()();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of CallScreeningStatus?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore19CallScreeningStatusOSgMd, &_s20CommunicationsUICore19CallScreeningStatusOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

id CallControlsSidebarViewController.init(captionsStateController:controlsManager:sidebarStateStream:)()
{
  OUTLINED_FUNCTION_4_44();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_cancellables] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_captionsStateController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v3;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_controlsManager] = v2;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_sidebarStateStream] = v0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v5;
}

id CallControlsSidebarViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallControlsSidebarViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_captionsStateController + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallControlsSidebarViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  CallControlsSidebarViewController.setupConstraints()();
  CallControlsSidebarViewController.observeContentOffset()();
}

void CallControlsSidebarViewController.setupConstraints()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA7F0;
  v3 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView, closure #1 in CallControlsSidebarViewController.contentView.getter);
  v4 = [v3 topAnchor];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v4 constraintEqualToAnchor_];
  *(inited + 32) = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView;
  v10 = [*&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView] bottomAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(inited + 40) = v14;
  v15 = [*&v1[v9] leadingAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(inited + 48) = v19;
  v20 = [*&v1[v9] trailingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(inited + 56) = v24;
  specialized Array.append<A>(contentsOf:)(inited);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1BC4BA7F0;
  v26 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController, closure #1 in CallControlsSidebarViewController.detailsViewController.getter);
  v27 = [v26 view];

  if (!v27)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = [v27 topAnchor];

  v29 = [*&v1[v9] topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v25 + 32) = v30;
  v31 = OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController;
  v32 = [*&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController] view];
  if (!v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [*&v1[v9] leadingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v25 + 40) = v36;
  v37 = [*&v1[v31] view];
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = v37;
  v39 = [v37 trailingAnchor];

  v40 = [*&v1[v9] trailingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v25 + 48) = v41;
  v42 = [*&v1[v31] view];
  if (!v42)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = v42;
  v44 = [v42 bottomAnchor];

  v45 = [*&v1[v9] &off_1E7FE9D20 + 5];
  v46 = [v44 constraintEqualToAnchor_];

  *(v25 + 56) = v46;
  specialized Array.append<A>(contentsOf:)(v25);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1BC4BA7F0;
  v48 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView, closure #1 in CallControlsSidebarViewController.topConverView.getter);
  v49 = [v48 topAnchor];

  v50 = [*&v1[v9] topAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v47 + 32) = v51;
  v52 = OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView;
  v53 = [*&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView] leadingAnchor];
  v54 = [*&v1[v9] leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v47 + 40) = v55;
  v56 = [*&v1[v52] trailingAnchor];
  v57 = [*&v1[v9] trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v47 + 48) = v58;
  v59 = [*&v1[v52] bottomAnchor];
  v60 = [v1 view];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 safeAreaLayoutGuide];

    v63 = [v62 topAnchor];
    v64 = [v59 constraintEqualToAnchor_];

    *(v47 + 56) = v64;
    specialized Array.append<A>(contentsOf:)(v47);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1BC4BA7F0;
    v66 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView, closure #1 in CallControlsSidebarViewController.bottomBlurView.getter);
    v67 = [v66 bottomAnchor];

    v68 = [*&v1[v9] bottomAnchor];
    v69 = [v67 constraintEqualToAnchor_];

    *(v65 + 32) = v69;
    v70 = OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView;
    v71 = [*&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView] leadingAnchor];
    v72 = [*&v1[v9] leadingAnchor];
    v73 = [v71 constraintEqualToAnchor_];

    *(v65 + 40) = v73;
    v74 = [*&v1[v70] trailingAnchor];
    v75 = [*&v1[v9] trailingAnchor];
    v76 = [v74 constraintEqualToAnchor_];

    *(v65 + 48) = v76;
    v77 = [*&v1[v70] heightAnchor];
    v78 = [v77 constraintEqualToConstant_];

    *(v65 + 56) = v78;
    specialized Array.append<A>(contentsOf:)(v65);
    v79 = objc_opt_self();
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v79 activateConstraints_];

    return;
  }

LABEL_19:
  __break(1u);
}

void CallControlsSidebarViewController.observeContentOffset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGMd, &_s7Combine10PublishersO3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGGMd, _s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGGMR);
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v16 = v0;
  v12 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController, closure #1 in CallControlsSidebarViewController.detailsViewController.getter);
  v13 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x150))();

  if (v13)
  {
    swift_getKeyPath();
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVGMR, MEMORY[0x1E6969F80]);
    Publisher.map<A>(_:)();
    (*(v2 + 8))(v4, v1);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint>, CGFloat> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGMd, &_s7Combine10PublishersO3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGMR, MEMORY[0x1E695BD60]);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    Publisher<>.removeDuplicates()();
    (*(v6 + 8))(v8, v5);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint>, CGFloat>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGGMd, _s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGGMR, MEMORY[0x1E695BD38]);
    Publisher<>.sink(receiveValue:)();

    (*(v15 + 8))(v11, v9);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR, MEMORY[0x1E69E6348]);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }
}

void CallControlsSidebarViewController.updateSidebarInsets(_:)(double a1)
{
  v2 = OUTLINED_FUNCTION_0_90(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))(0.0, 0.0, a1, 0.0);
}

Swift::Void __swiftcall CallControlsSidebarViewController.captioningStateDidChange()()
{
  if ([v0 isViewLoaded])
  {
    v1 = OUTLINED_FUNCTION_0_90(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController);
    ConversationHUDDetailsViewController.captioningStateDidChange()();
  }
}

id closure #1 in CallControlsSidebarViewController.contentView.getter(void *a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (_UISolariumEnabled())
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    static _Glass._GlassVariant.regular.getter();
    v12[3] = type metadata accessor for _Glass();
    v12[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v12);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [a1 view];
    if (result)
    {
      v5 = result;
      [result addSubview_];

      return v3;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v7 = one-time initialization token for background;
    v3 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [a1 view];
    if (result)
    {
      v8 = result;
      [result addSubview_];

      return v3;
    }

    goto LABEL_17;
  }

  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    swift_once();
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result addSubview_];

    v11 = [v9 contentView];
    return v11;
  }

LABEL_18:
  __break(1u);
  return result;
}

void closure #1 in CallControlsSidebarViewController.detailsViewController.getter(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_controlsManager];
  *(swift_allocObject() + 16) = a1;
  v3 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsViewController());
  v4 = v2;
  v5 = a1;
  v6 = ConversationHUDDetailsViewController.init(controlsManager:closeSideBarAction:)();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xA0);
  v9 = swift_unknownObjectRetain();
  v8(v9);
  v10 = *((*v7 & *v4) + 0x508);
  v11 = v6;
  v10(v6, &protocol witness table for ConversationHUDDetailsViewController);
  v12 = v11;
  [v5 addChildViewController_];
  v13 = [v12 view];
  if (v13)
  {
    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];

    v15 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView, closure #1 in CallControlsSidebarViewController.contentView.getter);
    v16 = [v12 view];

    if (v16)
    {
      [v15 addSubview_];

      [v12 didMoveToParentViewController_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id closure #1 in CallControlsSidebarViewController.topConverView.getter(void *a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setHidden_];
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result addSubview_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CallControlsSidebarViewController.detailsViewController.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

_OWORD *closure #1 in CallControlsSidebarViewController.bottomBlurView.getter(void *a1)
{
  static UnitPoint.top.getter();
  v3 = v2;
  v5 = v4;
  static UnitPoint.bottom.getter();
  *&v12 = v3;
  *(&v12 + 1) = v5;
  v13 = v6;
  v14 = v7;
  v15 = 0;
  LOBYTE(v16) = 1;
  v8 = objc_allocWithZone(type metadata accessor for VariableBlurUIView());
  v9 = VariableBlurUIView.init(radius:blurMask:)(&v12, 4.0);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [a1 view];
  if (result)
  {
    v11 = result;
    [result addSubview_];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double closure #1 in CallControlsSidebarViewController.observeContentOffset()@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

void closure #2 in CallControlsSidebarViewController.observeContentOffset()(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];

    if (v5)
    {
      [v5 safeAreaInsets];
      v7 = v6;

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView, closure #1 in CallControlsSidebarViewController.topConverView.getter);

        [v10 setHidden_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id CallControlsSidebarViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CallControlsSidebarViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CallControlsSidebarViewController.isCaptioningEnabled.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_captionsStateController;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 56))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

Swift::Int RemoteControlParticipant.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RemoteControlParticipant and conformance RemoteControlParticipant()
{
  result = lazy protocol witness table cache variable for type RemoteControlParticipant and conformance RemoteControlParticipant;
  if (!lazy protocol witness table cache variable for type RemoteControlParticipant and conformance RemoteControlParticipant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlParticipant and conformance RemoteControlParticipant);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteControlParticipant(_BYTE *result, unsigned int a2, unsigned int a3)
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

double CGSize.adjustedPoints(with:scaleFactor:)(double a1, double a2, double a3)
{
  v3 = a3 / a1 * a2;
  type metadata accessor for UIView();
  v4 = static UIView.screenScale.getter();
  v5 = round(v3 * v4) / v4;
  static UIView.screenScale.getter();
  return v5;
}

double CGSize.roundedToDisplay.getter()
{
  OUTLINED_FUNCTION_0_91();
  type metadata accessor for UIView();
  v1 = static UIView.screenScale.getter();
  v2 = round(v1 * v0) / v1;
  static UIView.screenScale.getter();
  return v2;
}

double CGSize.min.getter(double result, double a2)
{
  if (a2 < result)
  {
    return a2;
  }

  return result;
}

double CGSize.max.getter(double result, double a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

double CGSize.asPortrait.getter(double a1, double a2)
{
  if (a2 >= a1)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

double CGSize.asLandscape.getter(double a1, double a2)
{
  if (a1 >= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

double CGSize.rounded(_:toScale:)(uint64_t a1, __n128 a2, __n128 a3, double a4)
{
  v5 = a2.n128_f64[0];
  v7 = CGFloat.rounded(_:toScale:)(a1, a2.n128_f64[0], a3.n128_f64[0]);
  CGFloat.rounded(_:toScale:)(a1, v5, a4);
  return v7;
}

double CGSize.rounded(_:toScaleOf:)()
{
  OUTLINED_FUNCTION_0_91();
  v2 = v1;
  [v3 displayScale];
  v5.n128_f64[0] = CGFloat.rounded(_:toScale:)(v2, v4, v0);
  OUTLINED_FUNCTION_1_77(v5, v6);
  return v0;
}

{
  OUTLINED_FUNCTION_0_91();
  v3 = v2;
  v5 = v4;
  swift_getObjectType();

  return specialized CGPoint.rounded(_:toScaleOf:)(v5, v3, v1, v0);
}

{
  OUTLINED_FUNCTION_0_91();
  v2 = v1;
  v4 = [v3 traitCollection];
  [v4 displayScale];
  v6.n128_f64[0] = CGFloat.rounded(_:toScale:)(v2, v5, v0);
  OUTLINED_FUNCTION_1_77(v6, v7);

  return v0;
}

uint64_t DropdownViewModel.MenuItem.id.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t DropdownViewModel.MenuItem.label.getter()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  OUTLINED_FUNCTION_6_54(*(v0 + 20));

  return OUTLINED_FUNCTION_46();
}

uint64_t DropdownViewModel.MenuItem.onAction.getter()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  OUTLINED_FUNCTION_6_54(*(v0 + 24));

  return OUTLINED_FUNCTION_46();
}

uint64_t DropdownViewModel.MenuItem.accessibilityIdentifier.getter()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  OUTLINED_FUNCTION_6_54(*(v0 + 28));

  return OUTLINED_FUNCTION_46();
}

uint64_t DropdownViewModel.MenuItem.isEnabled.setter(char a1)
{
  result = type metadata accessor for DropdownViewModel.MenuItem(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t one-time initialization function for separatorMenuItem()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_allocate_value_buffer(v0, static DropdownViewModel.MenuItem.separatorMenuItem);
  v1 = __swift_project_value_buffer(v0, static DropdownViewModel.MenuItem.separatorMenuItem);
  result = UUID.init()();
  v3 = (v1 + v0[5]);
  *v3 = 0x6F74617261706573;
  v3[1] = 0xE900000000000072;
  v4 = (v1 + v0[6]);
  *v4 = TPNumberPadCharacter.rawValue.getter;
  v4[1] = 0;
  v5 = (v1 + v0[7]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v1 + v0[8]) = 1;
  return result;
}

int *DropdownViewModel.MenuItem.init(label:onAction:accessibilityIdentifier:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  OUTLINED_FUNCTION_7_51();
  UUID.init()();
  result = type metadata accessor for DropdownViewModel.MenuItem(0);
  v16 = (v11 + result[5]);
  *v16 = v10;
  v16[1] = v9;
  v17 = (v11 + result[6]);
  *v17 = v8;
  v17[1] = v7;
  v18 = (v11 + result[7]);
  *v18 = a5;
  v18[1] = a6;
  *(v11 + result[8]) = a7;
  return result;
}

uint64_t outlined init with copy of DropdownViewModel.MenuItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropdownViewModel.MenuItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of DropdownViewModel.MenuItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropdownViewModel.MenuItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DropdownViewModel.MenuItem(uint64_t a1)
{
  v2 = type metadata accessor for DropdownViewModel.MenuItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static DropdownViewModel.MenuItem.separatorMenuItem.modify())()
{
  if (one-time initialization token for separatorMenuItem != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  v1 = __swift_project_value_buffer(v0, static DropdownViewModel.MenuItem.separatorMenuItem);
  OUTLINED_FUNCTION_39(v1);
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

uint64_t key path getter for static DropdownViewModel.MenuItem.separatorMenuItem : DropdownViewModel.MenuItem.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = DropdownViewModel.MenuItem.separatorMenuItem.unsafeMutableAddressor();
  swift_beginAccess();
  return outlined init with copy of DropdownViewModel.MenuItem(v2, a1);
}

uint64_t key path setter for static DropdownViewModel.MenuItem.separatorMenuItem : DropdownViewModel.MenuItem.Type(uint64_t a1)
{
  v2 = DropdownViewModel.MenuItem.separatorMenuItem.unsafeMutableAddressor();
  swift_beginAccess();
  outlined assign with copy of DropdownViewModel.MenuItem(a1, v2);
  return swift_endAccess();
}

uint64_t protocol witness for Identifiable.id.getter in conformance DropdownViewModel.MenuItem@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t key path getter for DropdownViewModel.menuItems : DropdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DropdownViewModel.menuItems : DropdownViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

double DropdownViewModel.menuItems.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 240))();

  OUTLINED_FUNCTION_4_5(v2 + 72, v4);

  return result;
}

double DropdownViewModel.menuItems.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 248))();

  return result;
}

void closure #1 in DropdownViewModel.menuItems.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

uint64_t (*DropdownViewModel.menuItems.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 240))();

  v3[5] = OBJC_IVAR____TtC15ConversationKit17DropdownViewModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_92();
  v7 = lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(v5, v6, &protocol conformance descriptor for DropdownViewModel);
  OUTLINED_FUNCTION_19_17(v7);

  v3[7] = DropdownViewModel._menuItems.modify();
  return DropdownViewModel.menuItems.modify;
}

uint64_t key path getter for DropdownViewModel.isEnabled : DropdownViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

uint64_t DropdownViewModel.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 240))();

  OUTLINED_FUNCTION_4_5(v2 + 80, v4);
  return *(v2 + 80);
}

void DropdownViewModel.isEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 80) == v2)
  {
    *(v1 + 80) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_0_1();
    (*(v4 + 248))();
  }
}

uint64_t (*DropdownViewModel.isEnabled.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 240))();

  v3[5] = OBJC_IVAR____TtC15ConversationKit17DropdownViewModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_92();
  v7 = lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(v5, v6, &protocol conformance descriptor for DropdownViewModel);
  OUTLINED_FUNCTION_19_17(v7);

  v3[7] = DropdownViewModel._isEnabled.modify();
  return DropdownViewModel.isEnabled.modify;
}

void DropdownViewModel.menuItems.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t DropdownViewModel.__allocating_init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)()
{
  OUTLINED_FUNCTION_4_59();
  v0 = swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  return v0;
}

uint64_t DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)()
{
  OUTLINED_FUNCTION_4_59();
  ObservationRegistrar.init()();
  *(v1 + 16) = v8;
  *(v1 + 24) = v7;
  *(v1 + 32) = v6;
  *(v1 + 40) = v5;
  *(v1 + 48) = v4;
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 80) = v9;
  return v1;
}

uint64_t DropdownViewModel.access<A>(keyPath:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_92();
  lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(v1, v2, &protocol conformance descriptor for DropdownViewModel);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t DropdownViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_0_92();
  lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(v0, v1, &protocol conformance descriptor for DropdownViewModel);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t DropdownViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit17DropdownViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t DropdownViewModel.__deallocating_deinit()
{
  DropdownViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for callUsingIPhoneDescriptiveMenuItem()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_allocate_value_buffer(v0, static DropdownViewModel.MenuItem.callUsingIPhoneDescriptiveMenuItem);
  v1 = __swift_project_value_buffer(v0, static DropdownViewModel.MenuItem.callUsingIPhoneDescriptiveMenuItem);
  v2 = [objc_opt_self() conversationKit];
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC4FF4D0;
  v4._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  result = UUID.init()();
  *(v1 + v0[5]) = v6;
  v8 = (v1 + v0[6]);
  *v8 = TPNumberPadCharacter.rawValue.getter;
  v8[1] = 0;
  v9 = (v1 + v0[7]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + v0[8]) = 0;
  return result;
}

uint64_t DropdownViewModel.MenuItem.separatorMenuItem.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DropdownViewModel.MenuItem(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static DropdownViewModel.MenuItem.separatorMenuItem.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for DropdownViewModel.MenuItem(0);
  v7 = __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_4_5(v7, v8);
  return outlined init with copy of DropdownViewModel.MenuItem(v7, a4);
}

uint64_t static DropdownViewModel.MenuItem.separatorMenuItem.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_46();
  outlined assign with copy of DropdownViewModel.MenuItem(v7, v8);
  swift_endAccess();
  return outlined destroy of DropdownViewModel.MenuItem(a1);
}

uint64_t (*static DropdownViewModel.MenuItem.callUsingIPhoneDescriptiveMenuItem.modify())()
{
  if (one-time initialization token for callUsingIPhoneDescriptiveMenuItem != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  v1 = __swift_project_value_buffer(v0, static DropdownViewModel.MenuItem.callUsingIPhoneDescriptiveMenuItem);
  OUTLINED_FUNCTION_39(v1);
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

uint64_t DropdownMenuButton.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMR);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for DropdownMenuButton.viewModel : DropdownMenuButton@<X0>(uint64_t *a1@<X8>)
{
  result = DropdownMenuButton.viewModel.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for DropdownMenuButton.viewModel : DropdownMenuButton(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];

  return DropdownMenuButton.viewModel.setter(v4, v2, v3);
}

void (*DropdownMenuButton.viewModel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v6;
  v6[6] = a2;
  v6[7] = a3;
  *v6 = a2;
  v6[1] = a3;

  v6[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMR);
  State.wrappedValue.getter();
  return FindoView.viewModel.modify;
}

uint64_t DropdownMenuButton.$viewModel.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMR);
  State.projectedValue.getter();
  return v3;
}

uint64_t DropdownMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAIyAIyAIyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAA0L0VyAA5GroupVyAA012_ConditionalI0VyAIyAA5ImageVAA06_FrameG0VGAIyAIyAA4TextVAA08_PaddingG0VGAA05_FlexpG0VGGGG_014CommunicationsB003MaclK0VQo_AA022_EnvironmentBackgroundK8ModifierVyAA5ColorVGGAA01_v12KeyTransformX0VySbGGAA023AccessibilityAttachmentX0VGAA08_OverlayX0VyAIyAIyAkAEALyQrqd__AA09PrimitivelK0Rd__lFQOyAA4MenuVyAA05EmptyD0VAA7ForEachVySay15ConversationKit08DropdownD5ModelC8MenuItemVG10Foundation4UUIDVASyAA7DividerVAIyAIyAOyAZGA23_GA20_GGGG_AA010BorderlesslK0VQo_A23_GAA01_vz7WritingX0VyA15_SgGGSgGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAIyAIyAIyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAA0L0VyAA5GroupVyAA012_ConditionalI0VyAIyAA5ImageVAA06_FrameG0VGAIyAIyAA4TextVAA08_PaddingG0VGAA05_FlexpG0VGGGG_014CommunicationsB003MaclK0VQo_AA022_EnvironmentBackgroundK8ModifierVyAA5ColorVGGAA01_v12KeyTransformX0VySbGGAA023AccessibilityAttachmentX0VGAA08_OverlayX0VyAIyAIyAkAEALyQrqd__AA09PrimitivelK0Rd__lFQOyAA4MenuVyAA05EmptyD0VAA7ForEachVySay15ConversationKit08DropdownD5ModelC8MenuItemVG10Foundation4UUIDVASyAA7DividerVAIyAIyAOyAZGA23_GA20_GGGG_AA010BorderlesslK0VQo_A23_GAA01_vz7WritingX0VyA15_SgGGSgGGGMR);
  return closure #1 in DropdownMenuButton.body.getter(a1, a2, a3 + *(v10 + 44), a4, a5);
}

uint64_t closure #1 in DropdownMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v47 = a3;
  v9 = type metadata accessor for MacButtonStyle();
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMd, &_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMR);
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGMR);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v40 - v16;
  v53 = a1;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMR);
  State.wrappedValue.getter();
  v19 = v52[7];
  v18 = v52[8];

  v53 = a1;
  v54 = a2;
  State.wrappedValue.getter();

  v53 = a1;
  v54 = a2;
  State.wrappedValue.getter();
  v42 = v52[4];

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v48 = a1;
  v49 = a2;
  v50 = a4;
  v51 = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VGGGMR);
  lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>();
  Button.init(action:label:)();
  MacButtonStyle.init(insets:rim:fillWidth:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMd, &_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type MacButtonStyle and conformance MacButtonStyle, MEMORY[0x1E69959E0], MEMORY[0x1E69959D8]);
  v21 = v44;
  View.buttonStyle<A>(_:)();

  (*(v45 + 8))(v12, v21);
  (*(v43 + 8))(v15, v13);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGMR);
  *&v17[*(v22 + 36)] = v42;
  v41 = a1;
  v53 = a1;
  v54 = a2;
  v23 = State.wrappedValue.getter();
  LOBYTE(v15) = (*(*v52 + 208))(v23);

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = (v15 & 1) == 0;
  v26 = &v17[*(v46 + 36)];
  *v26 = KeyPath;
  v26[1] = partial apply for closure #1 in View.disabled(_:);
  v26[2] = v25;
  v53 = a1;
  v54 = a2;
  State.wrappedValue.getter();
  v28 = v52[2];
  v27 = v52[3];

  v53 = v28;
  v54 = v27;
  lazy protocol witness table accessor for type String and conformance String();
  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v12) = v32;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  v33 = v47;
  View.accessibilityLabel(_:)();
  outlined consume of Text.Storage(v29, v31, v12 & 1);

  sub_1BBCE6DAC(v17);
  v34 = static Alignment.trailing.getter();
  v36 = v35;
  v37 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGAA023AccessibilityAttachmentU0VGAA08_OverlayU0VyACyACyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAA4MenuVyAA05EmptyE0VAA7ForEachVySay15ConversationKit08DropdownE5ModelC8MenuItemVG10Foundation4UUIDVAMyAA7DividerVACyACyAIyATGA17_GA14_GGGG_AA010BorderlesshG0VQo_A17_GAA01_sw7WritingU0VyA9_SgGGSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGAA023AccessibilityAttachmentU0VGAA08_OverlayU0VyACyACyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAA4MenuVyAA05EmptyE0VAA7ForEachVySay15ConversationKit08DropdownE5ModelC8MenuItemVG10Foundation4UUIDVAMyAA7DividerVACyACyAIyATGA17_GA14_GGGG_AA010BorderlesshG0VQo_A17_GAA01_sw7WritingU0VyA9_SgGGSgGGMR) + 36);
  closure #1 in closure #1 in DropdownMenuButton.body.getter(v41, a2, v37, a4, a5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA4MenuVyAA05EmptyG0VAA7ForEachVySay15ConversationKit08DropdownG5ModelC0L4ItemVG10Foundation4UUIDVAA012_ConditionalF0VyAA7DividerVAEyAEyAA0K0VyAA4TextVGAA023AccessibilityAttachmentD0VGAA024_EnvironmentKeyTransformD0VySbGGGGG_AA010BorderlesskI0VQo_A7_GAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA4MenuVyAA05EmptyG0VAA7ForEachVySay15ConversationKit08DropdownG5ModelC0L4ItemVG10Foundation4UUIDVAA012_ConditionalF0VyAA7DividerVAEyAEyAA0K0VyAA4TextVGAA023AccessibilityAttachmentD0VGAA024_EnvironmentKeyTransformD0VySbGGGGG_AA010BorderlesskI0VQo_A7_GAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGSgGMR);
  v39 = (v37 + *(result + 36));
  *v39 = v34;
  v39[1] = v36;
  return result;
}

uint64_t closure #1 in closure #1 in DropdownMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v44 = a3;
  v9 = type metadata accessor for BorderlessButtonStyle();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA9EmptyViewVAA7ForEachVySay15ConversationKit08DropdownE5ModelC0C4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedP0VyAVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformW0VySbGGGGGMd, &_s7SwiftUI4MenuVyAA9EmptyViewVAA7ForEachVySay15ConversationKit08DropdownE5ModelC0C4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedP0VyAVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformW0VySbGGGGGMR);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA4MenuVyAA05EmptyC0VAA7ForEachVySay15ConversationKit08DropdownC5ModelC0H4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedT0VyAZyAA0G0VyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformZ0VySbGGGGG_AA010BorderlessgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA4MenuVyAA05EmptyC0VAA7ForEachVySay15ConversationKit08DropdownC5ModelC0H4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedT0VyAZyAA0G0VyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformZ0VySbGGGGG_AA010BorderlessgE0VQo_MR);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA05EmptyE0VAA7ForEachVySay15ConversationKit08DropdownE5ModelC0J4ItemVG10Foundation4UUIDVAA012_ConditionalD0VyAA7DividerVACyACyAA0I0VyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformZ0VySbGGGGG_AA010BorderlessiG0VQo_A5_GAA022_EnvironmentKeyWritingZ0VyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA05EmptyE0VAA7ForEachVySay15ConversationKit08DropdownE5ModelC0J4ItemVG10Foundation4UUIDVAA012_ConditionalD0VyAA7DividerVACyACyAA0I0VyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformZ0VySbGGGGG_AA010BorderlessiG0VQo_A5_GAA022_EnvironmentKeyWritingZ0VyAA5ColorVSgGGMR);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v38 - v18;
  v45 = a1;
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMR);
  v19 = State.wrappedValue.getter();
  v20 = (*(*v49 + 160))(v19);

  v21 = *(v20 + 16);

  if (v21)
  {
    v45 = a1;
    v46 = a2;
    v22 = State.wrappedValue.getter();
    v23 = (*(*v49 + 160))(v22);

    MEMORY[0x1EEE9AC00](v24);
    *(&v38 - 6) = v23;
    *(&v38 - 5) = a1;
    *(&v38 - 4) = a2;
    *(&v38 - 3) = a4;
    *(&v38 - 2) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit17DropdownViewModelC8MenuItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedO0VyARyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformV0VySbGGGGMd, &_s7SwiftUI7ForEachVySay15ConversationKit17DropdownViewModelC8MenuItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedO0VyARyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformV0VySbGGGGMR);
    lazy protocol witness table accessor for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>();
    Menu.init(content:label:)();

    BorderlessButtonStyle.init()();
    v25 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<EmptyView, ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA9EmptyViewVAA7ForEachVySay15ConversationKit08DropdownE5ModelC0C4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedP0VyAVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformW0VySbGGGGGMd, &_s7SwiftUI4MenuVyAA9EmptyViewVAA7ForEachVySay15ConversationKit08DropdownE5ModelC0C4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedP0VyAVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformW0VySbGGGGGMR, MEMORY[0x1E697CD28]);
    v26 = lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    View.buttonStyle<A>(_:)();
    (*(v40 + 8))(v11, v9);
    (*(v38 + 8))(v14, v12);
    LocalizedStringKey.init(stringLiteral:)();
    v45 = v12;
    v46 = v9;
    v47 = v25;
    v48 = v26;
    swift_getOpaqueTypeConformance2();
    v27 = v39;
    v28 = v42;
    View.accessibilityLabel(_:)();

    (*(v41 + 8))(v17, v28);
    v29 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v31 = v43;
    v32 = (v27 + *(v43 + 36));
    *v32 = KeyPath;
    v32[1] = v29;
    v33 = v44;
    sub_1BBCE6E14(v27, v44);
    v34 = 0;
    v35 = v33;
    v36 = v31;
  }

  else
  {
    v34 = 1;
    v36 = v43;
    v35 = v44;
  }

  return __swift_storeEnumTagSinglePayload(v35, v34, 1, v36);
}

void *closure #1 in closure #2 in DropdownMenuButton.primaryButton(action:text:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMR);
  State.wrappedValue.getter();
  v8 = *(v21[0] + 48);

  if (v8)
  {
    v9 = Image.init(systemName:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v21[0] = v9;
    v21[1] = *&__src[0];
    LOBYTE(v21[2]) = BYTE8(__src[0]);
    v21[3] = *&__src[1];
    LOBYTE(v21[4]) = BYTE8(__src[1]);
    *&v21[5] = __src[2];
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VG_GWOi_(v21);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;
    State.wrappedValue.getter();
    v11 = *(v21[0] + 16);
    v10 = *(v21[0] + 24);

    v26[0] = v11;
    v26[1] = v10;
    lazy protocol witness table accessor for type String and conformance String();
    v12 = Text.init<A>(_:)();
    v14 = v13;
    LOBYTE(v11) = v15;
    v17 = v16;
    v18 = static Edge.Set.all.getter();
    v23 = v11 & 1;
    v22 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(__src);
    memcpy(&v24[7], __src, 0x70uLL);
    v21[0] = v12;
    v21[1] = v14;
    LOBYTE(v21[2]) = v11 & 1;
    v21[3] = v17;
    LOBYTE(v21[4]) = v18;
    *&v21[5] = xmmword_1BC4C82D0;
    *&v21[7] = xmmword_1BC4C82D0;
    LOBYTE(v21[9]) = 0;
    memcpy(&v21[9] + 1, v24, 0x77uLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VG_GWOi0_(v21);
  }

  memcpy(__dst, v21, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return memcpy(a3, v26, 0xC1uLL);
}

uint64_t closure #1 in DropdownMenuButton.menu(items:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit17DropdownViewModelC8MenuItemVGMd, &_sSay15ConversationKit17DropdownViewModelC8MenuItemVGMR);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA7DividerVAA08ModifiedD0VyAGyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformK0VySbGGGMd, &_s7SwiftUI19_ConditionalContentVyAA7DividerVAA08ModifiedD0VyAGyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformK0VySbGGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DropdownViewModel.MenuItem] and conformance [A], &_sSay15ConversationKit17DropdownViewModelC8MenuItemVGMd, &_sSay15ConversationKit17DropdownViewModelC8MenuItemVGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type DropdownViewModel.MenuItem and conformance DropdownViewModel.MenuItem, type metadata accessor for DropdownViewModel.MenuItem, &protocol conformance descriptor for DropdownViewModel.MenuItem);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in DropdownMenuButton.menu(items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR);
  MEMORY[0x1EEE9AC00](v38);
  v37 = v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA7DividerVAA08ModifiedD0VyAIyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformL0VySbGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA7DividerVAA08ModifiedD0VyAIyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformL0VySbGG_GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v10 = type metadata accessor for Divider();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DropdownViewModel.MenuItem(0);
  v15 = (a1 + *(v14 + 20));
  v17 = *v15;
  v16 = v15[1];
  v18 = *v15 == 0x6F74617261706573 && v16 == 0xE900000000000072;
  if (v18 || (v19 = v14, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    Divider.init()();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type Divider and conformance Divider, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v21 = v19[7];
    v22 = (a1 + v19[6]);
    v24 = *v22;
    v23 = v22[1];
    v34 = *(a1 + v19[8]);
    v25 = a1 + v21;
    v26 = *(a1 + v21);
    v33[2] = *(v25 + 8);
    v33[3] = v26;
    v27 = swift_allocObject();
    v33[1] = v33;
    *(v27 + 16) = v24;
    *(v27 + 24) = v23;
    MEMORY[0x1EEE9AC00](v27);
    v33[-2] = v17;
    v33[-1] = v16;

    Button.init(action:label:)();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
    v28 = v36;
    v29 = v37;
    View.accessibilityIdentifier(_:)();
    (*(v35 + 8))(v5, v28);
    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = (v34 & 1) == 0;
    v32 = (v29 + *(v38 + 36));
    *v32 = KeyPath;
    v32[1] = closure #1 in View.disabled(_:)partial apply;
    v32[2] = v31;
    outlined init with copy of Notice?(v29, v9, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type Divider and conformance Divider, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR);
  }
}

uint64_t closure #2 in DropdownMenuButton.menuButton(action:title:enabled:accessibilityIdentifier:)@<X0>(uint64_t a3@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double DropdownMenuButton.init(viewModel:)(uint64_t a1)
{
  type metadata accessor for DropdownViewModel(0);
  State.init(wrappedValue:)();
  return 70.0;
}

double closure #1 in closure #1 in static $s15ConversationKit0029DropdownMenuButtonswift_tAFJhfMX141_0_33_145CC22525012368AB9D61C69EC07059Ll7PreviewfMf_15PreviewRegistryfMu_.makePreview()@<D0>(uint64_t *a1@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v11 = 1;
  closure #1 in closure #1 in closure #1 in static $s15ConversationKit0029DropdownMenuButtonswift_tAFJhfMX141_0_33_145CC22525012368AB9D61C69EC070597PreviewfMf_15PreviewRegistryfMu_.makePreview()(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  outlined init with copy of Notice?(__dst, &v8, &_s7SwiftUI9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3FtGMd, &_s7SwiftUI9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3FtGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s7SwiftUI9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3FtGMd, &_s7SwiftUI9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3FtGMR);
  memcpy(&v10[7], __dst, 0x80uLL);
  v4 = v11;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3JtGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3JtGGAA12_FrameLayoutVGMR);
  a1[4] = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  *(v5 + 32) = v4;
  memcpy((v5 + 33), v10, 0x87uLL);
  v6 = __src[1];
  *(v5 + 168) = __src[0];
  *(v5 + 184) = v6;
  result = *&__src[2];
  *(v5 + 200) = __src[2];
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static $s15ConversationKit0029DropdownMenuButtonswift_tAFJhfMX141_0_33_145CC22525012368AB9D61C69EC07059Ll7PreviewfMf_15PreviewRegistryfMu_.makePreview()@<X0>(uint64_t x8_0@<X8>)
{
  static Color.green.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit17DropdownViewModelC8MenuItemVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit17DropdownViewModelC8MenuItemVGMR);
  v2 = (type metadata accessor for DropdownViewModel.MenuItem(0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BAA20;
  v6 = v5 + v4;
  UUID.init()();
  v7 = (v6 + v2[7]);
  strcpy(v7, "FaceTime Audio");
  v7[15] = -18;
  v8 = (v6 + v2[8]);
  *v8 = TPNumberPadCharacter.rawValue.getter;
  v8[1] = 0;
  v9 = (v6 + v2[9]);
  strcpy(v9, "facetime-audio");
  v9[15] = -18;
  *(v6 + v2[10]) = 1;
  v10 = v6 + v3;
  UUID.init()();
  v11 = (v10 + v2[7]);
  *v11 = 0x32756E654DLL;
  v11[1] = 0xE500000000000000;
  v12 = (v10 + v2[8]);
  *v12 = TPNumberPadCharacter.rawValue.getter;
  v12[1] = 0;
  v13 = (v10 + v2[9]);
  *v13 = 0x32756E656DLL;
  v13[1] = 0xE500000000000000;
  *(v10 + v2[10]) = 1;
  type metadata accessor for DropdownViewModel(0);
  swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  State.init(wrappedValue:)();
  static Color.green.getter();
  swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  State.init(wrappedValue:)();
  static Color.green.getter();
  swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  State.init(wrappedValue:)();
  v14 = v28;
  v15 = v29;
  static Color.green.getter();
  swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  State.init(wrappedValue:)();
  v16 = v28;
  v17 = v29;
  v26[0] = v28;
  v26[1] = v29;
  v27 = xmmword_1BC4C82E0;
  v24[0] = v28;
  v24[1] = v29;
  v25 = xmmword_1BC4C82E0;
  v28 = v26;
  v29 = v24;
  v22[0] = v14;
  v22[1] = v15;
  v23 = xmmword_1BC4C82E0;
  v20[0] = v16;
  v20[1] = v17;
  v21 = xmmword_1BC4C82E0;
  v30 = v22;
  v31 = v20;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ15ConversationKit18DropdownMenuButtonV_A3KQP_Tt1g5(&v28, x8_0);
}

uint64_t lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for DropdownViewModel(uint64_t a1)
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

unint64_t type metadata completion function for DropdownViewModel.MenuItem(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3JtGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3JtGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3HtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3HtGGMR, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA12_FrameLayoutVGAEyAEyAA4TextVAA08_PaddingH0VGAA05_FlexgH0VGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA12_FrameLayoutVGAEyAEyAA4TextVAA08_PaddingH0VGAA05_FlexgH0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMd, &_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMR);
    type metadata accessor for MacButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMd, &_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type MacButtonStyle and conformance MacButtonStyle, MEMORY[0x1E69959E0], MEMORY[0x1E69959D8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentBackgroundStyleModifier<Color> and conformance _EnvironmentBackgroundStyleModifier<A>, &_s7SwiftUI35_EnvironmentBackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI35_EnvironmentBackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x1E6980BC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay15ConversationKit17DropdownViewModelC8MenuItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedO0VyARyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformV0VySbGGGGMd, &_s7SwiftUI7ForEachVySay15ConversationKit17DropdownViewModelC8MenuItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedO0VyARyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformV0VySbGGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA7DividerVAA08ModifiedD0VyAGyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformK0VySbGGGMd, &_s7SwiftUI19_ConditionalContentVyAA7DividerVAA08ModifiedD0VyAGyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformK0VySbGGGMR);
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type Divider and conformance Divider, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x1E697D680]);
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v7);
  specialized ContiguousArray._endMutation()();
}

Swift::Int MomentsIndicatorViewDisplayStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MomentsIndicatorViewDisplayStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MomentsIndicatorViewDisplayStyle.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int MomentsIndicatorType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MomentsIndicatorType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MomentsIndicatorType.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t key path getter for MomentsIndicatorView.displayStyle : MomentsIndicatorView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result & 1;
  return result;
}

void MomentsIndicatorView.displayStyle.didset(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle;
  swift_beginAccess();
  if (*(v1 + v3) != (a1 & 1))
  {
    MomentsIndicatorView.refreshLayout()();
  }
}

uint64_t MomentsIndicatorView.displayStyle.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle, v3);
  return *(v0 + v1);
}

void MomentsIndicatorView.displayStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  MomentsIndicatorView.displayStyle.didset(v4);
}

void (*MomentsIndicatorView.displayStyle.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle, v3);
  *(v3 + 32) = *(v1 + v4);
  return MomentsIndicatorView.displayStyle.modify;
}

void MomentsIndicatorView.displayStyle.modify(uint64_t a1)
{
  v1 = *a1;
  MomentsIndicatorView.displayStyle.setter(*(*a1 + 32));

  free(v1);
}

id MomentsIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MomentsIndicatorView.init(frame:)()
{
  v0[OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle] = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  type metadata accessor for MomentsIndicatorBubble();
  lazy protocol witness table accessor for type MomentsIndicatorType and conformance MomentsIndicatorType();
  *&v0[v1] = Dictionary.init(dictionaryLiteral:)();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MomentsIndicatorView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v2 setUserInteractionEnabled_];
  return v2;
}

unint64_t lazy protocol witness table accessor for type MomentsIndicatorType and conformance MomentsIndicatorType()
{
  result = lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType;
  if (!lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType;
  if (!lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType);
  }

  return result;
}

id MomentsIndicatorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MomentsIndicatorView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  type metadata accessor for MomentsIndicatorBubble();
  lazy protocol witness table accessor for type MomentsIndicatorType and conformance MomentsIndicatorType();
  *(v0 + v1) = Dictionary.init(dictionaryLiteral:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MomentsIndicatorView.didTimeOut(for:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  swift_beginAccess();
  v4 = a1;

  v6 = specialized _NativeDictionary.filter(_:)(v5, v4);

  *(v1 + v3) = v6;

  [v4 removeFromSuperview];
  MomentsIndicatorView.refreshLayout()();
}

Swift::Void __swiftcall MomentsIndicatorView.presentCaptureIndicator(type:remoteParticipantName:)(ConversationKit::MomentsIndicatorType type, Swift::String remoteParticipantName)
{
  v3 = v2;
  object = remoteParticipantName._object;
  countAndFlagsBits = remoteParticipantName._countAndFlagsBits;
  v6 = type;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  OUTLINED_FUNCTION_4_0(&v3[OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType], v31);
  v13 = specialized Dictionary.subscript.getter(v6, *&v3[v12]);
  if (!v13)
  {
    type metadata accessor for MomentsIndicatorViewModel();
    swift_allocObject();
    MomentsIndicatorViewModel.init(type:remoteParticipantName:)(v6, countAndFlagsBits, object);
    v15 = objc_allocWithZone(type metadata accessor for MomentsIndicatorBubble());

    v17 = MomentsIndicatorBubble.init(model:)(v16);
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v30[3] = type metadata accessor for MomentsIndicatorView();
    v30[4] = &protocol witness table for MomentsIndicatorView;
    v30[0] = v3;
    v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x98);
    object = v3;
    v18(v30);
    [v17 setAlpha_];

    swift_beginAccess();
    v7 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v6, isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, v24, v29[0], *&v3[v12]);
    *&v3[v12] = v29[1];
    swift_endAccess();
    [object addSubview_];
    v30[0] = MomentsIndicatorView.makeCommonConstraints(for:)(v7);
    v25 = *&v3[v12];

    v26 = MomentsIndicatorView.makeBottomConstraint(for:in:)(v7, v25);

    if (!v26)
    {
LABEL_7:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [object addConstraints_];

      [object setNeedsLayout];
      [object layoutIfNeeded];
      [v7 start];

      goto LABEL_8;
    }

    MEMORY[0x1BFB20CC0](v27);
    if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_6:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }

LABEL_10:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_6;
  }

  v14 = v13;
  (*((*MEMORY[0x1E69E7D40] & *v13) + 0xE0))();

LABEL_8:
  MomentsIndicatorView.refreshLayout()();
}

void MomentsIndicatorView.refreshLayout()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  OUTLINED_FUNCTION_4_0(&v0[OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType], v17);
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    *(v12 + 24) = xmmword_1BC4C8740;
    *(v12 + 40) = v10;
    aBlock[4] = partial apply for closure #1 in closure #1 in MomentsIndicatorView.refreshLayout();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_30;
    v13 = _Block_copy(aBlock);
    v14 = v10;
    v15 = v0;

    [v11 animateKeyframesWithDuration:0 delay:v13 options:0 animations:0.25 completion:0.0];
    _Block_release(v13);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void animateBubble #1 (_:) in MomentsIndicatorView.refreshLayout()(void *a1, void *a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v21 = partial apply for closure #1 in animateBubble #1 (_:) in MomentsIndicatorView.refreshLayout();
  v22 = v9;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed () -> ();
  v20 = &block_descriptor_19_0;
  v10 = _Block_copy(&v17);
  v11 = a1;
  v12 = a2;

  [v8 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.0 animations:1.0];
  _Block_release(v10);
  [v11 alpha];
  if (v13 == 0.0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v21 = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
    v22 = v14;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed () -> ();
    v20 = &block_descriptor_25_0;
    v15 = _Block_copy(&v17);
    v16 = v11;

    [v8 addKeyframeWithRelativeStartTime:v15 relativeDuration:a3 animations:a4];
    _Block_release(v15);
  }
}

id closure #1 in animateBubble #1 (_:) in MomentsIndicatorView.refreshLayout()(void *a1, char *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  if (v5)
  {
    v6 = v5;
    [a2 removeConstraint_];
  }

  v7 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  swift_beginAccess();
  v8 = *&a2[v7];

  v9 = MomentsIndicatorView.makeBottomConstraint(for:in:)(a1, v8);

  if (v9)
  {
    v10 = *((*v4 & *a1) + 0xB0);
    v11 = v9;
    v10(v9);
    [a2 addConstraint_];
  }

  else
  {
    (*((*v4 & *a1) + 0xB0))(0);
  }

  [a2 setNeedsLayout];
  return [a2 layoutIfNeeded];
}

id MomentsIndicatorView.makeCommonConstraints(for:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BC370;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  v4 = type metadata accessor for MomentsIndicatorBubble();
  v5 = type metadata accessor for MomentsIndicatorView();
  v6 = a1;
  v7 = v1;
  v8 = OUTLINED_FUNCTION_0_93();
  *(v3 + 32) = @nonobjc NSLayoutConstraint.__allocating_init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)(v9, 9, 0, v10, 9, v8, 0.0);
  v23 = v4;
  *(&v21 + 1) = v5;
  v22[0] = v6;
  *&v20 = v7;
  v11 = v6;
  v12 = v7;
  result = @nonobjc NSLayoutConstraint.init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:priority:)(v22, 7, -1, &v20, 7, 0.85, 0.0, 750.0);
  if (result)
  {
    *(v3 + 40) = result;
    v23 = v4;
    v22[0] = v11;
    v20 = 0u;
    v21 = 0u;
    v14 = v11;
    v15 = OUTLINED_FUNCTION_0_93();
    result = @nonobjc NSLayoutConstraint.init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:priority:)(v16, 7, -1, v17, 0, v15, v18, v19);
    if (result)
    {
      *(v3 + 48) = result;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id @nonobjc NSLayoutConstraint.__allocating_init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  v15 = a4[3];
  if (v15)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v25 = a5;
    v26 = a2;
    v17 = a3;
    v18 = *(v15 - 8);
    v19 = MEMORY[0x1EEE9AC00](v16);
    v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v21, v15);
    a3 = v17;
    a5 = v25;
    a2 = v26;
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v22 = 0;
  }

  v23 = [swift_getObjCClassFromMetadata() constraintWithItem:v14 attribute:a2 relatedBy:a3 toItem:v22 attribute:a5 multiplier:a6 constant:a7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v23;
}

id @nonobjc NSLayoutConstraint.init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:priority:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7, float a8)
{
  v34 = a5;
  v14 = a1[3];
  if (v14)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = *(v14 - 8);
    v18 = MEMORY[0x1EEE9AC00](v16);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v20, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = 0;
  }

  v22 = a4[3];
  if (v22)
  {
    v23 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v28 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v28 = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v30 = a8;
  v31 = [ObjCClassFromMetadata constraintWithItem:v21 attribute:a2 relatedBy:a3 toItem:v28 attribute:v34 multiplier:a6 constant:a7 priority:v30];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v31;
}

id MomentsIndicatorView.makeBottomConstraint(for:in:)(void *a1, uint64_t a2)
{
  v4 = a1;
  v20[0] = specialized _copyCollectionToContiguousArray<A>(_:)(a2);
  specialized MutableCollection<>.sort(by:)(v20, v4);
  v5 = v20[0];
  specialized Collection<>.firstIndex(of:)(v4, v20[0]);
  if ((v7 & 1) == 0)
  {
    if (!v6)
    {

      v18 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))(v17);
      return MomentsIndicatorView.makeBottomConstraint(for:style:)(v4, v18 & 1);
    }

    v13 = v6 - 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v6 - 1, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) == 0)
      {
        v14 = *(v5 + 8 * v13 + 32);
LABEL_11:
        v15 = v14;

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        v21 = type metadata accessor for MomentsIndicatorBubble();
        v19[3] = v21;
        v20[0] = v4;
        v19[0] = v15;
        v16 = v4;
        return @nonobjc NSLayoutConstraint.__allocating_init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)(v20, 4, 0, v19, 3, 1.0, -10.0);
      }
    }

    v14 = MEMORY[0x1BFB22010](v13, v5);
    goto LABEL_11;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BBC58000, v9, v10, "bubble is missing from bubblesByType", v11, 2u);
    MEMORY[0x1BFB23DF0](v11, -1, -1);
  }

  return 0;
}

id MomentsIndicatorView.makeBottomConstraint(for:style:)(void *a1, char a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  v13[3] = type metadata accessor for MomentsIndicatorBubble();
  v13[0] = a1;
  v12[3] = type metadata accessor for MomentsIndicatorView();
  v12[0] = v2;
  v5 = a1;
  v6 = v2;
  if (a2)
  {
    v9 = OUTLINED_FUNCTION_0_93();
    v10 = 10;
  }

  else
  {
    v7 = v13;
    v8 = v12;
    v9 = 0.75;
    v10 = 4;
  }

  return @nonobjc NSLayoutConstraint.__allocating_init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)(v7, 10, 0, v8, v10, v9, 0.0);
}

id MomentsIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MomentsIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy15ConversationKit20MomentsIndicatorTypeOAH0kL6BubbleCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_15i5Kit20klm8O_AI0jK6N4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n04_s15ivkl28ViewC10didTimeOut3foryAA0cD6n12C_tFSbAA0cD4M22O3key_AG5valuet_tXEfU_ALTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2;
  v6 = _minimumMergeRunLength(_:)(v4);
  if (v6 < v4)
  {
    v7 = v6;
    UninitializedySayxG_SpyxGtSiFZ15ConversationKit22MomentsIndicatorBubbleC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ15ConversationKit22MomentsIndicatorBubbleC_Tt0g5(v4 / 2);
    v10[0] = v9;
    v10[1] = (v4 / 2);
    v5 = v5;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v7, v5);
    if (v2)
    {
      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v4 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZ15ConversationKit22MomentsIndicatorBubbleC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, v5);
  }

  else
  {
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v21 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x78);
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v19 = v6;
      v20 = a3;
      v8 = *(v5 + 8 * a3);
      v18 = v7;
      do
      {
        v9 = *v6;
        v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x78);
        v11 = v8;
        v12 = v9;
        LODWORD(v10) = *(v10() + 16);

        v14 = *(v21(v13) + 16);

        if (v14 >= v10)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      a3 = v20 + 1;
      v6 = v19 + 8;
      v7 = v18 - 1;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v100 = a5;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    v127 = a5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v102 = v7 + 16;
      v101 = *(v7 + 2);
      for (i = v7; ; v7 = i)
      {
        if (v101 < 2)
        {

          return;
        }

        v103 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v104 = &v7[16 * v101];
        v105 = *v104;
        v7 = v102;
        v106 = &v102[16 * v101];
        v107 = *(v106 + 1);
        v108 = (v103 + 8 * *v104);
        v132 = (v103 + 8 * *v106);
        v131 = (v103 + 8 * v107);
        v109 = v127;
        specialized _merge<A>(low:mid:high:buffer:by:)(v108, v132, v131, v120, v109);
        if (v126)
        {
          break;
        }

        if (v107 < v105)
        {
          goto LABEL_123;
        }

        if (v101 - 2 >= *v7)
        {
          goto LABEL_124;
        }

        v102 = v7;
        *v104 = v105;
        *(v104 + 1) = v107;
        v110 = *v7 - v101;
        if (*v7 < v101)
        {
          goto LABEL_125;
        }

        v126 = 0;
        v101 = *v7 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v106 + 16, v110, v106);
        *v7 = v101;
      }

LABEL_107:
      return;
    }

LABEL_132:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    goto LABEL_97;
  }

  v132 = a5;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v121 = v7;
      v127 = (v6 + 1);
      v10 = *(*a3 + 8 * v9);
      v11 = (*a3 + 8 * v6);
      v128 = v5;
      v13 = *v11;
      v12 = v11 + 2;
      v7 = (8 * v6);
      v14 = MEMORY[0x1E69E7D40];
      v15 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x78);
      v16 = v10;
      v17 = v13;
      LODWORD(v120) = *(v15() + 16);

      v116 = *((*v14 & *v132) + 0x78);
      v118 = *(v116(v18) + 16);

      v112 = v8;
      v19 = v8 + 2;
      while (1)
      {
        v20 = v19;
        if ((v127 + 1) >= v5)
        {
          break;
        }

        ++v127;
        v21 = *(v12 - 1);
        v22 = *((*MEMORY[0x1E69E7D40] & **v12) + 0x78);
        v23 = *v12;
        v24 = v21;
        LODWORD(v22) = *(v22() + 16);

        v26 = *(v116(v25) + 16);

        v5 = v128;

        ++v12;
        v19 = v20 + 1;
        if (v118 < v120 == v26 >= v22)
        {
          goto LABEL_9;
        }
      }

      v127 = v5;
LABEL_9:
      if (v118 >= v120)
      {
        v7 = v121;
        v9 = v127;
        v8 = v112;
      }

      else
      {
        v9 = v127;
        if (v127 < v112)
        {
          goto LABEL_129;
        }

        if (v112 >= v127)
        {
          v7 = v121;
          v8 = v112;
        }

        else
        {
          if (v5 >= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = v5;
          }

          v28 = 8 * v27 - 8;
          v29 = v112;
          v8 = v112;
          do
          {
            if (v29 != --v9)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v31 = *&v7[v30];
              *&v7[v30] = *(v30 + v28);
              *(v30 + v28) = v31;
            }

            ++v29;
            v28 -= 8;
            v7 += 8;
          }

          while (v29 < v9);
          v7 = v121;
          v9 = v127;
        }
      }
    }

    v32 = a3[1];
    if (v9 >= v32)
    {
      goto LABEL_41;
    }

    v33 = v9;
    v68 = __OFSUB__(v9, v8);
    v34 = v9 - v8;
    if (v68)
    {
      goto LABEL_128;
    }

    if (v34 >= a4)
    {
LABEL_32:
      v9 = v33;
      goto LABEL_41;
    }

    if (__OFADD__(v8, a4))
    {
      goto LABEL_130;
    }

    if (v8 + a4 >= v32)
    {
      v35 = a3[1];
    }

    else
    {
      v35 = v8 + a4;
    }

    if (v35 < v8)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v33 == v35)
    {
      goto LABEL_32;
    }

    v122 = v7;
    v36 = v33;
    v129 = *((*MEMORY[0x1E69E7D40] & *v132) + 0x78);
    v37 = *a3;
    v38 = *a3 + 8 * v33 - 8;
    v113 = v8;
    v39 = v8 - v33;
    v117 = v35;
LABEL_34:
    v127 = v36;
    v40 = *(v37 + 8 * v36);
    v119 = v39;
    v120 = v38;
LABEL_35:
    v41 = *v38;
    v42 = *((*MEMORY[0x1E69E7D40] & *v40) + 0x78);
    v43 = v40;
    v44 = v41;
    LODWORD(v42) = *(v42() + 16);

    v46 = *(v129(v45) + 16);

    if (v46 < v42)
    {
      break;
    }

LABEL_39:
    v36 = (v127 + 1);
    v38 = (v120 + 1);
    v39 = v119 - 1;
    if (v127 + 1 != v117)
    {
      goto LABEL_34;
    }

    v9 = v117;
    v7 = v122;
    v8 = v113;
LABEL_41:
    if (v9 < v8)
    {
      goto LABEL_127;
    }

    v127 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      v7 = v98;
    }

    v50 = *(v7 + 2);
    v49 = *(v7 + 3);
    v51 = v50 + 1;
    v52 = v127;
    if (v50 >= v49 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v7);
      v52 = v127;
      v7 = v99;
    }

    *(v7 + 2) = v51;
    v53 = (v7 + 32);
    v54 = &v7[16 * v50 + 32];
    *v54 = v8;
    *(v54 + 1) = v52;
    v130 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v50)
    {
      v120 = (v7 + 32);
      v123 = v7;
      while (1)
      {
        v55 = v51 - 1;
        v56 = &v53[2 * v51 - 2];
        v57 = &v7[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(v7 + 4);
          v59 = *(v7 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_62:
          if (v61)
          {
            goto LABEL_114;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_117;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_120;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_122;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v51 < 2)
        {
          goto LABEL_116;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_77:
        if (v76)
        {
          goto LABEL_119;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_121;
        }

        if (v83 < v75)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v55 - 1 >= v51)
        {
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
          goto LABEL_131;
        }

        v87 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v88 = &v53[2 * v55 - 2];
        v89 = *v88;
        v90 = v55;
        v91 = &v53[2 * v55];
        v92 = v91[1];
        v93 = (v87 + 8 * *v88);
        v94 = (v87 + 8 * *v91);
        v95 = (v87 + 8 * v92);
        v96 = v132;
        specialized _merge<A>(low:mid:high:buffer:by:)(v93, v94, v95, v130, v96);
        if (v126)
        {

          goto LABEL_107;
        }

        v7 = v123;
        if (v92 < v89)
        {
          goto LABEL_109;
        }

        v97 = *(v123 + 2);
        if (v90 > v97)
        {
          goto LABEL_110;
        }

        *v88 = v89;
        v88[1] = v92;
        if (v90 >= v97)
        {
          goto LABEL_111;
        }

        v126 = 0;
        v51 = v97 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v91 + 16, v97 - 1 - v90, v91);
        *(v123 + 2) = v97 - 1;
        v53 = v120;
        if (v97 <= 2)
        {
          goto LABEL_91;
        }
      }

      v62 = &v53[2 * v51];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_112;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_113;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_115;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_118;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_126;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v5 = a3[1];
    v6 = v127;
    if (v127 >= v5)
    {
      goto LABEL_95;
    }
  }

  if (v37)
  {
    v47 = *v38;
    v40 = *(v38 + 8);
    *v38 = v40;
    *(v38 + 8) = v47;
    v38 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_134:

  __break(1u);
LABEL_135:

  __break(1u);
LABEL_136:

  __break(1u);
LABEL_137:

  __break(1u);
LABEL_138:

  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *a1, id *a2, id *a3, void **a4, void *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v11 = &v5[v9];
    v38 = v11;
    for (i = v6; ; v6 = i)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v42 = v8;
      v13 = v5;
      v14 = *v5;
      v15 = MEMORY[0x1E69E7D40];
      v16 = *((*MEMORY[0x1E69E7D40] & **v7) + 0x78);
      v17 = *v7;
      v18 = v14;
      LODWORD(v14) = *(v16() + 16);

      v20 = *((*((*v15 & *a5) + 0x78))(v19) + 16);

      if (v20 >= v14)
      {
        break;
      }

      v21 = v7;
      v22 = v42;
      v23 = v42 == v7++;
      v5 = v13;
      if (!v23)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 = v22 + 1;
      v11 = v38;
    }

    v21 = v13;
    v5 = v13 + 1;
    v22 = v42;
    if (v42 == v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v22 = *v21;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v11 = &v5[v10];
  v43 = v8;
  v37 = v5;
LABEL_15:
  v24 = v7 - 1;
  --v6;
  while (v11 > v5 && v7 > v8)
  {
    v26 = *(v11 - 1);
    v27 = v24;
    v28 = *v24;
    v29 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x78);
    v30 = v26;
    v40 = v28;
    LODWORD(v29) = *(v29() + 16);

    v32 = *((*((*MEMORY[0x1E69E7D40] & *a5) + 0x78))(v31) + 16);

    v33 = v6 + 1;
    if (v32 < v29)
    {
      v23 = v33 == v7;
      v7 = v27;
      v5 = v37;
      v8 = v43;
      if (!v23)
      {
        *v6 = *v27;
        v7 = v27;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v6 = *(v11 - 1);
    }

    --v6;
    --v11;
    v5 = v37;
    v8 = v43;
    v24 = v27;
  }

LABEL_28:
  v34 = v11 - v5;
  if (v7 != v5 || v7 >= &v5[v34])
  {
    memmove(v7, v5, 8 * v34);
  }

  return 1;
}

unint64_t *specialized _NativeDictionary.filter(_:)(unint64_t *a1, void *a2)
{
  v3 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = a2;
  v8 = v7;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v8;
      v3 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy15ConversationKit20MomentsIndicatorTypeOAH0kL6BubbleCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_15i5Kit20klm8O_AI0jK6N4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n04_s15ivkl28ViewC10didTimeOut3foryAA0cD6n12C_tFSbAA0cD4M22O3key_AG5valuet_tXEfU_ALTf1nnc_n(v13, v6, v3, v14);
      MEMORY[0x1BFB23DF0](v13, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  v9 = (v15 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v9);
  v10 = v8;
  specialized closure #1 in _NativeDictionary.filter(_:)(v9, v6, v3, v10);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v11;
  }

LABEL_6:
  return v3;
}

unint64_t lazy protocol witness table accessor for type MomentsIndicatorViewDisplayStyle and conformance MomentsIndicatorViewDisplayStyle()
{
  result = lazy protocol witness table cache variable for type MomentsIndicatorViewDisplayStyle and conformance MomentsIndicatorViewDisplayStyle;
  if (!lazy protocol witness table cache variable for type MomentsIndicatorViewDisplayStyle and conformance MomentsIndicatorViewDisplayStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentsIndicatorViewDisplayStyle and conformance MomentsIndicatorViewDisplayStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MomentsIndicatorViewDisplayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MomentsIndicatorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 56) + 8 * v15);
    type metadata accessor for MomentsIndicatorBubble();
    v17 = v16;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v22, a3);

        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v34 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMd, &_ss18_DictionaryStorageCySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v34 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + 8 * v20);
    v23 = v35;
    v24 = *(v36 + 72);
    outlined init with copy of (AutoplayAction, AutoplayCandidate)(v21 + v24 * v20, v35);
    outlined init with take of (AutoplayAction, AutoplayCandidate)(v23, v37);
    result = MEMORY[0x1BFB22620](*(v13 + 40), v22);
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v13 + 48) + 8 * v28) = v22;
    result = outlined init with take of (AutoplayAction, AutoplayCandidate)(v37, *(v13 + 56) + v28 * v24);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v34;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15ConversationKit20MomentsIndicatorTypeOAC0eF6BubbleCGMd, &_ss18_DictionaryStorageCy15ConversationKit20MomentsIndicatorTypeOAC0eF6BubbleCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    result = v18;
    v4 = v28;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of (AutoplayAction, AutoplayCandidate)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for InCallControlsActivityCell.delegate : InCallControlsActivityCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsActivityCell.delegate : InCallControlsActivityCell(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t InCallControlsActivityCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsActivityCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_delegate;
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

id InCallControlsActivityCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *InCallControlsActivityCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v48 - v2;
  v4 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E696ECC8]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for InCallControlsActivityCell();
  v48[0] = v0;
  v48[1] = v5;
  v6 = OUTLINED_FUNCTION_18_1();
  v9 = objc_msgSendSuper2(v7, v8, v6);
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v10 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  MEMORY[0x1BFB216F0](v3);
  v11 = v9;
  [v11 setAutomaticallyUpdatesBackgroundConfiguration_];
  v12 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView;
  v13 = *&v11[OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 _setOverrideBackgroundColor_];

  [*&v11[v12] _setApplyCornerRadius_];
  v17 = *&v11[v12];
  [v11 _cornerRadius];
  v19 = v18;

  [v17 _setCornerRadius_];
  [*&v11[v12] _setDisableLinkFollowing_];
  [*&v11[v12] _setDisableTapGesture_];
  [*&v11[v12] _setPreferredSizeClass_];
  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v20) = 1148846080;
  [*&v11[v12] setContentHuggingPriority:1 forAxis:v20];
  v21 = [v11 contentView];
  [v21 addSubview_];

  v22 = [*&v11[v12] heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  v24 = *&v11[OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint];
  *&v11[OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint] = v23;
  v25 = v23;

  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BA920;
  *(v27 + 32) = v25;
  v28 = *&v11[v12];
  v29 = v25;
  v30 = [v28 leadingAnchor];
  v31 = OUTLINED_FUNCTION_3_76();
  v32 = [v31 leadingAnchor];

  v33 = OUTLINED_FUNCTION_2_77();
  *(v27 + 40) = v33;
  v34 = [*&v11[v12] topAnchor];
  v35 = OUTLINED_FUNCTION_3_76();
  v36 = [v35 topAnchor];

  v37 = OUTLINED_FUNCTION_2_77();
  *(v27 + 48) = v37;
  v38 = [*&v11[v12] trailingAnchor];
  v39 = OUTLINED_FUNCTION_3_76();
  v40 = [v39 trailingAnchor];

  v41 = OUTLINED_FUNCTION_2_77();
  *(v27 + 56) = v41;
  v42 = [*&v11[v12] bottomAnchor];
  v43 = OUTLINED_FUNCTION_3_76();

  v44 = [v43 bottomAnchor];
  v45 = OUTLINED_FUNCTION_2_77();

  *(v27 + 64) = v45;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints_];

  return v11;
}

id InCallControlsActivityCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsActivityCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E696ECC8]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id InCallControlsActivityCell.configure(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InCallControlsActivityCellViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView;
  v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView);
  if (InCallControlsActivityCellViewModel.cellStyle.getter())
  {
    v10 = 10;
  }

  else
  {
    v10 = 11;
  }

  [v9 _setPreferredSizeClass_];

  v11 = *(v1 + v8);
  v12 = InCallControlsActivityCellViewModel.activityMetadata.getter();
  [v11 setMetadata_];

  v13 = *(v2 + v8);
  if (InCallControlsActivityCellViewModel.contacts.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  [v13 _setContactsForAttribution_];

  v15 = a1[5];
  v16 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v15);
  (*(v16 + 16))(aBlock, v15, v16);
  if (LOBYTE(aBlock[0]) == 2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696ECB0]) init];
    [v17 setPreserveIconAspectRatioAndAlignmentWhenScaling_];
    [*(v2 + v8) _setSizeClassParameters_];
  }

  v18 = InCallControlsActivityCellViewModel.shouldShowActionButton.getter();
  v19 = *(v2 + v8);
  if (v18)
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of InCallControlsActivityCellViewModel(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    outlined init with take of InCallControlsActivityCellViewModel(v7, v22 + v21);
    aBlock[4] = partial apply for closure #1 in InCallControlsActivityCell.configure(with:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_31;
    v23 = _Block_copy(aBlock);
    v24 = v19;

    v25 = [objc_opt_self() conversationKit];
    v39._object = 0xE000000000000000;
    v26.value._countAndFlagsBits = 0x61737265766E6F43;
    v26.value._object = 0xEF74694B6E6F6974;
    v27._countAndFlagsBits = 1852141647;
    v27._object = 0xE400000000000000;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v39);

    v30 = MEMORY[0x1BFB209B0](v29._countAndFlagsBits, v29._object);

    [v24 _setAction_withText_buttonType_];

    _Block_release(v23);
  }

  else
  {
    v31 = v19;
    v24 = MEMORY[0x1BFB209B0](0, 0xE000000000000000);
    [v31 _setAction_withText_];
  }

  [*(v2 + v8) sizeThatFits_];
  v33 = *(v2 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint);
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    v36 = InCallControlsActivityCellViewModel.activityCellHeight.getter();
    if (v34 > v36)
    {
      v36 = v34;
    }

    [v35 setConstant_];
  }

  return [*(v2 + v8) setNeedsUpdateConstraints];
}

void closure #1 in InCallControlsActivityCell.configure(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x98))())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2 + 16, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id InCallControlsActivityCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsActivityCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of InCallControlsActivityCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InCallControlsActivityCellViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of InCallControlsActivityCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InCallControlsActivityCellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in InCallControlsActivityCell.configure(with:)()
{
  v1 = *(type metadata accessor for InCallControlsActivityCellViewModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in InCallControlsActivityCell.configure(with:)(v2, v3);
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeV_G_12CoreGraphics7CGFloatVs5NeverOTg504_s15e25Kit26ScreenSharingToolbarg42V12sizeThatFits8proposal8subviews5cacheSo6p57V7SwiftUI16ProposedViewSizeV_AJ0F8SubviewsVAC5CacheVztF12q9Graphics7S8VAIXEfU_Tf1cn_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v21 = *(a1 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = specialized Dictionary.Keys.startIndex.getter(a1);
    v5 = v4;
    v6 = v21;
    v7 = 0;
    v8 = a1 + 64;
    if ((v3 & 0x8000000000000000) == 0)
    {
      while (v3 < 1 << *(a1 + 32))
      {
        v9 = v3 >> 6;
        if ((*(v8 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_24;
        }

        v10 = *(*(a1 + 56) + 16 * v3);
        v11 = *(v22 + 16);
        if (v11 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v2 = v20;
          v8 = a1 + 64;
          v6 = v21;
        }

        *(v22 + 16) = v11 + 1;
        *(v22 + 8 * v11 + 32) = v10;
        v12 = 1 << *(a1 + 32);
        if (v3 >= v12)
        {
          goto LABEL_25;
        }

        v13 = *(v8 + 8 * v9);
        if ((v13 & (1 << v3)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v3 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v3 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v9 << 6;
          v16 = v9 + 1;
          v17 = (a1 + 72 + 8 * v9);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v3, v5, v2 & 1);
              v8 = a1 + 64;
              v6 = v21;
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v3, v5, v2 & 1);
          v8 = a1 + 64;
          v6 = v21;
        }

LABEL_18:
        if (++v7 == v6)
        {
          return;
        }

        v2 = 0;
        v5 = *(a1 + 36);
        v3 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeV_G_12CoreGraphics7CGFloatVs5NeverOTg504_s15e25Kit26ScreenSharingToolbarg42V12sizeThatFits8proposal8subviews5cacheSo6p57V7SwiftUI16ProposedViewSizeV_AJ0F8SubviewsVAC5CacheVztF12q9Graphics7S9VAIXEfU0_Tf1cn_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v21 = *(a1 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = specialized Dictionary.Keys.startIndex.getter(a1);
    v5 = v4;
    v6 = v21;
    v7 = 0;
    v8 = a1 + 64;
    if ((v3 & 0x8000000000000000) == 0)
    {
      while (v3 < 1 << *(a1 + 32))
      {
        v9 = v3 >> 6;
        if ((*(v8 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_24;
        }

        v10 = *(*(a1 + 56) + 16 * v3 + 8);
        v11 = *(v22 + 16);
        if (v11 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v2 = v20;
          v8 = a1 + 64;
          v6 = v21;
        }

        *(v22 + 16) = v11 + 1;
        *(v22 + 8 * v11 + 32) = v10;
        v12 = 1 << *(a1 + 32);
        if (v3 >= v12)
        {
          goto LABEL_25;
        }

        v13 = *(v8 + 8 * v9);
        if ((v13 & (1 << v3)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v3 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v3 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v9 << 6;
          v16 = v9 + 1;
          v17 = (a1 + 72 + 8 * v9);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v3, v5, v2 & 1);
              v8 = a1 + 64;
              v6 = v21;
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v3, v5, v2 & 1);
          v8 = a1 + 64;
          v6 = v21;
        }

LABEL_18:
        if (++v7 == v6)
        {
          return;
        }

        v2 = 0;
        v5 = *(a1 + 36);
        v3 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

unint64_t ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(unsigned int a1, uint64_t a2)
{
  v49 = a1;
  v42 = type metadata accessor for LayoutSubview();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = type metadata accessor for LayoutSubviews();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v43 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v44 = &v41 - v22;
  (*(v11 + 16))(v13, a2, v10, v21);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3D0]);
  dispatch thunk of Sequence.makeIterator()();
  v23 = *(v15 + 44);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3D8]);
  v24 = (v3 + 16);
  v47 = (v3 + 8);
  v48 = (v3 + 32);
  for (i = v42; ; (*v47)(v7, i))
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v17[v23] == *v51)
    {
      outlined destroy of TapInteractionHandler?(v17, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
      v29 = 1;
      v30 = v44;
      goto LABEL_7;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v46;
    (*v24)(v46);
    v26(v51, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v28 = *v48;
    (*v48)(v7, v27, i);
    lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
    LayoutSubview.subscript.getter();
    if (v51[0] == v49)
    {
      break;
    }
  }

  outlined destroy of TapInteractionHandler?(v17, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v30 = v44;
  v28(v44, v7, i);
  v29 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v30, v29, 1, i);
  v31 = v43;
  outlined init with copy of LayoutSubview?(v30, v43);
  if (__swift_getEnumTagSinglePayload(v31, 1, i) == 1)
  {
    outlined destroy of TapInteractionHandler?(v30, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    return specialized Dictionary._Variant.removeValue(forKey:)(v49);
  }

  else
  {
    v33 = v41;
    (*v48)(v41, v31, i);
    static ProposedViewSize.unspecified.getter();
    v51[0] = v34 & 1;
    v50 = v35 & 1;
    LayoutSubview.sizeThatFits(_:)();
    v37 = v36;
    v39 = v38;
    (*v47)(v33, i);
    outlined destroy of TapInteractionHandler?(v30, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    v40 = v45;
    swift_isUniquelyReferenced_nonNull_native();
    *v51 = *v40;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, v37, v39);
    *v40 = *v51;
  }

  return result;
}

ConversationKit::ScreenSharingToolbarLayout::Cache __swiftcall ScreenSharingToolbarLayout.Cache.init()()
{
  type metadata accessor for CGSize(0);
  lazy protocol witness table accessor for type LayoutPosition and conformance LayoutPosition();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t ScreenSharingToolbarLayout.makeCache(subviews:)(uint64_t a1)
{
  type metadata accessor for CGSize(0);
  lazy protocol witness table accessor for type LayoutPosition and conformance LayoutPosition();
  v3 = Dictionary.init(dictionaryLiteral:)();
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(0, a1);
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(1u, a1);
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(2u, a1);
  return v3;
}

unint64_t ScreenSharingToolbarLayout.updateCache(_:subviews:)(uint64_t a1, uint64_t a2)
{
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(0, a2);
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(1u, a2);
  return ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(2u, a2);
}

double ScreenSharingToolbarLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7)
{
  v9 = *a6;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeV_G_12CoreGraphics7CGFloatVs5NeverOTg504_s15e25Kit26ScreenSharingToolbarg42V12sizeThatFits8proposal8subviews5cacheSo6p57V7SwiftUI16ProposedViewSizeV_AJ0F8SubviewsVAC5CacheVztF12q9Graphics7S8VAIXEfU_Tf1cn_n(v10);
  v12 = specialized Sequence<>.max()(v11);
  v14 = v13;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeV_G_12CoreGraphics7CGFloatVs5NeverOTg504_s15e25Kit26ScreenSharingToolbarg42V12sizeThatFits8proposal8subviews5cacheSo6p57V7SwiftUI16ProposedViewSizeV_AJ0F8SubviewsVAC5CacheVztF12q9Graphics7S9VAIXEfU0_Tf1cn_n(v9);
  specialized Sequence<>.max()(v15);

  v16 = Axis.rawValue.getter();
  v17 = Axis.rawValue.getter();
  v18 = *&a1;
  if (a2)
  {
    v18 = 10.0;
  }

  v19 = *&v12;
  if (v14)
  {
    v19 = 0.0;
  }

  if (v16 == v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  Axis.rawValue.getter();
  Axis.rawValue.getter();

  return v20;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t ScreenSharingToolbarLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, unsigned int a12)
{
  v139 = a12;
  v136 = a5;
  v137 = a11;
  v149 = a4;
  v135 = a3;
  v140 = a2;
  v14 = type metadata accessor for LayoutSubview();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v156 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v155 = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v154 = v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v153 = v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v150 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  v152 = &v134 - v28;
  *&v29 = COERCE_DOUBLE(type metadata accessor for LayoutSubviews());
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  v157 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v134 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v134 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  MEMORY[0x1EEE9AC00](v43 - 8);
  OUTLINED_FUNCTION_4();
  v138 = v44;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v148 = v46;
  OUTLINED_FUNCTION_33_1();
  v48 = MEMORY[0x1EEE9AC00](v47);
  v147 = &v134 - v49;
  v50 = *(v31 + 16);
  v146 = a10;
  v51 = a10;
  v52 = v42;
  v145 = v31 + 16;
  v142 = v50;
  v50(v34, v51, v29, v48);
  v53 = lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3D0]);
  v144 = v34;
  v160 = *&v29;
  v141 = v53;
  dispatch thunk of Sequence.makeIterator()();
  v143 = v35;
  v54 = *(v35 + 36);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3D8]);
  v55 = (v16 + 32);
  *&v158 = v16 + 8;
  v159 = (v16 + 16);
  v151 = v39;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v52 + v54) == *v161)
    {
      outlined destroy of TapInteractionHandler?(v52, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
      v64 = 1;
      v52 = v147;
      goto LABEL_7;
    }

    v56 = dispatch thunk of Collection.subscript.read();
    v57 = v55;
    v58 = v152;
    (*v159)(v152);
    v56(v161, 0);
    v59 = v54;
    dispatch thunk of Collection.formIndex(after:)();
    v60 = *v57;
    v61 = v58;
    v55 = v57;
    (*v57)(v150, v61, v14);
    lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
    LayoutSubview.subscript.getter();
    if (v161[0] == 1)
    {
      break;
    }

    v62 = OUTLINED_FUNCTION_3_77();
    v63(v62);
    v39 = v151;
    v54 = v59;
  }

  outlined destroy of TapInteractionHandler?(v52, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v65 = OUTLINED_FUNCTION_7_52(&v162);
  v60(v65);
  v64 = 0;
  v39 = v151;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v52, v64, 1, v14);
  v66 = OUTLINED_FUNCTION_1_79();
  v67(v66);
  dispatch thunk of Sequence.makeIterator()();
  v68 = *(v143 + 36);
  v69 = v153;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v39[v68] == *v161)
    {
      outlined destroy of TapInteractionHandler?(v39, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
      v74 = 1;
      v68 = v148;
      goto LABEL_13;
    }

    v70 = dispatch thunk of Collection.subscript.read();
    (*v159)(v69);
    v70(v161, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v71 = *v55;
    (*v55)(v154, v69, v14);
    lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
    LayoutSubview.subscript.getter();
    if (v161[0] == 2)
    {
      break;
    }

    v72 = OUTLINED_FUNCTION_3_77();
    v73(v72);
  }

  outlined destroy of TapInteractionHandler?(v39, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v75 = OUTLINED_FUNCTION_7_52(&v163);
  v71(v75);
  v74 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v68, v74, 1, v14);
  v76 = OUTLINED_FUNCTION_1_79();
  v77(v76);
  v78 = v157;
  dispatch thunk of Sequence.makeIterator()();
  v79 = *(v143 + 36);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v78 + v79) == *v161)
    {
      outlined destroy of TapInteractionHandler?(v78, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
      v86 = 1;
      v87 = v138;
      goto LABEL_19;
    }

    v80 = dispatch thunk of Collection.subscript.read();
    v81 = v155;
    (*v159)(v155);
    v80(v161, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v82 = *v55;
    v83 = v156;
    (*v55)(v156, v81, v14);
    lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
    LayoutSubview.subscript.getter();
    if (!v161[0])
    {
      break;
    }

    v84 = OUTLINED_FUNCTION_3_77();
    v85(v84);
    v78 = v157;
  }

  outlined destroy of TapInteractionHandler?(v157, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v87 = v138;
  v82(v138, v83, v14);
  v86 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v87, v86, 1, v14);
  v88 = *v137;
  if (!*(*v137 + 16))
  {
    v158 = 0.0;
    v159 = 0;
    v101 = 0.0;
    v160 = 0.0;
    v96 = 0.0;
LABEL_29:
    v106 = 0.0;
    goto LABEL_31;
  }

  v89 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v90 = 0.0;
  v91 = 0;
  if (v92)
  {
    v93 = (*(v88 + 56) + 16 * v89);
    v90 = *v93;
    v91 = *(v93 + 1);
  }

  v94 = *(v88 + 16);
  v159 = v91;
  v160 = v90;
  if (v94)
  {
    v95 = specialized __RawDictionaryStorage.find<A>(_:)(1);
    v96 = 0.0;
    v97 = 0.0;
    v98 = 0.0;
    if (v99)
    {
      v100 = (*(v88 + 56) + 16 * v95);
      v97 = *v100;
      v98 = v100[1];
    }

    v101 = v97;
    v102 = *(v88 + 16);
    v158 = v98;
    if (v102)
    {
      v103 = specialized __RawDictionaryStorage.find<A>(_:)(2);
      if (v104)
      {
        v105 = *(v88 + 56) + 16 * v103;
        v96 = *v105;
        v106 = *(v105 + 8);
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

  v101 = 0.0;
  v96 = 0.0;
  v106 = 0.0;
  v158 = 0.0;
LABEL_31:
  v107 = v139;
  v108 = Axis.rawValue.getter();
  v109 = Axis.rawValue.getter();
  v111 = v106 != 0.0 || v108 != v109;
  v112 = Axis.rawValue.getter();
  v113 = Axis.rawValue.getter();
  v114 = v136;
  v115 = a1;
  v116 = a1;
  v117 = v140;
  v118 = v135;
  v119 = v158;
  ScreenSharingToolbarLayout.placeSubview(_:at:in:idealSize:leadingActionsSize:trailingActionsSize:)(v87, 0, v107, v116, v140, v135, v149, v160, *&v159, v101, v158, v96, v106, v136);
  v120 = v117;
  v121 = v149;
  ScreenSharingToolbarLayout.placeSubview(_:at:in:idealSize:leadingActionsSize:trailingActionsSize:)(v147, v111, v107, v115, v120, v118, v149, v101, v119, v101, v119, v96, v106, v114);
  if (v119 == 0.0 && v112 == v113)
  {
    v123 = 0;
  }

  else
  {
    v123 = 2;
  }

  ScreenSharingToolbarLayout.placeSubview(_:at:in:idealSize:leadingActionsSize:trailingActionsSize:)(v148, v123, v107, v115, v140, v118, v121, v96, v106, v101, v119, v96, v106, v114);
  OUTLINED_FUNCTION_31_2();
  outlined destroy of TapInteractionHandler?(v124, v125, v126);
  OUTLINED_FUNCTION_31_2();
  outlined destroy of TapInteractionHandler?(v127, v128, v129);
  OUTLINED_FUNCTION_31_2();
  return outlined destroy of TapInteractionHandler?(v130, v131, v132);
}

uint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey()
{
  result = lazy protocol witness table cache variable for type LayoutPositionKey and conformance LayoutPositionKey;
  if (!lazy protocol witness table cache variable for type LayoutPositionKey and conformance LayoutPositionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPositionKey and conformance LayoutPositionKey);
  }

  return result;
}

uint64_t ScreenSharingToolbarLayout.placeSubview(_:at:in:idealSize:leadingActionsSize:trailingActionsSize:)(uint64_t a1, char a2, unsigned __int8 a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v72 = a8;
  v73 = a9;
  v74 = a5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v70 - v23;
  if (a10 <= a12)
  {
    a10 = a12;
  }

  if (a11 > a13)
  {
    v25 = a11;
  }

  else
  {
    v25 = a13;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v26 = a4;
      if (a3 < 2u)
      {
        v27 = v74;
        v28 = v74;
        v29 = a6;
        v30 = a7;
        CGRectGetMinX(*&v26);
        v77.origin.x = a4;
        v77.origin.y = v27;
        v77.size.width = a6;
        v77.size.height = a7;
        CGRectGetMinY(v77);
        static UnitPoint.topLeading.getter();
LABEL_41:
        Axis.rawValue.getter();
        Axis.rawValue.getter();
        Axis.rawValue.getter();
        Axis.rawValue.getter();
        goto LABEL_44;
      }

      if (a3 == 2)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v26 = a4;
      if (a3 - 2 < 2)
      {
        v52 = v74;
        v53 = v74;
        v54 = a6;
        v55 = a7;
        CGRectGetMaxX(*&v26);
        v80.origin.x = a4;
        v80.origin.y = v52;
        v80.size.width = a6;
        v80.size.height = a7;
        CGRectGetMaxY(v80);
        static UnitPoint.bottomTrailing.getter();
        goto LABEL_41;
      }

      if (a3)
      {
LABEL_40:
        v62 = v74;
        v63 = v74;
        v64 = a6;
        v65 = a7;
        CGRectGetMinX(*&v26);
        v84.origin.x = a4;
        v84.origin.y = v62;
        v84.size.width = a6;
        v84.size.height = a7;
        CGRectGetMaxY(v84);
        static UnitPoint.bottomLeading.getter();
        goto LABEL_41;
      }
    }

    v58 = v74;
    v59 = v74;
    v60 = a6;
    v61 = a7;
    CGRectGetMaxX(*&v26);
    v83.origin.x = a4;
    v83.origin.y = v58;
    v83.size.width = a6;
    v83.size.height = a7;
    CGRectGetMinY(v83);
    static UnitPoint.topTrailing.getter();
    goto LABEL_41;
  }

  v71 = a14;
  v78.origin.x = a4;
  v31 = a10;
  v32 = v74;
  v78.origin.y = v74;
  v78.size.width = a6;
  v78.size.height = a7;
  v70[5] = CGRectGetMidX(v78);
  *v70 = a4;
  v79.origin.x = a4;
  v79.origin.y = v32;
  v79.size.width = a6;
  v79.size.height = a7;
  v70[4] = CGRectGetMidY(v79);
  static UnitPoint.center.getter();
  v70[2] = v34;
  v70[3] = v33;
  v35 = Axis.rawValue.getter();
  v36 = Axis.rawValue.getter();
  *&v70[1] = v31;
  v37 = v71;
  if (v35 == v36)
  {
    v38 = a6 - (v31 + v71 + v31 + v71);
  }

  else
  {
    v38 = a6;
  }

  v39 = Axis.rawValue.getter();
  if (v39 == Axis.rawValue.getter())
  {
    v40 = a7 - (v25 + v37 + v25 + v37);
  }

  else
  {
    v40 = a7;
  }

  v41 = Axis.rawValue.getter();
  v42 = Axis.rawValue.getter();
  v43 = v72;
  if (v38 < v72 && v41 == v42)
  {
    v45 = v38;
  }

  else
  {
    v45 = v72;
  }

  v71 = v45;
  v46 = Axis.rawValue.getter();
  v47 = Axis.rawValue.getter();
  v48 = v73;
  if (v40 < v73 && v46 == v47)
  {
    v48 = v40;
  }

  v73 = v48;
  v50 = Axis.rawValue.getter();
  if (v50 == Axis.rawValue.getter() && v38 < v43)
  {
    if (a11 == 0.0)
    {
      v56 = *v70;
      *&v81.origin.x = v70[0];
      v57 = v74;
      v81.origin.y = v74;
      v81.size.width = a6;
      v81.size.height = a7;
      CGRectGetMinX(v81);
      v82.origin.x = v56;
      v82.origin.y = v57;
      v82.size.width = a6;
      v82.size.height = a7;
      CGRectGetMidY(v82);
      static UnitPoint.leading.getter();
    }

    else
    {
      v66 = *v70;
      if (a13 == 0.0)
      {
        *&v85.origin.x = v70[0];
        v67 = v74;
        v85.origin.y = v74;
        v85.size.width = a6;
        v85.size.height = a7;
        CGRectGetMaxX(v85);
        v86.origin.x = v66;
        v86.origin.y = v67;
        v86.size.width = a6;
        v86.size.height = a7;
        CGRectGetMidY(v86);
        static UnitPoint.trailing.getter();
      }
    }
  }

LABEL_44:
  outlined init with copy of LayoutSubview?(a1, v24);
  v68 = type metadata accessor for LayoutSubview();
  if (__swift_getEnumTagSinglePayload(v24, 1, v68) == 1)
  {
    return outlined destroy of TapInteractionHandler?(v24, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  }

  v76 = 0;
  v75 = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(*(v68 - 8) + 8))(v24, v68);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance ScreenSharingToolbarLayout@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ScreenSharingToolbarLayout.makeCache(subviews:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ScreenSharingToolbarLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ScreenSharingToolbarLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981820]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ScreenSharingToolbarLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981828]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance ScreenSharingToolbarLayout(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LayoutPosition(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  LayoutRole.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t ScreenSharingToolbarLayout.callAsFunction<A, B, C>(_:leadingActions:trailingActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, double a9@<D0>, uint64_t x8_0@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v28 = a9;
  v29 = a7;
  v19[2] = a8;
  v19[3] = a10;
  v19[4] = a11;
  v20 = a12;
  v21 = a13;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMR);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v15 = type metadata accessor for TupleView();
  v16 = lazy protocol witness table accessor for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout();
  OUTLINED_FUNCTION_0_10();
  WitnessTable = swift_getWitnessTable();
  return Layout.callAsFunction<A>(_:)(partial apply for closure #1 in ScreenSharingToolbarLayout.callAsFunction<A, B, C>(_:leadingActions:trailingActions:), v19, &type metadata for ScreenSharingToolbarLayout, v15, v16, WitnessTable, x8_0);
}

uint64_t closure #1 in ScreenSharingToolbarLayout.callAsFunction<A, B, C>(_:leadingActions:trailingActions:)@<X0>(void (*a1)(double)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t (*a3)(char *, uint64_t)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v81 = a5;
  v82 = a4;
  v73 = a3;
  v74 = a2;
  v70 = a1;
  v84 = a8;
  v75 = a9;
  v83 = *(a9 - 8);
  v80 = a12;
  v72 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMR);
  v78 = type metadata accessor for ModifiedContent();
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v91 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v64 - v17;
  v68 = a7;
  v71 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ModifiedContent();
  v22 = *(v21 - 8);
  v88 = v21;
  v89 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v64 - v25;
  v26 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ModifiedContent();
  v66 = *(v30 - 8);
  v31 = v66;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v86 = &v64 - v36;
  v70(v35);
  LOBYTE(v96[0]) = 0;
  v64 = lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
  View.layoutValue<A>(key:value:)();
  (*(v26 + 8))(v29, a6);
  v37 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<LayoutPositionKey>> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMR, MEMORY[0x1E697FDC0]);
  v96[7] = a10;
  v96[8] = v37;
  v65 = v30;
  WitnessTable = swift_getWitnessTable();
  v85 = v33;
  static ViewBuilder.buildExpression<A>(_:)();
  v38 = *(v31 + 8);
  v69 = v31 + 8;
  v70 = v38;
  v39 = (v38)(v33, v30);
  v74(v39);
  LOBYTE(v96[0]) = 1;
  v40 = v87;
  v41 = v68;
  v42 = v72;
  View.layoutValue<A>(key:value:)();
  (*(v71 + 8))(v20, v41);
  v96[5] = v42;
  v96[6] = v37;
  v43 = v88;
  v72 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v73 = *(v89 + 8);
  v74 = (v89 + 8);
  v44 = v73(v40, v43);
  v45 = v77;
  v82(v44);
  LOBYTE(v96[0]) = 2;
  v46 = v91;
  v47 = v75;
  v48 = v80;
  View.layoutValue<A>(key:value:)();
  (*(v83 + 8))(v45, v47);
  v96[3] = v48;
  v96[4] = v37;
  v49 = v78;
  v50 = swift_getWitnessTable();
  v51 = v76;
  v52 = v46;
  static ViewBuilder.buildExpression<A>(_:)();
  v53 = v79;
  v83 = *(v79 + 8);
  (v83)(v52, v49);
  v54 = v85;
  v55 = v65;
  (*(v66 + 16))(v85, v86, v65);
  v96[0] = v54;
  v56 = v90;
  v57 = v88;
  (*(v89 + 16))(v40, v90, v88);
  v96[1] = v40;
  (*(v53 + 16))(v52, v51, v49);
  v96[2] = v52;
  v95[0] = v55;
  v95[1] = v57;
  v58 = v57;
  v95[2] = v49;
  v92 = WitnessTable;
  v93 = v72;
  v94 = v50;
  static ViewBuilder.buildBlock<each A>(_:)(v96, 3, v95);
  v59 = v83;
  (v83)(v51, v49);
  v60 = v57;
  v61 = v73;
  v73(v56, v60);
  v62 = v70;
  (v70)(v86, v55);
  v59(v91, v49);
  v61(v87, v58);
  return (v62)(v85, v55);
}

unint64_t lazy protocol witness table accessor for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout()
{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingToolbarLayout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingToolbarLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LayoutPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of LayoutSubview?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary.Values.startIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t View.toolbarPlacement(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t ScreenSharingToolbar.toolbarPlacement.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v0 + 8);
  v7 = *v0;
  v12 = *v0;
  if (v13 != 1)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v8, &dword_1BBC58000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v12, &_s7SwiftUI11EnvironmentVyAA4EdgeOGMd, &_s7SwiftUI11EnvironmentVyAA4EdgeOGMR);
    (*(v3 + 8))(v6, v1);
    return v11[15];
  }

  return v7;
}

uint64_t ScreenSharingToolbar.leadingActions.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t ScreenSharingToolbar.centerActions.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t ScreenSharingToolbar.trailingActions.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t ScreenSharingToolbar.actionsContainer.getter()
{
  ScreenSharingToolbar.toolbarPlacement.getter();
  v0 = Axis.rawValue.getter();
  if (v0 == Axis.rawValue.getter())
  {
    static VerticalAlignment.center.getter();
    lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  }

  else
  {
    static HorizontalAlignment.center.getter();
    lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
  }

  return AnyLayout.init<A>(_:)();
}

uint64_t ScreenSharingToolbar.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMd, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMR);
  v41 = a1[2];
  type metadata accessor for Optional();
  v40 = a1[4];
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_2();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for TupleView();
  v43 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR);
  v36 = a1[3];
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_78();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v4, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR, v5);
  type metadata accessor for _VariadicView.Tree();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for ModifiedContent();
  v34 = a1[5];
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for _VariadicView.Tree();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8_8();
  v37 = type metadata accessor for TupleView();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<ScreenSharingToolbarLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMd, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMR, v2);
  type metadata accessor for _VariadicView.Tree();
  OUTLINED_FUNCTION_1();
  v38 = v6;
  v39 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v33 - v10;
  v11 = v42;
  v12 = ScreenSharingToolbar.toolbarPlacement.getter();
  v13 = a1[6];
  v14 = a1[7];
  v16 = a1[8];
  v15 = a1[9];
  v18 = v40;
  v17 = v41;
  v19 = v36;
  v20 = v34;
  v21 = implicit closure #1 in ScreenSharingToolbar.body.getter(v12, v41, v36, v40, v34, v13, v14, v16, 15.0, v15);
  *&v22 = v17;
  *(&v22 + 1) = v19;
  *&v23 = v18;
  *(&v23 + 1) = v20;
  v58 = v22;
  v59 = v23;
  v60 = v13;
  v61 = v14;
  v62 = v16;
  v63 = v15;
  v64 = v11;
  v51[1] = v22;
  v51[2] = v23;
  v52 = v13;
  v53 = v14;
  v54 = v16;
  v55 = v15;
  v56 = v11;
  v45[1] = v22;
  v45[2] = v23;
  v46 = v13;
  v47 = v14;
  v48 = v16;
  v49 = v15;
  v50 = v11;
  v24 = v33;
  (v21)(partial apply for closure #1 in ScreenSharingToolbar.body.getter, v57, partial apply for closure #2 in ScreenSharingToolbar.body.getter, v51, partial apply for closure #3 in ScreenSharingToolbar.body.getter, v45);

  OUTLINED_FUNCTION_1_22();
  v27 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v25, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMd, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMR, v26);
  WitnessTable = swift_getWitnessTable();
  v65 = v27;
  v66 = WitnessTable;
  OUTLINED_FUNCTION_5_30();
  v29 = v38;
  swift_getWitnessTable();
  v30 = v35;
  static ViewBuilder.buildExpression<A>(_:)();
  v31 = *(v39 + 8);
  v31(v24, v29);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v30, v29);
}

uint64_t (*implicit closure #1 in ScreenSharingToolbar.body.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = a10;
  *(v19 + 80) = a9;
  *(v19 + 88) = a1;
  return partial apply for implicit closure #2 in implicit closure #1 in ScreenSharingToolbar.body.getter;
}

uint64_t implicit closure #2 in implicit closure #1 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, double a8@<D0>, uint64_t a9@<X8>)
{
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR);
  type metadata accessor for Optional();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR, MEMORY[0x1E697DDC8]);
  v12 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for Optional();
  v13 = type metadata accessor for _VariadicView.Tree();
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR, MEMORY[0x1E697DDD0]);
  swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *(&v18 + 1) = v15;
  *&v18 = WitnessTable;
  return ScreenSharingToolbarLayout.callAsFunction<A, B, C>(_:leadingActions:trailingActions:)(a1, a2, a3, a4, a5, a6, a7, v11, a8, a9, v12, v13, v18, v16);
}

uint64_t closure #1 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = a7;
  v26 = a8;
  v23 = a1;
  v24 = a6;
  v22 = a5;
  v27 = a9;
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = v22;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = a10;
  v36 = v23;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v14 + 8);
  v20(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v19, v13);
}

uint64_t closure #1 in closure #1 in ScreenSharingToolbar.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v70 = a5;
  v60 = a3;
  v61 = a1;
  v65 = a9;
  v58 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v56 - v17;
  v62 = type metadata accessor for Optional();
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v56 - v20;
  v21 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v59 = type metadata accessor for Optional();
  v67 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v68 = &v56 - v31;
  v76 = a2;
  v77 = v60;
  v78 = a4;
  v79 = v70;
  v69 = a8;
  v70 = a6;
  v80 = a6;
  v81 = a7;
  v82 = a8;
  v83 = a10;
  v32 = v61;
  type metadata accessor for ScreenSharingToolbar(0, &v76);
  ScreenSharingToolbar.toolbarPlacement.getter();
  v33 = Axis.rawValue.getter();
  if (v33 == Axis.rawValue.getter())
  {
    (*(v32 + 2))();
    static ViewBuilder.buildExpression<A>(_:)();
    v34 = *(v21 + 8);
    v34(v24, a2);
    static ViewBuilder.buildExpression<A>(_:)();
    v34(v27, a2);
    (*(v21 + 32))(v29, v24, a2);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = 1;
  __swift_storeEnumTagSinglePayload(v29, v35, 1, a2);
  static ViewBuilder.buildIf<A>(_:)(v29, v68);
  v37 = *(v67 + 8);
  v61 = v29;
  v38 = v29;
  v39 = v59;
  v60 = v37;
  v37(v38, v59);
  v40 = *(v32 + 6);
  if (v40)
  {
    v41 = *(v32 + 7);

    v43 = v57;
    v40(v42);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v40, v41);
    v44 = v56;
    static ViewBuilder.buildExpression<A>(_:)();
    v45 = v58;
    v46 = *(v58 + 8);
    v46(v43, a4);
    static ViewBuilder.buildExpression<A>(_:)();
    v46(v44, a4);
    (*(v45 + 32))(v66, v43, a4);
    v36 = 0;
  }

  v47 = v66;
  __swift_storeEnumTagSinglePayload(v66, v36, 1, a4);
  v48 = v64;
  static ViewBuilder.buildIf<A>(_:)(v47, v64);
  v49 = v63;
  v50 = *(v63 + 8);
  v51 = v62;
  v50(v47, v62);
  v52 = v68;
  v53 = v61;
  (*(v67 + 16))(v61, v68, v39);
  v76 = v53;
  (*(v49 + 16))(v47, v48, v51);
  v77 = v47;
  v75[0] = v39;
  v75[1] = v51;
  v72 = v70;
  WitnessTable = swift_getWitnessTable();
  v71 = v69;
  v74 = swift_getWitnessTable();
  static ViewBuilder.buildBlock<each A>(_:)(&v76, 2, v75);
  v50(v48, v51);
  v54 = v60;
  v60(v52, v39);
  v50(v47, v51);
  return v54(v53, v39);
}

uint64_t closure #2 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a8;
  v37 = a7;
  v42 = a9;
  v35 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR);
  v38 = type metadata accessor for Optional();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR, MEMORY[0x1E697DDC8]);
  v16 = type metadata accessor for _VariadicView.Tree();
  v41 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v33 - v19;
  v56[0] = a2;
  v56[1] = a3;
  v56[2] = a4;
  v56[3] = a5;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = v37;
  v56[4] = a6;
  v56[5] = v37;
  v24 = v39;
  v25 = v35;
  v56[6] = v39;
  v56[7] = v35;
  type metadata accessor for ScreenSharingToolbar(0, v56);
  v34 = ScreenSharingToolbar.actionsContainer.getter();
  v56[0] = v34;
  v44 = a2;
  v45 = a3;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = v25;
  v52 = a1;
  v26 = lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout();
  v55 = v23;
  v27 = v38;
  WitnessTable = swift_getWitnessTable();
  v29 = v36;
  Layout.callAsFunction<A>(_:)(partial apply for closure #1 in closure #2 in ScreenSharingToolbar.body.getter, v43, MEMORY[0x1E6981D78], v27, v26, WitnessTable, v36);

  v53 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR, MEMORY[0x1E697DDD0]);
  v54 = WitnessTable;
  swift_getWitnessTable();
  v30 = v40;
  static ViewBuilder.buildExpression<A>(_:)();
  v31 = *(v41 + 8);
  v31(v29, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v30, v16);
}

uint64_t closure #1 in closure #2 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v27 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for Optional();
  v26[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(a1 + 40);

    v18(v20);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v18, v19);
    static ViewBuilder.buildExpression<A>(_:)();
    v21 = *(v6 + 8);
    v21(v8, a2);
    static ViewBuilder.buildExpression<A>(_:)();
    v21(v11, a2);
    (*(v6 + 32))(v14, v8, a2);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v22, 1, a2);
  v23 = v27;
  static ViewBuilder.buildIf<A>(_:)(v14, v17);
  v24 = *(v26[0] + 8);
  v24(v14, v12);
  v28 = v23;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v17, v12);
}

uint64_t closure #3 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a8;
  v37 = a7;
  v41 = a9;
  v34 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR);
  v36 = type metadata accessor for Optional();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR, MEMORY[0x1E697DDC8]);
  v16 = type metadata accessor for _VariadicView.Tree();
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v32 - v19;
  v20 = a2;
  v54[0] = a2;
  v54[1] = a3;
  v54[2] = a4;
  v54[3] = a5;
  v54[4] = a6;
  v21 = a6;
  v22 = v37;
  v23 = v38;
  v54[5] = v37;
  v54[6] = v38;
  v24 = v34;
  v54[7] = v34;
  type metadata accessor for ScreenSharingToolbar(0, v54);
  v33 = ScreenSharingToolbar.actionsContainer.getter();
  v54[0] = v33;
  v43 = v20;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = v21;
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = a1;
  v25 = lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout();
  v26 = v36;
  WitnessTable = swift_getWitnessTable();
  v28 = v35;
  Layout.callAsFunction<A>(_:)(partial apply for closure #1 in closure #3 in ScreenSharingToolbar.body.getter, v42, MEMORY[0x1E6981D78], v26, v25, WitnessTable, v35);

  v52 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR, MEMORY[0x1E697DDD0]);
  v53 = WitnessTable;
  swift_getWitnessTable();
  v29 = v39;
  static ViewBuilder.buildExpression<A>(_:)();
  v30 = *(v40 + 8);
  v30(v28, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v30)(v29, v16);
}

uint64_t closure #1 in closure #3 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>, uint64_t a4)
{
  v26[1] = a3;
  v27 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for Optional();
  v26[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = *(a1 + 72);

    v18(v20);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v18, v19);
    static ViewBuilder.buildExpression<A>(_:)();
    v21 = *(v6 + 8);
    v21(v8, a2);
    static ViewBuilder.buildExpression<A>(_:)();
    v21(v11, a2);
    (*(v6 + 32))(v14, v8, a2);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v22, 1, a2);
  v23 = v27;
  static ViewBuilder.buildIf<A>(_:)(v14, v17);
  v24 = *(v26[0] + 8);
  v24(v14, v12);
  v28 = v23;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v17, v12);
}

uint64_t ScreenSharingToolbar.init(toolbarPlacement:title:leadingActions:centerActions:trailingActions:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t ScreenSharingToolbar.init(_:leadingActions:centerActions:trailingActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = swift_getKeyPath();
  *a9 = result;
  *(a9 + 8) = 0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  return result;
}

uint64_t ScreenSharingToolbar.init<>(_:leadingActions:trailingActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_getKeyPath();
  *a7 = result;
  *(a7 + 8) = 0;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

double ScreenSharingToolbar.init<>(_:leadingActions:)()
{
  OUTLINED_FUNCTION_8_53();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_38(KeyPath);
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

double ScreenSharingToolbar.init<>(_:trailingActions:)()
{
  OUTLINED_FUNCTION_8_53();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_38(KeyPath);
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = v1;
  *(v2 + 72) = v0;
  return result;
}

double ScreenSharingToolbar.init<>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ToolbarPlacementKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Edge and conformance Edge();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.toolbarPlacement.getter()
{
  lazy protocol witness table accessor for type ToolbarPlacementKey and conformance ToolbarPlacementKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path getter for EnvironmentValues.toolbarPlacement : EnvironmentValues()
{
  OUTLINED_FUNCTION_11_41();
  result = EnvironmentValues.toolbarPlacement.getter();
  *v0 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarPlacementKey and conformance ToolbarPlacementKey()
{
  result = lazy protocol witness table cache variable for type ToolbarPlacementKey and conformance ToolbarPlacementKey;
  if (!lazy protocol witness table cache variable for type ToolbarPlacementKey and conformance ToolbarPlacementKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarPlacementKey and conformance ToolbarPlacementKey);
  }

  return result;
}

uint64_t (*EnvironmentValues.toolbarPlacement.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = lazy protocol witness table accessor for type ToolbarPlacementKey and conformance ToolbarPlacementKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.toolbarPlacement.modify;
}

uint64_t specialized ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) != 0)
  {
    static Color.black.getter();
  }

  else
  {
    static HierarchicalShapeStyle.primary.getter();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t specialized ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter()
{
  if (*(v0 + *(type metadata accessor for ScreenSharingToolbarTitleButton(0) + 28)) == 1)
  {
    static Color.black.getter();
  }

  else
  {
    static HierarchicalShapeStyle.primary.getter();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24))(a1))
  {
    static Color.black.getter();
  }

  else
  {
    static HierarchicalShapeStyle.primary.getter();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t specialized ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for Material();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0x100) != 0)
  {
    v17[2] = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v19 = a2 & 1;
    v18 = a4 & 1;
    ScreenSharingToolbarIconButton.toolbarPlacement.getter(a1, a2 & 1, a3, a4 & 1);
    v15 = Axis.rawValue.getter();
    if (v15 == Axis.rawValue.getter())
    {
      static Material.thin.getter();
      (*(v12 + 32))(v10, v14, v11);
      *&v10[*(v8 + 36)] = 3;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HierarchicalShapeStyleModifier<Material> and conformance HierarchicalShapeStyleModifier<A>, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMR, MEMORY[0x1E69809C8]);
    }

    else
    {
      v17[3] = static HierarchicalShapeStyle.quaternary.getter();
    }
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t specialized ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMR);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v10 - v2;
  v4 = type metadata accessor for Material();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for ScreenSharingToolbarTitleButton(0) + 28)) == 1)
  {
    v10[2] = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    ScreenSharingToolbarTitleButton.toolbarPlacement.getter();
    v8 = Axis.rawValue.getter();
    if (v8 == Axis.rawValue.getter())
    {
      static Material.thin.getter();
      (*(v5 + 32))(v3, v7, v4);
      *&v3[*(v1 + 36)] = 3;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HierarchicalShapeStyleModifier<Material> and conformance HierarchicalShapeStyleModifier<A>, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMR, MEMORY[0x1E69809C8]);
    }

    else
    {
      v10[3] = static HierarchicalShapeStyle.quaternary.getter();
    }
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for Material();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 24))(a1, a2, v12))
  {
    v17[2] = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    (*(a2 + 16))(a1, a2);
    v15 = Axis.rawValue.getter();
    if (v15 == Axis.rawValue.getter())
    {
      static Material.thin.getter();
      (*(v10 + 32))(v7, v14, v8);
      *&v7[*(v4 + 36)] = 3;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HierarchicalShapeStyleModifier<Material> and conformance HierarchicalShapeStyleModifier<A>, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMR, MEMORY[0x1E69809C8]);
    }

    else
    {
      v17[3] = static HierarchicalShapeStyle.quaternary.getter();
    }
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t ScreenSharingToolbarIconButton.isEnabled.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v8, &dword_1BBC58000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v11[15];
  }

  return a1 & 1;
}

uint64_t ScreenSharingToolbarIconButton.toolbarPlacement.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_1BBC58000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(a3, 0);
    (*(v7 + 8))(v9, v6);
    return v13[15];
  }

  return a3;
}

uint64_t ScreenSharingToolbarIconButton.body(content:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, __int16 a4@<W4>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a5;
  v36 = a1;
  v37 = a2;
  v38 = a4 & 0x100;
  v6 = type metadata accessor for IconOnlyLabelStyle();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMR);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  IconOnlyLabelStyle.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingToolbarIconButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR, MEMORY[0x1E697FDF8]);
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  View.labelStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGMR) + 36)];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v16 = *MEMORY[0x1E69816E0];
  v17 = type metadata accessor for Image.Scale();
  v18 = v14 + v15;
  v19 = v36;
  (*(*(v17 - 8) + 104))(v18, v16, v17);
  *v14 = swift_getKeyPath();
  v20 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGMR) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGMR) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
  static SymbolRenderingMode.monochrome.getter();
  v25 = type metadata accessor for SymbolRenderingMode();
  __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v25);
  *v23 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGMR) + 36)];
  v27 = v44;
  *v26 = v43;
  *(v26 + 1) = v27;
  *(v26 + 2) = v45;
  LOWORD(v7) = v38;
  v28 = v37 & 1;
  v42 = v37 & 1;
  v41 = a4 & 1;
  v29 = v39;
  v30 = specialized ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter(v19, v37 & 1, v39, v38 | a4 & 1u);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMR) + 36)] = v30;
  v42 = v28;
  v41 = a4 & 1;
  v31 = specialized ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter(v19, v28, v29, v7 | a4 & 1u);
  v32 = &v13[*(v11 + 44)];
  *v32 = v31;
  *(v32 + 4) = 256;
  v33 = 1.0;
  if ((a4 & 0x100) == 0)
  {
    v42 = v28;
    v41 = a4 & 1;
    if (ScreenSharingToolbarIconButton.isEnabled.getter(v19, v28))
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.3;
    }
  }

  v34 = v40;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v13, v40, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGAA14_OpacityEffectVGMR);
  *(v34 + *(result + 36)) = v33;
  return result;
}

uint64_t ScreenSharingToolbarTitleButton.isEnabled.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v6, &dword_1BBC58000, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t ScreenSharingToolbarTitleButton.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ScreenSharingToolbarTitleButton(0);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + *(v10 + 20), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of UserInterfaceSizeClass?(v9, a1);
  }

  v12 = static os_log_type_t.fault.getter();
  v13 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v12, &dword_1BBC58000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ScreenSharingToolbarTitleButton.toolbarPlacement.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ScreenSharingToolbarTitleButton(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v7, &dword_1BBC58000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[15];
  }

  return v6;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ScreenSharingToolbarIconButton@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ScreenSharingToolbarIconButton.body(content:)(*v1, *(v1 + 8), *(v1 + 16), v2 | *(v1 + 24), a1);
}

double ScreenSharingToolbarTitleButton.horizontalPadding.getter()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  if (static Platform.current.getter() != 1)
  {
    return 12.0;
  }

  ScreenSharingToolbarTitleButton.horizontalSizeClass.getter(v15);
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v0);
  v16 = *(v4 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v12, &v6[v16], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      return 19.0;
    }

    goto LABEL_7;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v6, v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v1 + 8))(v9, v0);
LABEL_7:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    return 12.0;
  }

  (*(v1 + 32))(v3, &v6[v16], v0);
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v1 + 8);
  v19(v3, v0);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v19(v9, v0);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  result = 19.0;
  if ((v18 & 1) == 0)
  {
    return 12.0;
  }

  return result;
}

uint64_t ScreenSharingToolbarTitleButton.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v49 = type metadata accessor for Font.TextStyle();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TitleOnlyLabelStyle();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMR) - 8;
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v48 - v12;
  TitleOnlyLabelStyle.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingToolbarTitleButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR, MEMORY[0x1E697FDF8]);
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
  View.labelStyle<A>(_:)();
  (*(v9 + 8))(v11, v8);
  v14 = v49;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EF0], v49);
  v15 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v15);
  static Font.Weight.medium.getter();
  v16 = static Font.system(_:design:weight:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v5 + 8))(v7, v14);
  KeyPath = swift_getKeyPath();
  v18 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMR) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  LOBYTE(v16) = static Edge.Set.horizontal.getter();
  v19 = v52;
  ScreenSharingToolbarTitleButton.horizontalPadding.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGMR) + 36)];
  *v28 = v16;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGMR) + 36)];
  v30 = v55;
  *v29 = v54;
  *(v29 + 1) = v30;
  *(v29 + 2) = v56;
  v31 = specialized ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter();
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMR) + 36)] = v31;
  v32 = v19;
  v33 = specialized ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter();
  v34 = &v13[*(v51 + 44)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA16RoundedRectangleVGMR);
  v36 = v34 + *(v35 + 52);
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = *MEMORY[0x1E697F468];
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #15.0 }

  *v36 = _Q0;
  *v34 = v33;
  *(v34 + *(v35 + 56)) = 256;
  v45 = 1.0;
  if ((*(v32 + *(type metadata accessor for ScreenSharingToolbarTitleButton(0) + 28)) & 1) == 0)
  {
    if (ScreenSharingToolbarTitleButton.isEnabled.getter())
    {
      v45 = 1.0;
    }

    else
    {
      v45 = 0.5;
    }
  }

  v46 = v53;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v13, v53, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGAA14_OpacityEffectVGMR);
  *(v46 + *(result + 36)) = v45;
  return result;
}

Swift::Int ScreenSharingToolbarButtonStyle.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScreenSharingToolbarButtonStyle.Style(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ScreenSharingToolbarButtonStyle.Style.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t ScreenSharingToolbarButtonStyle.makeBody(configuration:)@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = HIBYTE(a1) & 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleG033_363C2BAB2838433783BB3D55FB7C9D4CLLVGAGyAkL0mno4IconG0ANLLVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleG033_363C2BAB2838433783BB3D55FB7C9D4CLLVGAGyAkL0mno4IconG0ANLLVG_GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  ButtonStyleConfiguration.label.getter();
  KeyPath = swift_getKeyPath();
  if (v2)
  {
    v17 = swift_getKeyPath();
    v18 = &v8[*(v5 + 36)];
    *v18 = KeyPath;
    v18[8] = 0;
    *(v18 + 2) = v17;
    v18[24] = 0;
    v18[25] = v4;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, v11, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v19 = v8;
    v20 = &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd;
    v21 = &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR;
  }

  else
  {
    v22 = swift_getKeyPath();
    v23 = *(v12 + 36);
    v29[1] = a2;
    v24 = &v15[v23];
    v25 = type metadata accessor for ScreenSharingToolbarTitleButton(0);
    v29[0] = v5;
    *&v24[v25[5]] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
    swift_storeEnumTagMultiPayload();
    v26 = swift_getKeyPath();
    *v24 = KeyPath;
    v24[8] = 0;
    v27 = &v24[v25[6]];
    *v27 = v26;
    v27[8] = 0;
    v24[v25[7]] = v4;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v11, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v19 = v15;
    v20 = &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd;
    v21 = &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, v20, v21);
}

ConversationKit::ScreenSharingToolbarButtonStyle __swiftcall ScreenSharingToolbarButtonStyle.init(style:isSelected:)(ConversationKit::ScreenSharingToolbarButtonStyle::Style style, Swift::Bool isSelected)
{
  if (isSelected)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | style & 1);
}

uint64_t protocol witness for ButtonStyle.makeBody(configuration:) in conformance ScreenSharingToolbarButtonStyle@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ScreenSharingToolbarButtonStyle.makeBody(configuration:)(v2 | *v1, a1);
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues()
{
  OUTLINED_FUNCTION_11_41();
  result = EnvironmentValues.isEnabled.getter();
  *v0 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ScreenSharingToolbarTitleButton and conformance ScreenSharingToolbarTitleButton, type metadata accessor for ScreenSharingToolbarTitleButton, &protocol conformance descriptor for ScreenSharingToolbarTitleButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for ScreenSharingToolbarTitleButton(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScreenSharingToolbarTitleButton;
  if (!type metadata singleton initialization cache for ScreenSharingToolbarTitleButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    lazy protocol witness table accessor for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton()
{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle.Style and conformance ScreenSharingToolbarButtonStyle.Style()
{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle.Style and conformance ScreenSharingToolbarButtonStyle.Style;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle.Style and conformance ScreenSharingToolbarButtonStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle.Style and conformance ScreenSharingToolbarButtonStyle.Style);
  }

  return result;
}

uint64_t type metadata instantiation function for ScreenSharingToolbar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ScreenSharingToolbar(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingToolbar(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingToolbarButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingToolbarButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *storeEnumTagSinglePayload for ScreenSharingToolbarButtonStyle.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton>, ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton>, ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton>, ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleF033_363C2BAB2838433783BB3D55FB7C9D4CLLVGAEyAiJ0lmn4IconF0ALLLVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleF033_363C2BAB2838433783BB3D55FB7C9D4CLLVGAEyAiJ0lmn4IconF0ALLLVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton>, ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata completion function for ScreenSharingToolbarTitleButton(uint64_t a1)
{
  type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<UserInterfaceSizeClass?>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Edge>, MEMORY[0x1E6980D70]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingToolbarIconButton(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingToolbarIconButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ScreenSharingToolbarIconButton(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ScreenSharingToolbarTitleButton(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ScreenSharingToolbarTitleButton and conformance ScreenSharingToolbarTitleButton, type metadata accessor for ScreenSharingToolbarTitleButton, &protocol conformance descriptor for ScreenSharingToolbarTitleButton);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with take of UserInterfaceSizeClass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

unint64_t lazy protocol witness table accessor for type Edge and conformance Edge()
{
  result = lazy protocol witness table cache variable for type Edge and conformance Edge;
  if (!lazy protocol witness table cache variable for type Edge and conformance Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge and conformance Edge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout()
{
  result = lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout;
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout()
{
  result = lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout;
  if (!lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout()
{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA16RoundedRectangleVGMR, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMR, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
    type metadata accessor for TitleOnlyLabelStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingToolbarTitleButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR, MEMORY[0x1E697FDF8]);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA6CircleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA6CircleVGMR, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMR, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR);
    type metadata accessor for IconOnlyLabelStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingToolbarIconButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMR, MEMORY[0x1E697FDF8]);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t PreCallButtonsView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMR);
  Bindable.wrappedValue.getter();
  return v1;
}

void (*PreCallButtonsView.viewModel.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMR);
  v2[4] = Bindable.wrappedValue.modify();
  return ButtonsStackView.viewModel.modify;
}

uint64_t PreCallButtonsView.$viewModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMR);

  return MEMORY[0x1EEDE4B98](v0);
}

uint64_t PreCallButtonsView.init(service:viewModel:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PreCallButtonsViewModel(0);
  lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel(&lazy protocol witness table cache variable for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel, type metadata accessor for PreCallButtonsViewModel, &protocol conformance descriptor for PreCallButtonsViewModel);

  v20 = a2;
  Bindable<A>.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit015CallControlsPreF15ButtonViewModel_pGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit015CallControlsPreF15ButtonViewModel_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v5 = type metadata accessor for CancelConfirmationViewModel();
  swift_allocObject();
  *(inited + 32) = CancelConfirmationViewModel.init()();
  v6 = inited + 32;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for CancelConfirmationViewModel;
  v19 = a1;
  outlined init with copy of IDSLookupManager(a1, &v24);
  v7 = type metadata accessor for DialButtonViewModel();
  swift_allocObject();
  v8 = DialButtonViewModel.init(service:)(&v24);
  *(inited + 96) = v7;
  *(inited + 104) = &protocol witness table for DialButtonViewModel;
  *(inited + 72) = v8;
  v27 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v9 = 0;
  v10 = v27;
  do
  {
    outlined init with copy of IDSLookupManager(v6, v23);
    v21 = v9;
    outlined init with take of TapInteractionHandler(v23, v22);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v11);

    outlined init with copy of IDSLookupManager(v22, v25);
    *&v24 = 761623152;
    *(&v24 + 1) = 0xE400000000000000;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_sSi6offset_15ConversationKit015CallControlsPreD15ButtonViewModel_p7elementtMd, &_sSi6offset_15ConversationKit015CallControlsPreD15ButtonViewModel_p7elementtMR);
    v27 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v10 = v27;
    }

    *(v10 + 16) = v13 + 1;
    v14 = v10 + 56 * v13;
    v15 = v24;
    v16 = v25[0];
    v17 = v25[1];
    *(v14 + 80) = v26;
    *(v14 + 48) = v16;
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    ++v9;
    v6 += 40;
  }

  while (v9 != 2);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();

  __swift_destroy_boxed_opaque_existential_1(v19);
  result = type metadata accessor for PreCallButtonsView(0);
  *(v20 + *(result + 20)) = v10;
  return result;
}

uint64_t PreCallButtonsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMd, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  *v10 = static VerticalAlignment.top.getter();
  *(v10 + 1) = 0x402C000000000000;
  v10[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAA7ForEachVySay15ConversationKit07PreCallD11ModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAIyAIyAA012_ConditionalI0VyARyAA03AnyD0V014CommunicationsB010IconButtonVyytGGARyAWySbGAIyAL0O17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA7_GSgGAA20_TransactionModifierVGSgGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAA7ForEachVySay15ConversationKit07PreCallD11ModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAIyAIyAA012_ConditionalI0VyARyAA03AnyD0V014CommunicationsB010IconButtonVyytGGARyAWySbGAIyAL0O17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA7_GSgGAA20_TransactionModifierVGSgGMR);
  closure #1 in PreCallButtonsView.body.getter(v6, &v10[*(v15 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, _ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  v27 = xmmword_1BC4BAA20;
  *(inited + 16) = xmmword_1BC4BAA20;
  v17 = static Edge.Set.top.getter();
  *(inited + 32) = v17;
  v18 = static Edge.Set.bottom.getter();
  *(inited + 33) = v18;
  v19 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v19 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v19 = Edge.Set.init(rawValue:)();
  }

  static CallControlsMenuView.Constants.verticalPadding.getter();
  EdgeInsets.init(_all:)();
  OUTLINED_FUNCTION_40_1();
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v10, v14, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMd, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMR);
  v20 = &v14[*(v11 + 36)];
  *v20 = v19;
  *(v20 + 1) = v2;
  *(v20 + 2) = v3;
  *(v20 + 3) = v4;
  *(v20 + 4) = v5;
  v20[40] = 0;
  v21 = swift_initStackObject();
  *(v21 + 16) = v27;
  v22 = static Edge.Set.leading.getter();
  *(v21 + 32) = v22;
  v23 = static Edge.Set.trailing.getter();
  *(v21 + 33) = v23;
  v24 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v24 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    v24 = Edge.Set.init(rawValue:)();
  }

  static CallControlsMenuView.Constants.horizontalPadding.getter();
  EdgeInsets.init(_all:)();
  OUTLINED_FUNCTION_40_1();
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v14, a1, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGA14_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGA14_GMR);
  v26 = a1 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v2;
  *(v26 + 16) = v3;
  *(v26 + 24) = v4;
  *(v26 + 32) = v5;
  *(v26 + 40) = 0;
  return result;
}

uint64_t closure #1 in PreCallButtonsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PreCallButtonsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyALyAA03AnyK0V014CommunicationsB010IconButtonVyytGGALyAQySbGACyAF0J17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA1_GSgGAA20_TransactionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyALyAA03AnyK0V014CommunicationsB010IconButtonVyytGGALyAQySbGACyAF0J17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA1_GSgGAA20_TransactionModifierVGMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMR);
  v10 = Bindable.wrappedValue.getter();
  PreCallButtonsViewModel.contextSubject.getter(v10, v11);
  CurrentValueSubject.value.getter();

  v12 = v22;
  if (v22 == 255)
  {
    v19 = 1;
  }

  else
  {
    v13 = v5;
    v14 = a2;
    v15 = v21;
    v21 = *(a1 + *(v4 + 20));
    outlined init with copy of PreCallButtonsView(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v13 + 80) + 25) & ~*(v13 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    a2 = v14;
    *(v17 + 24) = v12 & 1;
    outlined init with take of PreCallButtonsView(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGMd, &_sSay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGSgMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [PreCallViewModelHolder] and conformance [A], &_sSay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGMd, &_sSay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGMR, MEMORY[0x1E69E6338]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?();
    lazy protocol witness table accessor for type PreCallViewModelHolder and conformance PreCallViewModelHolder();
    ForEach<>.init(_:content:)();
    v18 = &v9[*(v7 + 36)];
    *v18 = closure #2 in closure #1 in PreCallButtonsView.body.getter;
    v18[1] = 0;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v9, v14, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyALyAA03AnyK0V014CommunicationsB010IconButtonVyytGGALyAQySbGACyAF0J17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA1_GSgGAA20_TransactionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyALyAA03AnyK0V014CommunicationsB010IconButtonVyytGGALyAQySbGACyAF0J17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA1_GSgGAA20_TransactionModifierVGMR);
    v19 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v19, 1, v7);
}

uint64_t closure #1 in closure #1 in PreCallButtonsView.body.getter@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t x8_0@<X8>)
{
  v12 = a2;
  v13 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMR);
  v5 = Bindable.wrappedValue.getter();
  v7 = PreCallButtonsViewModel.preCallDelegate.getter(v5, v6);
  v9 = v8;

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  PreCallViewModelHolder.build(_:preCallDelegate:)(&v12, v7, v10, x8_0);
  return swift_unknownObjectRelease();
}

uint64_t PreCallViewModelHolder.build(_:preCallDelegate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = swift_allocObject();
  outlined init with copy of IDSLookupManager(v4 + 16, (v13 + 2));
  outlined init with copy of IDSLookupManager((v13 + 2), v41);
  v14 = v42;
  v15 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v39 = v11;
  v40 = v12;
  v16 = (*(v15 + 40))(&v39, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (v16)
  {
    v18 = v13[5];
    v17 = v13[6];
    v19 = __swift_project_boxed_opaque_existential_1(v13 + 2, v18);
    v36 = &v36;
    v37 = a2;
    v20 = *(v18 - 8);
    v21 = MEMORY[0x1EEE9AC00](v19);
    v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = (*(*(v17 + 8) + 8))(v18);
    v25 = a4;
    v27 = v26;
    v29 = v28;
    (*(v20 + 8))(v23, v18);
    CallControlsType.controlView()(v24, v27, v29, v10);
    outlined consume of CallControlsType(v24, v27, v29);
    v30 = swift_allocObject();
    v32 = v37;
    v31 = v38;
    *(v30 + 2) = v13;
    *(v30 + 3) = v32;
    *(v30 + 4) = v31;
    v33 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGMR) + 36)];
    *v33 = partial apply for closure #1 in PreCallViewModelHolder.build(_:preCallDelegate:);
    v33[1] = v30;
    v33[2] = 0;
    v33[3] = 0;
    v34 = &v10[*(v8 + 36)];
    *v34 = 0;
    *(v34 + 1) = 0;
    *(v34 + 2) = partial apply for closure #2 in PreCallViewModelHolder.build(_:preCallDelegate:);
    *(v34 + 3) = v13;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v10, v25, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMR);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v8);
    swift_unknownObjectRetain();
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
  }
}

uint64_t closure #1 in PreCallViewModelHolder.build(_:preCallDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(a1 + 16, v5);
  v7 = *(v6 + 24);
  v8 = swift_unknownObjectRetain();
  v7(v8, a3, v5, v6);
  swift_endAccess();
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(a1 + 16, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(*(v10 + 8) + 16))(v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t closure #2 in PreCallViewModelHolder.build(_:preCallDelegate:)(uint64_t a1)
{
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(a1 + 16, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(*(v3 + 8) + 24))(v2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t type metadata accessor for PreCallButtonsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for PreCallButtonsView;
  if (!type metadata singleton initialization cache for PreCallButtonsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PreCallButtonsView(uint64_t a1)
{
  type metadata accessor for Bindable<PreCallButtonsViewModel>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [PreCallViewModelHolder]();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Bindable<PreCallButtonsViewModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Bindable<PreCallButtonsViewModel>)
  {
    type metadata accessor for PreCallButtonsViewModel(255);
    v1 = type metadata accessor for Bindable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Bindable<PreCallButtonsViewModel>);
    }
  }
}

void type metadata accessor for [PreCallViewModelHolder]()
{
  if (!lazy cache variable for type metadata for [PreCallViewModelHolder])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [PreCallViewModelHolder]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGA14_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGA14_GMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMd, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMR, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of PreCallButtonsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreCallButtonsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PreCallButtonsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreCallButtonsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in PreCallButtonsView.body.getter@<X0>(uint64_t x8_0@<X8>)
{
  type metadata accessor for PreCallButtonsView(0);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  return closure #1 in closure #1 in PreCallButtonsView.body.getter(v4, v5, x8_0);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMR, lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA7AnyViewV014CommunicationsB010IconButtonVyytGGACyAHySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextI0VAA13_OffsetEffectVGGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA7AnyViewV014CommunicationsB010IconButtonVyytGGACyAHySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextI0VAA13_OffsetEffectVGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA13_OffsetEffectVGGMd, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA13_OffsetEffectVGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<Bool> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVySbGMd, &_s16CommunicationsUI10IconButtonVySbGMR, MEMORY[0x1E6995958]);
    lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel(&lazy protocol witness table cache variable for type CallControlTextButton and conformance CallControlTextButton, type metadata accessor for CallControlTextButton, &protocol conformance descriptor for CallControlTextButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreCallViewModelHolder and conformance PreCallViewModelHolder()
{
  result = lazy protocol witness table cache variable for type PreCallViewModelHolder and conformance PreCallViewModelHolder;
  if (!lazy protocol witness table cache variable for type PreCallViewModelHolder and conformance PreCallViewModelHolder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreCallViewModelHolder and conformance PreCallViewModelHolder);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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