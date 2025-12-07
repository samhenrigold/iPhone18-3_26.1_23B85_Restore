Swift::Void __swiftcall InCallControlsCollectionViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - v12;
  v56.receiver = v1;
  v56.super_class = ObjectType;
  objc_msgSendSuper2(&v56, sel_viewDidLoad, v11);
  (*(v5 + 104))(v13, *MEMORY[0x1E69DC238], v3);
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v9, v13, v3);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v5 + 32))(v16 + v15, v9, v3);
  v17 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v18 = @nonobjc UICollectionViewCompositionalLayout.init(sectionProvider:)(partial apply for closure #1 in InCallControlsCollectionViewController.viewDidLoad(), v16);
  v19 = [v1 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_8;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v18 collectionViewLayout:{v22, v24, v26, v28}];
  [v29 setAutoresizingMask_];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = v30;
  v53 = v13;
  [v30 addSubview_];

  if (one-time initialization token for tableViewBackground != -1)
  {
    swift_once();
  }

  v32 = static Colors.InCallControls.tableViewBackground;
  [v29 setBackgroundColor_];

  [v29 setDelegate_];
  v33 = objc_opt_self();
  v34 = v29;
  v35 = [v33 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_14_2();
  v36.super.isa = v35;
  v39 = OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC50E5F0, v37, v38, v36);
  v41 = v40;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v39, v41, v34);
  v42 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
  OUTLINED_FUNCTION_3_5(&v1[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView], v55);
  v43 = *&v1[v42];
  *&v1[v42] = v34;
  v44 = v34;

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy15ConversationKit024InCallControlsCollectionC10ControllerC0lC7SectionO10Foundation4UUIDVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy15ConversationKit024InCallControlsCollectionC10ControllerC0lC7SectionO10Foundation4UUIDVGMR));
  v45 = v44;
  v46 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  InCallControlsCollectionViewController.reallyUpdateDataSource(_:shouldRefreshParticipants:animatingDifferences:)(v46, 0, 0);
  v47 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  OUTLINED_FUNCTION_3_5(&v1[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource], v54);
  v48 = *&v1[v47];
  *&v1[v47] = v46;
  v49 = v46;

  v50 = [v1 view];
  if (v50)
  {
    v51 = v50;
    [v50 setBackgroundColor_];

    (*(v5 + 8))(v53, v3);
    return;
  }

LABEL_9:
  __break(1u);
}

void *closure #1 in InCallControlsCollectionViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v49 = a1;
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICollectionLayoutListConfiguration();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v19 = Strong;
  v43 = v15;
  v20 = v14;
  v21 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v22 = *&v19[v21];
  if (!v22)
  {

    return 0;
  }

  (*(v11 + 16))(v13, a4, v10);
  v23 = v22;
  UICollectionLayoutListConfiguration.init(appearance:)();
  if (one-time initialization token for tableViewBackground != -1)
  {
    swift_once();
  }

  v24 = static Colors.InCallControls.tableViewBackground;
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  v25 = InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(v49);
  v26 = v25;
  v42 = v20;
  if (v25 == 11)
  {
    goto LABEL_6;
  }

  if (InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter(v25) == 0x41746E6572727563 && v29 == 0xEF79746976697463)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
LABEL_6:
      v27 = MEMORY[0x1E69DC290];
      goto LABEL_17;
    }
  }

  v27 = MEMORY[0x1E69DC280];
LABEL_17:
  (*(v44 + 104))(v9, *v27, v7);
  UICollectionLayoutListConfiguration.headerMode.setter();
  if (v26 != 11)
  {
    if (InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter(v26) == 0x545450657661656CLL && v33 == 0xEF6C656E6E616843)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v32 = MEMORY[0x1E69DC270];
    goto LABEL_27;
  }

LABEL_18:
  v32 = MEMORY[0x1E69DC278];
LABEL_27:
  (*(v46 + 104))(v45, *v32, v47);
  UICollectionLayoutListConfiguration.footerMode.setter();
  v36 = [objc_opt_self() tertiaryLabelColor];
  v37 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.color.setter();
  v37(v50, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x1E6995580);
  v28 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v28 contentInsets];
  [v28 setContentInsets_];
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();
  if (v50[0] != 11)
  {
    if (InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter(v50[0]) != 0x656C746974 || v38 != 0xE500000000000000)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  [v28 contentInsets];
  [v28 setContentInsets_];

  (*(v43 + 8))(v17, v42);
  return v28;
}

uint64_t InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!v8)
  {
    return 11;
  }

  v9 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v10 = *(NSDiffableDataSourceSnapshot.sectionIdentifiers.getter() + 16);

  if (v10 <= a1)
  {
    (*(v4 + 8))(v6, v3);

    return 11;
  }

  result = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v12 = *(result + a1 + 32);

    (*(v4 + 8))(v6, v3);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in InCallControlsCollectionViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v134 = a3;
  v135 = a2;
  v133 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v130 = &v123 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v129 = &v123 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v128 = &v123 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v127 = &v123 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v124 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v123 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v126 = &v123 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v123 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v123 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v123 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v123 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v123 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v123 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v123 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v132 = &v123 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGSgMR);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v123 - v44;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    v48 = IndexPath.section.getter();
    v131 = v47;
    switch(InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(v48))
    {
      case 1u:
        goto LABEL_27;
      case 2u:
        if (one-time initialization token for addParticipantRowIdentifier != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for UUID();
        __swift_project_value_buffer(v81, static InCallControlsCollectionViewController.CollectionViewSection.addParticipantRowIdentifier);
        v82 = v134;
        if (static UUID.== infix(_:_:)())
        {
          v83 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_addParticipantCellRegistration;
          v84 = v131;
          swift_beginAccess();
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v84 + v83, v37, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGSgMR);
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMR);
          result = __swift_getEnumTagSinglePayload(v37, 1, v51);
          if (result == 1)
          {
            goto LABEL_65;
          }

          v71 = v132;
          (*(*(v81 - 8) + 16))(v132, v82, v81);
          __swift_storeEnumTagSinglePayload(v71, 0, 1, v81);
          type metadata accessor for InCallControlsAddParticipantCell();
          v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

          goto LABEL_19;
        }

        if (IndexPath.row.getter())
        {
          v110 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participantCellRegistration;
          v111 = v131;
          swift_beginAccess();
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v111 + v110, v31, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGSgMR);
          v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMR);
          result = __swift_getEnumTagSinglePayload(v31, 1, v112);
          if (result == 1)
          {
            goto LABEL_66;
          }

          v113 = v132;
          (*(*(v81 - 8) + 16))(v132, v82, v81);
          __swift_storeEnumTagSinglePayload(v113, 0, 1, v81);
          type metadata accessor for InCallControlsParticipantCell(0);
          v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v113, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*(*(v112 - 8) + 8))(v31, v112);
          return v55;
        }

        v120 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_statusCellRegistration;
        v121 = v131;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v121 + v120, v34, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v34, 1, v51);
        if (result == 1)
        {
          goto LABEL_69;
        }

        v122 = v132;
        (*(*(v81 - 8) + 16))(v132, v82, v81);
        __swift_storeEnumTagSinglePayload(v122, 0, 1, v81);
        type metadata accessor for InCallControlsStatusCell();
        v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v122, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = *(*(v51 - 8) + 8);
        v57 = v34;
        goto LABEL_38;
      case 3u:
        v85 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkCellRegistration;
        v86 = v131;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v86 + v85, v28, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v28, 1, v51);
        if (result == 1)
        {
          goto LABEL_58;
        }

        v87 = type metadata accessor for UUID();
        v88 = v132;
        (*(*(v87 - 8) + 16))(v132, v134, v87);
        __swift_storeEnumTagSinglePayload(v88, 0, 1, v87);
        type metadata accessor for InCallControlsShareLinkCell();
        v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = *(*(v51 - 8) + 8);
        v57 = v28;
        goto LABEL_38;
      case 4u:
        v72 = v131;
        if ((InCallControlsCollectionViewController.isLiveCaptionsAllowed.getter() & 1) == 0)
        {

          return 0;
        }

        v73 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_toggleCaptionsCellRegistration;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v72 + v73, v25, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v25, 1, v51);
        if (result == 1)
        {
          goto LABEL_64;
        }

        v74 = type metadata accessor for UUID();
        v75 = v132;
        (*(*(v74 - 8) + 16))(v132, v134, v74);
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v74);
        type metadata accessor for InCallControlsToggleCaptionsCell(0);
        v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = *(*(v51 - 8) + 8);
        v57 = v25;
        goto LABEL_38;
      case 5u:
        v100 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_ignoreLMIRequestsCellRegistration;
        v101 = v131;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v101 + v100, v22, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v22, 1, v51);
        if (result == 1)
        {
          goto LABEL_60;
        }

        v102 = type metadata accessor for UUID();
        v103 = v132;
        (*(*(v102 - 8) + 16))(v132, v134, v102);
        __swift_storeEnumTagSinglePayload(v103, 0, 1, v102);
        type metadata accessor for InCallControlsIgnoreLMIRequestsCell(0);
        v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = *(*(v51 - 8) + 8);
        v57 = v22;
        goto LABEL_38;
      case 6u:
        v104 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_openMessagesCellRegistration;
        v77 = v131;
        swift_beginAccess();
        v78 = v126;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v77 + v104, v126, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v78, 1, v51);
        if (result == 1)
        {
          goto LABEL_61;
        }

        v105 = type metadata accessor for UUID();
        v80 = v132;
        (*(*(v105 - 8) + 16))(v132, v134, v105);
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v105);
        type metadata accessor for InCallControlsOpenMessagesCell();
        goto LABEL_37;
      case 7u:
        if (one-time initialization token for blockUnkownRowIdentifier != -1)
        {
          swift_once();
        }

        v89 = type metadata accessor for UUID();
        __swift_project_value_buffer(v89, static InCallControlsCollectionViewController.CollectionViewSection.blockUnkownRowIdentifier);
        v90 = v134;
        v91 = static UUID.== infix(_:_:)();
        v92 = v131;
        if (v91)
        {
          v93 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_blockUnknownCallerCellRegistration;
          swift_beginAccess();
          v94 = v92 + v93;
          v95 = v125;
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v94, v125, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMR);
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMR);
          if (__swift_getEnumTagSinglePayload(v95, 1, v45) == 1)
          {
            __break(1u);
LABEL_27:
            v96 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activityCellRegistration;
            v97 = v131;
            swift_beginAccess();
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v97 + v96, v45, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGSgMR);
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMR);
            result = __swift_getEnumTagSinglePayload(v45, 1, v51);
            if (result != 1)
            {
              v98 = type metadata accessor for UUID();
              v99 = v132;
              (*(*(v98 - 8) + 16))(v132, v134, v98);
              __swift_storeEnumTagSinglePayload(v99, 0, 1, v98);
              type metadata accessor for InCallControlsActivityCell();
              v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v56 = *(*(v51 - 8) + 8);
              v57 = v45;
              goto LABEL_38;
            }

LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            return result;
          }
        }

        else
        {
          if (one-time initialization token for reportUnknownRowIdentifier != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v89, static InCallControlsCollectionViewController.CollectionViewSection.reportUnknownRowIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v114 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_reportUnknownCallerCellRegistration;
            swift_beginAccess();
            v115 = v92 + v114;
            v95 = v124;
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v115, v124, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGSgMR);
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMR);
            result = __swift_getEnumTagSinglePayload(v95, 1, v45);
            if (result == 1)
            {
              goto LABEL_67;
            }

            v116 = v132;
            (*(*(v89 - 8) + 16))(v132, v90, v89);
            __swift_storeEnumTagSinglePayload(v116, 0, 1, v89);
            type metadata accessor for InCallControlsReportCell(0);
            goto LABEL_52;
          }

          v117 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_blockUnknownCallerCellRegistration;
          swift_beginAccess();
          v118 = v92 + v117;
          v95 = v123;
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v118, v123, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMR);
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMR);
          result = __swift_getEnumTagSinglePayload(v95, 1, v45);
          if (result == 1)
          {
            goto LABEL_68;
          }
        }

        v116 = v132;
        (*(*(v89 - 8) + 16))(v132, v90, v89);
        __swift_storeEnumTagSinglePayload(v116, 0, 1, v89);
        type metadata accessor for InCallControlsBlockCell(0);
LABEL_52:
        v119 = v95;
        v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (*(*(v45 - 1) + 8))(v119, v45);
        return v55;
      case 8u:
        v108 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_pttTitleCellRegistration;
        v77 = v131;
        swift_beginAccess();
        v78 = v127;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v77 + v108, v127, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v78, 1, v51);
        if (result == 1)
        {
          goto LABEL_63;
        }

        v109 = type metadata accessor for UUID();
        v80 = v132;
        (*(*(v109 - 8) + 16))(v132, v134, v109);
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v109);
        type metadata accessor for InCallControlsPTTTitleCell();
        goto LABEL_37;
      case 9u:
        v76 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_leavePTTChannelCellRegistration;
        v77 = v131;
        swift_beginAccess();
        v78 = v128;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v77 + v76, v128, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v78, 1, v51);
        if (result == 1)
        {
          goto LABEL_56;
        }

        v79 = type metadata accessor for UUID();
        v80 = v132;
        (*(*(v79 - 8) + 16))(v132, v134, v79);
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v79);
        type metadata accessor for InCallControlsPTTLeaveChannelCell(0);
        goto LABEL_37;
      case 0xAu:
        v106 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_openPTTAppCellRegistration;
        v77 = v131;
        swift_beginAccess();
        v78 = v129;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v77 + v106, v129, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v78, 1, v51);
        if (result == 1)
        {
          goto LABEL_62;
        }

        v107 = type metadata accessor for UUID();
        v80 = v132;
        (*(*(v107 - 8) + 16))(v132, v134, v107);
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v107);
        type metadata accessor for InCallControlsPTTOpenAppCell(0);
LABEL_37:
        v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = *(*(v51 - 8) + 8);
        v57 = v78;
        goto LABEL_38;
      case 0xBu:
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v58 = static OS_os_log.conversationKit;
        v59 = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1BC4BAA20;
        v136 = IndexPath.section.getter();
        v61 = String.init<A>(reflecting:)();
        v63 = v62;
        v64 = MEMORY[0x1E69E6158];
        *(v60 + 56) = MEMORY[0x1E69E6158];
        v65 = lazy protocol witness table accessor for type String and conformance String();
        *(v60 + 64) = v65;
        *(v60 + 32) = v61;
        *(v60 + 40) = v63;
        v136 = IndexPath.item.getter();
        v66 = String.init<A>(reflecting:)();
        *(v60 + 96) = v64;
        *(v60 + 104) = v65;
        *(v60 + 72) = v66;
        *(v60 + 80) = v67;
        os_log(_:dso:log:type:_:)("Drawer cell requested for invalid section %@, item %@", 53, 2, &dword_1BBC58000, v58, v59, v60);

        v68 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_fallbackCellRegistration;
        v69 = v131;
        swift_beginAccess();
        v37 = v130;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v69 + v68, v130, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v37, 1, v51);
        if (result == 1)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v70 = type metadata accessor for UUID();
        v71 = v132;
        (*(*(v70 - 8) + 16))(v132, v134, v70);
        __swift_storeEnumTagSinglePayload(v71, 0, 1, v70);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewListCell, 0x1E69DC868);
        v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

LABEL_19:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = *(*(v51 - 8) + 8);
        v57 = v37;
LABEL_38:
        v56(v57, v51);
        return v55;
      default:
        v49 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_titleCellRegistration;
        v50 = v131;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v50 + v49, v40, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGSgMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGSgMR);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMR);
        result = __swift_getEnumTagSinglePayload(v40, 1, v51);
        if (result == 1)
        {
          goto LABEL_57;
        }

        v53 = type metadata accessor for UUID();
        v54 = v132;
        (*(*(v53 - 8) + 16))(v132, v134, v53);
        __swift_storeEnumTagSinglePayload(v54, 0, 1, v53);
        type metadata accessor for InCallControlsTitleCell();
        v55 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = *(*(v51 - 8) + 8);
        v57 = v40;
        goto LABEL_38;
    }
  }

  return 0;
}

uint64_t closure #3 in InCallControlsCollectionViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGSgMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGSgMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-v9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v12 = Strong;
  v13 = IndexPath.section.getter();
  v14 = InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(v13);
  if (v14 == 11)
  {
    goto LABEL_7;
  }

  if (v14 == 9)
  {
    v19 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_leaveChannelFooterViewRegistration;
    swift_beginAccess();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v12 + v19, v7, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGSgMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGSgMR);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMR);
    result = __swift_getEnumTagSinglePayload(v7, 1, v20);
    if (result != 1)
    {
      type metadata accessor for InCallControlsPTTLeaveChannelFooterView();
      v18 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

      (*(*(v20 - 8) + 8))(v7, v20);
      return v18;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v14 != 1)
  {
LABEL_7:

    return 0;
  }

  v15 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_sectionHeaderViewRegistration;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v12 + v15, v10, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGSgMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGSgMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMR);
  result = __swift_getEnumTagSinglePayload(v10, 1, v16);
  if (result != 1)
  {
    type metadata accessor for InCallControlsSectionHeaderView();
    v18 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

    (*(*(v16 - 8) + 8))(v10, v16);
    return v18;
  }

LABEL_13:
  __break(1u);
  return result;
}

void InCallControlsCollectionViewController.blockStatusDidUpdate()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v7 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!v8)
  {
    return;
  }

  v9 = one-time initialization token for conversationKit;
  v2 = v8;
  if (v9 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationKit);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BBC58000, v11, v12, "InCallControlsBlockCell.blockStatusDidUpdate", v13, 2u);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BA940;
  if (one-time initialization token for blockUnkownRowIdentifier != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, static InCallControlsCollectionViewController.CollectionViewSection.blockUnkownRowIdentifier);
  (*(v15 + 16))(v17 + v16, v18, v14);
  InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(v17, v2, 1, specialized _ArrayProtocol.filter(_:), MEMORY[0x1E69DC138]);

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *), void (*a5)(void))
{
  OUTLINED_FUNCTION_55();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  a4(v13, v12);
  a5();

  OUTLINED_FUNCTION_3_0();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v9 + 8))(v12, v7);
}

void InCallControlsCollectionViewController.handleContentSizeCategoryDidChange(_:)()
{
  v1 = v0;
  type metadata accessor for InCallControlsParticipantCell(0);
  static InCallControlsParticipantCell.invalidateCalculatedHeights()();
  v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(&outlined read-only object #0 of InCallControlsCollectionViewController.handleContentSizeCategoryDidChange(_:), v4, 0, specialized _ArrayProtocol.filter(_:), MEMORY[0x1E69DC140]);
  }
}

uint64_t InCallControlsCollectionViewController.configureToggleCaptionsCell(_:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(v1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = InCallControlsCollectionViewController.featureFlags.getter();
  v9 = [v8 videoCallTranslationEnabled];

  if (v9)
  {
    v10 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (v11)
    {
      v12 = [v11 resolvedAudioVideoMode] == 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 2;
  }

  v13 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v7 & 1 | (v12 << 8));
  v14 = *((*v13 & *a1) + 0x88);
  v15 = swift_unknownObjectRetain();
  return v14(v15, &protocol witness table for InCallControlsCollectionViewController);
}

uint64_t InCallControlsCollectionViewController.visibleCollectionViewSections()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = [v3 remoteMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = specialized Set.isEmpty.getter();
  }

  else
  {
    v5 = 1;
  }

  v6 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  swift_beginAccess();
  v7 = MEMORY[0x1E69E7CC0];
  if ((*(v1 + v6) & 0xE0) != 0x40 && (v5 & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = v8;
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1, v8);
      v7 = v58;
    }

    *(v7 + 16) = v10 + 1;
    *(v7 + v10 + 32) = 0;
  }

  v11 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v11, v70, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
  v12 = v70[3];
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
  if (v12)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = v54;
    }

    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1, v7);
      v7 = v55;
    }

    *(v7 + 16) = v14 + 1;
    *(v7 + v14 + 32) = 1;
  }

  if ((*(v1 + v6) & 0xE0) != 0x40)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = v56;
    }

    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1, v7);
      v7 = v57;
    }

    *(v7 + 16) = v16 + 1;
    *(v7 + v16 + 32) = 2;
  }

  v17 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = MEMORY[0x1E69E7D40];
  if (!v18 || (v20 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x380), v21 = v18, LOBYTE(v20) = v20(), v21, (v20 & 1) == 0))
  {
    if (static Platform.current.getter() != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
        v7 = v59;
      }

      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v7);
        v7 = v60;
      }

      *(v7 + 16) = v23 + 1;
      *(v7 + v23 + 32) = 3;
    }

    if (Features.isMoreMenuEnabled.getter() & 1) == 0 && (InCallControlsCollectionViewController.isLiveCaptionsAllowed.getter())
    {
      v24 = *(v1 + v2);
      if (v24)
      {
        v25 = one-time initialization token for shared;
        v26 = v24;
        if (v25 != -1)
        {
          swift_once();
        }

        if (((*((*v19 & *static ConversationCapabilities.shared) + 0x70))() & 1) == 0 || [v26 resolvedAudioVideoMode] == 1 && (v27 = objc_msgSend(v26, sel_remoteMembers), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), static Set._unconditionallyBridgeFromObjectiveC(_:)(), v27, v28 = specialized Set.count.getter(), , v28 <= 1))
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
            v7 = v68;
          }

          v30 = *(v7 + 16);
          v29 = *(v7 + 24);
          if (v30 >= v29 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v7);
            v7 = v69;
          }

          *(v7 + 16) = v30 + 1;
          *(v7 + v30 + 32) = 4;
        }
      }
    }

    if (*(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkEnabled) == 1 && static Platform.current.getter() != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
        v7 = v66;
      }

      v32 = *(v7 + 16);
      v31 = *(v7 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v7);
        v7 = v67;
      }

      *(v7 + 16) = v32 + 1;
      *(v7 + v32 + 32) = 5;
    }
  }

  v33 = *(v1 + v17);
  if (v33)
  {
    v34 = *((*v19 & *v33) + 0x2A0);
    v35 = v33;
    v34();
    v37 = v36;
    ObjectType = swift_getObjectType();
    LOBYTE(v37) = (*(v37 + 128))(ObjectType, v37);
    swift_unknownObjectRelease();
    if (v37)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
        v7 = v61;
      }

      v40 = *(v7 + 16);
      v39 = *(v7 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v7);
        v7 = v62;
      }

      *(v7 + 16) = v40 + 1;
      *(v7 + v40 + 32) = 7;
    }

    v41 = *(v1 + v17);
    if (v41)
    {
      v42 = *((*v19 & *v41) + 0x2A0);
      v43 = v41;
      v42();
      v45 = v44;

      v46 = swift_getObjectType();
      LOBYTE(v43) = (*(v45 + 464))(v46, v45);
      swift_unknownObjectRelease();
      if (v43)
      {

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v7 = v47;
        v49 = *(v47 + 16);
        v48 = *(v47 + 24);
        v50 = v48 >> 1;
        v51 = v49 + 1;
        if (v48 >> 1 <= v49)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v47);
          v7 = v63;
          v48 = *(v63 + 24);
          v50 = v48 >> 1;
        }

        *(v7 + 16) = v51;
        *(v7 + v49 + 32) = 8;
        v52 = v49 + 2;
        if (v50 < (v49 + 2))
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 2, 1, v7);
          v7 = v64;
          v48 = *(v64 + 24);
          v50 = v48 >> 1;
        }

        *(v7 + 16) = v52;
        *(v7 + v51 + 32) = 9;
        if (v50 < (v49 + 3))
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 3, 1, v7);
          v7 = v65;
        }

        *(v7 + 16) = v49 + 3;
        *(v7 + v52 + 32) = 10;
      }
    }
  }

  return v7;
}

