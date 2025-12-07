id sub_1004C2D88()
{
  v0 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListLargeImageAttachmentsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1004CC8E8(&qword_100786EB0, type metadata accessor for TTRIBoardReminderCellContentView, &unk_1006429C8);
  swift_unknownObjectRetain();
  TTRIRemindersListLargeImageAttachmentsView.delegate.setter();
  v1 = NUIContainerViewSizeUseDefault[0];
  v2 = NUIContainerViewSizeUseDefault[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  v3 = v0;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v4) = v6;
  [v3 setLayoutSize:v1 withContentPriority:{v2, v4}];
  [v3 setClipsToBounds:1];

  TTRIRemindersListLargeImageAttachmentsView.cornerRadius.setter();
  return v3;
}

id sub_1004C2EF8()
{
  type metadata accessor for TTRNoAnimationContainerStackView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setAxis:0];
  [v0 setDistribution:8];
  sub_1004C2198();
  ceil(_:toScale:)();
  [v0 setSpacing:?];
  [v0 setAlignment:3];
  [v0 setDebugBoundingBoxesEnabled:0];
  v1 = NUIContainerViewSizeUseDefault[0];
  v2 = NUIContainerViewSizeUseDefault[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v3) = v5;
  [v0 setLayoutSize:v1 withContentPriority:{v2, v3}];

  return v0;
}

objc_class *sub_1004C304C()
{
  v1 = qword_100786D30;
  v2 = *(v0 + qword_100786D30);
  if (v2)
  {
    v3 = *(v0 + qword_100786D30);
  }

  else
  {
    type metadata accessor for TTRIExpandedHitTestButton();
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = v4;
    v5 = v0;
    v12.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v12).super.super.super.super.isa;
    sub_1004C2198();
    LODWORD(v7) = 1148846080;
    [(objc_class *)isa setLayoutSize:24.0 withContentPriority:24.0, v7, 0, 0, 0, sub_1004CC930, v11];
    v8 = *(v0 + v1);
    *(v5 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1004C3188(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + qword_100786D58;
    swift_beginAccess();
    v5 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      v6 = TTRBoardReminderCellAppLinkConfiguration.onAppLinkPress.getter();
      if (v6)
      {
        v8 = v6;
        v9 = v7;
        v10 = swift_endAccess();
        v8(v10);

        sub_1000301AC(v8, v9);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

id sub_1004C3290()
{
  v1 = qword_100786D38;
  v2 = *(v0 + qword_100786D38);
  if (v2)
  {
    v3 = *(v0 + qword_100786D38);
  }

  else
  {
    type metadata accessor for TTRIRemindersListCellAssigneeView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didPressAssigneeIndicator:"];
    [v5 setNumberOfTouchesRequired:1];
    [v4 addGestureRecognizer:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1004C3360()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListLayout();
  v4 = __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100786D40;
  v8 = *(v1 + qword_100786D40);
  if (v8)
  {
    v9 = *(v1 + qword_100786D40);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for TTRRemindersListLayout.columns(_:), v4);
    v10 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView());
    v11 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.init(listLayout:)();
    v12 = NUIContainerViewSizeUseDefault[0];
    v13 = NUIContainerViewSizeUseDefault[1];
    type metadata accessor for UILayoutPriority(0);
    v18[1] = 1084227584;
    v18[2] = 1148846080;
    sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v14) = v18[3];
    [v11 setLayoutSize:v12 withContentPriority:{v13, v14}];
    v15 = *(v1 + v7);
    *(v1 + v7) = v11;
    v9 = v11;

    v8 = 0;
  }

  v16 = v8;
  return v9;
}

id sub_1004C3514()
{
  v1 = qword_100786D48;
  v2 = *(v0 + qword_100786D48);
  if (v2)
  {
    v3 = *(v0 + qword_100786D48);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TTRISeparator());
    v6 = TTRISeparator.init(axis:)();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1004C358C()
{
  v1 = qword_100786D50;
  v2 = *(v0 + qword_100786D50);
  if (v2)
  {
    v3 = *(v0 + qword_100786D50);
  }

  else
  {
    v4 = sub_1004C35F0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1004C35F0(uint64_t a1)
{
  v2 = sub_100058000(&qword_100769CF8, &qword_10062E8F0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  static UIButton.Configuration.outlineDisclosure()();
  UIButton.Configuration.title.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v12 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  sub_1004C2198();
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.imageReservation.setter();
  type metadata accessor for TTRIOutlineDisclosureButton();
  (*(v6 + 16))(v8, v11, v5);
  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = UIButton.init(configuration:primaryAction:)();
  TTRIOutlineDisclosureButton.togglesExpansionAsPrimaryAction.setter();
  [v13 setContentHorizontalAlignment:3];
  [v13 setMinimumLayoutSize:{NUIContainerViewLengthUseDefault, 44.0}];
  v14 = [objc_opt_self() defaultCenter];
  memset(v18, 0, sizeof(v18));
  v15 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(v18, &qword_10076AE40, &qword_10062EE50);
  (*(v6 + 8))(v11, v5);

  *(a1 + qword_100786D20) = v16;

  return v13;
}

uint64_t sub_1004C39E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  static UIFont.roundedSubheadlineFont.getter();
  sub_10008CD14();
  return AttributeContainer.subscript.setter();
}

void sub_1004C3A94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + qword_100786D58;
    swift_beginAccess();
    v5 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      v6 = TTRBoardReminderCellShowSubtasksConfiguration.onShowSubtasksButtonPress.getter();
      if (v6)
      {
        v8 = v6;
        v9 = v7;
        v10 = swift_endAccess();
        v8(v10);

        sub_1000301AC(v8, v9);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

void sub_1004C3B9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1004C3BF0();
  }
}

void sub_1004C3BF0()
{
  v0 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  v6 = sub_1004C358C();
  UIButton.configuration.getter();
  v7 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7))
  {
    sub_10000794C(v5, v2, &unk_100772600, &unk_1006348F0);
    UIButton.configuration.setter();

    sub_1000079B4(v5, &unk_100772600, &unk_1006348F0);
  }

  else
  {
    UIAccessibilityButtonShapesEnabled();
    v8 = String._bridgeToObjectiveC()();

    v9 = [objc_opt_self() systemImageNamed:v8];

    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }
}

id sub_1004C3DD0(void *a1)
{
  type metadata accessor for TTRIRemindersListCellInfoButton();
  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:v3 primaryAction:{0.0, 0.0, 0.0, 0.0, 0, 0, 0, sub_1004CAE60, v2}];

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  [v5 setImage:v7 forState:0];
  v8 = v5;
  static TTRAccesibility.RemindersList.Label.EditDetails.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setAccessibilityLabel:v9];

  v10 = NUIContainerViewSizeUseDefault[0];
  v11 = NUIContainerViewSizeUseDefault[1];
  v12 = v8;
  LODWORD(v13) = 1148846080;
  [v12 setLayoutSize:v10 withContentPriority:{v11, v13}];
  [v12 setCustomAlignmentRectInsets:{6.0, 0.0, 6.0, 0.0}];

  v14 = v12;
  [v14 sizeToFit];
  [a1 bounds];
  CGRectGetWidth(v16);
  [v14 frame];
  [a1 effectiveUserInterfaceLayoutDirection];
  CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)();
  [v14 setFrame:?];

  return v14;
}

void sub_1004C406C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = sub_100058000(&qword_100778EC8, &qword_100642A30);
  v21 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10062D450;
  v12 = *&v2[qword_100786CE8];
  if (v12)
  {
    v13 = v11;
    *(v11 + 32) = v12;
    v14 = v12;
    v13[5] = sub_1004C3514();
    v13[6] = sub_1004C3360();
    v13[7] = sub_1004C358C();
    sub_1004CCA18(a1, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    sub_10000794C(v22, v6, &qword_100778EC8, &qword_100642A30);
    v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v16 = (v9 + *(v21 + 80) + v15) & ~*(v21 + 80);
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = v13;
    v17[4] = v2;
    sub_1002C5104(v10, v17 + v15, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    sub_100016588(v6, v17 + v16, &qword_100778EC8, &qword_100642A30);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1004CC938;
    *(v18 + 24) = v17;
    aBlock[4] = sub_100026410;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072BB98;
    v19 = _Block_copy(aBlock);
    v20 = v2;

    [v20 performBatchUpdates:v19];
    _Block_release(v19);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1004C43C0(char *a1)
{
  v88 = sub_100058000(&qword_100786DE8, &qword_100642A38);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v79 - v2;
  v101 = sub_100058000(&qword_100786DF0, &qword_100642A40);
  v111 = *(v101 - 8);
  v3 = v111;
  __chkstk_darwin(v101);
  v99 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v79 - v6;
  __chkstk_darwin(v7);
  v83 = &v79 - v8;
  __chkstk_darwin(v9);
  v82 = &v79 - v10;
  __chkstk_darwin(v11);
  v81 = &v79 - v12;
  __chkstk_darwin(v13);
  v80 = &v79 - v14;
  __chkstk_darwin(v15);
  v79 = &v79 - v16;
  v17 = type metadata accessor for TTRBoardReminderCellInfoButtonVisibility();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v79 - v22;
  type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_100647580);
  v110 = TTRBoardReminderCellContentConfigurationType.priorityIndicatorIsHidden.getter();
  v105 = TTRBoardReminderCellContentConfigurationType.flaggedIndicatorIsHidden.getter();
  TTRBoardReminderCellContentConfigurationType.infoButtonVisibility.getter();
  (*(v18 + 104))(v20, enum case for TTRBoardReminderCellInfoButtonVisibility.hidden(_:), v17);
  sub_1004CC8E8(&qword_100786DF8, &type metadata accessor for TTRBoardReminderCellInfoButtonVisibility, &protocol conformance descriptor for TTRBoardReminderCellInfoButtonVisibility);
  v104 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v18 + 8);
  v24(v20, v17);
  v24(v23, v17);
  v89 = TTRBoardReminderCellContentConfigurationType.listNameIsHidden.getter();
  v94 = TTRBoardReminderCellContentConfigurationType.subtaskCountIsHidden.getter();
  v90 = TTRBoardReminderCellContentConfigurationType.descriptionLabelIsHidden.getter();
  v91 = TTRBoardReminderCellContentConfigurationType.notesTextViewIsHidden.getter();
  v93 = TTRBoardReminderCellContentConfigurationType.locationLabelIsHidden.getter();
  v92 = TTRBoardReminderCellContentConfigurationType.hashtagsLabelIsHidden.getter();
  v97 = TTRBoardReminderCellContentConfigurationType.suggestedSectionButtonIsHidden.getter();
  v96 = TTRBoardReminderCellContentConfigurationType.imageAttachmentsAreHidden.getter();
  v86 = a1;
  v95 = TTRBoardReminderCellContentConfigurationType.accessoriesAreHidden.getter();
  sub_100058000(&qword_100786E00, &qword_100642A48);
  v25 = *(v3 + 72);
  v109 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v107 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10062D400;
  v108 = sub_100058000(&qword_100786E08, &qword_100642A50);
  v27 = swift_allocObject();
  v28 = v27;
  v106 = xmmword_100633540;
  *(v27 + 16) = xmmword_100633540;
  *(v27 + 32) = 0;
  if (v110)
  {
    v29 = 14;
  }

  else
  {
    v29 = 1;
  }

  *(v27 + 33) = v29;
  *(v27 + 34) = 2;
  if (v104)
  {
    v30 = 14;
  }

  else
  {
    v30 = 4;
  }

  *(v27 + 35) = v30;
  if (v105)
  {
    v31 = 14;
  }

  else
  {
    v31 = 3;
  }

  v32 = swift_allocObject();
  *(v28 + 36) = v31;
  v112 = v28;
  v33 = sub_100058000(&qword_100786E10, &qword_100642A58);
  v34 = sub_10000E188(&qword_100786E18, &qword_100786E10, &qword_100642A58, &protocol conformance descriptor for [A]);
  Sequence.removingNils<A>()();

  static CGFloat.nuiUseDefault.getter();
  sub_1004CAEE8();
  sub_1004CAF3C();
  sub_1004CAF90();
  TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
  v98 = v32;
  *(v32 + 16) = v26;
  v35 = (v32 + 16);
  v104 = v30;
  v105 = v31;
  v102 = v34;
  v103 = v33;
  if (v89)
  {
    v36 = v26;
    v37 = v101;
  }

  else
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v106;
    *(v38 + 32) = 0;
    if (v110)
    {
      v39 = 14;
    }

    else
    {
      v39 = 5;
    }

    *(v38 + 33) = v39;
    *(v38 + 34) = 5;
    *(v38 + 35) = v30;
    *(v38 + 36) = v31;
    v112 = v38;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v26 + 16) + 1, 1, v26);
    }

    v37 = v101;
    v41 = *(v36 + 2);
    v40 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v41 >= v40 >> 1)
    {
      v36 = sub_100547288((v40 > 1), v41 + 1, 1, v36);
    }

    *(v36 + 2) = v41 + 1;
    (*(v111 + 32))(&v36[v109 + v41 * v107]);
    *v35 = v36;
    swift_endAccess();
  }

  v42 = v105;
  if ((v90 & 1) == 0)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v106;
    *(v43 + 32) = 0;
    if (v110)
    {
      v44 = 14;
    }

    else
    {
      v44 = 6;
    }

    *(v43 + 33) = v44;
    *(v43 + 34) = 6;
    *(v43 + 35) = v30;
    *(v43 + 36) = v42;
    v112 = v43;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v45 = v80;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v47 = *(v36 + 2);
    v46 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v47 >= v46 >> 1)
    {
      v36 = sub_100547288((v46 > 1), v47 + 1, 1, v36);
    }

    *(v36 + 2) = v47 + 1;
    (*(v111 + 32))(&v36[v109 + v47 * v107], v45, v37);
    *v35 = v36;
    swift_endAccess();
    v42 = v105;
  }

  if ((v91 & 1) == 0)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v106;
    *(v48 + 32) = 0;
    if (v110)
    {
      v49 = 14;
    }

    else
    {
      v49 = 7;
    }

    *(v48 + 33) = v49;
    *(v48 + 34) = 7;
    *(v48 + 35) = v30;
    *(v48 + 36) = v42;
    v112 = v48;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v50 = v81;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v52 = *(v36 + 2);
    v51 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v52 >= v51 >> 1)
    {
      v36 = sub_100547288((v51 > 1), v52 + 1, 1, v36);
    }

    *(v36 + 2) = v52 + 1;
    (*(v111 + 32))(&v36[v109 + v52 * v107], v50, v37);
    *v35 = v36;
    swift_endAccess();
    v42 = v105;
  }

  if ((v92 & 1) == 0)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = v106;
    *(v53 + 32) = 0;
    if (v110)
    {
      v54 = 14;
    }

    else
    {
      v54 = 8;
    }

    *(v53 + 33) = v54;
    *(v53 + 34) = 8;
    *(v53 + 35) = v30;
    *(v53 + 36) = v42;
    v112 = v53;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v55 = v82;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v57 = *(v36 + 2);
    v56 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v57 >= v56 >> 1)
    {
      v36 = sub_100547288((v56 > 1), v57 + 1, 1, v36);
    }

    *(v36 + 2) = v57 + 1;
    (*(v111 + 32))(&v36[v109 + v57 * v107], v55, v37);
    *v35 = v36;
    swift_endAccess();
    v42 = v105;
  }

  if ((v93 & 1) == 0)
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v106;
    *(v58 + 32) = 0;
    if (v110)
    {
      v59 = 14;
    }

    else
    {
      v59 = 9;
    }

    *(v58 + 33) = v59;
    *(v58 + 34) = 9;
    *(v58 + 35) = v30;
    *(v58 + 36) = v42;
    v112 = v58;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v60 = v83;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v62 = *(v36 + 2);
    v61 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v62 >= v61 >> 1)
    {
      v36 = sub_100547288((v61 > 1), v62 + 1, 1, v36);
    }

    *(v36 + 2) = v62 + 1;
    (*(v111 + 32))(&v36[v109 + v62 * v107], v60, v37);
    *v35 = v36;
    swift_endAccess();
    v42 = v105;
  }

  if ((v94 & 1) == 0)
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v106;
    *(v63 + 32) = 0;
    if (v110)
    {
      v64 = 14;
    }

    else
    {
      v64 = 10;
    }

    *(v63 + 33) = v64;
    *(v63 + 34) = 10;
    *(v63 + 35) = v30;
    *(v63 + 36) = v42;
    v112 = v63;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v65 = v84;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v67 = *(v36 + 2);
    v66 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v67 >= v66 >> 1)
    {
      v36 = sub_100547288((v66 > 1), v67 + 1, 1, v36);
    }

    *(v36 + 2) = v67 + 1;
    (*(v111 + 32))(&v36[v109 + v67 * v107], v65, v37);
    *v35 = v36;
    swift_endAccess();
  }

  v68 = v96 ^ 1;
  v69 = v95 ^ 1;
  if ((v97 & 1) == 0)
  {
    v70 = swift_allocObject();
    *(v70 + 16) = v106;
    *(v70 + 32) = 0;
    if (v110)
    {
      v71 = 14;
    }

    else
    {
      v71 = 11;
    }

    *(v70 + 33) = v71;
    *(v70 + 34) = 11;
    *(v70 + 35) = v30;
    *(v70 + 36) = v105;
    v112 = v70;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v73 = *(v36 + 2);
    v72 = *(v36 + 3);
    if (v73 >= v72 >> 1)
    {
      v36 = sub_100547288((v72 > 1), v73 + 1, 1, v36);
    }

    *(v36 + 2) = v73 + 1;
    (*(v111 + 32))(&v36[v109 + v73 * v107], v99, v101);
    *v35 = v36;
    swift_endAccess();
  }

  v74 = v100;
  sub_1004C2198();
  v75 = v98;
  sub_1004C6828(12, v68 & 1, v98, 11.0);
  sub_1004C6828(13, v69 & 1, v75, 11.0);
  if (*&v74[qword_100786CF0])
  {
    swift_beginAccess();

    v76 = v85;
    v77 = TTRGridViewPredefinedContentPopulator.GridSpecification.init(rows:)();
    __chkstk_darwin(v77);
    v78 = v86;
    *(&v79 - 2) = v74;
    *(&v79 - 1) = v78;
    TTRGridViewPredefinedContentPopulator.performUpdates(newGridSpecification:subviewUpdateHandler:)();

    (*(v87 + 8))(v76, v88);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004C5504()
{
  v1 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  if ((TTRBoardReminderCellShowSubtasksConfiguration.isHidden.getter() & 1) == 0)
  {
    v10 = sub_1004C358C();
    TTRBoardReminderCellShowSubtasksConfiguration.isShowingSubtasks.getter();
    TTRIOutlineDisclosureButton.isExpanded.setter();

    v16 = qword_100786D50;
    v11 = *(v0 + qword_100786D50);
    UIButton.configuration.getter();
    v12 = type metadata accessor for UIButton.Configuration();
    v13 = *(*(v12 - 8) + 48);
    if (v13(v9, 1, v12))
    {
      sub_10000794C(v9, v3, &unk_100772600, &unk_1006348F0);
      UIButton.configuration.setter();

      sub_1000079B4(v9, &unk_100772600, &unk_1006348F0);
    }

    else
    {
      TTRBoardReminderCellShowSubtasksConfiguration.showSubtasksButtonTitle.getter();
      UIButton.Configuration.title.setter();
      UIButton.configuration.setter();
    }

    v14 = *(v0 + v16);
    UIButton.configuration.getter();
    if (v13(v6, 1, v12))
    {
      sub_10000794C(v6, v3, &unk_100772600, &unk_1006348F0);
      UIButton.configuration.setter();

      sub_1000079B4(v6, &unk_100772600, &unk_1006348F0);
    }

    else
    {
      TTRBoardReminderCellShowSubtasksConfiguration.tintColor.getter();
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }
  }
}

void sub_1004C5780()
{
  v1 = v0;
  [v0 setAxis:1];
  [v0 setDistribution:0];
  [v0 setAlignment:0];
  [v0 setLayoutMarginsRelativeArrangement:0];
  [v0 setPreservesSuperviewLayoutMargins:1];
  [v0 setDebugBoundingBoxesEnabled:0];
  dispatch thunk of TTRIMarginTransferringContainerStackView.marginTransferActionForArrangedSubview.setter();
  type metadata accessor for TTRNoAnimationContainerGridView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = qword_100786CE8;
  v4 = *&v0[qword_100786CE8];
  *&v0[qword_100786CE8] = v2;
  v5 = v2;

  [v5 setLayoutMarginsRelativeArrangement:1];
  v6 = *&v1[v3];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v6 setPreservesSuperviewLayoutMargins:0];
  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v7 setHorizontalAlignment:0];
  v8 = *&v1[v3];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v8 setVerticalAlignment:2];
  v9 = *&v1[v3];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  sub_1004C2198();
  ceil(_:toScale:)();
  [v10 setRowSpacing:?];

  v11 = *&v1[v3];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  ceil(_:toScale:)();
  [v12 setColumnSpacing:?];

  v13 = *&v1[v3];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v13 setDebugBoundingBoxesEnabled:0];
  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_100058000(&qword_100786EF8, &qword_100642B60);
  swift_allocObject();
  v15 = v14;
  *&v1[qword_100786CF0] = TTRGridViewPredefinedContentPopulator.init(gridView:)();
}

uint64_t sub_1004C59E0@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for TTRIMarginTransferAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIOutlineDisclosureButton();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView();
    swift_dynamicCastClass();
  }

  TTRIMarginTransferAction.init(edgesToReceiveMargins:redirectedTarget:)();
  (*(v4 + 32))(a2, v6, v3);
  return (*(v4 + 56))(a2, 0, 1, v3);
}

