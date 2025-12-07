uint64_t sub_10048E0A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100785238);
  v1 = sub_100003E30(v0, qword_100785238);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10048E16C(uint64_t *a1, void **a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v101 = a5;
  v102 = a6;
  v106 = a4;
  v96 = a2;
  v111 = a1;
  v6 = type metadata accessor for TTRRemindersListLayout();
  v104 = *(v6 - 8);
  v105 = v6;
  __chkstk_darwin(v6);
  v92 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v108 = &v90 - v9;
  __chkstk_darwin(v10);
  v91 = &v90 - v11;
  __chkstk_darwin(v12);
  v103 = &v90 - v13;
  v14 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v14 - 8);
  v99 = (&v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v97 = &v90 - v17;
  v98 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v98);
  v112 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TTRPublicTemplateFallbackProperties();
  v95 = *(v100 - 1);
  __chkstk_darwin(v100);
  v94 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for TTRRemindersListDefaultListType();
  v20 = *(v93 - 8);
  __chkstk_darwin(v93);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v23 - 8);
  v25 = (&v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v90 - v31;
  sub_100058000(&qword_10076C210, qword_100640CA0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10062D400;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v119[0] = v33;
  sub_10048EE28(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v96;
  sub_10010BD5C(v96, v25, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v109 = v27;
  v110 = v26;
  v35 = *(v27 + 16);
  v107 = v32;
  v35(v29, v32, v26);
  (*(v20 + 104))(v22, enum case for TTRRemindersListDefaultListType.any(_:), v93);
  v36 = sub_10007786C(v25, v29, v22, v119);
  v37 = *v34;
  v38 = v34;
  (*(v95 + 16))(v94, v101, v100, v36);
  type metadata accessor for TTRShowPublicTemplateDataModelSource();
  swift_allocObject();
  v39 = v37;
  v40 = v106;
  v41 = TTRShowPublicTemplateDataModelSource.init(store:publicTemplateObjectID:fallbackProperties:)();
  v42 = v119[0];
  type metadata accessor for TTRShowPublicTemplateViewModelSource(0);
  v43 = swift_allocObject();

  v100 = v42;
  v44 = sub_10010BAA8(1, v41, v100, v43);
  sub_10010BD5C(v38, v25, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v119, v116);
  v45 = sub_10048EE28(&qword_10076C228, type metadata accessor for TTRShowPublicTemplateViewModelSource, &unk_100646FD0);
  v46 = v112;
  sub_10010BD5C(v25, v112, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v47 = v98;
  sub_10010BCAC(v116, v46 + *(v98 + 28));
  v48 = (v46 + *(v47 + 32));
  v49 = v46;
  *v48 = v44;
  v48[1] = v45;
  v50 = v116[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v118, v115, &qword_100769608, &unk_1006302F0);
  v52 = *(v115[5] + 8);
  *(v51 + 32) = v115[4];
  *(v51 + 40) = v52;
  sub_10000794C(&v117, v113, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v53 = v50;
  swift_unknownObjectRelease();
  *(v51 + 48) = v114;
  sub_100004758(v113);
  sub_100004758(v115);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v54 = swift_allocObject();
  v55 = sub_1003A8DE0(v53, v44, v51, v54);
  v101 = v44;

  sub_10010BD08(v116);
  sub_10010BE0C(v25, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v56 = *(v47 + 36);
  v96 = v55;
  *(v49 + v56) = v55;
  v57 = v97;
  sub_100078BBC(v97);
  v98 = type metadata accessor for TTRIShowPublicTemplatePreviewPresenter(0);
  v58 = swift_allocObject();
  v59 = (v58 + OBJC_IVAR____TtC9Reminders38TTRIShowPublicTemplatePreviewPresenter_dataModelSource);
  *v59 = v41;
  v59[1] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
  v60 = v99;
  sub_10010BD5C(v57, v99, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v106 = v41;

  v61 = v102;
  swift_unknownObjectRetain();
  v62 = sub_1003A5740(v60, v61, v58);
  sub_10010BE0C(v57, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v63 = *(v62 + 144);
  ObjectType = swift_getObjectType();
  v65 = *(v63 + 112);

  if (v65(ObjectType, v63))
  {
    swift_getObjectType();
    v66 = v91;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v67 = v103;
    v68 = v104;
    v69 = v105;
    (*(v104 + 32))(v103, v66, v105);
  }

  else
  {
    v67 = v103;
    v68 = v104;
    v69 = v105;
    (*(v104 + 104))(v103, enum case for TTRRemindersListLayout.list(_:), v105);
  }

  v102 = sub_1003A4A1C(v67, v62);
  v103 = v70;
  v72 = v71;
  v74 = v73;
  (*(v68 + 8))(v67, v69);
  v104 = swift_getObjectType();
  v105 = v72;
  *(v62 + 24) = *(v74 + 8);
  swift_unknownObjectWeakAssign();
  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v99 = 0;
    v97 = 0;
  }

  else
  {
    v99 = static TTRLocalizableStrings.Common.continueButton.getter();
    v97 = v75;
  }

  v76 = *(v62 + 144);
  v77 = swift_getObjectType();
  v78 = *(v76 + 112);

  if (v78(v77, v76))
  {
    swift_getObjectType();
    v79 = v92;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v80 = v108;
    (*(v68 + 32))(v108, v79, v69);
  }

  else
  {

    v80 = v108;
    (*(v68 + 104))(v108, enum case for TTRRemindersListLayout.list(_:), v69);
  }

  v81 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v82 = v102;
  v83 = sub_1003A8E48(v62, v82, v103, v80, v99, v97, 0, v81);

  v84 = *(v74 + 32);
  v85 = v83;
  v84(v83, &off_100723D78, v104, v74);
  sub_10048EE28(&qword_1007852F0, type metadata accessor for TTRIShowPublicTemplatePreviewPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10048EE28(&qword_10076C240, type metadata accessor for TTRShowPublicTemplateViewModelSource, &unk_10063C338);

  dispatch thunk of TTRShowPublicTemplateDataModelSource.delegate.setter();

  sub_10056FEB0(v86, &off_10071A9B0);

  v96[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v120, v116, &qword_100769600, &qword_10062E0A0);
  v87 = v116[4];
  swift_unknownObjectRelease();
  *(v87 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v116);
  sub_10000794C(&v121, v116, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_10048EE28(&qword_1007852F8, type metadata accessor for TTRIShowPublicTemplatePreviewPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v116);
  dispatch thunk of TTRShowPublicTemplateDataModelSource.start()();
  v88 = v111;
  v111[3] = v98;
  v88[4] = &off_100733A08;

  swift_unknownObjectRelease();
  *v88 = v62;
  (*(v109 + 8))(v107, v110);
  sub_10010BE0C(v112, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v119);
  return v85;
}

uint64_t sub_10048EE28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10048EE70(uint64_t a1)
{
  v3 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_100058000(&qword_100785438, &qword_100640D80);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  swift_beginAccess();
  v15 = *(v11 + 56);
  v21 = a1;
  sub_1004933FC(a1, v13);
  sub_1004933FC(v1 + v14, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_1000079B4(v13, &unk_10077FBB0, &unk_1006374D0);
    }

    goto LABEL_6;
  }

  sub_1004933FC(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_1000079B4(v13, &qword_100785438, &qword_100640D80);
LABEL_7:
    swift_beginAccess();
    sub_1004938D8(v21, v1 + v14);
    swift_endAccess();
    return [v1 setNeedsUpdateConfiguration];
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_100493948(&qword_100785440, &protocol conformance descriptor for TTRTemplatesListViewModel.Template);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_1000079B4(v13, &unk_10077FBB0, &unk_1006374D0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10048F1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v7 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v4 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider);
  v19 = *(v4 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider);
  v20 = *(v4 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider + 8);
  *v18 = a2;
  v18[1] = a3;
  sub_10008E7F0(v19, v20);

  sub_10049278C(&OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___infoButton, sub_1004910BC);
  (*(v11 + 16))(v13, v23[0], v10);
  v21 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_10048F5C4(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  __chkstk_darwin(v6 - 8);
  v8 = v13 - v7;
  if (qword_100767348 != -1)
  {
    swift_once();
  }

  v9 = qword_100785300;
  sub_1004933FC(a1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v10 = v9;
    sub_1000079B4(v8, &unk_10077FBB0, &unk_1006374D0);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_100493948(&unk_100785428, &protocol conformance descriptor for TTRTemplatesListViewModel.Template);
    v11 = v9;
    AnyHashable.init<A>(_:)();
  }

  UICellConfigurationState.subscript.setter();
  return sub_1000079B4(a1, &unk_10077FBB0, &unk_1006374D0);
}

void sub_10048F7DC(uint64_t a1)
{
  v3 = sub_100058000(&unk_100785400, &unk_100640D60);
  __chkstk_darwin(v3 - 8);
  v75 = &v70 - v4;
  v5 = type metadata accessor for TTRListDetailBadgeViewModel();
  v84 = *(v5 - 8);
  __chkstk_darwin(v5);
  v87 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for BadgeContainerView.ViewModel(0);
  __chkstk_darwin(v76);
  v77 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TTRTemplatePublicLinkData();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  __chkstk_darwin(v9 - 8);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v70 - v12;
  __chkstk_darwin(v13);
  v15 = &v70 - v14;
  __chkstk_darwin(v16);
  v18 = &v70 - v17;
  __chkstk_darwin(v19);
  v21 = &v70 - v20;
  v22 = type metadata accessor for UIListContentConfiguration();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v70 - v27;
  v86 = v1;
  sub_100490364();
  static UIListContentConfiguration.subtitleCell()();
  v29 = type metadata accessor for UICellConfigurationState();
  v91 = v29;
  v92 = &protocol witness table for UICellConfigurationState;
  v30 = sub_1000317B8(&v90);
  (*(*(v29 - 8) + 16))(v30, a1, v29);
  UIListContentConfiguration.updated(for:)();
  v79 = v23;
  v31 = *(v23 + 8);
  v73 = v23 + 8;
  v72 = v31;
  v31(v25, v22);
  sub_100004758(&v90);
  if (qword_100767348 != -1)
  {
    swift_once();
  }

  UICellConfigurationState.subscript.getter();
  if (v91)
  {
    v32 = type metadata accessor for TTRTemplatesListViewModel.Template();
    v33 = swift_dynamicCast();
    (*(*(v32 - 8) + 56))(v21, v33 ^ 1u, 1, v32);
  }

  else
  {
    sub_1000079B4(&v90, &unk_100785410, &unk_100640D70);
    v32 = type metadata accessor for TTRTemplatesListViewModel.Template();
    (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  }

  v89 = v21;
  sub_1004933FC(v21, v18);
  type metadata accessor for TTRTemplatesListViewModel.Template();
  v34 = *(v32 - 8);
  v88 = *(v34 + 48);
  v35 = v88(v18, 1, v32);
  v78 = v5;
  v85 = v34;
  if (v35 == 1)
  {
    sub_1000079B4(v18, &unk_10077FBB0, &unk_1006374D0);
  }

  else
  {
    TTRTemplatesListViewModel.Template.name.getter();
    (*(v34 + 8))(v18, v32);
  }

  UIListContentConfiguration.text.setter();
  v36 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  static UIFont.roundedBodyFont.getter();
  v37 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v37(&v90, 0);
  v38 = v86;
  sub_1004907BC();
  UIListContentConfiguration.image.setter();
  sub_1004933FC(v89, v15);
  if (v88(v15, 1, v32) == 1)
  {
    sub_1000079B4(v15, &unk_10077FBB0, &unk_1006374D0);
  }

  else
  {
    v71 = v22;
    v39 = v80;
    TTRTemplatesListViewModel.Template.publicLinkData.getter();
    (*(v85 + 8))(v15, v32);
    sub_100058000(&unk_100776BD0, &unk_100632860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D3F0;
    *(inited + 32) = NSForegroundColorAttributeName;
    v41 = objc_opt_self();
    v42 = NSForegroundColorAttributeName;
    v43 = [v41 secondaryLabelColor];
    v44 = sub_100003540(0, &qword_100772610, UIColor_ptr);
    *(inited + 40) = v43;
    *(inited + 64) = v44;
    *(inited + 72) = NSFontAttributeName;
    v45 = NSFontAttributeName;
    v46 = static UIFont.roundedFootnoteFont.getter();
    *(inited + 104) = v36;
    *(inited + 80) = v46;
    v47 = sub_100460A28(inited);
    swift_setDeallocating();
    sub_100058000(&unk_100776BE0, &unk_10062D7F0);
    v38 = v86;
    swift_arrayDestroy();
    TTRTemplatePublicLinkData.attributedStatusText(baseAttributes:forAccessibility:)(v47, 0);

    v48 = v39;
    v22 = v71;
    (*(v81 + 8))(v48, v82);
  }

  v49 = v84;
  UIListContentConfiguration.secondaryAttributedText.setter();
  v50 = *(v38 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView);
  v51 = v83;
  if (!v50)
  {
    __break(1u);
    goto LABEL_23;
  }

  v91 = v22;
  v92 = &protocol witness table for UIListContentConfiguration;
  v52 = sub_1000317B8(&v90);
  (*(v79 + 16))(v52, v28, v22);
  v53 = v50;
  UIListContentView.configuration.setter();

  v54 = *(v38 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView);
  if (!v54)
  {
LABEL_23:
    __break(1u);
    return;
  }

  sub_1004933FC(v89, v51);
  v55 = v88(v51, 1, v32);
  v56 = v54;
  if (v55 == 1)
  {
    sub_1000079B4(v51, &unk_10077FBB0, &unk_1006374D0);
    v57 = v75;
    v58 = v78;
    (*(v49 + 56))(v75, 1, 1, v78);
    TTRListDetailBadgeViewModel.init()();
    v59 = (*(v49 + 48))(v57, 1, v58);
    v60 = v74;
    if (v59 != 1)
    {
      sub_1000079B4(v57, &unk_100785400, &unk_100640D60);
    }
  }

  else
  {
    v61 = v51;
    v62 = v28;
    v63 = v22;
    v64 = v75;
    TTRTemplatesListViewModel.Template.badge.getter();
    (*(v85 + 8))(v61, v32);
    v58 = v78;
    (*(v49 + 56))(v64, 0, 1, v78);
    v65 = v64;
    v22 = v63;
    v28 = v62;
    (*(v49 + 32))(v87, v65, v58);
    v60 = v74;
  }

  sub_1004933FC(v89, v60);
  if (v88(v60, 1, v32) == 1)
  {
    sub_1000079B4(v60, &unk_10077FBB0, &unk_1006374D0);
    v66 = 0;
  }

  else
  {
    v67 = v80;
    TTRTemplatesListViewModel.Template.publicLinkData.getter();
    (*(v85 + 8))(v60, v32);
    v66 = TTRTemplatePublicLinkData.hasPublicLink.getter();
    (*(v81 + 8))(v67, v82);
  }

  v68 = v77;
  v69.n128_f64[0] = (*(v49 + 32))(v77, v87, v58);
  *(v68 + *(v76 + 20)) = v66 & 1;
  sub_100490898(v68, v69);

  sub_10049346C(v68);
  sub_100490A90();
  sub_100490E84();
  v72(v28, v22);
  sub_1000079B4(v89, &unk_10077FBB0, &unk_1006374D0);
}

void sub_100490364()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView;
  if (!*&v0[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView])
  {
    sub_100003540(0, &qword_100785420, UIListContentView_ptr);
    static UIListContentConfiguration.subtitleCell()();
    v4 = UIListContentView.init(configuration:)();
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v1 contentView];
    [v5 addSubview:v4];

    v6 = [objc_allocWithZone(type metadata accessor for BadgeContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v1 contentView];
    [v7 addSubview:v6];

    v8 = *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView];
    *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView] = v4;
    v9 = v4;

    v10 = *&v1[v3];
    *&v1[v3] = v6;
    v11 = v6;

    v12 = objc_opt_self();
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100634FC0;
    v14 = [v9 topAnchor];
    v15 = [v1 contentView];
    v16 = [v15 topAnchor];

    v17 = [v14 constraintEqualToAnchor:v16];
    *(v13 + 32) = v17;
    v18 = [v9 leadingAnchor];
    v19 = [v1 contentView];
    v20 = [v19 leadingAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v13 + 40) = v21;
    v22 = [v9 bottomAnchor];
    v23 = [v1 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    *(v13 + 48) = v25;
    v26 = [v9 trailingAnchor];
    v27 = [v1 contentView];
    v28 = [v27 trailingAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    *(v13 + 56) = v29;
    v30 = [v9 heightAnchor];

    v31 = [v30 constraintGreaterThanOrEqualToConstant:56.0];
    *(v13 + 64) = v31;
    sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 activateConstraints:isa];
  }
}

id sub_1004907BC()
{
  v1 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge);
  }

  else
  {
    v4 = v0;
    sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
    v5 = [objc_opt_self() clearColor];
    v6 = static UIImage.image(color:size:)();

    v7 = [v6 imageWithRenderingMode:1];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100490898(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for BadgeContainerView.ViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = objc_opt_self();
  sub_1004934C8(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_10049352C(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100493590;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100068444;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072AB50;
  v11 = _Block_copy(aBlock);
  v12 = v2;

  [v7 performWithoutAnimation:v11];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_100490A90()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView);
  if (!v1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v2 = [v1 imageLayoutGuide];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints;
  v5 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints);
  if (v5)
  {
    v33 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints;
    if (v5 >> 62)
    {
LABEL_27:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v10 = [v8 isActive];

      ++v7;
      if ((v10 & 1) == 0)
      {
        v11 = objc_opt_self();
        sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v11 deactivateConstraints:isa];

        v4 = v33;
        *(v0 + v33) = 0;

        goto LABEL_17;
      }
    }

    goto LABEL_22;
  }

LABEL_17:
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D450;
  v14 = [v3 topAnchor];
  v15 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView;
  v16 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView);
  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = [v16 topAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v13 + 32) = v18;
  v19 = [v3 leadingAnchor];
  v20 = *(v0 + v15);
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = [v20 leadingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];

  *(v13 + 40) = v22;
  v23 = [v3 bottomAnchor];
  v24 = *(v0 + v15);
  if (!v24)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = [v24 bottomAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];

  *(v13 + 48) = v26;
  v27 = [v3 trailingAnchor];
  v28 = *(v0 + v15);
  if (!v28)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v29 = [v28 trailingAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  *(v13 + 56) = v30;
  v31 = objc_opt_self();
  sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
  v32 = Array._bridgeToObjectiveC()().super.isa;
  [v31 activateConstraints:v32];

  *(v0 + v4) = v13;
LABEL_22:
}

void sub_100490E84()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView];
  if (v1)
  {
    v2 = [v1 textLayoutGuide];
    if (v2)
    {
      v10 = v2;
      v3 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_separatorConstraint;
      v4 = *&v0[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_separatorConstraint];
      if (v4 && ([v4 isActive] & 1) != 0)
      {
        v5 = v10;
      }

      else
      {
        v6 = [v0 separatorLayoutGuide];
        v7 = [v6 leadingAnchor];

        v8 = [v10 leadingAnchor];
        v9 = [v7 constraintEqualToAnchor:v8];

        [v9 setActive:1];
        v5 = *&v0[v3];
        *&v0[v3] = v9;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1004910BC()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = aBlock - v5;
  static UIButton.Configuration.plain()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() _systemImageNamed:v7];

  UIButton.Configuration.image.setter();
  v9 = [objc_opt_self() configurationWithScale:3];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v10 = [objc_opt_self() clearColor];
  v11 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v11(aBlock, 0);
  sub_100003540(0, &unk_10077A690, UIButton_ptr);
  (*(v1 + 16))(v3, v6, v0);
  v12 = UIButton.init(configuration:primaryAction:)();
  [v12 setShowsMenuAsPrimaryAction:1];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004933D4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010CA7C;
  aBlock[3] = &unk_10072AAD8;
  v14 = _Block_copy(aBlock);

  [v12 _setMenuProvider:v14];
  _Block_release(v14);
  [v12 setIsAccessibilityElement:0];
  (*(v1 + 8))(v6, v0);
  return v12;
}

char *sub_1004913B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *&result[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider];
    if (v5)
    {
      v6 = *&result[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider + 8];
      sub_10008E7EC(*&result[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider], v6);

      v7 = v5();
      sub_10008E7F0(v5, v6);
      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1004914E4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatePublicLinkData();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_10076CA08, &qword_100630968);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006337E0;
  v9 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  swift_beginAccess();
  v10 = *(v5 + 48);
  v11 = 0;
  v12 = 0;
  if (!v10(v1 + v9, 1, v4))
  {
    (*(v5 + 16))(v7, v1 + v9, v4);
    v11 = TTRTemplatesListViewModel.Template.name.getter();
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  if (v10(v1 + v9, 1, v4) || ((*(v5 + 16))(v7, v1 + v9, v4), v14 = v47, TTRTemplatesListViewModel.Template.publicLinkData.getter(), (*(v5 + 8))(v7, v4), v15 = sub_100460A28(_swiftEmptyArrayStorage), v16 = TTRTemplatePublicLinkData.attributedStatusText(baseAttributes:forAccessibility:)(v15, 1), , (*(v48 + 8))(v14, v49), !v16))
  {
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
  }

  else
  {
    v17 = [v16 string];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v8 + 48) = v18;
    *(v8 + 56) = v20;
  }

  v21 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView;
  v22 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView);
  if (v22)
  {
    v23 = [*(v22 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_badgeView) accessibilityLabel];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    *(v8 + 64) = v25;
    *(v8 + 72) = v27;
    v28 = *(v1 + v21);
    if (!v28)
    {
      goto LABEL_30;
    }

    v29 = [*(v28 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_badgeView) accessibilityValue];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    *(v8 + 80) = v31;
    *(v8 + 88) = v33;
    v50 = v8;
    sub_100058000(&unk_1007853F0, &qword_100630970);
    sub_10000E188(&qword_10076CA10, &unk_1007853F0, &qword_100630970, &protocol conformance descriptor for [A]);
    v34 = Sequence.removingNils<A>()();

    v35 = 0;
    v36 = *(v34 + 16);
    v37 = _swiftEmptyArrayStorage;
LABEL_16:
    v38 = (v34 + 40 + 16 * v35);
    while (1)
    {
      if (v36 == v35)
      {

        v50 = v37;
        static TTRAccesibility.General.Label.Separator.getter();
        sub_100058000(&unk_100781F20, &unk_10062D7E0);
        sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
        BidirectionalCollection<>.joined(separator:)();

        return;
      }

      if (v35 >= *(v34 + 16))
      {
        break;
      }

      ++v35;
      v40 = *(v38 - 1);
      v39 = *v38;
      v38 += 2;
      v41 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v41 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1CD0(0, v37[2] + 1, 1);
          v37 = v50;
        }

        v44 = v37[2];
        v43 = v37[3];
        if (v44 >= v43 >> 1)
        {
          sub_1004A1CD0((v43 > 1), v44 + 1, 1);
          v37 = v50;
        }

        v37[2] = v44 + 1;
        v45 = &v37[2 * v44];
        v45[4] = v40;
        v45[5] = v39;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

unint64_t sub_100491AC0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v11, "accessibilityCustomActions");
  if (v1)
  {
    v2 = v1;
    sub_100003540(0, &qword_10076BCE0, UIAccessibilityCustomAction_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v12 = v3;
  static TTRAccesibility.Templates.Details.getter();
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  v4 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(UIAccessibilityCustomAction);

  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1004933CC;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10044E9F0;
  aBlock[3] = &unk_10072AAB0;
  v8 = _Block_copy(aBlock);
  [v6 initWithName:v7 image:v4 actionHandler:v8];

  _Block_release(v8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v12;
}

id sub_100491DAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_10049278C(&OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___infoButton, sub_1004910BC);

  [v4 bounds];
  CGRect.bottomLeftPoint(isFlipped:)();
  v5 = [v4 ttriAccessibilityShowContextMenuAtPoint:?];

  return v5;
}

id sub_100491E64(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  v11 = type metadata accessor for TTRTemplatesListViewModel.Template();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_separatorConstraint] = 0;
  v12 = &v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___infoButton] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge] = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100491FA4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  v5 = type metadata accessor for TTRTemplatesListViewModel.Template();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_separatorConstraint] = 0;
  v6 = &v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___infoButton] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_1004921C4(uint64_t a1)
{
  sub_100492270(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100492270(uint64_t a1)
{
  if (!qword_100785380)
  {
    type metadata accessor for TTRTemplatesListViewModel.Template();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100785380);
    }
  }
}

NSString sub_1004922C8()
{
  result = String._bridgeToObjectiveC()();
  qword_100785300 = result;
  return result;
}

void sub_100492300(void *a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for BadgeContainerView.ViewModel(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_1004934C8(a2, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_10049352C(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10049367C;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100068444;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072ABC8;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  [v12 performBatchUpdates:v11];
  _Block_release(v11);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

void sub_1004924F0(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRListColors.Color();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a1[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_badgeView];
  TTRListBadgeView.configure(with:customSmartListShape:)();
  v9 = *(a2 + *(type metadata accessor for BadgeContainerView.ViewModel(0) + 20));
  v10 = [v8 layer];
  v11 = v10;
  if (v9 == 1)
  {
    v12 = sub_10049278C(&OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView____lazy_storage___badgeOvalClipMask, sub_10049375C);
    [v11 setMask:v12];

    sub_1004927F0();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    TTRListDetailBadgeViewModel.badgeColor.getter();
    v19 = TTRListColors.Color.nativeColor.getter();
    (*(v5 + 8))(v7, v4);
    v20 = [a1 traitCollection];
    isa = UITraitCollection.modifiedToOnlyDarkenColorsForIncreaseContrast()().super.isa;

    v22 = [v19 resolvedColorWithTraitCollection:isa];
    [v16 setBackgroundColor:v22];

    [v14 setHidden:0];
  }

  else
  {
    [v10 setMask:0];

    v23 = *&a1[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView];
    if (v23)
    {

      [v23 setHidden:1];
    }
  }
}

id sub_10049278C(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_1004927F0()
{
  v1 = &v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView];
  v2 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView];
  v3 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 8];
  v4 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 16];
  if (v2)
  {
    goto LABEL_4;
  }

  v24 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 8];
  v25 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 16];
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  if (v6)
  {
    v7 = [objc_opt_self() configurationWithPointSize:8.0];
    v8 = [v6 imageWithConfiguration:v7];

    v9 = [objc_allocWithZone(UIImageView) initWithImage:v8];
    [v9 setContentMode:4];
    v10 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v10];

    v11 = [objc_allocWithZone(UIView) init];
    v12 = [v11 layer];
    v26.origin.x = 18.0;
    v26.origin.y = 18.0;
    v26.size.width = 15.0;
    v26.size.height = 15.0;
    [v12 setCornerRadius:CGRectGetWidth(v26) * 0.5];

    v13 = [v11 layer];
    [v13 setCornerCurve:kCACornerCurveCircular];

    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10062D410;
    *(v14 + 32) = v11;
    *(v14 + 40) = v9;
    v15 = objc_allocWithZone(type metadata accessor for UnanimatedContainerBoxView());
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    v16 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v15 initWithArrangedSubviews:isa];

    [v18 setAlignment:3 forView:v9 inAxis:0];
    [v18 setAlignment:3 forView:v9 inAxis:1];
    v19 = *v1;
    v20 = *(v1 + 1);
    v21 = *(v1 + 2);
    *v1 = v18;
    *(v1 + 1) = v16;
    *(v1 + 2) = v9;
    v22 = v18;
    v9;
    v16;
    v23 = v22;
    sub_10049337C(v19, v20, v21);
    [v0 addArrangedSubview:v23];

    v2 = 0;
    v3 = v24;
    v4 = v25;
LABEL_4:
    sub_10049370C(v2, v3, v4);
    return;
  }

  __break(1u);
}

id sub_100492B58(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  *&v4[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView____lazy_storage___badgeOvalClipMask] = 0;
  type metadata accessor for TTRListBadgeView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_badgeView] = v11;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v12 = v11;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D420;
  *(v14 + 32) = v12;
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v15 = v13;
  v16 = v12;
  v17 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setArrangedSubviews:{isa, v20.receiver, v20.super_class}];

  [v17 setDelegate:v17];
  return v17;
}

void sub_100492DB8()
{
  sub_10049337C(*(v0 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView), *(v0 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 8), *(v0 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 16));
  v1 = *(v0 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView____lazy_storage___badgeOvalClipMask);
}

id sub_1004931CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnanimatedContainerBoxView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void destroy for BadgeContainerView.SharingIconView(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t assignWithCopy for BadgeContainerView.SharingIconView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

  return a1;
}

uint64_t assignWithTake for BadgeContainerView.SharingIconView(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

id sub_100493338()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for UnanimatedContainerBoxView();
  return objc_msgSendSuper2(&v2, "layoutSubviews");
}

void sub_10049337C(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_1004933FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049346C(uint64_t a1)
{
  v2 = type metadata accessor for BadgeContainerView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004934C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeContainerView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049352C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeContainerView.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004935A8()
{
  v1 = *(type metadata accessor for BadgeContainerView.ViewModel(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100493694(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for BadgeContainerView.ViewModel(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

id sub_10049370C(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

id sub_10049375C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 bezierPathWithRect:{0.0, 0.0, 32.0, 32.0}];
  v8.origin.x = 18.0;
  v8.origin.y = 18.0;
  v8.size.width = 15.0;
  v8.size.height = 15.0;
  CGRectInset(v8, -1.0, -1.0);
  [a1 effectiveUserInterfaceLayoutDirection];
  CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)();
  v4 = [v2 bezierPathWithOvalInRect:?];
  [v3 appendPath:v4];

  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = [v3 CGPath];
  [v5 setPath:v6];

  [v5 setFillRule:kCAFillRuleEvenOdd];
  return v5;
}

uint64_t sub_1004938D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100493948(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRTemplatesListViewModel.Template();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10049398C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRListDetailBadgeViewModel();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_100493A54(uint64_t a1)
{
  v2 = type metadata accessor for TTRListDetailBadgeViewModel();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_100493AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100493B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100493BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100493C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100493CD0(uint64_t a1)
{
  result = type metadata accessor for TTRListDetailBadgeViewModel();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_100493DA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView;
  *&v1[v7] = [objc_allocWithZone(WKWebView) init];
  v8 = OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_finishedNavigationPublisher;
  sub_100058000(&qword_100785618, &unk_100640E30);
  swift_allocObject();
  *&v1[v8] = PassthroughSubject.init()();
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v11, "init");
    [*&v10[OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView] setNavigationDelegate:v10];
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100493F94()
{
  ObjectType = swift_getObjectType();
  v4 = 1;

  PassthroughSubject.send(completion:)();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100494100(uint64_t a1)
{
  v79 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_100058000(&qword_1007701A0, &qword_100631A50);
  __chkstk_darwin(v1 - 8);
  v86 = &v73 - v2;
  v87 = sub_100058000(&qword_100785620, &qword_100640E40);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v73 - v3;
  v91 = sub_100058000(&qword_100785628, &qword_100640E48);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v73 - v4;
  v5 = sub_100058000(&qword_100785630, &qword_100640E50);
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v90 = &v73 - v6;
  v7 = sub_100058000(&unk_100785638, &unk_100640E58);
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v92 = &v73 - v8;
  v9 = type metadata accessor for URL();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v73 - v12;
  v13 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v13 - 8);
  v73 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = &v73 - v16;
  v17 = type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource(0);
  __chkstk_darwin(v17);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&qword_100785648, &qword_100640E68);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v73 - v22;
  v24 = sub_100058000(&unk_100785650, &unk_100640E70);
  v82 = *(v24 - 8);
  v83 = v24;
  __chkstk_darwin(v24);
  v26 = &v73 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = (&v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  *v30 = static OS_dispatch_queue.main.getter();
  (*(v28 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v27);
  v31 = _dispatchPreconditionTest(_:)();
  result = (*(v28 + 8))(v30, v27);
  if (v31)
  {
    v97 = v77;
    v33 = v77;
    Just.init(_:)();
    sub_100058000(&qword_1007699F0, &qword_10062E420);
    Just.setFailureType<A>(to:)();
    (*(v21 + 8))(v23, v20);
    sub_100494F4C(v79, v19);
    v34 = v26;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *(sub_100058000(&qword_100785660, &unk_100640E80) + 48);
      v37 = v80;
      v36 = v81;
      v38 = *(v80 + 32);
      v39 = v75;
      v38(v75, v19, v81);
      v40 = v76;
      v38(v76, &v19[v35], v36);
      v41 = *&v33[OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView];
      URL._bridgeToObjectiveC()(OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView);
      v43 = v42;
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      v47 = [v41 loadFileURL:v43 allowingReadAccessToURL:v45];

      v48 = *(v37 + 8);
      v48(v40, v36);
      v48(v39, v36);
    }

    else
    {
      v49 = sub_100058000(&qword_1007856B0, &unk_100647CA0);
      v50 = v74;
      sub_1000A9578(&v19[*(v49 + 48)], v74);
      v51 = *&v33[OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView];
      v52 = String._bridgeToObjectiveC()();

      v53 = v73;
      sub_100284F94(v50, v73);
      v55 = v80;
      v54 = v81;
      if ((*(v80 + 48))(v53, 1, v81) == 1)
      {
        v57 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v56);
        v57 = v58;
        (*(v55 + 8))(v53, v54);
      }

      v47 = [v51 loadHTMLString:v52 baseURL:v57];

      sub_1000079B4(v50, &unk_100775660, &qword_10062F6B0);
    }

    v97 = *&v33[OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_finishedNavigationPublisher];
    *(swift_allocObject() + 16) = v47;
    v59 = v47;

    sub_100058000(&qword_100785618, &unk_100640E30);
    sub_10000E188(&unk_100785668, &qword_100785618, &unk_100640E30, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v60 = v84;
    Publisher.tryFirst(where:)();

    v61 = [objc_opt_self() mainRunLoop];
    v97 = v61;
    v62 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v63 = v86;
    (*(*(v62 - 8) + 56))(v86, 1, 1, v62);
    sub_100003540(0, &qword_10076DFB0, NSRunLoop_ptr);
    sub_10000E188(&unk_100785678, &qword_100785620, &qword_100640E40, &protocol conformance descriptor for Publishers.TryFirstWhere<A>);
    sub_100139DF0();
    v64 = v87;
    v65 = v88;
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v63, &qword_1007701A0, &qword_100631A50);

    (*(v85 + 8))(v60, v64);
    sub_10000E188(&qword_100785688, &qword_100785628, &qword_100640E48, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    sub_10000E188(&qword_100785690, &unk_100785650, &unk_100640E70, &protocol conformance descriptor for Result<A, B>.Publisher);
    v67 = v90;
    v66 = v91;
    v68 = v83;
    Publisher.combineLatest<A>(_:)();
    (*(v89 + 8))(v65, v66);
    sub_100003540(0, &qword_100785698, WKWebView_ptr);
    sub_10000E188(&qword_1007856A0, &qword_100785630, &qword_100640E50, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    v69 = v92;
    v70 = v94;
    Publisher.map<A>(_:)();
    (*(v93 + 8))(v67, v70);
    sub_10000E188(&qword_1007856A8, &unk_100785638, &unk_100640E58, &protocol conformance descriptor for Publishers.Map<A, B>);
    v71 = v96;
    v72 = Publisher.eraseToAnyPublisher()();

    (*(v95 + 8))(v69, v71);
    (*(v82 + 8))(v34, v68);
    return v72;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100494D34(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = *a1;
  v3 = *(a1 + 8);
  sub_100003540(0, &qword_1007856B8, WKNavigation_ptr);
  v5 = v4;
  swift_errorRetain();
  v6 = v2;
  LOBYTE(v2) = static NSObject.== infix(_:_:)();

  if (v2)
  {
    if (v3)
    {
      swift_willThrow();
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

id sub_100494E08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*(a1 + 16) + OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView);
  *a2 = v2;
  return v2;
}

uint64_t type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource(uint64_t a1)
{
  result = qword_100785730;
  if (!qword_100785730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100494F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100494FD0(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for URL();
      v7 = *(*(v6 - 8) + 16);
      v7(a1, a2, v6);
      v8 = sub_100058000(&qword_100785660, &unk_100640E80);
      v7(&a1[*(v8 + 48)], &a2[*(v8 + 48)], v6);
    }

    else
    {
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;

      v11 = *(sub_100058000(&qword_1007856B0, &unk_100647CA0) + 48);
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(&a2[v11], 1, v12))
      {
        v14 = sub_100058000(&unk_100775660, &qword_10062F6B0);
        memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      }

      else
      {
        (*(v13 + 16))(&a1[v11], &a2[v11], v12);
        (*(v13 + 56))(&a1[v11], 0, 1, v12);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1004951F0(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for URL();
    v10 = *(*(v3 - 8) + 8);
    (v10)((v3 - 8), a1, v3);
    v4 = a1 + *(sub_100058000(&qword_100785660, &unk_100640E80) + 48);
    v5 = v3;
    v6 = v10;
  }

  else
  {

    v7 = *(sub_100058000(&qword_1007856B0, &unk_100647CA0) + 48);
    v8 = type metadata accessor for URL();
    v11 = *(v8 - 8);
    result = (*(v11 + 48))(a1 + v7, 1, v8);
    if (result)
    {
      return result;
    }

    v6 = *(v11 + 8);
    v4 = a1 + v7;
    v5 = v8;
  }

  return v6(v4, v5);
}

char *sub_10049534C(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for URL();
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    v7 = sub_100058000(&qword_100785660, &unk_100640E80);
    v6(&a1[*(v7 + 48)], &a2[*(v7 + 48)], v5);
  }

  else
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v8;

    v9 = *(sub_100058000(&qword_1007856B0, &unk_100647CA0) + 48);
    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(&a2[v9], 1, v10))
    {
      v12 = sub_100058000(&unk_100775660, &qword_10062F6B0);
      memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100495520(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10049570C(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for URL();
      v6 = *(*(v5 - 8) + 16);
      v6(a1, a2, v5);
      v7 = sub_100058000(&qword_100785660, &unk_100640E80);
      v6(&a1[*(v7 + 48)], &a2[*(v7 + 48)], v5);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);

      v8 = *(sub_100058000(&qword_1007856B0, &unk_100647CA0) + 48);
      v9 = type metadata accessor for URL();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(&a2[v8], 1, v9))
      {
        v11 = sub_100058000(&unk_100775660, &qword_10062F6B0);
        memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
      }

      else
      {
        (*(v10 + 16))(&a1[v8], &a2[v8], v9);
        (*(v10 + 56))(&a1[v8], 0, 1, v9);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10049570C(uint64_t a1)
{
  v2 = type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100495768(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for URL();
    v6 = *(*(v5 - 8) + 32);
    v6(a1, a2, v5);
    v7 = sub_100058000(&qword_100785660, &unk_100640E80);
    v6(&a1[*(v7 + 48)], &a2[*(v7 + 48)], v5);
  }

  else
  {
    *a1 = *a2;
    v8 = *(sub_100058000(&qword_1007856B0, &unk_100647CA0) + 48);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = sub_100058000(&unk_100775660, &qword_10062F6B0);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 32))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100495938(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10049570C(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for URL();
      v6 = *(*(v5 - 8) + 32);
      v6(a1, a2, v5);
      v7 = sub_100058000(&qword_100785660, &unk_100640E80);
      v6(&a1[*(v7 + 48)], &a2[*(v7 + 48)], v5);
    }

    else
    {
      *a1 = *a2;
      v8 = *(sub_100058000(&qword_1007856B0, &unk_100647CA0) + 48);
      v9 = type metadata accessor for URL();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(&a2[v8], 1, v9))
      {
        v11 = sub_100058000(&unk_100775660, &qword_10062F6B0);
        memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
      }

      else
      {
        (*(v10 + 32))(&a1[v8], &a2[v8], v9);
        (*(v10 + 56))(&a1[v8], 0, 1, v9);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_100495B18(uint64_t a1)
{
  sub_100261264(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v5 = &v4;
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v6 = &v3;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

uint64_t sub_100495C00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  if (a1)
  {
    v12 = *(v4 + 16) != a1 || a2 == 0;
    if (!v12 && a3 != 0)
    {
      v14 = a2;
      v15 = a3;
      sub_1001C7580(v15, v11);

      v16 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v11, 1, v16) != 1)
      {
        (*(v17 + 32))(a4, v11, v16);
        return (*(v17 + 56))(a4, 0, 1, v16);
      }

      sub_1000079B4(v11, &unk_10076BB50, &unk_10062DEA0);
    }
  }

  v18 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
}

uint64_t sub_100495DBC(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_10076BB50, &unk_10062DEA0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_100495F7C(v8);
    (*(v6 + 8))(v8, v5);
    if (v9)
    {
      sub_1001C7380(a1);
      v11 = v10;

      return v11;
    }
  }

  return 0;
}

uint64_t sub_100495F7C(uint64_t a1)
{
  v1 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B10, qword_10062E540);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v8 = UICollectionView.visibleCellForItem(at:)();
    (*(v5 + 8))(v7, v4);
    if (v8)
    {
      type metadata accessor for TTRIBoardColumnCollectionViewCell();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100496140()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004961A4(void *a1)
{
  UIView.ancestorViews(includingSelf:)();
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v2 = v14;
  if (!v14)
  {

    return 0;
  }

  type metadata accessor for TTRIBoardReminderCell(0);
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    while (1)
    {
      v7 = swift_dynamicCastClass();
      if (!v7)
      {
        break;
      }

      v10 = v7;

      if (v2 != a1)
      {

        v11 = a1;
        v5 = a1;
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
      v2 = v14;
      v4 = v10;
    }

    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v6 = v8;

      v3 = v6;
      goto LABEL_4;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      if (v3)
      {
        break;
      }
    }

LABEL_4:
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v2 = v14;
  }

  v13 = v9;

  return v13;
}

void *sub_10049631C(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076E910, &qword_100631E18);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v27[0] = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  sub_10000C36C(a1, v14);
  result = (*(v15 + 8))(v14, v15);
  if (result)
  {

    (*(v11 + 16))(v13, a2, v10);
    v17 = (*(v11 + 88))(v13, v10);
    if (v17 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
LABEL_3:
      (*(v11 + 8))(v13, v10);
      return 0;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v11 + 96))(v13, v10);
      v18 = v27[0];
      (*(v27[0] + 32))(v9, v13, v7);
      v19 = v27[1];
      if (sub_1001D6FFC())
      {
        v21 = v20;
        ObjectType = swift_getObjectType();
        (*(v21 + 16))(v19, v9, ObjectType, v21);
        swift_unknownObjectRelease();
        (*(v18 + 8))(v9, v7);
        v23 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
        v24 = 1;
        if ((*(*(v23 - 8) + 48))(v6, 1, v23) != 1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        (*(v18 + 8))(v9, v7);
        v25 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
        (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      }

      v24 = 0;
LABEL_19:
      sub_1004967B0(v6);
      return v24;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v17 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v17 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v17 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      goto LABEL_3;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:))
    {
      return 0;
    }

    else
    {
      v26 = v17 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:);
      result = 0;
      if (!v26)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1004967B0(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076E910, &qword_100631E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100496818(uint64_t a1)
{
  v3 = sub_100058000(&unk_100776BC0, &qword_10062F2B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &unk_100776BC0, &qword_10062F2B0);
  swift_beginAccess();
  sub_100019180(a1, v1 + v9, &unk_100776BC0, &qword_10062F2B0);
  swift_endAccess();
  sub_10000794C(v1 + v9, v5, &unk_100776BC0, &qword_10062F2B0);
  LOBYTE(v9) = sub_10049BC40(v5, v8);
  sub_1000079B4(v5, &unk_100776BC0, &qword_10062F2B0);
  if (v9)
  {
    sub_100496AA0();
  }

  sub_1000079B4(a1, &unk_100776BC0, &qword_10062F2B0);
  return sub_1000079B4(v8, &unk_100776BC0, &qword_10062F2B0);
}

uint64_t sub_10049699C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100785958);
  v1 = sub_100003E30(v0, qword_100785958);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100496AA0()
{
  v1 = v0;
  v75 = sub_100058000(&qword_100781830, &unk_10062EF50);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v69 = &v67 - v2;
  v3 = sub_100058000(&qword_10076E900, &qword_100631E10);
  __chkstk_darwin(v3 - 8);
  v80 = &v67 - v4;
  v72 = type metadata accessor for TTRRemindersListViewModel.Item();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v82 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListLayout();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v9;
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v13 = sub_100058000(&unk_100776BC0, &qword_10062F2B0);
  __chkstk_darwin(v13 - 8);
  v68 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v18 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v73 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v67 - v22;
  v24 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  swift_beginAccess();
  v25 = &v1[v24];
  v26 = v18;
  v27 = v19;
  sub_10000794C(v25, v17, &unk_100776BC0, &qword_10062F2B0);
  if ((*(v19 + 48))(v17, 1, v26) != 1)
  {
    v36 = *(v19 + 32);
    v75 = v19 + 32;
    v74 = v36;
    (v36)(v23, v17, v26);
    v70 = v12;
    TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
    v38 = v78;
    v37 = v79;
    (v78)[13](v8, enum case for TTRRemindersListLayout.list(_:), v79);
    TTRRemindersListEditableSectionNameViewModel.placeholderTitle(listLayout:)();
    v40 = v39;
    (v38[1])(v8, v37);
    if (v40)
    {
      v41 = objc_allocWithZone(NSAttributedString);
      v42 = String._bridgeToObjectiveC()();

      v43 = [v41 initWithString:v42];

      v79 = v43;
      v44 = v43;
    }

    else
    {
      v79 = 0;
    }

    v45 = v83;
    v46 = v80;
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v47 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_1000079B4(v46, &qword_10076E900, &qword_100631E10);
      LODWORD(v69) = 0;
    }

    else
    {
      LODWORD(v69) = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
      (*(v48 + 8))(v46, v47);
    }

    v49 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer];
    v80 = v1;
    v50 = v81;
    v78 = v49;
    if (!v49)
    {
      goto LABEL_17;
    }

    v51 = v77;
    (*(v81 + 16))(v77, v70, v45);
    v52 = v73;
    (*(v27 + 16))(v73, v23, v26);
    v53 = *(v50 + 80);
    v68 = v23;
    v54 = (v53 + 16) & ~v53;
    v55 = v26;
    v56 = (v76 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (*(v27 + 80) + v57 + 9) & ~*(v27 + 80);
    v59 = swift_allocObject();
    v76 = v27;
    v60 = v59;
    (*(v50 + 32))(v59 + v54, v51, v83);
    v61 = v80;
    *(v60 + v56) = v80;
    v62 = v60 + v57;
    v63 = v79;
    *v62 = v79;
    *(v62 + 8) = v69 & 1;
    (v74)(v60 + v58, v52, v55);
    v64 = swift_allocObject();
    *(v64 + 16) = sub_10049C8A4;
    *(v64 + 24) = v60;
    aBlock[4] = sub_100026410;
    aBlock[5] = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072ACE0;
    v65 = _Block_copy(aBlock);
    v66 = v78;
    v61;

    [v66 performBatchUpdates:v65];

    _Block_release(v65);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

    if ((v65 & 1) == 0)
    {
      sub_1004996E4();

      (*(v71 + 8))(v82, v72);
      (*(v50 + 8))(v70, v83);
      (*(v76 + 8))(v68, v55);

      return;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  sub_1000079B4(v17, &unk_100776BC0, &qword_10062F2B0);
  v28 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
  if (!v28)
  {
    goto LABEL_16;
  }

  [v28 setText:0];
  v29 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  swift_beginAccess();
  v30 = v74;
  v31 = v75;
  if (!v74[6](&v1[v29], 1, v75))
  {
    v32 = v69;
    v30[2](v69, &v1[v29], v31);
    TTRRemindersListInCellModule.interface.getter();
    (v30[1])(v32, v31);
    v33 = aBlock[9];
    v34 = v68;
    (*(v27 + 56))(v68, 1, 1, v26);
    v35 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
    swift_beginAccess();
    sub_100019180(v34, v33 + v35, &unk_100776BC0, &qword_10062F2B0);
    swift_endAccess();
    sub_1004E49D0();
    swift_unknownObjectRelease();
    sub_1000079B4(v34, &unk_100776BC0, &qword_10062F2B0);
  }
}

void sub_1004974DC(uint64_t a1)
{
  v3 = type metadata accessor for TTRITreeViewCellModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100058000(&unk_10076B8D0, &unk_100634070);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &unk_1007884E0, &unk_10062FC40);
  v20 = a1;
  sub_10000794C(a1, &v12[v14], &unk_1007884E0, &unk_10062FC40);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000079B4(v12, &unk_1007884E0, &unk_10062FC40);
      swift_beginAccess();
      sub_100019180(v20, v1 + v13, &unk_1007884E0, &unk_10062FC40);
      swift_endAccess();
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &unk_1007884E0, &unk_10062FC40);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &unk_10076B8D0, &unk_100634070);
    swift_beginAccess();
    sub_100019180(v20, v1 + v13, &unk_1007884E0, &unk_10062FC40);
    swift_endAccess();
LABEL_7:
    sub_100499088();
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_10049C994(&qword_10076B908, &type metadata accessor for TTRITreeViewCellModel, &protocol conformance descriptor for TTRITreeViewCellModel);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_1000079B4(v12, &unk_1007884E0, &unk_10062FC40);
  swift_beginAccess();
  sub_100019180(v20, v1 + v13, &unk_1007884E0, &unk_10062FC40);
  swift_endAccess();
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1004978D4()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100781830, &unk_10062EF50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v6, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    TTRRemindersListInCellModule.interface.getter();
    (*(v3 + 8))(v5, v2);
    v8 = v15;
    *(v15 + 40) = &off_10072AC28;
    result = swift_unknownObjectWeakAssign();
    v9 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
    if (v9)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = v9;
      v12 = v11;
      if (Strong)
      {
        sub_100276240(v11);
        swift_unknownObjectRelease();
      }

      *(v8 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle) = 0;
      sub_1004E5374([v12 isEditing]);

      v13 = swift_unknownObjectWeakLoadStrong();
      result = swift_unknownObjectRelease();
      if (v13)
      {
        swift_unknownObjectWeakAssign();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100497BB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v79 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TTRISeparator.Thickness();
  v6 = *(v80 - 8);
  *&v7 = __chkstk_darwin(v80).n128_u64[0];
  v9 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = ObjectType;
  v82.receiver = v0;
  v82.super_class = ObjectType;
  objc_msgSendSuper2(&v82, "containerViewDidLoad", v7);
  v10 = objc_allocWithZone(type metadata accessor for TTRIRemindersListEditableSectionNameTextView(0));
  v11 = TTRIExpandingTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:textContainer:)();
  v12 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView;
  v13 = *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
  *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView] = v11;
  v14 = v11;

  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v15 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v14 setFont:v15];

  v16 = *&v1[v12];
  if (!v16)
  {
    __break(1u);
    goto LABEL_24;
  }

  v17 = [v16 textContainer];
  [v17 setLineBreakMode:4];

  v18 = *&v1[v12];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v76 = v4;
  v19 = [v18 textContainer];
  [v19 setWidthTracksTextView:1];

  v21 = *&v1[v12];
  if (!v21)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LODWORD(v20) = 1132068864;
  [v21 setLayoutSize:NUIContainerViewSizeUnbounded[0] withContentPriority:{NUIContainerViewSizeUnbounded[1], v20}];
  v22 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListDisclosureView()) init];
  v23 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView;
  v24 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView] = v22;
  v25 = v22;

  if (!v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  static CGSize.nuiUseDefault.getter();
  [v25 setLayoutSize:? withContentPriority:?];

  v26 = sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10062D410;
  v28 = *&v1[v12];
  if (!v28)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v77 = xmmword_10062D410;
  v78 = v26;
  v74 = v3;
  *(v27 + 32) = v28;
  v29 = *&v1[v23];
  if (!v29)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v27 + 40) = v29;
  v30 = objc_allocWithZone(NUIContainerStackView);
  v31 = sub_100003540(0, &qword_10076B020, UIView_ptr);
  v32 = v29;
  v33 = v28;
  v75 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v30 initWithArrangedSubviews:isa];

  v36 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer;
  v37 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer] = v35;
  v38 = v35;

  if (!v38)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v38 setAxis:0];

  v39 = *&v1[v36];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v39 setArrangedSubviewRemovalPolicy:2];
  v40 = *&v1[v36];
  if (!v40)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v40 setSpacing:12.0];
  v41 = *&v1[v36];
  if (!v41)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v41 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  v42 = *&v1[v36];
  if (!v42)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v42 setEdgesPreservingSuperviewLayoutMargins:10];
  v43 = *&v1[v36];
  if (!v43)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v43 setDirectionalLayoutMargins:{12.0, 0.0, 8.0, 0.0}];
  v44 = *&v1[v36];
  if (!v44)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v44 setLayoutMarginsRelativeArrangement:1];
  v45 = *&v1[v36];
  if (!v45)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v45 setDebugBoundingBoxesEnabled:0];
  v46 = objc_allocWithZone(type metadata accessor for TTRISeparator());
  v47 = TTRISeparator.init(axis:)();
  v48 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator;
  v49 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator] = v47;
  v50 = v47;

  *v9 = 0x4000000000000000;
  (*(v6 + 104))(v9, enum case for TTRISeparator.Thickness.custom(_:), v80);
  TTRISeparator.thickness.setter();

  v51 = *&v1[v48];
  if (!v51)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v1 _setIgnoresMultipleSelectionDuringEditing:1];
  v52 = [v1 containerView];
  [v52 setHorizontalAlignment:0];
  [v52 setVerticalAlignment:0];
  [v52 setPreservesSuperviewLayoutMargins:1];
  v53 = v52;
  [v53 setLayoutMarginsRelativeArrangement:0];
  [v53 setDebugBoundingBoxesEnabled:0];
  v54 = swift_allocObject();
  *(v54 + 16) = v77;
  v55 = *&v1[v48];
  if (!v55)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v54 + 32) = v55;
  v56 = *&v1[v36];
  if (!v56)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v54 + 40) = v56;
  v57 = v56;
  v58 = v55;
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v53 setArrangedSubviews:v59];

  v60 = *&v1[v48];
  if (!v60)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v53 setAlignment:1 forView:v60 inAxis:1];
  v61 = *&v1[v23];
  if (!v61)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_10049C994(&qword_100785AA8, type metadata accessor for TTRIRemindersListEditableSectionCell, &unk_100640FE0);
  v62 = v1;
  v63 = v61;
  TTRIRemindersListDisclosureView.actionDelegate.setter();

  v64 = v76;
  v65 = v79;
  v66 = v74;
  (*(v76 + 104))(v79, enum case for TTRITableCellSeparatorInsetType.noSeparator(_:), v74);
  UITableViewCell.setSeparatorInsetType(_:)();
  (*(v64 + 8))(v65, v66);
  v67 = *&v1[v12];
  if (!v67)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_100003540(0, &unk_10076B090, UITextView_ptr);
  v68 = v67;
  UITextDraggable<>.disableDragInteraction_rdar93793341()();
  [v68 setTextDropDelegate:*&v62[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_unsupportedTextDropHandler]];

  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();
  v69 = *&v1[v48];
  if (v69)
  {
    v70 = objc_opt_self();
    v71 = v69;
    v72 = [v70 tertiarySystemFillColor];
    TTRISeparator.backgroundColor.setter();

    sub_100003540(0, &qword_100785AB0, UITraitCollection_ptr);
    static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return;
  }