uint64_t UUID.init(hash:)(unint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  v6 = bswap64(a1);
  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(&v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  DataProtocol.copyBytes(to:)();

  UUID.init(uuid:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_12();
  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

BOOL specialized Conversation.isInitiatorContact.getter()
{
  type metadata accessor for ReportSpamManager();
  v1 = [v0 initiator];
  static ReportSpamManager.getContact(forHandle:)(v1);
  v3 = v2;

  if (!v3)
  {
    return 0;
  }

  v4 = specialized Array.count.getter();

  return v4 != 0;
}

BOOL specialized Conversation.hasExactlyOneRemoteParticipant.getter()
{
  v1 = [v0 mergedRemoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Set.count.getter();

  if (v2 != 1)
  {
    return 0;
  }

  v3 = [v0 mergedActiveRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Set.count.getter();

  return v4 < 2;
}

uint64_t specialized Conversation.unknownHandles.getter()
{
  v138 = 0;
  v172 = *MEMORY[0x1E69E9840];
  v141 = type metadata accessor for PersonNameComponents();
  v1 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v149 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v129 - v5;
  v7 = [v0 mergedRemoteMembers];
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  v152 = v8;
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = &stru_1BC4BA000;
  v157 = 32;
  if ((v9 & 0xC000000000000001) == 0)
  {
    v66 = *(v9 + 32);
    v16 = ((1 << v66) + 63) >> 6;
    inited = 8 * v16;
    if ((v66 & 0x3Fu) <= 0xD)
    {
      goto LABEL_59;
    }

    goto LABEL_125;
  }

  v150 = MEMORY[0x1E69E7CD0];
  v160 = MEMORY[0x1E69E7CD0];
  v153 = __CocoaSet.makeIterator()();
  v140 = (v1 + 1);
  v151 = xmmword_1BC4BAC30;
LABEL_3:
  v12 = __CocoaSet.Iterator.next()();
  if (!v12)
  {

    v120 = v150;
    goto LABEL_118;
  }

  v161 = v12;
  swift_dynamicCast();
  v13 = v159;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = v151;
  *(inited + 32) = [v13 handle];
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(inited);
  if (one-time initialization token for faceTime != -1)
  {
    swift_once();
  }

  v154 = static ParticipantContactDetailsCache.faceTime;
  i = v15;
  if ((v15 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    inited = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    Set.Iterator.init(_cocoa:)();
    v15 = v167;
    v1 = v168;
    v11 = v169;
    v6 = v170;
    v17 = v171;
  }

  else
  {
    v18 = -1 << *(v15 + 32);
    v1 = (v15 + 56);
    v11 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v15 + 56);

    v6 = 0;
  }

  v155 = v11;
  v21 = (v11 + 64) >> 6;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v6;
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    inited = v15 & 0x7FFFFFFFFFFFFFFFLL;
    v25 = __CocoaSet.Iterator.next()();
    if (!v25 || (v158 = v25, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), swift_dynamicCast(), (v11 = v161) == 0))
    {
LABEL_36:
      outlined consume of Set<TUHandle>.Iterator._Variant(v15);

      v9 = 0;
      v1 = MEMORY[0x1E69E7CC0];
      v161 = MEMORY[0x1E69E7CC0];
      v6 = *(v22 + 16);
LABEL_37:
      v50 = v157 + 56 * v9;
      while (v6 != v9)
      {
        if (v9 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_120;
        }

        ++v9;
        v51 = *(v22 + v50);
        v50 += 56;
        if (v51)
        {
          v52 = v51;
          inited = &v161;
          MEMORY[0x1BFB20CC0]();
          v11 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v161;
          goto LABEL_37;
        }
      }

      v53 = specialized Array.count.getter();

      v1 = v159;
      if (v53)
      {
      }

      else
      {
        v54 = *(v150 + 16);
        if (*(v150 + 24) <= v54)
        {
          specialized _NativeSet.resize(capacity:)(v54 + 1);
        }

        v11 = v160;
        inited = v1;
        v55 = NSObject._rawHashValue(seed:)(*(v160 + 40));
        v56 = v11 + 56;
        v57 = -1 << *(v11 + 32);
        v58 = v55 & ~v57;
        v59 = v58 >> 6;
        if (((-1 << v58) & ~*(v11 + 56 + 8 * (v58 >> 6))) != 0)
        {
          v60 = __clz(__rbit64((-1 << v58) & ~*(v11 + 56 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v61 = 0;
          v62 = (63 - v57) >> 6;
          do
          {
            if (++v59 == v62 && (v61 & 1) != 0)
            {
              goto LABEL_123;
            }

            v63 = v59 == v62;
            if (v59 == v62)
            {
              v59 = 0;
            }

            v61 |= v63;
            v64 = *(v56 + 8 * v59);
          }

          while (v64 == -1);
          v60 = __clz(__rbit64(~v64)) + (v59 << 6);
        }

        *(v56 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        *(*(v11 + 48) + 8 * v60) = v1;
        v65 = *(v11 + 16) + 1;
        v150 = v11;
        *(v11 + 16) = v65;
      }

      goto LABEL_3;
    }

LABEL_22:
    inited = [v11 value];
    if (!inited)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      inited = MEMORY[0x1BFB209B0](v26);
    }

    v27 = [inited destinationIdIsTemporary];

    if (v27)
    {
    }

    else
    {
      ParticipantContactDetailsCache.contactDetails(for:nickname:)();
      v28 = v161;
      v144 = v162;
      v29 = v163;
      v143 = v164;
      v30 = v165;
      v142 = v166;
      v146 = v161;
      v148 = v29;

      v147 = v30;

      PersonNameComponents.init()();
      v145 = v28;
      if (v28)
      {
        v31 = v146;
        v32 = [v146 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v139 = v33;

        PersonNameComponents.givenName.setter();
        v34 = [v31 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        PersonNameComponents.givenName.setter();
      }

      PersonNameComponents.familyName.setter();
      if (one-time initialization token for initials != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v35 = static NSPersonNameComponentsFormatter.initials;
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v37 = [v35 stringFromPersonNameComponents_];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      (*v140)(v149, v141);
      v161 = v38;
      v162 = v40;
      lazy protocol witness table accessor for type String and conformance String();
      inited = StringProtocol.localizedUppercase.getter();
      v42 = v41;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
        v22 = v48;
      }

      v44 = *(v22 + 16);
      v43 = *(v22 + 24);
      v11 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v22);
        v22 = v49;
      }

      *(v22 + 16) = v11;
      v45 = (v22 + 56 * v44);
      v46 = v144;
      v45[4] = v145;
      v45[5] = v46;
      v47 = v143;
      v45[6] = v148;
      v45[7] = v47;
      v45[8] = v147;
      v45[9] = inited;
      v45[10] = v42;
    }
  }

  v23 = v6;
  v24 = v17;
  if (v17)
  {
LABEL_18:
    v17 = (v24 - 1) & v24;
    v11 = *(*(v15 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v11)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v6 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v6 >= v21)
    {
      goto LABEL_36;
    }

    v24 = v1[v6];
    ++v23;
    if (v24)
    {
      goto LABEL_18;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_125:
    v125 = v16;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_59:
    v147 = v6;
    v140 = &v129;
    MEMORY[0x1EEE9AC00](v10);
    v146 = v67;
    v142 = &v129 - ((inited + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v67, v142);
    v143 = 0;
    v6 = 0;
    v68 = *(v9 + 56);
    v145 = v9 + 56;
    v69 = 1 << *(v9 + 32);
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v71 = v70 & v68;
    v144 = (v69 + 63) >> 6;
    v135 = (v1 + 1);
    v151 = *(v11 + 3120);
    v150 = v9;
    while (2)
    {
      if (v71)
      {
        v72 = __clz(__rbit64(v71));
        v153 = (v71 - 1) & v71;
LABEL_70:
        v75 = v72 | (v6 << 6);
        v76 = *(v9 + 48);
        v148 = v75;
        v77 = *(v76 + 8 * v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v78 = swift_initStackObject();
        *(v78 + 16) = v151;
        v152 = v77;
        *(v78 + 32) = [v152 handle];
        v79 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v78);
        if (one-time initialization token for faceTime != -1)
        {
          swift_once();
        }

        v149 = static ParticipantContactDetailsCache.faceTime;
        v155 = v79;
        if ((v79 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
          lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
          Set.Iterator.init(_cocoa:)();
          v79 = v167;
          v80 = v168;
          inited = v169;
          v81 = v170;
          v11 = v171;
        }

        else
        {
          v82 = -1 << *(v79 + 32);
          v80 = v79 + 56;
          inited = ~v82;
          v83 = -v82;
          if (v83 < 64)
          {
            v84 = ~(-1 << v83);
          }

          else
          {
            v84 = -1;
          }

          v11 = v84 & *(v79 + 56);

          v81 = 0;
        }

        v154 = inited;
        v85 = (inited + 64) >> 6;
        v9 = MEMORY[0x1E69E7CC0];
        for (i = v79; ; v79 = i)
        {
          v86 = v81;
          v1 = v11;
          if ((v79 & 0x8000000000000000) == 0)
          {
            break;
          }

          while (1)
          {
            inited = v79 & 0x7FFFFFFFFFFFFFFFLL;
            v90 = __CocoaSet.Iterator.next()();
            if (!v90)
            {
              goto LABEL_103;
            }

            v160 = v90;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
            swift_dynamicCast();
            v89 = v161;
            v81 = v86;
            v11 = v1;
            if (!v161)
            {
              goto LABEL_115;
            }

LABEL_88:
            v91 = [v89 value];
            if (!v91)
            {
              v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v91 = MEMORY[0x1BFB209B0](v92);
            }

            inited = [v91 destinationIdIsTemporary];

            if (!inited)
            {
              break;
            }

            v86 = v81;
            v1 = v11;
            v79 = i;
            if ((i & 0x8000000000000000) == 0)
            {
              goto LABEL_80;
            }
          }

          ParticipantContactDetailsCache.contactDetails(for:nickname:)();
          v93 = v161;
          v133 = v162;
          v94 = v163;
          v132 = v164;
          v95 = v165;
          v131 = v166;
          v136 = v161;
          v139 = v94;

          v137 = v95;

          PersonNameComponents.init()();
          v134 = v93;
          if (v93)
          {
            v96 = v136;
            v97 = [v136 givenName];
            v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            PersonNameComponents.givenName.setter();
            v98 = [v96 familyName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            PersonNameComponents.givenName.setter();
          }

          PersonNameComponents.familyName.setter();
          if (one-time initialization token for initials != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v99 = static NSPersonNameComponentsFormatter.initials;
          v130 = v99;
          v100 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          v101 = [v99 stringFromPersonNameComponents_];

          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;

          (*v135)(v147, v141);
          v161 = v102;
          v162 = v104;
          lazy protocol witness table accessor for type String and conformance String();
          v105 = StringProtocol.localizedUppercase.getter();
          inited = v106;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
            v9 = v112;
          }

          v108 = *(v9 + 16);
          v107 = *(v9 + 24);
          if (v108 >= v107 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v107 > 1, v108 + 1, 1, v9);
            v9 = v113;
          }

          *(v9 + 16) = v108 + 1;
          v109 = (v9 + 56 * v108);
          v110 = v133;
          v109[4] = v134;
          v109[5] = v110;
          v111 = v132;
          v109[6] = v139;
          v109[7] = v111;
          v109[8] = v137;
          v109[9] = v105;
          v109[10] = inited;
        }

LABEL_80:
        v87 = v86;
        v88 = v1;
        v81 = v86;
        if (v1)
        {
LABEL_84:
          v11 = (v88 - 1) & v88;
          v89 = *(*(v79 + 48) + ((v81 << 9) | (8 * __clz(__rbit64(v88)))));
          if (v89)
          {
            goto LABEL_88;
          }

LABEL_115:
          v79 = i;
LABEL_103:
          outlined consume of Set<TUHandle>.Iterator._Variant(v79);

          v114 = 0;
          v1 = MEMORY[0x1E69E7CC0];
          v161 = MEMORY[0x1E69E7CC0];
          v115 = *(v9 + 16);
LABEL_104:
          v116 = v157 + 56 * v114;
          while (v115 != v114)
          {
            if (v114 >= *(v9 + 16))
            {
              goto LABEL_121;
            }

            ++v114;
            v117 = *(v9 + v116);
            v116 += 56;
            if (v117)
            {
              v118 = v117;
              inited = &v161;
              MEMORY[0x1BFB20CC0]();
              v11 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v11 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v1 = v161;
              goto LABEL_104;
            }
          }

          inited = specialized Array.count.getter();

          v9 = v150;
          v71 = v153;
          if (!inited)
          {
            *(v142 + ((v148 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v148;
            if (__OFADD__(v143++, 1))
            {
              __break(1u);
            }
          }

          continue;
        }

        while (1)
        {
          v81 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            goto LABEL_122;
          }

          if (v81 >= v85)
          {
            goto LABEL_103;
          }

          v88 = *(v80 + 8 * v81);
          ++v87;
          if (v88)
          {
            goto LABEL_84;
          }
        }
      }

      break;
    }

    v73 = v6;
    v16 = v146;
    while (1)
    {
      v6 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v6 >= v144)
      {
        specialized _NativeSet.extractSubset(using:count:)(v142, v146, v143, v9);
        v120 = v121;
        goto LABEL_118;
      }

      v74 = *(v145 + 8 * v6);
      ++v73;
      if (v74)
      {
        v72 = __clz(__rbit64(v74));
        v153 = (v74 - 1) & v74;
        goto LABEL_70;
      }
    }
  }

  v126 = swift_slowAlloc();

  v127 = v138;
  v128 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20TUConversationMemberCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So20iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v126, v125, v9, closure #1 in Conversation.unknownHandles.getter, 0);
  v138 = v127;
  if (v127)
  {

    swift_bridgeObjectRelease_n();
    result = MEMORY[0x1BFB23DF0](v126, -1, -1);
    __break(1u);
  }

  else
  {
    v120 = v128;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1BFB23DF0](v126, -1, -1);
LABEL_118:
    specialized Sequence.compactMap<A>(_:)(v120);
    v123 = v122;

    return v123;
  }

  return result;
}

BOOL specialized Conversation.allParticipantsAreUnknownContacts.getter()
{
  v1 = [v0 mergedRemoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v2);
  v4 = v3;

  v5 = *(v4 + 16);

  return v5 == 0;
}

void InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)(uint64_t a1, void *a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27[-v12];
  v28 = a3;
  if (a3)
  {
    v14 = a2;
    v15 = *(NSDiffableDataSourceSnapshot.reconfiguredItemIdentifiers.getter() + 16);

    v16 = v15 != 0;
  }

  else
  {
    v14 = a2;
    v16 = 0;
  }

  v17 = *(v7 + 16);
  v17(v13, a1, v6, v11);
  (v17)(v9, v13, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = v18 + v8;
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  (*(v7 + 32))(v20 + v18, v13, v6);
  *(v20 + v19) = v28 & 1;
  if (v16)
  {
    v21 = *(v7 + 8);
    v22 = v14;
    v21(v9, v6);
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for closure #1 in InCallControlsCollectionViewController.apply(_:to:animatingDifferences:);
    *(v24 + 24) = v20;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_66;
    v25 = _Block_copy(aBlock);

    [v23 animateWithDuration:0 delay:v25 options:0 animations:0.3 completion:0.0];

    _Block_release(v25);
  }

  else
  {
    v26 = v14;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v7 + 8))(v9, v6);
  }
}

_BYTE *InCallControlsCollectionViewController.reconfigure(_:cellIdentifiers:in:animatingDifferences:)(uint64_t a1, void (**a2)(_BYTE *, uint64_t), void *a3, int a4)
{
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMR);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42[-v8];
  v10 = type metadata accessor for Participant(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v42[-v19];
  v57 = MEMORY[0x1E69E7CC0];
  v46 = v9;
  v47 = v7;
  v45 = a3;
  if (a1)
  {
    v53 = a1;
    v20 = *(a1 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v48 = a2;
      v49 = v10;
      rawValue = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v49;
      v23 = v53 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v24 = *(v11 + 72);
      v21 = rawValue;
      v25 = (v55 + 16);
      v52 = v55 + 32;
      v53 = v24;
      v26 = v51;
      do
      {
        v27 = v54;
        _s15ConversationKit11ParticipantVWOcTm_10(v23, v54);
        (*v25)(v26, &v27[v22[5]], v13);
        outlined destroy of Participant.State();
        rawValue = v21;
        v28 = *(v21 + 16);
        if (v28 >= *(v21 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v22 = v49;
          v21 = rawValue;
        }

        *(v21 + 16) = v28 + 1;
        (*(v55 + 32))(v21 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v28, v26, v13);
        v23 += v53;
        --v20;
      }

      while (v20);
      a2 = v48;
    }

    specialized Array.append<A>(contentsOf:)(v21);
  }

  if (a2)
  {

    specialized Array.append<A>(contentsOf:)(v29);
  }

  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v53 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v30 = 0;
  result = v57;
  v54 = *(v57 + 16);
  v52 = v55 + 16;
  v48 = (v55 + 8);
  v49 = (v55 + 32);
  v32._rawValue = MEMORY[0x1E69E7CC0];
  v51 = v57;
LABEL_12:
  while (v30 != v54)
  {
    if (v30 >= *(result + 2))
    {
      __break(1u);
      return result;
    }

    v33 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v34 = *(v55 + 72);
    (*(v55 + 16))(v17, &result[v33 + v34 * v30++], v13);
    v35 = v53 + v33;
    v36 = *(v53 + 16) + 1;
    do
    {
      if (!--v36)
      {
        (*v48)(v17, v13);
        result = v51;
        goto LABEL_12;
      }

      _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v35 += v34;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v37 = *v49;
    (*v49)(v50, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v32._rawValue;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32._rawValue = rawValue;
    }

    v39 = *(v32._rawValue + 2);
    if (v39 >= *(v32._rawValue + 3) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32._rawValue = rawValue;
    }

    *(v32._rawValue + 2) = v39 + 1;
    v37(v32._rawValue + v33 + v39 * v34, v50, v13);
    result = v51;
  }

  if (*(v32._rawValue + 2))
  {
    v41 = v46;
    v40 = v47;
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v32);

    InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)(v41, v45, v43 & 1);
    return (*(v44 + 8))(v41, v40);
  }

  else
  {
    (*(v44 + 8))(v46, v47);
  }
}

id InCallControlsCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id InCallControlsCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InCallControlsCollectionViewController.createSectionHeaderViewRegistration()()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsSectionHeaderView();

  return UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
}

uint64_t InCallControlsCollectionViewController.createActivityCellRegistration()()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0(0);
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for UUID();

  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t InCallControlsCollectionViewController.configureTitleCell(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    v9 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [v5 displayName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *(v2 + v4);
  if (!v10)
  {
LABEL_5:
    v11 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_6;
  }

  v11 = outlined bridged method (ob) of @objc TUConversation.messagesGroupPhotoData.getter(v10);
  v13 = v12;
LABEL_6:
  v14 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  swift_beginAccess();
  v17 = *(v2 + v4);
  v18 = *(v2 + v16);
  v19 = v17;

  InCallControlsTitleCellViewModel.init(groupName:groupPhotoData:participants:mode:linksEnabled:shouldUseGroupHeader:conversation:)(v7, v9, v11, v13, v15, v18, 1, v22, v17);
  InCallControlsTitleCell.configure(with:)(v22);
  outlined destroy of InCallControlsTitleCellViewModel(v22);
  v20 = a1 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
  swift_beginAccess();
  *(v20 + 8) = &protocol witness table for InCallControlsCollectionViewController;
  return swift_unknownObjectWeakAssign();
}

void InCallControlsCollectionViewController.configureStatusCell(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    swift_beginAccess();
    v6 = v5;

    InCallControlsStatusCellViewModel.init(participants:controlsManager:)(v7, v6, v12);
    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x160))(v12);
    v9 = v2 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_menuHostViewController;
    Strong = swift_unknownObjectWeakLoadStrong();
    (*((*v8 & *a1) + 0xC0))(Strong, *(v9 + 8));
    v15 = v12[0];
    outlined destroy of String(&v15);
    v14 = v12[1];
    outlined destroy of String(&v14);
    v11 = v13;
  }
}

uint64_t InCallControlsCollectionViewController.configureAddParticipantCell(_:)(uint64_t a1)
{
  v2 = InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter();
  InCallControlsBaseCell.isEnabled.setter(v2 & 1);
  v3 = a1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_delegate;
  swift_beginAccess();
  *(v3 + 8) = &protocol witness table for InCallControlsCollectionViewController;
  return swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsCollectionViewController.configureLinkLayoutCell(_:)(void *a1)
{
  InCallControlsCollectionViewController.isLinkSharingAllowed.getter();
  v4 = v3;
  v5 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_gridLayoutStyle;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v8[0] = v4 & 1;
  v8[1] = v6;
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v8, v1, &protocol witness table for InCallControlsCollectionViewController);
}

void InCallControlsCollectionViewController.configureIgnoreLMIRequestsCell(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 ignoreLMIRequests];
    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD8))(v7);
    v9 = *((*v8 & *a1) + 0x78);
    v10 = swift_unknownObjectRetain();
    v9(v10, &protocol witness table for InCallControlsCollectionViewController);
  }
}