void sub_1004C5B1C(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v9 = sub_100058000(&qword_100778EC8, &qword_100642A30);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_100058000(&qword_100786ED0, &qword_100642B20);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v33 = sub_100058000(&qword_100778F70, &unk_100642B10);
  v15 = *(v33 - 8);
  *&v16 = __chkstk_darwin(v33).n128_u64[0];
  v18 = &v32 - v17;
  v19 = [a1 arrangedSubviews];
  if (!v19 || (v20 = v19, sub_100003540(0, &qword_10076B020, UIView_ptr), v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v20, LOBYTE(v20) = sub_10012671C(v21, a2), , (v20 & 1) == 0))
  {
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [a1 setArrangedSubviews:{isa, v32}];
  }

  sub_1004C2198();
  v23 = *(a4 + 2);
  v24 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_100647580);
  v25 = TTRBoardReminderCellContentConfigurationType.showSubtasksButtonIsHidden.getter();
  v26 = 11.0;
  v27 = 12.0;
  if (v23)
  {
    v26 = 12.0;
    v27 = 14.0;
  }

  v28 = 0.0;
  if (v25)
  {
    v28 = v26;
  }

  [a3 setDirectionalLayoutMargins:{v26, v27, v28, 12.0, v32}];
  sub_10000794C(a4 + *(v24 + 112), v18, &qword_100778F70, &unk_100642B10);
  sub_10000794C(v32, v11, &qword_100778EC8, &qword_100642A30);
  if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
  {
    sub_1000079B4(v11, &qword_100778EC8, &qword_100642A30);
    v29 = 1;
  }

  else
  {
    sub_10000794C(&v11[*(v24 + 112)], v14, &qword_100778F70, &unk_100642B10);
    sub_1002C51D0(v11, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    v29 = 0;
  }

  (*(v15 + 56))(v14, v29, 1, v33);
  sub_1004C5F60(v18);
  sub_1000079B4(v14, &qword_100786ED0, &qword_100642B20);
  sub_1000079B4(v18, &qword_100778F70, &unk_100642B10);
  v30 = sub_1004C3514();
  [v30 setHidden:TTRBoardReminderCellContentConfigurationType.showSubtasksButtonIsHidden.getter() & 1];

  v31 = sub_1004C358C();
  [v31 setHidden:TTRBoardReminderCellContentConfigurationType.showSubtasksButtonIsHidden.getter() & 1];
}

void sub_1004C5F60(uint64_t a1)
{
  v2 = sub_100058000(&qword_100778F80, &unk_100649010);
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  __chkstk_darwin(v2);
  v5 = &v59 - v4;
  v6 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100786ED8, &qword_100642B28);
  __chkstk_darwin(v8 - 8);
  v10 = &v59 - v9;
  v62 = sub_100058000(&qword_100786EE0, &unk_100642B30);
  __chkstk_darwin(v62);
  v61 = (&v59 - v11);
  v12 = sub_100058000(&qword_100771588, &qword_1006388F0);
  __chkstk_darwin(v12 - 8);
  v59 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v59 - v15;
  __chkstk_darwin(v16);
  v64 = &v59 - v17;
  v18 = sub_100058000(&qword_100778F00, &qword_100642B40);
  __chkstk_darwin(v18 - 8);
  v20 = &v59 - v19;
  v21 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v59 - v23;
  sub_10000794C(a1, v20, &qword_100778F00, &qword_100642B40);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000079B4(v20, &qword_100778F00, &qword_100642B40);
    v25 = sub_100058000(&qword_100778F70, &unk_100642B10);
    v27 = v67;
    v26 = v68;
    (*(v68 + 2))(v5, a1 + *(v25 + 28), v67);
    v28 = (*(v26 + 11))(v5, v27);
    if (v28 == enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:))
    {
      (*(v26 + 12))(v5, v27);
      if (qword_1007673A0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100003E30(v29, qword_100786CD0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "TTRIBoardReminderCellContentView: missing autoComplete module", v32, 2u);
      }

      sub_1002C51D0(v5, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
      goto LABEL_11;
    }

    if (v28 == enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:))
    {
LABEL_11:
      v37 = sub_1004C3360();
      [v37 setHidden:1];

      return;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    swift_beginAccess();
    sub_100058000(&qword_100786EE8, &qword_100642B48);
    TTRBoardReminderInCellModuleState.receive(_:)();
    sub_100058000(&qword_100778F70, &unk_100642B10);
    TTRBoardReminderInCellModuleState.receive(_:)();
    TTRBoardReminderInCellModuleState.consume()();
    swift_endAccess();
    v33 = sub_100058000(&qword_100786EF0, &unk_100642B50);
    v34 = (*(*(v33 - 8) + 48))(v10, 1, v33);
    v35 = v21;
    v36 = v22;
    if (v34 == 1)
    {
      (*(v22 + 8))(v24, v35);
      sub_1000079B4(v10, &qword_100786ED8, &qword_100642B28);
    }

    else
    {
      v67 = v35;
      v68 = v24;
      v38 = v10[16];
      v39 = *(v33 + 64);
      v40 = &v10[*(v33 + 80)];
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = v61;
      v44 = v62;
      v45 = *(v62 + 64);
      v46 = (v61 + *(v62 + 80));
      *v61 = *v10;
      *(v43 + 16) = v38;
      sub_100016588(&v10[v39], v43 + v45, &qword_100771588, &qword_1006388F0);
      *v46 = v41;
      v46[1] = v42;
      v47 = *(v43 + 16);
      v48 = *(v44 + 64);
      swift_unknownObjectRelease();
      v49 = v64;
      sub_100016588(v43 + v48, v64, &qword_100771588, &qword_1006388F0);
      v50 = v65;
      if (v47)
      {
        v51 = sub_1004C3360();
        if (swift_unknownObjectWeakLoadStrong())
        {
          type metadata accessor for TTRIReminderCellAutoCompleteViewController();
          sub_100186CA4(v51);
          swift_unknownObjectRelease();
        }
      }

      v52 = v63;
      sub_10000794C(v49, v63, &qword_100771588, &qword_1006388F0);
      v53 = v66;
      v54 = (*(v50 + 48))(v52, 1, v66);
      v55 = v68;
      if (v54 == 1)
      {
        swift_unknownObjectRelease();
        sub_1000079B4(v49, &qword_100771588, &qword_1006388F0);
        (*(v22 + 8))(v55, v67);
        sub_1000079B4(v52, &qword_100771588, &qword_1006388F0);
      }

      else
      {
        v56 = v52;
        v57 = v60;
        sub_1002C5104(v56, v60, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
        v58 = v59;
        sub_1004CCA18(v57, v59, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
        (*(v50 + 56))(v58, 0, 1, v53);
        sub_1002F82D8(v58);
        swift_unknownObjectRelease();
        sub_1002C51D0(v57, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
        sub_1000079B4(v49, &qword_100771588, &qword_1006388F0);
        (*(v36 + 8))(v55, v67);
      }
    }
  }
}

void sub_1004C6828(char a1, char a2, uint64_t a3, double a4)
{
  v7 = sub_100058000(&qword_100786DF0, &qword_100642A40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  if (a2)
  {
    sub_100058000(&qword_100786EC8, &qword_100642B08);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    *(v11 + 32) = a1;
    sub_1004CAEE8();
    sub_1004CAF3C();
    sub_1004CAF90();
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    v12 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_100547288(0, v12[2] + 1, 1, v12);
      *(a3 + 16) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_100547288((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v10, v7);
    *(a3 + 16) = v12;
    swift_endAccess();
  }
}

void sub_1004C6A2C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v98 = a3;
  v96 = a1;
  v97 = a2;
  v3 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v96 - v12;
  v14 = sub_100058000(&qword_100786E38, &unk_100642A60);
  __chkstk_darwin(v14 - 8);
  v16 = &v96 - v15;
  TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.viewIDToUpdate.getter();
  switch(v101)
  {
    case 1:
      sub_100003540(0, &qword_100776820, UILabel_ptr);
      v36 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v36)
      {
        v36 = sub_1004CB0E0();
      }

      v37 = v97;
      v38 = v36;
      [v36 setFont:{*(v97 + 8), v96}];
      v39 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
      v40 = *(v37 + *(v39 + 76));
      v41 = v38;
      [v41 setTintColor:v40];
      if (*(v37 + *(v39 + 88) + 8))
      {
        v42 = String._bridgeToObjectiveC()();
      }

      else
      {
        v42 = 0;
      }

      [v41 setText:v42];

      sub_1004CAEE8();
      sub_1004CAF3C();
      sub_1004CAF90();
      v99 = 0u;
      v100 = 0u;
      TTRGridViewPredefinedContentPopulator.SubviewUpdateResult.init(view:userInfo:horizontalAlignment:verticalAlignment:)();

      return;
    case 2:
      type metadata accessor for TTRIReminderTitleTextView();
      v31 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = sub_1004C2328();
      }

      type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
      sub_1004C79C0(v32, v76);
      goto LABEL_61;
    case 3:
      sub_100003540(0, &qword_100786E48, UIImageView_ptr);
      v33 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v33)
      {
        v33 = sub_1004CB28C();
      }

      [v33 setPreferredSymbolConfiguration:{*(v97 + 24), v96}];
      goto LABEL_61;
    case 4:
      sub_100003540(0, &unk_10077A690, UIButton_ptr);
      v21 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        type metadata accessor for TTRIRemindersListCellInfoButton();
        sub_100003540(0, &qword_10076BA60, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v57 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v58 = [v57 initWithFrame:v56 primaryAction:{0.0, 0.0, 0.0, 0.0, v96}];

        v59 = v58;
        v60 = String._bridgeToObjectiveC()();
        v61 = [objc_opt_self() systemImageNamed:v60];

        [v59 setImage:v61 forState:0];
        v62 = v59;
        static TTRAccesibility.RemindersList.Label.EditDetails.getter();
        v63 = String._bridgeToObjectiveC()();

        [v62 setAccessibilityLabel:v63];

        v64 = NUIContainerViewSizeUseDefault[0];
        v65 = NUIContainerViewSizeUseDefault[1];
        v22 = v62;
        LODWORD(v66) = 1148846080;
        [v22 setLayoutSize:v64 withContentPriority:{v65, v66}];
        [v22 setCustomAlignmentRectInsets:{6.0, 0.0, 6.0, 0.0}];
      }

      type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
      v67 = TTRBoardReminderCellInfoButtonConfiguration.tintColor.getter();
      if (!v67)
      {
        v67 = [objc_opt_self() tintColor];
      }

      v55 = v67;
      [v22 setTintColor:{v67, v96}];
      goto LABEL_60;
    case 5:
      sub_100003540(0, &qword_100776820, UILabel_ptr);
      v43 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v43)
      {
        v43 = sub_1004CB44C();
      }

      v44 = v43;
      v45 = v97;
      type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);

      v86 = String._bridgeToObjectiveC()();

      [v44 setText:{v86, v96}];

      [v44 setFont:{*(v45 + 16), v96}];
      goto LABEL_61;
    case 6:
      sub_100003540(0, &qword_100776820, UILabel_ptr);
      v47 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v47)
      {
        v47 = sub_1004CB5E0();
      }

      [v47 setAttributedText:{*(v97 + *(type metadata accessor for TTRIBoardReminderCellContentConfiguration(0) + 96)), v96}];
      goto LABEL_61;
    case 7:
      type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
      v34 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = sub_1004C27BC();
      }

      type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
      sub_1004C82D0(v35, v77);
      goto LABEL_61;
    case 8:
      sub_100003540(0, &qword_100776820, UILabel_ptr);
      v52 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v52)
      {
        v52 = sub_1004CB6CC();
      }

      v53 = v52;
      v54 = v97;
      if (*(v54 + *(type metadata accessor for TTRIBoardReminderCellContentConfiguration(0) + 80) + 8))
      {
        v55 = String._bridgeToObjectiveC()();
      }

      else
      {
        v55 = 0;
      }

      [v53 setText:{v55, v96}];
LABEL_60:

      goto LABEL_61;
    case 9:
      v28 = type metadata accessor for TTRILocationIndicator();
      v29 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v29)
      {
        v30 = v29;
        goto LABEL_67;
      }

      v68 = objc_allocWithZone(v28);
      v30 = [v68 init];
      v69 = [objc_opt_self() secondaryLabelColor];
      v70 = v69;
      v71 = OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_textColor;
      v72 = *&v30[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_textColor];
      *&v30[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_textColor] = v69;
      if (v69)
      {
        if (v72)
        {
          sub_100003540(0, &qword_100772610, UIColor_ptr);
          v73 = v70;
          v74 = v72;
          v75 = static NSObject.== infix(_:_:)();

          if (v75)
          {

            goto LABEL_67;
          }
        }

        else
        {
          v87 = v69;
        }
      }

      else if (!v72)
      {
        goto LABEL_67;
      }

      v88 = sub_1005D82AC();
      v89 = *&v30[v71];
      [v88 setTintColor:v89];

      v90 = sub_1005D8418();
      v91 = *&v30[v71];
      [v90 setTextColor:v91];

LABEL_67:
      type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
      v92 = TTRBoardReminderCellLocationConfiguration.icon.getter();
      sub_1005D8950(v92);

      v93 = TTRBoardReminderCellLocationConfiguration.attributedDescription.getter();
      v94 = *&v30[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_attributedLocationText];
      *&v30[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_attributedLocationText] = v93;
      v95 = v93;

      sub_1005D8348();
      sub_1004CAEE8();
      sub_1004CAF3C();
      sub_1004CAF90();
      v99 = 0u;
      v100 = 0u;
LABEL_62:
      TTRGridViewPredefinedContentPopulator.SubviewUpdateResult.init(view:userInfo:horizontalAlignment:verticalAlignment:)();
      return;
    case 10:
      sub_100003540(0, &unk_10077A690, UIButton_ptr);
      v48 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v48)
      {
        static UIButton.Configuration.borderless()();
        UIButton.Configuration.contentInsets.setter();
        (*(v4 + 104))(v6, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v3);
        UIButton.Configuration.titleAlignment.setter();
        sub_100003540(0, &qword_10076BA60, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        (*(v8 + 16))(v10, v13, v7);
        v50 = v49;
        v51 = UIButton.init(configuration:primaryAction:)();
        [v51 setContentHorizontalAlignment:{4, v96}];

        (*(v8 + 8))(v13, v7);
        v48 = v51;
      }

      sub_1004CBD2C(v48, v97);
      goto LABEL_61;
    case 11:
      sub_100003540(0, &unk_10077A690, UIButton_ptr);
      v19 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v19)
      {
        static UIButton.Configuration.plain()();
        UIButton.Configuration.title.setter();
        (*(v4 + 104))(v6, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v3);
        UIButton.Configuration.titleAlignment.setter();
        UIButton.Configuration.contentInsets.setter();
        (*(v8 + 16))(v10, v13, v7);
        sub_100003540(0, &qword_10076BA60, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v20 = UIButton.init(configuration:primaryAction:)();
        [v20 setContentHorizontalAlignment:{4, v96}];
        (*(v8 + 8))(v13, v7);
        v19 = v20;
      }

      sub_1004CC1C4(v19, v97);
      goto LABEL_61;
    case 12:
      type metadata accessor for TTRIRemindersListLargeImageAttachmentsView();
      v23 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v23)
      {
        v23 = sub_1004C2D88();
      }

      v24 = v23;
      v25 = v97;
      v26 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
      sub_1004CC5F0(v24, *(v25 + *(v26 + 64)), v27);
      goto LABEL_61;
    case 13:
      sub_100003540(0, &qword_100786E40, NUIContainerStackView_ptr);
      v46 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v46)
      {
        v46 = sub_1004C2EF8();
      }

      sub_1004C8BA4(v46, v97);
LABEL_61:
      sub_1004CAEE8();
      sub_1004CAF3C();
      sub_1004CAF90();
      v99 = 0u;
      v100 = 0u;
      goto LABEL_62;
    default:
      type metadata accessor for TTRIReminderCompletionButton();
      v17 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        sub_100003540(0, &qword_10076BA60, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v78 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v79 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v18 = [v79 initWithFrame:v78 primaryAction:{0.0, 0.0, 0.0, 0.0, v96}];

        *v16 = 0;
        *(v16 + 1) = 0;
        v80 = enum case for TTRIReminderCompletionButton.Icon.complete(_:);
        v81 = type metadata accessor for TTRIReminderCompletionButton.Icon();
        v82 = *(v81 - 8);
        (*(v82 + 104))(v16, v80, v81);
        (*(v82 + 56))(v16, 0, 1, v81);
        TTRIReminderCompletionButton.icon.setter();
        [v18 setCustomAlignmentRectInsets:{5.0, 0.0, 5.0, 0.0}];
        LODWORD(v83) = 1148846080;
        [v18 setLayoutSize:NUIContainerViewSizeUseDefault[0] withContentPriority:{NUIContainerViewSizeUseDefault[1], v83}];
      }

      v84 = v97;
      v85 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
      sub_1004CB7D4(v18, v84 + *(v85 + 40));
      sub_1004CAEE8();
      sub_1004CAF3C();
      sub_1004CAF90();
      v99 = 0u;
      v100 = 0u;
      goto LABEL_62;
  }
}

void sub_1004C79C0(void *a1, __n128 a2)
{
  v65 = a1;
  v2 = type metadata accessor for TTRReminderCellTitleViewModel();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100786E50, &qword_100642A70);
  __chkstk_darwin(v4 - 8);
  v62 = &v55 - v5;
  v59 = sub_100058000(&qword_100786E58, &qword_100642A78);
  __chkstk_darwin(v59);
  v58 = (&v55 - v6);
  v7 = sub_100058000(&qword_100786E60, &unk_100642A80);
  __chkstk_darwin(v7 - 8);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v55 - v10;
  __chkstk_darwin(v11);
  v61 = &v55 - v12;
  v66 = sub_100058000(&qword_100778F50, &unk_100638940);
  v13 = *(v66 - 8);
  __chkstk_darwin(v66);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = sub_100058000(&qword_100781950, &unk_100642A90);
  __chkstk_darwin(v19 - 8);
  v21 = &v55 - v20;
  v22 = sub_100058000(&qword_10078A3B0, &unk_100638720);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v55 - v24;
  sub_100058000(&qword_100778F58, &qword_100642AA0);
  TTRBoardReminderCellTitleConfiguration.module.getter();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000079B4(v21, &qword_100781950, &unk_100642A90);
    TTRBoardReminderCellTitleConfiguration.viewModelUpdate.getter();
    v26 = v66;
    v27 = (*(v13 + 88))(v15, v66);
    if (v27 == enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:))
    {
      (*(v13 + 96))(v15, v26);
      if (qword_1007673A0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100003E30(v28, qword_100786CD0);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v64;
      if (v31)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "TTRIBoardReminderCellContentView: missing title editing module", v33, 2u);
      }

      (*(v63 + 8))(v15, v32);
      goto LABEL_11;
    }

    if (v27 == enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:))
    {
LABEL_11:
      v38 = String._bridgeToObjectiveC()();
      [v65 setText:v38];

      return;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    swift_beginAccess();
    sub_100058000(&qword_100786E68, &qword_100642AA8);
    v55 = v22;
    TTRBoardReminderInCellModuleState.receive(_:)();
    swift_endAccess();
    TTRBoardReminderCellTitleConfiguration.viewModelUpdate.getter();
    swift_beginAccess();
    TTRBoardReminderInCellModuleState.receive(_:)();
    swift_endAccess();
    (*(v13 + 8))(v18, v66);
    swift_beginAccess();
    v34 = v62;
    TTRBoardReminderInCellModuleState.consume()();
    swift_endAccess();
    v35 = v23;
    v36 = sub_100058000(&qword_100786E70, &qword_100642AB0);
    v37 = v25;
    if ((*(*(v36 - 8) + 48))(v34, 1, v36) == 1)
    {
      (*(v35 + 8))(v25, v55);
      sub_1000079B4(v34, &qword_100786E50, &qword_100642A70);
    }

    else
    {
      v39 = *(v34 + 16);
      v40 = *(v36 + 64);
      v41 = (v34 + *(v36 + 80));
      v42 = *v41;
      v43 = v41[1];
      v45 = v58;
      v44 = v59;
      v46 = *(v59 + 64);
      v47 = (v58 + *(v59 + 80));
      *v58 = *v34;
      *(v45 + 16) = v39;
      sub_100016588(v34 + v40, v45 + v46, &qword_100786E60, &unk_100642A80);
      *v47 = v42;
      v47[1] = v43;
      LOBYTE(v47) = *(v45 + 16);
      v48 = *(v44 + 64);
      swift_unknownObjectRelease();
      v49 = v61;
      sub_100016588(v45 + v48, v61, &qword_100786E60, &unk_100642A80);
      if (v47)
      {
        swift_getObjectType();
        dispatch thunk of TTRIReminderCellTitleModuleInterface.setup(forManaging:)();
      }

      v50 = v60;
      sub_10000794C(v49, v60, &qword_100786E60, &unk_100642A80);
      v52 = v63;
      v51 = v64;
      if ((*(v63 + 48))(v50, 1, v64) == 1)
      {
        swift_unknownObjectRelease();
        sub_1000079B4(v49, &qword_100786E60, &unk_100642A80);
        (*(v35 + 8))(v37, v55);
        sub_1000079B4(v50, &qword_100786E60, &unk_100642A80);
      }

      else
      {
        v53 = v57;
        (*(v52 + 32))(v57, v50, v51);
        swift_getObjectType();
        v54 = v56;
        (*(v52 + 16))(v56, v53, v51);
        (*(v52 + 56))(v54, 0, 1, v51);
        dispatch thunk of TTRReminderCellTitleModuleInterface.viewModel.setter();
        swift_unknownObjectRelease();
        (*(v52 + 8))(v53, v51);
        sub_1000079B4(v49, &qword_100786E60, &unk_100642A80);
        (*(v35 + 8))(v37, v55);
      }
    }
  }
}