LABEL_43:
  __break(1u);
}

void sub_10049867C(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v77 = a5;
  v82 = a4;
  v83 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076B060, &unk_1006324D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v74 - v10;
  v12 = sub_100058000(&unk_100776BC0, &qword_10062F2B0);
  __chkstk_darwin(v12 - 8);
  v76 = &v74 - v13;
  v14 = sub_100058000(&qword_100781830, &unk_10062EF50);
  v81 = *(v14 - 8);
  __chkstk_darwin(v14);
  v75 = &v74 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  TTRRemindersListViewModel.SectionHeaderTitle.defaultTextColor.getter();
  v24 = (*(v21 + 88))(v23, v20);
  if (v24 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:))
  {
    v25 = &selRef_labelColor;
  }

  else if (v24 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:))
  {
    v25 = &selRef_secondaryLabelColor;
  }

  else
  {
    if (v24 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:))
    {
LABEL_52:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_53;
    }

    v25 = &selRef_tertiaryLabelColor;
  }

  v26 = [objc_opt_self() *v25];
  v27 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer);
  if (!v27)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v28 = v26;
  [v27 directionalLayoutMargins];
  v30 = v29;
  v32 = v31;
  TTRRemindersListViewModel.SectionHeaderTitle.textSize.getter();
  v33 = (*(v17 + 88))(v19, v16);
  if (v33 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:))
  {
    v34 = 12.0;
    v35 = 8.0;
  }

  else if (v33 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:))
  {
    v35 = 13.0;
    v34 = 13.0;
  }

  else
  {
    if (v33 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:))
    {
LABEL_53:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_54;
    }

    v35 = 12.0;
    v34 = 12.0;
  }

  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v36 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  v37.super.isa = UIFont.withBoldTrait()().super.isa;

  v38 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView;
  v39 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
  if (!v39)
  {
    goto LABEL_42;
  }

  [v39 setFont:v37.super.isa];
  v40 = *(a2 + v38);
  if (!v40)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v40 setDirectionalLayoutMargins:{v34, v30, v35, v32}];
  v41 = *(a2 + v38);
  if (!v41)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v41 setTextColor:v28];
  v42 = *(a2 + v38);
  if (!v42)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 clearColor];
  [v44 setBackgroundColor:v45];

  v46 = *(a2 + v38);
  if (!v46)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v47 = v46;
  TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
  v48 = String._bridgeToObjectiveC()();

  [v47 setText:v48];

  v49 = *(a2 + v38);
  if (!v49)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v49 setAttributedPlaceholder:v83];
  v50 = *(a2 + v38);
  if (!v50)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v50 setUserInteractionEnabled:v82 & 1];
  v51 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  swift_beginAccess();
  v52 = v81;
  if (!(*(v81 + 48))(a2 + v51, 1, v14))
  {
    v53 = a2 + v51;
    v54 = v75;
    (*(v52 + 16))(v75, v53, v14);
    TTRRemindersListInCellModule.interface.getter();
    (*(v52 + 8))(v54, v14);
    v55 = v85;
    v56 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
    v57 = *(v56 - 8);
    v58 = v76;
    (*(v57 + 16))(v76, v77, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
    swift_beginAccess();
    sub_100019180(v58, v55 + v59, &unk_100776BC0, &qword_10062F2B0);
    swift_endAccess();
    sub_1004E49D0();
    swift_unknownObjectRelease();
    sub_1000079B4(v58, &unk_100776BC0, &qword_10062F2B0);
  }

  v60 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView);
  if (!v60)
  {
    goto LABEL_49;
  }

  isa = v37.super.isa;
  v62 = v60;
  TTRRemindersListViewModel.SectionHeaderTitle.disclosureColor.getter();
  v63 = type metadata accessor for TTRListColors.Color();
  v64 = *(v63 - 8);
  if ((*(v64 + 48))(v11, 1, v63) == 1)
  {
    sub_1000079B4(v11, &unk_10076B060, &unk_1006324D0);
  }

  else
  {
    TTRListColors.Color.nativeColor.getter();
    (*(v64 + 8))(v11, v63);
  }

  TTRIRemindersListDisclosureView.tintColor.setter();

  sub_100499088();
  v65 = v78;
  TTRRemindersListViewModel.SectionHeaderTitle.separator.getter();
  v66 = (*(v79 + 88))(v65, v80);
  if (v66 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
  {
    if (qword_100767350 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100003E30(v67, qword_100785958);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v68, v69))
    {
      v72 = v28;
      v28 = isa;
LABEL_40:

      return;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "TTRIRemindersListEditableSectionCell inset separator not supported", v70, 2u);

LABEL_39:
    v72 = isa;
    goto LABEL_40;
  }

  if (v66 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
  {
    v71 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator);
    if (v71)
    {
      v68 = v71;
      [v68 setHidden:1];
      goto LABEL_39;
    }

    goto LABEL_50;
  }

  if (v66 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
  {
    v73 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator);
    if (v73)
    {
      v68 = v73;
      [v68 setHidden:0];
      goto LABEL_39;
    }

    goto LABEL_51;
  }