void closure #7 in InCallControlsCollectionViewController.configureCellRegistrations()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
    v8 = swift_unknownObjectRetain();
    v7(v8, &protocol witness table for InCallControlsCollectionViewController);
  }
}

void InCallControlsCollectionViewController.configureBlockUnknownCallerCell(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    if (specialized Conversation.allParticipantsAreUnknownContacts.getter() && !specialized Conversation.hasExactlyOneRemoteParticipant.getter())
    {
      v7 = 1;
    }

    else
    {
      specialized Conversation.unknownHandles.getter();
      v6 = specialized Array.count.getter();

      if (v6)
      {
        if (specialized Conversation.hasExactlyOneRemoteParticipant.getter())
        {
          v7 = 0;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    if (one-time initialization token for spam != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Logger.spam);
    v9 = v5;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218496;
      *(v15 + 4) = v7;
      *(v15 + 12) = 1024;
      *(v15 + 14) = specialized Conversation.hasSingleUnknownContact.getter();
      *(v15 + 18) = 1024;
      *(v15 + 20) = specialized Conversation.hasExactlyOneRemoteParticipant.getter();

      _os_log_impl(&dword_1BBC58000, v13, v14, "flow: %ld, conversation.hasSingleUnknownContact: %{BOOL}d, conversation.hasExactlyOneRemoteParticipant: %{BOOL}d", v15, 0x18u);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
    }

    else
    {

      v13 = v9;
    }

    v16 = specialized Conversation.unknownHandles.getter();
    v17 = a1 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
    swift_beginAccess();
    *v17 = v16;
    *(v17 + 8) = v7;

    InCallControlsBlockCell.viewModel.didset();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, &static Logger.conversationControls);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Cannot configure block unknown caller cell because conversation is nil", v11, 2u);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }
  }
}

void InCallControlsCollectionViewController.configurePTTTitleCell(_:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2A0);
    v4 = v2;
    v3();
    v6 = v5;
    ObjectType = swift_getObjectType();
    LOBYTE(v6) = (*(v6 + 464))(ObjectType, v6);
    v8 = swift_unknownObjectRelease();
    if (v6)
    {
      (v3)(v8);
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        swift_unknownObjectRetain();
        InCallControlsPTTCallDetailsViewModel.init(pttCall:)(v10, v11);
        InCallControlsPTTTitleCell.configure(with:)(v11);
        outlined destroy of InCallControlsPTTCallDetailsViewModel(v11);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void InCallControlsCollectionViewController.configureLeavePTTChannelCell(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x2A0);
    v8 = v5;
    v7();
    v10 = v9;
    ObjectType = swift_getObjectType();
    LOBYTE(v10) = (*(v10 + 464))(ObjectType, v10);
    v12 = swift_unknownObjectRelease();
    if (v10)
    {
      (v7)(v12);
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        swift_unknownObjectRetain();
        InCallControlsPTTCallDetailsViewModel.init(pttCall:)(v14, v17);
        v15 = (*((*v6 & *a1) + 0xD0))(v17);
        v16 = (*((*v6 & *a1) + 0x70))(v15);
        [v16 addTarget:v2 action:sel_didTapPTTLeaveChannelButton_ forControlEvents:64];

        outlined destroy of InCallControlsPTTCallDetailsViewModel(v17);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void closure #1 in InCallControlsCollectionViewController.configureCellRegistrations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a5(a1);
  }
}

void InCallControlsCollectionViewController.configureOpenPTTAppCell(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x2A0);
    v7 = v4;
    v6();
    v9 = v8;
    ObjectType = swift_getObjectType();
    LOBYTE(v9) = (*(v9 + 464))(ObjectType, v9);
    v11 = swift_unknownObjectRelease();
    if (v9)
    {
      (v6)(v11);
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        swift_unknownObjectRetain();
        InCallControlsPTTCallDetailsViewModel.init(pttCall:)(v13, v14);
        (*((*v5 & *a1) + 0x90))(v14);
        outlined destroy of InCallControlsPTTCallDetailsViewModel(v14);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

BOOL specialized Conversation.hasSingleUnknownContact.getter()
{
  v1 = [v0 mergedRemoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Collection.first.getter(v2);

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAC30;
  v5 = v3;
  *(inited + 32) = [v5 handle];
  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(inited);
  if (one-time initialization token for faceTime != -1)
  {
    swift_once();
  }

  specialized Sequence.compactMap<A>(_:)(v6);
  v8 = v7;

  v9 = *(v8 + 16);

  return v9 == 0;
}

void *closure #1 in InCallControlsCollectionViewController.createSectionHeaderViewRegistration()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
    swift_beginAccess();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v7 + v8, &v10, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    if (v11)
    {
      outlined init with take of TapInteractionHandler(&v10, v12);
      outlined init with copy of IDSLookupManager(v12, &v10);
      v9 = InCallControlsActivitySectionHeaderViewModel.init(activity:)(&v10);
      (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))(v9);

      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v10, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    }
  }

  return result;
}

void closure #1 in InCallControlsCollectionViewController.createActivityCellRegistration()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for InCallControlsActivityCellViewModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
    swift_beginAccess();
    v14 = *&v12[v13];
    if (v14)
    {
      v15 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
      swift_beginAccess();
      outlined init with copy of IDView<AvatarStackView, [UUID]>(&v12[v15], &v29, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
      if (v30)
      {
        outlined init with take of TapInteractionHandler(&v29, v31);
        v16 = MEMORY[0x1E69E7D40];
        v17 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
        v18 = v14;
        v19 = v12;
        v20 = v17(v12, &protocol witness table for InCallControlsCollectionViewController);
        v21 = (*((*v16 & *v18) + 0x2A0))(v20);
        v23 = v22;
        v24 = outlined init with copy of IDSLookupManager(v31, &v29);
        (*((*v16 & *v18) + 0x2F0))(v24);
        v25 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v25);
        v26 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
        swift_beginAccess();
        v27 = *&v19[v26];

        InCallControlsActivityCellViewModel.init(call:activity:localParticipant:participants:)(v21, v23, &v29, v7, v27, v10);
        (*((*v16 & *a1) + 0xB0))(v10);

        outlined destroy of Participant.State();
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v29, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
      }
    }

    else
    {
    }
  }
}

void closure #1 in InCallControlsCollectionViewController.createParticipantCellRegistration()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v63 - v8;
  v10 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v63 - v14;
  v16 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v23 = Strong;
  v65 = a2;
  v66 = v12;
  v67 = a1;
  v24 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  v25 = swift_beginAccess();
  v63 = v24;
  v26 = *&v23[v24];
  MEMORY[0x1EEE9AC00](v25);
  v64 = a3;
  *(&v63 - 2) = a3;

  specialized Sequence.first(where:)(partial apply for closure #1 in closure #4 in ParticipantGridViewController.update(with:animationStyle:forced:), v26, v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    outlined init with take of Participant(v15, v21);
    _s15ConversationKit11ParticipantVWOcTm_10(v21, v18);
    v48 = InCallControlsCollectionViewController.participantSupportsMultiway(_:)(v21);
    v49 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
    swift_beginAccess();
    v50 = v23[v49];
    v51 = InCallControlsCollectionViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
    v52 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
    swift_beginAccess();
    v53 = *&v23[v52];
    if (v53)
    {
      v54 = [v53 link];
      v55 = [v54 originatorHandle];
    }

    else
    {
      v55 = 0;
    }

    v56 = *&v21[*(v16 + 28)];
    if (v56)
    {
      v57 = v56;
      if (!v55)
      {
        v58 = 0;
        goto LABEL_16;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v58 = static NSObject.== infix(_:_:)();
    }

    else
    {
      if (!v55)
      {
        v58 = 1;
        goto LABEL_17;
      }

      v58 = 0;
    }

    v57 = v55;
LABEL_16:

LABEL_17:
    v59 = v48 & 1;
    v60 = v66;
    InCallControlsParticipantCellViewModel.init(participant:supportsMultiway:mode:isLocalMemberAuthorizedToChangeGroupMembership:isLinkOwner:)(v18, v59, v50, v51 & 1, v58 & 1, v66);
    v61 = v67;
    InCallControlsParticipantCell.configure(with:)(v60);
    outlined destroy of Participant.State();
    outlined destroy of Participant.State();
    v62 = v61 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
    swift_beginAccess();
    *(v62 + 8) = &protocol witness table for InCallControlsCollectionViewController;
    swift_unknownObjectWeakAssign();

    return;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.conversationKit;
  v28 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BC4BB980;
  v30 = type metadata accessor for UUID();
  (*(*(v30 - 8) + 16))(v9, v64, v30);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
  specialized >> prefix<A>(_:)(v9, v31, v32, v33, v34, v35, v36, v37, v63, v64, v65, v66, v67, *v68, *&v68[8], *&v68[16], *v69, *&v69[8]);
  v39 = v38;
  v41 = v40;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v43 = lazy protocol witness table accessor for type String and conformance String();
  *(v29 + 64) = v43;
  *(v29 + 32) = v39;
  *(v29 + 40) = v41;
  v70 = IndexPath.item.getter();
  v44 = String.init<A>(reflecting:)();
  *(v29 + 96) = v42;
  *(v29 + 104) = v43;
  *(v29 + 72) = v44;
  *(v29 + 80) = v45;
  v70 = *&v23[v63];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd, &_sSay15ConversationKit11ParticipantVGMR);
  v46 = String.init<A>(reflecting:)();
  *(v29 + 136) = v42;
  *(v29 + 144) = v43;
  *(v29 + 112) = v46;
  *(v29 + 120) = v47;
  os_log(_:dso:log:type:_:)("Unable to find participant with identifier %@ to configure cell at item %@ in %@", 80, 2, &dword_1BBC58000, v27, v28, v29);
}

unint64_t InCallControlsCollectionViewController.participantSupportsMultiway(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_capabilitiesChecker);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 120))();
  v5 = OUTLINED_FUNCTION_24_1();
  v6 = type metadata accessor for Participant(v5);
  v7 = specialized Dictionary.subscript.getter(a1 + *(v6 + 20), v3);

  if (v7 == 2)
  {
    return 0;
  }

  if (v7 == 3)
  {
    return 1;
  }

  return (v7 >> 24) & 1;
}

id InCallControlsCollectionViewController.didTapPTTLeaveChannelButton(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result)
  {
    return [result pttLeaveButtonTappedWithButton_];
  }

  return result;
}

void InCallControlsCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v166 = v7;
  v167 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v158 = v9 - v8;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  v164 = &v148[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v163 = &v148[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v148[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v148[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v148[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v148[-v29];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v148[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v148[-v35];
  v161 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  v162 = v39 - v38;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v5 deselectItemAtIndexPath:isa animated:1];

  v41 = IndexPath._bridgeToObjectiveC()().super.isa;
  v42 = [v5 cellForItemAtIndexPath_];

  if (v42)
  {
    v43 = &v1[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_41_0();
      os_log(_:dso:log:type:_:)(v48);
      goto LABEL_13;
    }

    v155 = Strong;
    v153 = *(v43 + 1);
    v45 = IndexPath.section.getter();
    v154 = v1;
    switch(InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(v45))
    {
      case 1u:
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_41_0();
        os_log(_:dso:log:type:_:)(v53);
        v54 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
        v55 = v154;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(&v55[v54], &v168, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
        if (v169)
        {
          outlined init with take of TapInteractionHandler(&v168, &v170);
          ObjectType = swift_getObjectType();
          v57 = v162;
          outlined init with copy of IDSLookupManager(&v170, v162);
          swift_storeEnumTagMultiPayload();
          v58 = v153;
          v59 = *(v153 + 8);
          v60 = v42;
          v59(v55, v57, v42, ObjectType, v58);
          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_1_127();
          outlined destroy of Participant.State();
          __swift_destroy_boxed_opaque_existential_1(&v170);
        }

        else
        {
          swift_unknownObjectRelease();

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v168, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
        }

        goto LABEL_14;
      case 2u:
        v65 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
        v66 = v154;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v67 = *&v66[v65];
        if (v67)
        {
          v68 = v67;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          v69 = v167;
        }

        else
        {
          OUTLINED_FUNCTION_10_0();
          v69 = v167;
          __swift_storeEnumTagSinglePayload(v90, v91, v92, v167);
        }

        v93 = v163;
        if (one-time initialization token for addParticipantRowIdentifier != -1)
        {
          OUTLINED_FUNCTION_30_28(&one-time initialization token for addParticipantRowIdentifier);
        }

        OUTLINED_FUNCTION_65_12(v69, static InCallControlsCollectionViewController.CollectionViewSection.addParticipantRowIdentifier);
        (*(v166 + 16))(v33);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v69);
        v97 = *(v165 + 48);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v36, v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v98 = v167;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v33, &v93[v97], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_2_83(v93);
        if (v85)
        {
          v99 = OUTLINED_FUNCTION_46();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, v100, &_s10Foundation4UUIDVSgMR);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          OUTLINED_FUNCTION_2_83(&v93[v97]);
          if (v85)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            goto LABEL_55;
          }
        }

        else
        {
          v101 = OUTLINED_FUNCTION_52_14();
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v101, v102, v103, v104);
          OUTLINED_FUNCTION_2_83(&v93[v97]);
          if (!v105)
          {
            v115 = v93;
            v116 = v166;
            v117 = v158;
            (*(v166 + 32))(v158, &v115[v97], v98);
            OUTLINED_FUNCTION_11_75(&lazy protocol witness table cache variable for type UUID and conformance UUID);
            LODWORD(v165) = dispatch thunk of static Equatable.== infix(_:_:)();
            v118 = *(v116 + 8);
            v118(v117, v98);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v118(v30, v98);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            if (v165)
            {
LABEL_55:
              if (one-time initialization token for conversationKit != -1)
              {
                OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
              }

              v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v120 = OUTLINED_FUNCTION_13_12(v119);
              *(v120 + 16) = xmmword_1BC4BA940;
              LOBYTE(v168) = InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter() & 1;
              v121 = String.init<A>(reflecting:)();
              v123 = v122;
              *(v120 + 56) = MEMORY[0x1E69E6158];
              *(v120 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v120 + 32) = v121;
              *(v120 + 40) = v123;
              static os_log_type_t.default.getter();
              OUTLINED_FUNCTION_41_0();
              os_log(_:dso:log:type:_:)(v124);

              if (InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter())
              {
                v125 = type metadata accessor for SpringBoardUtilities();
                v126 = v66;
                specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(v125, v155, v153, v126, v42);
                goto LABEL_14;
              }
            }

LABEL_4:
            swift_unknownObjectRelease();
LABEL_13:

LABEL_14:
            OUTLINED_FUNCTION_30_0();
            return;
          }

          v106 = OUTLINED_FUNCTION_46();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, v107, &_s10Foundation4UUIDVSgMR);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*(v166 + 8))(v30, v98);
        }

        v108 = v93;
        goto LABEL_71;
      case 7u:
        v49 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
        v50 = v154;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v163 = v49;
        v51 = *&v49[v50];
        if (v51)
        {
          v52 = v51;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
        }

        else
        {
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v70, v71, v72, v167);
        }

        if (one-time initialization token for blockUnkownRowIdentifier != -1)
        {
          OUTLINED_FUNCTION_33_29(&one-time initialization token for blockUnkownRowIdentifier);
        }

        v73 = v167;
        OUTLINED_FUNCTION_65_12(v167, static InCallControlsCollectionViewController.CollectionViewSection.blockUnkownRowIdentifier);
        v74 = *(v166 + 16);
        v152 = v166 + 16;
        v151 = v74;
        v74(v24);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v75, v76, v77, v73);
        v78 = v164;
        v79 = *(v165 + 48);
        v80 = &_s10Foundation4UUIDVSgMd;
        v81 = OUTLINED_FUNCTION_52_14();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v81, v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v24, v78 + v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_83_0(v78);
        if (v85)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v78 = v164;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          OUTLINED_FUNCTION_83_0(v78 + v79);
          v83 = v73;
          if (v85)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v84 = v154;
            goto LABEL_73;
          }
        }

        else
        {
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v78, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          OUTLINED_FUNCTION_83_0(v78 + v79);
          if (!v85)
          {
            v109 = v166;
            v110 = v78 + v79;
            v111 = v158;
            (*(v166 + 32))(v158, v110, v73);
            OUTLINED_FUNCTION_11_75(&lazy protocol witness table cache variable for type UUID and conformance UUID);
            v149 = dispatch thunk of static Equatable.== infix(_:_:)();
            v150 = v42;
            v112 = *(v109 + 8);
            v80 = v109 + 8;
            v112(v111, v73);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v113 = OUTLINED_FUNCTION_52_14();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v113, v114, &_s10Foundation4UUIDVSgMR);
            v112(v21, v73);
            v42 = v150;
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v84 = v154;
            v83 = v73;
            v86 = v160;
            if (v149)
            {
              goto LABEL_73;
            }

LABEL_37:
            v87 = *&v163[v84];
            if (v87)
            {
              v88 = v87;
              v89 = v159;
              dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
            }

            else
            {
              v89 = v159;
              OUTLINED_FUNCTION_10_0();
              __swift_storeEnumTagSinglePayload(v127, v128, v129, v83);
            }

            v3 = v157;
            if (one-time initialization token for reportUnknownRowIdentifier != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_65_12(v83, static InCallControlsCollectionViewController.CollectionViewSection.reportUnknownRowIdentifier);
            v151(v86);
            v130 = OUTLINED_FUNCTION_18_9();
            __swift_storeEnumTagSinglePayload(v130, v131, v132, v83);
            v133 = *(v165 + 48);
            v80 = &_s10Foundation4UUIDVSgMd;
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v89, v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v86, v3 + v133, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            OUTLINED_FUNCTION_2_83(v3);
            if (v85)
            {
              v134 = OUTLINED_FUNCTION_309();
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v134, v135, &_s10Foundation4UUIDVSgMR);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              OUTLINED_FUNCTION_2_83(v3 + v133);
              if (v85)
              {
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                goto LABEL_73;
              }
            }

            else
            {
              v136 = v156;
              outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              OUTLINED_FUNCTION_2_83(v3 + v133);
              if (!v137)
              {
                v140 = v166;
                v141 = v3 + v133;
                v142 = v158;
                (*(v166 + 32))(v158, v141, v83);
                OUTLINED_FUNCTION_11_75(&lazy protocol witness table cache variable for type UUID and conformance UUID);
                v80 = dispatch thunk of static Equatable.== infix(_:_:)();
                v143 = *(v140 + 8);
                v143(v142, v83);
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v160, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v159, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v143(v136, v83);
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                if ((v80 & 1) == 0)
                {
                  goto LABEL_4;
                }

LABEL_73:
                swift_getObjectType();
                OUTLINED_FUNCTION_46_18();
                swift_storeEnumTagMultiPayload();
                v144 = v153;
                v145 = *(v153 + 8);
                v146 = v42;
                v145(v84, v3, v42, v80, v144);
                swift_unknownObjectRelease();

                OUTLINED_FUNCTION_1_127();
                outlined destroy of Participant.State();
                goto LABEL_14;
              }

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v160, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              v138 = OUTLINED_FUNCTION_40_2();
              v139(v138);
            }

            v108 = v3;
LABEL_71:
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
            goto LABEL_4;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*(v166 + 8))(v21, v73);
          v83 = v73;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        v84 = v154;
        v86 = v160;
        goto LABEL_37;
      case 0xAu:
        v61 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
        v62 = v154;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v63 = *&v62[v61];
        if (v63)
        {
          v64 = v63;
          ConversationControlsManager.openPTTApp()();
        }

        goto LABEL_4;
      case 0xBu:
        v170 = 0;
        v171 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v170 = 0xD00000000000001BLL;
        v171 = 0x80000001BC50E6C0;
        *&v168 = IndexPath.section.getter();
        v147 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1BFB20B10](v147);

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      default:
        goto LABEL_4;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_30_0();

  os_log(_:dso:log:type:_:)(v46);
}

void InCallControlsCollectionViewController.participantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v23 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v15 = *(v0 + v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v24 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    OUTLINED_FUNCTION_40_3();
    v18 = v15 + v17;
    v22 = *(v2 + 72);
    do
    {
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_10(v18, v6);
      (*(v9 + 16))(v13, v6 + *(v23 + 20), v7);
      OUTLINED_FUNCTION_5_104();
      outlined destroy of Participant.State();
      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v19);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v24 + 16) = v20 + 1;
      OUTLINED_FUNCTION_40_3();
      (*(v9 + 32))(v24 + v21 + *(v9 + 72) * v20, v13, v7);
      v18 += v22;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t InCallControlsCollectionViewController.participantCount.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  OUTLINED_FUNCTION_19_1(a1);
  return *(*(v1 + v2) + 16);
}

void (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance InCallControlsCollectionViewController(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participantsViewControllerDelegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

void InCallControlsCollectionViewController.inCallControlsParticipantCell(_:didTapAction:for:)()
{
  OUTLINED_FUNCTION_29();
  v50 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = v6;
    v45 = v0;
    v46 = v5;
    v47 = v10;
    v43 = *(v15 + 8);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v49 = static OS_os_log.conversationKit;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = OUTLINED_FUNCTION_54(v16);
    *(v17 + 16) = xmmword_1BC4BAA20;
    HIBYTE(v51) = v3;
    v18 = String.init<A>(reflecting:)();
    v48 = v3;
    v20 = v19;
    v21 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v22 = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 64) = v22;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v23 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    v25 = *(v24 + 16);
    v25(v14, v50, v23);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v23);
    specialized >> prefix<A>(_:)(v14, v29, v30, v31, v32, v33, v34, v35, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    v37 = v36;
    v39 = v38;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *(v17 + 96) = v21;
    *(v17 + 104) = v22;
    *(v17 + 72) = v37;
    *(v17 + 80) = v39;
    v40 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("User tapped to %@ participant with identifier %@", 48, 2, &dword_1BBC58000, v49, v40, v17);

    switch(v48)
    {
      case 4:
        swift_unknownObjectRelease();
        break;
      default:
        swift_getObjectType();
        v42 = OUTLINED_FUNCTION_13_58();
        (v25)(v42);
        OUTLINED_FUNCTION_72_11();
        swift_storeEnumTagMultiPayload();
        (*(v43 + 8))(v45, v21, v46, v39);
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_1_127();
        outlined destroy of Participant.State();
        break;
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v41);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t InCallControlsCollectionViewController.inCallControlsActivityCell(_:didTap:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsCollectionViewController.Action(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v8 = static OS_os_log.conversationKit;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("User tapped view activity", 25, 2, &dword_1BBC58000, v8, v9, MEMORY[0x1E69E7CC0]);
    swift_getObjectType();
    outlined init with copy of IDSLookupManager(a2, v7);
    OUTLINED_FUNCTION_62_0();
    swift_storeEnumTagMultiPayload();
    v10 = OUTLINED_FUNCTION_27_36();
    v11(v10);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_127();
    return outlined destroy of Participant.State();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)(v13);
  }
}

uint64_t InCallControlsCollectionViewController.inCallControlsTitleCell(_:didTap:from:)(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  if (a2 - 2 >= 3)
  {
    if (a2)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v8 = static OS_os_log.conversationKit;
      v9 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("User tapped the share-link button", 33, 2, &dword_1BBC58000, v8, v9, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_29_6();
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v6 = static OS_os_log.conversationKit;
      v7 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("User tapped launch messages conversation", 40, 2, &dword_1BBC58000, v6, v7, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_29_6();
    }

    swift_storeEnumTagMultiPayload();
    InCallControlsCollectionViewController.inCallControlsTitleCellDidTapButton(_:_:)();
    OUTLINED_FUNCTION_1_127();
    return outlined destroy of Participant.State();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();

    return os_log(_:dso:log:type:_:)(v4);
  }
}

uint64_t InCallControlsCollectionViewController.inCallControlsTitleCellDidTapButton(_:_:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v0 = OUTLINED_FUNCTION_27_36();
    v1(v0);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)(v3);
  }
}