void sub_1004C82D0(void *a1, __n128 a2)
{
  v61 = a1;
  v2 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100786E78, &qword_100642AB8);
  __chkstk_darwin(v4 - 8);
  v60 = &v50 - v5;
  v55 = sub_100058000(&qword_100786E80, &qword_100642AC0);
  __chkstk_darwin(v55);
  v54 = (&v50 - v6);
  v7 = sub_100058000(&qword_100786E88, &qword_100642AC8);
  __chkstk_darwin(v7 - 8);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v50 - v10;
  __chkstk_darwin(v11);
  v57 = &v50 - v12;
  v13 = sub_100058000(&unk_100781940, &unk_100638910);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_100058000(&qword_100778EA0, &unk_10063D390);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v62 = &v50 - v18;
  v19 = sub_100058000(&qword_100778FC8, &unk_1006389C0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v50 - v21;
  sub_100058000(&qword_100778F48, &qword_100638938);
  if (TTRBoardReminderCellNotesConfiguration.isHidden.getter())
  {
    TTRBoardReminderCellNotesConfiguration.viewModelUpdate.getter();
    swift_beginAccess();
    sub_100058000(&qword_100786E90, &qword_100642AD0);
    TTRBoardReminderInCellModuleState.receive(_:)();
    swift_endAccess();
    (*(v20 + 8))(v22, v19);
  }

  else
  {
    TTRBoardReminderCellNotesConfiguration.module.getter();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v23 = v61;
      sub_1000079B4(v15, &unk_100781940, &unk_100638910);
      if (qword_1007673A0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100003E30(v24, qword_100786CD0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "TTRIBoardReminderCellContentView: missing notes editing module", v27, 2u);
      }

      v28 = String._bridgeToObjectiveC()();
      [v23 setText:v28];
    }

    else
    {
      v51 = v17;
      (*(v17 + 32))(v62, v15, v16);
      swift_beginAccess();
      sub_100058000(&qword_100786E90, &qword_100642AD0);
      v50 = v16;
      TTRBoardReminderInCellModuleState.receive(_:)();
      swift_endAccess();
      TTRBoardReminderCellNotesConfiguration.viewModelUpdate.getter();
      swift_beginAccess();
      TTRBoardReminderInCellModuleState.receive(_:)();
      swift_endAccess();
      (*(v20 + 8))(v22, v19);
      swift_beginAccess();
      v29 = v60;
      TTRBoardReminderInCellModuleState.consume()();
      swift_endAccess();
      v30 = sub_100058000(&qword_100786E98, &qword_100642AD8);
      if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
      {
        (*(v51 + 8))(v62, v50);
        sub_1000079B4(v29, &qword_100786E78, &qword_100642AB8);
      }

      else
      {
        v31 = v50;
        v32 = v51;
        v33 = *(v29 + 16);
        v34 = *(v30 + 64);
        v35 = (v29 + *(v30 + 80));
        v36 = *v35;
        v37 = v35[1];
        v39 = v54;
        v38 = v55;
        v40 = *(v55 + 64);
        v41 = (v54 + *(v55 + 80));
        *v54 = *v29;
        *(v39 + 16) = v33;
        sub_100016588(v29 + v34, v39 + v40, &qword_100786E88, &qword_100642AC8);
        *v41 = v36;
        v41[1] = v37;
        LOBYTE(v41) = *(v39 + 16);
        v42 = *(v38 + 64);
        swift_unknownObjectRelease();
        v43 = v39 + v42;
        v44 = v57;
        sub_100016588(v43, v57, &qword_100786E88, &qword_100642AC8);
        if (v41)
        {
          swift_getObjectType();
          dispatch thunk of TTRIReminderCellNotesModuleInterface.setup(forManaging:)();
        }

        v45 = v56;
        sub_10000794C(v44, v56, &qword_100786E88, &qword_100642AC8);
        v47 = v58;
        v46 = v59;
        if ((*(v58 + 48))(v45, 1, v59) == 1)
        {
          swift_unknownObjectRelease();
          sub_1000079B4(v44, &qword_100786E88, &qword_100642AC8);
          (*(v32 + 8))(v62, v31);
          sub_1000079B4(v45, &qword_100786E88, &qword_100642AC8);
        }

        else
        {
          v48 = v53;
          (*(v47 + 32))(v53, v45, v46);
          swift_getObjectType();
          v49 = v52;
          (*(v47 + 16))(v52, v48, v46);
          (*(v47 + 56))(v49, 0, 1, v46);
          dispatch thunk of TTRIReminderCellNotesModuleInterface.viewModel.setter();
          swift_unknownObjectRelease();
          (*(v47 + 8))(v48, v46);
          sub_1000079B4(v44, &qword_100786E88, &qword_100642AC8);
          (*(v32 + 8))(v62, v31);
        }
      }
    }
  }
}

void sub_1004C8BA4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1004C9E50(a2, v2);
  v6 = *(v3 + qword_100786D28);
  *(v3 + qword_100786D28) = v5;
  v7 = v5;

  sub_100058000(&qword_10076B920, &qword_10062FC60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10062F800;
  *(v8 + 32) = v5;
  v9 = v7;
  *(v8 + 40) = sub_1004C3290();
  *(v8 + 48) = sub_1004C304C();
  sub_100058000(&qword_100780A08, &qword_100642AF0);
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  sub_10000E188(&qword_100788500, &qword_100780A08, &qword_100642AF0, &protocol conformance descriptor for [A]);
  v10 = Sequence.removingNils<A>()();

  v11 = [a1 arrangedSubviews];
  if (v11 && (v12 = v11, v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v12, , LOBYTE(v12) = sub_10012671C(v13, v10), , , (v12 & 1) != 0))
  {
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 setArrangedSubviews:isa];
  }

  sub_1004C2198();
  ceil(_:toScale:)();
  [a1 setSpacing:?];
  type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_100647580);
  v15 = TTRBoardReminderCellContentConfigurationType.appLinkIsHidden.getter();
  v16 = qword_100786D30;
  v17 = *(v3 + qword_100786D30);
  if (v15)
  {
    [v17 setHidden:1];
  }

  else
  {
    [v17 setHidden:0];
    v18 = *(v3 + v16);
    v19 = TTRBoardReminderCellAppLinkConfiguration.icon.getter();
    [v18 setBackgroundImage:v19 forState:0];
  }

  v20 = TTRBoardReminderCellContentConfigurationType.assigneeIsHidden.getter();
  v21 = qword_100786D38;
  v22 = *(v3 + qword_100786D38);
  if (v20)
  {
    v23 = v22;
    [v23 setHidden:1];
  }

  else
  {
    [v22 setHidden:0];
    v23 = *(v3 + v21);
    TTRBoardReminderCellAssigneeConfiguration.contact.getter();
    TTRIRemindersListCellAssigneeView.contact.setter();
  }
}

uint64_t sub_1004C8EE4(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v5 = a1;
  }

  v6 = &v3[qword_100786D58];
  swift_beginAccess();
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = TTRBoardReminderCellAssigneeConfiguration.onAssigneePress.getter();
    if (v9)
    {
      v11 = v9;
      v12 = v10;
      swift_endAccess();
      v13 = sub_1004C3290();
      v11();
      sub_1000301AC(v11, v12);

      v3 = v13;
    }

    else
    {
      swift_endAccess();
    }

    return sub_1000079B4(v14, &qword_10076AE40, &qword_10062EE50);
  }

  return result;
}

id sub_1004C9030(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[qword_100786CE8] = 0;
  *&v4[qword_100786CF0] = 0;
  v10 = qword_100786CF8;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  sub_100058000(&unk_100775AA0, &unk_100638960);
  type metadata accessor for TTRReminderCellTitleViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100775A90, &qword_100647540);
  type metadata accessor for TTRIReminderCellNotesViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100778F10, &qword_1006428B0);
  type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  v11 = &v4[qword_100786D18];
  *v11 = 0;
  v11[8] = 1;
  *&v4[qword_100786D20] = 0;
  *&v4[qword_100786D28] = 0;
  *&v4[qword_100786D30] = 0;
  *&v4[qword_100786D38] = 0;
  *&v4[qword_100786D40] = 0;
  *&v4[qword_100786D48] = 0;
  *&v4[qword_100786D50] = 0;
  v12 = qword_100786D58;
  v13 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1004C92B0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_100786CE8] = 0;
  *&v1[qword_100786CF0] = 0;
  v4 = qword_100786CF8;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  sub_100058000(&unk_100775AA0, &unk_100638960);
  type metadata accessor for TTRReminderCellTitleViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100775A90, &qword_100647540);
  type metadata accessor for TTRIReminderCellNotesViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100778F10, &qword_1006428B0);
  type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  v5 = &v1[qword_100786D18];
  *v5 = 0;
  v5[8] = 1;
  *&v1[qword_100786D20] = 0;
  *&v1[qword_100786D28] = 0;
  *&v1[qword_100786D30] = 0;
  *&v1[qword_100786D38] = 0;
  *&v1[qword_100786D40] = 0;
  *&v1[qword_100786D48] = 0;
  *&v1[qword_100786D50] = 0;
  v6 = qword_100786D58;
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  if (a1)
  {
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithArrangedSubviews:", v8.super.isa);

  return v9;
}

id sub_1004C9534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return sub_1004C92B0(v3);
}

id sub_1004C958C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_100786CE8] = 0;
  *&v1[qword_100786CF0] = 0;
  v4 = qword_100786CF8;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  sub_100058000(&unk_100775AA0, &unk_100638960);
  type metadata accessor for TTRReminderCellTitleViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100775A90, &qword_100647540);
  type metadata accessor for TTRIReminderCellNotesViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100778F10, &qword_1006428B0);
  type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  v5 = &v1[qword_100786D18];
  *v5 = 0;
  v5[8] = 1;
  *&v1[qword_100786D20] = 0;
  *&v1[qword_100786D28] = 0;
  *&v1[qword_100786D30] = 0;
  *&v1[qword_100786D38] = 0;
  *&v1[qword_100786D40] = 0;
  *&v1[qword_100786D48] = 0;
  *&v1[qword_100786D50] = 0;
  v6 = qword_100786D58;
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1004C980C()
{

  v1 = qword_100786D00;
  v2 = sub_100058000(&qword_100786E68, &qword_100642AA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_100786D08;
  v4 = sub_100058000(&qword_100786E90, &qword_100642AD0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_100786D10;
  v6 = sub_100058000(&qword_100786EE8, &qword_100642B48);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return sub_1000079B4(v0 + qword_100786D58, &qword_100778EC8, &qword_100642A30);
}

uint64_t sub_1004C99CC(uint64_t a1)
{

  v2 = qword_100786D00;
  v3 = sub_100058000(&qword_100786E68, &qword_100642AA8);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_100786D08;
  v5 = sub_100058000(&qword_100786E90, &qword_100642AD0);
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = qword_100786D10;
  v7 = sub_100058000(&qword_100786EE8, &qword_100642B48);
  (*(*(v7 - 8) + 8))(a1 + v6, v7);

  return sub_1000079B4(a1 + qword_100786D58, &qword_100778EC8, &qword_100642A30);
}

void sub_1004C9B90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_10005D20C(a3, a4);
    a5(255);
    v7 = type metadata accessor for TTRBoardReminderInCellModuleState();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1004C9C04(uint64_t a1)
{
  if (!qword_100786DB0)
  {
    type metadata accessor for TTRIBoardReminderCellContentConfiguration(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100786DB0);
    }
  }
}

uint64_t getEnumTagSinglePayload for TTRIBoardReminderCellContentView.ContentGridSubview(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardReminderCellContentView.ContentGridSubview(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004C9DFC()
{
  result = qword_100786DE0;
  if (!qword_100786DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786DE0);
  }

  return result;
}

id sub_1004C9E50(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v2 = type metadata accessor for URL();
  v51 = *(v2 - 8);
  __chkstk_darwin(v2);
  v52 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100058000(&qword_100786EB8, &unk_100642AF8);
  __chkstk_darwin(v4);
  v6 = &v47[-v5];
  v7 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v7 - 8);
  v50 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v47[-v10];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  v15 = type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment();
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v47[-v19];
  type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_100647580);
  v21 = 0;
  if (TTRBoardReminderCellContentConfigurationType.urlIsHidden.getter())
  {
    return v21;
  }

  v22 = TTRBoardReminderCellURLConfiguration.attachments.getter();
  if (!*(v22 + 16))
  {

    return 0;
  }

  v24 = v54;
  v23 = v55;
  (*(v54 + 16))(v17, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v55);

  (*(v24 + 32))(v20, v17, v23);
  v25 = *(v53 + qword_100786D28);
  if (!v25)
  {
    goto LABEL_18;
  }

  v21 = v25;
  v26 = [v21 URL];
  v49 = v20;
  if (v26)
  {
    v27 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v51;
  v30 = *(v51 + 56);
  v30(v14, v28, 1, v2);
  TTRBoardReminderCellURLConfiguration.Attachment.url.getter();
  v30(v11, 0, 1, v2);
  v31 = *(v4 + 48);
  sub_10000794C(v14, v6, &unk_100775660, &qword_10062F6B0);
  sub_10000794C(v11, &v6[v31], &unk_100775660, &qword_10062F6B0);
  v32 = *(v29 + 48);
  if (v32(v6, 1, v2) == 1)
  {
    sub_1000079B4(v11, &unk_100775660, &qword_10062F6B0);
    sub_1000079B4(v14, &unk_100775660, &qword_10062F6B0);
    if (v32(&v6[v31], 1, v2) == 1)
    {
      sub_1000079B4(v6, &unk_100775660, &qword_10062F6B0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v33 = v50;
  sub_10000794C(v6, v50, &unk_100775660, &qword_10062F6B0);
  if (v32(&v6[v31], 1, v2) == 1)
  {
    sub_1000079B4(v11, &unk_100775660, &qword_10062F6B0);
    sub_1000079B4(v14, &unk_100775660, &qword_10062F6B0);
    (*(v51 + 8))(v33, v2);
LABEL_13:
    sub_1000079B4(v6, &qword_100786EB8, &unk_100642AF8);
LABEL_17:

    v20 = v49;
LABEL_18:
    TTRBoardReminderCellURLConfiguration.Attachment.url.getter();
    TTRBoardReminderCellURLConfiguration.Attachment.attachmentID.getter();
    v41 = objc_allocWithZone(type metadata accessor for TTRIRemindersListReminderCellLinkView());
    v21 = TTRIRemindersListReminderCellLinkView.init(url:attachmentID:)();
    [v21 _setDisableAnimations:1];
    [v21 _setPreferredSizeClass:2];
    v42 = [objc_allocWithZone(LPLinkRendererSizeClassParameters) init];
    [v42 setOnlyShowIcon:1];
    [v21 _setSizeClassParameters:v42];
    sub_1004C2198();
    type metadata accessor for UILayoutPriority(0);
    v56 = 0x40000000;
    v57 = 1148846080;
    sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v43) = v58;
    [v21 setLayoutSize:24.0 withContentPriority:{24.0, v43}];

    goto LABEL_19;
  }

  v34 = v51;
  v35 = &v6[v31];
  v36 = v52;
  (*(v51 + 32))(v52, v35, v2);
  sub_1004CC8E8(&qword_100786EC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v34 + 8);
  v37(v36, v2);
  sub_1000079B4(v11, &unk_100775660, &qword_10062F6B0);
  sub_1000079B4(v14, &unk_100775660, &qword_10062F6B0);
  v37(v33, v2);
  sub_1000079B4(v6, &unk_100775660, &qword_10062F6B0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  v38 = TTRIRemindersListReminderCellLinkView.attachmentID.getter();
  v39 = TTRBoardReminderCellURLConfiguration.Attachment.attachmentID.getter();
  v40 = static NSObject.== infix(_:_:)();

  if ((v40 & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = v49;
LABEL_19:
  v44 = TTRBoardReminderCellURLConfiguration.Attachment.metadata.getter();
  if (v44)
  {
    v45 = v44;
    dispatch thunk of TTRIRemindersListReminderCellLinkView.setLoadedMetadataOnce(_:)();
  }

  (*(v54 + 8))(v20, v55);
  return v21;
}

uint64_t sub_1004CA628(void *a1)
{
  v3 = sub_100058000(&qword_100778EC8, &qword_100642A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  v12 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000B0D8(a1, v20);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  if (swift_dynamicCast())
  {
    v16 = *(v13 + 56);
    v16(v11, 0, 1, v12);
    sub_1002C5104(v11, v15, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    v17 = qword_100786D58;
    swift_beginAccess();
    sub_10000794C(v1 + v17, v8, &qword_100778EC8, &qword_100642A30);
    sub_1004CCA18(v15, v5, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    v16(v5, 0, 1, v12);
    swift_beginAccess();
    sub_1004CAE68(v5, v1 + v17);
    swift_endAccess();
    sub_1004C406C(v15, v8);
    sub_1004C43C0(v15);
    [v1 setUserInteractionEnabled:*v15];
    sub_1004C5504();
    sub_100004758(a1);
    sub_1000079B4(v8, &qword_100778EC8, &qword_100642A30);
    return sub_1002C51D0(v15, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  }

  else
  {
    sub_100004758(a1);
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_1000079B4(v11, &qword_100778EC8, &qword_100642A30);
  }
}

void (*sub_1004CA92C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(*(sub_100058000(&qword_100778EC8, &qword_100642A30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[14] = v6;
  v8 = qword_100786D58;
  swift_beginAccess();
  sub_10000794C(v1 + v8, v7, &qword_100778EC8, &qword_100642A30);
  v9 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  result = (*(*(v9 - 8) + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v4[3] = v9;
    v4[4] = sub_1004CC8E8(&qword_100778F08, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_1006477E8);
    v11 = sub_1000317B8(v4);
    sub_1002C5104(v7, v11, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    return sub_1004CAAD0;
  }

  return result;
}

void sub_1004CAAD0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  if (a2)
  {
    sub_10000B0D8(*a1, (v2 + 5));
    sub_1004CA628(v2 + 5);
    sub_100004758(v2);
  }

  else
  {
    sub_1004CA628(*a1);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1004CAB48@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_100778EC8, &qword_100642A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = qword_100786D58;
  swift_beginAccess();
  sub_10000794C(v1 + v6, v5, &qword_100778EC8, &qword_100642A30);
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1[3] = v7;
    a1[4] = sub_1004CC8E8(&qword_100778F08, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_1006477E8);
    v9 = sub_1000317B8(a1);
    return sub_1002C5104(v5, v9, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  }

  return result;
}

void (*sub_1004CACB8(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1004CA92C(v2);
  return sub_1001861BC;
}

uint64_t sub_1004CAD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

void sub_1004CAD78(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_100786D58;
  swift_beginAccess();
  v6 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 + *(v6 + 64);
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *(v7 + 16);

      v8(a2, a1, &protocol witness table for TTRIRemindersListLargeImageAttachmentsView);
      sub_1000301AC(v8, v9);
    }
  }
}

uint64_t sub_1004CAE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100778EC8, &qword_100642A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004CAEE8()
{
  result = qword_100786E20;
  if (!qword_100786E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786E20);
  }

  return result;
}

unint64_t sub_1004CAF3C()
{
  result = qword_100786E28;
  if (!qword_100786E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786E28);
  }

  return result;
}

unint64_t sub_1004CAF90()
{
  result = qword_100786E30;
  if (!qword_100786E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786E30);
  }

  return result;
}

void sub_1004CB000(char *a1, id a2)
{
  [a2 displayScale];
  v4 = v3;
  v5 = [a1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if ((sub_10002E9C4(v7, 0.0000000149011612, v4) & 1) == 0)
  {
    v8 = [a1 traitCollection];
    [v8 displayScale];
    v10 = v9;

    v11 = &a1[qword_100786D18];
    *v11 = fmax(v10, 1.0);
    v11[8] = 0;
  }
}

unint64_t sub_1004CB0D0(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

id sub_1004CB0E0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v1 = static UIFont.roundedBodyFont.getter();
  [v0 setFont:v1];

  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = objc_opt_self();
  v3 = [v2 tintColor];
  [v0 setTextColor:v3];

  v4 = v0;
  v5 = [v2 tintColor];
  [v4 setTintColor:v5];

  v6 = NUIContainerViewSizeUseDefault[0];
  v7 = NUIContainerViewSizeUseDefault[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v8) = v10;
  [v4 setLayoutSize:v6 withContentPriority:{v7, v8}];
  return v4;
}

id sub_1004CB28C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:1];
  [v2 setPreferredSymbolConfiguration:v3];

  v4 = [objc_opt_self() ttr_systemOrangeColor];
  [v2 setTintColor:v4];

  v5 = NUIContainerViewSizeUseDefault[0];
  v6 = NUIContainerViewSizeUseDefault[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v7) = v9;
  [v2 setLayoutSize:v5 withContentPriority:{v6, v7}];

  return v2;
}

id sub_1004CB44C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = NUIContainerViewSizeUnbounded[0];
  v2 = NUIContainerViewSizeUnbounded[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v3) = v7;
  [v0 setLayoutSize:v1 withContentPriority:{v2, v3}];
  [v0 setTextAlignment:4];
  [v0 setNumberOfLines:0];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v4 = static UIFont.roundedSubheadlineFont.getter();
  [v0 setFont:v4];

  [v0 setAdjustsFontForContentSizeCategory:1];
  v5 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v5];

  return v0;
}

id sub_1004CB5E0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTextAlignment:4];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v1 = static UIFont.roundedSubheadlineFont.getter();
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v2];

  return v0;
}

id sub_1004CB6CC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTextAlignment:4];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v1 = static UIFont.roundedSubheadlineFont.getter();
  isa = UIFont.withBoldTrait()().super.isa;

  [v0 setFont:isa];
  v3 = static TTRCommonAsset.Color.hashtagTokenTextColor.getter();
  [v0 setTextColor:v3];

  [v0 setNumberOfLines:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v4) = 1132068864;
  [v0 setLayoutSize:NUIContainerViewSizeUseDefault[0] withContentPriority:{NUIContainerViewSizeUseDefault[1], v4}];
  return v0;
}

uint64_t sub_1004CB7D4(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100786E38, &unk_100642A60);
  __chkstk_darwin(v4 - 8);
  v32[0] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  v9 = sub_100058000(&qword_100778F38, &unk_100647820);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  v12 = type metadata accessor for TTRReminderCellStyle.CompletedButtonType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  v32[1] = a2;
  TTRBoardReminderCellCompletedButtonConfiguration.buttonStyle.getter();
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    *v18 = 0;
    v20 = enum case for TTRReminderCellStyle.CompletedButtonType.toggle(_:);
    (*(v13 + 104))(v18, enum case for TTRReminderCellStyle.CompletedButtonType.toggle(_:), v12);
    if (v19(v11, 1, v12) != 1)
    {
      sub_1000079B4(v11, &qword_100778F38, &unk_100647820);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v20 = enum case for TTRReminderCellStyle.CompletedButtonType.toggle(_:);
  }

  (*(v13 + 16))(v15, v18, v12);
  v21 = (*(v13 + 88))(v15, v12);
  if (v21 == v20)
  {
    (*(v13 + 96))(v15, v12);
    v22 = TTRBoardReminderCellCompletedButtonConfiguration.isCompleted.getter();
    v23 = TTRBoardReminderCellCompletedButtonConfiguration.tintColor.getter();
    if (!v23)
    {
      v23 = [objc_opt_self() tintColor];
    }

    *v8 = v22 & 1;
    *(v8 + 1) = v23;
    v24 = enum case for TTRIReminderCompletionButton.Icon.complete(_:);
    v25 = type metadata accessor for TTRIReminderCompletionButton.Icon();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v8, v24, v25);
    (*(v26 + 56))(v8, 0, 1, v25);
    goto LABEL_14;
  }

  if (v21 == enum case for TTRReminderCellStyle.CompletedButtonType.confirmSuggestedReminder(_:))
  {
    v27 = type metadata accessor for TTRIReminderCompletionButton.Icon();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    (*(v13 + 8))(v15, v12);
LABEL_13:
    v22 = 0;
LABEL_14:
    sub_10000794C(v8, v32[0], &qword_100786E38, &unk_100642A60);
    TTRIReminderCompletionButton.icon.setter();
    TTRBoardReminderCellCompletedButtonConfiguration.preferredSymbolConfiguration.getter();
    TTRIReminderCompletionButton.preferredSymbolConfiguration.setter();
    [a1 setSelected:v22 & 1];
    TTRIReminderCompletionButton.prefersFadedAppearance.setter();
    sub_1000079B4(v8, &qword_100786E38, &unk_100642A60);
    return (*(v13 + 8))(v18, v12);
  }

  if (v21 == enum case for TTRReminderCellStyle.CompletedButtonType.placeholder(_:))
  {
    v28 = enum case for TTRIReminderCompletionButton.Icon.placeholder(_:);
    v29 = type metadata accessor for TTRIReminderCompletionButton.Icon();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v8, v28, v29);
    (*(v30 + 56))(v8, 0, 1, v29);
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1004CBD2C(void *a1, uint64_t a2)
{
  v35 = a1;
  v3 = sub_100058000(&qword_100786EA0, &unk_100642AE0);
  __chkstk_darwin(v3 - 8);
  v33 = &v29 - v4;
  v5 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v5 - 8);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributeContainer();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_100647580);
  result = TTRBoardReminderCellContentConfigurationType.subtaskCountIsHidden.getter();
  if ((result & 1) == 0)
  {
    v30 = v11;
    v31 = v10;
    AttributeContainer.init()();
    v36 = *(a2 + 16);
    v22 = v36;
    sub_10008CD14();
    v23 = v22;
    AttributeContainer.subscript.setter();
    v36 = [objc_opt_self() tintColor];
    sub_1004CC894();
    AttributeContainer.subscript.setter();
    v32 = a2;
    TTRBoardReminderCellSubtaskCountConfiguration.subtaskCountString.getter();
    (*(v15 + 16))(v17, v20, v14);
    AttributedString.init(_:attributes:)();
    UIButton.configuration.getter();
    v24 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v24 - 8) + 48))(v9, 1, v24))
    {
      sub_10000794C(v9, v34, &unk_100772600, &unk_1006348F0);
      UIButton.configuration.setter();
      sub_1000079B4(v9, &unk_100772600, &unk_1006348F0);
      v26 = v30;
      v25 = v31;
    }

    else
    {
      v26 = v30;
      v25 = v31;
      v27 = v33;
      (*(v30 + 16))(v33, v13, v31);
      (*(v26 + 56))(v27, 0, 1, v25);
      UIButton.Configuration.attributedTitle.setter();
      UIButton.configuration.setter();
    }

    v28 = TTRBoardReminderCellSubtaskCountConfiguration.tintColor.getter();
    [v35 setTintColor:v28];

    (*(v26 + 8))(v13, v25);
    return (*(v15 + 8))(v20, v14);
  }

  return result;
}