LABEL_54:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100499088()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewCellModel();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076B9C0, &unk_10063B820);
  __chkstk_darwin(v4);
  v41 = v37 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076E900, &qword_100631E10);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v42 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isEditing])
  {
    goto LABEL_6;
  }

  v37[1] = v4;
  v20 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  swift_beginAccess();
  if ((*(v10 + 48))(&v1[v20], 1, v9))
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_5:
    sub_1000079B4(v15, &qword_10076E900, &qword_100631E10);
LABEL_6:
    v21 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
    if (v21)
    {
      [v21 setHidden:1];
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  (*(v10 + 16))(v12, &v1[v20], v9);
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  (*(v10 + 8))(v12, v9);
  TTRRemindersListViewModel.Item.sectionHeader.getter();
  (*(v43 + 8))(v8, v6);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v22 = v42;
  (*(v17 + 32))(v42, v15, v16);
  if ((TTRRemindersListViewModel.SectionHeader.isCollapsable.getter() & 1) == 0)
  {
LABEL_12:
    (*(v17 + 8))(v22, v16);
    goto LABEL_6;
  }

  v23 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  swift_beginAccess();
  v25 = v39;
  v24 = v40;
  if ((*(v39 + 48))(&v1[v23], 1, v40))
  {
    v26 = type metadata accessor for TTRITreeViewExpandedState();
    (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
    goto LABEL_12;
  }

  v27 = &v1[v23];
  v28 = v38;
  (*(v25 + 16))(v38, v27, v24);
  v29 = v41;
  TTRITreeViewCellModel.expandedState.getter();
  (*(v25 + 8))(v28, v24);
  v30 = type metadata accessor for TTRITreeViewExpandedState();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v29, 0, 1, v30);
  v32 = (*(v31 + 88))(v29, v30);
  if (v32 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
    goto LABEL_12;
  }

  if (v32 != enum case for TTRITreeViewExpandedState.collapsed(_:) && v32 != enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    goto LABEL_21;
  }

  (*(v17 + 8))(v22, v16);
  v33 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView;
  v34 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
  if (v34)
  {
    [v34 setHidden:0];
    v35 = *&v1[v33];
    if (v35)
    {
      v36 = v35;
      TTRIRemindersListDisclosureView.isExpanded.setter();

      return;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1004996E4()
{
  v0 = type metadata accessor for SectionEntityID();
  v58 = *(v0 - 8);
  v59 = v0;
  __chkstk_darwin(v0);
  v56 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for AppEntityID();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v61 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_10076E900, &qword_100631E10);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v63 = *(v17 - 8);
  v64 = v17;
  __chkstk_darwin(v17);
  v60 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for REMFeatureFlags();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, enum case for REMFeatureFlags.viewAnnotation(_:), v19, v21);
  v24 = REMFeatureFlags.isEnabled.getter();
  result = (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v26 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
    v27 = v62;
    swift_beginAccess();
    if ((*(v11 + 48))(v27 + v26, 1, v10))
    {
      (*(v63 + 56))(v16, 1, 1, v64);
      return sub_1000079B4(v16, &qword_10076E900, &qword_100631E10);
    }

    (*(v11 + 16))(v13, v27 + v26, v10);
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    (*(v11 + 8))(v13, v10);
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    (*(v61 + 8))(v9, v7);
    v29 = v63;
    v28 = v64;
    if ((*(v63 + 48))(v16, 1, v64) == 1)
    {
      return sub_1000079B4(v16, &qword_10076E900, &qword_100631E10);
    }

    v30 = v60;
    (*(v29 + 32))(v60, v16, v28);
    v31 = TTRRemindersListViewModel.SectionHeader.listObjectID.getter();
    if (!v31)
    {
      return (*(v29 + 8))(v30, v28);
    }

    v32 = v31;
    v33 = v48;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v34 = v51;
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    (*(v49 + 8))(v33, v50);
    v36 = v52;
    v35 = v53;
    v37 = (*(v52 + 88))(v34, v53);
    if (v37 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(v36 + 96))(v34, v35);
      v38 = *v34;
    }

    else
    {
      if (v37 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
      {
        (*(v36 + 96))(v34, v35);
        v38 = *v34;
        v39 = &enum case for SectionEntityID.sectionless(_:);
LABEL_18:
        v40 = v38;
        v41 = v54;
        AppEntityID.init(objectID:)();
        v43 = v55;
        v42 = v56;
        v44 = v57;
        (*(v55 + 16))(v56, v41, v57);
        v46 = v58;
        v45 = v59;
        (*(v58 + 104))(v42, *v39, v59);
        type metadata accessor for SectionEntity();
        sub_10049C994(&qword_10076B078, &type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
        UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

        (*(v46 + 8))(v42, v45);
        (*(v43 + 8))(v41, v44);
        return (*(v63 + 8))(v60, v64);
      }

      if (v37 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        (*(v36 + 8))(v34, v35);
      }

      else if (v37 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v38 = v32;
    }

    v39 = &enum case for SectionEntityID.sectioned(_:);
    goto LABEL_18;
  }

  return result;
}

id sub_100499F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  v8 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  v10 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  v12 = sub_100058000(&qword_100781830, &unk_10062EF50);
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator] = 0;
  v13 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_unsupportedTextDropHandler;
  *&v3[v13] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v14);

  return v15;
}