void InCallControlsCollectionViewController.inCallControlsBaseCellDidTapButton(_:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsAddParticipantCell();
  if (swift_dynamicCastClass())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v3 = OUTLINED_FUNCTION_13_12(v2);
    *(v3 + 16) = xmmword_1BC4BA940;
    InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter();
    v4 = String.init<A>(reflecting:)();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_45_19();
    os_log(_:dso:log:type:_:)(v7);

    v8 = &v1[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *(v8 + 1);
      if (InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter())
      {
        v12 = type metadata accessor for SpringBoardUtilities();
        specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(v12, v10, v11, v1, v0);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_45_19();
      os_log(_:dso:log:type:_:)(v13);
    }
  }
}

void InCallControlsCollectionViewController.idsCapabilitiesChecker(_:didUpdate:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = v3;
    if ([v1 isViewLoaded])
    {

      v6 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_ShyAFGTt0g5(v5);
      InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(v6, v4, 1, specialized _ArrayProtocol.filter(_:), MEMORY[0x1E69DC138]);
    }

    else
    {
    }
  }
}

uint64_t InCallControlsCollectionViewController.inCallControlsDidToggleIgnoreLMIRequestsCell(_:)()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsCollectionViewController.Action(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_62_0();
    swift_storeEnumTagMultiPayload();
    v2 = OUTLINED_FUNCTION_27_36();
    v3(v2);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_127();
    return outlined destroy of Participant.State();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)(v5);
  }
}

void InCallControlsCollectionViewController.inCallControlsDidToggleCaptionsCell(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = &v0[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v15);
    goto LABEL_15;
  }

  v6 = Strong;
  v7 = *(v4 + 1);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v0;
  v8[5] = v2;
  v9 = one-time initialization token for shared;
  v10 = v2;
  v11 = v0;
  swift_unknownObjectRetain();
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v12 + 728))())
  {
    goto LABEL_8;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*((*MEMORY[0x1E69E7D40] & *static ConversationCapabilities.shared) + 0x50))())
  {
LABEL_8:
    swift_getObjectType();
    swift_storeEnumTagMultiPayload();
    v13 = OUTLINED_FUNCTION_40_2();
    v14(v13);
    OUTLINED_FUNCTION_1_127();
    outlined destroy of Participant.State();
    InCallControlsCollectionViewController.configureToggleCaptionsCell(_:)(v10);
LABEL_14:

    swift_unknownObjectRelease();
LABEL_15:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v16 = objc_opt_self();
  v17 = [v16 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v18.super.isa = v17;
  v40 = OUTLINED_FUNCTION_17_0(0xD00000000000001FLL, 0x80000001BC50EAD0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v18);
  v20 = v19;

  v21 = MEMORY[0x1BFB209B0](0xD000000000000021, 0x80000001BC50EAF0);
  v22 = TUStringKeyForProduct();

  if (v22)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = [v16 conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_24_3();
    v24.super.isa = v23;
    v28 = OUTLINED_FUNCTION_17_0(v25, v26, v27, 0xEF74694B6E6F6974, v24);
    v30 = v29;

    v31 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v40, v20, v28, v30, 1);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
    v32 = [v16 conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_14_2();
    v33.super.isa = v32;
    OUTLINED_FUNCTION_17_0(v34, v35, v36, v37, v33);

    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for closure #1 in InCallControlsCollectionViewController.inCallControlsDidToggleCaptionsCell(_:);
    *(v38 + 24) = v8;

    v39 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
    [v31 addAction_];
    [v11 presentViewController:v31 animated:1 completion:0];

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t closure #1 in InCallControlsCollectionViewController.inCallControlsDidToggleCaptionsCell(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  swift_storeEnumTagMultiPayload();
  (*(a2 + 8))(a3, v9, a4, ObjectType, a2);
  outlined destroy of Participant.State();
  return InCallControlsCollectionViewController.configureToggleCaptionsCell(_:)(a4);
}

uint64_t closure #2 in InCallControlsCollectionViewController.inCallControlsDidToggleCaptionsCell(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = (*(*static Defaults.shared + 736))(1);
  return a2(v3);
}

uint64_t InCallControlsCollectionViewController.shareLinkCell(cell:tappedCopyLinkButton:)(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, char *, void *))
{
  v10 = &v5[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(v10 + 1);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v14 = static OS_os_log.conversationKit;
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)(a3, a4, 2, &dword_1BBC58000, v14, v15, MEMORY[0x1E69E7CC0]);
    v16 = type metadata accessor for SpringBoardUtilities();
    return a5(v16, v12, v13, v5, a1);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)(v18);
  }
}

void closure #1 in InCallControlsCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if (v7)
  {
    ObjectType = swift_getObjectType();
    swift_storeEnumTagMultiPayload();
    (*(v5 + 8))(v3, v11, v1, ObjectType, v5);
    OUTLINED_FUNCTION_1_127();
    outlined destroy of Participant.State();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_30_0();

    os_log(_:dso:log:type:_:)(v13);
  }
}

BOOL closure #1 in Conversation.unknownHandles.getter(void **a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAC30;
  *(inited + 32) = [v1 handle];
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(inited);
  if (one-time initialization token for faceTime != -1)
  {
LABEL_12:
    swift_once();
  }

  specialized Sequence.compactMap<A>(_:)(v3);
  v5 = v4;

  v6 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
LABEL_3:
  v8 = 56 * v6 + 32;
  while (v7 != v6)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    ++v6;
    v9 = *(v5 + v8);
    v8 += 56;
    if (v9)
    {
      v10 = v9;
      MEMORY[0x1BFB20CC0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v13;
      goto LABEL_3;
    }
  }

  v11 = specialized Array.count.getter();

  return v11 == 0;
}

void *partial apply for closure #1 in InCallControlsCollectionViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_55();
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return closure #1 in InCallControlsCollectionViewController.viewDidLoad()(v2, v0, v5, v6);
}

uint64_t outlined bridged method (ob) of @objc TUConversation.messagesGroupPhotoData.getter(void *a1)
{
  v2 = [a1 messagesGroupPhotoData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_5(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection()
{
  result = lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection;
  if (!lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection;
  if (!lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection);
  }

  return result;
}

void type metadata completion function for InCallControlsCollectionViewController(uint64_t a1)
{
  type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsActivityCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsTitleCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsStatusCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsParticipantCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsAddParticipantCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsShareLinkCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsIgnoreLMIRequestsCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMR);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsToggleCaptionsCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMR);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<UICollectionViewListCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMR);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsOpenMessagesCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMR);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsBlockCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMR);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsReportCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMR);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsPTTTitleCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMR);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsPTTLeaveChannelCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMR);
                              if (v15 <= 0x3F)
                              {
                                type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.SupplementaryRegistration<InCallControlsPTTLeaveChannelFooterView>?, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMR);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsPTTOpenAppCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMR);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_updateClassMetadata2();
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
        }
      }
    }
  }
}

void type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_170();
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InCallControlsCollectionViewController.CollectionViewSection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for InCallControlsCollectionViewController.Action(uint64_t a1)
{
  result = type metadata accessor for Activity();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for Activity()
{
  result = lazy cache variable for type metadata for Activity;
  if (!lazy cache variable for type metadata for Activity)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Activity);
  }

  return result;
}

uint64_t partial apply for closure #1 in InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMR);
  OUTLINED_FUNCTION_9_0(v1);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v6 = *(v5 + *(v3 + 64));

  return closure #1 in InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)(v4, v5, v6);
}

uint64_t TranscriptionView.init(viewModel:positionalData:lowConfidenceText:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0x10000;
  v8 = type metadata accessor for TranscriptionView(0);
  v9 = v8[6];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TranscriptionViewModel(0);
  OUTLINED_FUNCTION_3_121();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(v10, v11, &protocol conformance descriptor for TranscriptionViewModel);

  *(a4 + 8) = ObservedObject.init(wrappedValue:)();
  *(a4 + 16) = v12;
  *(a4 + v8[7]) = a1;
  v13 = (a4 + v8[8]);
  *v13 = a2;
  v13[1] = a3;

  v14 = TranscriptionView.font.getter();
  [(objc_class *)v14 pointSize];
  v16 = v15;

  v17 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  OUTLINED_FUNCTION_27_37(v18);
  *(a1 + v17) = v16 + v16;
  PositionalData.updateBottomVisibility()();
}

uint64_t type metadata accessor for TranscriptionView(uint64_t a1)
{
  result = type metadata singleton initialization cache for TranscriptionView;
  if (!type metadata singleton initialization cache for TranscriptionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Class TranscriptionView.font.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v3 = [v2 LVMEverywhere];

  type metadata accessor for UIFont();
  v4 = MEMORY[0x1E69DDDB8];
  if (v3)
  {
    v4 = MEMORY[0x1E69DDD08];
  }

  v5 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*v4, 0, 1);
  isa = UIFont.withTraits(_:)(*v1).super.isa;

  return isa;
}

void one-time initialization function for someoneIsLeavingAMessage()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC50F190;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static TranscriptionView.Strings.someoneIsLeavingAMessage = v4;
}

__int128 *TranscriptionView.Strings.someoneIsLeavingAMessage.unsafeMutableAddressor()
{
  if (one-time initialization token for someoneIsLeavingAMessage != -1)
  {
    OUTLINED_FUNCTION_11_76(&one-time initialization token for someoneIsLeavingAMessage);
  }

  return &static TranscriptionView.Strings.someoneIsLeavingAMessage;
}

void one-time initialization function for someoneIsLeavingAMessageFormat()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC50F150;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static TranscriptionView.Strings.someoneIsLeavingAMessageFormat = v4;
}

__int128 *TranscriptionView.Strings.someoneIsLeavingAMessageFormat.unsafeMutableAddressor()
{
  if (one-time initialization token for someoneIsLeavingAMessageFormat != -1)
  {
    swift_once();
  }

  return &static TranscriptionView.Strings.someoneIsLeavingAMessageFormat;
}

uint64_t static TranscriptionView.Strings.someoneIsLeavingAMessage.getter(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;

  return v5;
}

double TranscriptionView.textSize.getter()
{
  v0 = TranscriptionView.font.getter();
  [(objc_class *)v0 pointSize];
  v2 = v1;

  return v2;
}

void TranscriptionView.redactionReasons.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30();
  v23 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OUTLINED_FUNCTION_43_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  type metadata accessor for TranscriptionView(0);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for RedactionReasons();
    OUTLINED_FUNCTION_7_0();
    (*(v34 + 32))(v20, v33);
  }

  else
  {
    v35 = static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v35, &dword_1BBC58000, v36, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v25 + 8))(v28, v23);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t TranscriptionView.showTranscript.getter()
{
  if (TranscriptionViewModel.state.getter() == 1 && (type metadata accessor for Defaults(), swift_allocObject(), v0 = Defaults.init()(), v1 = (*(*v0 + 248))(v0), , (v1) || TranscriptionViewModel.state.getter() == 2 || TranscriptionViewModel.state.getter() == 3) && (TranscriptionView.hidePrivacySensitiveContent.getter() & 1) == 0)
  {
    v2 = TranscriptionViewModel.isGibberish.getter() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t TranscriptionView.showWaiting.getter(uint64_t a1)
{
  if (TranscriptionViewModel.state.getter() == 1 || (v1 = *(TranscriptionViewModel.captions.getter() + 16), , !v1))
  {
    type metadata accessor for Defaults();
    swift_allocObject();
    v3 = Defaults.init()();
    v4 = (*(*v3 + 248))(v3);

    v2 = v4 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t TranscriptionView.viewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void TranscriptionView.$viewModel.getter()
{
  type metadata accessor for TranscriptionViewModel(0);
  OUTLINED_FUNCTION_3_121();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(v0, v1, &protocol conformance descriptor for TranscriptionViewModel);
  OUTLINED_FUNCTION_46();

  JUMPOUT(0x1BFB1E3A0);
}

uint64_t TranscriptionView.transcriptView.getter()
{
  v2 = OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for TranscriptionView(v2);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  outlined init with copy of TranscriptionView(v1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_9_75();
  result = outlined init with take of TranscriptionView();
  *v0 = partial apply for closure #1 in TranscriptionView.transcriptView.getter;
  v0[1] = v5;
  return result;
}

uint64_t closure #1 in TranscriptionView.transcriptView.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptionView(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = type metadata accessor for TranscriptionViewModel(0);
  v10 = _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel, type metadata accessor for TranscriptionViewModel, &protocol conformance descriptor for TranscriptionViewModel);
  MEMORY[0x1BFB1E3A0](v7, v8, v9, v10);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v11 = v20;
  v19 = v21;
  v12 = TranscriptionView.font.getter();
  [(objc_class *)v12 pointSize];
  v14 = v13;

  v15 = *(a1 + *(v5 + 36));
  outlined init with copy of TranscriptionView(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  outlined init with take of TranscriptionView();
  outlined init with copy of TranscriptionView(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  outlined init with take of TranscriptionView();
  *a2 = v11;
  *(a2 + 8) = v19;
  *(a2 + 24) = v14 * 0.8;
  *(a2 + 32) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = partial apply for closure #1 in closure #1 in TranscriptionView.transcriptView.getter;
  *(a2 + 56) = v16;
  *(a2 + 64) = partial apply for closure #2 in closure #1 in TranscriptionView.transcriptView.getter;
  *(a2 + 72) = v17;
  *(a2 + 80) = specialized implicit closure #2 in implicit closure #1 in variable initialization expression of AutoScrollingList._autoScrollViewModel;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
}

void TranscriptionView.captionRow(caption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = OUTLINED_FUNCTION_30();
  v26 = type metadata accessor for ScreeningTranscriptLabel(v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = TranscriptionView.font.getter();
  v31 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v32 = (v24 + *(v31 + 28));
  v34 = *v32;
  v33 = v32[1];
  v35 = (v20 + *(type metadata accessor for TranscriptionView(0) + 32));
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v24 + *(v31 + 36));
  *v29 = v30;
  v29[1] = v34;
  v29[2] = v33;
  v29[3] = v36;
  v29[4] = v37;
  v29[5] = v38;

  static Color.white.getter();
  v39 = Color.opacity(_:)();

  v29[6] = v39;
  v40 = *(v26 + 36);
  *(v29 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v41 = *(v26 + 40);
  *(v29 + v41) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_80();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(v42, v43, &protocol conformance descriptor for ScreeningTranscriptLabel);
  View.privacySensitive(_:)();
  outlined destroy of ScreeningTranscriptLabel(v29);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #2 in closure #1 in TranscriptionView.transcriptView.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVy15ConversationKit018LiveVoicemailIntroE0V_AA15ModifiedContentVyAF24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVy15ConversationKit018LiveVoicemailIntroE0V_AA15ModifiedContentVyAF24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v12 - v4);
  type metadata accessor for Defaults();
  swift_allocObject();
  v6 = Defaults.init()();
  v7 = (*(*v6 + 248))(v6);

  if (v7)
  {
    v8 = static HorizontalAlignment.center.getter();
    v9 = static VerticalAlignment.lastTextBaseline.getter();
    *v5 = v8;
    v5[1] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy15ConversationKit018LiveVoicemailIntroD0V_AA15ModifiedContentVyAJ24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy15ConversationKit018LiveVoicemailIntroD0V_AA15ModifiedContentVyAJ24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGMR);
    closure #1 in closure #2 in closure #1 in TranscriptionView.transcriptView.getter((v5 + *(v10 + 44)));
    outlined init with take of CaptionSectioner.SpeakerSection?();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v3);
  }
}

uint64_t closure #1 in closure #2 in closure #1 in TranscriptionView.transcriptView.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMR);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - v7);
  type metadata accessor for TranscriptionViewModel(0);
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel, type metadata accessor for TranscriptionViewModel, &protocol conformance descriptor for TranscriptionViewModel);

  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;
  *v8 = TranscriptionView.font.getter();
  v8[1] = 0x7974706D65;
  v8[2] = 0xE500000000000000;
  v8[3] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v8[4] = 0xE000000000000000;
  v8[5] = v12;
  static Color.white.getter();
  v13 = Color.opacity(_:)();

  v8[6] = v13;
  v14 = type metadata accessor for ScreeningTranscriptLabel(0);
  v15 = *(v14 + 36);
  *(v8 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 40);
  *(v8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v3 + 44)) = 0;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  *a1 = v9;
  a1[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22LiveVoicemailIntroViewV_7SwiftUI15ModifiedContentVyAA24ScreeningTranscriptLabelVAD14_OpacityEffectVGtMd, &_s15ConversationKit22LiveVoicemailIntroViewV_7SwiftUI15ModifiedContentVyAA24ScreeningTranscriptLabelVAD14_OpacityEffectVGtMR);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMR);
}

uint64_t TranscriptionView.positionalData.getter()
{
  type metadata accessor for TranscriptionView(0);
}

uint64_t TranscriptionView.lowConfidenceText.getter()
{
  type metadata accessor for TranscriptionView(0);

  return OUTLINED_FUNCTION_46();
}

void TranscriptionView.body.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for TranscriptionView(v2);
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5];
  *v6 = static Alignment.bottomLeading.getter();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAKyAKyAKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA010_FlexFrameG0VGAOyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeU0VGGAOyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverO0VGAA08_PaddingG0VGAA14GeometryReaderVyA14_17AutoScrollingListVyAA0F0VyAA05TupleD0VyA14_018LiveVoicemailIntroD0V_AKyA14_24ScreeningTranscriptLabelVA12_GtGGSayA14_013TranscriptionD5ModelC7CaptionVGA39_AA0D0PAAE16privacySensitiveyQrSbFQOyA32__Qo_GGGAKyAA6VStackVyA28_yAIyA17_A17_G_A17_SgtGGA19_GGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAKyAKyAKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA010_FlexFrameG0VGAOyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeU0VGGAOyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverO0VGAA08_PaddingG0VGAA14GeometryReaderVyA14_17AutoScrollingListVyAA0F0VyAA05TupleD0VyA14_018LiveVoicemailIntroD0V_AKyA14_24ScreeningTranscriptLabelVA12_GtGGSayA14_013TranscriptionD5ModelC7CaptionVGA39_AA0D0PAAE16privacySensitiveyQrSbFQOyA32__Qo_GGGAKyAA6VStackVyA28_yAIyA17_A17_G_A17_SgtGGA19_GGGMR);
  closure #1 in TranscriptionView.body.getter(v1, v6 + *(v8 + 44));
  v9 = OUTLINED_FUNCTION_43_0();
  outlined init with copy of TranscriptionView(v9, v10);
  swift_allocObject();
  OUTLINED_FUNCTION_9_75();
  outlined init with take of TranscriptionView();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>>, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritin, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMR, MEMORY[0x1E6981880]);
  View.onTapGesture(count:perform:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMR);
  static Alignment.bottomLeading.getter();
  OUTLINED_FUNCTION_21_42();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA012_ConditionalD0VyALyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA16_FlexFrameLayoutVGAPyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeX0VGGAPyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverQ0VGAA08_PaddingU0VGAA14GeometryReaderVyA15_17AutoScrollingListVyAJyAA05TupleE0VyA15_018LiveVoicemailIntroE0V_ACyA15_24ScreeningTranscriptLabelVA13_GtGGSayA15_013TranscriptionE5ModelC7CaptionVGA38_AeAE16privacySensitiveyQrSbFQOyA31__Qo_GGGACyAA6VStackVyA27_yALyA18_A18_G_A18_SgtGGA20_GGG_Qo_AVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA012_ConditionalD0VyALyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA16_FlexFrameLayoutVGAPyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeX0VGGAPyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverQ0VGAA08_PaddingU0VGAA14GeometryReaderVyA15_17AutoScrollingListVyAJyAA05TupleE0VyA15_018LiveVoicemailIntroE0V_ACyA15_24ScreeningTranscriptLabelVA13_GtGGSayA15_013TranscriptionE5ModelC7CaptionVGA38_AeAE16privacySensitiveyQrSbFQOyA31__Qo_GGGACyAA6VStackVyA27_yALyA18_A18_G_A18_SgtGGA20_GGG_Qo_AVGMR);
  memcpy((v0 + *(v12 + 36)), v13, 0x70uLL);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in TranscriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAA016_ForegroundStyleM0VyAA017HierarchicalShapeT0VGGAMyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverM0VGA15_G_A15_SgtGGAA08_PaddingQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAA016_ForegroundStyleM0VyAA017HierarchicalShapeT0VGGAMyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverM0VGA15_G_A15_SgtGGAA08_PaddingQ0VGMR);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v36 - v3;
  v5 = type metadata accessor for TranscriptionView(0);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA35_AA4ViewPAAE16privacySensitiveyQrSbFQOyA28__Qo_GGGAGyAA6VStackVyA24_yACyA13_A13_G_A13_SgtGGA15_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA35_AA4ViewPAAE16privacySensitiveyQrSbFQOyA28__Qo_GGGAGyAA6VStackVyA24_yACyA13_A13_G_A13_SgtGGA15_G_GMR);
  MEMORY[0x1EEE9AC00](v39);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA35_AA4ViewPAAE16privacySensitiveyQrSbFQOyA28__Qo_GG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA35_AA4ViewPAAE16privacySensitiveyQrSbFQOyA28__Qo_GG_GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v36 - v8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMR);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMR);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  if (TranscriptionView.showWaiting.getter(v15))
  {
    v16 = [objc_opt_self() conversationKit];
    v42._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0x2E474E4954494157;
    v18.value._countAndFlagsBits = 0x61737265766E6F43;
    v18.value._object = 0xEF74694B6E6F6974;
    v17._object = 0xEA00000000002E2ELL;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v42);

    TranscriptionView.text(verbatim:)();

    LOBYTE(v16) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v20 = &v14[*(v12 + 36)];
    *v20 = v16;
    *(v20 + 1) = v21;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20[40] = 0;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMR, MEMORY[0x1E697E378]);
    _ConditionalContent<>.init(storage:)();
    sub_1BBCF3B28();
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMR);
    v25 = v14;
    v26 = &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMd;
    v27 = &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMR;
  }

  else
  {
    if (TranscriptionView.showTranscript.getter())
    {
      outlined init with copy of TranscriptionView(a1, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = swift_allocObject();
      outlined init with take of TranscriptionView();
      *v9 = closure #1 in TranscriptionView.transcriptView.getterpartial apply;
      v9[1] = v28;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMR);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMR, MEMORY[0x1E697E378]);
      _ConditionalContent<>.init(storage:)();
      sub_1BBCF3B28();
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout();
      _ConditionalContent<>.init(storage:)();

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMR);
    }

    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0x4018000000000000;
    v4[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeV0VGGAQyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverP0VGA19_G_A19_SgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeV0VGGAQyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverP0VGA19_G_A19_SgtGGMR);
    closure #1 in closure #1 in TranscriptionView.body.getter();
    v30 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v31 = &v4[*(v41 + 36)];
    *v31 = v30;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout();
    _ConditionalContent<>.init(storage:)();
    v25 = v4;
    v26 = &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAA016_ForegroundStyleM0VyAA017HierarchicalShapeT0VGGAMyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverM0VGA15_G_A15_SgtGGAA08_PaddingQ0VGMd;
    v27 = &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAA016_ForegroundStyleM0VyAA017HierarchicalShapeT0VGGAMyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverM0VGA15_G_A15_SgtGGAA08_PaddingQ0VGMR;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, v26, v27);
}