void sub_1004CC1C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100786EA0, &unk_100642AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = *(a2 + 8);
  if (v12)
  {
    type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
    v33 = v12;
    if ((TTRBoardReminderCellSuggestedSectionConfiguration.isHidden.getter() & 1) != 0 || (v13 = TTRBoardReminderCellSuggestedSectionConfiguration.sectionTitle.getter(), !v14))
    {
      v24 = v33;
    }

    else
    {
      v31 = v13;
      v32 = v14;
      v30 = sub_100003540(0, &qword_1007708F0, NSAttributedString_ptr);
      v29 = static TTRLocalizableStrings.RemindersList.moveToSectionFormat()();
      v28 = v15;
      sub_100058000(&unk_100776BD0, &unk_100632860);
      inited = swift_initStackObject();
      v27 = xmmword_10062D400;
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = NSFontAttributeName;
      v17 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
      *(inited + 64) = v17;
      *(inited + 40) = v33;
      v18 = NSFontAttributeName;
      v33 = v33;
      v19 = v18;
      sub_100460A28(inited);
      swift_setDeallocating();
      sub_1000079B4(inited + 32, &unk_100776BE0, &unk_10062D7F0);
      v20 = swift_initStackObject();
      *(v20 + 16) = v27;
      *(v20 + 32) = v19;
      v21.super.isa = UIFont.withBoldTrait()().super.isa;
      *(v20 + 64) = v17;
      *(v20 + 40) = v21;
      sub_100460A28(v20);
      swift_setDeallocating();
      sub_1000079B4(v20 + 32, &unk_100776BE0, &unk_10062D7F0);
      v22 = static NSAttributedString.formattedString(format:formatAttributes:content:contentAttributes:)();

      UIButton.configuration.getter();
      v23 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v23 - 8) + 48))(v11, 1, v23))
      {
        sub_10000794C(v11, v8, &unk_100772600, &unk_1006348F0);
        UIButton.configuration.setter();

        sub_1000079B4(v11, &unk_100772600, &unk_1006348F0);
      }

      else
      {
        v25 = v22;
        AttributedString.init(_:)();
        v26 = type metadata accessor for AttributedString();
        (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
        UIButton.Configuration.attributedTitle.setter();
        UIButton.configuration.setter();
      }
    }
  }
}

uint64_t sub_1004CC5F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v25 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRIRemindersListLargeImageAttachmentsView.ViewModel();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = *(a2 + 16);
    if (v11)
    {
      v20[0] = a1;
      v26 = _swiftEmptyArrayStorage;
      sub_1004A2674(0, v11, 0);
      v12 = v26;
      v14 = *(v5 + 16);
      v13 = v5 + 16;
      v15 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v21 = *(v13 + 56);
      v22 = v14;
      v23 = v13;
      v20[1] = v8 + 32;
      do
      {
        v16 = v25;
        v22(v7, v15, v25);
        TTRRemindersListViewModel.ImageAttachment.image.getter();
        TTRRemindersListViewModel.ImageAttachment.attachmentID.getter();
        TTRIRemindersListLargeImageAttachmentsView.ViewModel.init(image:attachmentID:)();
        (*(v13 - 8))(v7, v16);
        v26 = v12;
        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          sub_1004A2674((v17 > 1), v18 + 1, 1);
          v12 = v26;
        }

        v12[2] = v18 + 1;
        (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v10, v24);
        v15 += v21;
        --v11;
      }

      while (v11);
    }
  }

  return TTRIRemindersListLargeImageAttachmentsView.viewModels.setter();
}

unint64_t sub_1004CC894()
{
  result = qword_100786EA8;
  if (!qword_100786EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786EA8);
  }

  return result;
}

uint64_t sub_1004CC8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004CC938()
{
  v1 = *(type metadata accessor for TTRIBoardReminderCellContentConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100058000(&qword_100778EC8, &qword_100642A30) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1004C5B1C(v5, v6, v7, v0 + v2, v8);
}

uint64_t sub_1004CCA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1004CCA80()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "layoutSubviews");
}

uint64_t sub_1004CCAD0@<X0>(char *a1@<X8>)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v12 = [v10 objectIDWithUUID:isa];

    (*(v6 + 8))(v8, v5);
    v13 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    *a1 = v12;
    v14 = enum case for REMNavigationSpecifier.AccountPathSpecifier.showInAccountsList(_:);
    v15 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
    (*(*(v15 - 8) + 104))(&a1[v13], v14, v15);
    v16 = enum case for REMNavigationSpecifier.account(_:);
    v17 = type metadata accessor for REMNavigationSpecifier();
    return (*(*(v17 - 8) + 104))(a1, v16, v17);
  }

  return result;
}

uint64_t sub_1004CCDA4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v27 = a2;
  v8 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMFeatureFlags();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for REMFeatureFlags.ppt_skipSelectionForNavigationTests(_:), v12, v14);
  v17 = REMFeatureFlags.isEnabled.getter();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    sub_10000B0D8(a1, v28);
    sub_100058000(a3, v24);
    swift_allocObject();
    return Promise.init(value:)();
  }

  else
  {
    v19 = a1[3];
    v20 = a1[4];
    sub_10000C36C(a1, v19);
    static REMNavigationSpecifier.ReminderPathSpecifier.showInList.getter();
    v21 = sub_100058000(v25, v26);
    v22 = (*(*(v20 + 8) + 56))(v27, v11, v21, v21, v19);
    (*(v9 + 8))(v11, v8);
    return v22;
  }
}

uint64_t sub_1004CD050@<X0>(char *a1@<X8>)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
    v10 = [v8 objectIDWithUUID:isa];

    v11 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    *a1 = v10;
    v12 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
    v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    (*(*(v13 - 8) + 104))(&a1[v11], v12, v13);
    v14 = enum case for REMNavigationSpecifier.list(_:);
    v15 = type metadata accessor for REMNavigationSpecifier();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  return result;
}

id sub_1004CD250(void *a1)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v14 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v14];
  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

id sub_1004CD444(void *a1)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v14 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v14];
  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

id sub_1004CD638(void *a1)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v14 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v14];
  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

id sub_1004CD82C(void *a1)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v14 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v14];
  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

id sub_1004CDA20(void *a1)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v34 = "EF-91CB-A8A3484D56AE";
  UUID.init(uuidString:)();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v33 = *(v9 + 48);
  if (v33(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  v10 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v31 = *(v9 + 8);
  v31(v7, v8);
  v32 = v10;
  v12 = [v10 objectIDWithUUID:isa];

  v35 = 0;
  v13 = [a1 fetchReminderWithObjectID:v12 error:&v35];

  if (!v13)
  {
    v29 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v13;
  }

  v14 = v35;
  if (([v13 isCompleted] & 1) == 0)
  {
    return v13;
  }

  if (qword_1007673A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_100786F30);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Reminder.isCompleted == true, setup failed", v18, 2u);
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v35 = 0xD00000000000002BLL;
  v36 = 0x8000000100689D80;
  UUID.init(uuidString:)();
  result = (v33)(v4, 1, v8);
  if (result != 1)
  {
    v20 = objc_opt_self();
    v21 = UUID._bridgeToObjectiveC()().super.isa;
    v31(v4, v8);
    v22 = [v32 objectIDWithUUID:v21];

    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28 = String._bridgeToObjectiveC()();

    [v20 internalErrorWithDebugDescription:v28];

    swift_willThrow();
    return v13;
  }

  __break(1u);
  return result;
}

void sub_1004CDE7C(void *a1)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
  }

  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v4, v5);
  v9 = [v7 objectIDWithUUID:isa];

  v24 = 0;
  v10 = [a1 fetchReminderWithObjectID:v9 error:&v24];

  if (v10)
  {
    v11 = v24;
    if ([v10 isCompleted])
    {
      if (qword_1007673A8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003E30(v12, qword_100786F30);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Reminder isCompleted. Marking as not-completed", v15, 2u);
      }

      v16 = [objc_allocWithZone(REMSaveRequest) initWithStore:a1];
      v17 = [v16 updateReminder:v10];
      [v17 setCompleted:0];
      v24 = 0;
      if ([v16 saveSynchronouslyWithError:&v24])
      {
        v18 = v24;
      }

      else
      {
        v23 = v24;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_1007673A8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003E30(v20, qword_100786F30);
      v16 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v16, v21, "Reminder.isCompleted == false, no need to update it.", v22, 2u);
      }

      v17 = v10;
    }
  }

  else
  {
    v19 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1004CE31C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007875C8);
  v1 = sub_100003E30(v0, qword_1007875C8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004CE3E4()
{

  return v0;
}

uint64_t sub_1004CE414()
{
  sub_1004CE3E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1004CE4BC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100003E68(v6, static OpenAnyListAppIntent.title);
  sub_100003E30(v6, static OpenAnyListAppIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenAnyListAppIntent.title.unsafeMutableAddressor()
{
  if (qword_1007673B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_100003E30(v0, static OpenAnyListAppIntent.title);
}

uint64_t static OpenAnyListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1007673B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100003E30(v2, static OpenAnyListAppIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenAnyListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100767528, &qword_10062BD18);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t OpenAnyListAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for AnyListEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1004CF844(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1004CF8A8(a1);
}

void (*OpenAnyListAppIntent.target.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1004CFB68;
}

uint64_t OpenAnyListAppIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for REMNavigationSpecifier();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  type metadata accessor for AnyListEntity(0);
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = type metadata accessor for RemindersAppIntentCategory();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004CEE5C, v9, v8);
}

uint64_t sub_1004CEE5C()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v15 = v0[17];
  v4 = v0[14];
  v18 = v0[16];
  v19 = v0[15];
  v16 = v0[12];
  v17 = v0[11];
  v11 = v0[10];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v13 = v0[7];
  v14 = v0[13];
  v8 = v0[4];
  v12 = v0[5];

  v0[2] = v8;
  (*(v2 + 104))(v1, enum case for RemindersAppIntentCategory.publicAppIntent(_:), v3);
  sub_1002B5D54();
  AppIntent.postAnalytics(category:)();
  (*(v2 + 8))(v1, v3);
  IntentParameter.wrappedValue.getter();
  (*(v5 + 104))(v11, enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:), v6);
  (*(v7 + 104))(v13, enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:), v12);
  sub_100290988(v11, v13, v14);
  (*(v7 + 8))(v13, v12);
  (*(v5 + 8))(v11, v6);
  REMNavigationSpecifier.url.getter();
  (*(v16 + 8))(v14, v17);
  sub_1004CF8A8(v4);
  URL.open()();
  (*(v18 + 8))(v15, v19);
  static IntentResult.result<>()();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004CF0D8(uint64_t a1)
{
  v2 = type metadata accessor for AnyListEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1004CF844(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1004CF8A8(a1);
}

void (*sub_1004CF168(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1004CF1DC;
}

uint64_t sub_1004CF1F4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA3C;

  return OpenAnyListAppIntent.perform()(a1, v4);
}

uint64_t sub_1004CF294@<X0>(uint64_t *a2@<X8>)
{
  result = _s9Reminders20OpenAnyListAppIntentVACycfC_0();
  *a2 = result;
  return result;
}

uint64_t _s9Reminders20OpenAnyListAppIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v30 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100058000(&qword_100767518, &unk_1006430B0);
  __chkstk_darwin(v2 - 8);
  v29 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = v25 - v5;
  v6 = sub_100058000(&qword_100767520, &qword_10062BD10);
  __chkstk_darwin(v6 - 8);
  v27 = v25 - v7;
  v8 = sub_100058000(&qword_100767528, &qword_10062BD18);
  __chkstk_darwin(v8 - 8);
  v26 = v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v25[1] = sub_100058000(&qword_100767530, &unk_10062BD20);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for AnyListEntity(0);
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v28, 1, 1, v22);
  v23(v29, 1, 1, v22);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1004CFB24(&qword_100767538, &protocol conformance descriptor for AnyListEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_1004CF844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyListEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CF8A8(uint64_t a1)
{
  v2 = type metadata accessor for AnyListEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004CF908()
{
  result = qword_100787688;
  if (!qword_100787688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787688);
  }

  return result;
}

unint64_t sub_1004CF998()
{
  result = qword_100787690;
  if (!qword_100787690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787690);
  }

  return result;
}

unint64_t sub_1004CF9F0()
{
  result = qword_100787698;
  if (!qword_100787698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787698);
  }

  return result;
}

unint64_t sub_1004CFAC0()
{
  result = qword_1007876A0;
  if (!qword_1007876A0)
  {
    sub_10005D20C(&qword_1007876A8, qword_100646540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007876A0);
  }

  return result;
}

uint64_t sub_1004CFB24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyListEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004CFB6C(unint64_t a1, unint64_t a2)
{
  sub_10001DF64();
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.subscript.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v6 = 0xD000000000000046;
    v5 = 0x8000000100689F30;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  _StringGuts.grow(_:)(82);
  v5 = 0x8000000100689EE0;
  v6 = 0xD000000000000043;
LABEL_11:
  String.append(_:)(*&v6);
  v8._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x756F662074756220;
  v9._object = 0xEB0000000020646ELL;
  String.append(_:)(v9);
  swift_getObjectType();
  v10._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v10);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

id sub_1004CFD38(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource] = 0;
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView] = 0;
  v9 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_lastConsumedViewModel;
  v10 = type metadata accessor for TTRTemplatesListViewModel();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___cancelButton] = 0;
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___doneButton] = 0;
  v11 = OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_style;
  v12 = type metadata accessor for TTRTemplatesListStyle();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a4[v11], a1, v12);
  v14 = &a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
  *v14 = a2;
  *(v14 + 1) = &off_10071D850;
  *&a4[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_localUndoManager] = a3;
  v17.receiver = a4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  (*(v13 + 8))(a1, v12);
  return v15;
}

void *sub_1004CFEC4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v35 = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRTemplatesListViewModel();
  v11 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v34 = &v34 - v15;
  v16 = sub_100058000(&qword_100775FD8, &qword_100637450);
  __chkstk_darwin(v16 - 8);
  v18 = &v34 - v17;
  v40[3] = type metadata accessor for TTRITemplatesListRouter();
  v40[4] = &off_1007333C0;
  v40[0] = a2;
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[5] = 0;
  swift_unknownObjectWeakInit();
  a4[7] = 0;
  swift_unknownObjectWeakInit();
  TTRTemplatesListViewModel.init(isPlaceholder:)();
  *(a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) = 0;
  v19 = sub_100058000(&qword_100775FE0, &unk_1006364D0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1004D03E8(_swiftEmptyArrayStorage);
  }

  TTRTemplatesListViewModel.OptimisticApply.init(templateOrdering:deletedTemplateIDs:)();
  v20 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_editorUndoManager;
  v21 = objc_allocWithZone(TTRUndoManager);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithDebugIdentifier:v22];

  *(a4 + v20) = v23;
  v24 = (a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_interactor);
  *v24 = a1;
  v24[1] = protocol witness table for TTRTemplatesListInteractor;
  sub_10000B0D8(v40, a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router);
  *(a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_undoManager) = a3;
  ObjectType = swift_getObjectType();
  v26 = protocol witness table for TTRTemplatesListInteractor[1];
  v38 = ObjectType;
  v39 = v26;
  v37 = a1;
  type metadata accessor for TTRRemoveTemplatePresenterCapability();
  swift_allocObject();

  v27 = a3;
  *(a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_removeTemplateCapability) = TTRRemoveTemplatePresenterCapability.init(interactor:)();
  type metadata accessor for TTRMainActorDeferredAction();
  swift_allocObject();
  *(a4 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_deferredAction) = TTRMainActorDeferredAction.init()();
  sub_1004D0A4C(&qword_1007876B8, &unk_1006373D0);

  TTRMainActorDeferredAction.delegate.setter();

  swift_getObjectType();
  if (dispatch thunk of TTRTemplatesListInteractorType.lastFetchedTemplates.getter())
  {
    TTRTemplatesListViewModel.init(templates:)();
  }

  else
  {
    TTRTemplatesListViewModel.init(isPlaceholder:)();
  }

  v28 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_optimisticApply;
  swift_beginAccess();
  v29 = v35;
  (*(v8 + 16))(v10, a4 + v28, v35);
  v30 = v34;
  TTRTemplatesListViewModel.applying(_:)();

  (*(v8 + 8))(v10, v29);
  v31 = v36;
  (*(v11 + 8))(v13, v36);
  sub_100004758(v40);
  v32 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  (*(v11 + 40))(a4 + v32, v30, v31);
  swift_endAccess();
  return a4;
}

void sub_1004D03E8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100058000(&qword_100782428, &unk_100643110);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_1004CFB6C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10001DF64();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10001DF64();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_1004D06B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = type metadata accessor for TTRTemplatesListStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(TTRUndoManager);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithDebugIdentifier:v11];

  v13 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v14 = v12;
  v15 = static TTRInteractorEditsCommitting<>.async.getter();
  v38 = v13;
  v39 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v37[0] = v15;
  type metadata accessor for TTRTemplatesListInteractor();
  swift_allocObject();
  v16 = v14;
  v17 = a2;
  v18 = TTRTemplatesListInteractor.init(account:undoManager:committer:)();
  v19 = type metadata accessor for TTRITemplatesListRouter();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIActivityAlertRouterCapability();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v20 + 32) = v21;
  v38 = v19;
  v39 = &off_1007333C0;
  v37[0] = v20;
  type metadata accessor for TTRITemplatesListPresenter(0);
  v22 = swift_allocObject();
  v23 = sub_10000AE84(v37, v19);
  v24 = __chkstk_darwin(v23);
  v26 = (&v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = *v26;
  v29 = v16;

  v30 = sub_1004CFEC4(v18, v28, v29, v22);
  sub_100004758(v37);
  (*(v7 + 16))(v9, a1, v6);
  v31 = objc_allocWithZone(type metadata accessor for TTRITemplatesListViewController(0));

  v32 = sub_1004CFD38(v9, v30, v29, v31);
  sub_1004D0A4C(&qword_1007876B0, &unk_100637418);

  TTRTemplatesListInteractor.delegate.setter();
  v30[3] = &off_100720D90;
  swift_unknownObjectWeakAssign();
  v30[5] = v35;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  TTRTemplatesListInteractor.start()();

  return v32;
}

uint64_t sub_1004D0A4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRITemplatesListPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1004D0A90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100787710, &qword_1006431E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *v3;
  v25 = *(v3 + 16);
  v13 = *(v3 + 18);
  v14 = *(v3 + 35);
  v22 = *(v3 + 19);
  v23[0] = v14;
  *(v23 + 13) = *(v3 + 48);
  sub_10000B0D8(a1, v21);
  sub_10008E15C(v3, v20);
  sub_100058000(&qword_100787718, &unk_1006431F0);
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if (v15)
  {
    v16(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    v17 = UICellConfigurationState.isEditing.getter();
    (*(v10 + 8))(v12, v9);
    v13 = (v17 & 1) == 0;
  }

  else
  {
    v16(v8, 1, 1, v9);
    sub_1000079B4(v8, &qword_100787710, &qword_1006431E8);
  }

  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 18) = v13;
  result = *&v22;
  v19 = v23[0];
  *(a2 + 19) = v22;
  *(a2 + 35) = v19;
  *(a2 + 48) = *(v23 + 13);
  return result;
}