id sub_10049A168(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  v5 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  v7 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  v9 = sub_100058000(&qword_100781830, &unk_10062EF50);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator] = 0;
  v10 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_unsupportedTextDropHandler;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t type metadata accessor for TTRIRemindersListEditableSectionCell(uint64_t a1)
{
  result = qword_1007859C8;
  if (!qword_1007859C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049A4B8(uint64_t a1)
{
  sub_10049A61C(319, &qword_1007859D8, &type metadata accessor for TTRRemindersListEditableSectionNameViewModel);
  if (v1 <= 0x3F)
  {
    sub_10049A61C(319, &qword_100788230, &type metadata accessor for TTRITreeViewCellModel);
    if (v2 <= 0x3F)
    {
      sub_10009C0F8(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10049A61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10049A670@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a1, &unk_1007884E0, &unk_10062FC40);
}

uint64_t sub_10049A730(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10049A7A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_10017D654;
}

void sub_10049A868(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  v7 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.cell(_:))
  {
    [v3 bounds];
    goto LABEL_6;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryText(_:))
  {
    v17 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
    if (v17)
    {
      sub_10049C994(&qword_100785A98, type metadata accessor for TTRIRemindersListEditableSectionCell, &unk_100641040);
      v18 = v17;
      TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(to:)();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v16 = v26;
      v15 = v24;
      v14 = v22;
      v13 = v20;
      goto LABEL_6;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryTextCaret(_:))
  {
    v32 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
    if (v32)
    {
      sub_10049C994(&qword_100785A98, type metadata accessor for TTRIRemindersListEditableSectionCell, &unk_100641040);
      v33 = v32;
      TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(toCaretIn:)();
      v34 = *&v39[1];
      v35 = *&v39[2];
      v36 = *&v39[3];
      v37 = *&v39[4];
      v31 = v40;

      if (v40)
      {
        v27 = v34;
        v28 = v35;
        v29 = v36;
        v30 = v37;
        goto LABEL_7;
      }

      v13 = v34;
      v14 = v35;
      v15 = v36;
      v16 = v37;
LABEL_6:
      [a2 convertRect:v3 fromCoordinateSpace:{v13, v14, v15, v16}];
      v31 = 0;
LABEL_7:
      *a3 = v27;
      *(a3 + 8) = v28;
      *(a3 + 16) = v29;
      *(a3 + 24) = v30;
      *(a3 + 32) = v31;
      return;
    }

    goto LABEL_20;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryText(_:) || v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryTextCaret(_:))
  {
    v31 = 1;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    goto LABEL_7;
  }

LABEL_21:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10049AB64()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
  if (v1)
  {
    type metadata accessor for TTRIRemindersListEditableSectionNameTextView(0);
    v2 = v1;
    UITextInput<>.ttrBeginEditing()();
  }

  else
  {
    __break(1u);
  }
}

double sub_10049ABD4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10049A868(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

void sub_10049AC1C()
{
  [v0 bounds];
  v5 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator;
  v6 = *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  if ([v6 isHidden])
  {
    return;
  }

  v11 = *&v0[v5];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v11 bounds];
  [v0 convertRect:*&v0[v5] fromView:?];
  v22.origin.x = v7;
  v22.origin.y = v8;
  v22.size.width = v9;
  v22.size.height = v10;
  v19 = CGRectIntersection(v18, v22);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MaxY = CGRectGetMaxY(v20);
    v21.origin.x = v7;
    v21.origin.y = v8;
    v21.size.width = v9;
    v21.size.height = v10;
    MinY = CGRectGetMinY(v21);
    sub_100068328(v7, v8, v9, v10, MaxY - MinY, 0.0);
  }
}

id sub_10049ADAC()
{
  ObjectType = swift_getObjectType();
  result = [v0 isEditing];
  v3 = result;
  if (result)
  {
    return (v3 ^ 1u);
  }

  if (*&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView])
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v5[3] = ObjectType;
      v5[4] = sub_10049C994(&qword_100785AA0, type metadata accessor for TTRIRemindersListEditableSectionCell, &unk_100641098);
      v5[0] = v0;
      v4 = v0;
      dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
      swift_unknownObjectRelease();
      sub_100004758(v5);
    }

    return (v3 ^ 1u);
  }

  __break(1u);
  return result;
}

id sub_10049AF6C()
{
  v1 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v3 = [result text];
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
      return v5;
    }
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_13;
  }

  result = [result attributedPlaceholder];
  if (result)
  {
    v9 = result;
    v10 = [result string];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v11;
  }

  return result;
}

id sub_10049B098(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  sub_10049B150(a3, a4);
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10049B150(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  result = [v2 isEditing];
  if (result)
  {
    return 0;
  }

  v6 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
  if (v6)
  {
    v7 = v6;
    v8 = TTRIRemindersListDisclosureView.isExpanded.getter();

    if (v8)
    {
      return a1();
    }

    else
    {
      return a2();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10049B24C()
{
  v1 = sub_10049AF6C();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = v2;
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

LABEL_9:
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v6 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100546970((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v3;
  *(v9 + 5) = v4;
LABEL_10:
  result = [v0 isEditing];
  if (result)
  {
    return v6;
  }

  v11 = *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
  if (v11)
  {
    v12 = v11;
    v13 = TTRIRemindersListDisclosureView.isExpanded.getter();

    if (v13)
    {
      v14 = static TTRAccesibility.AccountsList.Action.Collapse.getter();
    }

    else
    {
      v14 = static TTRAccesibility.AccountsList.Action.Expand.getter();
    }

    v16 = v14;
    v17 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100546970(0, *(v6 + 2) + 1, 1, v6);
    }

    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      v6 = sub_100546970((v18 > 1), v19 + 1, 1, v6);
    }

    *(v6 + 2) = v19 + 1;
    v20 = &v6[16 * v19];
    *(v20 + 4) = v16;
    *(v20 + 5) = v17;
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_10049B44C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076E900, &qword_100631E10);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = aBlock - v13;
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v31, "accessibilityCustomActions", v12);
  if (v15)
  {
    v16 = v15;
    sub_100003540(0, &qword_10076BCE0, UIAccessibilityCustomAction_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v32 = v17;
  if (([v1 isEditing] & 1) == 0)
  {
    v18 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
    swift_beginAccess();
    if (!(*(v8 + 48))(&v1[v18], 1, v7))
    {
      (*(v8 + 16))(v10, &v1[v18], v7);
      TTRRemindersListEditableSectionNameViewModel.item.getter();
      (*(v8 + 8))(v10, v7);
      TTRRemindersListViewModel.Item.sectionHeader.getter();
      (*(v4 + 8))(v6, v3);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v14, 1, v19) == 1)
      {
        sub_1000079B4(v14, &qword_10076E900, &qword_100631E10);
      }

      else
      {
        v21 = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
        (*(v20 + 8))(v14, v19);
        if (v21)
        {
          v22._countAndFlagsBits = 0x656D616E6552;
          v23._object = 0x8000000100670B80;
          v22._object = 0xE600000000000000;
          v23._countAndFlagsBits = 0xD00000000000003FLL;
          TTRLocalizedString(_:comment:)(v22, v23);
          sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
          v24 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
          v25 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v26 = objc_allocWithZone(UIAccessibilityCustomAction);

          v27 = String._bridgeToObjectiveC()();

          aBlock[4] = sub_10049C89C;
          aBlock[5] = v25;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10044E9F0;
          aBlock[3] = &unk_10072AC68;
          v28 = _Block_copy(aBlock);
          [v26 initWithName:v27 image:v24 actionHandler:v28];

          _Block_release(v28);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          return v32;
        }
      }
    }
  }

  return v17;
}

char *sub_10049BA00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (!result)
  {
    return (v3 != 0);
  }

  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView;
  v5 = *&result[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
  if (v5)
  {
    type metadata accessor for TTRIRemindersListEditableSectionNameTextView(0);
    v6 = v5;
    UITextInput<>.ttrBeginEditing()();

    v7 = UIAccessibilityLayoutChangedNotification;
    v8 = *&v3[v4];
    UIAccessibilityPostNotification(v7, v8);

    return (v3 != 0);
  }

  __break(1u);
  return result;
}

void sub_10049BBBC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator);
  if (v1)
  {
    v2 = objc_opt_self();
    v4 = v1;
    v3 = [v2 tertiarySystemFillColor];
    TTRISeparator.backgroundColor.setter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10049BC40(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v82 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v72 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100058000(&qword_100768B50, &unk_1006378E0);
  __chkstk_darwin(v79);
  v5 = &v72 - v4;
  v6 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v6 - 8);
  v73 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v72 - v9;
  __chkstk_darwin(v10);
  v86 = &v72 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v90 = *(v12 - 8);
  __chkstk_darwin(v12);
  v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100058000(&qword_100768B60, &qword_10062DA20);
  __chkstk_darwin(v87);
  v15 = &v72 - v14;
  v16 = sub_100058000(&unk_100776BC0, &qword_10062F2B0);
  __chkstk_darwin(v16 - 8);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v76 = &v72 - v19;
  __chkstk_darwin(v20);
  v22 = &v72 - v21;
  __chkstk_darwin(v23);
  v25 = &v72 - v24;
  v26 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v26 - 8);
  v84 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v72 - v29;
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  v78 = a1;
  sub_10000794C(a1, v25, &unk_100776BC0, &qword_10062F2B0);
  v34 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v35 = *(v34 - 8);
  v89 = *(v35 + 48);
  v36 = v89(v25, 1, v34);
  v81 = v5;
  v85 = v35;
  if (v36 == 1)
  {
    sub_1000079B4(v25, &unk_100776BC0, &qword_10062F2B0);
    v37 = 1;
  }

  else
  {
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    (*(v35 + 8))(v25, v34);
    v37 = 0;
  }

  v38 = *(v90 + 56);
  v38(v33, v37, 1, v12);
  sub_10000794C(v88, v22, &unk_100776BC0, &qword_10062F2B0);
  v39 = v89(v22, 1, v34);
  v75 = v34;
  if (v39 == 1)
  {
    sub_1000079B4(v22, &unk_100776BC0, &qword_10062F2B0);
    v40 = 1;
  }

  else
  {
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    (*(v85 + 8))(v22, v34);
    v40 = 0;
  }

  v38(v30, v40, 1, v12);
  v41 = *(v87 + 48);
  sub_10000794C(v33, v15, &qword_100772140, &qword_10062D9F0);
  sub_10000794C(v30, &v15[v41], &qword_100772140, &qword_10062D9F0);
  v42 = *(v90 + 48);
  if (v42(v15, 1, v12) == 1)
  {
    sub_1000079B4(v30, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v33, &qword_100772140, &qword_10062D9F0);
    if (v42(&v15[v41], 1, v12) == 1)
    {
      sub_1000079B4(v15, &qword_100772140, &qword_10062D9F0);
      goto LABEL_14;
    }

LABEL_12:
    v44 = &qword_100768B60;
    v45 = &qword_10062DA20;
    v46 = v15;
LABEL_26:
    sub_1000079B4(v46, v44, v45);
    goto LABEL_27;
  }

  v43 = v84;
  sub_10000794C(v15, v84, &qword_100772140, &qword_10062D9F0);
  if (v42(&v15[v41], 1, v12) == 1)
  {
    sub_1000079B4(v30, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v33, &qword_100772140, &qword_10062D9F0);
    (*(v90 + 8))(v43, v12);
    goto LABEL_12;
  }

  v47 = v90;
  v48 = v74;
  (*(v90 + 32))(v74, &v15[v41], v12);
  sub_10049C994(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v47 + 8);
  v50(v48, v12);
  sub_1000079B4(v30, &qword_100772140, &qword_10062D9F0);
  sub_1000079B4(v33, &qword_100772140, &qword_10062D9F0);
  v50(v84, v12);
  sub_1000079B4(v15, &qword_100772140, &qword_10062D9F0);
  if ((v49 & 1) == 0)
  {
LABEL_27:
    v65 = 1;
    return v65 & 1;
  }

LABEL_14:
  v51 = v76;
  sub_10000794C(v78, v76, &unk_100776BC0, &qword_10062F2B0);
  v52 = v75;
  if (v89(v51, 1, v75) == 1)
  {
    sub_1000079B4(v51, &unk_100776BC0, &qword_10062F2B0);
    v53 = 1;
    v55 = v81;
    v54 = v82;
    v56 = v80;
    v57 = v86;
  }

  else
  {
    v57 = v86;
    TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
    (*(v85 + 8))(v51, v52);
    v53 = 0;
    v55 = v81;
    v54 = v82;
    v56 = v80;
  }

  v58 = v83;
  v59 = v77;
  v60 = *(v56 + 56);
  v60(v57, v53, 1, v54);
  sub_10000794C(v88, v59, &unk_100776BC0, &qword_10062F2B0);
  if (v89(v59, 1, v52) == 1)
  {
    sub_1000079B4(v59, &unk_100776BC0, &qword_10062F2B0);
    v61 = 1;
  }

  else
  {
    TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
    (*(v85 + 8))(v59, v52);
    v61 = 0;
  }

  v60(v58, v61, 1, v54);
  v62 = *(v79 + 48);
  v63 = v86;
  sub_10000794C(v86, v55, &unk_10076B050, &unk_100631DF0);
  sub_10000794C(v58, v55 + v62, &unk_10076B050, &unk_100631DF0);
  v64 = *(v56 + 48);
  if (v64(v55, 1, v54) != 1)
  {
    v66 = v73;
    sub_10000794C(v55, v73, &unk_10076B050, &unk_100631DF0);
    if (v64(v55 + v62, 1, v54) != 1)
    {
      v68 = v55 + v62;
      v69 = v72;
      (*(v56 + 32))(v72, v68, v54);
      sub_10049C994(&qword_100768B58, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle, &protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle);
      v70 = dispatch thunk of static Equatable.== infix(_:_:)();
      v71 = *(v56 + 8);
      v71(v69, v54);
      sub_1000079B4(v83, &unk_10076B050, &unk_100631DF0);
      sub_1000079B4(v86, &unk_10076B050, &unk_100631DF0);
      v71(v66, v54);
      sub_1000079B4(v55, &unk_10076B050, &unk_100631DF0);
      v65 = v70 ^ 1;
      return v65 & 1;
    }

    sub_1000079B4(v83, &unk_10076B050, &unk_100631DF0);
    sub_1000079B4(v86, &unk_10076B050, &unk_100631DF0);
    (*(v56 + 8))(v66, v54);
    goto LABEL_25;
  }

  sub_1000079B4(v58, &unk_10076B050, &unk_100631DF0);
  sub_1000079B4(v63, &unk_10076B050, &unk_100631DF0);
  if (v64(v55 + v62, 1, v54) != 1)
  {
LABEL_25:
    v44 = &qword_100768B50;
    v45 = &unk_1006378E0;
    v46 = v55;
    goto LABEL_26;
  }

  sub_1000079B4(v55, &unk_10076B050, &unk_100631DF0);
  v65 = 0;
  return v65 & 1;
}

uint64_t sub_10049C7B8()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v4[3] = ObjectType;
    v4[4] = sub_10049C994(&qword_100785AA0, type metadata accessor for TTRIRemindersListEditableSectionCell, &unk_100641098);
    v4[0] = v0;
    v3 = v0;
    dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
    swift_unknownObjectRelease();
    return sub_100004758(v4);
  }

  return result;
}

void sub_10049C8A4()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = v0 + ((v4 + *(v5 + 80) + 9) & ~*(v5 + 80));

  sub_10049867C((v0 + v2), v6, v7, v8, v9);
}

uint64_t sub_10049C994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10049C9E4()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10049CA50@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  if (*a1)
  {
    static TTRLocalizableStrings.RemindersList.editSectionsActionText(listLayout:)();
  }

  else
  {
    static TTRLocalizableStrings.Sections.newSectionActionText(listLayout:)();
  }

  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;

  result = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  *a5 = result;
  return result;
}

UIMenu sub_10049CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v3 = sub_10007DDE0(sub_10049CC6C, v8, &off_1007125E0);
  if (v3 >> 62)
  {
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    preferredElementSize = v3;
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v12, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7);
}