void TranscriptionView.text(verbatim:)()
{
  OUTLINED_FUNCTION_29();
  v25 = v0;
  v27 = v1;
  v28 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  OUTLINED_FUNCTION_21_42();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(v11);
  v30[120] = 0;
  memcpy(&v30[7], v31, 0x70uLL);
  v12 = static Font.title3.getter();
  v13 = swift_getKeyPath();
  v14 = static HierarchicalShapeStyle.primary.getter();
  v15 = swift_getKeyPath();
  v16 = &v6[*(v3 + 44)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA8MaterialVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA8MaterialVSgGMR) + 28);
  static Material.regular.getter();
  v18 = type metadata accessor for Material();
  __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v18);
  *v16 = v15;
  v19 = v27;
  v20 = v25;
  *v6 = v27;
  *(v6 + 1) = v20;
  v6[16] = 0;
  *(v6 + 17) = *v29;
  *(v6 + 5) = *&v29[3];
  v21 = KeyPath;
  *(v6 + 3) = MEMORY[0x1E69E7CC0];
  *(v6 + 4) = v21;
  v6[40] = 1;
  memcpy(v6 + 41, v30, 0x77uLL);
  *(v6 + 20) = v13;
  *(v6 + 21) = v12;
  *(v6 + 44) = v14;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  *&v10[*(v7 + 44)] = 0x3FE6666666666666;
  v22 = swift_getKeyPath();
  v23 = v28;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMR) + 36);
  *v24 = v19;
  *(v24 + 8) = v20;
  *(v24 + 16) = v22;
  *(v24 + 24) = 0;

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in TranscriptionView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMR);
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = var50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = var50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = var50 - v11;
  TranscriptionView.aMessageIsBeingLeftView()(v13, v14, v15, v16, v17, v18, v19, v20, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  if (TranscriptionView.hidePrivacySensitiveContent.getter())
  {
    v21 = [objc_opt_self() conversationKit];
    v28._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x565F4F545F504154;
    v22._object = 0xEB00000000574549;
    v23.value._countAndFlagsBits = 0x61737265766E6F43;
    v23.value._object = 0xEF74694B6E6F6974;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v28);

    TranscriptionView.text(verbatim:)();

    outlined init with take of CaptionSectioner.SpeakerSection?();
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v25, 1, v0);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_G_A11_SgtMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_G_A11_SgtMR);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMR);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMR);
}

void TranscriptionView.aMessageIsBeingLeftView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGA13__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGA13__GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &a9 - v24;
  v26 = TranscriptionViewModel.callerDisplayName.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = [objc_opt_self() conversationKit];
    v42._object = 0xE000000000000000;
    v31._object = 0x80000001BC50F150;
    v31._countAndFlagsBits = 0xD000000000000017;
    v32.value._countAndFlagsBits = 0x61737265766E6F43;
    v32.value._object = 0xEF74694B6E6F6974;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BC4BA940;
    v35 = TranscriptionViewModel.callerDisplayName.getter();
    v37 = v36;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    String.init(format:_:)();
  }

  else
  {
    if (one-time initialization token for someoneIsLeavingAMessage != -1)
    {
      OUTLINED_FUNCTION_11_76(&one-time initialization token for someoneIsLeavingAMessage);
    }

    v38 = static TranscriptionView.Strings.someoneIsLeavingAMessage;
    v39 = [objc_opt_self() conversationKit];
    v43._object = 0xE000000000000000;
    v40.value._countAndFlagsBits = 0x61737265766E6F43;
    v40.value._object = 0xEF74694B6E6F6974;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v43._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v40, v39, v41, v43);
  }

  TranscriptionView.text(verbatim:)();

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMR);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #2 in TranscriptionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionView(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for SpringBoardUtilities();
  outlined init with copy of TranscriptionView(a1, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = swift_allocObject();
  outlined init with take of TranscriptionView();
  static SpringBoardUtilities.requestPasscodeUnlock(_:)(partial apply for closure #1 in closure #2 in TranscriptionView.body.getter, v4);
}

uint64_t *TranscriptionView_Previews.viewModel.unsafeMutableAddressor()
{
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_0_157(&one-time initialization token for viewModel);
  }

  return &static TranscriptionView_Previews.viewModel;
}

uint64_t static TranscriptionView_Previews.viewModel.getter()
{
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_0_157(&one-time initialization token for viewModel);
  }
}

uint64_t static TranscriptionView_Previews.previews.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_0_157(&one-time initialization token for viewModel);
  }

  type metadata accessor for PositionalData(0);
  swift_allocObject();
  v2 = PositionalData.init()();
  *a1 = 0x10000;
  v3 = type metadata accessor for TranscriptionView(0);
  v4 = v3[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TranscriptionViewModel(0);
  OUTLINED_FUNCTION_3_121();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(v5, v6, &protocol conformance descriptor for TranscriptionViewModel);

  *(a1 + 8) = ObservedObject.init(wrappedValue:)();
  *(a1 + 16) = v7;
  *(a1 + v3[7]) = v2;
  v8 = (a1 + v3[8]);
  *v8 = 0xD000000000000013;
  v8[1] = 0x80000001BC50F170;

  v9 = TranscriptionView.font.getter();
  [(objc_class *)v9 pointSize];
  v11 = v10;

  v12 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  OUTLINED_FUNCTION_27_37(v13);
  *(v2 + v12) = v11 + v11;
  PositionalData.updateBottomVisibility()();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGMR) + 36));
  *v14 = v17;
  v14[1] = v18;
  v14[2] = v19;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGAA13_TaskModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGAA13_TaskModifierVGMR) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v15 = &async function pointer to partial apply for closure #1 in static TranscriptionView_Previews.previews.getter;
  v15[1] = 0;
  return result;
}

uint64_t closure #1 in static TranscriptionView_Previews.previews.getter()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v0[14] = v1;
  v0[15] = *(v1 - 8);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v2 = type metadata accessor for ContinuousClock();
  v0[19] = v2;
  v0[20] = *(v2 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v3 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v0[23] = v3;
  v0[24] = *(v3 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[27] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v5;
  v0[29] = v4;

  return MEMORY[0x1EEE6DFA0](closure #1 in static TranscriptionView_Previews.previews.getter, v5, v4);
}

{
  if (one-time initialization token for viewModel != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    *(v0 + 30) = static TranscriptionView_Previews.viewModel;
    v1 = specialized Collection.prefix(_:)(4, &outlined read-only object #0 of one-time initialization function for phrases);
    v5 = v4 >> 1;
    v6 = (v4 >> 1) - v3;
    if (__OFSUB__(v4 >> 1, v3))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return MEMORY[0x1EEE6DC10](v1, v2, v3, v4);
    }

    if (!v6)
    {
      break;
    }

    v7 = v2;
    v8 = v3;
    v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v6 < 0)
    {
      goto LABEL_28;
    }

    v9 = 0;
    v30 = v6;
    v31 = v5;
    v32 = *(v0 + 23);
    v10 = v34;
    v11 = (v7 + 16 * v8 + 8);
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    while (v8 < v5)
    {
      v33 = v8;
      v13 = v0;
      v14 = *(v0 + 26);
      v15 = *(v11 - 1);
      v16 = *v11;
      v0 = v32;

      Date.init()();
      Date.init()();
      *v14 = v9;
      v17 = (v14 + v32[7]);
      *v17 = v15;
      v17[1] = v16;
      *(v14 + v32[8]) = 0;
      *(v14 + v32[9]) = MEMORY[0x1E69E7CC0];
      *(v14 + v32[10]) = 1;
      if (!v12)
      {
        goto LABEL_25;
      }

      v18 = *(v34 + 16);
      if (v18 >= *(v34 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v0 = v13;
      *(v34 + 16) = v18 + 1;
      outlined init with take of TranscriptionView();
      ++v8;
      --v12;
      v11 += 2;
      ++v9;
      v5 = v31;
      if (v31 == v33 + 1)
      {
        swift_unknownObjectRelease();
        v6 = v30;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    OUTLINED_FUNCTION_0_157(&one-time initialization token for viewModel);
  }

  swift_unknownObjectRelease();
  v10 = MEMORY[0x1E69E7CC0];
LABEL_13:
  TranscriptionViewModel.captions.setter(v10);
  for (i = 0; ; i = *(v0 + 31) + 1)
  {
    *(v0 + 31) = i;
    specialized MutableCollection<>.shuffle<A>(using:)();
    v1 = &outlined read-only object #0 of one-time initialization function for phrases;
    *(v0 + 32) = &outlined read-only object #0 of one-time initialization function for phrases;
    v20 = unk_1F3ACA280;
    *(v0 + 34) = 0;
    *(v0 + 35) = v6;
    *(v0 + 33) = v20;
    if (v20)
    {
      break;
    }

    v21 = *(v0 + 31);

    if (v21 == 100)
    {

      OUTLINED_FUNCTION_4_113();

      OUTLINED_FUNCTION_13();

      return v28();
    }
  }

  if (!unk_1F3ACA280)
  {
    goto LABEL_29;
  }

  v22 = *(v0 + 17);
  v23 = v0;
  v24 = *(v0 + 15);
  v25 = *(v23 + 14);
  *(v23 + 36) = unk_1F3ACA290;
  *(v23 + 37) = unk_1F3ACA298;

  ContinuousClock.init()();
  static ContinuousClock.Instant.now.getter();
  OUTLINED_FUNCTION_7_16();
  v26 = *(v24 + 8);
  *(v23 + 38) = v26;
  *(v23 + 39) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v22, v25);
  v27 = swift_task_alloc();
  *(v23 + 40) = v27;
  *v27 = v23;
  OUTLINED_FUNCTION_2_122(v27);
  v1 = OUTLINED_FUNCTION_5_105(*(v23 + 18));

  return MEMORY[0x1EEE6DC10](v1, v2, v3, v4);
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *v4 = *v1;
  v3[41] = v0;

  v5 = v2[38];
  if (v0)
  {
    v6 = v3[22];
    v7 = v3[19];
    v8 = v3[20];

    v9 = OUTLINED_FUNCTION_43_0();
    v5(v9);
    (*(v8 + 8))(v6, v7);
    v10 = v3[28];
    v11 = v3[29];
    v12 = closure #1 in static TranscriptionView_Previews.previews.getter;
  }

  else
  {
    v13 = v3[22];
    v14 = v3[19];
    v15 = v3[20];
    (v5)(v3[18], v3[14]);
    v16 = *(v15 + 8);
    v3[42] = v16;
    v3[43] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v13, v14);
    v10 = v3[28];
    v11 = v3[29];
    v12 = closure #1 in static TranscriptionView_Previews.previews.getter;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

{
  *(v0 + 96) = *(v0 + 288);
  *(v0 + 80) = 0;
  v1 = *(v0 + 296);
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 104) = v1;
  v2 = lazy protocol witness table accessor for type String and conformance String();
  v3 = MEMORY[0x1BFB21D70](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v2);
  *(v0 + 352) = v3;

  v7 = *(v3 + 16);
  v8 = *(v0 + 280);
  *(v0 + 368) = 0;
  *(v0 + 376) = v8;
  *(v0 + 360) = v7;
  v9 = *(v0 + 352);
  if (v7)
  {
    if (!*(v9 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return MEMORY[0x1EEE6DC10](v9, v4, v5, v6);
    }

    v10 = *(v0 + 304);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v14 = *(v9 + 48);
    v13 = *(v9 + 56);
    *(v0 + 16) = *(v9 + 32);
    *(v0 + 32) = v14;
    *(v0 + 40) = v13;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    ContinuousClock.init()();
    static ContinuousClock.Instant.now.getter();
    ContinuousClock.Instant.advanced(by:)();
    v10(v11, v12);
    v15 = swift_task_alloc();
    *(v0 + 384) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_6_87(v15);
  }

  else
  {

    TranscriptionViewModel.captions.getter();
    specialized Sequence.suffix(_:)();
    TranscriptionViewModel.captions.setter(v17);
    v18 = *(v0 + 264);
    v19 = *(v0 + 272) + 1;
    while (1)
    {
      *(v0 + 272) = v19;
      *(v0 + 280) = v8;
      v9 = *(v0 + 256);
      if (v19 != v18)
      {
        break;
      }

      v20 = *(v0 + 248);

      if (v20 == 100)
      {

        OUTLINED_FUNCTION_4_113();

        OUTLINED_FUNCTION_13();

        return v24();
      }

      ++*(v0 + 248);
      specialized MutableCollection<>.shuffle<A>(using:)();
      v19 = 0;
      *(v0 + 256) = &outlined read-only object #0 of one-time initialization function for phrases;
      v18 = unk_1F3ACA280;
      *(v0 + 264) = unk_1F3ACA280;
    }

    if (v19 >= *(v9 + 16))
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_12_61(v9, v19);
    ContinuousClock.init()();
    static ContinuousClock.Instant.now.getter();
    OUTLINED_FUNCTION_7_16();
    v21 = OUTLINED_FUNCTION_13_59();
    v22(v21);
    v23 = swift_task_alloc();
    *(v0 + 320) = v23;
    *v23 = v0;
    OUTLINED_FUNCTION_2_122(v23);
    v16 = *(v0 + 144);
  }

  v9 = OUTLINED_FUNCTION_5_105(v16);

  return MEMORY[0x1EEE6DC10](v9, v4, v5, v6);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  v2[49] = v0;

  if (v0)
  {
    v4 = v2[42];
    v5 = v2[38];
    v6 = v2[21];
    v7 = v2[19];

    v8 = OUTLINED_FUNCTION_43_0();
    v5(v8);
    v4(v6, v7);

    v9 = v2[28];
    v10 = v2[29];
    v11 = closure #1 in static TranscriptionView_Previews.previews.getter;
  }

  else
  {
    v12 = v2[42];
    v13 = v2[21];
    v14 = v2[19];
    (v2[38])(v2[16], v2[14]);
    v12(v13, v14);
    v9 = v2[28];
    v10 = v2[29];
    v11 = closure #1 in static TranscriptionView_Previews.previews.getter;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

{
  v1 = *(v0 + 328);

  OUTLINED_FUNCTION_4_113();

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  v1 = *(v0 + 392);

  OUTLINED_FUNCTION_4_113();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t closure #1 in static TranscriptionView_Previews.previews.getter(__n128 a1)
{
  v2 = *(v1 + 368);
  v3 = *(v1 + 376);
  v4 = *(v1 + 280);
  v5 = *(v1 + 200);
  v6 = *(v1 + 184);
  v7 = *(TranscriptionViewModel.captions.getter() + 16);

  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  Date.init()();
  Date.init()();
  *v5 = v3;
  v10 = (v5 + *(v6 + 28));
  *v10 = v8;
  v10[1] = v9;
  *(v5 + *(v6 + 32)) = 0;
  *(v5 + *(v6 + 36)) = MEMORY[0x1E69E7CC0];
  *(v5 + *(v6 + 40)) = 1;
  if (v2 == (v4 ^ 0x7FFFFFFFFFFFFFFFLL))
  {
    __break(1u);
  }

  else
  {
    v2 = v1 + 48;
    swift_getKeyPath();
    swift_getKeyPath();

    v6 = static Published.subscript.modify();
    v9 = v11;
    v12 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v12;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v12 = isUniquelyReferenced_nonNull_native;
  *v9 = isUniquelyReferenced_nonNull_native;
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (v7 > *(v12 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  outlined assign with take of TranscriptionViewModel.Caption(*(v1 + 200), v12 + ((*(*(v1 + 192) + 80) + 32) & ~*(*(v1 + 192) + 80)) + *(*(v1 + 192) + 72) * (v7 - 1));
  (v6)(v2, 0);

  v17 = *(v1 + 360);
  v18 = *(v1 + 368) + 1;
  *(v1 + 368) = v18;
  *(v1 + 376) = v3 + 1;
  isUniquelyReferenced_nonNull_native = *(v1 + 352);
  if (v18 == v17)
  {

    TranscriptionViewModel.captions.getter();
    specialized Sequence.suffix(_:)();
    TranscriptionViewModel.captions.setter(v19);
    v20 = *(v1 + 264);
    v21 = *(v1 + 272) + 1;
    while (1)
    {
      *(v1 + 272) = v21;
      *(v1 + 280) = v3 + 1;
      isUniquelyReferenced_nonNull_native = *(v1 + 256);
      if (v21 != v20)
      {
        break;
      }

      v22 = *(v1 + 248);

      if (v22 == 100)
      {

        OUTLINED_FUNCTION_4_113();

        OUTLINED_FUNCTION_13();

        return v34();
      }

      ++*(v1 + 248);
      specialized MutableCollection<>.shuffle<A>(using:)();
      v21 = 0;
      *(v1 + 256) = &outlined read-only object #0 of one-time initialization function for phrases;
      v20 = unk_1F3ACA280;
      *(v1 + 264) = unk_1F3ACA280;
    }

    if (v21 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_12_61(isUniquelyReferenced_nonNull_native, v21);
    ContinuousClock.init()();
    static ContinuousClock.Instant.now.getter();
    OUTLINED_FUNCTION_7_16();
    v31 = OUTLINED_FUNCTION_13_59();
    v32(v31);
    v33 = swift_task_alloc();
    *(v1 + 320) = v33;
    *v33 = v1;
    OUTLINED_FUNCTION_2_122(v33);
    v30 = *(v1 + 144);
    goto LABEL_14;
  }

  if (v18 >= *(isUniquelyReferenced_nonNull_native + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return MEMORY[0x1EEE6DC10](isUniquelyReferenced_nonNull_native, v14, v15, v16);
  }

  v23 = *(v1 + 304);
  v24 = *(v1 + 136);
  v25 = *(v1 + 112);
  v26 = isUniquelyReferenced_nonNull_native + 32 * v18;
  v28 = *(v26 + 48);
  v27 = *(v26 + 56);
  *(v1 + 16) = *(v26 + 32);
  *(v1 + 32) = v28;
  *(v1 + 40) = v27;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();
  ContinuousClock.init()();
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v23(v24, v25);
  v29 = swift_task_alloc();
  *(v1 + 384) = v29;
  *v29 = v1;
  OUTLINED_FUNCTION_6_87(v29);
LABEL_14:
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_5_105(v30);

  return MEMORY[0x1EEE6DC10](isUniquelyReferenced_nonNull_native, v14, v15, v16);
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance TranscriptionView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptionView_Previews and conformance TranscriptionView_Previews();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance TranscriptionView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptionView_Previews and conformance TranscriptionView_Previews();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t specialized AutoScrollViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGGMd, &_s7Combine9PublishedVyShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *(*v0 + 96);
  v13 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGMd, "ޑ\a");
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = *(*v0 + 104);
  v12[7] = 1;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  return v0;
}

uint64_t specialized implicit closure #2 in implicit closure #1 in variable initialization expression of AutoScrollingList._autoScrollViewModel()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19AutoScrollViewModel33_D3B4D20066FA2C8011EAF639C52D2949LLCyAA013TranscriptioneF0C9CaptionIDVGMd, &_s15ConversationKit19AutoScrollViewModel33_D3B4D20066FA2C8011EAF639C52D2949LLCyAA013TranscriptioneF0C9CaptionIDVGMR);
  swift_allocObject();
  return specialized AutoScrollViewModel.init()();
}

uint64_t outlined destroy of ScreeningTranscriptLabel(uint64_t a1)
{
  v2 = type metadata accessor for ScreeningTranscriptLabel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #2 in TranscriptionView.body.getter()
{
  v1 = type metadata accessor for TranscriptionView(0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_20_1();

  return closure #2 in TranscriptionView.body.getter(v0 + v2);
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Material?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA8MaterialVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA8MaterialVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in static TranscriptionView_Previews.previews.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in CallScreeningRTTHelper.callStatusChanged(_:);

  return closure #1 in static TranscriptionView_Previews.previews.getter();
}

unint64_t lazy protocol witness table accessor for type TranscriptionView_Previews and conformance TranscriptionView_Previews()
{
  result = lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews;
  if (!lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews;
  if (!lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews);
  }

  return result;
}

void type metadata completion function for TranscriptionView(uint64_t a1)
{
  type metadata accessor for UIFontDescriptorSymbolicTraits(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservedObject<TranscriptionViewModel>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<RedactionReasons>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PositionalData(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Environment<RedactionReasons>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<RedactionReasons>)
  {
    type metadata accessor for RedactionReasons();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<RedactionReasons>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA012_ConditionalD0VyALyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA16_FlexFrameLayoutVGAPyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeX0VGGAPyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverQ0VGAA08_PaddingU0VGAA14GeometryReaderVyA15_17AutoScrollingListVyAJyAA05TupleE0VyA15_018LiveVoicemailIntroE0V_ACyA15_24ScreeningTranscriptLabelVA13_GtGGSayA15_013TranscriptionE5ModelC7CaptionVGA38_AeAE16privacySensitiveyQrSbFQOyA31__Qo_GGGACyAA6VStackVyA27_yALyA18_A18_G_A18_SgtGGA20_GGG_Qo_AVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA012_ConditionalD0VyALyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA16_FlexFrameLayoutVGAPyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeX0VGGAPyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverQ0VGAA08_PaddingU0VGAA14GeometryReaderVyA15_17AutoScrollingListVyAJyAA05TupleE0VyA15_018LiveVoicemailIntroE0V_ACyA15_24ScreeningTranscriptLabelVA13_GtGGSayA15_013TranscriptionE5ModelC7CaptionVGA38_AeAE16privacySensitiveyQrSbFQOyA31__Qo_GGGACyAA6VStackVyA27_yALyA18_A18_G_A18_SgtGGA20_GGG_Qo_AVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>>, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritin, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMR, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TranscriptionView, _FrameLayout>, _TaskModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TranscriptionView, _FrameLayout>, _TaskModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TranscriptionView, _FrameLayout>, _TaskModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGAA13_TaskModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGAA13_TaskModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TranscriptionView, _FrameLayout>, _TaskModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGMR);
    _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type TranscriptionView and conformance TranscriptionView, type metadata accessor for TranscriptionView, &protocol conformance descriptor for TranscriptionView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of TranscriptionView()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in TranscriptionView.body.getter(char a1)
{
  v2 = type metadata accessor for TranscriptionView(0);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_20_1();

  return closure #1 in closure #2 in TranscriptionView.body.getter(a1);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMR, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in TranscriptionView.transcriptView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TranscriptionView(0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_20_1();

  return closure #1 in TranscriptionView.transcriptView.getter(v1 + v4, a1);
}

uint64_t partial apply for closure #2 in closure #1 in TranscriptionView.transcriptView.getter()
{
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for TranscriptionView(v1);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_20_1();

  return closure #2 in closure #1 in TranscriptionView.transcriptView.getter(v0);
}

uint64_t View.transition<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  AnyTransition.init<A>(_:)();
  View.transition(_:)();
}

uint64_t TransitioningText<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd, &_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMR) + 40);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double FadeOutFadeInViewModifier.modifiedOpacity.getter()
{
  result = OUTLINED_FUNCTION_2_123();
  if (!(v3 ^ v4 | v2))
  {
    return v1;
  }

  return result;
}

double (*FadeOutFadeInViewModifier.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return FadeOutFadeInViewModifier.animatableData.modify;
}

uint64_t FadeOutFadeInViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_2_123();
  if (v7 ^ v8 | v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit07FadeOuth2IncD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit07FadeOuth2IncD0VGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit07FadeOuti2IneF0VGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit07FadeOuti2IneF0VGAA14_OpacityEffectVGMR);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FadeOutFadeInViewModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = lazy protocol witness table accessor for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier();

  return MEMORY[0x1EEDDDD18](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FadeOutFadeInViewModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = lazy protocol witness table accessor for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier();

  return MEMORY[0x1EEDDDD20](a1, a2, a3, a4, a5, v12, a6);
}

double (*protocol witness for Animatable.animatableData.modify in conformance FadeOutFadeInViewModifier(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance FadeOutFadeInViewModifier;
}

uint64_t FadeOutFadeInTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (TransitionPhase.isIdentity.getter())
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVy15ConversationKit07FadeOutH12InTransitionVGMd, &_s7SwiftUI22PlaceholderContentViewVy15ConversationKit07FadeOutH12InTransitionVGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v7 + 16))(a3, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit07FadeOutI12InTransitionVGAF0ijikF8ModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit07FadeOutI12InTransitionVGAF0ijikF8ModifierVGMR);
  *(a3 + *(result + 36)) = v6;
  return result;
}

uint64_t TransitioningText.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransitioningText.horizontalSizeClass.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v2 + *(a1 + 40), &v15 - v10, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of UserInterfaceSizeClass?(v11, a2);
  }

  v13 = static os_log_type_t.fault.getter();
  v14 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v13, &dword_1BBC58000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t TransitioningText.toolbarFont.getter(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  if (static Platform.current.getter() != 1)
  {
    goto LABEL_8;
  }

  TransitioningText.horizontalSizeClass.getter(a1, v17);
  (*(v3 + 104))(v14, *MEMORY[0x1E697FF40], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 48);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v17, v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v14, &v8[v18], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
LABEL_11:
      static Font.footnote.getter();
      static Font.Weight.semibold.getter();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  outlined init with copy of (CGFloat, AutoplayCandidate)(v8, v11, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v3 + 8))(v11, v2);
LABEL_7:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    goto LABEL_8;
  }

  (*(v3 + 32))(v5, &v8[v18], v2);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v3 + 8);
  v22(v5, v2);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v22(v11, v2);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v21)
  {
    goto LABEL_11;
  }

LABEL_8:
  static Font.caption.getter();
  static Font.Weight.regular.getter();
LABEL_9:
  v19 = Font.weight(_:)();

  return v19;
}

uint64_t TransitioningText.init(_:transition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = type metadata accessor for TransitioningText(0, a4, a5, a4);
  v12 = *(v11 + 40);
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  *a6 = a1;
  a6[1] = a2;
  v13 = *(*(a4 - 8) + 32);
  v14 = a6 + *(v11 + 36);

  return v13(v14, a3, a4);
}

double TransitioningText.body.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVyAIyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionN3KeyVGGAA012_EnvironmentroP0VyAA4FontVSgGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVyAIyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionN3KeyVGGAA012_EnvironmentroP0VyAA4FontVSgGGGMR);
  closure #1 in TransitioningText.body.getter(v2, *(a1 + 16), *(a1 + 24), a2 + *(v6 + 44));
  static Animation.default.getter();
  v7 = Animation.speed(_:)();

  v9 = *v2;
  v8 = v2[1];
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGAA010_AnimationL0VySSGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGAA010_AnimationL0VySSGGMR) + 36));
  *v10 = v7;
  v10[1] = v9;
  v10[2] = v8;

  return result;
}