uint64_t sub_1004D0CE4()
{
  v1 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = *(v0 + 32);
  v8 = *(v0 + 48);
  v2 = objc_allocWithZone(type metadata accessor for CompletedCellContentView());
  sub_10008E15C(v7, v6);
  sub_1004D0DEC(v7);
  v4 = v3;
  sub_1004D2D44(&qword_100787720, type metadata accessor for CompletedCellContentView, &unk_100643174);
  return v4;
}

double sub_1004D0D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v10 = *v2;
  v11 = v4;
  v12 = v2[2];
  v13 = *(v2 + 6);
  sub_1004D0A90(a1, v7);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

void sub_1004D0DEC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v4 - 8);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v89 - v7;
  __chkstk_darwin(v9);
  v11 = &v89 - v10;
  v96 = v2;
  v12 = &v2[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  v13 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 1) = v13;
  *(v12 + 2) = *(a1 + 32);
  *(v12 + 6) = *(a1 + 48);
  v14 = objc_allocWithZone(UILabel);
  v90 = a1;
  sub_10008E15C(a1, &aBlock);
  v15 = [v14 init];
  v16 = [objc_allocWithZone(UILabel) init];
  static TTRLocalizableStrings.Common.dotSeparator.getter();
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  v94 = sub_100058000(&qword_10076B780, &qword_10062D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D410;
  *(inited + 32) = v15;
  *(inited + 40) = v16;
  v19 = v15;
  v92 = v16;
  v93 = v19;
  if ((inited & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v20 = v19;
  }

  v21 = v20;
  v22 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v23 = objc_opt_self();
  v97 = v22;
  v24 = static UIFont.roundedBodyFont.getter();
  [v21 setFont:v24];

  v25 = [v23 secondaryLabelColor];
  [v21 setTextColor:v25];

  [v21 setAdjustsFontForContentSizeCategory:1];
  if ((inited & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_21;
    }

    v26 = *(inited + 40);
  }

  v27 = v26;

  v28 = static UIFont.roundedBodyFont.getter();
  [v27 setFont:v28];

  v29 = [v23 secondaryLabelColor];
  [v27 setTextColor:v29];

  [v27 setAdjustsFontForContentSizeCategory:1];
  v30 = objc_opt_self();
  v31 = [v30 buttonWithType:1];
  static TTRLocalizableStrings.RemindersList.clearCompletedButtonTitle.getter();
  v32 = String._bridgeToObjectiveC()();

  [v31 setTitle:v32 forStates:0];

  static UIButton.Configuration.plain()();
  v33 = type metadata accessor for UIButton.Configuration();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v35(v11, 0, 1, v33);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  v36 = *(v34 + 48);
  if (v36(v8, 1, v33))
  {
    sub_1004D2CC4(v8, v11);
    UIButton.configuration.setter();
    sub_1000079B4(v8, &unk_100772600, &unk_1006348F0);
  }

  else
  {
    UIButton.Configuration.contentInsets.setter();
    UIButton.configuration.setter();
  }

  v37 = [v31 titleLabel];
  if (v37)
  {
    v38 = v37;
    v39 = static UIFont.roundedBodyFont.getter();
    [v38 setFont:v39];
  }

  v40 = [v31 titleLabel];
  [v40 setAdjustsFontSizeToFitWidth:1];

  [v31 setShowsMenuAsPrimaryAction:1];
  v41 = [v30 buttonWithType:1];
  static UIButton.Configuration.plain()();
  v35(v11, 0, 1, v33);
  UIButton.configuration.setter();
  v42 = v91;
  UIButton.configuration.getter();
  if (v36(v42, 1, v33))
  {
    sub_1004D2CC4(v42, v11);
    UIButton.configuration.setter();
    sub_1000079B4(v42, &unk_100772600, &unk_1006348F0);
  }

  else
  {
    UIButton.Configuration.contentInsets.setter();
    UIButton.configuration.setter();
  }

  v43 = [v41 titleLabel];
  if (v43)
  {
    v44 = v43;
    v45 = static UIFont.roundedBodyFont.getter();
    [v44 setFont:v45];
  }

  v46 = [v41 titleLabel];
  [v46 setAdjustsFontSizeToFitWidth:1];

  v97 = sub_100003540(0, &qword_10076B020, UIView_ptr);
  sub_100058000(&unk_100771E00, &unk_100634260);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1006337E0;
  v48 = v93;
  *(v47 + 32) = v93;
  *(v47 + 40) = 1132068864;
  v49 = v92;
  *(v47 + 48) = v92;
  type metadata accessor for UILayoutPriority(0);
  LODWORD(aBlock) = 1144750080;
  v98[0] = 1065353216;
  v91 = sub_1004D2D44(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  v50 = v48;
  v51 = v49;
  v93 = v50;
  v52 = v51;
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  *(v47 + 64) = v31;
  *(v47 + 72) = 1144750080;
  *(v47 + 80) = v41;
  *(v47 + 88) = 1144750080;
  sub_100058000(&qword_1007884F0, &unk_1006393E0);
  v53 = type metadata accessor for TTRIViewContentPriorityType();
  v54 = *(v53 - 8);
  v55 = v31;
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062D400;
  *(v57 + v56) = 0;
  (*(v54 + 104))(v57 + v56, enum case for TTRIViewContentPriorityType.compressionResistance(_:), v53);
  v58 = v55;
  v59 = v41;
  v60 = v58;
  v61 = v59;
  static UIView.setContentPriorities(_:for:)();

  v62 = v96;
  v63 = v93;
  *&v96[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_completedCountLabel] = v93;
  *&v62[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_separatorLabel] = v52;
  *&v62[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_clearButton] = v60;
  *&v62[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_showHideButton] = v61;
  v100.receiver = v62;
  v100.super_class = ObjectType;
  v64 = v63;
  v65 = v52;
  v66 = v60;
  v67 = v61;
  v68 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v69 = objc_allocWithZone(UIView);
  v70 = v68;
  v71 = [v69 init];
  v98[0] = 1132068864;
  LODWORD(v99[0]) = 1065353216;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v72) = aBlock;
  [v71 setContentHuggingPriority:0 forAxis:v72];
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100634FC0;
  v96 = v64;
  *(v73 + 32) = v64;
  *(v73 + 40) = v65;
  v74 = v66;
  *(v73 + 48) = v66;
  *(v73 + 56) = v71;
  *(v73 + 64) = v67;
  v75 = v70;
  v76 = v71;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v75 setArrangedSubviews:isa];

  v78 = v75;
  [v78 setAxis:0];
  [v78 setSpacing:5.0];
  [v78 setAlignment:2];
  [v78 setDistribution:0];

  [v78 setLayoutMarginsRelativeArrangement:1];
  [v78 setPreservesSuperviewLayoutMargins:1];
  [v78 setDebugBoundingBoxesEnabled:0];

  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v103 = sub_1004D2D34;
  *(&v103 + 1) = v79;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v102 = sub_10010CA7C;
  *(&v102 + 1) = &unk_10072BED0;
  v80 = _Block_copy(&aBlock);

  v81 = v74;
  [v74 _setMenuProvider:v80];
  _Block_release(v80);
  [v67 addTarget:v78 action:"showHideAction:" forControlEvents:0x2000];

  v83 = *&v78[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 16];
  v82 = *&v78[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 32];
  v84 = *&v78[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  v104 = *&v78[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 48];
  v102 = v83;
  v103 = v82;
  aBlock = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = v78;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1004D2D3C;
  *(v86 + 24) = v85;
  v99[4] = sub_100026410;
  v99[5] = v86;
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 1107296256;
  v99[2] = sub_100026440;
  v99[3] = &unk_10072BF48;
  v87 = _Block_copy(v99);
  v88 = v78;
  sub_10008E15C(&aBlock, v98);

  [v88 performBatchUpdates:v87];
  _Block_release(v87);
  LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

  sub_10008E220(&aBlock);

  if ((v74 & 1) == 0)
  {

    sub_10008E220(v90);
    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

char *sub_1004D1B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *&result[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 40];
    if (v5)
    {
      v6 = *&result[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 48];
      sub_10008E7EC(*&result[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 40], v6);

      v7 = v5();
      sub_1000301AC(v5, v6);
      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1004D1CB0()
{
  sub_100058000(&unk_100777760, &unk_1006372A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10062D400;
  v2 = *(v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_completedCountLabel);
  *(v1 + 56) = sub_100003540(0, &qword_100776820, UILabel_ptr);
  *(v1 + 32) = v2;
  v3 = v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration;
  if (*(v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 16))
  {
    v4 = *(v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_clearButton);
    v14 = sub_100003540(0, &unk_10077A690, UIButton_ptr);
    *&v13 = v4;
    v5 = v2;
    v6 = v4;
    v1 = sub_1005470E4(1, 2, 1, v1);
    *(v1 + 16) = 2;
    sub_100007DD8(&v13, (v1 + 64));
    if (!*(v3 + 17))
    {
      return v1;
    }
  }

  else
  {
    v7 = v2;
    if (!*(v3 + 17))
    {
      return v1;
    }
  }

  v8 = *(v0 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_showHideButton);
  v14 = sub_100003540(0, &unk_10077A690, UIButton_ptr);
  *&v13 = v8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v8;
  if (v9 >= v10 >> 1)
  {
    v1 = sub_1005470E4((v10 > 1), v9 + 1, 1, v1);
  }

  *(v1 + 16) = v9 + 1;
  sub_100007DD8(&v13, (v1 + 32 * v9 + 32));
  return v1;
}

void *sub_1004D1E48(__int128 *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  v4 = *&v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 16];
  v21 = *&v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  v22 = v4;
  v23 = *&v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 32];
  v24 = *&v1[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 48];
  v25[0] = v21;
  v25[1] = v4;
  v25[2] = v23;
  v26 = v24;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  *(v3 + 6) = *(a1 + 6);
  *(v3 + 1) = v6;
  *(v3 + 2) = v7;
  *v3 = v5;
  sub_10008E15C(&v21, v19);
  sub_10008E15C(a1, v19);
  sub_10008E220(v25);
  v8 = v3[16];
  v9 = v3[17];
  v10 = v3[18];
  if (v21 == *v3 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v22 == v8 && BYTE1(v22) == v9 && ((v10 ^ BYTE2(v22)) & 1) == 0)
  {
    sub_10008E220(&v21);
    return sub_10008E220(a1);
  }

  else
  {
    v12 = *(v3 + 1);
    v19[0] = *v3;
    v19[1] = v12;
    v19[2] = *(v3 + 2);
    v20 = *(v3 + 6);
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1004D2E68;
    *(v14 + 24) = v13;
    aBlock[4] = sub_100068444;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072BFE8;
    v15 = _Block_copy(aBlock);
    sub_10008E15C(v19, v17);
    v16 = v1;

    [v16 performBatchUpdates:v15];
    _Block_release(v15);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    sub_10008E220(&v21);
    sub_10008E220(a1);
    result = sub_10008E220(v19);
    if (v16)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1004D20B8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_completedCountLabel);
  v3 = (a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration);

  v4 = String._bridgeToObjectiveC()();

  [v2 setText:v4];

  if (!v3[16])
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (v3[16] == 1)
  {
    v5 = 0;
LABEL_5:
    v6 = v3[18];
    goto LABEL_7;
  }

  v6 = 0;
  v5 = 0;
LABEL_7:
  [*(a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_separatorLabel) setHidden:v5];
  v7 = *(a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_clearButton);
  [v7 setHidden:v5];
  if ((v5 & 1) == 0)
  {
    [v7 setEnabled:v6];
  }

  v8 = *(a1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_showHideButton);
  if (v3[17])
  {
    if (v3[17] == 1)
    {
      static TTRLocalizableStrings.showButtonTitle.getter();
    }

    else
    {
      static TTRLocalizableStrings.hideButtonTitle.getter();
    }

    v10 = String._bridgeToObjectiveC()();

    [v8 setTitle:v10 forState:0];

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return [v8 setHidden:v9];
}

double destroy for TTRIRemindersListCompletedCellContentConfiguration(void *a1)
{

  if (a1[3])
  {
  }

  if (a1[5])
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = *v6;
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;

    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_8:
  v8 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v8)
    {
      v10 = *(a2 + 48);
      *(a1 + 40) = v8;
      *(a1 + 48) = v10;

      return a1;
    }

LABEL_14:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = *(a2 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  if (v6)
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v8;
    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_8:
  v9 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 40) = v9;
      *(a1 + 48) = v11;
      return a1;
    }

LABEL_14:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = *(a2 + 48);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListCompletedCellContentConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*sub_1004D27A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  *a1 = v3;
  *(v3 + 344) = v1;
  v4 = v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration;
  v6 = *(v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 16);
  v5 = *(v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 32);
  v7 = *(v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration);
  *(v3 + 48) = *(v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration + 48);
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  *v3 = v7;
  *(v3 + 248) = &type metadata for TTRIRemindersListCompletedCellContentConfiguration;
  v8 = v3;
  *(v3 + 256) = sub_1003DE974();
  v9 = swift_allocObject();
  *(v8 + 224) = v9;
  v10 = *(v4 + 16);
  *(v9 + 16) = *v4;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v4 + 32);
  *(v9 + 64) = *(v4 + 48);
  sub_10008E15C(v8, v8 + 168);
  return sub_1004D2888;
}

void sub_1004D2888(uint64_t *a1, char a2)
{
  v3 = *a1;
  sub_10000B0D8(*a1 + 224, *a1 + 264);
  if (a2)
  {
    sub_10000B0D8(v3 + 264, v3 + 304);
    sub_100058000(&qword_10077A650, &qword_10063DD30);
    if (swift_dynamicCast())
    {
      *(v3 + 56) = *(v3 + 168);
      *(v3 + 72) = *(v3 + 184);
      *(v3 + 88) = *(v3 + 200);
      *(v3 + 104) = *(v3 + 216);
      sub_1004D1E48((v3 + 56));
    }

    sub_100004758((v3 + 264));
  }

  else
  {
    sub_100058000(&qword_10077A650, &qword_10063DD30);
    if (swift_dynamicCast())
    {
      v4 = *(v3 + 184);
      *(v3 + 112) = *(v3 + 168);
      *(v3 + 128) = v4;
      *(v3 + 144) = *(v3 + 200);
      *(v3 + 160) = *(v3 + 216);
      sub_1004D1E48((v3 + 112));
    }
  }

  sub_100004758((v3 + 224));

  free(v3);
}

uint64_t sub_1004D29AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration;
  v4 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v4;
  v9[2] = *(v3 + 32);
  v10 = *(v3 + 48);
  a1[3] = &type metadata for TTRIRemindersListCompletedCellContentConfiguration;
  a1[4] = sub_1003DE974();
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = *(v3 + 16);
  *(v5 + 16) = *v3;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v3 + 32);
  *(v5 + 64) = *(v3 + 48);
  return sub_10008E15C(v9, v8);
}

uint64_t sub_1004D2A48(void *a1)
{
  sub_10000B0D8(a1, v7);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  if (swift_dynamicCast())
  {
    v8[0] = v3;
    v8[1] = v4;
    v8[2] = v5;
    v9 = v6;
    sub_1004D1E48(v8);
  }

  return sub_100004758(a1);
}

void (*sub_1004D2AD4(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1004D27A0(v2);
  return sub_1001861BC;
}

uint64_t sub_1004D2B44(uint64_t a1)
{
  sub_10000B0D8(a1, v7);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    sub_1000301AC(v3, v4);
    sub_1000301AC(v5, v6);
    return v2;
  }

  return result;
}

double sub_1004D2BE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (TTRRemindersListViewModel.CompletedRemindersState.canClear.getter())
  {
    if (TTRRemindersListViewModel.CompletedRemindersState.count.getter() > 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if ((TTRRemindersListViewModel.CompletedRemindersState.canToggleVisibility.getter() & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if ((TTRRemindersListViewModel.CompletedRemindersState.canToggleVisibility.getter() & 1) == 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_11;
    }
  }

  if (TTRRemindersListViewModel.CompletedRemindersState.shown.getter())
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

LABEL_11:
  v6 = TTRRemindersListViewModel.CompletedRemindersState.countText.getter();
  v8 = v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  (*(*(v9 - 8) + 8))(a1, v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
  *(a2 + 18) = 1;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

uint64_t sub_1004D2CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100772600, &unk_1006348F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D2D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004D2DB0()
{
  result = qword_100787728;
  if (!qword_100787728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787728);
  }

  return result;
}

unint64_t sub_1004D2E08()
{
  result = qword_100787730;
  if (!qword_100787730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787730);
  }

  return result;
}

id sub_1004D2E70(uint64_t *a1, void **a2, void *a3, uint64_t a4)
{
  v119 = a4;
  v121 = a3;
  v113 = a2;
  v126 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v132 = *(v4 - 8);
  v133 = v4;
  __chkstk_darwin(v4);
  v108 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v122 = &v107 - v7;
  __chkstk_darwin(v8);
  v107 = &v107 - v9;
  __chkstk_darwin(v10);
  v127 = &v107 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v118 = (&v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v116 = (&v107 - v15);
  v117 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v117);
  v131 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRListType.SortingCapability();
  __chkstk_darwin(v17 - 8);
  v114 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v111 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v110 = *(v130 - 8);
  __chkstk_darwin(v130);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v129 = &v107 - v23;
  v120 = type metadata accessor for TTRRemindersListDefaultListType();
  v24 = *(v120 - 1);
  __chkstk_darwin(v120);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v27 - 8);
  v128 = (&v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v107 - v34;
  sub_100058000(&qword_10076C210, qword_100640CA0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10062D400;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v142[0] = v36;
  sub_1004D40D4(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v109 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters;
  v37 = v113;
  v38 = v128;
  sub_10010BD5C(v113, v128, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v123 = v35;
  v124 = v30;
  v39 = *(v30 + 16);
  v125 = v29;
  v39(v32, v35, v29);
  (*(v24 + 104))(v26, enum case for TTRRemindersListDefaultListType.any(_:), v120);
  sub_10007786C(v38, v32, v26, v142);
  ObjectType = sub_1004D3EB8();
  v139 = &protocol witness table for REMTemplate;
  v137[0] = v121;
  v40 = v121;
  static REMRemindersListDataView.SortingStyle.fallbackForTemplate.getter();
  v41 = v129;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v42 = v110;
  v43 = v130;
  v120 = *(v110 + 8);
  v121 = (v110 + 8);
  v120(v21, v130);
  sub_1004D3F04(v137);
  v44 = *v37;
  (*(v112 + 104))(v111, enum case for TTRRemindersListDataModelSourceCountCompleted.off(_:), v115);
  (*(v42 + 16))(v21, v41, v43);
  type metadata accessor for TTRShowTemplateDataModelSource();
  swift_allocObject();
  v45 = v40;
  v46 = v44;
  v47 = TTRShowTemplateDataModelSource.init(store:template:listRepresentation:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v48 = v142[0];

  v49 = v48;
  v50 = v114;
  static TTRListType.SortingCapability.sortingCapabilityForNonSmartList.getter();
  type metadata accessor for TTRShowTemplateViewModelSource(0);
  v51 = swift_allocObject();
  v115 = v49;
  v53 = sub_1004D3F6C(v47, v49, v50, v51, v52);
  v54 = v128;
  v55 = v109;
  sub_10010BD5C(v37, v128, v109);
  sub_10010BCAC(v142, v137);
  v56 = sub_1004D40D4(&qword_100781130, type metadata accessor for TTRShowTemplateViewModelSource, &unk_100646FD0);
  v57 = v131;
  sub_10010BD5C(v54, v131, v55);
  v58 = v117;
  sub_10010BCAC(v137, v57 + *(v117 + 28));
  v59 = (v57 + *(v58 + 32));
  *v59 = v53;
  v59[1] = v56;
  v60 = v137[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v141, v136, &qword_100769608, &unk_1006302F0);
  v62 = *(v136[5] + 8);
  *(v61 + 32) = v136[4];
  *(v61 + 40) = v62;
  sub_10000794C(&v140, v134, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v63 = v60;
  swift_unknownObjectRelease();
  *(v61 + 48) = v135;
  sub_100004758(v134);
  sub_100004758(v136);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v64 = swift_allocObject();
  v65 = sub_1003A8FF8(v63, v53, v61, v64);

  sub_10010BD08(v137);
  sub_10010BE0C(v54, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v66 = *(v58 + 36);
  v114 = v65;
  *(v57 + v66) = v65;
  v67 = v116;
  sub_100078BBC(v116);
  v117 = type metadata accessor for TTRIShowTemplatePresenter(0);
  v68 = swift_allocObject();
  *(v68 + OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_isConfirmingUpdate) = 0;
  v69 = (v68 + OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_dataModelSource);
  *v69 = v47;
  v69[1] = &protocol witness table for TTRShowTemplateDataModelSource;
  v70 = *v67;
  v71 = v67[1];
  ObjectType = swift_getObjectType();
  v139 = *(v71 + 16);
  v137[0] = v70;
  type metadata accessor for TTRRemoveTemplatePresenterCapability();
  swift_allocObject();
  v128 = v47;

  v72 = v119;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(v68 + OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_removeTemplateCapability) = TTRRemoveTemplatePresenterCapability.init(interactor:)();
  v73 = v118;
  sub_10010BD5C(v67, v118, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v74 = sub_1003A6440(v73, v72, v68);
  sub_10010BE0C(v67, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v75 = *(v74 + 144);
  v76 = swift_getObjectType();
  v77 = *(v75 + 112);

  if (v77(v76, v75))
  {
    swift_getObjectType();
    v78 = v107;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v79 = v127;
    (*(v132 + 32))(v127, v78, v133);
  }

  else
  {
    v79 = v127;
    (*(v132 + 104))(v127, enum case for TTRRemindersListLayout.list(_:), v133);
  }

  v80 = sub_1003A4A1C(v79, v74);
  v118 = v81;
  v83 = v82;
  v85 = v84;
  (*(v132 + 8))(v79, v133);
  v119 = swift_getObjectType();
  *(v74 + 24) = *(v85 + 8);
  v127 = v83;
  swift_unknownObjectWeakAssign();
  v86 = *(v74 + 144);
  v87 = swift_getObjectType();
  v88 = *(v86 + 112);

  if (v88(v87, v86))
  {
    swift_getObjectType();
    v89 = v108;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v90 = v122;
    (*(v132 + 32))(v122, v89, v133);
  }

  else
  {

    v90 = v122;
    (*(v132 + 104))(v122, enum case for TTRRemindersListLayout.list(_:), v133);
  }

  v91 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v92 = v80;
  v93 = sub_1003A902C(v74, v92, v118, v90, 0, 0, 0, v91);

  v94 = *(v85 + 32);
  v95 = v93;
  v94(v93, &off_100723D78, v119, v85);
  sub_1004D40D4(&qword_100787760, type metadata accessor for TTRIShowTemplatePresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1004D40D4(&qword_100787768, type metadata accessor for TTRShowTemplateViewModelSource, &unk_100645208);

  dispatch thunk of TTRShowTemplateDataModelSource.delegate.setter();

  sub_10056FEB0(v96, &off_10071A9B0);

  *(v114 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v143, v137, &qword_100769600, &qword_10062E0A0);
  v97 = v139;
  swift_unknownObjectRelease();
  v97[5] = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v137);
  sub_10000794C(&v144, v137, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_1004D40D4(&qword_100787770, type metadata accessor for TTRIShowTemplatePresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v137);
  dispatch thunk of TTRShowTemplateDataModelSource.start()();
  v98 = objc_allocWithZone(UINavigationController);
  swift_retain_n();
  v99 = [v98 initWithRootViewController:v95];
  v100 = [v99 navigationBar];
  [v100 setPrefersLargeTitles:1];

  v101 = [v99 presentationController];
  if (v101)
  {
    v102 = v101;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v103 = *(v74 + 24);
      v104 = swift_getObjectType();
      (*(v103 + 104))(v102, v104, v103);
      swift_unknownObjectRelease();
    }

    *(v74 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 1;
  }

  v105 = v126;
  v126[3] = v117;
  v105[4] = &off_10071A620;

  swift_unknownObjectRelease();
  *v105 = v74;
  v120(v129, v130);
  (*(v124 + 8))(v123, v125);
  sub_10010BE0C(v131, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v142);
  return v99;
}

id TTRIShowTemplateAssembly.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIShowTemplateAssembly();
  return objc_msgSendSuper2(&v3, "init");
}

id TTRIShowTemplateAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTemplateAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004D3EB8()
{
  result = qword_100770AF8;
  if (!qword_100770AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100770AF8);
  }

  return result;
}

uint64_t sub_1004D3F04(uint64_t a1)
{
  v2 = sub_100058000(&unk_100775680, &qword_10062E3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004D3F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = type metadata accessor for TTRListType.SortingCapability();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation) = 0;
  v14 = a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_remindersCount;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_showLargeAttachmentsValue) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  (*(v10 + 16))(v13, a3, v9, v11);
  v15 = sub_1003A649C(a1, a2, v13, a4);
  (*(v10 + 8))(a3, v9);
  return v15;
}

uint64_t sub_1004D40D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004D411C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100787778);
  v1 = sub_100003E30(v0, qword_100787778);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004D4234(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_showLargeAttachmentsValue) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_showLargeAttachmentsValue) = a1 & 1;
    v2 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
    if (v2)
    {
      v4 = v2;
      v3 = [v4 appearanceContext];
      if (v3)
      {

        type metadata accessor for TTRListEditor();
        __chkstk_darwin(v4);
        static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:)();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1004D434C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v1 + v10, v5, &unk_10078A380, &qword_10062DE60);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
    v11 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
    v12 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (*(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_hasIncompleteOrCompletedReminders) == 2)
    {
      TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)();
    }

    else
    {
      TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
      TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)();
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1004D45B0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v3)
  {
    *a1 = [v3 objectID];
    v4 = enum case for TTRAutoCompleteReminderListScope.list(_:);
    v5 = type metadata accessor for TTRAutoCompleteReminderListScope();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a1, v4, v5);
    v6 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v5;
  }

  else
  {
    v10 = type metadata accessor for TTRAutoCompleteReminderListScope();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a1;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

id sub_1004D46CC(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  v5 = v4;
  if (!v4)
  {
    v5 = sub_100572610(a1, a2, a3);
  }

  v6 = v4;
  return v5;
}

id sub_1004D4714@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.list(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1004D484C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance))
  {
    __chkstk_darwin(a1);
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v9 = v8;
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();

    v10 = sub_1002E7DEC(v9, a4 & 1, sub_1004DD31C, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1004D4944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  (*(v5 + 104))(v7, enum case for TTRRemindersListViewModel.Item.section(_:), v4);
  v9 = dispatch thunk of TTRRemindersListTreeContentsQueryable.hasLoadedReminderItems(in:)();
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

id sub_1004D4AC0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:);
    v5 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v5 - 8) + 104))(a1, v4, v5);
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v7 = sub_1004DD314;
  }

  else
  {
    *a1 = 0;
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v6 = 0;
    v7 = sub_10057F4D0;
  }

  v8 = v7;
  v9 = (a1 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v9 = v8;
  v9[1] = v6;
  v10 = v3;

  return v10;
}