uint64_t sub_10049CCBC()
{
  v1 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A56AC(v0, v3, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_100058000(&qword_100776AE8, &qword_100636F20);

        v6 = type metadata accessor for Date();
        (*(*(v6 - 8) + 8))(v3, v6);
        return 4;
      }

      else
      {
        sub_100058000(&qword_100776AE8, &qword_100636F20);

        v11 = type metadata accessor for Date();
        (*(*(v11 - 8) + 8))(v3, v11);
        return 5;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_100058000(&qword_100776AE8, &qword_100636F20);

      v10 = type metadata accessor for Date();
      (*(*(v10 - 8) + 8))(v3, v10);
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v7 = *(sub_100058000(&qword_100776AE0, &qword_10063D830) + 48);

      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 8);
      v9(&v3[v7], v8);
      v9(v3, v8);
      return 6;
    }

    else
    {
      sub_100058000(&qword_100776AD8, &unk_100636F10);

      v12 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v12 - 8) + 8))(v3, v12);
      return 7;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    return 1;
  }

  else
  {
    return 8;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.DateOptions.Bare.localizedOptionString.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v1 = 0x7961646F54;
        v3 = 0xD00000000000001DLL;
        v4 = 0x800000010067A6B0;
        v5 = 0xD00000000000002CLL;
        v6 = 0x800000010067A6D0;
        v2 = 0xE500000000000000;
      }

      else
      {
        v1 = 0x7461442061206E4FLL;
        v3 = 0xD00000000000001FLL;
        v4 = 0x800000010067A700;
        v5 = 0xD000000000000030;
        v6 = 0x800000010067A720;
        v2 = 0xE900000000000065;
      }
    }

    else
    {
      if (a1)
      {
        v4 = 0x800000010067A660;
        v5 = 0xD00000000000002ALL;
        v6 = 0x800000010067A680;
        v3 = 0xD00000000000001BLL;
        v1 = 7958081;
      }

      else
      {
        v4 = 0x800000010067A610;
        v5 = 0xD00000000000002ALL;
        v6 = 0x800000010067A630;
        v3 = 0xD00000000000001BLL;
        v1 = 6710863;
      }

      v2 = 0xE300000000000000;
    }

    return TTRLocalizedString(_:value:comment:)(*&v3, *&v1, *&v5)._countAndFlagsBits;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v1 = 0x612065726F666542;
      v2 = 0xED00006574614420;
      v3 = 0xD000000000000023;
      v4 = 0x800000010067A760;
      v5 = 0xD000000000000034;
      v6 = 0x800000010067A790;
    }

    else
    {
      v1 = 0x2061207265746641;
      v2 = 0xEC00000065746144;
      v3 = 0xD000000000000022;
      v4 = 0x800000010067A7D0;
      v5 = 0xD000000000000033;
      v6 = 0x800000010067A800;
    }

    return TTRLocalizedString(_:value:comment:)(*&v3, *&v1, *&v5)._countAndFlagsBits;
  }

  if (a1 == 6)
  {
    v8._countAndFlagsBits = 0x6569666963657053;
    v8._object = 0xEF65676E61522064;
    v9._countAndFlagsBits = 0xD000000000000027;
    v9._object = 0x800000010067A840;
    v10._countAndFlagsBits = 0xD000000000000036;
    v10._object = 0x800000010067A870;
    return TTRLocalizedString(_:value:comment:)(v9, v8, v10)._countAndFlagsBits;
  }

  else
  {
    if (a1 == 7)
    {
      v1 = 0x65766974616C6552;
      v2 = 0xEE0065676E615220;
      v3 = 0xD000000000000026;
      v4 = 0x800000010067A8B0;
      v5 = 0xD000000000000035;
      v6 = 0x800000010067A8E0;
      return TTRLocalizedString(_:value:comment:)(*&v3, *&v1, *&v5)._countAndFlagsBits;
    }

    v11._countAndFlagsBits = 0x65746144206F4ELL;
    v12._countAndFlagsBits = 0xD00000000000001FLL;
    v12._object = 0x800000010067A920;
    v13._countAndFlagsBits = 0xD00000000000002ELL;
    v13._object = 0x800000010067A940;
    v11._object = 0xE700000000000000;
    return TTRLocalizedString(_:value:comment:)(v12, v11, v13)._countAndFlagsBits;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.TimeOptions.localizedOptionString.getter(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (!a1)
    {
      v14._countAndFlagsBits = 0xD00000000000001BLL;
      v15._countAndFlagsBits = 0xD00000000000002ALL;
      v14._object = 0x800000010067B100;
      v15._object = 0x800000010067B120;
      v16._countAndFlagsBits = 6710863;
      v16._object = 0xE300000000000000;
      return TTRLocalizedString(_:value:comment:)(v14, v16, v15)._countAndFlagsBits;
    }

    if (a1 == 1)
    {
      v7._countAndFlagsBits = 0xD00000000000001BLL;
      v8._countAndFlagsBits = 0xD00000000000002ALL;
      v7._object = 0x800000010067B150;
      v8._object = 0x800000010067B170;
      v9._countAndFlagsBits = 7958081;
      v9._object = 0xE300000000000000;
      return TTRLocalizedString(_:value:comment:)(v7, v9, v8)._countAndFlagsBits;
    }

    v17 = "in Custom SmartList Detail";
    v18 = "LIST_DETAIL_TIME_OPTION_MORNING";
    v1 = 0xD00000000000001FLL;
    v19 = 1852993357;
    goto LABEL_15;
  }

  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v11._countAndFlagsBits = 0xD00000000000001DLL;
      v12._countAndFlagsBits = 0xD00000000000002CLL;
      v13._countAndFlagsBits = 0x746867694ELL;
      v11._object = 0x800000010067B2B0;
      v12._object = 0x800000010067B2D0;
      v13._object = 0xE500000000000000;
      return TTRLocalizedString(_:value:comment:)(v11, v13, v12)._countAndFlagsBits;
    }

    v17 = "t in Custom SmartList Detail";
    v18 = "LIST_DETAIL_TIME_OPTION_NOTIME";
    v1 = 0xD00000000000001ELL;
    v2 = 0x656D6954206F4ELL;
    goto LABEL_17;
  }

  if (a1 != 3)
  {
    v17 = "SmartList Detail";
    v18 = "LIST_DETAIL_TIME_OPTION_EVENING";
    v1 = 0xD00000000000001FLL;
    v19 = 1852143173;
LABEL_15:
    v2 = v19 | 0x676E6900000000;
LABEL_17:
    v3 = v17 | 0x8000000000000000;
    v5 = v18 | 0x8000000000000000;
    v6 = 0xE700000000000000;
    v4 = 0xD00000000000002ELL;
    return TTRLocalizedString(_:value:comment:)(*&v1, *&v2, *&v4)._countAndFlagsBits;
  }

  v1 = 0xD000000000000021;
  v2 = 0x6F6F6E7265746641;
  v3 = 0x800000010067B1F0;
  v4 = 0xD000000000000030;
  v5 = 0x800000010067B220;
  v6 = 0xE90000000000006ELL;
  return TTRLocalizedString(_:value:comment:)(*&v1, *&v2, *&v4)._countAndFlagsBits;
}

uint64_t TTRSmartListFilterEditorViewModel.PriorityOptions.localizedOptionString.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v17._countAndFlagsBits = 0x6D756964654DLL;
      v18._countAndFlagsBits = 0xD000000000000024;
      v18._object = 0x800000010067AE60;
      v19._countAndFlagsBits = 0xD000000000000033;
      v19._object = 0x800000010067AE90;
      v17._object = 0xE600000000000000;
      return TTRLocalizedString(_:value:comment:)(v18, v17, v19)._countAndFlagsBits;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD000000000000022;
        v8 = 0x800000010067AED0;
        v9 = 0xD000000000000031;
        v10 = 0x800000010067AF00;
        v11 = 1751607624;
        v12 = 0xE400000000000000;
      }

      else
      {
        v11 = 0x726F697250206F4ELL;
        v12 = 0xEB00000000797469;
        v7 = 0xD000000000000029;
        v8 = 0x800000010067AF40;
        v9 = 0xD000000000000038;
        v10 = 0x800000010067AF70;
      }

      return TTRLocalizedString(_:value:comment:)(*&v7, *&v11, *&v9)._countAndFlagsBits;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x800000010067AD80;
      v2 = 0xD000000000000030;
      v3 = 0x800000010067ADB0;
      v4 = 0xD000000000000021;
      v5 = 7958081;
    }

    else
    {
      v1 = 0x800000010067ADF0;
      v2 = 0xD000000000000030;
      v3 = 0x800000010067AE20;
      v4 = 0xD000000000000021;
      v5 = 7827276;
    }

    v6 = 0xE300000000000000;
    return TTRLocalizedString(_:value:comment:)(*&v4, *&v5, *&v2)._countAndFlagsBits;
  }

  else
  {
    v14._object = 0x800000010067AD10;
    v15._countAndFlagsBits = 0xD000000000000030;
    v15._object = 0x800000010067AD40;
    v14._countAndFlagsBits = 0xD000000000000021;
    v16._countAndFlagsBits = 6710863;
    v16._object = 0xE300000000000000;
    return TTRLocalizedString(_:value:comment:)(v14, v16, v15)._countAndFlagsBits;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.FlaggedOptions.localizedOptionString.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x64656767616C46;
      v2 = 0xD000000000000022;
      v3 = 0x800000010067B020;
      v4 = 0xD000000000000031;
      v5 = 0x800000010067B050;
      v6 = 0xE700000000000000;
    }

    else
    {
      v1 = 0x67616C4620746F4ELL;
      v6 = 0xEB00000000646567;
      v2 = 0xD000000000000026;
      v3 = 0x800000010067B090;
      v4 = 0xD000000000000035;
      v5 = 0x800000010067B0C0;
    }

    return TTRLocalizedString(_:value:comment:)(*&v2, *&v1, *&v4)._countAndFlagsBits;
  }

  else
  {
    v7._object = 0x800000010067AFD0;
    v8._countAndFlagsBits = 0xD00000000000002DLL;
    v8._object = 0x800000010067AFF0;
    v7._countAndFlagsBits = 0xD00000000000001ELL;
    v9._countAndFlagsBits = 6710863;
    v9._object = 0xE300000000000000;
    return TTRLocalizedString(_:value:comment:)(v7, v9, v8)._countAndFlagsBits;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.LocationOptions.localizedOptionString.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x6369666963657053;
      v2 = 0xD000000000000024;
      v3 = 0x800000010067AA60;
      v4 = 0xD000000000000033;
      v5 = 0x800000010067AA90;
      v6 = 0xE800000000000000;
    }

    else
    {
      v1 = 0x7461636F4C206F4ELL;
      v6 = 0xEB000000006E6F69;
      v2 = 0xD000000000000027;
      v3 = 0x800000010067AAD0;
      v4 = 0xD000000000000036;
      v5 = 0x800000010067AB00;
    }

    return TTRLocalizedString(_:value:comment:)(*&v2, *&v1, *&v4)._countAndFlagsBits;
  }

  else
  {
    v7._object = 0x800000010067AA10;
    v8._countAndFlagsBits = 0xD00000000000002ELL;
    v8._object = 0x800000010067AA30;
    v7._countAndFlagsBits = 0xD00000000000001FLL;
    v9._countAndFlagsBits = 6710863;
    v9._object = 0xE300000000000000;
    return TTRLocalizedString(_:value:comment:)(v7, v9, v8)._countAndFlagsBits;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.HashtagOptions.localizedOptionString.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = "ag in Custom SmartList Detail";
      v2 = "OPTION_ANY_SELECTED";
      v3 = "Tag option Any Selected Tags in Custom SmartList Detail";
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      v1 = "Custom SmartList Detail";
      v2 = "OPTION_ALL_SELECTED";
      v3 = "Tag option All Selected Tags in Custom SmartList Detail";
LABEL_10:
      v10._countAndFlagsBits = 0xD000000000000023;
      v10._object = (v1 | 0x8000000000000000);
      v11._object = (v2 | 0x8000000000000000);
      v12._countAndFlagsBits = 0xD000000000000037;
      v12._object = ((v3 - 32) | 0x8000000000000000);
      v11._countAndFlagsBits = 0xD000000000000011;
      return TTRLocalizedString(_:value:comment:)(v10, v11, v12)._countAndFlagsBits;
    }

    v14 = "Custom SmartList Detail";
    v15 = "LIST_DETAIL_TAG_OPTION_UNTAGGED";
    v8 = 0x73676154206F4ELL;
    v4 = 0xD00000000000001FLL;
    goto LABEL_13;
  }

  if (a1)
  {
    v14 = "n Custom Smartlist Detail";
    v15 = "LIST_DETAIL_TAG_OPTION_ANY";
    v8 = 0x67615420796E41;
    v4 = 0xD00000000000001ALL;
LABEL_13:
    v5 = v14 | 0x8000000000000000;
    v6 = 0xD00000000000002DLL;
    v7 = v15 | 0x8000000000000000;
    v9 = 0xE700000000000000;
    return TTRLocalizedString(_:value:comment:)(*&v4, *&v8, *&v6)._countAndFlagsBits;
  }

  v4 = 0xD00000000000001ALL;
  v5 = 0x800000010067A3B0;
  v6 = 0xD000000000000029;
  v7 = 0x800000010067A3D0;
  v8 = 6710863;
  v9 = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(*&v4, *&v8, *&v6)._countAndFlagsBits;
}

uint64_t TTRSmartListFilterEditorViewModel.ListsOptions.localizedOptionString.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = "S_OPTION_INCLUDE";
      v2 = 0x6564756C636E49;
      v3 = 0x800000010067ABB0;
    }

    else
    {
      v1 = "S_OPTION_EXCLUDE";
      v3 = 0x800000010067AC10;
      v2 = 0x6564756C637845;
    }

    v5 = 0xD00000000000002FLL;
    v6 = v1 | 0x8000000000000000;
    v4 = 0xD000000000000020;
    v7 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x800000010067AB60;
    v5 = 0xD00000000000002BLL;
    v6 = 0x800000010067AB80;
    v2 = 6710863;
    v7 = 0xE300000000000000;
  }

  return TTRLocalizedString(_:value:comment:)(*(&v3 - 1), *&v2, *&v5)._countAndFlagsBits;
}

uint64_t TTRSmartListFilterEditorViewModel.FilterOperationOptions.localizedOptionString.getter(char a1)
{
  if (a1)
  {
    v1 = 0x800000010067B3E0;
    v2 = 0xD000000000000044;
    v3 = 0x800000010067B400;
    v4 = 0xD000000000000016;
    v5 = 7105633;
  }

  else
  {
    v1 = 0x800000010067B370;
    v2 = 0xD000000000000045;
    v3 = 0x800000010067B390;
    v4 = 0xD000000000000016;
    v5 = 7958113;
  }

  v6 = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(*&v4, *&v5, *&v2)._countAndFlagsBits;
}

uint64_t TTRSmartListFilterEditorViewModel.ListsData.listsOption.getter()
{
  v1 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004A56AC(v0, v3, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_100058000(&qword_100776AA8, &unk_100636EE0);
  sub_1000079B4(v3 + *(v6 + 48), &qword_100776AA0, &qword_100636ED8);
  return v5;
}

uint64_t TTRSmartListFilterEditorViewModel.ListsData.listData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100058000(&qword_100776AA0, &qword_100636ED8);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1004A56AC(v2, v6, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v12 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {

    v10 = sub_100058000(&qword_100776AA8, &unk_100636EE0);
    sub_100016588(v6 + *(v10 + 48), v9, &qword_100776AA0, &qword_100636ED8);
    return sub_100016588(v9, a1, &qword_100776AA0, &qword_100636ED8);
  }
}

uint64_t static TTRSmartListFilterEditorViewModel.helpAnchor(for:)()
{
  v0 = sub_100058000(&qword_100776A40, &unk_100636E90);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_100058000(&qword_100776A48, qword_100638FE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
  TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
  v6 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  TTRHelpAnchor.MacOSHelpAnchor.init(helpAnchor:)();
  v7 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  return TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
}

uint64_t TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)@<X0>(char *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v180 = a2;
  v165 = sub_100058000(&qword_10076D018, &unk_100630CC0);
  __chkstk_darwin(v165);
  v187 = &v161 - v5;
  v179 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v179);
  v184 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076D020, &qword_100633180);
  __chkstk_darwin(v7 - 8);
  v182 = &v161 - v8;
  v183 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v186 = *(v183 - 8);
  __chkstk_darwin(v183);
  v173 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v175 = &v161 - v11;
  v12 = sub_100058000(&qword_100776AB0, &unk_100641180);
  __chkstk_darwin(v12 - 8);
  v189 = &v161 - v13;
  v14 = sub_100058000(&qword_10076D028, &unk_100630CD0);
  __chkstk_darwin(v14 - 8);
  v181 = &v161 - v15;
  v171 = type metadata accessor for Date();
  v172 = *(v171 - 8);
  __chkstk_darwin(v171);
  v166 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  object = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v18 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100058000(&qword_100781C58, &unk_10063D820);
  __chkstk_darwin(v169);
  v170 = (&v161 - v19);
  v20 = sub_100058000(&qword_10076D030, &unk_100633170);
  __chkstk_darwin(v20 - 8);
  v22 = &v161 - v21;
  v23 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v24 = *(v23 - 1);
  __chkstk_darwin(v23);
  v26 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v177 = &v161 - v28;
  v29 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v29);
  v188 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100058000(&qword_100785B78, &unk_100641190);
  __chkstk_darwin(v31);
  v33 = &v161 - v32;
  v176 = a3;
  v185 = a1;
  if (!a1)
  {
    v41 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
    v42 = *(*(v41 - 8) + 56);
    v178 = 1;
    v42(v33, 1, 1, v41);
    (*(v24 + 56))(v22, 1, 1, v23);
    goto LABEL_7;
  }

  v174 = v29;
  v34 = a1;
  REMCustomSmartListFilterDescriptor.operation.getter();

  v35 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v33, 0, 1, v35);
  v37 = (*(v36 + 88))(v33, v35);
  if (v37 != enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:) && v37 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {
LABEL_85:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_86:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_87;
  }

  v178 = v37 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
  v38 = v34;
  REMCustomSmartListFilterDescriptor.date.getter();

  v39 = v23;
  v40 = (*(v24 + 48))(v22, 1, v23);
  a1 = v185;
  if (v40 != 1)
  {
    v47 = v177;
    (*(v24 + 32))();
    (*(v24 + 16))(v26, v47, v23);
    v48 = (*(v24 + 88))(v26, v23);
    a3 = v176;
    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:))
    {
      (*(v24 + 8))(v47, v23);
      (*(v24 + 96))(v26, v23);
      v43 = v188;
      *v188 = *v26;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      v44 = v189;
      v45 = v186;
      v39 = v187;
      v46 = v183;
      goto LABEL_32;
    }

    v164 = v38;
    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:))
    {
      v52 = 0xD000000000000019;
      (*(v24 + 96))(v26, v23);
      v43 = v170;
      sub_100016588(v26, v170, &qword_100781C58, &unk_10063D820);
      v53._countAndFlagsBits = 0xD00000000000001BLL;
      v53._object = 0x80000001006890D0;
      v54._countAndFlagsBits = 0xD000000000000030;
      v54._object = 0x80000001006890F0;
      v55._countAndFlagsBits = 1836020294;
      v55._object = 0xE400000000000000;
      v56 = TTRLocalizedString(_:value:comment:)(v53, v55, v54);
      countAndFlagsBits = v56._countAndFlagsBits;
      object = v56._object;
      if (qword_100767358 != -1)
      {
        goto LABEL_81;
      }

      goto LABEL_15;
    }

    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:))
    {
      (*(v24 + 96))(v26, v23);
      v81 = object[4];
      (v81)(v18, v26, countAndFlagsBits);
      v82 = v81;
      v83 = _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO30dateOptionRelativeRangeDetailsySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
      v85 = v84;
      (*(v24 + 8))(v177, v23);
      v86 = sub_100058000(&qword_100776AD8, &unk_100636F10);
      v87 = &v188[*(v86 + 48)];
      v43 = v188;
      v82();
      *v87 = 0;
      *(v87 + 1) = 0;
      *(v87 + 2) = v83;
      *(v87 + 3) = v85;
      v38 = v164;
      a1 = v185;
      goto LABEL_11;
    }

    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:))
    {
      (*(v24 + 96))(v26, v23);
      v88 = v166;
      v172 = *(v172 + 32);
      (v172)(v166, v26, v171);
      v170 = v23;
      v39 = v187;
      v43 = v188;
      if (qword_100767358 != -1)
      {
        swift_once();
      }

      v89 = qword_100785B70;
      v90 = v88;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v92 = [v89 stringFromDate:isa];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      (*(v24 + 8))(v177, v170);
      v96 = v43 + *(sub_100058000(&qword_100776AE8, &qword_100636F20) + 48);
      (v172)(v43, v90, v171);
      *v96 = 0;
      *(v96 + 1) = 0;
      *(v96 + 2) = v93;
      *(v96 + 3) = v95;
      goto LABEL_30;
    }

    v39 = v187;
    v97 = v172;
    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:))
    {
      (*(v24 + 96))(v26, v23);
      v98 = *(v97 + 32);
      v172 = v97 + 32;
      v99 = v166;
      v100 = v26;
      v101 = v171;
      v170 = v98;
      (v98)(v166, v100, v171);
      if (qword_100767358 == -1)
      {
LABEL_24:
        v102 = qword_100785B70;
        v103 = Date._bridgeToObjectiveC()().super.isa;
        v104 = [v102 stringFromDate:v103];

        v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = v106;

        (*(v24 + 8))(v177, v23);
        v108 = sub_100058000(&qword_100776AE8, &qword_100636F20);
        v43 = v188;
        v109 = &v188[*(v108 + 48)];
        (v170)(v188, v99, v101);
        *v109 = 0;
        *(v109 + 1) = 0;
        *(v109 + 2) = v105;
        *(v109 + 3) = v107;
LABEL_30:
        swift_storeEnumTagMultiPayload();
        v44 = v189;
        goto LABEL_31;
      }

LABEL_82:
      swift_once();
      goto LABEL_24;
    }

    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:))
    {
      (*(v24 + 96))(v26, v23);
      v110 = *(v97 + 32);
      v172 = v97 + 32;
      v99 = v166;
      v111 = v26;
      v101 = v171;
      v170 = v110;
      (v110)(v166, v111, v171);
      if (qword_100767358 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_82;
    }

    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:))
    {
      (*(v24 + 8))(v47, v23);
      v43 = v188;
      goto LABEL_30;
    }

    v44 = v189;
    v46 = v183;
    v38 = v164;
    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:))
    {
      (*(v24 + 8))(v177, v23);
      v43 = v188;
      swift_storeEnumTagMultiPayload();
      v45 = v186;
      goto LABEL_32;
    }