uint64_t closure #1 in TransitioningText.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMd, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = objc_opt_self();

  v14 = [v13 labelColor];

  MarqueeLabel.init(text:attributedText:color:animated:)();
  v15 = &v10[*(v8 + 52)];
  *v15 = v11;
  *(v15 + 1) = v12;
  v17 = type metadata accessor for TransitioningText(0, a2, a3, v16);
  v18 = *(v17 + 36);
  v19 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IDView<MarqueeLabel, String> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMd, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMR, MEMORY[0x1E6981810]);
  View.transition<A>(_:)(a1 + v18, v8, a2, v19, a3);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMd, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMR);
  v20 = TransitioningText.toolbarFont.getter(v17);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGAA012_EnvironmentmjK0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGAA012_EnvironmentmjK0VyAA4FontVSgGGMR);
  v23 = (a4 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v20;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGAA012_EnvironmentmjK0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGAA012_EnvironmentmjK0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IDView<MarqueeLabel, String> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMd, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMR, MEMORY[0x1E6981810]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMR, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for TransitioningText(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<UserInterfaceSizeClass?>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for TransitioningText(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v10 = *(v9 + 64);
  v11 = *(v6 + 80);
  if (!*(v9 + 84))
  {
    ++v10;
  }

  v12 = 8;
  if (v10 > 8)
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_27;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = v12 + ((((v11 + 16) & ~v11) + *(v6 + 64) + v13) & ~v13) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v8 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v18 < 2)
    {
LABEL_27:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((a1 + v11 + 16) & ~v11, v7, v5);
      }

      else
      {
        v20 = *(a1 + 1);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_19:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    switch(v14)
    {
      case 2:
        LODWORD(v14) = *a1;
        break;
      case 3:
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v14) = *a1;
        break;
      default:
        LODWORD(v14) = *a1;
        break;
    }
  }

  return v8 + (v14 | v19) + 1;
}

void storeEnumTagSinglePayload for TransitioningText(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v12 = *(v11 + 64);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (((v13 + 16) & ~v13) + *(v8 + 64) + v14) & ~v14;
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v16 = v12 + v15 + 1;
  v17 = 8 * v16;
  if (a3 <= v10)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v10 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload(&a1[v13 + 16] & ~v13, a2, v9, v7);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FadeOutFadeInViewModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FadeOutFadeInViewModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FadeOutFadeInViewModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit07FadeOuti2IneF0VGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit07FadeOuti2IneF0VGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<FadeOutFadeInViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit07FadeOuth2IncD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit07FadeOuth2IncD0VGMR, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FadeOutFadeInViewModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<FadeOutFadeInTransition>, FadeOutFadeInViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<FadeOutFadeInTransition>, FadeOutFadeInViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<FadeOutFadeInTransition>, FadeOutFadeInViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit07FadeOutI12InTransitionVGAF0ijikF8ModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit07FadeOutI12InTransitionVGAF0ijikF8ModifierVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PlaceholderContentView<FadeOutFadeInTransition> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVy15ConversationKit07FadeOutH12InTransitionVGMd, &_s7SwiftUI22PlaceholderContentViewVy15ConversationKit07FadeOutH12InTransitionVGMR, MEMORY[0x1E697FEC8]);
    lazy protocol witness table accessor for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<FadeOutFadeInTransition>, FadeOutFadeInViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier()
{
  result = lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier;
  if (!lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier;
  if (!lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGAA010_AnimationL0VySSGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGAA010_AnimationL0VySSGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVyAEyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGMd, &_s7SwiftUI6ZStackVyAA15ModifiedContentVyAEyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGMR, MEMORY[0x1E6981880]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<String> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySSGMd, &_s7SwiftUI18_AnimationModifierVySSGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t URL.withoutFragment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of TapInteractionHandler?(v7, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    v12 = type metadata accessor for URL();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    URLComponents.fragment.setter();
    URL.baseURL.getter();
    URLComponents.url(relativeTo:)();
    outlined destroy of TapInteractionHandler?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t ClarityUIRecentsView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v17[1] = a2;
  v2 = type metadata accessor for ClarityUINavigationTitle();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMR);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_GMd, &_s7SwiftUI7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_GMR);
  lazy protocol witness table accessor for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>();
  List<>.init(content:)();
  static ClarityUINavigationTitle.recents.getter();
  OUTLINED_FUNCTION_0_80();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v14, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMR, v15);
  View.navigationTitle(_:)();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

uint64_t closure #1 in ClarityUIRecentsView.body.getter(uint64_t a1, uint64_t a2)
{
  ClarityUICallHistory.recentCalls.getter(a1, a2);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12CHRecentCallCGMd, &_sSaySo12CHRecentCallCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_Md, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_MR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [CHRecentCall] and conformance [A], &_sSaySo12CHRecentCallCGMd, &_sSaySo12CHRecentCallCGMR, MEMORY[0x1E69E6338]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR, MEMORY[0x1E697C090]);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

unint64_t lazy protocol witness table accessor for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_GMd, &_s7SwiftUI7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR, MEMORY[0x1E697C090]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

void key path getter for CHRecentCall.uniqueId : CHRecentCall(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueId];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void key path setter for CHRecentCall.uniqueId : CHRecentCall(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1BFB209B0](*a1, a1[1]);
  [v2 setUniqueId_];
}

uint64_t closure #1 in closure #1 in ClarityUIRecentsView.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = *a1;
  ClarityUIRecentsView.contact(for:)(*a1, a2);
  v10 = v19;
  v12 = v20;
  v11 = v21;
  v13 = v18;
  v14 = v10;

  v15 = v9;
  ClarityUIOutgoingCallAction.init(recentCall:)(v15, v22);
  v18 = v13;
  v19 = v14;
  v20 = v12;
  v21 = v11;
  v17[4] = v13;
  v17[5] = v14;
  v17[6] = v12;
  v17[7] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, ClarityUIContactAvatar> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMR, MEMORY[0x1E697D658]);
  lazy protocol witness table accessor for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination();
  NavigationLink<>.init<A>(value:label:)();
  [v15 unreadCount];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMR, MEMORY[0x1E697C090]);
  View.badge(_:)();

  return (*(v6 + 8))(v8, v5);
}

void ClarityUIRecentsView.contact(for:)(void *a1, uint64_t a2)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_contactStore);
  v4 = objc_allocWithZone(MEMORY[0x1E6993568]);
  v5 = v3;
  v6 = [v4 initWithDataSource_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BAC30;
  *(v7 + 32) = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHRecentCall, 0x1E6993590);
  v8 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  static ClarityUIContact.requiredDescriptors(for:)(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v42[0] = 0;
  v11 = [v6 contactsByHandleForCalls:isa keyDescriptors:v10 error:v42];

  v12 = v42[0];
  if (v11)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    v15 = specialized Collection.first.getter(v13);
    v17 = v16;

    if (v15)
    {

      if (specialized Array.count.getter())
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v17 & 0xC000000000000001) == 0, v17);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1BFB22010](0, v17);
        }

        else
        {
          v18 = *(v17 + 32);
        }

        v19 = v18;

        goto LABEL_22;
      }
    }

    v32 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v8);
    if (!v32 || (v33 = specialized Collection.first.getter(v32), , !v33) || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNMutableContact, 0x1E695CF18), (v34 = CNMutableContact.init(handle:)(v33)) == 0))
    {
      if (one-time initialization token for clarityUI != -1)
      {
        OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, &static Log.clarityUI);
      v36 = v8;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v36;
        *v40 = v36;
        v41 = v36;
        _os_log_impl(&dword_1BBC58000, v37, v38, "Unable to create contact for recent call: %@", v39, 0xCu);
        outlined destroy of NSObject?(v40);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      v34 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    }

    v19 = v34;
  }

  else
  {
    v20 = v42[0];
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, &static Log.clarityUI);
    v23 = v8;
    v24 = v21;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412546;
      *(v27 + 4) = v23;
      *v28 = v23;
      *(v27 + 12) = 2112;
      v29 = v23;
      v30 = v21;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      v28[1] = v31;
      _os_log_impl(&dword_1BBC58000, v25, v26, "Unable to get contacts by handle for recent call: %@. Error: %@", v27, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  }

LABEL_22:
  ClarityUIContact.init(cnContact:contactStore:)(v19, v5);
}

uint64_t ClarityUIOutgoingCallAction.init(recentCall:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uniqueId];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x1BFB20B10](v5, v7);

  LOBYTE(v4) = CHRecentCall.callType.getter();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = 0x2D746E65636552;
  *(a2 + 8) = 0xE700000000000000;
  *(a2 + 16) = v4;
  *(a2 + 24) = partial apply for closure #1 in ClarityUIOutgoingCallAction.init(recentCall:);
  *(a2 + 32) = result;
  return result;
}

uint64_t ClarityUIRecentsView.init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t CHRecentCall.callType.getter()
{
  v1 = [v0 mediaType];
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      return 1;
    }

    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Log.clarityUI);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      [v4 mediaType];
      type metadata accessor for CHRecentCallMediaType(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1BBC58000, v5, v6, "Unhandled media type for recent call: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  return 0;
}

Swift::Void __swiftcall CHRecentCall.makeCall()()
{
  v14 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v1 = [v14 dialRequestForRecentCall_];
  if (v1)
  {
    v2 = v1;
    [v1 setOriginatingUIType_];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    aBlock[4] = partial apply for closure #1 in CHRecentCall.makeCall();
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_67;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v14 launchAppForDialRequest:v5 completion:v4];
    _Block_release(v4);
  }

  else
  {
    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.clarityUI);
    v8 = v0;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Unable to make dial request for recent call: %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }
}

void closure #1 in CHRecentCall.makeCall()(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.clarityUI);
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 138412802;
      *(v13 + 4) = v9;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v9;
      v14[1] = v10;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v15 = v9;
      v16 = v10;
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v13 + 24) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Unable to launch app for dial request: %@, recent call: %@, error: %s", v13, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t lazy protocol witness table accessor for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination()
{
  result = lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination()
{
  result = lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination);
  }

  return result;
}

void static InCallControlsParticipantCell.invalidateCalculatedHeights()()
{
  static InCallControlsParticipantCell._defaultContentHeight = 0;
  byte_1EBCB16F0 = 1;
  static InCallControlsParticipantCell._extendedContentHeight = 0;
  byte_1EBCB1700 = 1;
}

uint64_t InCallControlsParticipantCell.configure(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v98 = &v96 - v4;
  v5 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  v99 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v100 = v6;
  v101 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSg_ADtMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSg_ADtMR);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v96 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v96 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v20 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
  swift_beginAccess();
  v102 = a1;
  outlined init with copy of InCallControlsParticipantCellViewModel(a1, v19);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
  v21 = *(v8 + 56);
  v97 = v1;
  outlined init with copy of InCallControlsParticipantCellViewModel?(&v1[v20], v10);
  outlined init with copy of InCallControlsParticipantCellViewModel?(v19, &v10[v21]);
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
  {
    outlined destroy of CallControlsService?(v19, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
    v22 = v5;
    if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v5) == 1)
    {
      return outlined destroy of CallControlsService?(v10, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
    }

    goto LABEL_6;
  }

  outlined init with copy of InCallControlsParticipantCellViewModel?(v10, v16);
  v22 = v5;
  if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v5) == 1)
  {
    outlined destroy of CallControlsService?(v19, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
    outlined destroy of InCallControlsParticipantCellViewModel(v16);
LABEL_6:
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSg_ADtMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSg_ADtMR);
    goto LABEL_7;
  }

  v51 = v101;
  outlined init with take of InCallControlsParticipantCellViewModel(&v10[v21], v101);
  v52 = static InCallControlsParticipantCellViewModel.== infix(_:_:)(v16, v51);
  outlined destroy of InCallControlsParticipantCellViewModel(v51);
  outlined destroy of CallControlsService?(v19, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  outlined destroy of InCallControlsParticipantCellViewModel(v16);
  result = outlined destroy of CallControlsService?(v10, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  if (v52)
  {
    return result;
  }

LABEL_7:
  v24 = v98;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v25 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  v26 = v97;
  MEMORY[0x1BFB216F0](v24);
  [v26 setAutomaticallyUpdatesBackgroundConfiguration_];
  v27 = v102;
  outlined init with copy of InCallControlsParticipantCellViewModel(v102, v13);
  v28 = v22;
  v29 = v26;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v28);
  swift_beginAccess();
  v30 = &v26[v20];
  v31 = v28;
  outlined assign with take of InCallControlsParticipantCellViewModel?(v13, v30);
  swift_endAccess();
  v32 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel];
  v33 = MEMORY[0x1BFB209B0](*(v27 + *(v28 + 24)), *(v27 + *(v28 + 24) + 8));
  [v32 setText_];

  v34 = *(v27 + v31[8]);
  if ((v34 - 2) < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    v98 = xmmword_1BC4BA930;
    *(inited + 16) = xmmword_1BC4BA930;
    v36 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton];
    *(inited + 32) = v36;
    v37 = v36;
    OUTLINED_FUNCTION_1_129();
    *(inited + 40) = InCallControlsParticipantCell.lmiApproveButton.getter(v38, v39);
    InCallControlsParticipantCell.setEnabled(_:for:)(0, inited);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v40 = *(v27 + v31[13]);
    v41 = swift_initStackObject();
    *(v41 + 16) = v98;
    OUTLINED_FUNCTION_0_159();
    *(v41 + 32) = InCallControlsParticipantCell.lmiApproveButton.getter(v42, v43);
    *(v41 + 40) = OUTLINED_FUNCTION_2_124(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
LABEL_11:
    InCallControlsParticipantCell.setEnabled(_:for:)(v40, v41);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    goto LABEL_15;
  }

  if (v34 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_1BC4BC370;
    v45 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton];
    *(v44 + 32) = v45;
    v46 = v45;
    OUTLINED_FUNCTION_0_159();
    *(v44 + 40) = InCallControlsParticipantCell.lmiApproveButton.getter(v47, v48);
    *(v44 + 48) = OUTLINED_FUNCTION_2_124(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
    InCallControlsParticipantCell.setEnabled(_:for:)(0, v44);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v40 = *(v27 + v31[12]);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_1BC4BAC30;
    OUTLINED_FUNCTION_1_129();
    *(v41 + 32) = InCallControlsParticipantCell.lmiApproveButton.getter(v49, v50);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1BC4BC370;
  OUTLINED_FUNCTION_0_159();
  *(v53 + 32) = InCallControlsParticipantCell.lmiApproveButton.getter(v54, v55);
  *(v53 + 40) = OUTLINED_FUNCTION_2_124(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
  OUTLINED_FUNCTION_1_129();
  *(v53 + 48) = InCallControlsParticipantCell.lmiApproveButton.getter(v56, v57);
  InCallControlsParticipantCell.setEnabled(_:for:)(0, v53);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v58 = *(v27 + v31[10]);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1BC4BAC30;
  v60 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton];
  *(v59 + 32) = v60;
  v61 = v60;
  InCallControlsParticipantCell.setEnabled(_:for:)(v58, v59);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v62 = (v27 + v31[9]);
  v63 = *v62;
  v64 = v62[1];
  v65 = *((*MEMORY[0x1E69E7D40] & *v61) + 0x1B8);

  v65(v63, v64);
  v27 = v102;
LABEL_15:
  v66 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView];
  v68 = v27[2];
  v67 = v27[3];
  v70 = v27[4];
  v69 = v27[5];
  v71 = v102[6];
  v103 = *v102;
  v104 = v68;
  v105 = v67;
  v106 = v70;
  v107 = v69;
  v108 = v71;
  v72 = v103;

  ParticipantContactView.contactDetails.setter(&v103);
  v73 = [v66 layer];
  v74 = [objc_opt_self() clearColor];
  v75 = [v74 CGColor];

  [v73 setShadowColor_];
  v76 = v102;

  ParticipantContactView.gradient.setter(v77);
  [v32 setTextColor_];
  v78 = v76 + v31[7];
  v79 = *v78;
  v80 = *(v78 + 1);
  v81 = v78[16];
  switch(v81 >> 5)
  {
    case 1u:
      v88 = MEMORY[0x1BFB209B0](v79, v80);
      OUTLINED_FUNCTION_3_122(v88);

      v84 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon];
      [v84 setAlpha_];
      v86 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_cameraSymbolImage;
      goto LABEL_24;
    case 2u:
      v83 = MEMORY[0x1BFB209B0](v79, v80);
      OUTLINED_FUNCTION_3_122(v83);

      v84 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon];
      [v84 setAlpha_];
      v85 = &OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_messagesSymbolImage;
      if ((v81 & 1) == 0)
      {
        v85 = &OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_cameraSymbolImage;
      }

      v86 = *v85;
      goto LABEL_24;
    case 3u:
      v87 = MEMORY[0x1BFB209B0](v79, v80);
      OUTLINED_FUNCTION_3_122(v87);

      v84 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon];
      [v84 setAlpha_];
      v86 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_linkSymbolImage;