uint64_t sub_1004D4BE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = [a1 objectID];
  v3 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v4 - 8);
  (*(v7 + 104))(a2, v3, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_1004D4CC0(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for TTRSectionID();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v16)
  {
    v35 = v3;
    v17 = v16;

    TTRRemindersListTreeViewModel.parent(of:)();

    v18 = type metadata accessor for TTRRemindersListViewModel.Item();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v11, 1, v18) == 1)
    {

      sub_1000079B4(v11, &qword_100772140, &qword_10062D9F0);
    }

    else if ((*(v19 + 88))(v11, v18) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v19 + 96))(v11, v18);
      (*(v13 + 32))(v15, v11, v12);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      if ((*(v6 + 88))(v8, v5) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
      {
        (*(v6 + 96))(v8, v5);
        v34 = *v8;
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D420;
        v21 = v36;
        v22 = v13;
        v23 = TTRReminderEditor.changeItem.getter();
        v24 = [v23 objectID];

        *(inited + 32) = v24;
        sub_10001D5F8(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        type metadata accessor for TTRListEditor();
        v40 = v17;
        v25 = v17;
        v26 = TTRReminderEditor.changeItem.getter();
        v27 = [v26 saveRequest];

        v39 = v21;
        type metadata accessor for TTRReminderEditor();
        sub_1004DD2CC(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
        TTRUndoableEditing.undoManager.getter();
        TTROneshotEditing.init(item:saveRequest:undoManager:)();
        v28 = v37;
        v29 = v38;
        v30 = v34;
        v31 = v35;
        *v37 = v34;
        (*(v29 + 104))(v28, enum case for TTRSectionID.sectioned(_:), v31);
        v32 = v30;
        TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

        (*(v29 + 8))(v28, v31);
        (*(v22 + 8))(v15, v12);
      }

      else
      {
        (*(v13 + 8))(v15, v12);

        (*(v6 + 8))(v8, v5);
      }
    }

    else
    {

      (*(v19 + 8))(v11, v18);
    }
  }
}

void sub_1004D5270(void *a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 0;
  swift_storeEnumTagMultiPayload();

  TTRRemindersListTreeViewModel.parent(of:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
LABEL_20:
    sub_10014AA38(v18, v41);
    return;
  }

  (*(v10 + 32))(v15, v8, v9);
  v19 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v19)
  {
    goto LABEL_19;
  }

  (*(v10 + 16))(v12, v15, v9);
  v20 = (*(v10 + 88))(v12, v9);
  if (v20 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_5;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v22 = *(v10 + 8);
    v23 = v19;
    v22(v15, v9);
    sub_10014AA9C(v18);
    v24 = v41;
    *v41 = v23;
    v25 = enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:);
    v26 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v26 - 8) + 104))(v24, v25, v26);
    swift_storeEnumTagMultiPayload();
    v22(v12, v9);
    return;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v39 + 32))();
    v37 = v19;
    v27 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v28 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v29 = *(v3 + v28);

    v30 = sub_10013F404(v27, v29);

    (*(v39 + 8))(v38, v40);
    (*(v10 + 8))(v15, v9);
    if (v30)
    {
      sub_10014AA9C(v18);
      v31 = v41;
      *v41 = v30;
      v31[1] = v19;
      swift_storeEnumTagMultiPayload();
      return;
    }

    goto LABEL_20;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v20 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v20 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v20 == enum case for TTRRemindersListViewModel.Item.tip(_:))
  {
LABEL_5:
    v21 = *(v10 + 8);
    v21(v15, v9);
    v21(v12, v9);
    goto LABEL_20;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v20 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
  {
LABEL_19:
    (*(v10 + 8))(v15, v9);
    goto LABEL_20;
  }

  v32 = qword_1007673C0;
  v33 = v19;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100003E30(v34, qword_100787778);
  v35 = sub_100008E04(_swiftEmptyArrayStorage);
  v36 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unsupported parent Item type", 28, 2uLL, v35, v36);
  __break(1u);
}

double sub_1004D589C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_1004D5A60();
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = *(v5 + 88);
  v14 = (v5 + 8);
  if (v13(v10, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v14)(v10, v4);
    v12(v7, a1, v4);
    *(a2 + 24) = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 32) = &off_10072B818;
    v15 = sub_1000317B8(a2);
    sub_1004B7ED8(v7, v11, v15);
  }

  else
  {

    (*v14)(v10, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1004D5A60()
{
  v1 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_10072C1F8;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_1004D5AFC(void *a1)
{
  v2 = sub_1004D5A60();
  if (sub_1004B91A4())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = [a1 objectID];
    v7 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

    v8 = *(v7 + 16);

    return v8 == 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1004D5BD0(void *a1)
{
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v3 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v3 & 1) == 0)
    {
LABEL_18:
      v9 = 0;
      return v9 & 1;
    }
  }

  v4 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list;
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v5)
  {
LABEL_7:
    if (qword_1007673C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100787778);
    sub_10000B0D8(a1, v32);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = 7104878;
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = *(v1 + v4);
      if (v15)
      {
        v16 = [v15 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = sub_100004060(v17, v19, &v31);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      sub_10000C36C(v32, v33);
      dispatch thunk of TTRReminderProtocol.ttrList.getter();
      sub_10000794C(&v29, &v27, &unk_100775680, &qword_10062E3B0);
      if (v28)
      {
        sub_100005FD0(&v27, v26);
        sub_10000B0D8(v26, &v25);
        sub_100058000(&unk_100787E60, &unk_1006435E0);
        v13 = String.init<A>(describing:)();
        v22 = v21;
        sub_100004758(v26);
        sub_1000079B4(&v29, &unk_100775680, &qword_10062E3B0);
      }

      else
      {
        sub_1000079B4(&v29, &unk_100775680, &qword_10062E3B0);
        v22 = 0xE300000000000000;
      }

      sub_100004758(v32);
      v23 = sub_100004060(v13, v22, &v31);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "matchesListPredicate returns false because one of the lists is nil {viewModelSourceList: %s, reminderList: %s}", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100004758(v32);
    }

    goto LABEL_18;
  }

  sub_10000C36C(a1, a1[3]);
  v6 = v5;
  dispatch thunk of TTRReminderProtocol.ttrList.getter();
  if (!v30)
  {

    sub_1000079B4(&v29, &unk_100775680, &qword_10062E3B0);
    goto LABEL_7;
  }

  sub_100005FD0(&v29, v32);
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  v7 = [v6 objectID];
  sub_10000C36C(v32, v33);
  v8 = dispatch thunk of TTRListProtocol.objectID.getter();
  v9 = static NSObject.== infix(_:_:)();

  sub_100004758(v32);
  return v9 & 1;
}

double sub_1004D5FEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1004D5A60();
  sub_1004B7628(a1, a2, a3);

  return result;
}

double sub_1004D6048@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1004D5A60();
  sub_1004B7834(a1, a2);

  return result;
}

uint64_t sub_1004D609C(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v183 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v184 = &v154 - v7;
  v8 = sub_100058000(&qword_100776348, &unk_100636910);
  v171 = *(v8 - 8);
  __chkstk_darwin(v8);
  v172 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v176 = &v154 - v11;
  __chkstk_darwin(v12);
  v169 = &v154 - v13;
  __chkstk_darwin(v14);
  v174 = &v154 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v190 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v1;
  v19 = sub_1004D5A60();
  if (!sub_1004B91A4())
  {

    return 0;
  }

  v21 = v20;
  ObjectType = swift_getObjectType();
  (*(v21 + 8))(v19, ObjectType, v21);
  swift_unknownObjectRelease();

  v23 = a1;
  v24 = TTRRemindersListTreeViewModel.moveSteps(forIndentingReminders:canIndentUncommittedReminder:supportsIndentOutdentInSection:)();
  v170 = v25;
  v27 = v26;

  if (!v24)
  {
    return 0;
  }

  v154 = v27;
  v155 = v24;
  v175 = v8;
  v180 = v3;
  v195 = _swiftEmptyArrayStorage;
  v28 = *(v23 + 16);
  v182 = v4;
  if (v28)
  {
    v29 = v190 + 16;
    v190 = *(v190 + 16);
    v30 = v23 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v31 = *(v29 + 56);
    v32 = (v29 - 8);
    v189 = _swiftEmptyArrayStorage;
    (v190)(v18, v30, v16);
    while (1)
    {
      v33 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      (*v32)(v18, v16);
      if (v33)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v182;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v189 = v195;
      }

      v30 += v31;
      if (!--v28)
      {
        break;
      }

      (v190)(v18, v30, v16);
    }
  }

  else
  {
    v189 = _swiftEmptyArrayStorage;
  }

  v35 = sub_10001D5F8(v189);

  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter() || (swift_getObjectType(), v37 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter(), swift_unknownObjectRelease(), (v37 & 1) == 0))
  {
    v41 = v170;
    v39 = v180;
    v40 = v183;
    v163 = *(v170 + 16);
    if (!v163)
    {
      v178 = 0;
      v38 = _swiftEmptyArrayStorage;
      goto LABEL_65;
    }

    v42 = 0;
    v178 = 0;
    v179 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    v187 = v35 & 0xC000000000000001;
    v43 = v35 & 0xFFFFFFFFFFFFFF8;
    if (v35 < 0)
    {
      v43 = v35;
    }

    v181 = v43;
    v190 = v35 + 56;
    v38 = _swiftEmptyArrayStorage;
    v186 = (v4 + 8);
    v188 = (v4 + 16);
    v162 = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *&v36 = 138412546;
    v156 = v36;
    while (1)
    {
      if (v42 >= *(v41 + 16))
      {
        goto LABEL_114;
      }

      v177 = v38;
      v167 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v44 = *(v171 + 72);
      v168 = v42;
      v166 = v44;
      v45 = v41 + v167 + v44 * v42;
      v46 = v174;
      sub_10000794C(v45, v174, &qword_100776348, &unk_100636910);
      v47 = v175;
      v48 = *(v46 + *(v175 + 48));
      v192 = v48;
      v49 = *(v48 + 16);

      swift_beginAccess();
      v189 = v49;
      if (v49)
      {
        break;
      }

      v52 = *v188;
LABEL_58:
      v95 = v192;
      v96 = *(v47 + 48);
      v97 = v169;
      v52(v169, v174, v39);
      *(v97 + v96) = v95;

      v38 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_10054847C(0, v38[2] + 1, 1, v38);
      }

      v41 = v170;
      v99 = v38[2];
      v98 = v38[3];
      if (v99 >= v98 >> 1)
      {
        v38 = sub_10054847C((v98 > 1), v99 + 1, 1, v38);
      }

      v42 = &v168->isa + 1;
      v38[2] = v99 + 1;
      sub_1004DD25C(v169, v38 + v167 + v99 * v166);

      sub_1000079B4(v174, &qword_100776348, &unk_100636910);
      if (v42 == v163)
      {
        goto LABEL_65;
      }
    }

    v50 = 0;
    v51 = v184;
    while (1)
    {
      if (v50 >= *(v48 + 16))
      {
        goto LABEL_112;
      }

      v52 = *(v4 + 16);
      v52(v51, v48 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v50, v39);
      v53 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v54 = v53;
      if (v187)
      {
        v55 = __CocoaSet.contains(_:)();

        if ((v55 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!*(v35 + 16))
        {

          goto LABEL_26;
        }

        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v61 = NSObject._rawHashValue(seed:)(*(v35 + 40));
        v62 = -1 << *(v35 + 32);
        v63 = v61 & ~v62;
        if (((*(v190 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
        {
LABEL_24:

          v39 = v180;
          v4 = v182;
          v40 = v183;
          goto LABEL_25;
        }

        v64 = ~v62;
        while (1)
        {
          v65 = *(*(v35 + 48) + 8 * v63);
          v66 = static NSObject.== infix(_:_:)();

          if (v66)
          {
            break;
          }

          v63 = (v63 + 1) & v64;
          if (((*(v190 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v39 = v180;
        v4 = v182;
        v40 = v183;
      }

      v56 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v57 = v56;
      v58 = *&v179[v185];
      if ((v58 & 0xC000000000000001) != 0)
      {

        v59 = __CocoaDictionary.lookup(_:)();
        if (v59)
        {
          v193 = v59;
          sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
          swift_dynamicCast();
          v60 = v194;
LABEL_42:

          v51 = v184;
          if (!v60)
          {
            goto LABEL_26;
          }

          v69 = [v60 subtaskContext];
          if (!v69)
          {

            goto LABEL_26;
          }

          v194 = 0;
          v70 = v69;
          v71 = [v69 fetchObjectIDsOfCompletedSubtasksWithError:&v194];
          v72 = v194;
          v173 = v70;
          if (v71)
          {
            v73 = v71;
            sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
            v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v72;

            __chkstk_darwin(v76);
            *(&v154 - 2) = &v192;
            v77 = v184;
            *(&v154 - 1) = v184;
            v78 = v178;
            sub_10052B31C(sub_1004DD240, (&v154 - 4), v74);
            v178 = v78;
            v51 = v77;

            v4 = v182;
            v40 = v183;
            goto LABEL_26;
          }

          v79 = v194;
          v80 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1007673C0 != -1)
          {
            swift_once();
          }

          v178 = 0;
          v81 = type metadata accessor for Logger();
          sub_100003E30(v81, qword_100787778);
          v82 = v60;
          swift_errorRetain();
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.error.getter();

          LODWORD(v161) = v84;
          v164 = v83;
          v85 = os_log_type_enabled(v83, v84);
          v165 = v80;
          v40 = v183;
          if (v85)
          {
            v86 = swift_slowAlloc();
            *&v160 = v82;
            v87 = v86;
            v88 = swift_slowAlloc();
            v158 = v88;
            v159 = swift_slowAlloc();
            v194 = v159;
            *v87 = v156;
            v89 = [v82 objectID];
            v157 = v87;
            *(v87 + 4) = v89;
            *v88 = v89;
            *(v87 + 12) = 2080;
            swift_getErrorValue();
            v90 = Error.rem_errorDescription.getter();
            v91 = v164;
            v93 = sub_100004060(v90, v92, &v194);

            v94 = v157;
            *(v157 + 14) = v93;
            _os_log_impl(&_mh_execute_header, v91, v161, "Failed to fetch objectIDs of completed subtasks of reminder {reminder.objectID: %@, error: %s}", v94, 0x16u);
            sub_1000079B4(v158, &unk_10076DF80, &qword_10062F730);

            sub_100004758(v159);
          }

          else
          {
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (!*(v58 + 16))
        {

          goto LABEL_25;
        }

        v67 = sub_1002613B0(v57);
        if (v68)
        {
          v60 = *(*(v58 + 56) + 8 * v67);
          goto LABEL_42;
        }
      }

LABEL_25:
      v51 = v184;
LABEL_26:
      ++v50;
      (*v186)(v51, v39);
      if (v50 == v189)
      {
        v47 = v175;
        goto LABEL_58;
      }
    }
  }

  v178 = 0;
  v38 = _swiftEmptyArrayStorage;
  v39 = v180;
  v40 = v183;
  v41 = v170;
LABEL_65:
  v167 = *(v41 + 16);
  if (v167)
  {
    v100 = 0;
    v181 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    v187 = v35 & 0xC000000000000001;
    v101 = v35 & 0xFFFFFFFFFFFFFF8;
    if (v35 < 0)
    {
      v101 = v35;
    }

    v184 = v101;
    v190 = v35 + 56;
    v186 = (v4 + 8);
    v188 = (v4 + 16);
    v166 = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *&v36 = 138412546;
    v160 = v36;
    while (1)
    {
      if (v100 >= *(v41 + 16))
      {
        goto LABEL_113;
      }

      v177 = v38;
      v174 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v173 = *(v171 + 72);
      v102 = v176;
      sub_10000794C(v41 + v174 + v173 * v100, v176, &qword_100776348, &unk_100636910);
      v103 = v175;
      v104 = *(v102 + *(v175 + 48));
      v194 = v104;
      v105 = v104[2];

      swift_beginAccess();
      v189 = v105;
      if (v105)
      {
        break;
      }

      v107 = *v188;
LABEL_105:
      v149 = v194;
      v150 = *(v103 + 48);
      v151 = v172;
      v107(v172, v176, v39);
      *(v151 + v150) = v149;

      v38 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_10054847C(0, v38[2] + 1, 1, v38);
      }

      v41 = v170;
      v153 = v38[2];
      v152 = v38[3];
      if (v153 >= v152 >> 1)
      {
        v38 = sub_10054847C((v152 > 1), v153 + 1, 1, v38);
      }

      ++v100;
      v38[2] = v153 + 1;
      sub_1004DD25C(v172, v38 + v174 + v153 * v173);

      sub_1000079B4(v176, &qword_100776348, &unk_100636910);
      if (v100 == v167)
      {
        goto LABEL_110;
      }
    }

    v169 = v100;
    v106 = 0;
    while (1)
    {
      if (v106 >= v104[2])
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
      }

      v107 = *(v4 + 16);
      v107(v40, v104 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v106, v39);
      v108 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v109 = v108;
      if (v187)
      {
        break;
      }

      if (*(v35 + 16))
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v115 = NSObject._rawHashValue(seed:)(*(v35 + 40));
        v116 = -1 << *(v35 + 32);
        v117 = v115 & ~v116;
        if (((*(v190 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
        {
LABEL_85:

          v39 = v180;
          v4 = v182;
          goto LABEL_86;
        }

        v118 = ~v116;
        while (1)
        {
          v119 = *(*(v35 + 48) + 8 * v117);
          v120 = static NSObject.== infix(_:_:)();

          if (v120)
          {
            break;
          }

          v117 = (v117 + 1) & v118;
          if (((*(v190 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
          {
            goto LABEL_85;
          }
        }

        v39 = v180;
        v4 = v182;
        v40 = v183;
LABEL_77:
        v108 = TTRRemindersListViewModel.ReminderID.objectID.getter();
        v111 = v108;
        v112 = *(v185 + v181);
        if ((v112 & 0xC000000000000001) != 0)
        {

          v113 = __CocoaDictionary.lookup(_:)();
          if (!v113)
          {
            goto LABEL_94;
          }

          v191 = v113;
          sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
          swift_dynamicCast();
          v114 = v193;
          goto LABEL_90;
        }

        if (*(v112 + 16))
        {

          v121 = sub_1002613B0(v111);
          if ((v122 & 1) == 0)
          {
LABEL_94:

            goto LABEL_73;
          }

          v114 = *(*(v112 + 56) + 8 * v121);
LABEL_90:

          if (!v114)
          {
            goto LABEL_73;
          }

          v123 = [v114 subtaskContext];
          if (!v123)
          {

            goto LABEL_73;
          }

          v193 = 0;
          v124 = v123;
          v125 = [v123 fetchObjectIDsOfUnsupportedSubtasksWithError:&v193];
          v126 = v193;
          v179 = v124;
          if (v125)
          {
            v127 = v125;
            sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
            v128 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v129 = v126;

            __chkstk_darwin(v130);
            *(&v154 - 2) = &v194;
            v40 = v183;
            *(&v154 - 1) = v183;
            v131 = v178;
            sub_10052B31C(sub_1004DD354, (&v154 - 4), v128);
            v178 = v131;

            v4 = v182;
            goto LABEL_73;
          }

          v132 = v193;
          v133 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1007673C0 != -1)
          {
            swift_once();
          }

          v178 = 0;
          v134 = type metadata accessor for Logger();
          sub_100003E30(v134, qword_100787778);
          v135 = v114;
          swift_errorRetain();
          v136 = v135;
          v137 = Logger.logObject.getter();
          v138 = static os_log_type_t.error.getter();

          v168 = v137;
          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            LODWORD(v162) = v138;
            v140 = v139;
            v141 = swift_slowAlloc();
            v163 = v133;
            v142 = v141;
            v161 = v141;
            v165 = swift_slowAlloc();
            v193 = v165;
            *v140 = v160;
            v143 = [v136 objectID];
            *(v140 + 4) = v143;
            *v142 = v143;
            *(v140 + 12) = 2080;
            swift_getErrorValue();
            v164 = v136;
            v144 = Error.rem_errorDescription.getter();
            v146 = sub_100004060(v144, v145, &v193);
            v147 = v168;
            v148 = v146;

            *(v140 + 14) = v148;
            _os_log_impl(&_mh_execute_header, v147, v162, "Failed to fetch objectIDs of completed subtasks of reminder {reminder.objectID: %@, error: %s}", v140, 0x16u);
            sub_1000079B4(v161, &unk_10076DF80, &qword_10062F730);

            sub_100004758(v165);
          }

          else
          {
          }

LABEL_86:
          v40 = v183;
          goto LABEL_73;
        }
      }

LABEL_73:
      ++v106;
      (*v186)(v40, v39);
      if (v106 == v189)
      {
        v103 = v175;
        v100 = v169;
        goto LABEL_105;
      }
    }

    v110 = __CocoaSet.contains(_:)();

    if ((v110 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_77;
  }

LABEL_110:

  return v155;
}

uint64_t sub_1004D773C(id *a1, uint64_t *a2)
{
  v4 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  TTRRemindersListViewModel.ReminderID.groupID.getter();
  TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100548688(0, v10[2] + 1, 1, v10);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100548688((v12 > 1), v13 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  return (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v5);
}

uint64_t sub_1004D7910(uint64_t a1)
{
  v1 = sub_1004D5A60();
  v3 = sub_1004B91A4();
  if (v3)
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, ObjectType, v4);
    swift_unknownObjectRelease();

    v3 = TTRRemindersListTreeViewModel.moveSteps(forOutdentingReminders:canOutdentUncommittedReminder:supportsIndentOutdentInSection:)();
  }

  else
  {
  }

  return v3;
}

void *sub_1004D7A00()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v1)
  {
    sub_100003540(0, &qword_1007865E0, NSUserActivity_ptr);
    v2 = v1;
    v1 = static NSUserActivity.forStoringListPayload(for:)();
  }

  return v1;
}

void sub_1004D7A68()
{
  v1 = type metadata accessor for TTRUserActivityListPayload.State();
  v3 = __chkstk_darwin(v1);
  v5 = (&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v6)
  {
    *v5 = v6;
    (*(v2 + 104))(v5, enum case for TTRUserActivityListPayload.State.list(_:), v3);
    v9[3] = type metadata accessor for TTRUserActivityListPayload();
    v9[4] = &protocol witness table for TTRUserActivityListPayload;
    sub_1000317B8(v9);
    v7 = v6;
    TTRUserActivityListPayload.init(state:)();
    NSUserActivity.setPayload(_:)();

    sub_100004758(v9);
  }
}

uint64_t sub_1004D7B94()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v16)
  {
    return 0;
  }

  v30 = v3;
  v31 = v2;
  sub_100003540(0, &qword_1007865E0, NSUserActivity_ptr);
  v17 = v16;
  v18 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v19 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v17;
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v20);
    swift_unknownObjectRelease();
    v22 = type metadata accessor for TTRRemindersListViewModel.Item();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
      v24 = 1;
    }

    else
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v23 + 8))(v12, v22);
      v24 = 0;
    }

    v17 = v29;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v25 - 8) + 56))(v15, v24, 1, v25);
  v26 = *(sub_100058000(&qword_10076E920, &qword_100631E30) + 48);
  *v5 = [v17 objectID];
  sub_10000794C(v15, v5 + v26, &unk_10076BB50, &unk_10062DEA0);
  (*(v30 + 104))(v5, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v31);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v32[3] = v6;
  v32[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v27 = sub_1000317B8(v32);
  (*(v7 + 16))(v27, v9, v6);
  NSUserActivity.setPayload(_:)();

  (*(v7 + 8))(v9, v6);
  sub_1000079B4(v15, &unk_10076BB50, &unk_10062DEA0);
  sub_100004758(v32);
  return v18;
}

uint64_t sub_1004D7FD8()
{
  v1 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v1 - 8);
  v3 = (&v11 - v2);
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v4)
  {
    v5 = v4;
    v6 = REMList.accountCapabilities.getter();
    [v6 supportsSections];

    *v3 = v5;
    v7 = enum case for TTRListOrCustomSmartList.list(_:);
    v8 = type metadata accessor for TTRListOrCustomSmartList();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v3, v7, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    return TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
  }

  else
  {

    return TTRRemindersListSectionMenuCapabilities.init()();
  }
}