LABEL_87:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  a3 = v176;
LABEL_7:
  sub_1000079B4(v22, &qword_10076D030, &unk_100633170);
  v43 = v188;
  swift_storeEnumTagMultiPayload();
  v44 = v189;
  v45 = v186;
  v39 = v187;
  if (!a1)
  {
    v49 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
    v50 = v181;
    (*(*(v49 - 8) + 56))(v181, 1, 1, v49);
    LODWORD(v181) = _s9Reminders33TTRSmartListFilterEditorViewModelV11TimeOptionsO4timeAE19ReminderKitInternal014REMCustomSmartcD10DescriptorC0dH0OSg_tcfC_0(v50);
    LODWORD(v177) = _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO14priorityLevelsAESaySo011REMReminderH5LevelVGSg_tcfC_0(0);
    v51 = v182;
    (*(v45 + 56))(v182, 1, 1, v183);
    LODWORD(v183) = 0;
    goto LABEL_39;
  }

  v38 = a1;
  v46 = v183;
  while (1)
  {
LABEL_32:
    v112 = v38;
    v113 = v181;
    REMCustomSmartListFilterDescriptor.time.getter();

    LODWORD(v181) = _s9Reminders33TTRSmartListFilterEditorViewModelV11TimeOptionsO4timeAE19ReminderKitInternal014REMCustomSmartcD10DescriptorC0dH0OSg_tcfC_0(v113);
    v114 = v112;
    v115 = REMCustomSmartListFilterDescriptor.priorities.getter();

    LODWORD(v177) = _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO14priorityLevelsAESaySo011REMReminderH5LevelVGSg_tcfC_0(v115);
    v116 = v114;
    v117 = REMCustomSmartListFilterDescriptor.flagged.getter();

    if (v117)
    {
      v118 = 1;
    }

    else
    {
      v118 = 2;
    }

    if (v117 == 2)
    {
      v118 = 0;
    }

    LODWORD(v183) = v118;
    v119 = v116;
    v120 = v182;
    REMCustomSmartListFilterDescriptor.location.getter();

    if ((*(v45 + 48))(v120, 1, v46) != 1)
    {
      v123 = v175;
      (*(v45 + 32))(v175, v120, v46);
      v124 = v173;
      (*(v45 + 16))(v173, v123, v46);
      v125 = (*(v45 + 88))(v124, v46);
      if (v125 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.vehicle(_:))
      {
        (*(v45 + 96))(v124, v46);
        v126 = static TTRLocalizableStrings.LocationPicker.vehicleEventText(_:)();
        v128 = v127;
        v129 = 0;
        v130 = 0;
        v131 = 0x80;
      }

      else
      {
        if (v125 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.location(_:))
        {
          v121 = v184;
          if (v125 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.any(_:))
          {
            v24 = 0;
          }

          else
          {
            if (v125 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.noLocation(_:))
            {
              goto LABEL_86;
            }

            v24 = 2;
          }

          (*(v186 + 8))(v123, v46);
          v142 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
          (*(*(v142 - 8) + 56))(v44, 1, 1, v142);
          goto LABEL_52;
        }

        (*(v45 + 96))(v124, v46);
        v126 = *v124;
        v128 = *(v124 + 1);
        v133 = *(v124 + 2);
        v134 = *(v124 + 3);
        v135 = *(v124 + 4);
        v130 = *(v124 + 5);
        v136 = objc_allocWithZone(CLCircularRegion);
        v137 = String._bridgeToObjectiveC()();
        v138 = v136;
        v123 = v175;
        v129 = [v138 initWithCenter:v137 radius:v133 identifier:{v134, v135}];

        v45 = v186;
        v131 = 0;
      }

      (*(v45 + 8))(v123, v46);
      v139 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
      v140 = *(v139 + 24);
      v141 = type metadata accessor for TTRLocationQuickPickItem();
      v24 = 1;
      v44 = v189;
      (*(*(v141 - 8) + 56))(&v189[v140], 1, 1, v141);
      *v44 = v126;
      *(v44 + 8) = v128;
      *(v44 + 16) = v129;
      *(v44 + 24) = v130;
      *(v44 + 32) = v131;
      *(v44 + 40) = _swiftEmptyArrayStorage;
      (*(*(v139 - 8) + 56))(v44, 0, 1, v139);
      a3 = v176;
      v121 = v184;
      a1 = v185;
      v39 = v187;
      v43 = v188;
      goto LABEL_52;
    }

    v51 = v120;
LABEL_39:
    v121 = v184;
    sub_1000079B4(v51, &qword_10076D020, &qword_100633180);
    v122 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
    (*(*(v122 - 8) + 56))(v44, 1, 1, v122);
    if (!a1)
    {
      v132 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
      (*(*(v132 - 8) + 56))(v39, 1, 1, v132);
      LOBYTE(v24) = 0;
      goto LABEL_69;
    }

    v24 = 0;
    v119 = a1;
LABEL_52:
    v143 = v119;
    REMCustomSmartListFilterDescriptor.lists.getter();

    v144 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
    v145 = *(v144 - 8);
    if ((*(v145 + 48))(v39, 1, v144) == 1)
    {
      goto LABEL_69;
    }

    v52 = a1;
    if ((*(v145 + 88))(v39, v144) != enum case for REMCustomSmartListFilterDescriptor.FilterLists.lists(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_85;
    }

    (*(v145 + 96))(v39, v144);
    v147 = *v39;
    v146 = v39[1];
    if (*v39 >> 62)
    {
      break;
    }

    if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

LABEL_63:

    if (v146 >> 62)
    {
      goto LABEL_77;
    }

    a1 = v52;
    if (!*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_78;
    }

LABEL_65:
    if ((v146 & 0xC000000000000001) != 0)
    {
      v152 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_68;
    }

    if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v152 = *(v146 + 32);
LABEL_68:
      v153 = v152;

      v154 = *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
      *v121 = v153;
      v155 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
      (*(*(v155 - 8) + 56))(&v121[v154], 1, 1, v155);
      goto LABEL_69;
    }

    __break(1u);
LABEL_81:
    swift_once();
LABEL_15:
    v57 = qword_100785B70;
    v58 = Date._bridgeToObjectiveC()().super.isa;
    v59 = [v57 stringFromDate:v58];

    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v163 = v60;

    v61._object = 0x8000000100689130;
    v62._countAndFlagsBits = (v52 + 21);
    v62._object = 0x8000000100689150;
    v61._countAndFlagsBits = 0xD000000000000019;
    v63._countAndFlagsBits = 28500;
    v63._object = 0xE200000000000000;
    v64 = TTRLocalizedString(_:value:comment:)(v61, v63, v62);
    v162 = v64._countAndFlagsBits;
    v161 = v64._object;
    v169 = *(v169 + 36);
    v65 = qword_100785B70;
    v66 = Date._bridgeToObjectiveC()().super.isa;
    v67 = [v65 stringFromDate:v66];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    (*(v24 + 8))(v177, v39);
    v71 = sub_100058000(&qword_100776AE0, &qword_10063D830);
    v72 = v71[12];
    v73 = v188;
    v74 = &v188[v71[16]];
    v75 = &v188[v71[20]];
    v76 = *(v172 + 32);
    v77 = v171;
    v76(v188, v43, v171);
    v76(&v73[v72], (v43 + v169), v77);
    v78 = object;
    *v74 = countAndFlagsBits;
    v74[1] = v78;
    v79 = v163;
    v74[2] = v166;
    v74[3] = v79;
    v43 = v73;
    v80 = v161;
    *v75 = v162;
    v75[1] = v80;
    v75[2] = v68;
    v75[3] = v70;
    swift_storeEnumTagMultiPayload();
    a3 = v176;
    a1 = v185;
    v44 = v189;
    v39 = v187;
LABEL_31:
    v46 = v183;
    v45 = v186;
    v38 = v164;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_63;
  }

LABEL_56:

  if ((v147 & 0xC000000000000001) != 0)
  {
    v148 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_59;
  }

  if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v148 = *(v147 + 32);
LABEL_59:
    v149 = v148;

    v150 = *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
    *v121 = v149;
    v151 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    (*(*(v151 - 8) + 56))(&v121[v150], 1, 1, v151);
    a1 = v52;
    goto LABEL_69;
  }

  __break(1u);
LABEL_77:
  a1 = v52;
  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_65;
  }

LABEL_78:

LABEL_69:
  swift_storeEnumTagMultiPayload();
  if (v180)
  {

    v156 = 1;
  }

  else if (a1)
  {
    v157 = a1;
    v158 = REMCustomSmartListFilterDescriptor.isEmpty.getter();

    v156 = v158 ^ 1;
  }

  else
  {
    v156 = 0;
  }

  *a3 = v178;
  v159 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  sub_1004A55C0(v43, &a3[v159[5]], type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  a3[v159[6]] = v181;
  a3[v159[7]] = v24;
  sub_100016588(v44, &a3[v159[8]], &qword_100776AB0, &unk_100641180);
  a3[v159[9]] = v177;
  a3[v159[10]] = v183;
  result = sub_1004A55C0(v121, &a3[v159[11]], type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  a3[v159[12]] = v156 & 1;
  return result;
}

_UNKNOWN **TTRSmartListFilterEditorViewModel.PriorityOptions.priorities.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = &off_100712AE0;
  v3 = &off_100712B08;
  if (a1 != 4)
  {
    v3 = &off_100712B30;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = &off_100712A80;
  if (a1 != 1)
  {
    v4 = &off_100712AB8;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.ListsData.listID.getter()
{
  v1 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004A56AC(v0, v3, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  v4 = 0;
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v4 = *v3;
    v5 = sub_100058000(&qword_100776AA8, &unk_100636EE0);
    sub_1000079B4(v3 + *(v5 + 48), &qword_100776AA0, &qword_100636ED8);
  }

  return v4;
}

uint64_t TTRSmartListFilterEditorViewModel.ListsData.listData.setter(uint64_t a1)
{
  v3 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004A56AC(v1, v5, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v9 = a1;
  }

  else
  {
    sub_1004A8100(v1, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    v6 = *v5;
    v7 = *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
    v8 = v5 + v7;
    *v1 = v6;
    sub_100016588(a1, v1 + v7, &qword_100776AA0, &qword_100636ED8);
    swift_storeEnumTagMultiPayload();
    v9 = v8;
  }

  return sub_1000079B4(v9, &qword_100776AA0, &qword_100636ED8);
}

Reminders::TTRSmartListFilterEditorViewModel::FilterOperationOptions_optional __swiftcall TTRSmartListFilterEditorViewModel.FilterOperationOptions.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = Reminders_TTRSmartListFilterEditorViewModel_FilterOperationOptions_all;
  }

  else
  {
    v1.value = Reminders_TTRSmartListFilterEditorViewModel_FilterOperationOptions_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10049FCB8@<X0>(Swift::Int *a1@<X0>, Reminders::TTRSmartListFilterEditorViewModel::DateOptions::Bare_optional *a2@<X8>)
{
  result = _s9Reminders33TTRSmartListFilterEditorViewModelV11DateOptionsO4BareO8rawValueAGSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t sub_10049FD28@<X0>(Swift::Int *a1@<X0>, Reminders::TTRSmartListFilterEditorViewModel::PriorityOptions_optional *a2@<X8>)
{
  result = _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

Reminders::TTRSmartListFilterEditorViewModel::ListsOptions_optional __swiftcall TTRSmartListFilterEditorViewModel.ListsOptions.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t TTRSmartListFilterEditorViewModel.ListData.color.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0) + 20);
  v5 = type metadata accessor for TTRListColors.Color();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t TTRSmartListFilterEditorViewModel.listsData.setter(uint64_t a1, __n128 a2)
{
  v4 = v2 + *(type metadata accessor for TTRSmartListFilterEditorViewModel(0) + 44);

  return sub_1004A5714(a1, v4);
}

Swift::Int TTRSmartListFilterEditorViewModel.HelpTopic.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1004A02F8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_1004A0340()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDateStyle:1];
  result = [v0 setTimeStyle:0];
  qword_100785B70 = v0;
  return result;
}

void *static TTRSmartListFilterEditorViewModel.FilterOperationOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 2, 0);
  v0._object = 0x800000010067B370;
  v1._countAndFlagsBits = 0xD000000000000045;
  v1._object = 0x800000010067B390;
  v0._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 7958113;
  v2._object = 0xE300000000000000;
  v5 = TTRLocalizedString(_:value:comment:)(v0, v2, v1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_1004A1CD0((v6 > 1), v7 + 1, 1);
    object = v5._object;
    countAndFlagsBits = v5._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = countAndFlagsBits;
  v8[5] = object;
  v9._object = 0x800000010067B3E0;
  v10._countAndFlagsBits = 0xD000000000000044;
  v10._object = 0x800000010067B400;
  v9._countAndFlagsBits = 0xD000000000000016;
  v11._countAndFlagsBits = 7105633;
  v11._object = 0xE300000000000000;
  v14 = TTRLocalizedString(_:value:comment:)(v9, v11, v10);
  v13 = v14._object;
  v12 = v14._countAndFlagsBits;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004A1CD0((v15 > 1), v16 + 1, 1);
    v13 = v14._object;
    v12 = v14._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = v12;
  v17[5] = v13;
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.HashtagOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 5, 0);
  v0 = 0;
  do
  {
    v1 = *(&off_100712E48 + v0 + 32);
    if (v1 <= 1)
    {
      v2 = 0xD00000000000001ALL;
      if (!*(&off_100712E48 + v0 + 32))
      {
        v3 = 0x800000010067A3B0;
        v5 = 0xD000000000000029;
        v7 = 0x800000010067A3D0;
        v8 = 6710863;
        v4 = 0xE300000000000000;
        goto LABEL_13;
      }

      v3 = 0x800000010067A400;
      v5 = 0xD00000000000002DLL;
      v7 = 0x800000010067A420;
      v8 = 0x67615420796E41;
    }

    else
    {
      if (v1 == 2)
      {
        v2 = 0xD000000000000023;
        v3 = 0x800000010067A450;
        v4 = 0x800000010067A480;
        v5 = 0xD000000000000037;
        v6 = "Any Selected Tags";
        goto LABEL_9;
      }

      if (v1 == 3)
      {
        v2 = 0xD000000000000023;
        v3 = 0x800000010067A4E0;
        v4 = 0x800000010067A510;
        v5 = 0xD000000000000037;
        v6 = "All Selected Tags";
LABEL_9:
        v7 = v6 | 0x8000000000000000;
        v8 = 0xD000000000000011;
        goto LABEL_13;
      }

      v2 = 0xD00000000000001FLL;
      v3 = 0x800000010067A570;
      v5 = 0xD00000000000002DLL;
      v7 = 0x800000010067A590;
      v8 = 0x73676154206F4ELL;
    }

    v4 = 0xE700000000000000;
LABEL_13:
    v11 = TTRLocalizedString(_:value:comment:)(*&v2, *(&v4 - 1), *&v5);
    object = v11._object;
    countAndFlagsBits = v11._countAndFlagsBits;
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_1004A1CD0((v12 > 1), v13 + 1, 1);
      countAndFlagsBits = v11._countAndFlagsBits;
      object = v11._object;
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = countAndFlagsBits;
    v14[5] = object;
  }

  while (v0 != 5);
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.DateOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 9, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v2 = TTRSmartListFilterEditorViewModel.DateOptions.Bare.localizedOptionString.getter(*(&off_100712CB0 + v0 + 32));
    v10 = v1;
    v5 = v1[2];
    v4 = v1[3];
    if (v5 >= v4 >> 1)
    {
      v7 = v2;
      v8 = v3;
      sub_1004A1CD0((v4 > 1), v5 + 1, 1);
      v3 = v8;
      v2 = v7;
      v1 = v10;
    }

    ++v0;
    v1[2] = v5 + 1;
    v6 = &v1[2 * v5];
    v6[4] = v2;
    v6[5] = v3;
  }

  while (v0 != 9);
  return v1;
}

void *static TTRSmartListFilterEditorViewModel.TimeOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 7, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v2 = TTRSmartListFilterEditorViewModel.TimeOptions.localizedOptionString.getter(*(&off_100712CE0 + v0 + 32));
    v10 = v1;
    v5 = v1[2];
    v4 = v1[3];
    if (v5 >= v4 >> 1)
    {
      v7 = v2;
      v8 = v3;
      sub_1004A1CD0((v4 > 1), v5 + 1, 1);
      v3 = v8;
      v2 = v7;
      v1 = v10;
    }

    ++v0;
    v1[2] = v5 + 1;
    v6 = &v1[2 * v5];
    v6[4] = v2;
    v6[5] = v3;
  }

  while (v0 != 7);
  return v1;
}

void *static TTRSmartListFilterEditorViewModel.PriorityOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 6, 0);
  v0 = 0;
  do
  {
    v1 = *(&off_100712E70 + v0 + 32);
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v5 = 0xD000000000000024;
        v2 = 0x800000010067AE60;
        v3 = 0xD000000000000033;
        v4 = 0x800000010067AE90;
        v6 = 0x6D756964654DLL;
        v7 = 0xE600000000000000;
      }

      else if (v1 == 4)
      {
        v5 = 0xD000000000000022;
        v2 = 0x800000010067AED0;
        v3 = 0xD000000000000031;
        v4 = 0x800000010067AF00;
        v6 = 1751607624;
        v7 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xD000000000000029;
        v2 = 0x800000010067AF40;
        v3 = 0xD000000000000038;
        v4 = 0x800000010067AF70;
        v6 = 0x726F697250206F4ELL;
        v7 = 0xEB00000000797469;
      }
    }

    else if (*(&off_100712E70 + v0 + 32))
    {
      if (v1 == 1)
      {
        v2 = 0x800000010067AD80;
        v3 = 0xD000000000000030;
        v4 = 0x800000010067ADB0;
        v5 = 0xD000000000000021;
        v6 = 7958081;
      }

      else
      {
        v2 = 0x800000010067ADF0;
        v3 = 0xD000000000000030;
        v4 = 0x800000010067AE20;
        v5 = 0xD000000000000021;
        v6 = 7827276;
      }

      v7 = 0xE300000000000000;
    }

    else
    {
      v2 = 0x800000010067AD10;
      v3 = 0xD000000000000030;
      v4 = 0x800000010067AD40;
      v5 = 0xD000000000000021;
      v6 = 6710863;
      v7 = 0xE300000000000000;
    }

    v10 = TTRLocalizedString(_:value:comment:)(*&v5, *&v6, *&v3);
    object = v10._object;
    countAndFlagsBits = v10._countAndFlagsBits;
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      sub_1004A1CD0((v11 > 1), v12 + 1, 1);
      countAndFlagsBits = v10._countAndFlagsBits;
      object = v10._object;
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = countAndFlagsBits;
    v13[5] = object;
  }

  while (v0 != 6);
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.FlaggedOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 3, 0);
  v0._object = 0x800000010067AFD0;
  v1._countAndFlagsBits = 0xD00000000000002DLL;
  v1._object = 0x800000010067AFF0;
  v0._countAndFlagsBits = 0xD00000000000001ELL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  v5 = TTRLocalizedString(_:value:comment:)(v0, v2, v1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_1004A1CD0((v6 > 1), v7 + 1, 1);
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = countAndFlagsBits;
  v8[5] = object;
  v9._countAndFlagsBits = 0x64656767616C46;
  v10._countAndFlagsBits = 0xD000000000000022;
  v10._object = 0x800000010067B020;
  v11._countAndFlagsBits = 0xD000000000000031;
  v11._object = 0x800000010067B050;
  v9._object = 0xE700000000000000;
  v14 = TTRLocalizedString(_:value:comment:)(v10, v9, v11);
  v13 = v14._object;
  v12 = v14._countAndFlagsBits;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004A1CD0((v15 > 1), v16 + 1, 1);
    v12 = v14._countAndFlagsBits;
    v13 = v14._object;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = v12;
  v17[5] = v13;
  v18._countAndFlagsBits = 0x67616C4620746F4ELL;
  v18._object = 0xEB00000000646567;
  v19._countAndFlagsBits = 0xD000000000000026;
  v19._object = 0x800000010067B090;
  v20._countAndFlagsBits = 0xD000000000000035;
  v20._object = 0x800000010067B0C0;
  v23 = TTRLocalizedString(_:value:comment:)(v19, v18, v20);
  v22 = v23._object;
  v21 = v23._countAndFlagsBits;
  v25 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage[3];
  if (v25 >= v24 >> 1)
  {
    sub_1004A1CD0((v24 > 1), v25 + 1, 1);
    v22 = v23._object;
    v21 = v23._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v25 + 1;
  v26 = &_swiftEmptyArrayStorage[2 * v25];
  v26[4] = v21;
  v26[5] = v22;
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.LocationOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 3, 0);
  v0._object = 0x800000010067AA10;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  v1._object = 0x800000010067AA30;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  v5 = TTRLocalizedString(_:value:comment:)(v0, v2, v1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_1004A1CD0((v6 > 1), v7 + 1, 1);
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = countAndFlagsBits;
  v8[5] = object;
  v9._countAndFlagsBits = 0x6369666963657053;
  v10._countAndFlagsBits = 0xD000000000000024;
  v10._object = 0x800000010067AA60;
  v11._countAndFlagsBits = 0xD000000000000033;
  v11._object = 0x800000010067AA90;
  v9._object = 0xE800000000000000;
  v14 = TTRLocalizedString(_:value:comment:)(v10, v9, v11);
  v13 = v14._object;
  v12 = v14._countAndFlagsBits;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004A1CD0((v15 > 1), v16 + 1, 1);
    v12 = v14._countAndFlagsBits;
    v13 = v14._object;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = v12;
  v17[5] = v13;
  v18._countAndFlagsBits = 0x7461636F4C206F4ELL;
  v18._object = 0xEB000000006E6F69;
  v19._countAndFlagsBits = 0xD000000000000027;
  v19._object = 0x800000010067AAD0;
  v20._countAndFlagsBits = 0xD000000000000036;
  v20._object = 0x800000010067AB00;
  v23 = TTRLocalizedString(_:value:comment:)(v19, v18, v20);
  v22 = v23._object;
  v21 = v23._countAndFlagsBits;
  v25 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage[3];
  if (v25 >= v24 >> 1)
  {
    sub_1004A1CD0((v24 > 1), v25 + 1, 1);
    v22 = v23._object;
    v21 = v23._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v25 + 1;
  v26 = &_swiftEmptyArrayStorage[2 * v25];
  v26[4] = v21;
  v26[5] = v22;
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.ListsOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 3, 0);
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  v0._object = 0x800000010067AB60;
  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x800000010067AB80;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  v5 = TTRLocalizedString(_:value:comment:)(v0, v2, v1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_1004A1CD0((v6 > 1), v7 + 1, 1);
    object = v5._object;
    countAndFlagsBits = v5._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = countAndFlagsBits;
  v8[5] = object;
  v9._object = 0x800000010067ABB0;
  v10._countAndFlagsBits = 0xD00000000000002FLL;
  v10._object = 0x800000010067ABE0;
  v9._countAndFlagsBits = 0xD000000000000020;
  v11._countAndFlagsBits = 0x6564756C636E49;
  v11._object = 0xE700000000000000;
  v14 = TTRLocalizedString(_:value:comment:)(v9, v11, v10);
  v13 = v14._object;
  v12 = v14._countAndFlagsBits;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004A1CD0((v15 > 1), v16 + 1, 1);
    v13 = v14._object;
    v12 = v14._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = v12;
  v17[5] = v13;
  v18._object = 0x800000010067AC10;
  v19._countAndFlagsBits = 0x6564756C637845;
  v20._countAndFlagsBits = 0xD00000000000002FLL;
  v20._object = 0x800000010067AC40;
  v18._countAndFlagsBits = 0xD000000000000020;
  v19._object = 0xE700000000000000;
  v23 = TTRLocalizedString(_:value:comment:)(v18, v19, v20);
  v22 = v23._object;
  v21 = v23._countAndFlagsBits;
  v25 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage[3];
  if (v25 >= v24 >> 1)
  {
    sub_1004A1CD0((v24 > 1), v25 + 1, 1);
    v22 = v23._object;
    v21 = v23._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v25 + 1;
  v26 = &_swiftEmptyArrayStorage[2 * v25];
  v26[4] = v21;
  v26[5] = v22;
  return _swiftEmptyArrayStorage;
}

void (*TTRSmartListFilterEditorViewModel.ListsData.listData.modify(void *a1))(uint64_t **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  v4[1] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v4[3] = v7;
  v9 = *(*(sub_100058000(&qword_100776AA0, &qword_100636ED8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v4[5] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(v9);
    v10 = malloc(v9);
    v4[5] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v4[6] = v11;
  sub_1004A56AC(v1, v8, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v14 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  else
  {

    v13 = sub_100058000(&qword_100776AA8, &unk_100636EE0);
    sub_100016588(v8 + *(v13 + 48), v10, &qword_100776AA0, &qword_100636ED8);
    sub_100016588(v10, v12, &qword_100776AA0, &qword_100636ED8);
  }

  return sub_1004A1914;
}

void sub_1004A1914(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  if (a2)
  {
    v5 = v3[5];
    v4 = v3[6];
    v7 = v3[3];
    v6 = v3[4];
    v8 = v3[2];
    sub_10000794C(v4, v6, &qword_100776AA0, &qword_100636ED8);
    TTRSmartListFilterEditorViewModel.ListsData.listData.setter(v6);
    sub_1000079B4(v4, &qword_100776AA0, &qword_100636ED8);
  }

  else
  {
    sub_1004A56AC(*v3, v3[2], type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = v3[6];
    if (EnumCaseMultiPayload <= 1)
    {
      v11 = v3[2];
      v12 = *v3;
      v13 = v3[6];
      sub_1004A8100(*v3, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
      v14 = *v11;
      v15 = *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
      v16 = v11 + v15;
      *v12 = v14;
      sub_100016588(v13, v12 + v15, &qword_100776AA0, &qword_100636ED8);
      swift_storeEnumTagMultiPayload();
      v10 = v16;
    }

    sub_1000079B4(v10, &qword_100776AA0, &qword_100636ED8);
    v5 = v3[5];
    v4 = v3[6];
    v7 = v3[3];
    v6 = v3[4];
    v8 = v3[2];
  }

  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);

  free(v3);
}

void *sub_1004A1AC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A1AE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_10077A7F0, &qword_1006395A0, &type metadata accessor for TTRSectionLite);
  *v3 = result;
  return result;
}

char *sub_1004A1B24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A288C(a1, a2, a3, *v3, &qword_100786098, &qword_100641E48);
  *v3 = result;
  return result;
}

char *sub_1004A1B54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A288C(a1, a2, a3, *v3, &qword_100785FB0, &qword_100641CF0);
  *v3 = result;
  return result;
}

void *sub_1004A1B84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785FC0, &unk_100641D00, &type metadata accessor for REMRemindersListDataView.SectionLite);
  *v3 = result;
  return result;
}

void *sub_1004A1BC8(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100785FD8, &qword_100641D28, &unk_100781800, &qword_10063D2A0);
  *v3 = result;
  return result;
}

void *sub_1004A1C08(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_1007860A8, &qword_100641E68, &qword_1007860B0, &unk_100641E70);
  *v3 = result;
  return result;
}