LABEL_24:
      [v84 setImage_];
      goto LABEL_25;
    case 4u:
      outlined bridged method (mbnn) of @objc UILabel.text.setter(0, 0xE000000000000000, *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel]);
      goto LABEL_18;
    default:
      v82 = MEMORY[0x1BFB209B0](v79, v80);
      OUTLINED_FUNCTION_3_122(v82);

LABEL_18:
      [*&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon] setAlpha_];
LABEL_25:
      [v29 setNeedsLayout];
      v89 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = v101;
      outlined init with copy of InCallControlsParticipantCellViewModel(v76, v101);
      v91 = (*(v99 + 80) + 24) & ~*(v99 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = v89;
      outlined init with take of InCallControlsParticipantCellViewModel(v90, v92 + v91);
      v93 = &v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate];
      v94 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate];
      v95 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate + 8];
      *v93 = partial apply for closure #1 in InCallControlsParticipantCell.configure(with:);
      v93[1] = v92;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v94, v95);

      break;
  }

  return result;
}

uint64_t outlined init with copy of InCallControlsParticipantCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of InCallControlsParticipantCellViewModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of InCallControlsParticipantCellViewModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void InCallControlsParticipantCell.lmiApproveButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton) = a1;
}

void *closure #1 in InCallControlsParticipantCell.lmiApproveButton.getter(void *a1)
{
  v2 = InCallControlsParticipantCell.inCallControlButton(for:)(2);
  if (one-time initialization token for joinButton != -1)
  {
    swift_once();
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0);

  v3(v4);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000010, 0x80000001BC50F430, v2);
  v5 = [a1 contentView];
  [v5 addSubview_];

  return v2;
}

void *InCallControlsParticipantCell.inCallControlButton(for:)(char a1)
{
  type metadata accessor for InCallControlButton();
  switch(a1)
  {
    case 1:
      *(&v8 + 1) = &type metadata for SymbolImageDescribers.DrawerTable;
      v9 = &protocol witness table for SymbolImageDescribers.DrawerTable;
      v2 = 9;
      break;
    case 3:
      *(&v8 + 1) = &type metadata for SymbolImageDescribers.DrawerTable;
      v9 = &protocol witness table for SymbolImageDescribers.DrawerTable;
      v2 = 12;
      break;
    case 2:
      *(&v8 + 1) = &type metadata for SymbolImageDescribers.DrawerTable;
      v9 = &protocol witness table for SymbolImageDescribers.DrawerTable;
      v2 = 10;
      break;
    default:
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      goto LABEL_9;
  }

  LOBYTE(v7) = v2;
LABEL_9:
  v3 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(0, &v7, 0, 0, 0, 1, 0, 0, 1, 0);
  [v3 setAlpha_];
  [v3 setEnabled_];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in InCallControlsParticipantCell.inCallControlButton(for:), v5);

  return v3;
}

void InCallControlsParticipantCell.lmiRejectButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton) = a1;
}

void *closure #1 in InCallControlsParticipantCell.lmiRejectButton.getter(void *a1)
{
  v2 = InCallControlsParticipantCell.inCallControlButton(for:)(3);
  if (one-time initialization token for leaveButton != -1)
  {
    swift_once();
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0);

  v3(v4);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x63656A6552696D6CLL, 0xEF6E6F7474754274, v2);
  v5 = [a1 contentView];
  [v5 addSubview_];

  return v2;
}

id InCallControlsParticipantCell.lmiApproveButton.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

void InCallControlsParticipantCell.kickMemberButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton) = a1;
}

void *closure #1 in InCallControlsParticipantCell.kickMemberButton.getter(void *a1)
{
  v2 = InCallControlsParticipantCell.inCallControlButton(for:)(1);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000010, 0x80000001BC50F4A0, v2);
  v3 = [a1 contentView];
  [v3 addSubview_];

  return v2;
}

uint64_t InCallControlsParticipantCell.contentViews.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v2 = swift_allocObject();
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView);
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel);
    *(v2 + 16) = xmmword_1BC4C48E0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon);
    *(v2 + 48) = v5;
    *(v2 + 56) = v6;
    v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton);
    *(v2 + 64) = v7;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    *(v2 + 72) = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton, closure #1 in InCallControlsParticipantCell.kickMemberButton.getter);
    *(v2 + 80) = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton, closure #1 in InCallControlsParticipantCell.lmiApproveButton.getter);
    *(v2 + 88) = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton, closure #1 in InCallControlsParticipantCell.lmiRejectButton.getter);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t key path getter for InCallControlsParticipantCell.participantCellDelegate : InCallControlsParticipantCell@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for InCallControlsParticipantCell.participantCellDelegate : InCallControlsParticipantCell(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsParticipantCell.participantCellDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsParticipantCell.participantCellDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
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

uint64_t InCallControlsParticipantCell.isSubtitleHidden.getter()
{
  v1 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    return 0;
  }

  outlined init with copy of InCallControlsParticipantCellViewModel(v0 + v4, v3);
  v6 = &v3[*(v1 + 28)];
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = v6[16];
  if (v8 | v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 128;
  }

  v5 = v10;
  outlined destroy of InCallControlsParticipantCellViewModel(v3);
  return v5;
}

id InCallControlsParticipantCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

uint64_t InCallControlsParticipantCell.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_20_2();
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon;
  type metadata accessor for UIImage();
  v5 = *MEMORY[0x1E69DDCF8];
  LOBYTE(v114[0]) = 0;
  v94[0] = 0x69662E6F65646976;
  v94[1] = 0xEA00000000006C6CLL;
  v94[2] = -1;
  v94[3] = v5;
  v95 = 0;
  v96 = 4;
  v97 = 0;
  v98 = 0;
  v99[0] = 0x69662E6F65646976;
  v99[1] = 0xEA00000000006C6CLL;
  v99[2] = -1;
  v99[3] = v5;
  v100 = 0;
  v101 = 4;
  v102 = 0;
  v103 = 0;
  v6 = v5;
  outlined init with copy of SymbolImageDescription(v94, &v119);
  outlined destroy of SymbolImageDescription(v99);
  v7 = static UIImage.symbolImage(for:)(v94);
  outlined destroy of SymbolImageDescription(v94);
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  *(v1 + v4) = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView;
  LOBYTE(v119) = 0;
  v10 = objc_allocWithZone(type metadata accessor for ParticipantContactView());
  *(v1 + v9) = ParticipantContactView.init(colorStyle:)(&v119);
  v11 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton;
  v12 = type metadata accessor for InCallControlButton();
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  *(v1 + v11) = OUTLINED_FUNCTION_4_114(v12, &v119, v13, v14, v15, v16, v17, v18, 1);
  v19 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  OUTLINED_FUNCTION_13_6(v19);
  v20 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_cameraSymbolImage;
  LOBYTE(v114[0]) = 0;
  v89[0] = 0x69662E6F65646976;
  v89[1] = 0xEA00000000006C6CLL;
  v89[2] = -1;
  v89[3] = v6;
  v90 = 0;
  v91 = 4;
  v92 = 0;
  v93 = 0;
  v104[0] = 0x69662E6F65646976;
  v104[1] = 0xEA00000000006C6CLL;
  v104[2] = -1;
  v104[3] = v6;
  v105 = 0;
  v106 = 4;
  v107 = 0;
  v108 = 0;
  outlined init with copy of SymbolImageDescription(v89, &v119);
  outlined destroy of SymbolImageDescription(v104);
  v21 = static UIImage.symbolImage(for:)(v89);
  outlined destroy of SymbolImageDescription(v89);
  *(v1 + v20) = v21;
  v22 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_copresenceSymbolImage;
  LOBYTE(v114[0]) = 0;
  OUTLINED_FUNCTION_7_80();
  v84[0] = v23;
  v84[1] = v24;
  v84[2] = -1;
  v84[3] = v6;
  v85 = 0;
  v86 = 4;
  v87 = 0;
  v88 = 0;
  v109[0] = v23;
  v109[1] = v24;
  v109[2] = -1;
  v109[3] = v6;
  v110 = 0;
  v111 = 4;
  v112 = 0;
  v113 = 0;
  outlined init with copy of SymbolImageDescription(v84, &v119);
  outlined destroy of SymbolImageDescription(v109);
  v25 = static UIImage.symbolImage(for:)(v84);
  outlined destroy of SymbolImageDescription(v84);
  *(v1 + v22) = v25;
  v26 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_linkSymbolImage;
  v27 = *MEMORY[0x1E69DDD80];
  v79[0] = 1802398060;
  v79[1] = 0xE400000000000000;
  v79[2] = 1;
  v79[3] = v27;
  v80 = 0;
  v81 = 4;
  v82 = 0;
  v83 = 0;
  v114[0] = 1802398060;
  v114[1] = 0xE400000000000000;
  v114[2] = 1;
  v114[3] = v27;
  v115 = 0;
  v116 = 4;
  v117 = 0;
  v118 = 0;
  v72 = v27;
  outlined init with copy of SymbolImageDescription(v79, &v119);
  outlined destroy of SymbolImageDescription(v114);
  v28 = static UIImage.symbolImage(for:)(v79);
  outlined destroy of SymbolImageDescription(v79);
  *(v1 + v26) = v28;
  v29 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_messagesSymbolImage;
  v73[64] = 0;
  OUTLINED_FUNCTION_10_67();
  v74[0] = v30;
  v74[1] = v31;
  v74[2] = 1;
  v74[3] = v32;
  v75 = 0;
  v76 = 4;
  v77 = 0;
  v78 = 0;
  *&v119 = v30;
  *(&v119 + 1) = v31;
  *&v120 = 1;
  *(&v120 + 1) = v32;
  LOWORD(v121) = 0;
  v122 = 4;
  v123 = 0;
  v124 = 0;
  v33 = v32;
  outlined init with copy of SymbolImageDescription(v74, v73);
  outlined destroy of SymbolImageDescription(&v119);
  v34 = static UIImage.symbolImage(for:)(v74);
  outlined destroy of SymbolImageDescription(v74);
  *(v1 + v29) = v34;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews) = 0;
  v35 = (v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate);
  *v35 = 0;
  v35[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v36 = OUTLINED_FUNCTION_18_1();
  v39 = objc_msgSendSuper2(v37, v38, v36);
  [v39 setAutomaticallyUpdatesBackgroundConfiguration_];
  v40 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel;
  v41 = one-time initialization token for tableViewCellTitleLabel;
  v42 = *&v39[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel];
  if (v41 != -1)
  {
    swift_once();
  }

  [v42 setTextColor_];

  v43 = *&v39[v40];
  v44 = objc_opt_self();
  v45 = *MEMORY[0x1E69DDD40];
  v46 = v43;
  v47 = [v44 preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  [v46 setFont_];
  [*&v39[v40] setAdjustsFontForContentSizeCategory_];
  [*&v39[v40] setNumberOfLines_];
  v49 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel;
  v50 = one-time initialization token for tableViewCellSubtitleLabel;
  v51 = *&v39[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel];
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = static Colors.InCallControls.tableViewCellSubtitleLabel;
  [v51 setTextColor_];

  v53 = *&v39[v49];
  v54 = [v44 preferredFontForTextStyle_];
  [v53 setFont_];

  [*&v39[v49] setAdjustsFontForContentSizeCategory_];
  [*&v39[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon] setTintColor_];
  v55 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton;
  [*(*&v39[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton] + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label) setAdjustsFontForContentSizeCategory_];
  v57 = *&v39[v55];
  v58 = *&v57[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
  if (v58)
  {
    LODWORD(v56) = 1148846080;
    [v58 setContentCompressionResistancePriority:0 forAxis:v56];
    v57 = *&v39[v55];
  }

  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = v57;

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in InCallControlsParticipantCell.init(frame:), v59);

  v61 = InCallControlsParticipantCell.contentViews.getter();
  result = specialized Array.count.getter();
  if (!result)
  {
    goto LABEL_14;
  }

  v63 = result;
  if (result >= 1)
  {
    v64 = 0;
    do
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x1BFB22010](v64, v61);
      }

      else
      {
        v65 = *(v61 + 8 * v64 + 32);
      }

      v66 = v65;
      ++v64;
      v67 = [v39 contentView];
      [v67 addSubview_];
    }

    while (v63 != v64);
LABEL_14:

    v68 = [v39 separatorLayoutGuide];
    v69 = [v68 leadingAnchor];

    v70 = [*&v39[v40] leadingAnchor];
    v71 = [v69 constraintEqualToAnchor_];

    [v71 setActive_];
    return v39;
  }

  __break(1u);
  return result;
}

void closure #1 in InCallControlsParticipantCell.init(frame:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate];
    if (v4)
    {
      v5 = *&Strong[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate + 8];
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*&Strong[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate], v5);

      v4();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
    }

    else
    {
    }
  }
}

id InCallControlsParticipantCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsParticipantCell.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon;
  type metadata accessor for UIImage();
  v5 = *MEMORY[0x1E69DDCF8];
  LOBYTE(v78[0]) = 0;
  v58[0] = 0x69662E6F65646976;
  v58[1] = 0xEA00000000006C6CLL;
  v58[2] = -1;
  v58[3] = v5;
  v59 = 0;
  v60 = 4;
  v61 = 0;
  v62 = 0;
  v63[0] = 0x69662E6F65646976;
  v63[1] = 0xEA00000000006C6CLL;
  v63[2] = -1;
  v63[3] = v5;
  v64 = 0;
  v65 = 4;
  v66 = 0;
  v67 = 0;
  v6 = v5;
  outlined init with copy of SymbolImageDescription(v58, &v83);
  outlined destroy of SymbolImageDescription(v63);
  v7 = static UIImage.symbolImage(for:)(v58);
  outlined destroy of SymbolImageDescription(v58);
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  *(v1 + v4) = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView;
  LOBYTE(v83) = 0;
  v10 = objc_allocWithZone(type metadata accessor for ParticipantContactView());
  *(v1 + v9) = ParticipantContactView.init(colorStyle:)(&v83);
  v11 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton;
  v12 = type metadata accessor for InCallControlButton();
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  *(v1 + v11) = OUTLINED_FUNCTION_4_114(v12, &v83, v13, v14, v15, v16, v17, v18, 1);
  v19 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  OUTLINED_FUNCTION_13_6(v19);
  v20 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_cameraSymbolImage;
  LOBYTE(v78[0]) = 0;
  v53[0] = 0x69662E6F65646976;
  v53[1] = 0xEA00000000006C6CLL;
  v53[2] = -1;
  v53[3] = v6;
  v54 = 0;
  v55 = 4;
  v56 = 0;
  v57 = 0;
  v68[0] = 0x69662E6F65646976;
  v68[1] = 0xEA00000000006C6CLL;
  v68[2] = -1;
  v68[3] = v6;
  v69 = 0;
  v70 = 4;
  v71 = 0;
  v72 = 0;
  outlined init with copy of SymbolImageDescription(v53, &v83);
  outlined destroy of SymbolImageDescription(v68);
  v21 = static UIImage.symbolImage(for:)(v53);
  outlined destroy of SymbolImageDescription(v53);
  *(v1 + v20) = v21;
  v22 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_copresenceSymbolImage;
  LOBYTE(v78[0]) = 0;
  OUTLINED_FUNCTION_7_80();
  v48[0] = v23;
  v48[1] = v24;
  v48[2] = -1;
  v48[3] = v6;
  v49 = 0;
  v50 = 4;
  v51 = 0;
  v52 = 0;
  v73[0] = v23;
  v73[1] = v24;
  v73[2] = -1;
  v73[3] = v6;
  v74 = 0;
  v75 = 4;
  v76 = 0;
  v77 = 0;
  outlined init with copy of SymbolImageDescription(v48, &v83);
  outlined destroy of SymbolImageDescription(v73);
  v25 = static UIImage.symbolImage(for:)(v48);
  outlined destroy of SymbolImageDescription(v48);
  *(v1 + v22) = v25;
  v26 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_linkSymbolImage;
  v27 = *MEMORY[0x1E69DDD80];
  v43[0] = 1802398060;
  v43[1] = 0xE400000000000000;
  v43[2] = 1;
  v43[3] = v27;
  v44 = 0;
  v45 = 4;
  v46 = 0;
  v47 = 0;
  v78[0] = 1802398060;
  v78[1] = 0xE400000000000000;
  v78[2] = 1;
  v78[3] = v27;
  v79 = 0;
  v80 = 4;
  v81 = 0;
  v82 = 0;
  v28 = v27;
  outlined init with copy of SymbolImageDescription(v43, &v83);
  outlined destroy of SymbolImageDescription(v78);
  v29 = static UIImage.symbolImage(for:)(v43);
  outlined destroy of SymbolImageDescription(v43);
  *(v1 + v26) = v29;
  v30 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_messagesSymbolImage;
  v37[64] = 0;
  OUTLINED_FUNCTION_10_67();
  v38[0] = v31;
  v38[1] = v32;
  v38[2] = 1;
  v38[3] = v33;
  v39 = 0;
  v40 = 4;
  v41 = 0;
  v42 = 0;
  *&v83 = v31;
  *(&v83 + 1) = v32;
  *&v84 = 1;
  *(&v84 + 1) = v33;
  LOWORD(v85) = 0;
  v86 = 4;
  v87 = 0;
  v88 = 0;
  v34 = v33;
  outlined init with copy of SymbolImageDescription(v38, v37);
  outlined destroy of SymbolImageDescription(&v83);
  v35 = static UIImage.symbolImage(for:)(v38);
  outlined destroy of SymbolImageDescription(v38);
  *(v1 + v30) = v35;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews) = 0;
  v36 = (v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate);
  *v36 = 0;
  v36[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void InCallControlsParticipantCell.setEnabled(_:for:)(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    if (a1)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB22010](v5, a2);
      }

      else
      {
        v7 = *(a2 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      [v7 setEnabled_];
      [v8 setAlpha_];
    }

    while (v4 != v5);
  }
}