id sub_1004D816C@<X0>(unsigned int *a1@<X1>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v5)
  {
    *a3 = v5;
    v6 = *a1;
    v12 = v5;
    v7 = (a2)(0);
    v8 = *(v7 - 8);
    (*(v8 + 104))(a3, v6, v7);
    (*(v8 + 56))(a3, 0, 1, v7);
    v9 = v12;
  }

  else
  {
    v10 = (a2)(0, a1);
    (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1004D828C()
{
  v1 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper;
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper);
  }

  else
  {
    v3 = sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults), *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults + 24));
    v4 = __chkstk_darwin(v3);
    v6 = (&v19[-1] - v5);
    (*(v7 + 16))(&v19[-1] - v5, v4);
    v8 = *v6;
    v9 = type metadata accessor for TTRUserDefaults();
    v19[3] = v9;
    v19[4] = &off_10072C150;
    v19[0] = v8;
    type metadata accessor for GroceryTipFetchHelper();
    v2 = swift_allocObject();
    v10 = sub_10000AE84(v19, v9);
    v11 = __chkstk_darwin(v10);
    v13 = (&v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    *(v2 + 64) = v9;
    *(v2 + 72) = &off_10072C150;
    *(v2 + 40) = v15;
    *(v2 + 16) = 2;
    *(v2 + 80) = 0;
    sub_100004758(v19);
    v16 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = sub_1004DCFB8;
    *(v2 + 32) = v16;

    sub_1000301AC(0, 0);

    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1004D84F0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004D8548();
  }

  return result;
}

double sub_1004D8548()
{
  v1 = type metadata accessor for TTRRemindersListTip();
  v64 = *(v1 - 8);
  __chkstk_darwin(v1);
  v66 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListTips();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for TTRRemindersListTips.TipID();
  v5 = *(v72 - 8);
  __chkstk_darwin(v72);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100787E58, &unk_1006435D0);
  __chkstk_darwin(v8 - 8);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = type metadata accessor for AnyTip();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v59 - v17;
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  v21 = v0;
  v22 = *(sub_1004D828C() + 16);

  if (v22)
  {
    v70 = v13;
    v23 = v21 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v69 = v1;
    if (Strong)
    {
      v61 = v21;
      v25 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      v27 = *(v5 + 104);
      v60 = enum case for TTRRemindersListTips.TipID.renameSection(_:);
      v28 = v72;
      v59 = v27;
      v27(v7);
      v29 = *(v25 + 128);
      v30 = v25;
      v21 = v61;
      v29(v7, ObjectType, v30);
      swift_unknownObjectRelease();
      v31 = v5;
      (*(v5 + 8))(v7, v28);
      v32 = v14;
      v13 = v70;
      if ((*(v14 + 48))(v12, 1, v70) != 1)
      {
        (*(v14 + 32))(v20, v12, v13);
        v59(v7, v60, v72);
        (*(v14 + 16))(v63, v20, v13);
        v33 = v65;
        TTRRemindersListTips.init(tipID:tip:)();
        v35 = v66;
        v34 = v67;
        v36 = v68;
        (*(v67 + 16))(v66, v33, v68);
        v37 = v64;
        v38 = v69;
        (*(v64 + 104))(v35, enum case for TTRRemindersListTip.tipKit(_:), v69);

        TTRRemindersListCurrentTipCapability.requestShowTip(_:)();

        (*(v37 + 8))(v35, v38);
        (*(v34 + 8))(v33, v36);
        (*(v32 + 8))(v20, v70);
        return result;
      }
    }

    else
    {
      v31 = v5;
      v32 = v14;
      v13 = v70;
      (*(v14 + 56))(v12, 1, 1, v70);
    }

    sub_1000079B4(v12, &qword_100787E58, &unk_1006435D0);
    v14 = v32;
    v5 = v31;
    v1 = v69;
  }

  v40 = *(*(v21 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper) + 16);
  if (v40 == 2 || (v40 & 1) != 0)
  {
    goto LABEL_18;
  }

  v42 = v21 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v48 = v71;
    (*(v14 + 56))(v71, 1, 1, v13);
    goto LABEL_17;
  }

  v69 = v1;
  v43 = *(v42 + 8);
  v44 = swift_getObjectType();
  v61 = v14;
  v45 = *(v5 + 104);
  v60 = enum case for TTRRemindersListTips.TipID.convertToGrocery(_:);
  v46 = v72;
  v59 = v45;
  v45(v7);
  v47 = v71;
  (*(v43 + 128))(v7, v44, v43);
  v48 = v47;
  v49 = v61;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v46);
  v50 = v13;
  if ((*(v49 + 48))(v48, 1, v13) == 1)
  {
LABEL_17:
    sub_1000079B4(v48, &qword_100787E58, &unk_1006435D0);
LABEL_18:

    TTRRemindersListCurrentTipCapability.requestDismissTip()();

    return result;
  }

  v51 = *(v49 + 32);
  v52 = v62;
  v70 = v50;
  v51(v62, v48, v50);
  v59(v7, v60, v46);
  (*(v49 + 16))(v63, v52, v50);
  v53 = v65;
  TTRRemindersListTips.init(tipID:tip:)();
  v55 = v66;
  v54 = v67;
  v56 = v68;
  (*(v67 + 16))(v66, v53, v68);
  v57 = v64;
  v58 = v69;
  (*(v64 + 104))(v55, enum case for TTRRemindersListTip.tipKit(_:), v69);

  TTRRemindersListCurrentTipCapability.requestShowTip(_:)();

  (*(v57 + 8))(v55, v58);
  (*(v54 + 8))(v53, v56);
  (*(v49 + 8))(v52, v70);
  return result;
}

uint64_t sub_1004D8D44@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v5 - 8);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v8 - 8);
  v96 = &v73 - v9;
  v10 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v10 - 8);
  v95 = &v73 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v97 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v14 - 8);
  v16 = (&v73 - v15);
  v17 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v89 = *(v17 - 8);
  v90 = v17;
  __chkstk_darwin(v17);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v20 - 8);
  v94 = &v73 - v21;
  v22 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v22 - 8);
  v24 = &v73 - v23;
  v25 = type metadata accessor for TTRListColors.Color();
  __chkstk_darwin(v25);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list;
  v31 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v31)
  {
    v32 = v1;
    v85 = v27;
    v86 = v26;
    v87 = v7;
    v88 = v4;
    type metadata accessor for TTRListColors();
    v98[3] = sub_100003540(0, &qword_10076ABC0, REMList_ptr);
    v98[4] = &protocol witness table for REMList;
    v98[0] = v31;
    v33 = v24;
    v34 = v31;
    static TTRListColors.color(for:)();
    sub_1000079B4(v98, &unk_100775680, &qword_10062E3B0);
    v35 = REMList.accountCapabilities.getter();
    v75 = [v35 supportsSections];

    v36 = [v34 objectID];
    v37 = [v34 isGroup];
    *v33 = v36;
    v33[8] = v37;
    v38 = enum case for TTRListType.list(_:);
    v39 = type metadata accessor for TTRListType();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v33, v38, v39);
    v41 = *(v40 + 56);
    v84 = v33;
    v41(v33, 0, 1, v39);
    v42 = [v34 displayName];
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v43;

    v83 = v29;
    v80 = TTRListColors.Color.nativeColor.getter();
    v44 = 0;
    v78 = *(v32 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount + 16);
    if ((v78 & 1) == 0)
    {
      v44 = *(v32 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount + 8);
    }

    v74 = (v32 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount);
    v79 = v44;
    type metadata accessor for TTRRemindersListViewModel();
    v45 = v94;
    static TTRRemindersListViewModel.makeListSharingInfo(_:)();
    v46 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    swift_getObjectType();
    v47 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
    if (v47)
    {
      swift_unknownObjectRelease();
    }

    v77 = v47;
    v48 = *(v32 + v30);
    v49 = v97;
    if (v48)
    {
      v50 = v48;
      v51 = REMList.accountCapabilities.getter();
      [v51 supportsSections];

      *v16 = v50;
      v52 = enum case for TTRListOrCustomSmartList.list(_:);
      v53 = type metadata accessor for TTRListOrCustomSmartList();
      v54 = *(v53 - 8);
      (*(v54 + 104))(v16, v52, v53);
      (*(v54 + 56))(v16, 0, 1, v53);
      v49 = v97;
      TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
    }

    else
    {
      TTRRemindersListSectionMenuCapabilities.init()();
    }

    v76 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v89 + 8))(v19, v90);
    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter())
    {
      swift_unknownObjectRelease();
    }

    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.templateContext.getter())
    {
      swift_unknownObjectRelease();
    }

    v60 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:);
    if (!v75)
    {
      v60 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:);
    }

    (*(v91 + 104))(v49, *v60, v92);
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
    sub_1000079B4(v98, &qword_1007693C0, &unk_100631DE0);
    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
    {
      swift_getObjectType();
      LODWORD(v92) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
      swift_unknownObjectRelease();
    }

    else
    {
      LODWORD(v92) = 0;
    }

    if (v74[2])
    {
      v91 = 0;
    }

    else
    {
      v91 = *v74;
    }

    v61 = [v34 objectID];
    v62 = [v61 stringRepresentation];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v64;
    v90 = v63;

    v65 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
    (*(*(v65 - 8) + 56))(v95, 1, 1, v65);
    v66 = type metadata accessor for TTRTemplatePublicLinkData();
    (*(*(v66 - 8) + 56))(v96, 1, 1, v66);
    v75 = [v34 isOriginOfExistingTemplate];
    v67 = [v34 groceryContext];
    if (v67)
    {
      v68 = v67;
      [v67 shouldCategorizeGroceryItems];
    }

    v69 = REMList.autoCategorizationContext.getter();
    if (v69)
    {
      v70 = v69;
      [v69 shouldAutoCategorizeItems];
    }

    TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
    TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
    v71 = v93;
    TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

    (*(v85 + 8))(v83, v86);
    v72 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    return (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  }

  else
  {
    v55 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v56 = *(*(v55 - 8) + 56);
    v57 = v55;
    v58 = v93;

    return v56(v58, 1, 1, v57);
  }
}

double sub_1004D989C()
{

  sub_100004758((v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults));

  return result;
}

uint64_t sub_1004D990C()
{
  v0 = sub_10056FD38();

  sub_100004758((v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowRemindersInListViewModelSource(uint64_t a1)
{
  result = qword_1007877F8;
  if (!qword_1007877F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004D9A98(void *a1)
{
  v2 = v1;
  v45 = *v1;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v43 - v9;
  v11 = [a1 objectID];
  v12 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list;
  v13 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v13)
  {
    v14 = [v13 objectID];
    v15 = v14;
    if (v11)
    {
      if (v14)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v16 = static NSObject.== infix(_:_:)();

LABEL_9:
        v11 = v15;
        goto LABEL_10;
      }

LABEL_6:
      v16 = 0;
LABEL_10:

      goto LABEL_12;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  v16 = 1;
LABEL_12:
  v17 = [a1 appearanceContext];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 showingLargeAttachments];

    *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_showLargeAttachmentsValue) = v19;
  }

  v20 = *(v2 + v12);
  *(v2 + v12) = a1;

  v21 = a1;
  sub_1004D8D44(v10);
  sub_10056F540(v10);
  if ((v16 & 1) == 0)
  {
    sub_1004D828C();
    sub_1004D9F20(v21);

    v22 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 1);
      ObjectType = swift_getObjectType();
      (*(v23 + 88))(1, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    type metadata accessor for TTRUserDefaults();
    v25 = static TTRUserDefaults.appUserDefaults.getter();
    v26 = [v21 groceryContext];
    v43 = v10;
    v44 = v4;
    if (v26)
    {
      v27 = v26;
      v28 = [v26 shouldCategorizeGroceryItems];
    }

    else
    {
      v28 = 0;
    }

    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v29 = sub_100058000(&qword_100770980, &unk_1006339B0);
    v30 = &v6[*(v29 + 48)];
    v31 = &v6[*(v29 + 80)];
    v32 = [v21 isShared];
    *v6 = v28;
    v6[1] = v32;
    v33 = enum case for REMRemindersOpenUserOperation.list(_:);
    v34 = type metadata accessor for REMRemindersOpenUserOperation();
    (*(*(v34 - 8) + 104))(v6, v33, v34);
    *v30 = TTRUserDefaults.activitySessionId.getter();
    v30[1] = v35;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v31 = _typeName(_:qualified:)();
    v31[1] = v36;
    v37 = v46;
    v38 = v44;
    (*(v46 + 104))(v6, enum case for REMAnalyticsEvent.openListUserOperation(_:), v44);
    REMAnalyticsManager.post(event:)();

    (*(v37 + 8))(v6, v38);
    v10 = v43;
  }

  v39 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v39 + 1);
    v41 = swift_getObjectType();
    (*(v40 + 104))(v41, v40);
    swift_unknownObjectRelease();
  }

  return sub_1000079B4(v10, &unk_10078A380, &qword_10062DE60);
}

double sub_1004D9F20(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  if (*(v2 + 80))
  {

    Task.cancel()();
  }

  *(v2 + 80) = 0;

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v9 = a1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  v11[5] = v9;

  *(v2 + 80) = sub_10009E31C(0, 0, v6, &unk_1006435B0, v11);

  return result;
}

void sub_1004DA0E4(id a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v62 = a2;
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRTipKitDataModelSourceContextKeyCondition();
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100769378, &qword_10062DE80);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v51 - v19;
  v21 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list;
  v22 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  v53 = v7;
  v59 = a1;
  if (!v22)
  {
    if (!a1)
    {
      v25 = 1;
      v55 = 1;
      v26 = v60;
      goto LABEL_23;
    }

    v24 = 0;
LABEL_7:
    v27 = [a1 sortingStyle];
    v28 = v27;
    if (v24)
    {
      if (v27)
      {
        v54 = v6;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
        if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
        {
          v55 = 1;
        }

        else
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v6 = v54;
        a1 = v59;
      }

      else
      {
        v55 = 0;
        v28 = v24;
      }
    }

    else
    {
      if (!v27)
      {
        v55 = 1;
        goto LABEL_19;
      }

      v55 = 0;
    }

LABEL_19:
    v33 = *(v4 + v21);
    *(v4 + v21) = a1;
    v24 = a1;

    v34 = v4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v26 = v60;
    if (Strong)
    {
      v36 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      (*(v36 + 104))(ObjectType, v36);
      swift_unknownObjectRelease();
    }

    v25 = 0;
    goto LABEL_22;
  }

  v23 = [v22 sortingStyle];
  v24 = v23;
  if (a1)
  {
    goto LABEL_7;
  }

  v25 = 1;
  if (v23)
  {
    v55 = 0;
    v26 = v60;
LABEL_22:

    goto LABEL_23;
  }

  v55 = 1;
  v26 = v60;
LABEL_23:
  REMRemindersListDataView.SectionsModel.remindersCount.getter();
  sub_10000794C(v20, v16, &qword_100769378, &qword_10062DE80);
  v38 = v61;
  v39 = (*(v26 + 48))(v16, 1, v61);
  if (v39 == 1)
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    (*(v26 + 32))(v13, v16, v38);
    v54 = v6;
    v42 = v38;
    v40 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v41 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v43 = v42;
    v6 = v54;
    (*(v26 + 8))(v13, v43);
  }

  sub_1000079B4(v20, &qword_100769378, &qword_10062DE80);
  v44 = v4 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount;
  *v44 = v40;
  *(v44 + 8) = v41;
  *(v44 + 16) = v39 == 1;
  *(v4 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_hasIncompleteOrCompletedReminders) = REMRemindersListDataView.SectionsModel.hasIncompleteOrCompletedReminders.getter();
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.tipKitContext.getter())
  {
    swift_getObjectType();
    (*(v57 + 104))(v56, enum case for TTRTipKitDataModelSourceContextKeyCondition.unknown(_:), v58);
    dispatch thunk of TTRRemindersListDataModelSourceTipKitContextType.thisListHasCompletedReminders.setter();
    swift_unknownObjectRelease();
  }

  if ((v25 & 1) == 0)
  {
    v45 = v59;
    v46 = v45;
    if (v55)
    {
      v47 = REMRemindersListDataView.SectionsModel.sections.getter();
      sub_1004DA6CC(v47, v51);
    }

    else
    {
      v48 = [v45 sortingStyle];
      v49 = v52;
      REMSortingStyle.dataViewSortingStyle.getter();

      sub_10057A85C(v49, 1, v50);
      (*(v53 + 8))(v49, v6);
    }
  }
}