void *sub_1004A1C48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100772150, &unk_100635D00, &type metadata accessor for TTRRemindersListViewModel.Item);
  *v3 = result;
  return result;
}

void *sub_1004A1C8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_1007860A0, &qword_100641E60, &type metadata accessor for TTRRemindersListUncommittedReminder);
  *v3 = result;
  return result;
}

char *sub_1004A1CD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A1CF0(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786040, &unk_100641DC8, &unk_100782210, &unk_10063E030);
  *v3 = result;
  return result;
}

void *sub_1004A1D30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100769560, &unk_10062E060, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
  *v3 = result;
  return result;
}

void *sub_1004A1D74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A372C(a1, a2, a3, *v3, &qword_100786000, &unk_100641D68, &qword_100773368, &qword_100634F30);
  *v3 = result;
  return result;
}

void *sub_1004A1DB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_1007845D0, &qword_10062EAB0, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

void *sub_1004A1DF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786048, &qword_100641DD8, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
  *v3 = result;
  return result;
}

void *sub_1004A1E3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_100785FF0, &unk_100641D48, &qword_100781C98, &qword_10063D8B0);
  *v3 = result;
  return result;
}

void *sub_1004A1E7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_100785FF8, &qword_100641D58, &qword_100781C90, &qword_100641D60);
  *v3 = result;
  return result;
}

void *sub_1004A1EBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A372C(a1, a2, a3, *v3, &qword_100786008, &qword_100641D78, &qword_100786010, &qword_100641D80);
  *v3 = result;
  return result;
}

char *sub_1004A1EFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2BC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A1F1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785F78, &qword_100641CA8, &type metadata accessor for TTRLocationQuickPickItem);
  *v3 = result;
  return result;
}

void *sub_1004A1F60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785F98, &unk_100645D70, &type metadata accessor for TTRListOrCustomSmartListChangeItem);
  *v3 = result;
  return result;
}

void *sub_1004A1FA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786030, &unk_100641DB0, type metadata accessor for TTRIGroupMembershipViewModel.List);
  *v3 = result;
  return result;
}

void *sub_1004A1FE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100778AD0, &qword_100638348, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  *v3 = result;
  return result;
}

void *sub_1004A202C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786028, &unk_100641DA0, type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move);
  *v3 = result;
  return result;
}

void *sub_1004A2070(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100776388, &unk_100641E50, &type metadata accessor for TTRRemindersListViewModel.DeleteCompletedMenuItem);
  *v3 = result;
  return result;
}

void *sub_1004A20B4(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786090, &unk_100641E38, &qword_100776330, &qword_100636900);
  *v3 = result;
  return result;
}

void *sub_1004A20F4(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100785F80, &qword_100641CC0, &qword_10076BDF0, &qword_10062FF78);
  *v3 = result;
  return result;
}

void *sub_1004A2134(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2CE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A2154(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &unk_10076BAA0, &unk_10062FD90, &type metadata accessor for TTRAccountsListsViewModel.Item);
  *v3 = result;
  return result;
}

void *sub_1004A2198(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786080, &qword_100641E30, &unk_10076BDA0, &unk_10063D3D0);
  *v3 = result;
  return result;
}

char *sub_1004A21D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A21F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786078, &qword_100641E20, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
  *v3 = result;
  return result;
}

char *sub_1004A223C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2F38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A225C(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100785FA0, &qword_100641CE0, &qword_100785FA8, &qword_100641CE8);
  *v3 = result;
  return result;
}

void *sub_1004A229C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785FB8, &qword_100641CF8, &type metadata accessor for TTRRemindersListTreeViewModel.SectionsContainer);
  *v3 = result;
  return result;
}

void *sub_1004A22E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100770900, &qword_100632FD0, &type metadata accessor for TTRRemindersListTreeViewModel.Section);
  *v3 = result;
  return result;
}

void *sub_1004A2324(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100772760, &unk_100634AE0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  *v3 = result;
  return result;
}

void *sub_1004A2368(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_100786060, &qword_100641E00, &qword_100786068, &qword_100641E08);
  *v3 = result;
  return result;
}

void *sub_1004A23A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_1007768B0, &qword_1006338A0, &qword_100771230, &qword_1006338D0);
  *v3 = result;
  return result;
}

void *sub_1004A23E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100783BD0, qword_10063FBC8, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

void *sub_1004A242C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785FD0, &qword_100641D20, &type metadata accessor for TTRRecurrenceRuleModel);
  *v3 = result;
  return result;
}

void *sub_1004A2470(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_100785FE8, &qword_100641D40, &qword_100776860, &qword_100636D58);
  *v3 = result;
  return result;
}

void *sub_1004A24B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004A24D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A33A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A24F0(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786058, &unk_100641DF0, &unk_1007818E0, &qword_10063D348);
  *v3 = result;
  return result;
}

char *sub_1004A2530(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A34CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A2550(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A35E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A2570(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100782910, &unk_100641CB0, &qword_100782900, &qword_10063E658);
  *v3 = result;
  return result;
}

void *sub_1004A25B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_1007831E8, &qword_100641D90, &type metadata accessor for TTRListOrCustomSmartList);
  *v3 = result;
  return result;
}

void *sub_1004A25F4(void *a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786038, &qword_100641DC0, &qword_1007842D8, &qword_100640668);
  *v3 = result;
  return result;
}

void *sub_1004A2634(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A372C(a1, a2, a3, *v3, &qword_10076E928, &qword_100631E38, &qword_1007860C0, &qword_100641E90);
  *v3 = result;
  return result;
}

void *sub_1004A2674(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786018, &qword_100641D88, &type metadata accessor for TTRIRemindersListLargeImageAttachmentsView.ViewModel);
  *v3 = result;
  return result;
}

void *sub_1004A26B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_1007860B8, &unk_100641E80, &type metadata accessor for REMAccountsListDataView.Model.PinnedList);
  *v3 = result;
  return result;
}