void closure #1 in InCallControlsParticipantCell.configure(with:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BB980;
    v9 = &v7[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate];
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *(v9 + 1);
      v39 = v10;
      v40 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37InCallControlsParticipantCellDelegate_pMd, &_s15ConversationKit37InCallControlsParticipantCellDelegate_pMR);
      v12 = String.init<A>(reflecting:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 64) = v16;
    *(v8 + 32) = v12;
    *(v8 + 40) = v14;
    v17 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
    v18 = *(a2 + *(v17 + 32));
    LOBYTE(v39) = *(a2 + *(v17 + 32));
    v19 = String.init<A>(reflecting:)();
    *(v8 + 96) = v15;
    *(v8 + 104) = v16;
    *(v8 + 72) = v19;
    *(v8 + 80) = v20;
    v21 = *(v17 + 20);
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 16))(v5, a2 + v21, v22);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v22);
    specialized >> prefix<A>(_:)(v5, v23, v24, v25, v26, v27, v28, v29, v37, v38, v39, v40, *v41, *&v41[8], *&v41[16], *v42, *&v42[8], *&v42[16]);
    v31 = v30;
    v37 = a2;
    v33 = v32;
    outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *(v8 + 136) = v15;
    *(v8 + 144) = v16;
    *(v8 + 112) = v31;
    *(v8 + 120) = v33;
    v34 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Calling InCallControlsParticipantCell delegate %@, to %@ %@", 59, 2, &dword_1BBC58000, v38, v34, v8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(v35 + 8))(v7, v18, v37 + v21, ObjectType, v35);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall InCallControlsParticipantCell.layoutSubviews()()
{
  v103.receiver = v0;
  v103.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v103, sel_layoutSubviews);
  v102.origin = xmmword_1BC4D8F30;
  v102.size = vdupq_n_s64(0x4042800000000000uLL);
  closure #2 in InCallControlsParticipantCell.layoutSubviews()(v0);
  v77 = v2;
  v78 = v1;
  v98 = v1;
  v99 = v3;
  v100 = v2;
  v101 = v4;
  v86 = v4;
  v5 = [v0 contentView];
  [v5 bounds];
  v7 = v6;

  v8 = [v0 contentView];
  [v8 bounds];
  v10 = v9;

  v81 = v10 + -10.0 + -32.0 + -32.0 + -26.0;
  v95 = v81;
  v96 = xmmword_1BC4D8F40;
  v97 = 0x4040000000000000;
  v11 = [v0 contentView];
  [v11 bounds];
  v13 = v12;

  v83 = v13 + -10.0 + -32.0;
  v92 = v83;
  v93 = xmmword_1BC4D8F40;
  v94 = 0x4040000000000000;
  closure #6 in InCallControlsParticipantCell.layoutSubviews()(&v102, v0);
  rect = v14;
  rect_8 = v15;
  rect_16 = v16;
  v17 = 0.0;
  v104.origin.x = 14.0;
  v104.origin.y = 0.0;
  v104.size.width = 37.0;
  v104.size.height = 37.0;
  v18 = CGRectGetMaxX(v104) + 12.0;
  v19 = *&v0[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon];
  v20 = [v19 image];
  v21 = 0.0;
  if (v20)
  {
    v22 = v20;
    [v20 size];
    v17 = v23;
    v21 = v24;
  }

  v75 = v7 + -10.0;
  v84 = v18;
  v85 = v17;
  v91.origin.x = v18;
  v91.origin.y = 0.0;
  v91.size.width = v17;
  v91.size.height = v21;
  rect_24 = v21;
  closure #8 in InCallControlsParticipantCell.layoutSubviews()(v0, &v91);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  InCallControlsParticipantCell.contentHeight.getter();
  v32 = v31 * 0.5;
  v33 = floor(v32 + -18.5);
  v34 = floor(v32 - v86 * 0.5);
  v35 = v32 + -16.0;
  v105.size.height = rect_8;
  v105.origin.y = floor(v32 - (rect_8 + v30) * 0.5);
  v105.origin.x = rect;
  y = v105.origin.y;
  v105.size.width = rect_16;
  v106.origin.y = CGRectGetMaxY(v105);
  v82 = v28;
  v106.origin.x = v26;
  v80 = v106.origin.y;
  v106.size.width = v28;
  v106.size.height = v30;
  MidY = CGRectGetMidY(v106);
  v36 = *&v0[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView];
  [v36 frame];
  v112.origin.x = 14.0;
  v112.origin.y = v33;
  v112.size.width = 37.0;
  v112.size.height = 37.0;
  if (!CGRectEqualToRect(v107, v112))
  {
    [v36 setFrame_];
  }

  v37 = v75 + -32.0;
  v38 = floor(v35);
  OUTLINED_FUNCTION_9_76(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton);
  v113.origin.x = v78;
  v113.origin.y = v34;
  v113.size.width = v77;
  v113.size.height = v86;
  if (!CGRectEqualToRect(v108, v113))
  {
    [v36 setFrame_];
  }

  OUTLINED_FUNCTION_0_159();
  v41 = InCallControlsParticipantCell.lmiApproveButton.getter(v39, v40);
  [v41 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  if (!OUTLINED_FUNCTION_8_81(v43, v45, v47, v49, v37))
  {
    [*&v0[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton] setFrame_];
  }

  [OUTLINED_FUNCTION_2_124(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton) frame];
  OUTLINED_FUNCTION_15_46();
  v50 = OUTLINED_FUNCTION_5_106();
  if (!OUTLINED_FUNCTION_8_81(v50, v51, v52, v53, v81))
  {
    OUTLINED_FUNCTION_6_88(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
  }

  OUTLINED_FUNCTION_1_129();
  v56 = InCallControlsParticipantCell.lmiApproveButton.getter(v54, v55);
  [v56 frame];
  OUTLINED_FUNCTION_15_46();
  v57 = OUTLINED_FUNCTION_5_106();
  if (!OUTLINED_FUNCTION_8_81(v57, v58, v59, v60, v83))
  {
    OUTLINED_FUNCTION_6_88(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton);
  }

  OUTLINED_FUNCTION_9_76(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel);
  v114.origin.x = rect;
  v114.origin.y = y;
  v114.size.width = rect_16;
  v114.size.height = rect_8;
  if (!CGRectEqualToRect(v109, v114))
  {
    [v56 setFrame_];
  }

  v61 = floor(MidY - rect_24 * 0.5);
  OUTLINED_FUNCTION_9_76(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel);
  v115.origin.x = v26;
  v115.origin.y = v80;
  v115.size.width = v82;
  v115.size.height = v30;
  if (!CGRectEqualToRect(v110, v115))
  {
    [v56 setFrame_];
  }

  [v19 frame];
  v116.origin.x = v84;
  v116.origin.y = v61;
  v116.size.width = v85;
  v116.size.height = rect_24;
  if (!CGRectEqualToRect(v111, v116))
  {
    [v19 setFrame_];
  }

  if ([v0 _shouldReverseLayoutDirection])
  {
    v62 = InCallControlsParticipantCell.contentViews.getter();
    v63 = specialized Array.count.getter();
    if (v63)
    {
      v64 = v63;
      if (v63 < 1)
      {
        __break(1u);
        return;
      }

      v65 = 0;
      do
      {
        if ((v62 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x1BFB22010](v65, v62);
        }

        else
        {
          v66 = *(v62 + 8 * v65 + 32);
        }

        v67 = v66;
        ++v65;
        v68 = [v0 contentView];
        [v68 bounds];
        v70 = v69;

        [v67 frame];
        v72 = v70 - v71;
        [v67 frame];
        v74 = v72 - v73;
        [v67 frame];
        [v67 setFrame_];
      }

      while (v64 != v65);
    }
  }
}

void closure #2 in InCallControlsParticipantCell.layoutSubviews()(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton];
  v2 = *&v1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
  if (v2)
  {
    v4 = v2;
    [v4 intrinsicContentSize];
    v5 = [v4 font];
    if (v5)
    {
      v6 = v5;
      [v5 lineHeight];

      v7 = [a1 contentView];
      [v7 bounds];

      return;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(52);
  MEMORY[0x1BFB20B10](0xD000000000000032, 0x80000001BC50F4C0);
  type metadata accessor for InCallControlButton();
  v8 = v1;
  v9 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v9);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id closure #6 in InCallControlsParticipantCell.layoutSubviews()(CGRect *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRectGetMaxX(*a1);
  result = [*&a2[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel] font];
  if (result)
  {
    v11 = result;
    [result lineHeight];

    v12 = &a2[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel];
    swift_beginAccess();
    __swift_getEnumTagSinglePayload(v12, 1, v7);
    outlined init with copy of InCallControlsParticipantCellViewModel?(v12, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      return outlined destroy of CallControlsService?(v6, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
    }

    else
    {
      outlined init with take of InCallControlsParticipantCellViewModel(v6, v9);
      if (v9[*(v7 + 32)] == 4)
      {
        v13 = [a2 contentView];
        [v13 bounds];
      }

      return outlined destroy of InCallControlsParticipantCellViewModel(v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #8 in InCallControlsParticipantCell.layoutSubviews()(char *a1, CGRect *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&a1[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon] alpha];
  if (v11 >= 0.5)
  {
    CGRectGetMaxX(*a2);
  }

  v12 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
  swift_beginAccess();
  outlined init with copy of InCallControlsParticipantCellViewModel?(&a1[v12], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  }

  else
  {
    outlined init with take of InCallControlsParticipantCellViewModel(v6, v10);
    if (v10[*(v7 + 32)] == 4)
    {
      v13 = [a1 contentView];
      [v13 bounds];
    }

    outlined destroy of InCallControlsParticipantCellViewModel(v10);
  }

  if ((InCallControlsParticipantCell.isSubtitleHidden.getter() & 1) == 0)
  {
    v14 = [*&a1[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel] font];
    if (v14)
    {
      v15 = v14;
      [v14 lineHeight];
    }

    else
    {
      __break(1u);
    }
  }
}

void InCallControlsParticipantCell.contentHeight.getter()
{
  swift_getObjectType();
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
  swift_beginAccess();
  v2 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) || *(v1 + *(v2 + 60)) != 1)
  {
    static InCallControlsParticipantCell.defaultContentHeight.getter();
  }

  else
  {
    static InCallControlsParticipantCell.extendedContentHeight.getter();
  }
}

UICollectionViewLayoutAttributes __swiftcall InCallControlsParticipantCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_preferredLayoutAttributesFittingAttributes_, a1.super.isa);
  InCallControlsParticipantCell.contentHeight.getter();
  [v3 bounds];
  [v3 setBounds_];
  return v3;
}

char *closure #1 in InCallControlsParticipantCell.inCallControlButton(for:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
    swift_beginAccess();
    outlined init with copy of InCallControlsParticipantCellViewModel?(&v14[v15], v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {

      return outlined destroy of CallControlsService?(v9, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMR);
    }

    else
    {
      HIDWORD(v45) = a3;
      outlined init with take of InCallControlsParticipantCellViewModel(v9, v12);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BC4BB980;
      v17 = &v14[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = *(v17 + 1);
        v46 = Strong;
        v47 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37InCallControlsParticipantCellDelegate_pMd, &_s15ConversationKit37InCallControlsParticipantCellDelegate_pMR);
        v20 = String.init<A>(reflecting:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      v23 = MEMORY[0x1E69E6158];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v24 = lazy protocol witness table accessor for type String and conformance String();
      *(v16 + 64) = v24;
      *(v16 + 32) = v20;
      *(v16 + 40) = v22;
      LOBYTE(v46) = BYTE4(v45);
      v25 = String.init<A>(reflecting:)();
      *(v16 + 96) = v23;
      *(v16 + 104) = v24;
      *(v16 + 72) = v25;
      *(v16 + 80) = v26;
      v27 = *(v10 + 20);
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 16))(v6, &v12[v27], v28);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v28);
      specialized >> prefix<A>(_:)(v6, v29, v30, v31, v32, v33, v34, v35, v43, v44, v45, v46, v47, *v48, *&v48[8], *&v48[16], *v49, *&v49[8]);
      v37 = v36;
      v39 = v38;
      outlined destroy of CallControlsService?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      *(v16 + 136) = v23;
      *(v16 + 144) = v24;
      *(v16 + 112) = v37;
      *(v16 + 120) = v39;
      v40 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Calling InCallControlsParticipantCell delegate %@, to %@ %@", 59, 2, &dword_1BBC58000, v44, v40, v16);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        (*(v41 + 8))(v14, HIDWORD(v45), &v12[v27], ObjectType, v41);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return outlined destroy of InCallControlsParticipantCellViewModel(v12);
    }
  }

  return result;
}

void static InCallControlsParticipantCell.extendedContentHeight.getter()
{
  if (byte_1EBCB1700)
  {
    static InCallControlsParticipantCell.cellHeight(for:)();
  }

  else
  {
    v0 = static InCallControlsParticipantCell._extendedContentHeight;
  }

  static InCallControlsParticipantCell._extendedContentHeight = v0;
  byte_1EBCB1700 = 0;
}

void static InCallControlsParticipantCell.defaultContentHeight.getter()
{
  if (byte_1EBCB16F0)
  {
    static InCallControlsParticipantCell.cellHeight(for:)();
  }

  else
  {
    v0 = static InCallControlsParticipantCell._defaultContentHeight;
  }

  static InCallControlsParticipantCell._defaultContentHeight = v0;
  byte_1EBCB16F0 = 0;
}

void static InCallControlsParticipantCell.cellHeight(for:)()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  [(objc_class *)isa lineHeight];
  v3 = [v0 preferredFontForTextStyle_];
  [v3 lineHeight];
}

id InCallControlsParticipantCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double outlined consume of InCallControlsParticipantCellViewModel.SubtitleState(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t outlined init with take of InCallControlsParticipantCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in InCallControlsParticipantCell.configure(with:)()
{
  v1 = *(type metadata accessor for InCallControlsParticipantCellViewModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in InCallControlsParticipantCell.configure(with:)(v2, v3);
}

uint64_t outlined destroy of InCallControlsParticipantCellViewModel(uint64_t a1)
{
  v2 = type metadata accessor for InCallControlsParticipantCellViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InCallControlsParticipantCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallControlsParticipantCell;
  if (!type metadata singleton initialization cache for InCallControlsParticipantCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InCallControlsParticipantCell(uint64_t a1)
{
  type metadata accessor for InCallControlsParticipantCellViewModel?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for InCallControlsParticipantCellViewModel?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InCallControlsParticipantCellViewModel?)
  {
    type metadata accessor for InCallControlsParticipantCellViewModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InCallControlsParticipantCellViewModel?);
    }
  }
}

ConversationKit::PersonalNicknameMenuViewDisplayContext_optional __swiftcall PersonalNicknameMenuViewDisplayContext.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PersonalNicknameMenuViewDisplayContext@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalNicknameMenuViewDisplayContext.rawValue.getter();
  *a1 = result;
  return result;
}

void PersonalNicknameMenuView.personalNickname.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname);
  if (v1)
  {
    v2 = v0;
    v27 = v1;
    v3 = PersonalNicknameMenuView.nameLabel.getter();
    type metadata accessor for NameAndPhotoUtilities();
    v4 = static NameAndPhotoUtilities.formattedDisplayName(for:)(v27);
    outlined bridged method (mbnn) of @objc UILabel.text.setter(v4, v5, v3);

    v6 = [v27 avatar];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 imageData];

      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [objc_opt_self() mainScreen];
      [v12 scale];
      v14 = v13;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      outlined copy of Data._Representation(v9, v11);
      v15 = UIImage.__allocating_init(data:scale:)(v9, v11, v14);
      isa = PersonalNicknameMenuView.leadingAvatarView.getter();
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        [v17 setImage_];
      }

      else
      {

        v18 = PersonalNicknameMenuView.containerStackView.getter();
        v19 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView;
        [v18 removeArrangedSubview_];

        v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
        v21 = *(v2 + v19);
        *(v2 + v19) = v20;
        v22 = v20;

        [v22 setTranslatesAutoresizingMaskIntoConstraints_];
        [*(v2 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___containerStackView) insertArrangedSubview:*(v2 + v19) atIndex:0];
        v23 = objc_opt_self();
        PersonalNicknameMenuView.generateLeadingAvatarConstraints()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v23 activateConstraints_];
      }

      v24 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView;
      v25 = [*(v2 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView) layer];
      [v25 setCornerRadius_];

      v26 = [*(v2 + v24) layer];
      [v26 setMasksToBounds_];

      outlined consume of Data._Representation(v9, v11);
    }

    else
    {
    }
  }
}

id UIImage.__allocating_init(data:scale:)(uint64_t a1, unint64_t a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa scale:a3];

  outlined consume of Data._Representation(a1, a2);
  return v8;
}

void PersonalNicknameMenuView.personalNickname.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname);
  *(v1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname) = a1;
  v3 = a1;

  PersonalNicknameMenuView.personalNickname.didset();
}

id PersonalNicknameMenuView.contactStore.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore);
  }

  else
  {
    v4 = closure #1 in PersonalNicknameMenuView.contactStore.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in PersonalNicknameMenuView.contactStore.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
  }

  else
  {
    v5 = TUPreferredFaceTimeBundleIdentifier();
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v6;
  }

  v7 = objc_opt_self();
  v8 = MEMORY[0x1BFB209B0](v3, v4);

  v9 = [v7 tu:v8 contactStoreConfigurationForBundleIdentifier:?];

  v10 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  return v10;
}

id PersonalNicknameMenuView.meContact.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___meContact;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___meContact);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in PersonalNicknameMenuView.meContact.getter();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    outlined consume of IMAccount??(v4);
  }

  outlined copy of IMAccount??(v2);
  return v3;
}

id closure #1 in PersonalNicknameMenuView.meContact.getter()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v0 = PersonalNicknameMenuView.contactStore.getter();
  isa = [objc_opt_self() keysForNicknameHandling];
  if (!isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v15[0] = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v3 = v15[0];
  if (!v2)
  {
    v4 = v3;
    v5 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.nickname);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Could not fetch me card %@", v10, 0xCu);
      outlined destroy of TapInteractionHandler?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

id closure #1 in PersonalNicknameMenuView.leadingAvatarView.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 avatar];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 imageData];

      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = [objc_opt_self() mainScreen];
      [v9 scale];
      v11 = v10;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      outlined copy of Data._Representation(v6, v8);
      v12 = UIImage.__allocating_init(data:scale:)(v6, v8, v11);
      v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      v14 = [v13 layer];
      [v14 setCornerRadius_];

      v15 = [v13 layer];
      [v15 setMasksToBounds_];

      outlined consume of Data._Representation(v6, v8);
      return v13;
    }

    else
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
      v21 = [v2 firstName];
      if (!v21)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = MEMORY[0x1BFB209B0](v22);
      }

      [v20 setGivenName_];

      v23 = [v2 lastName];
      if (!v23)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = MEMORY[0x1BFB209B0](v24);
      }

      [v20 setFamilyName_];

      v25 = [objc_allocWithZone(MEMORY[0x1E695D0C0]) initWithContact_];
      return v25;
    }
  }

  else
  {
    v17 = PersonalNicknameMenuView.meContact.getter();
    if (v17)
    {
      v18 = v17;
      v19 = [objc_allocWithZone(MEMORY[0x1E695D0C0]) initWithContact_];

      return v19;
    }

    else
    {
      v26 = objc_allocWithZone(MEMORY[0x1E69DD250]);

      return [v26 init];
    }
  }
}

id closure #1 in PersonalNicknameMenuView.nameLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v4 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  v5 = *(a1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname);
  if (v5)
  {
    type metadata accessor for NameAndPhotoUtilities();
    v6 = v5;
    v7 = static NameAndPhotoUtilities.formattedDisplayName(for:)(v6);
    outlined bridged method (mbnn) of @objc UILabel.text.setter(v7, v8, v2);
LABEL_8:

    return v2;
  }

  v9 = PersonalNicknameMenuView.meContact.getter();
  if (v9)
  {
    v10 = v9;
    v11 = outlined bridged method (pb) of @objc CNContact.displayName.getter(v9);
    if (v12)
    {
      v6 = MEMORY[0x1BFB209B0](v11);
    }

    else
    {
      v6 = 0;
    }

    [v2 setText_];

    goto LABEL_8;
  }

  return v2;
}

id closure #1 in PersonalNicknameMenuView.subtitleLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  if (*(a1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_displayContext) == 2)
  {
    v5 = [objc_opt_self() conversationKit];
    v13 = 0xE000000000000000;
    v6 = 0x80000001BC50F8A0;
    v7 = 0xD000000000000014;
  }

  else
  {
    v5 = [objc_opt_self() conversationKit];
    v13 = 0xE000000000000000;
    v7 = 0x50202620656D614ELL;
    v6 = 0xEC0000006F746F68;
  }

  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, v8, v5, v9, *(&v13 - 1));

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v11._countAndFlagsBits, v11._object, v2);
  return v2;
}

void *closure #1 in PersonalNicknameMenuView.labelStackView.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView, 0x1E69DCF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA930;
  *(v0 + 32) = PersonalNicknameMenuView.nameLabel.getter();
  *(v0 + 40) = PersonalNicknameMenuView.subtitleLabel.getter();
  UIStackView.__allocating_init(arrangedSubviews:)(v1, v0);
  v3 = v2;
  [v2 setAxis_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  return v3;
}

id PersonalNicknameMenuView.leadingAvatarView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

void *closure #1 in PersonalNicknameMenuView.containerStackView.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView, 0x1E69DCF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA930;
  *(v0 + 32) = PersonalNicknameMenuView.leadingAvatarView.getter();
  *(v0 + 40) = PersonalNicknameMenuView.labelStackView.getter();
  UIStackView.__allocating_init(arrangedSubviews:)(v1, v0);
  v3 = v2;
  [v2 setAxis_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  return v3;
}

id PersonalNicknameMenuView.tapRecognizer.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer;
  v3 = *&v1[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer];
  }

  else
  {
    v5 = v1;
    v11[3] = type metadata accessor for PersonalNicknameMenuView();
    v11[0] = v1;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v6 = v1;
    v7 = @nonobjc UITapGestureRecognizer.init(target:action:)(v11, sel_didTapWithSender_);
    v8 = *&v1[v2];
    *&v5[v2] = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

char *PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___meContact] = 1;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___nameLabel] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___subtitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___labelStackView] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___containerStackView] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNicknameMenuViewDelegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_displayContext] = v5;
  *(v6 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v11.receiver = v3;
  v11.super_class = type metadata accessor for PersonalNicknameMenuView();
  v7 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  specialized PersonalNicknameMenuView.getPersonalNickname(completion:)(v7, v7);
  PersonalNicknameMenuView.setupConstraints()();
  v9 = PersonalNicknameMenuView.tapRecognizer.getter(v8);
  [v7 addGestureRecognizer_];

  swift_unknownObjectRelease();
  return v7;
}

id PersonalNicknameMenuView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PersonalNicknameMenuView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___meContact) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___labelStackView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___containerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNicknameMenuViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PersonalNicknameMenuView.setupConstraints()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA920;
  *(inited + 32) = PersonalNicknameMenuView.leadingAvatarView.getter();
  *(inited + 40) = PersonalNicknameMenuView.nameLabel.getter();
  *(inited + 48) = PersonalNicknameMenuView.subtitleLabel.getter();
  *(inited + 56) = PersonalNicknameMenuView.labelStackView.getter();
  *(inited + 64) = PersonalNicknameMenuView.containerStackView.getter();
  v3 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v4 = *(inited + 32);
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_12_62(v5);

  OUTLINED_FUNCTION_11_77(1);
  if (v3)
  {
    MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v6 = *(inited + 40);
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_12_62(v7);

  OUTLINED_FUNCTION_11_77(2);
  if (v3)
  {
    MEMORY[0x1BFB22010](2, inited);
  }

  else
  {
    v8 = *(inited + 48);
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_12_62(v9);

  OUTLINED_FUNCTION_11_77(3);
  if (v3)
  {
    MEMORY[0x1BFB22010](3, inited);
  }

  else
  {
    v10 = *(inited + 56);
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_12_62(v11);

  OUTLINED_FUNCTION_11_77(4);
  if (v3)
  {
    v12 = MEMORY[0x1BFB22010](4, inited);
  }

  else
  {
    v12 = *(inited + 64);
  }

  v13 = v12;

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___containerStackView;
  [v0 addSubview_];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BA7F0;
  v16 = [*&v0[v14] topAnchor];
  v17 = [v0 topAnchor];
  v18 = OUTLINED_FUNCTION_10_68();

  *(v15 + 32) = v18;
  v19 = [*&v0[v14] bottomAnchor];
  v20 = OUTLINED_FUNCTION_7_81([v0 bottomAnchor]);

  *(v15 + 40) = v20;
  v21 = [*&v0[v14] leadingAnchor];
  v22 = [v0 leadingAnchor];
  v23 = OUTLINED_FUNCTION_10_68();

  *(v15 + 48) = v23;
  v24 = [*&v0[v14] trailingAnchor];
  v25 = OUTLINED_FUNCTION_7_81([v0 trailingAnchor]);

  *(v15 + 56) = v25;
  v29 = v15;
  v26 = PersonalNicknameMenuView.generateLeadingAvatarConstraints()();
  specialized Array.append<A>(contentsOf:)(v26);
  v27 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];
}

uint64_t PersonalNicknameMenuView.generateLeadingAvatarConstraints()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA930;
  v2 = PersonalNicknameMenuView.leadingAvatarView.getter();
  v3 = [v2 heightAnchor];

  v4 = [v3 constraintEqualToConstant_];
  *(v1 + 32) = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView) widthAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *(v1 + 40) = v6;
  return v1;
}

Swift::Void __swiftcall PersonalNicknameMenuView.didTap(sender:)(UITapGestureRecognizer *sender)
{
  v2 = v1;
  if (one-time initialization token for nickname != -1)
  {
    OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.nickname);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_27();
  }

  v11 = v2 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNicknameMenuViewDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(ObjectType, v12);

    swift_unknownObjectRelease();
  }
}