double sub_1004DA6CC(void *a1, uint64_t a2)
{
  v119 = a2;
  v191 = a1;
  v3 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v3 - 8);
  v167 = &v118 - v4;
  v178 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v189 = *(v178 - 8);
  __chkstk_darwin(v178);
  v177 = (&v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v188 = *(v176 - 8);
  __chkstk_darwin(v176);
  v175 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v187 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v145 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076B060, &unk_1006324D0);
  __chkstk_darwin(v9 - 8);
  v170 = &v118 - v10;
  v169 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v137 = *(v169 - 8);
  __chkstk_darwin(v169);
  v168 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v136 = *(v185 - 8);
  __chkstk_darwin(v185);
  v131 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v166 = &v118 - v14;
  v15 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v135 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = (&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = type metadata accessor for TTRListColors.Color();
  v134 = *(v190 - 8);
  __chkstk_darwin(v190);
  v184 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v133 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v163 = &v118 - v21;
  v162 = sub_100058000(&qword_10076E8D8, &unk_100645250);
  __chkstk_darwin(v162);
  v23 = (&v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v161 = &v118 - v25;
  v160 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v183 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v27 - 8);
  v118 = &v118 - v28;
  v158 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v30 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v35 - 8);
  v37 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = __chkstk_darwin(v38).n128_u64[0];
  v41 = &v118 - v40;
  v42 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v42)
  {
    return result;
  }

  v182 = v42;
  v121 = v41;
  sub_1004D8D44(v41);
  v43 = v191;

  v120 = v2;
  v44 = sub_1004DC054();
  v181 = v15;
  v180 = v17;
  v179 = v23;
  if (v44)
  {
    v45 = v44[2];
    v46 = v191;
    v43 = v191;
    if (v45)
    {
      v47 = v44 + 4;
      do
      {
        v48 = sub_10000C36C(v47, v47[3]);
        sub_1003216A4(v46, *v48, v49);
        v43 = v50;

        v47 += 5;
        v46 = v43;
        --v45;
      }

      while (v45);
    }

    v15 = v181;
    v17 = v180;
    v23 = v179;
  }

  v186 = v43;
  sub_10000794C(v121, v37, &unk_10078A380, &qword_10062DE60);
  if ((*(v32 + 48))(v37, 1, v31) == 1)
  {
    sub_1000079B4(v37, &unk_10078A380, &qword_10062DE60);
  }

  else
  {
    (*(v32 + 32))(v34, v37, v31);
    TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
    v51 = (*(v157 + 88))(v30, v158);
    v52 = v120;
    if (v51 != enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
    {
      if (v51 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
      {
        (*(v32 + 8))(v34, v31);
        v53 = OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance;
        v54 = *(v52 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance);
        if (v54)
        {
          swift_beginAccess();
          v55 = *(v54 + 40);
          v56 = sub_100003540(0, &qword_10076E8E8, REMListSection_ptr);
        }

        else
        {
          v56 = sub_100003540(0, &qword_10076E8E8, REMListSection_ptr);
          v55 = &_swiftEmptySetSingleton;
        }

        v57 = v184;
        type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
        v109 = swift_allocObject();
        *(v109 + 64) = 0;
        *(v109 + 24) = 0;
        *(v109 + 32) = 0;
        *(v109 + 16) = 0;
        swift_unknownObjectWeakInit();
        *(v109 + 128) = 0u;
        *(v109 + 144) = 0u;
        *(v109 + 96) = 0u;
        *(v109 + 112) = 0u;
        *(v109 + 64) = &off_10072ED30;
        v110 = v120;
        swift_unknownObjectWeakAssign();
        *(v109 + 88) = v56;
        v111 = v186;
        *(v109 + 72) = v191;
        *(v109 + 80) = v111;
        *(v109 + 40) = v55;
        *(v109 + 48) = 1;
        *(v110 + v53) = v109;

        v15 = v181;
        v17 = v180;
        v23 = v179;
        goto LABEL_16;
      }

      if (v51 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
      {
        goto LABEL_40;
      }
    }

    (*(v32 + 8))(v34, v31);
    *(v52 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance) = 0;
  }

  v57 = v184;
LABEL_16:
  v130 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
  v132 = v58;
  v59 = v186;
  v60 = v186[2];
  v61 = _swiftEmptyArrayStorage;
  if (v60)
  {
    *&v192 = _swiftEmptyArrayStorage;

    v157 = v60;
    sub_1004A22E0(0, v60, 0);
    v158 = v59[2];
    v156 = type metadata accessor for REMRemindersListDataView.SectionLite();
    v62 = *(v156 - 8);
    v154 = v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v61 = v192;
    v153 = type metadata accessor for TTRListColors();
    v63 = 0;
    v152 = v62 + 16;
    v155 = v62;
    v151 = v62 + 32;
    v150 = (v135 + 11);
    v149 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v129 = (v136 + 13);
    v148 = (v134 + 2);
    v128 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v127 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
    v147 = (v134 + 7);
    v146 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:);
    v145 += 13;
    v144 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:);
    v143 = v187 + 104;
    v142 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:);
    v141 = (v188 + 104);
    v140 = (v189 + 13);
    v139 = (v137 + 2);
    v138 = (v137 + 7);
    ++v137;
    v126 = (v135 + 12);
    v125 = v136 + 2;
    v124 = (v136 + 1);
    v136 = (v133 + 16);
    v135 = v134 + 1;
    v123 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
    v134 = (v133 + 8);
    v122 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
    v133 = v183 + 32;
    do
    {
      if (v158 == v63)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        if (qword_1007673C0 != -1)
        {
          swift_once();
        }

        v112 = type metadata accessor for Logger();
        sub_100003E30(v112, qword_100787778);
        v113 = sub_100008E04(_swiftEmptyArrayStorage);
        v114 = sub_100008E04(_swiftEmptyArrayStorage);
        v115 = "Unknown type in dataModelSection.type";
        for (i = 37; ; i = 60)
        {
          sub_1003F9818(v115, i, 2uLL, v113, v114);
          __break(1u);
LABEL_40:
          if (qword_1007673C0 != -1)
          {
            swift_once();
          }

          v117 = type metadata accessor for Logger();
          sub_100003E30(v117, qword_100787778);
          v113 = sub_100008E04(_swiftEmptyArrayStorage);
          v114 = sub_100008E04(_swiftEmptyArrayStorage);
        }
      }

      if (v63 >= v186[2])
      {
        goto LABEL_35;
      }

      v189 = v61;
      v64 = v162;
      v65 = *(v162 + 48);
      v66 = v15;
      v67 = v57;
      v68 = v155;
      v69 = v161;
      v70 = v156;
      (*(v155 + 16))(&v161[v65], v154 + *(v155 + 72) * v63, v156);
      *v23 = v63;
      v191 = v63;
      v71 = v17;
      v72 = *(v64 + 48);
      (*(v68 + 32))(v23 + v72, &v69[v65], v70);
      v194 = sub_100003540(0, &qword_10076ABC0, REMList_ptr);
      v195 = &protocol witness table for REMList;
      v193 = v182;
      v73 = v182;
      static TTRListColors.color(for:)();
      sub_1000079B4(&v193, &unk_100775680, &qword_10062E3B0);
      v188 = v72;
      REMRemindersListDataView.SectionLite.type.getter();
      v74 = (*v150)(v71, v66);
      v187 = v73;
      if (v74 == v149)
      {
        (*v126)(v71, v66);
        v75 = *v71;

        v76 = v166;
        v130(v191);
        (*v125)(v131, v76, v185);
        v77 = v170;
        v78 = v190;
        (*v148)(v170, v67, v190);
        (*v147)(v77, 0, 1, v78);
        (*v145)(v171, v146, v172);
        (*v143)(v173, v144, v174);
        (*v141)(v175, v142, v176);
        v79 = v168;
        v80 = v167;
        v81 = v178;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v82 = v177;
        *v177 = v75;
        (*v140)(v82, v122, v81);
        v83 = v169;
        (*v139)(v80, v79, v169);
        (*v138)(v80, 0, 1, v83);
        v84 = v75;
        v85 = [v187 objectID];
        v86 = v163;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();

        (*v137)(v79, v83);
        (*v124)(v76, v185);
        v87 = v191;
      }

      else
      {
        v87 = v191;
        if (v74 != v128)
        {
          goto LABEL_36;
        }

        v88 = [v73 groceryContext];
        if (v88)
        {
          v89 = v88;
          [v88 shouldCategorizeGroceryItems];
        }

        (*v129)(v166, v127, v185);
        v90 = v170;
        v91 = v190;
        (*v148)(v170, v67, v190);
        (*v147)(v90, 0, 1, v91);
        (*v145)(v171, v146, v172);
        (*v143)(v173, v144, v174);
        (*v141)(v175, v142, v176);
        v92 = v168;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v93 = v187;
        v94 = [v187 objectID];
        v95 = v177;
        *v177 = v94;
        (*v140)(v95, v123, v178);
        v96 = v167;
        v97 = v169;
        (*v139)(v167, v92, v169);
        (*v138)(v96, 0, 1, v97);
        v98 = [v93 objectID];
        v86 = v163;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        (*v137)(v92, v97);
      }

      v99 = v165;
      (*v136)(v164, v86, v165);
      v23 = v179;
      REMRemindersListDataView.SectionLite.reminders.getter();
      v100 = v159;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      v57 = v184;
      (*v135)(v184, v190);
      (*v134)(v86, v99);
      sub_1000079B4(v23, &qword_10076E8D8, &unk_100645250);
      v61 = v189;
      *&v192 = v189;
      v102 = v189[2];
      v101 = v189[3];
      if (v102 >= v101 >> 1)
      {
        sub_1004A22E0((v101 > 1), v102 + 1, 1);
        v61 = v192;
      }

      v63 = v87 + 1;
      v61[2] = v102 + 1;
      (*(v183 + 32))(v61 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v102, v100, v160);
      v15 = v181;
      v17 = v180;
    }

    while (v157 != v63);
  }

  v103 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v104 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v105 = type metadata accessor for TTRRemindersListViewModel.Item();
  v106 = v118;
  (*(*(v105 - 8) + 56))(v118, 1, 1, v105);
  v194 = v103;
  v195 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v193 = v104;
  sub_10000B0D8(&v193, &v192);
  v107 = swift_allocObject();
  *(v107 + 16) = v61;
  sub_100005FD0(&v192, v107 + 24);
  *(v107 + 64) = v120;

  v108 = v121;
  sub_100586238(1, v121, sub_100070528, v107, v119, 0, v106);

  sub_1000079B4(v106, &qword_100772140, &qword_10062D9F0);
  sub_1000079B4(v108, &unk_10078A380, &qword_10062DE60);

  sub_100004758(&v193);

  return result;
}

void *sub_1004DC054()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = [v3 groceryContext];
  if ((!v4 || (v5 = v4, v6 = [v4 shouldCategorizeGroceryItems], v5, (v6 & 1) == 0)) && ((v7 = REMList.autoCategorizationContext.getter()) == 0 || (v8 = v7, v9 = objc_msgSend(v7, "shouldAutoCategorizeItems"), v8, (v9 & 1) == 0)) || (sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults), *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults + 24)), v10 = objc_msgSend(v3, "objectID"), v11 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(), v10, (v11 & 1) == 0))
  {

    result = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance))
  {
    swift_beginAccess();
  }

  else
  {
    v12 = 0;
  }

  v28[3] = &type metadata for TTRRemoveEmptySectionFilter;
  v28[4] = &off_1007206D0;
  v28[0] = v12;
  v14 = sub_1005486B0(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1005486B0((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = v14;

  v18 = sub_10000AE84(v28, &type metadata for TTRRemoveEmptySectionFilter);
  v19 = __chkstk_darwin(v18);
  v21 = (&v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  v26 = &type metadata for TTRRemoveEmptySectionFilter;
  v27 = &off_1007206D0;
  *&v25 = v23;
  v17[2] = v16 + 1;
  sub_100005FD0(&v25, &v17[5 * v16 + 4]);
  sub_100004758(v28);
  result = v17;
  if (!v17[2])
  {
LABEL_15:

    return 0;
  }

  return result;
}

void sub_1004DC2E8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance);
  if (v4 && swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 64);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);

    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v9 = a1;
    TTRSection.init(with:store:)();
  }

  else
  {
    v10 = type metadata accessor for TTRSection();
    v11 = *(*(v10 - 8) + 56);

    v11(a2, 1, 1, v10);
  }
}

void sub_1004DC408()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v14 = *(v2 + 8);
    v14(v4, v1);
    v14(v7, v1);
  }

  else if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
  }

  else
  {
    if (qword_1007673C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100787778);
    v16 = sub_100008E04(_swiftEmptyArrayStorage);
    v17 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unsupported sorting capability", 30, 2uLL, v16, v17);
    __break(1u);
  }
}

id sub_1004DC728@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list);
  if (v2)
  {
    v3 = &off_100714578;
    v4 = &type metadata for TTRShowRemindersInListDragAndDropREMListTarget;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v2;
  a1[3] = v4;
  a1[4] = v3;
  return v2;
}

void *sub_1004DC768(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

uint64_t sub_1004DC7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  sub_100058000(&qword_10076BE10, &qword_10062FF90);
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for MainActor();
  v5[29] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004DC898, v7, v6);
}

uint64_t sub_1004DC898()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v2 = Strong;
  sub_10000C36C((Strong + 40), *(Strong + 64));
  if ((TTRUserDefaults.hasCreatedGroceryList.getter() & 1) == 0)
  {
    sub_10000C36C((v2 + 40), *(v2 + 64));
    if (TTRUserDefaults.groceryTipDismissed.getter())
    {
      goto LABEL_16;
    }

    REMList.ttrGroceryContext.getter();
    if (*(v0 + 80))
    {
      sub_100005FD0((v0 + 56), v0 + 16);
      sub_10000C36C((v0 + 16), *(v0 + 40));
      ShouldSuggestConversionToGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldSuggestConversionToGroceryList.getter();
      sub_100004758((v0 + 16));
      if (ShouldSuggestConversionToGrocery)
      {
        v6 = 0;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v8 = v0 + 56;
LABEL_15:
    sub_1000079B4(v8, &qword_1007757E0, &qword_100636780);
    goto LABEL_16;
  }

  REMList.ttrGroceryContext.getter();
  if (!*(v0 + 160))
  {
    v8 = v0 + 136;
    goto LABEL_15;
  }

  sub_100005FD0((v0 + 136), v0 + 96);
  sub_10000C36C((v0 + 96), *(v0 + 120));
  if ((dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter() & 1) == 0 || (v3 = [*(v0 + 208) sectionContext]) == 0)
  {
    sub_100004758((v0 + 96));
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [v3 hasSections];

  sub_100004758((v0 + 96));
  if ((v5 & 1) == 0)
  {
LABEL_16:
    v6 = 2;
    goto LABEL_17;
  }

  v6 = 1;
LABEL_17:
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v9 = *(v0 + 216);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = v11;
    *(v13 + 40) = v6;

    sub_10009EF3C(0, 0, v9, &unk_1006435C8, v13);
  }

LABEL_20:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1004DCB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004DCC10, v7, v6);
}

uint64_t sub_1004DCC10()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    v4 = *(v0 + 64);
    if (v3 == 2)
    {
      if (v4 == 2)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else if (v4 != 2 && ((v4 ^ v3) & 1) == 0)
    {
      goto LABEL_9;
    }

    *(Strong + 16) = v4;
    v5 = *(Strong + 24);
    if (v5)
    {
      v6 = *(Strong + 32);

      v5(v7);

      sub_1000301AC(v5, v6);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  **(v0 + 40) = v2 == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004DCD18()
{
  sub_1000301AC(v0[3], v0[4]);
  sub_100004758(v0 + 5);

  return swift_deallocClassInstance();
}

unint64_t sub_1004DCD98()
{
  result = qword_100787E48;
  if (!qword_100787E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787E48);
  }

  return result;
}

uint64_t sub_1004DCE34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA3C;

  return sub_1004DC7C4(a1, v4, v5, v7, v6);
}

uint64_t sub_1004DCEF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1004DCB74(a1, v4, v5, v6, v7);
}

void *sub_1004DCFC0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1004DD25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776348, &unk_100636910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004DD2CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1004DD370()
{
  v1 = OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater;
  if (*(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIBoardColumnCollectionView____lazy_storage___insetsUpdater);
  }

  else
  {
    type metadata accessor for TTRIShowRemindersScrollViewInsetsUpdater();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2[5] = 2;
    v2[6] = 0;
    v2[7] = 0;
    v2[8] = 0;
    swift_unknownObjectWeakAssign();
    v2[3] = sub_100290088;
    v2[4] = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_1004DD41C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1004DD754();
  sub_1004DD7A0();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "pressesEnded:withEvent:", isa, a2);

  result = [v2 delegate];
  if (result)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100488B48(a1);
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1004DD754()
{
  result = qword_100787F00;
  if (!qword_100787F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100787F00);
  }

  return result;
}

unint64_t sub_1004DD7A0()
{
  result = qword_100787F08;
  if (!qword_100787F08)
  {
    sub_1004DD754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787F08);
  }

  return result;
}

uint64_t sub_1004DD860()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100787F10);
  v1 = sub_100003E30(v0, qword_100787F10);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1004DD928(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v69 = a2;
  v67 = a1;
  v6 = *((swift_isaMask & *v3) + 0x50);
  v61 = *((swift_isaMask & *v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v60 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v57 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = v55 - v10;
  v11 = type metadata accessor for IndexPath();
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v64 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = v55 - v14;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v55 - v17;
  v19 = *(v6 - 1);
  __chkstk_darwin(v20);
  v55[2] = v21;
  v56 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v55 - v23;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = result;
  v68 = a3;
  sub_10019CB14(a3, v26, v27, v18);

  if ((*(v19 + 48))(v18, 1, v6) == 1)
  {
    (*(v16 + 8))(v18, v15);
    return _swiftEmptyArrayStorage;
  }

  v62 = v19;
  v30 = *(v19 + 32);
  v55[1] = v19 + 32;
  v30(v24, v18, v6);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_19;
  }

  v31 = result;
  v32 = v69;
  swift_getObjectType();
  v33 = sub_1001893F4();

  v34 = sub_10039C078(v33);
  if (!v34)
  {
    v34 = sub_1004DE0AC(v4, v32);
  }

  [v32 setLocalContext:v34];
  v35 = *(v4 + qword_100787F30);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = result;
    v55[0] = v30;
    v37 = sub_1001893F4();

    v29 = v35(v37, v32, v24);
    if (v29 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v68;
    if (v38)
    {
      v69 = v6;
      v40 = v64;
      v41 = v65;
      v42 = v66;
      (*(v65 + 16))(v64, v68, v66);
      swift_beginAccess();
      v43 = v24;
      v44 = v63;
      sub_10058CCF4(v63, v40);
      (*(v41 + 8))(v44, v42);
      swift_endAccess();
      sub_1004DEB54();
      if (sub_1004DE1B8(v43, v39, v67))
      {
        v45 = v61;
        v46 = v69;
        (*(v61 + 24))(v69, v61);
        swift_beginAccess();
        v47 = v60;
        swift_getAssociatedConformanceWitness();
        type metadata accessor for Set();
        v68 = v29;
        v48 = v58;
        Set.insert(_:)();
        swift_endAccess();
        (*(v59 + 8))(v48, v47);
        v67 = objc_opt_self();
        v49 = v62;
        v50 = v56;
        (*(v62 + 16))(v56, v43, v46);
        v51 = (*(v49 + 80) + 40) & ~*(v49 + 80);
        v52 = swift_allocObject();
        v52[2] = v46;
        v52[3] = v45;
        v52[4] = v4;
        (v55[0])(v52 + v51, v50, v46);
        aBlock[4] = sub_1004DF860;
        aBlock[5] = v52;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001047C;
        aBlock[3] = &unk_10072C4C0;
        v53 = _Block_copy(aBlock);
        v54 = v4;
        v29 = v68;

        [v67 animateWithDuration:v53 animations:0.2];
        _Block_release(v53);

        (*(v49 + 8))(v43, v46);
        return v29;
      }

      (*(v62 + 8))(v43, v69);
    }

    else
    {
      (*(v62 + 8))(v24, v6);
    }

    return v29;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1004DE0AC(void *a1, void *a2)
{
  v3 = swift_isaMask & *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for TTRIAnyTreeViewDragSessionContext(0, *(v3 + 80), *(v3 + 88), v5);
    v7 = sub_1001893F4();

    v8 = swift_allocObject();
    sub_1004DED40(v7, v9);
    [a2 setLocalContext:v8];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004DE178(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1004DED40(a1, v3);
  return v2;
}

uint64_t sub_1004DE1B8(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a2;
  v6 = *((swift_isaMask & *v3) + 0x50);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_10018AFFC(a1);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_16;
  }

  v14 = result;
  v15 = *(v6 - 8);
  (*(v15 + 16))(v10, a1, v6);
  (*(v15 + 56))(v10, 0, 1, v6);
  v16 = sub_100191678(v10);
  v18 = v17;

  (*(v8 + 8))(v10, v7);
  result = 0;
  if ((v18 & 1) == 0 && v16 >= 1)
  {
    v19 = [a3 indexPathsForSelectedRows];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for IndexPath();
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    if (sub_10010D158(v24, v21))
    {
      v22 = v21[2];

      if (v22 > 1)
      {
        return 0;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

void sub_1004DE428(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001A2544(a2, 100);
  }

  else
  {
    __break(1u);
  }
}

Class sub_1004DE494(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a1;
  sub_1004DD928(v12, a4, v11);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_1000776A8();
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

Class sub_1004DE5E8(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a5;
  swift_unknownObjectRetain();
  v17 = a1;
  sub_1004DEF34(a6, v15, a2, a3);

  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v12);
  sub_1000776A8();
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v18.super.isa;
}

id sub_1004DE750(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_1004DF3B4(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

void sub_1004DE890(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1004DE914(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_1004DF750(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_1004DE9B8(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectRelease();
}

uint64_t sub_1004DEAA8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}