char *sub_1004A26FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A3A50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A2744(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_100785F88, &unk_100641CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_100769AB8, &unk_100630E70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A288C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100058000(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size_1(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_1004A2984(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_100771E10, &qword_100634270);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004A2A90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100058000(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
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

    a4[2] = 0;
  }

  else
  {
    sub_100058000(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1004A2BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100774070, &unk_10063B4E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004A2CE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_100786510, &qword_100641E28);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
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

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&unk_10076BCD0, &qword_1006393C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A2E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100785FC8, &unk_100641D10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A2F38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007860D0, &qword_100641EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A3044(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007812E8, &unk_10063CED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A316C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007812B0, &unk_10063CE90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1004A3260(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_1007860D8, &qword_100641EA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_100773348, &unk_100634F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A33A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100786070, &unk_100641E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004A34CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100786020, &qword_100641D98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004A35E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_100785FE0, &unk_100641D30);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_100781C28, &qword_10063D7F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004A372C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100058000(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1004A3874(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
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

  sub_100058000(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
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

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1004A3A50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_10076B9F0, &qword_10062FD18);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV11DateOptionsO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, _BYTE *a2)
{
  v194 = a2;
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v189 = *(v3 - 8);
  v190 = v3;
  __chkstk_darwin(v3);
  v186 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v192 = *(v5 - 8);
  v193 = v5;
  __chkstk_darwin(v5);
  v183 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v185 = &v170 - v8;
  __chkstk_darwin(v9);
  v184 = &v170 - v10;
  __chkstk_darwin(v11);
  v191 = &v170 - v12;
  __chkstk_darwin(v13);
  v15 = &v170 - v14;
  __chkstk_darwin(v16);
  v18 = &v170 - v17;
  v19 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v19);
  v187 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v188 = &v170 - v22;
  __chkstk_darwin(v23);
  v25 = &v170 - v24;
  __chkstk_darwin(v26);
  v28 = &v170 - v27;
  __chkstk_darwin(v29);
  v31 = &v170 - v30;
  __chkstk_darwin(v32);
  v34 = &v170 - v33;
  v35 = sub_100058000(&qword_1007860C8, &qword_100641E98);
  __chkstk_darwin(v35 - 8);
  v37 = &v170 - v36;
  v39 = &v170 + *(v38 + 56) - v36;
  v40 = a1;
  v41 = v39;
  sub_1004A56AC(v40, v37, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v42 = v194;
  v194 = v41;
  sub_1004A56AC(v42, v41, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_66;
        }

        goto LABEL_49;
      }

      if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_66;
        }

        goto LABEL_49;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_49:
        v131 = v37;
LABEL_50:
        sub_1004A8100(v131, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
        v48 = 1;
        return v48 & 1;
      }

LABEL_66:
      sub_1000079B4(v37, &qword_1007860C8, &qword_100641E98);
LABEL_114:
      v48 = 0;
      return v48 & 1;
    }

    v66 = v194;
    if (EnumCaseMultiPayload == 4)
    {
      v182 = v37;
      v67 = v37;
      v68 = v188;
      sub_1004A56AC(v67, v188, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
      v69 = sub_100058000(&qword_100776AE0, &qword_10063D830);
      v70 = v69[16];
      v72 = *(v68 + v70);
      v71 = *(v68 + v70 + 8);
      v190 = v69[12];
      v191 = v71;
      v73 = *(v68 + v70 + 24);
      v189 = *(v68 + v70 + 16);
      v74 = v69[20];
      v75 = *(v68 + v74 + 8);
      v186 = *(v68 + v74);
      v187 = v72;
      v77 = *(v68 + v74 + 16);
      v76 = *(v68 + v74 + 24);
      v78 = v66;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        v152 = v193;
        v153 = *(v192 + 8);
        v153(v68 + v190, v193);
        v153(v68, v152);
        v37 = v182;
        goto LABEL_66;
      }

      v179 = v73;
      v180 = v76;
      v174 = v77;
      v181 = v75;
      v79 = *&v66[v70 + 8];
      v173 = *&v66[v70];
      v178 = v79;
      v80 = *&v66[v70 + 24];
      v175 = *&v66[v70 + 16];
      v81 = *&v66[v74 + 8];
      v171 = *&v66[v74];
      v177 = v81;
      v82 = *&v66[v74 + 24];
      v172 = *&v66[v74 + 16];
      v176 = v82;
      v83 = v192;
      v84 = v193;
      v85 = *(v192 + 32);
      v86 = v184;
      v85(v184, v78, v193);
      v87 = v190;
      v88 = v185;
      v85(v185, (v68 + v190), v84);
      v89 = &v78[v87];
      v90 = v183;
      v85(v183, v89, v84);
      v91 = v86;
      v92 = static Date.== infix(_:_:)();
      v93 = *(v83 + 8);
      v93(v68, v84);
      if ((v92 & 1) == 0)
      {

        v93(v90, v84);
        v93(v88, v84);
        v154 = v91;
        v155 = v84;
LABEL_111:
        v93(v154, v155);
        goto LABEL_112;
      }

      v95 = v177;
      v94 = v178;
      v96 = v176;
      if ((static Date.== infix(_:_:)() & 1) == 0)
      {

        v156 = v193;
        v93(v90, v193);
        v157 = v88;
LABEL_110:
        v93(v157, v156);
        v154 = v91;
        v155 = v156;
        goto LABEL_111;
      }

      if (v191)
      {
        if (v94)
        {
          if ((v187 != v173 || v191 != v94) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

LABEL_108:

LABEL_109:
            v156 = v193;
            v93(v90, v193);
            v157 = v185;
            goto LABEL_110;
          }

LABEL_104:
          if (v189 == v175 && v179 == v80)
          {
          }

          else
          {
            v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v166 & 1) == 0)
            {

              v91 = v184;
              goto LABEL_109;
            }
          }

          if (v181)
          {
            v167 = v193;
            v168 = v174;
            if (!v95)
            {
LABEL_128:

              v93(v90, v167);
              v93(v185, v167);
              v154 = v184;
              v155 = v167;
              goto LABEL_111;
            }

            if ((v186 != v171 || v181 != v95) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {

              goto LABEL_128;
            }
          }

          else
          {
            v167 = v193;
            v168 = v174;
            if (v95)
            {
              goto LABEL_128;
            }
          }

          if (v168 == v172 && v180 == v96)
          {

            v93(v90, v167);
            v93(v185, v167);
            v93(v184, v167);
          }

          else
          {
            v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v93(v90, v167);
            v93(v185, v167);
            v93(v184, v167);
            if ((v169 & 1) == 0)
            {
              goto LABEL_112;
            }
          }

          v131 = v182;
          goto LABEL_50;
        }
      }

      else if (!v94)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v132 = v187;
    sub_1004A56AC(v37, v187, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    v133 = *(sub_100058000(&qword_100776AD8, &unk_100636F10) + 48);
    v135 = *(v132 + v133);
    v134 = *(v132 + v133 + 8);
    v137 = *(v132 + v133 + 16);
    v136 = *(v132 + v133 + 24);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v193 = v137;
      v182 = v37;
      v138 = *&v66[v133 + 8];
      v188 = *&v66[v133];
      v139 = *&v66[v133 + 16];
      v140 = *&v66[v133 + 24];
      v191 = v135;
      v192 = v139;
      v141 = v189;
      v142 = v186;
      v143 = v132;
      v144 = v190;
      (*(v189 + 32))(v186, v66, v190);
      v145 = static REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.== infix(_:_:)();
      v146 = *(v141 + 8);
      v146(v143, v144);
      if (v145)
      {
        v147 = v138;
        if (v134)
        {
          v148 = v186;
          if (!v147)
          {
LABEL_93:

            v37 = v182;

            v146(v148, v144);
LABEL_94:
            v159 = v37;
            goto LABEL_113;
          }

          if ((v191 != v188 || v134 != v147) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            goto LABEL_93;
          }
        }

        else
        {
          v148 = v186;
          if (v147)
          {
            goto LABEL_93;
          }
        }

        v37 = v182;
        if (v193 == v192 && v136 == v140)
        {

          v146(v148, v144);
          goto LABEL_49;
        }

        v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v146(v148, v144);
        if (v164)
        {
          goto LABEL_49;
        }

        goto LABEL_94;
      }

      v146(v142, v144);

LABEL_112:
      v159 = v182;
      goto LABEL_113;
    }

    v151 = v190;
    v149 = *(v189 + 8);
    v150 = v132;
LABEL_65:
    v149(v150, v151);
    goto LABEL_66;
  }

  v44 = v15;
  v45 = v191;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v49 = v28;
      sub_1004A56AC(v37, v28, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
      v50 = *(sub_100058000(&qword_100776AE8, &qword_100636F20) + 48);
      v51 = &v28[v50];
      v53 = *&v28[v50];
      v52 = *(v51 + 1);
      v55 = *(v51 + 2);
      v54 = *(v51 + 3);
      v56 = v194;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        v149 = *(v192 + 8);
        v150 = v49;
        goto LABEL_62;
      }

      v182 = v37;
      v57 = *&v56[v50 + 8];
      v188 = *&v56[v50];
      v189 = v53;
      v58 = *&v56[v50 + 24];
      v190 = *&v56[v50 + 16];
      v191 = v57;
      v59 = v192;
      v60 = v56;
      v61 = v193;
      (*(v192 + 32))(v44, v60, v193);
      v62 = static Date.== infix(_:_:)();
      v63 = v49;
      v64 = *(v59 + 8);
      v64(v63, v61);
      if ((v62 & 1) == 0)
      {
        v64(v44, v61);

        goto LABEL_112;
      }

      v65 = v44;
      if (v52)
      {
        if (!v191)
        {
LABEL_89:

          v158 = v182;

          v64(v65, v193);
LABEL_92:
          v159 = v158;
LABEL_113:
          sub_1004A8100(v159, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
          goto LABEL_114;
        }

        if ((v189 != v188 || v52 != v191) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          goto LABEL_89;
        }
      }

      else if (v191)
      {
        goto LABEL_89;
      }

      v158 = v182;
      if (v55 == v190 && v54 == v58)
      {

        v64(v65, v193);
      }

      else
      {
        v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v64(v65, v193);
        if ((v160 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_100;
    }

    v115 = v25;
    sub_1004A56AC(v37, v25, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    v116 = *(sub_100058000(&qword_100776AE8, &qword_100636F20) + 48);
    v118 = *&v25[v116];
    v117 = *&v25[v116 + 8];
    v119 = *&v25[v116 + 16];
    v120 = *&v25[v116 + 24];
    v121 = v194;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      v149 = *(v192 + 8);
      v150 = v115;
      goto LABEL_62;
    }

    v189 = v119;
    v190 = v117;
    v182 = v37;
    v122 = *&v121[v116 + 8];
    v186 = *&v121[v116];
    v187 = v118;
    v123 = *&v121[v116 + 24];
    v188 = *&v121[v116 + 16];
    v124 = v192;
    v125 = v115;
    v126 = v193;
    (*(v192 + 32))(v45, v121, v193);
    v127 = static Date.== infix(_:_:)();
    v128 = *(v124 + 8);
    v128(v125, v126);
    if ((v127 & 1) == 0)
    {
      v128(v45, v126);

      goto LABEL_112;
    }

    if (v190)
    {
      v129 = v45;
      v130 = v189;
      if (!v122)
      {
LABEL_91:

        v158 = v182;

        v128(v129, v193);
        goto LABEL_92;
      }

      if ((v187 != v186 || v190 != v122) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        goto LABEL_91;
      }
    }

    else
    {
      v129 = v45;
      v130 = v189;
      if (v122)
      {
        goto LABEL_91;
      }
    }

    v158 = v182;
    if (v130 == v188 && v120 == v123)
    {

      v128(v129, v193);
    }

    else
    {
      v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v128(v129, v193);
      if ((v163 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_100;
  }

  if (EnumCaseMultiPayload)
  {
    v97 = v31;
    sub_1004A56AC(v37, v31, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    v98 = *(sub_100058000(&qword_100776AE8, &qword_100636F20) + 48);
    v100 = *&v31[v98];
    v99 = *&v31[v98 + 8];
    v101 = v194;
    v103 = *&v31[v98 + 16];
    v102 = *&v31[v98 + 24];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v190 = v100;
      v191 = v103;
      v182 = v37;
      v104 = *&v101[v98 + 8];
      v105 = *&v101[v98 + 16];
      v106 = *&v101[v98 + 24];
      v188 = *&v101[v98];
      v189 = v105;
      v107 = v192;
      v108 = v101;
      v109 = v193;
      (*(v192 + 32))(v18, v108, v193);
      v110 = static Date.== infix(_:_:)();
      v111 = v97;
      v112 = v109;
      v113 = *(v107 + 8);
      v113(v111, v112);
      if ((v110 & 1) == 0)
      {
        v113(v18, v112);

        goto LABEL_112;
      }

      if (v99)
      {
        v114 = v106;
        if (!v104)
        {
LABEL_90:

          v158 = v182;

          v113(v18, v112);
          goto LABEL_92;
        }

        if ((v190 != v188 || v99 != v104) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          goto LABEL_90;
        }
      }

      else
      {
        v114 = v106;
        if (v104)
        {
          goto LABEL_90;
        }
      }

      v158 = v182;
      if (v191 == v189 && v102 == v114)
      {

        v113(v18, v112);
      }

      else
      {
        v161 = v113;
        v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v161(v18, v112);
        if ((v162 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

LABEL_100:
      v131 = v158;
      goto LABEL_50;
    }

    v149 = *(v192 + 8);
    v150 = v97;
LABEL_62:
    v151 = v193;
    goto LABEL_65;
  }

  sub_1004A56AC(v37, v34, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v46 = v194;
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_66;
  }

  v47 = *v34 ^ *v46;
  sub_1004A8100(v37, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v48 = v47 ^ 1;
  return v48 & 1;
}

uint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV7DetailsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6)
      {
        goto LABEL_6;
      }

      v9 = a3;
      v10 = a4;
      v11 = a8;
      v12 = a7;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v9;
      a4 = v10;
      a7 = v12;
      a8 = v11;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_6:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV11TimeOptionsO4timeAE19ReminderKitInternal014REMCustomSmartcD10DescriptorC0dH0OSg_tcfC_0(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076D028, &unk_100630CD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10000794C(a1, v4, &qword_10076D028, &unk_100630CD0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(a1, &qword_10076D028, &unk_100630CD0);
    sub_1000079B4(v4, &qword_10076D028, &unk_100630CD0);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.any(_:))
  {
    v12 = 1;
LABEL_15:
    sub_1000079B4(a1, &qword_10076D028, &unk_100630CD0);
    (*(v6 + 8))(v11, v5);
    return v12;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.morning(_:))
  {
    v12 = 2;
    goto LABEL_15;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.afternoon(_:))
  {
    v12 = 3;
    goto LABEL_15;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.evening(_:))
  {
    v12 = 4;
    goto LABEL_15;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.night(_:))
  {
    v12 = 5;
    goto LABEL_15;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.noTime(_:))
  {
    v12 = 6;
    goto LABEL_15;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO14priorityLevelsAESaySo011REMReminderH5LevelVGSg_tcfC_0(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    v2 = 32;
    v3 = v1;
    do
    {
      v4 = v3;
      v5 = v3-- != 0;
      if (!v5)
      {
        break;
      }

      v6 = *(result + v2);
      v2 += 8;
    }

    while (v6);
    v7 = 32;
    v8 = *(result + 16);
    do
    {
      v9 = v8;
      if (!v8)
      {
        break;
      }

      v10 = *(result + v7);
      v7 += 8;
      --v8;
    }

    while (v10 != 1);
    v11 = 32;
    v12 = *(result + 16);
    do
    {
      v13 = v12;
      v5 = v12-- != 0;
      if (!v5)
      {
        break;
      }

      v14 = *(result + v11);
      v11 += 8;
    }

    while (v14 != 2);
    v15 = 32;
    while (v1)
    {
      v16 = *(result + v15);
      v15 += 8;
      --v1;
      if (v16 == 3)
      {

        if (!v9 && !(v4 | v13))
        {
          return 4;
        }

        return 1;
      }
    }

    if (v9)
    {
      if (!(v4 | v13))
      {
        return 2;
      }

      return 1;
    }

    if (v4)
    {
      if (v13)
      {
        return 1;
      }

      return 5;
    }

    else if (v13)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004A55C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV11DateOptionsO4BareO8rawValueAGSgSi_tcfC_0(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_1004A5648(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_100275DE8(*a1, v4, v5, v6, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return a2;
}

uint64_t sub_1004A56AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004A5714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A5918(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004A5970()
{
  result = qword_100785C00;
  if (!qword_100785C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C00);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRSmartListFilterEditorViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    *a1 = *a2;
    v7 = a3[5];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
      {
        goto LABEL_14;
      }
    }

    else if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v25 = type metadata accessor for Date();
        v26 = v6;
        v27 = *(*(v25 - 8) + 16);
        v27(v8, v9, v25);
        v28 = sub_100058000(&qword_100776AE0, &qword_10063D830);
        v27(&v8[v28[12]], &v9[v28[12]], v25);
        v6 = v26;
        v29 = v28[16];
        v30 = &v8[v29];
        v31 = &v9[v29];
        v32 = v31[1];
        *v30 = *v31;
        v30[1] = v32;
        v33 = v31[3];
        v30[2] = v31[2];
        v30[3] = v33;
        v34 = v28[20];
        v35 = &v8[v34];
        v36 = &v9[v34];
        v37 = v36[1];
        *v35 = *v36;
        v35[1] = v37;
        v38 = v36[3];
        v35[2] = v36[2];
        v35[3] = v38;

        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v12 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
        (*(*(v12 - 8) + 16))(v8, v9, v12);
        v13 = *(sub_100058000(&qword_100776AD8, &unk_100636F10) + 48);
        v14 = &v8[v13];
        v15 = &v9[v13];
        v16 = v15[1];
        *v14 = *v15;
        v14[1] = v16;
        v17 = v15[3];
        v14[2] = v15[2];
        v14[3] = v17;

        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

LABEL_14:
      memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_15:
      v39 = v6[7];
      *(v4 + v6[6]) = v3[v6[6]];
      *(v4 + v39) = v3[v39];
      v40 = v6[8];
      v41 = (v4 + v40);
      v42 = &v3[v40];
      v43 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43))
      {
        v45 = sub_100058000(&qword_100776AB0, &unk_100641180);
        memcpy(v41, v42, *(*(v45 - 8) + 64));
      }

      else
      {
        v92 = v6;
        v95 = v3;
        v98 = v4;
        v46 = *v42;
        v47 = *(v42 + 1);
        v48 = *(v42 + 2);
        v49 = *(v42 + 3);
        v50 = v42[32];
        sub_100275DE8(*v42, v47, v48, v49, v50);
        *v41 = v46;
        v41[1] = v47;
        v41[2] = v48;
        v41[3] = v49;
        *(v41 + 32) = v50;
        v41[5] = *(v42 + 5);
        v51 = *(v43 + 24);
        v52 = type metadata accessor for TTRLocationQuickPickItem();
        v53 = *(v52 - 8);
        v54 = *(v53 + 48);

        if (v54(&v42[v51], 1, v52))
        {
          v55 = sub_100058000(&qword_100775720, &unk_100635D90);
          memcpy(v41 + v51, &v42[v51], *(*(v55 - 8) + 64));
        }

        else
        {
          (*(v53 + 16))(v41 + v51, &v42[v51], v52);
          (*(v53 + 56))(v41 + v51, 0, 1, v52);
        }

        (*(v44 + 56))(v41, 0, 1, v43);
        v3 = v95;
        v4 = v98;
        v6 = v92;
      }

      v56 = v6[10];
      *(v4 + v6[9]) = v3[v6[9]];
      *(v4 + v56) = v3[v56];
      v57 = v6[11];
      v58 = (v4 + v57);
      v59 = &v3[v57];
      v60 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
      v61 = swift_getEnumCaseMultiPayload();
      if (v61 == 1)
      {
        v69 = *v59;
        *v58 = *v59;
        v70 = v69;
        v71 = *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
        v65 = v58 + v71;
        v66 = v59 + v71;
        v72 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v66, 1, v72))
        {
          v94 = v6;
          v97 = v3;
          v100 = v4;
          v82 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v82;
          v83 = *(v72 + 20);
          v84 = type metadata accessor for TTRListColors.Color();
          v91 = *(*(v84 - 8) + 16);

          v91(&v65[v83], &v66[v83], v84);
          v85 = *(v72 + 24);
          v86 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
          v87 = *(v86 - 8);
          if ((*(v87 + 48))(&v66[v85], 1, v86))
          {
            v88 = sub_100058000(&qword_100776A28, &qword_100636E78);
            memcpy(&v65[v85], &v66[v85], *(*(v88 - 8) + 64));
          }

          else
          {
            (*(v87 + 16))(&v65[v85], &v66[v85], v86);
            (*(v87 + 56))(&v65[v85], 0, 1, v86);
          }

          (*(v73 + 56))(v65, 0, 1, v72);
          v3 = v97;
          v4 = v100;
          v6 = v94;
          goto LABEL_36;
        }
      }

      else
      {
        if (v61)
        {
          memcpy(v58, v59, *(*(v60 - 8) + 64));
LABEL_37:
          *(v4 + v6[12]) = v3[v6[12]];
          return v4;
        }

        v62 = *v59;
        *v58 = *v59;
        v63 = v62;
        v64 = *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
        v65 = v58 + v64;
        v66 = v59 + v64;
        v67 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
        v68 = *(v67 - 8);
        if (!(*(v68 + 48))(v66, 1, v67))
        {
          v93 = v6;
          v96 = v3;
          v99 = v4;
          v75 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v75;
          v76 = *(v67 + 20);
          v77 = type metadata accessor for TTRListColors.Color();
          v90 = *(*(v77 - 8) + 16);

          v90(&v65[v76], &v66[v76], v77);
          v78 = *(v67 + 24);
          v79 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
          v80 = *(v79 - 8);
          if ((*(v80 + 48))(&v66[v78], 1, v79))
          {
            v81 = sub_100058000(&qword_100776A28, &qword_100636E78);
            memcpy(&v65[v78], &v66[v78], *(*(v81 - 8) + 64));
          }

          else
          {
            (*(v80 + 16))(&v65[v78], &v66[v78], v79);
            (*(v80 + 56))(&v65[v78], 0, 1, v79);
          }

          v3 = v96;
          v4 = v99;
          (*(v68 + 56))(v65, 0, 1, v67);
          v6 = v93;
          goto LABEL_36;
        }
      }

      v74 = sub_100058000(&qword_100776AA0, &qword_100636ED8);
      memcpy(v65, v66, *(*(v74 - 8) + 64));
LABEL_36:
      swift_storeEnumTagMultiPayload();
      goto LABEL_37;
    }

    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 16))(v8, v9, v19);
    v20 = *(sub_100058000(&qword_100776AE8, &qword_100636F20) + 48);
    v21 = &v8[v20];
    v22 = &v9[v20];
    v23 = v22[1];
    *v21 = *v22;
    v21[1] = v23;
    v24 = v22[3];
    v21[2] = v22[2];
    v21[3] = v24;

    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  v18 = *a2;
  *v4 = *a2;
  v4 = (v18 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for TTRSmartListFilterEditorViewModel(uint64_t a1, int *a2)
{
  v4 = a1 + a2[5];
  type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v4, v9);
    v7 = &qword_100776AE8;
    v8 = &qword_100636F20;
    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_8;
    case 4:
      v23 = type metadata accessor for Date();
      v24 = *(*(v23 - 8) + 8);
      v24(v4, v23);
      v25 = sub_100058000(&qword_100776AE0, &qword_10063D830);
      v24(v4 + *(v25 + 48), v23);

      goto LABEL_10;
    case 5:
      v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v6 - 8) + 8))(v4, v6);
      v7 = &qword_100776AD8;
      v8 = &unk_100636F10;
LABEL_9:
      sub_100058000(v7, v8);
LABEL_10:

      break;
  }

LABEL_11:
  v10 = a1 + a2[8];
  v11 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_1004A68D0(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));

    v12 = *(v11 + 24);
    v13 = type metadata accessor for TTRLocationQuickPickItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = (a1 + a2[11]);
  type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {

    v17 = v15 + *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
    v18 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    result = (*(*(v18 - 8) + 48))(v17, 1, v18);
    if (!result)
    {

      v19 = *(v18 + 20);
      v20 = type metadata accessor for TTRListColors.Color();
      (*(*(v20 - 8) + 8))(&v17[v19], v20);
      v21 = *(v18 + 24);
      v22 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v27 = *(v22 - 8);
      result = (*(v27 + 48))(&v17[v21], 1, v22);
      if (!result)
      {
        v26 = *(v27 + 8);

        return v26(&v17[v21], v22);
      }
    }
  }

  return result;
}

void sub_1004A68D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{

  if ((a5 & 0x80) == 0)
  {
  }
}

_BYTE *initializeWithCopy for TTRSmartListFilterEditorViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_12;
    }

LABEL_8:
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 16))(v7, v8, v17);
    v18 = *(sub_100058000(&qword_100776AE8, &qword_100636F20) + 48);
    v19 = &v7[v18];
    v20 = &v8[v18];
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = v20[3];
    v19[2] = v20[2];
    v19[3] = v22;

    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_8;
    case 4:
      v23 = type metadata accessor for Date();
      v24 = *(*(v23 - 8) + 16);
      v24(v7, v8, v23);
      v25 = sub_100058000(&qword_100776AE0, &qword_10063D830);
      v24(&v7[v25[12]], &v8[v25[12]], v23);
      v26 = v25[16];
      v27 = &v7[v26];
      v28 = &v8[v26];
      v29 = v28[1];
      *v27 = *v28;
      v27[1] = v29;
      v30 = v28[3];
      v27[2] = v28[2];
      v27[3] = v30;
      v31 = v25[20];
      v32 = &v7[v31];
      v33 = &v8[v31];
      v34 = v33[1];
      *v32 = *v33;
      v32[1] = v34;
      v35 = v33[3];
      v32[2] = v33[2];
      v32[3] = v35;

      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    case 5:
      v11 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v11 - 8) + 16))(v7, v8, v11);
      v12 = *(sub_100058000(&qword_100776AD8, &unk_100636F10) + 48);
      v13 = &v7[v12];
      v14 = &v8[v12];
      v15 = v14[1];
      *v13 = *v14;
      v13[1] = v15;
      v16 = v14[3];
      v13[2] = v14[2];
      v13[3] = v16;

      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
  }

LABEL_12:
  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_13:
  v36 = v3[7];
  v5[v3[6]] = v4[v3[6]];
  v5[v36] = v4[v36];
  v37 = v3[8];
  v38 = &v5[v37];
  v39 = &v4[v37];
  v40 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40))
  {
    v42 = sub_100058000(&qword_100776AB0, &unk_100641180);
    memcpy(v38, v39, *(*(v42 - 8) + 64));
  }

  else
  {
    v89 = v3;
    v92 = v4;
    v95 = v5;
    v43 = *v39;
    v44 = *(v39 + 1);
    v45 = *(v39 + 2);
    v46 = *(v39 + 3);
    v47 = v39[32];
    sub_100275DE8(*v39, v44, v45, v46, v47);
    *v38 = v43;
    v38[1] = v44;
    v38[2] = v45;
    v38[3] = v46;
    *(v38 + 32) = v47;
    v38[5] = *(v39 + 5);
    v48 = *(v40 + 24);
    v49 = type metadata accessor for TTRLocationQuickPickItem();
    v50 = *(v49 - 8);
    v51 = *(v50 + 48);

    if (v51(&v39[v48], 1, v49))
    {
      v52 = sub_100058000(&qword_100775720, &unk_100635D90);
      memcpy(v38 + v48, &v39[v48], *(*(v52 - 8) + 64));
    }

    else
    {
      (*(v50 + 16))(v38 + v48, &v39[v48], v49);
      (*(v50 + 56))(v38 + v48, 0, 1, v49);
    }

    (*(v41 + 56))(v38, 0, 1, v40);
    v4 = v92;
    v5 = v95;
    v3 = v89;
  }

  v53 = v3[10];
  v5[v3[9]] = v4[v3[9]];
  v5[v53] = v4[v53];
  v54 = v3[11];
  v55 = &v5[v54];
  v56 = &v4[v54];
  v57 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  v58 = swift_getEnumCaseMultiPayload();
  if (v58 == 1)
  {
    v66 = *v56;
    *v55 = *v56;
    v67 = v66;
    v68 = *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
    v62 = v55 + v68;
    v63 = v56 + v68;
    v69 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v70 = *(v69 - 8);
    if (!(*(v70 + 48))(v63, 1, v69))
    {
      v91 = v3;
      v94 = v4;
      v97 = v5;
      v79 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v79;
      v80 = *(v69 + 20);
      v81 = type metadata accessor for TTRListColors.Color();
      v88 = *(*(v81 - 8) + 16);

      v88(&v62[v80], &v63[v80], v81);
      v82 = *(v69 + 24);
      v83 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v84 = *(v83 - 8);
      if ((*(v84 + 48))(&v63[v82], 1, v83))
      {
        v85 = sub_100058000(&qword_100776A28, &qword_100636E78);
        memcpy(&v62[v82], &v63[v82], *(*(v85 - 8) + 64));
      }

      else
      {
        (*(v84 + 16))(&v62[v82], &v63[v82], v83);
        (*(v84 + 56))(&v62[v82], 0, 1, v83);
      }

      (*(v70 + 56))(v62, 0, 1, v69);
      v4 = v94;
      v5 = v97;
      v3 = v91;
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (!v58)
  {
    v59 = *v56;
    *v55 = *v56;
    v60 = v59;
    v61 = *(sub_100058000(&qword_100776AA8, &unk_100636EE0) + 48);
    v62 = v55 + v61;
    v63 = v56 + v61;
    v64 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v65 = *(v64 - 8);
    if (!(*(v65 + 48))(v63, 1, v64))
    {
      v90 = v3;
      v93 = v4;
      v96 = v5;
      v72 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v72;
      v73 = *(v64 + 20);
      v74 = type metadata accessor for TTRListColors.Color();
      v87 = *(*(v74 - 8) + 16);

      v87(&v62[v73], &v63[v73], v74);
      v75 = *(v64 + 24);
      v76 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v77 = *(v76 - 8);
      if ((*(v77 + 48))(&v63[v75], 1, v76))
      {
        v78 = sub_100058000(&qword_100776A28, &qword_100636E78);
        memcpy(&v62[v75], &v63[v75], *(*(v78 - 8) + 64));
      }

      else
      {
        (*(v77 + 16))(&v62[v75], &v63[v75], v76);
        (*(v77 + 56))(&v62[v75], 0, 1, v76);
      }

      v4 = v93;
      v5 = v96;
      v3 = v90;
      (*(v65 + 56))(v62, 0, 1, v64);
      goto LABEL_34;
    }

LABEL_24:
    v71 = sub_100058000(&qword_100776AA0, &qword_100636ED8);
    memcpy(v62, v63, *(*(v71 - 8) + 64));
LABEL_34:
    swift_storeEnumTagMultiPayload();
    goto LABEL_35;
  }

  memcpy(v55, v56, *(*(v57 - 8) + 64));
LABEL_35:
  v5[v3[12]] = v4[v3[12]];
  return v5;
}