void sub_10064F1E8(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *a3;
    v6 = Strong;
    [*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) v5];
  }
}

void sub_10064F258(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a1(_swiftEmptyArrayStorage);
    return;
  }

  v7 = Strong;
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);

    v11 = [v10 editingCoordinator];
    if (v11)
    {
      v12 = *&v11[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];

      LOBYTE(v11) = sub_1008FB7A4();
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v13 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = (a4 + 32);
    do
    {
      v27 = *v15;
      sub_10064F5F0(&v28, &v27, v7, v11 & 1);
      ++v15;
      --v14;
    }

    while (v14);
    v13 = v28;
  }

  v28 = v13;
  if (v11)
  {
    v16 = [objc_opt_self() mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    sub_100006370(0, &qword_1019F6190, UIAction_ptr);

    v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10146C6B0;
    *(v24 + 32) = v20;
    *(v24 + 40) = v22;
    v25 = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 setAccessibilityUserInputLabels:{isa, 0, 0, 1, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0}];

    if (v13 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    sub_10067DD0C(0, 0, v25, sub_1007AB810, &unk_1019F61A0, UIMenuElement_ptr);

    v13 = v28;
  }

  a1(v13);
}

void sub_10064F5F0(void *a1, double *a2, uint64_t a3, char a4)
{
  v6 = a4 ^ 1;
  v7 = *a2;
  v8 = objc_opt_self();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v10 = [v8 localizedStringFromNumber:isa numberStyle:3];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  [*(a3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) viewScale];
  v12 = (v11 == v7) & v6;
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v7;
  v28 = v14;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10146C6B0;
  v17 = v7 * 100.0;
  if (COERCE__INT64(fabs(v7 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v16;
  v19 = v17;
  v20 = objc_allocWithZone(NSNumber);
  v21 = v15;
  v22 = [v20 initWithInteger:{v19, 0, 0, v12, sub_10067DEA4, v28}];
  v23 = [v8 localizedStringFromNumber:v22 numberStyle:0];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v18 + 32) = v24;
  *(v18 + 40) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v21 setAccessibilityUserInputLabels:v27];

  v8 = v21;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_9:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_10064F8FC(double a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1010107F4(a1);
  }
}

Class sub_10064F960(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  [*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) endEditing];
  v7 = sub_10064FB48();
  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v8 = *(*(*&v6[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v8 + v9, v4, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v4, type metadata accessor for CRLBoardCRDTData);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  v10.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v14, 0, 0xFFFFFFFFFFFFFFFFLL, v7, v12).super.super.isa;

  return v10.super.super.isa;
}

unint64_t sub_10064FB48()
{
  v1 = _swiftEmptyArrayStorage;
  v123 = _swiftEmptyArrayStorage;
  v2 = [v0 traitCollection];
  v3 = [v2 crl_isCompactWidth];

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101465920;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v120 = sub_10067BFB0;
  v121 = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100646688;
  v119 = &unk_10187E8A8;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  v9 = [v5 elementWithUncachedProvider:v7];
  _Block_release(v7);
  *(v4 + 32) = v9;
  v122 = v4;
  if (v3)
  {
    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() systemImageNamed:v14];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v114._rawValue = 0;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = v122;
  }

  if (([*&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly] & 1) == 0)
  {
    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    v16 = [objc_opt_self() mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = String._bridgeToObjectiveC()();
    v23 = [objc_opt_self() systemImageNamed:v22];

    *(swift_allocObject() + 16) = v8;
    v24 = v8;
    v114._rawValue = 0;
    v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    if (v4 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
LABEL_85:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_17:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      LODWORD(v3) = v1;
      goto LABEL_18;
    }

    sub_10067DD0C(0, 0, v25, sub_1007AB810, &unk_1019F61A0, UIMenuElement_ptr);

    v4 = v122;
  }

  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v124.value.super.isa = 0;
  v124.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v124, 1, 0xFFFFFFFFFFFFFFFFLL, v4, v114);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = [v8 traitCollection];
  v28 = [v27 crl_isCompactWidth];

  if (v28)
  {
    v29 = [objc_opt_self() mainBundle];
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();
    v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    LODWORD(v29) = _UISolariumEnabled();
    v36 = objc_opt_self();
    v37 = &selRef_labelColor;
    if (!v29)
    {
      v37 = &selRef_tintColor;
    }

    v4 = [v36 *v37];
    v21 = [objc_opt_self() configurationWithHierarchicalColor:v4];
    v38 = String._bridgeToObjectiveC()();
    v39 = [objc_opt_self() imageNamed:v38];

    LODWORD(v1) = v3;
    if (v39)
    {
      v40 = [v39 imageWithSymbolConfiguration:v21];
    }

    else
    {
      v40 = 0;
    }

    v3 = v40;
    preferredElementSizea = sub_101013350();
    v41._countAndFlagsBits = v33;
    v41._object = v35;
    v125.value.super.isa = v40;
    v125.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v125, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizea, v114).super.super.isa;
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_101465920;
    *(v43 + 32) = isa;
    v23 = isa;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v126.value.super.isa = 0;
    v126.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, 0, v126, 1, 0xFFFFFFFFFFFFFFFFLL, v43, v115);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

    goto LABEL_85;
  }

LABEL_18:
  v119 = &type metadata for CRLFeatureFlags;
  v45 = sub_100004D60();
  v120 = v45;
  LOBYTE(aBlock[0]) = 10;
  v46 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if ((v46 & 1) == 0)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101465920;
    *(v47 + 32) = sub_10064D0F4();
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v127.value.super.isa = 0;
    v127.is_nil = 0;
    v49 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v48, 0, v127, 1, 0xFFFFFFFFFFFFFFFFLL, v47, v114).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v119 = &type metadata for CRLFeatureFlags;
  v120 = v45;
  LOBYTE(aBlock[0]) = 20;
  v50 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v50)
  {
    v51 = [v8 traitCollection];
    v52 = [v51 crl_isCompactWidth];

    if (v52)
    {
      preferredElementSizeb = sub_10064D304();
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      v128.value.super.isa = 0;
      v128.is_nil = 0;
      v54 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v53, 0, v128, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizeb, v114).super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (v3)
  {
    v119 = &type metadata for CRLFeatureFlags;
    v120 = v45;
    LOBYTE(aBlock[0]) = 23;
    v55 = isFeatureEnabled(_:)();
    sub_100005070(aBlock);
    if (v55)
    {
      sub_100678D9C();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v119 = &type metadata for CRLPencilAndPaperFeatureFlags;
    v120 = sub_10067BFD0();
    LOBYTE(aBlock[0]) = 0;
    v56 = isFeatureEnabled(_:)();
    sub_100005070(aBlock);
    if (v56)
    {
      v119 = &type metadata for CRLFeatureFlags;
      v120 = v45;
      LOBYTE(aBlock[0]) = 15;
      v57 = isFeatureEnabled(_:)();
      sub_100005070(aBlock);
      if (v57)
      {
        if (qword_1019F2000 != -1)
        {
          swift_once();
        }

        v58 = qword_101A1AB00;
        v59 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
        swift_beginAccess();
        v60 = sub_10064DB14(*(v58 + v59));
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }

  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v129.value.super.isa = 0;
  v129.is_nil = 0;
  v62 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v61, 0, v129, 1, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v114).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v117 = v62;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v119 = &type metadata for CRLFeatureFlags;
  v120 = v45;
  LOBYTE(aBlock[0]) = 20;
  v63 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if ((v63 & 1) != 0 && ((v64 = *(*&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard), v65 = sub_100EC8784(), v64, v65 >> 62) ? (v66 = _CocoaArrayWrapper.endIndex.getter()) : (v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v66 >= 1))
  {
    sub_10064B154();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v67 = v3;
    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    v68 = [objc_opt_self() mainBundle];
    v69 = String._bridgeToObjectiveC()();
    v70 = String._bridgeToObjectiveC()();
    v71 = [v68 localizedStringForKey:v69 value:v70 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = String._bridgeToObjectiveC()();
    v73 = [objc_opt_self() systemImageNamed:v72];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v116._rawValue = 0;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    LODWORD(v3) = v67;
  }

  if ([objc_opt_self() isPrintingAvailable])
  {
    v119 = &type metadata for CRLFeatureFlags;
    v120 = v45;
    LOBYTE(aBlock[0]) = 20;
    v74 = isFeatureEnabled(_:)();
    sub_100005070(aBlock);
    if ((v74 & 1) != 0 && ((v75 = *(*&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard), v76 = sub_100EC8784(), v75, v76 >> 62) ? (v77 = _CocoaArrayWrapper.endIndex.getter()) : (v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v77 >= 1))
    {
      sub_10064C9F0();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    else
    {
      sub_100006370(0, &qword_1019F6190, UIAction_ptr);
      v78 = [objc_opt_self() mainBundle];
      v79 = String._bridgeToObjectiveC()();
      v80 = String._bridgeToObjectiveC()();
      v81 = [v78 localizedStringForKey:v79 value:v80 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = String._bridgeToObjectiveC()();
      v83 = [objc_opt_self() systemImageNamed:v82];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v116._rawValue = 0;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v130.value.super.isa = 0;
  v130.is_nil = 0;
  v85 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v84, 0, v130, 1, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v116).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v3)
  {
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_101465920;
    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    v87 = [objc_opt_self() mainBundle];
    v88 = String._bridgeToObjectiveC()();
    v89 = String._bridgeToObjectiveC()();
    v90 = [v87 localizedStringForKey:v88 value:v89 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = String._bridgeToObjectiveC()();
    v92 = [objc_opt_self() systemImageNamed:v91];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v86 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    v131.value.super.isa = 0;
    v131.is_nil = 0;
    v94 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v93, 0, v131, 1, 0xFFFFFFFFFFFFFFFFLL, v86, 0).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v95 = v123;
  if (qword_1019F1BA0 != -1)
  {
    swift_once();
  }

  v96 = v117;
  if (byte_101AD7171 == 1)
  {
    v97.super.super.isa = sub_1007F8BF8(v8, 0).super.super.isa;
    if (v97.super.super.isa)
    {
      v98 = v97.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v96 = v117;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v95 = v123;
    }
  }

  if (qword_1019F1B98 != -1)
  {
    swift_once();
  }

  if (byte_101AD7170 == 1)
  {
    v99 = *(*&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    v100 = v99;
    v101 = String._bridgeToObjectiveC()();
    v102 = [objc_opt_self() systemImageNamed:v101];

    v103 = swift_allocObject();
    *(v103 + 16) = v99;
    *(v103 + 24) = v8;
    v104 = v8;
    v105 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_101465920;
    *(v106 + 32) = v105;
    v107 = v105;
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    v132.value.super.isa = 0;
    v132.is_nil = 0;
    v109 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v108, 0, v132, 1, 0xFFFFFFFFFFFFFFFFLL, v106, 0).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v123;
  }

  else
  {
  }

  return v95;
}

objc_class *sub_100651320()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v10;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v12 = v11;
  v13 = v9;
  v14.value._countAndFlagsBits = v5;
  v14.value._object = v7;
  v26.value.super.isa = v9;
  v26.is_nil = v11;
  v27.value.super.super.isa = 0;
  v15 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v14, v26, v27, v28).super.super.isa;
  v16 = [v0 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityLabel:v19];

  v20 = [v0 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityHint:v23];

  return v15;
}

void sub_1006516A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_101013118();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 editingCoordinator];

      if (v6)
      {
        v7 = *&v6[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

        v8 = sub_10110C390();
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_101465920;
        *(v9 + 32) = v8;

        v10 = v8;
        sub_1006799F0(v9, 0, 0);
      }
    }

    else
    {
    }
  }
}

objc_class *sub_1006517F4()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v10;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v12 = v11;
  v13 = v9;
  v14.value._countAndFlagsBits = v5;
  v14.value._object = v7;
  v26.value.super.isa = v9;
  v26.is_nil = v11;
  v27.value.super.super.isa = 0;
  v15 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v14, v26, v27, v28).super.super.isa;
  v16 = [v0 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityLabel:v19];

  v20 = [v0 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityHint:v23];

  return v15;
}

void sub_100651B7C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v9[3] = sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    v9[0] = a1;
    v5 = a1;
    sub_100651C84();
    sub_10000CAAC(v9, &unk_1019F4D00, &unk_10146E7F0);
    v6 = [v4 traitCollection];
    v7 = [v6 crl_isCompactWidth];

    if (v7)
    {
      v8 = *(*&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
      sub_1008FEE94(1);
    }
  }
}

void sub_100651C84()
{
  [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] endEditing];
  v5 = [objc_allocWithZone(CRLiOSShapeLibraryViewController) initWithDelegate:v0];
  [v5 setModalPresentationStyle:7];
  v1 = [v5 popoverPresentationController];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1010132D0();
    [v2 setBarButtonItem:v3];
  }

  v4 = [v5 popoverPresentationController];

  if (v4)
  {
    [v4 setCanOverlapSourceViewRect:1];
  }

  [v0 presentViewController:v5 animated:1 completion:0];
}

objc_class *sub_100651DB4()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v10;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v12 = v11;
  v13 = v9;
  v14.value._countAndFlagsBits = v5;
  v14.value._object = v7;
  v26.value.super.isa = v9;
  v26.is_nil = v11;
  v27.value.super.super.isa = 0;
  v15 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v14, v26, v27, v28).super.super.isa;
  v16 = [v0 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityLabel:v19];

  v20 = [v0 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityHint:v23];

  return v15;
}

objc_class *sub_100652150()
{
  v1 = [v0 traitCollection];
  v2 = [v1 crl_isCompactWidth];

  if (v2)
  {
    v3 = sub_10065248C();
  }

  else
  {
    v3 = sub_10065376C();
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13];

  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v15 = v4;
  v16 = v14;
  v17.value._countAndFlagsBits = v10;
  v17.value._object = v12;
  v28.value.super.isa = v14;
  v28.is_nil = 0;
  v29.value.super.super.isa = v4;
  v18 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v17, v28, v29, v30).super.super.isa;
  v19 = [v5 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v18 setAccessibilityLabel:v22];

  v23 = [v5 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v18 setAccessibilityHint:v26];

  return v18;
}

Class sub_10065248C()
{
  v1 = v0;
  v122 = objc_opt_self();
  v2 = [v122 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v6 = String._bridgeToObjectiveC()();
  v121 = objc_opt_self();
  v7 = [v121 systemImageNamed:v6];

  v8 = swift_allocObject();
  v123 = v1;
  swift_unknownObjectWeakInit();
  preferredElementSize = UIMenuElementSizeSmall;
  v110._rawValue = 0;
  v112 = sub_10067E024;
  v113 = v8;
  v111 = 0;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101465920;
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = sub_100B36468(0, 1, 1, _swiftEmptyArrayStorage);
  v14 = v12[2];
  v13 = v12[3];
  isa = v14 + 1;
  v118 = v11;
  if (v14 >= v13 >> 1)
  {
LABEL_50:
    v12 = sub_100B36468((v13 > 1), isa, 1, v12);
  }

  v12[2] = isa;
  v12[v14 + 4] = v10;
  v16 = [v122 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v121 systemImageNamed:v20];

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v24 = [v122 mainBundle];
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v121 systemImageNamed:v28];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  preferredElementSize = UIMenuElementSizeSmall;
  v110._rawValue = 0;
  v112 = sub_10067E05C;
  v113 = v30;
  v111 = 0;
  v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v125 = &type metadata for CRLFeatureFlags;
  v32 = sub_100004D60();
  v126 = v32;
  LOBYTE(aBlock[0]) = 14;
  isa = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  v120 = v32;
  if ((isa & 1) != 0 && [type metadata accessor for ImagePlaygroundViewController() available])
  {
    v33 = [v122 mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
    v38 = [v121 systemImageNamed:v37];

    isa = swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v110._rawValue = 0;
    v112 = sub_10067E118;
    v113 = isa;
    v111 = 0;
    v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v39 = 0;
  }

  if ([objc_opt_self() isOSFeatureEnabled:13])
  {
    v40 = [v122 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = String._bridgeToObjectiveC()();
    v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = String._bridgeToObjectiveC()();
    v45 = [v121 crl_internalSystemImageNamed:v44];

    isa = swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v110._rawValue = 0;
    v112 = sub_10067E0FC;
    v113 = isa;
    v111 = 0;
    v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v46 = 0;
  }

  v128[12] = v23;
  v128[13] = v31;
  v128[14] = v39;
  v128[15] = v46;
  v10 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  v47 = v46;
  v48 = v23;
  v117 = v31;
  v49 = v39;
  v14 = 0;
LABEL_10:
  if (v14 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v14;
  }

  while (v14 != 4)
  {
    if (v13 == v14)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v50 = v128[v14++ + 12];
    if (v50)
    {
      isa = v50;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = aBlock[0];
      goto LABEL_10;
    }
  }

  sub_1005B981C(&unk_1019F6D10, qword_10146FAD0);
  swift_arrayDestroy();
  v52 = v12[2];
  v51 = v12[3];
  v115 = v48;
  v116 = v47;
  v114 = v49;
  if (v52 >= v51 >> 1)
  {
    v12 = sub_100B36468((v51 > 1), v52 + 1, 1, v12);
  }

  v12[2] = v52 + 1;
  v12[v52 + 4] = v10;
  v53 = [v122 mainBundle];
  v54 = String._bridgeToObjectiveC()();
  v55 = String._bridgeToObjectiveC()();
  v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = String._bridgeToObjectiveC()();
  v58 = [v121 systemImageNamed:v57];

  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v60 = [v122 mainBundle];
  v61 = String._bridgeToObjectiveC()();
  v62 = String._bridgeToObjectiveC()();
  v63 = [v60 localizedStringForKey:v61 value:v62 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = String._bridgeToObjectiveC()();
  v65 = [v121 systemImageNamed:v64];

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v110._rawValue = 0;
  v112 = sub_10067E0A8;
  v113 = v66;
  v111 = 0;
  v67 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v68 = 0;
  if ([objc_opt_self() isSupported])
  {
    v69 = [v122 mainBundle];
    v70 = String._bridgeToObjectiveC()();
    v71 = String._bridgeToObjectiveC()();
    v72 = [v69 localizedStringForKey:v70 value:v71 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = String._bridgeToObjectiveC()();
    v74 = [v121 systemImageNamed:v73];

    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v110._rawValue = 0;
    v112 = sub_10067E0CC;
    v113 = v75;
    v111 = 0;
    v68 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  v125 = &type metadata for CRLFeatureFlags;
  v126 = v120;
  LOBYTE(aBlock[0]) = 24;
  v76 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if ((v76 & 1) == 0)
  {
    goto LABEL_28;
  }

  v77 = [v123 traitCollection];
  if ([v77 horizontalSizeClass] != 1)
  {
    v78 = [objc_opt_self() crl_phoneUI];

    if (v78)
    {
      goto LABEL_27;
    }

LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

LABEL_27:
  v79 = [v122 mainBundle];
  v80 = String._bridgeToObjectiveC()();
  v81 = String._bridgeToObjectiveC()();
  v82 = [v79 localizedStringForKey:v80 value:v81 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = String._bridgeToObjectiveC()();
  v84 = [v121 systemImageNamed:v83];

  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  preferredElementSize = UIMenuElementSizeSmall;
  v110._rawValue = 0;
  v112 = sub_10067E0C4;
  v113 = v85;
  v111 = 0;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_29:
  v128[4] = v67;
  v128[5] = v119;
  v128[6] = v10;
  v128[7] = v68;
  isa = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  v86 = v68;
  v87 = v67;
  v88 = v119;
  v89 = v10;
  v14 = 0;
LABEL_30:
  if (v14 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v14;
  }

  while (v14 != 4)
  {
    if (v13 == v14)
    {
      goto LABEL_49;
    }

    v90 = v128[v14++ + 4];
    if (v90)
    {
      v91 = v90;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v121 = v88;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v10 = aBlock;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      isa = aBlock[0];
      goto LABEL_30;
    }
  }

  v121 = v87;
  swift_arrayDestroy();
  v10 = v12[2];
  v92 = v12[3];
  v93 = v10 + 1;
  v122 = v89;
  v94 = v88;
  if (v10 >= v92 >> 1)
  {
    v12 = sub_100B36468((v92 > 1), v10 + 1, 1, v12);
  }

  v95 = 0;
  v12[2] = v93;
  v12[v10 + 4] = isa;
  aBlock[0] = _swiftEmptyArrayStorage;
  v14 = UIMenu_ptr;
  do
  {
    v13 = v12[2];
    if (v95 >= v13)
    {
      __break(1u);
      goto LABEL_48;
    }

    v96 = v12[v95 + 4];
    sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);

    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    v129.value.super.isa = 0;
    v129.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v97, 0, v129, 1, 0xFFFFFFFFFFFFFFFFLL, v96, v110).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v95;
    v10 = aBlock;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v93 != v95);
  v98 = aBlock[0];

  v99 = objc_opt_self();
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v98;
  v126 = sub_10067F2E4;
  v127 = v101;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100646688;
  v125 = &unk_10187F050;
  v102 = _Block_copy(aBlock);

  v103 = [v99 elementWithUncachedProvider:v102];
  _Block_release(v102);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_101465920;
  *(v104 + 32) = v103;
  v105 = v103;
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  v130.value.super.isa = 0;
  v130.is_nil = 0;
  v107 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v106, 0, v130, 0, 0xFFFFFFFFFFFFFFFFLL, v104, v110).super.super.isa;

  return v107;
}

Class sub_10065376C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed:v6];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = v0;
  v11 = [v0 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = String._bridgeToObjectiveC()();
  v101 = v7;
  v16 = [v7 systemImageNamed:v15];

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  preferredElementSize = UIMenuElementSizeSmall;
  v89._rawValue = 0;
  v91 = sub_10067F3B0;
  v92 = v17;
  v90 = 0;
  v100 = v5;
  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v103 = &type metadata for CRLFeatureFlags;
  v104 = sub_100004D60();
  LOBYTE(aBlock[0]) = 14;
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if ((v11 & 1) != 0 && [type metadata accessor for ImagePlaygroundViewController() available])
  {
    v19 = v10;
    v20 = [v10 mainBundle];
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = &selRef_isEnumeratingForUserSearch;
    v24 = [v20 localizedStringForKey:v21 value:v22 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v101 systemImageNamed:v25];

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v89._rawValue = 0;
    v91 = sub_10067F3C4;
    v92 = v27;
    v90 = 0;
    v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v28 = 0;
    v19 = v10;
    v23 = &selRef_isEnumeratingForUserSearch;
  }

  if ([objc_opt_self() isOSFeatureEnabled:13])
  {
    v29 = [v19 mainBundle];
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();
    v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v101 crl_internalSystemImageNamed:v33];

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v89._rawValue = 0;
    v91 = sub_10067F3C0;
    v92 = v35;
    v90 = 0;
    v36 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v36 = 0;
  }

  isa = v98;
  v38 = v107;
  v107[4] = v98;
  v107[5] = v18;
  v107[6] = v28;
  v107[7] = v36;
  v39 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  v40 = v36;
  v41 = v98;
  v96 = v18;
  v42 = 0;
  v97 = v28;
LABEL_9:
  if (v42 <= 4)
  {
    v43 = 4;
  }

  else
  {
    v43 = v42;
  }

  while (v42 != 4)
  {
    if (v43 == v42)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v44 = v107[v42++ + 4];
    if (v44)
    {
      isa = v44;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v39 = aBlock[0];
      goto LABEL_9;
    }
  }

  v94 = v41;
  sub_1005B981C(&unk_1019F6D10, qword_10146FAD0);
  swift_arrayDestroy();
  v41 = sub_100B36468(0, 1, 1, _swiftEmptyArrayStorage);
  v38 = *(v41 + 2);
  v43 = *(v41 + 3);
  isa = (v38 + 1);
  v95 = v40;
  if (v38 < v43 >> 1)
  {
    goto LABEL_19;
  }

LABEL_42:
  v41 = sub_100B36468((v43 > 1), isa, 1, v41);
LABEL_19:
  *(v41 + 2) = isa;
  *(v41 + v38 + 4) = v39;
  v45 = [v19 mainBundle];
  v46 = String._bridgeToObjectiveC()();
  v47 = String._bridgeToObjectiveC()();
  v48 = [v45 v23[489]];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = String._bridgeToObjectiveC()();
  v50 = [v101 systemImageNamed:v49];

  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = v100;
  v99 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v52 = [v19 mainBundle];
  v93 = v19;
  v53 = String._bridgeToObjectiveC()();
  v54 = String._bridgeToObjectiveC()();
  v55 = [v52 v23[489]];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = String._bridgeToObjectiveC()();
  v57 = [v101 systemImageNamed:v56];

  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  preferredElementSize = UIMenuElementSizeSmall;
  v89._rawValue = 0;
  v91 = sub_10067F3B8;
  v92 = v58;
  v90 = 0;
  v59 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v60 = [objc_opt_self() isSupported];
  v61 = 0;
  if (v60)
  {
    v62 = [v93 mainBundle];
    v63 = String._bridgeToObjectiveC()();
    v64 = String._bridgeToObjectiveC()();
    v65 = [v62 v23[489]];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = String._bridgeToObjectiveC()();
    v67 = [v101 systemImageNamed:v66];

    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v89._rawValue = 0;
    v91 = sub_10067F3BC;
    v92 = v68;
    v90 = 0;
    v61 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  v38 = v106;
  v106[4] = v99;
  v106[5] = v59;
  v106[6] = v61;
  aBlock[0] = _swiftEmptyArrayStorage;
  v69 = v61;
  v23 = v99;
  v70 = v59;
  v19 = 0;
  isa = _swiftEmptyArrayStorage;
LABEL_22:
  if (v19 <= 3)
  {
    v43 = 3;
  }

  else
  {
    v43 = v19;
  }

  while (v19 != 3)
  {
    if (v43 == v19)
    {
      goto LABEL_41;
    }

    v71 = v106[v19++ + 4];
    if (v71)
    {
      v72 = v71;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v39 = aBlock;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      isa = aBlock[0];
      goto LABEL_22;
    }
  }

  v100 = v23;
  v101 = v69;
  swift_arrayDestroy();
  v39 = *(v41 + 2);
  v73 = *(v41 + 3);
  v74 = (v39 + 1);
  v23 = v70;
  if (v39 >= v73 >> 1)
  {
    v41 = sub_100B36468((v73 > 1), v39 + 1, 1, v41);
  }

  v19 = 0;
  *(v41 + 2) = v74;
  *(v41 + v39 + 4) = isa;
  aBlock[0] = _swiftEmptyArrayStorage;
  do
  {
    v43 = *(v41 + 2);
    if (v19 >= v43)
    {
      __break(1u);
      goto LABEL_40;
    }

    v75 = *(v41 + v19 + 4);
    sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);

    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v108.value.super.isa = 0;
    v108.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v76, 0, v108, 1, 0xFFFFFFFFFFFFFFFFLL, v75, v89).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v38 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38 >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v19;
    v39 = aBlock;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v74 != v19);
  v77 = aBlock[0];

  v78 = objc_opt_self();
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v77;
  v104 = sub_10067F2E4;
  v105 = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100646688;
  v103 = &unk_10187F1B8;
  v81 = _Block_copy(aBlock);

  v82 = [v78 elementWithUncachedProvider:v81];
  _Block_release(v81);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_101465920;
  *(v83 + 32) = v82;
  v84 = v82;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v109.value.super.isa = 0;
  v109.is_nil = 0;
  v86 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v85, 0, v109, 0, 0xFFFFFFFFFFFFFFFFLL, v83, v89).super.super.isa;

  return v86;
}

void sub_10065466C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_101013118();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 editingCoordinator];

      if (v6)
      {
        v7 = *&v6[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

        v8 = [objc_allocWithZone(NSAttributedString) init];
        v9 = sub_10110F4B0(v8);

        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_101465920;
        *(v10 + 32) = v9;

        v11 = v9;
        sub_1006799F0(v10, 0, 0);
      }
    }

    else
    {
    }
  }
}

void sub_1006547D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock, "The camera picker is already being presented.", 45, 2u);
    StaticString.description.getter("presentCameraPicker()", 21, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 2464;
    v15 = aBlock[0];
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "The camera picker is already being presented.", 45, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("presentCameraPicker()", 21, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("The camera picker is already being presented.", 45, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:2464 isFatal:0 format:v24 args:v21];
  }

  else
  {
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    v27[2] = v0;
    v27[3] = v0;
    v27[4] = sub_10067E14C;
    v27[5] = v25;
    aBlock[4] = sub_10067E154;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_1005CC4AC;
    aBlock[3] = &unk_10187F168;
    v28 = _Block_copy(aBlock);
    v29 = v0;
    swift_retain_n();

    [v26 crl_checkAuthorizationForMediaType:AVMediaTypeVideo completion:v28];
    _Block_release(v28);
  }
}

void sub_100654CB8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_101012FD4();
  [v3 resetToDefaultModeAnimated:1];

  v4 = [objc_allocWithZone(_UIStickerPickerViewController) init];
  [v4 setDelegate:v2];
  v5 = [v2 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    if (v7)
    {
      v8 = sub_101013290();
      sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
      v9 = v7;
      UIPopoverPresentationControllerSourceItem.frame(in:)();

      if (v15)
      {
      }

      else
      {
        [v4 setSourceView:v9];

        [v4 setSourceRect:{*&aBlock[6], *&aBlock[7], *&aBlock[8], *&aBlock[9]}];
      }
    }
  }

  v10 = *(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(1);

  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  aBlock[4] = sub_10067E13C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10187F0A0;
  v12 = _Block_copy(aBlock);
  v13 = v4;

  [v2 presentViewController:v13 animated:0 completion:v12];
  _Block_release(v12);
}

void sub_100654F08()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v15 - v3;
  v5 = [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] layerHost];
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector:"asiOSCVC"])
    {
      v7 = [v6 asiOSCVC];
      swift_unknownObjectRelease();
      v8 = [v7 miniFormatterPresenter];
      if (v8)
      {
        [v8 dismissMiniFormatter];
        swift_unknownObjectRelease();
      }

      v9 = type metadata accessor for URL();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      v10 = objc_allocWithZone(type metadata accessor for CRLInsertEditURLAlert(0));
      v11 = v0;
      v12 = sub_10067D694(0, v11, v4, v10, &off_10187E300);

      v13 = *&v11[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert];
      *&v11[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert] = v12;
      v14 = v12;

      sub_1009DD894(v11);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1006550EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock, "Already presenting document scanner", 35, 2u);
    StaticString.description.getter("presentDocumentScanner()", 24, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 2528;
    v15 = aBlock[0];
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Already presenting document scanner", 35, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("presentDocumentScanner()", 24, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Already presenting document scanner", 35, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:2528 isFatal:0 format:v24 args:v21];
  }

  else
  {
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    v26[2] = v0;
    aBlock[4] = sub_10067E144;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_1005CC4AC;
    aBlock[3] = &unk_10187F0F0;
    v27 = _Block_copy(aBlock);
    v28 = v0;

    [v25 crl_checkAuthorizationForMediaType:AVMediaTypeVideo completion:v27];
    _Block_release(v27);
  }
}

void sub_100655580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) insertStencilFromLibrary:0];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);

    v7 = *&v6[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];
    sub_1008FEE94(1);
  }
}

void sub_100655658(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PHPickerConfiguration.AssetRepresentationMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PHPickerConfiguration();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_1005B981C(&qword_101A10B10, &unk_1014C20E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = type metadata accessor for PHPickerFilter();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v27 = sub_1000063B8(&qword_1019F6D20, type metadata accessor for CRLiOSBoardViewController, byte_10146F87C);
    PHPickerConfiguration.init()();
    (*(v3 + 104))(v5, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v2);
    PHPickerConfiguration.preferredAssetRepresentationMode.setter();
    PHPickerConfiguration.selectionLimit.setter();
    sub_10000BE14(v17, v14, &qword_101A10B10, &unk_1014C20E0);
    PHPickerConfiguration.filter.setter();
    sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
    v21 = v28;
    (*(v6 + 16))(v8, v11, v28);
    v22 = PHPickerViewController.init(configuration:)();
    swift_unknownObjectRetain();
    PHPickerViewController.delegate.setter();
    (*(v6 + 8))(v11, v21);
    sub_10000CAAC(v17, &qword_101A10B10, &unk_1014C20E0);
    [v19 presentViewController:v22 animated:1 completion:0];
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = *(v23 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);

    v26 = *&v25[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];
    sub_1008FEE94(1);
  }
}

void *sub_100655A38(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5[3] = sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    v5[0] = a1;
    sub_100654CB8(a1);

    return sub_10000CAAC(v5, &unk_1019F4D00, &unk_10146E7F0);
  }

  return result;
}

void sub_100655ACC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    isa = [objc_opt_self() supportedFileUTTypes];
    if (!isa)
    {
      type metadata accessor for UTType();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v5 = [objc_allocWithZone(UIDocumentPickerViewController) initForOpeningContentTypes:isa asCopy:1];

    [v5 setDelegate:v3];
    [v5 setAllowsMultipleSelection:1];
    [v3 presentViewController:v5 animated:1 completion:0];
    v6 = *(*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    sub_1008FEE94(1);
  }
}

void sub_100655C1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) layerHost];
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector:"asiOSCVC"])
      {
        v9 = [v8 asiOSCVC];
        swift_unknownObjectRelease();
        v10 = [v9 miniFormatterPresenter];
        if (v10)
        {
          [v10 dismissMiniFormatter];
          swift_unknownObjectRelease();
        }

        v11 = type metadata accessor for URL();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
        v12 = objc_allocWithZone(type metadata accessor for CRLInsertEditURLAlert(0));
        v13 = v6;
        v14 = sub_10067D694(0, v13, v4, v12, &off_10187E300);

        v15 = *&v13[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert];
        *&v13[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert] = v14;
        v16 = v14;

        sub_1009DD894(v13);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);

    v20 = *&v19[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];
    sub_1008FEE94(1);
  }
}

void sub_100655E8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);

    v9 = *&v8[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];
    sub_1008FEE94(1);
  }
}

uint64_t sub_100655F58(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);

    [v8 endEditing];
  }

  if (a4 >> 62)
  {
    sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);

    v10 = _bridgeCocoaArray<A>(_:)();

    a4 = v10;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
  }

  a1(a4);
}

Class sub_100656088()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101465920;
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v57 = objc_opt_self();
  v1 = [v57 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  preferredElementSize = UIMenuElementSizeSmall;
  v51._rawValue = 0;
  v52 = sub_10067F3A0;
  v53 = v8;
  *(v0 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v9 = sub_100B36468(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  v56 = v6;
  if (v11 >= v10 >> 1)
  {
LABEL_13:
    v9 = sub_100B36468((v10 > 1), v12, 1, v9);
  }

  v9[2] = v12;
  v9[v11 + 4] = v0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = sub_10067C7E0;
  v63 = v14;
  aBlock = _NSConcreteStackBlock;
  v59 = *"";
  v60 = sub_100646688;
  v61 = &unk_10187EBF0;
  v15 = _Block_copy(&aBlock);

  v16 = [v13 elementWithUncachedProvider:{v15, preferredElementSize, v51._rawValue, 0, v52, v53}];
  _Block_release(v15);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = sub_10067C7E8;
  v63 = v17;
  aBlock = _NSConcreteStackBlock;
  v59 = *"";
  v60 = sub_100646688;
  v61 = &unk_10187EC18;
  v18 = _Block_copy(&aBlock);

  v55 = v13;
  v19 = [v13 elementWithUncachedProvider:v18];
  _Block_release(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10146CE00;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  v21 = v9[2];
  v22 = v9[3];
  v23 = v16;
  v54 = v19;
  if (v21 >= v22 >> 1)
  {
    v9 = sub_100B36468((v22 > 1), v21 + 1, 1, v9);
  }

  v9[2] = v21 + 1;
  v9[v21 + 4] = v20;
  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101465920;
  v25 = [v57 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v56 systemImageNamed:v29];

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = sub_10067F3A4;
  v53 = v31;
  *(v24 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v64.value.super.isa = 0;
  v64.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v64, 1, 0xFFFFFFFFFFFFFFFFLL, v24, 0).super.super.isa;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_101465920;
  *(v34 + 32) = isa;
  v35 = v9[2];
  v36 = v9[3];
  v12 = v35 + 1;
  v11 = isa;
  if (v35 >= v36 >> 1)
  {
    v9 = sub_100B36468((v36 > 1), v35 + 1, 1, v9);
  }

  v0 = 0;
  v9[2] = v12;
  v9[v35 + 4] = v34;
  aBlock = _swiftEmptyArrayStorage;
  do
  {
    v10 = v9[2];
    if (v0 >= v10)
    {
      __break(1u);
      goto LABEL_13;
    }

    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v65.value.super.isa = 0;
    v65.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v65, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizea, v51);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v0;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v12 != v0);
  v38 = aBlock;

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v38;
  v62 = sub_10067C7F0;
  v63 = v40;
  aBlock = _NSConcreteStackBlock;
  v59 = *"";
  v60 = sub_100646688;
  v61 = &unk_10187EC68;
  v41 = _Block_copy(&aBlock);

  v42 = v23;
  v43 = [v55 elementWithUncachedProvider:v41];
  _Block_release(v41);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_101465920;
  *(v44 + 32) = v43;
  v45 = v43;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v66.value.super.isa = 0;
  v66.is_nil = 0;
  v47 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v46, 0, v66, 0, 0xFFFFFFFFFFFFFFFFLL, v44, v51).super.super.isa;

  return v47;
}

uint64_t sub_10065690C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v5 = Strong;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101465920;
  *(v6 + 32) = sub_100678D9C();
  a1(v6);
}

uint64_t sub_1006569CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v5 = Strong;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101465920;
  if (qword_1019F2000 != -1)
  {
    swift_once();
  }

  v7 = qword_101A1AB00;
  v8 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  *(v6 + 32) = sub_10064DB14(*(v7 + v8));
  a1(v6);
}

objc_class *sub_100656AFC()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v10;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v12 = v11;
  v13 = v9;
  v14.value._countAndFlagsBits = v5;
  v14.value._object = v7;
  v26.value.super.isa = v9;
  v26.is_nil = v11;
  v27.value.super.super.isa = 0;
  v15 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v14, v26, v27, v28).super.super.isa;
  v16 = [v0 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityLabel:v19];

  v20 = [v0 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityHint:v23];

  return v15;
}

void sub_100656E8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) insertStencilFromLibrary:0];
  }
}

objc_class *sub_100656EFC()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v10;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v12 = v11;
  v13 = v9;
  v14.value._countAndFlagsBits = v5;
  v14.value._object = v7;
  v26.value.super.isa = v9;
  v26.is_nil = v11;
  v27.value.super.super.isa = 0;
  v15 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v14, v26, v27, v28).super.super.isa;
  v16 = [v0 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityLabel:v19];

  v20 = [v0 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityHint:v23];

  return v15;
}

void sub_100657288(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;

    sub_10064191C(0, 0, v4, &unk_10146FAC0, v10);

    v11 = [v6 traitCollection];
    v12 = [v11 crl_isCompactWidth];

    if (v12)
    {
      v13 = *(*&v6[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
      sub_1008FEE94(1);
    }
  }
}

objc_class *sub_100657478()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v10;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v12 = v11;
  v13 = v9;
  v14.value._countAndFlagsBits = v5;
  v14.value._object = v7;
  v26.value.super.isa = v9;
  v26.is_nil = v11;
  v27.value.super.super.isa = 0;
  v15 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v14, v26, v27, v28).super.super.isa;
  v16 = [v0 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityLabel:v19];

  v20 = [v0 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityHint:v23];

  return v15;
}

void sub_100657800(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a3;
    v7 = Strong;
    [Strong v6];
  }
}

objc_class *sub_10065786C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v10;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
  v12 = v11;
  v13 = v9;
  v14.value._countAndFlagsBits = v5;
  v14.value._object = v7;
  v22.value.super.isa = v9;
  v22.is_nil = v11;
  v23.value.super.super.isa = 0;
  v15 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v14, v22, v23, v24).super.super.isa;
  v16 = [v0 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v15 setAccessibilityLabel:v19];

  return v15;
}

void sub_100657B3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_101012FD4();
    v5 = [v4 mode];

    v6 = [v5 pencilModeType];
    if (v6)
    {
      v7 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController];
      [v7 resetToDefaultModeAnimated:1];
    }

    else
    {
      sub_101010D34();
      [*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] collapseAllExpandedCollaboratorHUDs];
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);

    v11 = *&v10[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];
    sub_1008FEE94(1);
  }
}

void sub_100657C88()
{
  v1 = sub_101013250();
  v2 = [v1 isEnabled];

  if (!v2)
  {
    return;
  }

  v3 = [v0 undoManager];
  if (!v3)
  {
    return;
  }

  v29 = v3;
  if ([v3 canUndo])
  {
    [v29 undo];
LABEL_5:

    return;
  }

  if ([v29 canRedo])
  {
    if (![objc_opt_self() crl_phoneUI])
    {
      v4 = [v0 traitCollection];
      v5 = [v4 horizontalSizeClass];

      if (v5 != 1)
      {
        sub_100658140();
      }
    }

    goto LABEL_5;
  }

  v6 = objc_opt_self();
  v7 = [v6 _atomicIncrementAssertCount];
  v30 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v30, "Undo button was enabled and tapped, but neither canUndo nor canRedo were true", 77, 2u);
  StaticString.description.getter("didTapUndoButton(sender:)", 25, 2);
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v7;
  v16 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v16;
  v17 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(inited + 104) = v17;
  *(inited + 72) = v8;
  *(inited + 136) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 112) = v11;
  *(inited + 120) = v13;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v18;
  *(inited + 152) = 1852;
  v19 = v30;
  *(inited + 216) = v16;
  *(inited + 224) = v17;
  *(inited + 192) = v19;
  v20 = v8;
  v21 = v19;
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v23, "Undo button was enabled and tapped, but neither canUndo nor canRedo were true", 77, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v24 = swift_allocObject();
  v24[2] = 8;
  v24[3] = 0;
  v24[4] = 0;
  v24[5] = 0;
  v25 = __VaListBuilder.va_list()();
  StaticString.description.getter("didTapUndoButton(sender:)", 25, 2);
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Undo button was enabled and tapped, but neither canUndo nor canRedo were true", 77, 2);
  v28 = String._bridgeToObjectiveC()();

  [v6 handleFailureInFunction:v26 file:v27 lineNumber:1852 isFatal:0 format:v28 args:v25];
}

void sub_100658140()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController;
  if (*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController])
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32, "Already showing undo menu", 25, 2u);
    StaticString.description.getter("presentUndoMenu()", 17, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 2269;
    v15 = v32;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Already showing undo menu", 25, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("presentUndoMenu()", 17, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Already showing undo menu", 25, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:2269 isFatal:0 format:v24 args:v21];
  }

  else
  {
    _s34TextEditingAllowingAlertControllerCMa();
    v25 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:0];
    sub_1006639F8();
    sub_100006370(0, &qword_101A0B790, UIAlertAction_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 crl_setActions:isa];

    v31 = [v25 popoverPresentationController];
    if (v31)
    {
      v27 = v31;
      v28 = sub_101013250();
      [v27 setBarButtonItem:v28];
    }

    v29 = [objc_opt_self() sharedApplication];
    [v29 setApplicationSupportsShakeToEdit:0];

    v30 = *&v0[v1];
    *&v0[v1] = v25;

    [v0 presentViewController:v25 animated:1 completion:0];
  }
}

void sub_100658680(uint64_t a1)
{
  v3 = sub_101013250();
  v4 = [v3 isEnabled];

  if (v4)
  {
    sub_100064288(a1, v8);
    sub_100006370(0, &unk_1019F6EE8, UIGestureRecognizer_ptr);
    if (swift_dynamicCast())
    {
      if ([v7 state] == 1)
      {
        if (([objc_opt_self() crl_phoneUI] & 1) == 0)
        {
          v5 = [v1 traitCollection];
          v6 = [v5 horizontalSizeClass];

          if (v6 != 1)
          {
            sub_100658140();
          }
        }

        [v7 setState:4];
      }
    }
  }
}

void sub_100658808(void *a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  v2 = [a1 view];
  UIAccessibilityPostNotification(v1, v2);
}

void sub_100658948(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v29 = &v27 - v6;
    v33 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v28 = v1;
    v9 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    v31 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory;
    v32 = v9;
    v30 = type metadata accessor for CRLPreinsertionAssetWrapper(0);
    v10 = (a1 + 56);
    while (1)
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v15 = *(*(v32 + v31) + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
      objc_allocWithZone(v30);
      v16 = v15;
      sub_100024E98(v11, v12);
      swift_bridgeObjectRetain_n();
      sub_100024E98(v11, v12);
      sub_100CF051C(v11, v12, v13, v14, v16);
      if (v2)
      {
        break;
      }

      sub_10002640C(v11, v12);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 4;
      if (!--v8)
      {
        v3 = v28;
        v7 = v29;
        goto LABEL_6;
      }
    }

    sub_10002640C(v11, v12);
  }

  else
  {
LABEL_6:
    v17 = *(*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
    v18 = objc_allocWithZone(CRLMultipleItemImporter);
    type metadata accessor for CRLPreinsertionAssetWrapper(0);
    v19 = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [v18 initWithDataWrappers:isa boardItemFactory:v19 importAnimatedGIFsAsImages:0];

    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    type metadata accessor for MainActor();
    v23 = v3;
    v24 = v21;
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v23;
    v26[5] = v24;
    sub_10064191C(0, 0, v7, &unk_10146FC78, v26);
  }
}

uint64_t sub_100658C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100658D14, v7, v6);
}

uint64_t sub_100658D14()
{
  v0[7] = sub_101013118();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100658DCC;
  v2 = v0[3];

  return sub_100658F70(v2);
}

uint64_t sub_100658DCC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100658F10, v3, v2);
}

uint64_t sub_100658F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100658F70(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v4;
  v2[30] = v3;

  return _swift_task_switch(sub_100659044, v4, v3);
}

uint64_t sub_100659044()
{
  v1 = [v0[24] usesProgressDialog];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong layerHost], v3, v4))
  {
    if (v1)
    {
      v5 = [objc_opt_self() mainBundle];
      v6 = String._bridgeToObjectiveC()();
      v7 = String._bridgeToObjectiveC()();
      v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      v9 = v0[24];
      v10 = [v9 progress];
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      v0[22] = sub_100678134;
      v0[23] = v11;
      v0[18] = _NSConcreteStackBlock;
      v0[19] = *"";
      v0[20] = sub_100007638;
      v0[21] = &unk_10187E4E8;
      v12 = _Block_copy(v0 + 18);
      v13 = v9;

      v14 = [v4 beginModalOperationWithPresentedLocalizedMessage:v8 progress:v10 cancelHandler:v12];
      _Block_release(v12);
    }

    else
    {
      v14 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  v0[31] = v14;
  v15 = v0[24];
  v0[2] = v0;
  v0[3] = sub_10065935C;
  v16 = swift_continuation_init();
  v0[17] = sub_1005B981C(&qword_101A14AA0, &unk_10148DF50);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = *"";
  v0[12] = sub_100675B28;
  v0[13] = &unk_10187E470;
  v0[14] = v16;
  [v15 importBoardItemsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10065935C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return _swift_task_switch(sub_100659464, v2, v1);
}

uint64_t sub_100659464()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong layerHost];

    if (v3)
    {
      if (*(v0 + 248))
      {
        [v3 endModalOperationWithToken:?];
      }

      swift_unknownObjectRelease();
    }
  }

  if ([*(v0 + 192) isCancelled])
  {

    swift_unknownObjectRelease();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = v8;

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    v12[5] = v7;
    *(v0 + 256) = sub_10064191C(0, 0, v6, &unk_10146F948, v12);
    v13 = swift_task_alloc();
    *(v0 + 264) = v13;
    *v13 = v0;
    v13[1] = sub_100659678;

    return Task<>.value.getter();
  }
}

uint64_t sub_100659678()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_100659798, v3, v2);
}

uint64_t sub_100659798()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100659818()
{
  v1 = v0;
  v2 = type metadata accessor for Tips.Status();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v41 - v6;
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v41 - v12;
  v41 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  v14 = [v41 infosForCurrentSelectionPath];
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = *(v15 + 16);

  v45 = v1;
  v16 = [v1 traitCollection];
  LODWORD(v15) = [v16 crl_isCompactWidth];

  if (v15)
  {
    v17 = &type metadata for CRLTipConnectionLinesEntryPointCompact;
    v18 = sub_10067E210();
  }

  else
  {
    v17 = &type metadata for CRLTipConnectionLinesEntryPointFull;
    v18 = sub_10067E168();
  }

  v48 = v17;
  v49 = v18;
  sub_100050F74(&v47, v50);
  sub_100020E58(v50, v50[3]);
  Tip.status.getter();
  v19 = v3[4];
  v19(v9, v13, v2);
  v20 = v3[11];
  v21 = v20(v9, v2);
  v22 = enum case for Tips.Status.invalidated(_:);
  v23 = v3[1];
  v23(v9, v2);
  if (v21 == v22)
  {
    sub_10067E1BC();
    v24 = v42;
    Tip.status.getter();
    v25 = v43;
    v19(v43, v24, v2);
    v26 = v20(v25, v2);
    v23(v25, v2);
    if (v26 != v21)
    {
      v27 = v44;
      if (qword_1019F1BC0 != -1)
      {
        swift_once();
      }

      v28 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
      sub_1005EB3DC(v28, qword_101AD71B0);
      v46 = 1;
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      if (qword_1019F1BC8 != -1)
      {
        swift_once();
      }

      sub_1005EB3DC(v28, qword_101AD71C8);
      v46 = v27 != 0;
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
    }

LABEL_29:
    sub_100659E8C();
    return sub_100005070(v50);
  }

  if (qword_1019F1DC0 != -1)
  {
    swift_once();
  }

  v29 = v44;
  v30 = v44 != 0;
  v31 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_1005EB3DC(v31, qword_101AD7608);
  v46 = v30;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F2B30 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v31, qword_101AD93B8);
  v46 = v30;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (!v29)
  {
    goto LABEL_29;
  }

  v32 = [v41 board];
  if (v32)
  {
    v33 = v32;
    v34 = *&v32[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
    v35 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v36 = *&v34[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    v37 = v34;
    if (!v36)
    {
      sub_10096C7D4();
      v36 = *&v34[v35];
    }

    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = _swiftEmptyArrayStorage;
    }

    if (v38 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (qword_1019F1DD8 != -1)
    {
      swift_once();
    }

    sub_1005EB3DC(v31, qword_101AD7650);
    v46 = v39 > 1;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    if (qword_1019F2B48 != -1)
    {
      swift_once();
    }

    sub_1005EB3DC(v31, qword_101AD9400);
    v46 = v39 > 1;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();

    goto LABEL_29;
  }

  return sub_100005070(v50);
}

uint64_t sub_100659E8C()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v2 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v4 = v1;
  if (!v3)
  {
    sub_10096C7D4();
    v3 = *&v1[v2];
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  if (v5 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  if (qword_1019F16B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_1005EB3DC(v6, qword_101AD67D0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F2040 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v6, qword_101AD7BD8);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

double sub_10065A048()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v112 - v3;
  v5 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = &type metadata for CRLFeatureFlags;
  v9 = sub_100004D60();
  v117 = v9;
  LOBYTE(v115[0]) = 0;
  v10 = isFeatureEnabled(_:)();
  sub_100005070(v115);
  if (v10)
  {
    sub_1005B981C(&qword_1019F6D48, &qword_10146FAF8);
    type metadata accessor for Tips.ConfigurationOption();
    *(swift_allocObject() + 16) = xmmword_10146C6B0;
    static Tips.ConfigurationOption.DisplayFrequency.daily.getter();
    static Tips.ConfigurationOption.displayFrequency(_:)();
    (*(v6 + 8))(v8, v5);
    static Tips.configure(_:)();

    v12 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipObservation;
    swift_beginAccess();
    *&v1[v12] = _swiftEmptyArrayStorage;

    if (sub_10065AE88())
    {
      v116 = &type metadata for CRLFeatureFlags;
      v117 = v9;
      LOBYTE(v115[0]) = 10;
      v13 = isFeatureEnabled(_:)();
      sub_100005070(v115);
      if (v13)
      {
        v112 = v9;
        v14 = type metadata accessor for TaskPriority();
        v15 = *(*(v14 - 8) + 56);
        v15(v4, 1, 1, v14);
        type metadata accessor for MainActor();
        v16 = v1;
        v17 = static MainActor.shared.getter();
        v18 = swift_allocObject();
        v18[2] = v17;
        v18[3] = &protocol witness table for MainActor;
        v18[4] = v16;
        v19 = sub_10064191C(0, 0, v4, &unk_10146FB58, v18);
        v15(v4, 1, 1, v14);
        v20 = v16;
        v21 = static MainActor.shared.getter();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = &protocol witness table for MainActor;
        v22[4] = v20;
        v114 = sub_10064191C(0, 0, v4, &unk_10146FB68, v22);
        v15(v4, 1, 1, v14);
        v23 = v20;
        v24 = static MainActor.shared.getter();
        v25 = swift_allocObject();
        v25[2] = v24;
        v25[3] = &protocol witness table for MainActor;
        v25[4] = v23;
        v26 = sub_10064191C(0, 0, v4, &unk_10146FB78, v25);
        v28 = sub_1010140B4(v115);
        v29 = *v27;
        v113 = v19;
        if (v29)
        {
          v30 = v27;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v30 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = sub_100B36E74(0, v29[2] + 1, 1, v29);
            *v30 = v29;
          }

          v33 = v29[2];
          v32 = v29[3];
          v9 = v112;
          if (v33 >= v32 >> 1)
          {
            v29 = sub_100B36E74((v32 > 1), v33 + 1, 1, v29);
            *v30 = v29;
          }

          v34 = v113;
          v29[2] = v33 + 1;
          v29[v33 + 4] = v34;
          (v28)(v115, 0);
        }

        else
        {
          (v28)(v115, 0);
          v9 = v112;
        }

        v36 = sub_1010140B4(v115);
        v37 = *v35;
        if (*v35)
        {
          v38 = v35;

          v39 = swift_isUniquelyReferenced_nonNull_native();
          *v38 = v37;
          if ((v39 & 1) == 0)
          {
            v37 = sub_100B36E74(0, v37[2] + 1, 1, v37);
            *v38 = v37;
          }

          v41 = v37[2];
          v40 = v37[3];
          if (v41 >= v40 >> 1)
          {
            v37 = sub_100B36E74((v40 > 1), v41 + 1, 1, v37);
            *v38 = v37;
          }

          v37[2] = v41 + 1;
          v37[v41 + 4] = v114;
          (v36)(v115, 0);
        }

        else
        {
          (v36)(v115, 0);
        }

        v43 = sub_1010140B4(v115);
        v44 = *v42;
        if (*v42)
        {
          v45 = v42;

          v46 = swift_isUniquelyReferenced_nonNull_native();
          *v45 = v44;
          if ((v46 & 1) == 0)
          {
            v44 = sub_100B36E74(0, v44[2] + 1, 1, v44);
            *v45 = v44;
          }

          v48 = v44[2];
          v47 = v44[3];
          if (v48 >= v47 >> 1)
          {
            v44 = sub_100B36E74((v47 > 1), v48 + 1, 1, v44);
            *v45 = v44;
          }

          v44[2] = v48 + 1;
          v44[v48 + 4] = v26;
          (v43)(v115, 0);
        }

        else
        {
          (v43)(v115, 0);
        }
      }
    }

    if (sub_10065D744())
    {
      v116 = &type metadata for CRLFeatureFlags;
      v117 = v9;
      LOBYTE(v115[0]) = 20;
      v49 = isFeatureEnabled(_:)();
      sub_100005070(v115);
      if (v49)
      {
        v50 = type metadata accessor for TaskPriority();
        v51 = *(*(v50 - 8) + 56);
        v51(v4, 1, 1, v50);
        type metadata accessor for MainActor();
        v52 = v1;
        v53 = static MainActor.shared.getter();
        v54 = swift_allocObject();
        v54[2] = v53;
        v54[3] = &protocol witness table for MainActor;
        v54[4] = v52;
        v55 = sub_10064191C(0, 0, v4, &unk_10146FB38, v54);
        v51(v4, 1, 1, v50);
        v56 = v52;
        v57 = static MainActor.shared.getter();
        v58 = swift_allocObject();
        v58[2] = v57;
        v58[3] = &protocol witness table for MainActor;
        v58[4] = v56;
        v59 = sub_10064191C(0, 0, v4, &unk_10146FB48, v58);
        v61 = sub_1010140B4(v115);
        v62 = *v60;
        v114 = v55;
        if (v62)
        {
          v63 = v60;

          v64 = swift_isUniquelyReferenced_nonNull_native();
          *v63 = v62;
          if ((v64 & 1) == 0)
          {
            v62 = sub_100B36E74(0, v62[2] + 1, 1, v62);
            *v63 = v62;
          }

          v66 = v62[2];
          v65 = v62[3];
          if (v66 >= v65 >> 1)
          {
            v62 = sub_100B36E74((v65 > 1), v66 + 1, 1, v62);
            *v63 = v62;
          }

          v67 = v114;
          v62[2] = v66 + 1;
          v62[v66 + 4] = v67;
          (v61)(v115, 0);
        }

        else
        {
          (v61)(v115, 0);
        }

        v69 = sub_1010140B4(v115);
        v70 = *v68;
        if (*v68)
        {
          v71 = v68;

          v72 = swift_isUniquelyReferenced_nonNull_native();
          *v71 = v70;
          if ((v72 & 1) == 0)
          {
            v70 = sub_100B36E74(0, v70[2] + 1, 1, v70);
            *v71 = v70;
          }

          v74 = v70[2];
          v73 = v70[3];
          if (v74 >= v73 >> 1)
          {
            v70 = sub_100B36E74((v73 > 1), v74 + 1, 1, v70);
            *v71 = v70;
          }

          v70[2] = v74 + 1;
          v70[v74 + 4] = v59;
          (v69)(v115, 0);
        }

        else
        {
          (v69)(v115, 0);
        }
      }
    }

    if (sub_10065FF90())
    {
      v75 = type metadata accessor for TaskPriority();
      (*(*(v75 - 8) + 56))(v4, 1, 1, v75);
      type metadata accessor for MainActor();
      v76 = v1;
      v77 = static MainActor.shared.getter();
      v78 = swift_allocObject();
      v78[2] = v77;
      v78[3] = &protocol witness table for MainActor;
      v78[4] = v76;
      v79 = sub_10064191C(0, 0, v4, &unk_10146FB28, v78);
      v81 = sub_1010140B4(v115);
      v82 = *v80;
      if (*v80)
      {
        v83 = v80;

        v84 = swift_isUniquelyReferenced_nonNull_native();
        *v83 = v82;
        if ((v84 & 1) == 0)
        {
          v82 = sub_100B36E74(0, v82[2] + 1, 1, v82);
          *v83 = v82;
        }

        v86 = v82[2];
        v85 = v82[3];
        if (v86 >= v85 >> 1)
        {
          v82 = sub_100B36E74((v85 > 1), v86 + 1, 1, v82);
          *v83 = v82;
        }

        v82[2] = v86 + 1;
        v82[v86 + 4] = v79;
        (v81)(v115, 0);
      }

      else
      {
        (v81)(v115, 0);
      }
    }

    if (sub_100661028())
    {
      v116 = &type metadata for CRLFeatureFlags;
      v117 = v9;
      LOBYTE(v115[0]) = 24;
      v87 = isFeatureEnabled(_:)();
      sub_100005070(v115);
      if (v87)
      {
        v88 = type metadata accessor for TaskPriority();
        v89 = *(*(v88 - 8) + 56);
        v89(v4, 1, 1, v88);
        type metadata accessor for MainActor();
        v90 = v1;
        v91 = static MainActor.shared.getter();
        v92 = swift_allocObject();
        v92[2] = v91;
        v92[3] = &protocol witness table for MainActor;
        v92[4] = v90;
        v93 = sub_10064191C(0, 0, v4, &unk_10146FB08, v92);
        v89(v4, 1, 1, v88);
        v94 = v90;
        v95 = static MainActor.shared.getter();
        v96 = swift_allocObject();
        v96[2] = v95;
        v96[3] = &protocol witness table for MainActor;
        v96[4] = v94;
        v97 = sub_10064191C(0, 0, v4, &unk_10146FB18, v96);
        v99 = sub_1010140B4(v115);
        v100 = *v98;
        if (*v98)
        {
          v101 = v98;

          v102 = swift_isUniquelyReferenced_nonNull_native();
          *v101 = v100;
          if ((v102 & 1) == 0)
          {
            v100 = sub_100B36E74(0, v100[2] + 1, 1, v100);
            *v101 = v100;
          }

          v104 = v100[2];
          v103 = v100[3];
          if (v104 >= v103 >> 1)
          {
            v100 = sub_100B36E74((v103 > 1), v104 + 1, 1, v100);
            *v101 = v100;
          }

          v100[2] = v104 + 1;
          v100[v104 + 4] = v93;
          (v99)(v115, 0);
        }

        else
        {
          (v99)(v115, 0);
        }

        v106 = sub_1010140B4(v115);
        v107 = *v105;
        if (*v105)
        {
          v108 = v105;

          v109 = swift_isUniquelyReferenced_nonNull_native();
          *v108 = v107;
          if ((v109 & 1) == 0)
          {
            v107 = sub_100B36E74(0, v107[2] + 1, 1, v107);
            *v108 = v107;
          }

          v111 = v107[2];
          v110 = v107[3];
          if (v111 >= v110 >> 1)
          {
            v107 = sub_100B36E74((v110 > 1), v111 + 1, 1, v107);
            *v108 = v107;
          }

          v107[2] = v111 + 1;
          v107[v111 + 4] = v97;
          (v106)(v115, 0);
        }

        else
        {
          (v106)(v115, 0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10065AE88()
{
  v0 = type metadata accessor for Tips.Status();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v28 = &type metadata for CRLFeatureFlags;
  v13 = sub_100004D60();
  v29 = v13;
  LOBYTE(v27[0]) = 0;
  v14 = isFeatureEnabled(_:)();
  sub_100005070(v27);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v28 = &type metadata for CRLFeatureFlags;
  v29 = v13;
  LOBYTE(v27[0]) = 10;
  v15 = isFeatureEnabled(_:)();
  sub_100005070(v27);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  sub_10067E168();
  Tip.status.getter();
  v25 = v1[4];
  v25(v9, v12, v0);
  v16 = v1[11];
  v17 = v16(v9, v0);
  v18 = v1[1];
  v19 = v9;
  v20 = enum case for Tips.Status.invalidated(_:);
  v18(v19, v0);
  if (v17 == v20 || (sub_10067E210(), Tip.status.getter(), v25(v3, v6, v0), v21 = v16(v3, v0), v18(v3, v0), v21 == v20))
  {
    if (qword_1019F1BC0 != -1)
    {
      swift_once();
    }

    v22 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
    sub_1005EB3DC(v22, qword_101AD71B0);
    v26 = 1;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    return 0;
  }

  return 1;
}

uint64_t sub_10065B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1005B981C(&qword_1019F6D50, &qword_10146FB80);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_1005B981C(&qword_1019F6D58, &qword_10146FB88);
  v4[20] = swift_task_alloc();
  v4[21] = sub_1005B981C(&qword_1019F6D60, &qword_10146FB90);
  v4[22] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6D68, &qword_10146FB98);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_1005B981C(&qword_1019F6D70, &unk_10146FBA0);
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for MainActor();
  v4[30] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[31] = v9;
  v4[32] = v8;

  return _swift_task_switch(sub_10065B3F8, v9, v8);
}

uint64_t sub_10065B3F8(uint64_t a1)
{
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
  sub_10067E168();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001A2F8(&qword_1019F6D78, &qword_1019F6D58, &qword_10146FB88, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v1[33] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPopoverController;
  v5 = static MainActor.shared.getter();
  v1[34] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[35] = v6;
  v1[36] = v8;

  return _swift_task_switch(sub_10065B590, v6, v8);
}

uint64_t sub_10065B590()
{
  v1 = v0[34];
  v0[37] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001A2F8(&qword_1019F6D80, &qword_1019F6D60, &qword_10146FB90, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_10065B694;
  v3 = v0[15];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10065B694()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_10067F3CC;
  }

  else
  {
    (*(v2 + 296))();
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_10065B7BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10065B7BC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000CAAC(v3, &qword_1019F6D50, &qword_10146FB80);
    v4 = v0[31];
    v5 = v0[32];

    return _swift_task_switch(sub_10067F2F0, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[39] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[40] = v8;
    *v8 = v0;
    v8[1] = sub_10065B97C;
    v9 = v0[18];

    return (v11)(v0 + 41, v9);
  }
}

uint64_t sub_10065B97C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  *(v1 + 330) = *(v1 + 328);
  v5 = *(v1 + 288);
  v6 = *(v1 + 280);

  return _swift_task_switch(sub_10065BB28, v6, v5);
}

uint64_t sub_10065BB28()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10065BB8C, v1, v2);
}

uint64_t sub_10065BB8C()
{
  if (*(v0 + 330))
  {
    sub_1010111B0();
    if (qword_1019F1BC0 != -1)
    {
      swift_once();
    }

    v1 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
    sub_1005EB3DC(v1, qword_101AD71B0);
    *(v0 + 329) = 1;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
  }

  else
  {
    *(v0 + 40) = &type metadata for CRLFeatureFlags;
    v2 = sub_100004D60();
    *(v0 + 16) = 0;
    *(v0 + 48) = v2;
    v3 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 16));
    if (v3)
    {
      v4 = [*(v0 + 112) presentedViewController];
      if (v4)
      {
        v5 = v4;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v7 = Strong;
          sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
          v8 = v5;
          v9 = static NSObject.== infix(_:_:)();

          if (v9)
          {
            [v8 dismissViewControllerAnimated:1 completion:0];
            sub_10103ADB8(1);
          }
        }

        else
        {
        }
      }
    }
  }

  v10 = static MainActor.shared.getter();
  *(v0 + 272) = v10;
  if (v10)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v0 + 280) = v11;
  *(v0 + 288) = v13;

  return _swift_task_switch(sub_10065B590, v11, v13);
}

uint64_t sub_10065BDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1005B981C(&qword_1019F6D50, &qword_10146FB80);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_1005B981C(&qword_1019F6D58, &qword_10146FB88);
  v4[20] = swift_task_alloc();
  v4[21] = sub_1005B981C(&qword_1019F6D60, &qword_10146FB90);
  v4[22] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6D68, &qword_10146FB98);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_1005B981C(&qword_1019F6D70, &unk_10146FBA0);
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for MainActor();
  v4[30] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[31] = v9;
  v4[32] = v8;

  return _swift_task_switch(sub_10065C01C, v9, v8);
}

uint64_t sub_10065C01C(uint64_t a1)
{
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
  sub_10067E210();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001A2F8(&qword_1019F6D78, &qword_1019F6D58, &qword_10146FB88, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v1[33] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPopoverController;
  v5 = static MainActor.shared.getter();
  v1[34] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[35] = v6;
  v1[36] = v8;

  return _swift_task_switch(sub_10065C1B4, v6, v8);
}

uint64_t sub_10065C1B4()
{
  v1 = v0[34];
  v0[37] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001A2F8(&qword_1019F6D80, &qword_1019F6D60, &qword_10146FB90, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_10065C2B8;
  v3 = v0[15];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10065C2B8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_10065C5A0;
  }

  else
  {
    (*(v2 + 296))();
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_10065C3E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10065C3E0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000CAAC(v3, &qword_1019F6D50, &qword_10146FB80);
    v4 = v0[31];
    v5 = v0[32];

    return _swift_task_switch(sub_10065C9E0, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[39] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[40] = v8;
    *v8 = v0;
    v8[1] = sub_10065C5B8;
    v9 = v0[18];

    return (v11)(v0 + 41, v9);
  }
}

uint64_t sub_10065C5B8()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  *(v1 + 330) = *(v1 + 328);
  v5 = *(v1 + 288);
  v6 = *(v1 + 280);

  return _swift_task_switch(sub_10065C764, v6, v5);
}

uint64_t sub_10065C764()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10065C7C8, v1, v2);
}

uint64_t sub_10065C7C8()
{
  if (*(v0 + 330))
  {
    sub_1010111B0();
    if (qword_1019F1BC0 != -1)
    {
      swift_once();
    }

    v1 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
    sub_1005EB3DC(v1, qword_101AD71B0);
    *(v0 + 329) = 1;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
  }

  else
  {
    *(v0 + 40) = &type metadata for CRLFeatureFlags;
    v2 = sub_100004D60();
    *(v0 + 16) = 0;
    *(v0 + 48) = v2;
    v3 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 16));
    if (v3)
    {
      v4 = [*(v0 + 112) presentedViewController];
      if (v4)
      {
        v5 = v4;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v7 = Strong;
          sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
          v8 = v5;
          v9 = static NSObject.== infix(_:_:)();

          if (v9)
          {
            [v8 dismissViewControllerAnimated:1 completion:0];
            sub_10103ADB8(1);
          }
        }

        else
        {
        }
      }
    }
  }

  v10 = static MainActor.shared.getter();
  *(v0 + 272) = v10;
  if (v10)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v0 + 280) = v11;
  *(v0 + 288) = v13;

  return _swift_task_switch(sub_10065C1B4, v11, v13);
}

uint64_t sub_10065C9E0()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10065CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  sub_1005B981C(&qword_1019F6D50, &qword_10146FB80);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_1005B981C(&qword_1019F6D58, &qword_10146FB88);
  v4[17] = swift_task_alloc();
  v4[18] = sub_1005B981C(&qword_1019F6D60, &qword_10146FB90);
  v4[19] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6D68, &qword_10146FB98);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_1005B981C(&qword_1019F6D70, &unk_10146FBA0);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v9;
  v4[29] = v8;

  return _swift_task_switch(sub_10065CD30, v9, v8);
}

uint64_t sub_10065CD30(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  sub_10067E1BC();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001A2F8(&qword_1019F6D78, &qword_1019F6D58, &qword_10146FB88, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v1[30] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPopoverController;
  v5 = static MainActor.shared.getter();
  v1[31] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[32] = v6;
  v1[33] = v8;

  return _swift_task_switch(sub_10065CEC8, v6, v8);
}

uint64_t sub_10065CEC8()
{
  v1 = v0[31];
  v0[34] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001A2F8(&qword_1019F6D80, &qword_1019F6D60, &qword_10146FB90, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_10065CFCC;
  v3 = v0[12];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10065CFCC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_10065D2B4;
  }

  else
  {
    (*(v2 + 272))();
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_10065D0F4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10065D0F4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000CAAC(v3, &qword_1019F6D50, &qword_10146FB80);
    v4 = v0[28];
    v5 = v0[29];

    return _swift_task_switch(sub_10065D66C, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[15], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[36] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[37] = v8;
    *v8 = v0;
    v8[1] = sub_10065D2CC;
    v9 = v0[15];

    return (v11)(v0 + 38, v9);
  }
}

uint64_t sub_10065D2CC()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  *(v1 + 305) = *(v1 + 304);
  v5 = *(v1 + 264);
  v6 = *(v1 + 256);

  return _swift_task_switch(sub_10065D478, v6, v5);
}

uint64_t sub_10065D478()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_10065D4DC, v1, v2);
}

uint64_t sub_10065D4DC()
{
  if (*(v0 + 305))
  {
    sub_1010116A8();
  }

  else
  {
    *(v0 + 40) = &type metadata for CRLFeatureFlags;
    v1 = sub_100004D60();
    *(v0 + 16) = 0;
    *(v0 + 48) = v1;
    v2 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 16));
    if (v2)
    {
      v3 = [*(v0 + 88) presentedViewController];
      if (v3)
      {
        v4 = v3;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
          v7 = v4;
          v8 = static NSObject.== infix(_:_:)();

          if (v8)
          {
            [v7 dismissViewControllerAnimated:1 completion:0];
            sub_10103ADB8(1);
          }
        }

        else
        {
        }
      }
    }
  }

  v9 = static MainActor.shared.getter();
  *(v0 + 248) = v9;
  if (v9)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v0 + 256) = v10;
  *(v0 + 264) = v12;

  return _swift_task_switch(sub_10065CEC8, v10, v12);
}

uint64_t sub_10065D66C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10065D744()
{
  v1 = type metadata accessor for Tips.Status();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v44 = &type metadata for CRLFeatureFlags;
  v14 = sub_100004D60();
  v45 = v14;
  LOBYTE(v43[0]) = 0;
  v15 = isFeatureEnabled(_:)();
  sub_100005070(v43);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v44 = &type metadata for CRLFeatureFlags;
  v45 = v14;
  LOBYTE(v43[0]) = 20;
  v16 = isFeatureEnabled(_:)();
  sub_100005070(v43);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v41 = v0;
  sub_10067E858();
  Tip.status.getter();
  v40 = v2[4];
  v40(v10, v13, v1);
  v17 = v2[11];
  v18 = v17(v10, v1);
  v19 = enum case for Tips.Status.invalidated(_:);
  v20 = v2[1];
  v21 = v10;
  v22 = v18;
  v20(v21, v1);
  if (v22 == v19)
  {
    sub_10067E804();
    Tip.status.getter();
    v40(v4, v7, v1);
    v23 = v17(v4, v1);
    v20(v4, v1);
    if (v23 == v22)
    {
      return 0;
    }

    v34 = *(*(*(v41 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
    v35 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v36 = *&v34[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    v37 = v34;
    if (!v36)
    {
      sub_10096C7D4();
      v36 = *&v34[v35];
    }

    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = _swiftEmptyArrayStorage;
    }

    if (v38 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (qword_1019F2040 != -1)
    {
      swift_once();
    }

    v31 = v39 > 0;
    v32 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
    v33 = qword_101AD7BD8;
  }

  else
  {
    v25 = *(*(*(v41 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
    v26 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v27 = *&v25[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    v28 = v25;
    if (!v27)
    {
      sub_10096C7D4();
      v27 = *&v25[v26];
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
    }

    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (qword_1019F16B0 != -1)
    {
      swift_once();
    }

    v31 = v30 > 0;
    v32 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
    v33 = qword_101AD67D0;
  }

  sub_1005EB3DC(v32, v33);
  v42 = v31;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  return 1;
}

uint64_t sub_10065DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1005B981C(&qword_1019F6D50, &qword_10146FB80);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6D58, &qword_10146FB88);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = sub_1005B981C(&qword_1019F6D60, &qword_10146FB90);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = sub_1005B981C(&qword_1019F6D68, &qword_10146FB98);
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v9 = sub_1005B981C(&qword_1019F6D70, &unk_10146FBA0);
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for MainActor();
  v4[36] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[37] = v11;
  v4[38] = v10;

  return _swift_task_switch(sub_10065DEE0, v11, v10);
}

uint64_t sub_10065DEE0(uint64_t a1)
{
  v3 = v1[30];
  v2 = v1[31];
  v4 = v1[29];
  v1[39] = sub_10067E858();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001A2F8(&qword_1019F6D78, &qword_1019F6D58, &qword_10146FB88, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v1[40] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPopoverController;
  v5 = static MainActor.shared.getter();
  v1[41] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[42] = v6;
  v1[43] = v8;

  return _swift_task_switch(sub_10065E080, v6, v8);
}

uint64_t sub_10065E080()
{
  v1 = v0[41];
  v0[44] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001A2F8(&qword_1019F6D80, &qword_1019F6D60, &qword_10146FB90, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_10065E184;
  v3 = v0[16];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10065E184()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_10065E478;
  }

  else
  {
    (*(v2 + 352))();
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_10065E2AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10065E2AC()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v2 + 48);
  *(v0 + 46) = v4;
  *(v0 + 47) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {

    sub_10000CAAC(v3, &qword_1019F6D50, &qword_10146FB80);
    v5 = *(v0 + 37);
    v6 = *(v0 + 38);

    return _swift_task_switch(sub_10065E830, v5, v6);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 21), v3, v1);
    v7 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 48) = v8;
    v12 = (v7 + *v7);
    v9 = swift_task_alloc();
    *(v0 + 49) = v9;
    *v9 = v0;
    v9[1] = sub_10065E490;
    v10 = *(v0 + 21);

    return v12(v0 + 421, v10);
  }
}

uint64_t sub_10065E490()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);

  (*(v3 + 8))(v2, v4);
  *(v1 + 422) = *(v1 + 421);
  v5 = *(v1 + 344);
  v6 = *(v1 + 336);

  return _swift_task_switch(sub_10065E63C, v6, v5);
}

uint64_t sub_10065E63C()
{

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return _swift_task_switch(sub_10065E6A0, v1, v2);
}

uint64_t sub_10065E6A0()
{
  if (*(v0 + 422))
  {
    sub_101011AFC();
  }

  else
  {
    *(v0 + 40) = &type metadata for CRLFeatureFlags;
    v1 = sub_100004D60();
    *(v0 + 16) = 0;
    *(v0 + 48) = v1;
    v2 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 16));
    if (v2)
    {
      v3 = [*(v0 + 112) presentedViewController];
      if (v3)
      {
        v4 = v3;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
          v7 = v4;
          v8 = static NSObject.== infix(_:_:)();

          if (v8)
          {
            [v7 dismissViewControllerAnimated:1 completion:0];
            sub_10103ADB8(1);
          }
        }

        else
        {
        }
      }
    }
  }

  v9 = static MainActor.shared.getter();
  *(v0 + 328) = v9;
  if (v9)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v0 + 336) = v10;
  *(v0 + 344) = v12;

  return _swift_task_switch(sub_10065E080, v10, v12);
}

uint64_t sub_10065E830()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 416) = enum case for Tips.Status.invalidated(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 400) = v4;
  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *v5 = v0;
  v5[1] = sub_10065E970;
  v6 = *(v0 + 200);
  v7 = *(v0 + 120);

  return AsyncStream.Iterator.next(isolation:)(v7, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_10065E970()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return _swift_task_switch(sub_10065EAB4, v3, v2);
}

uint64_t sub_10065EAB4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  if ((*(v0 + 368))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 416);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    (*(v8 + 32))(v6, v2, v1);
    (*(v8 + 16))(v7, v6, v1);
    v9 = (*(v8 + 88))(v7, v1);
    v10 = *(v8 + 8);
    v10(v7, v1);
    if (v9 == v5)
    {
      if (qword_1019F2358 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 160);
      v12 = *(v0 + 136);
      v13 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
      sub_1005EB3DC(v13, qword_101AD8060);
      *(v0 + 420) = 1;
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      v14 = v11;
      v15 = v12;
    }

    else
    {
      v14 = *(v0 + 160);
      v15 = *(v0 + 136);
    }

    v10(v14, v15);
    v16 = static MainActor.shared.getter();
    *(v0 + 400) = v16;
    v17 = swift_task_alloc();
    *(v0 + 408) = v17;
    *v17 = v0;
    v17[1] = sub_10065E970;
    v18 = *(v0 + 200);
    v19 = *(v0 + 120);

    return AsyncStream.Iterator.next(isolation:)(v19, v16, &protocol witness table for MainActor, v18);
  }
}

uint64_t sub_10065EDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1005B981C(&qword_1019F6D50, &qword_10146FB80);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6D58, &qword_10146FB88);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = sub_1005B981C(&qword_1019F6D60, &qword_10146FB90);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = sub_1005B981C(&qword_1019F6D68, &qword_10146FB98);
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v9 = sub_1005B981C(&qword_1019F6D70, &unk_10146FBA0);
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for MainActor();
  v4[36] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[37] = v11;
  v4[38] = v10;

  return _swift_task_switch(sub_10065F0C4, v11, v10);
}

uint64_t sub_10065F0C4(uint64_t a1)
{
  v3 = v1[30];
  v2 = v1[31];
  v4 = v1[29];
  v1[39] = sub_10067E804();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001A2F8(&qword_1019F6D78, &qword_1019F6D58, &qword_10146FB88, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v1[40] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPopoverController;
  v5 = static MainActor.shared.getter();
  v1[41] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[42] = v6;
  v1[43] = v8;

  return _swift_task_switch(sub_10065F264, v6, v8);
}

uint64_t sub_10065F264()
{
  v1 = v0[41];
  v0[44] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001A2F8(&qword_1019F6D80, &qword_1019F6D60, &qword_10146FB90, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_10065F368;
  v3 = v0[16];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10065F368()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_10067F3D0;
  }

  else
  {
    (*(v2 + 352))();
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_10065F490;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10065F490()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v2 + 48);
  *(v0 + 46) = v4;
  *(v0 + 47) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {

    sub_10000CAAC(v3, &qword_1019F6D50, &qword_10146FB80);
    v5 = *(v0 + 37);
    v6 = *(v0 + 38);

    return _swift_task_switch(sub_10065F9FC, v5, v6);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 21), v3, v1);
    v7 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 48) = v8;
    v12 = (v7 + *v7);
    v9 = swift_task_alloc();
    *(v0 + 49) = v9;
    *v9 = v0;
    v9[1] = sub_10065F65C;
    v10 = *(v0 + 21);

    return v12(v0 + 421, v10);
  }
}

uint64_t sub_10065F65C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);

  (*(v3 + 8))(v2, v4);
  *(v1 + 422) = *(v1 + 421);
  v5 = *(v1 + 344);
  v6 = *(v1 + 336);

  return _swift_task_switch(sub_10065F808, v6, v5);
}

uint64_t sub_10065F808()
{

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return _swift_task_switch(sub_10065F86C, v1, v2);
}

uint64_t sub_10065F86C()
{
  if (*(v0 + 422))
  {
    sub_101011AFC();
  }

  else
  {
    *(v0 + 40) = &type metadata for CRLFeatureFlags;
    v1 = sub_100004D60();
    *(v0 + 16) = 0;
    *(v0 + 48) = v1;
    v2 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 16));
    if (v2)
    {
      v3 = [*(v0 + 112) presentedViewController];
      if (v3)
      {
        v4 = v3;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
          v7 = v4;
          v8 = static NSObject.== infix(_:_:)();

          if (v8)
          {
            [v7 dismissViewControllerAnimated:1 completion:0];
            sub_10103ADB8(1);
          }
        }

        else
        {
        }
      }
    }
  }

  v9 = static MainActor.shared.getter();
  *(v0 + 328) = v9;
  if (v9)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v0 + 336) = v10;
  *(v0 + 344) = v12;

  return _swift_task_switch(sub_10065F264, v10, v12);
}

uint64_t sub_10065F9FC()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 416) = enum case for Tips.Status.invalidated(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 400) = v4;
  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *v5 = v0;
  v5[1] = sub_10065FB3C;
  v6 = *(v0 + 200);
  v7 = *(v0 + 120);

  return AsyncStream.Iterator.next(isolation:)(v7, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_10065FB3C()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return _swift_task_switch(sub_10065FC80, v3, v2);
}

uint64_t sub_10065FC80()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  if ((*(v0 + 368))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 416);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    (*(v8 + 32))(v6, v2, v1);
    (*(v8 + 16))(v7, v6, v1);
    v9 = (*(v8 + 88))(v7, v1);
    v10 = *(v8 + 8);
    v10(v7, v1);
    if (v9 == v5)
    {
      if (qword_1019F2358 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 160);
      v12 = *(v0 + 136);
      v13 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
      sub_1005EB3DC(v13, qword_101AD8060);
      *(v0 + 420) = 1;
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      v14 = v11;
      v15 = v12;
    }

    else
    {
      v14 = *(v0 + 160);
      v15 = *(v0 + 136);
    }

    v10(v14, v15);
    v16 = static MainActor.shared.getter();
    *(v0 + 400) = v16;
    v17 = swift_task_alloc();
    *(v0 + 408) = v17;
    *v17 = v0;
    v17[1] = sub_10065FB3C;
    v18 = *(v0 + 200);
    v19 = *(v0 + 120);

    return AsyncStream.Iterator.next(isolation:)(v19, v16, &protocol witness table for MainActor, v18);
  }
}

uint64_t sub_10065FF90()
{
  v1 = type metadata accessor for Tips.Status();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25[-1] - v6;
  v25[3] = &type metadata for CRLFeatureFlags;
  v25[4] = sub_100004D60();
  LOBYTE(v25[0]) = 21;
  v8 = isFeatureEnabled(_:)();
  sub_100005070(v25);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_10067E8AC();
  Tip.status.getter();
  (*(v2 + 32))(v4, v7, v1);
  v9 = (*(v2 + 88))(v4, v1);
  v10 = enum case for Tips.Status.invalidated(_:);
  (*(v2 + 8))(v4, v1);
  if (v9 == v10)
  {
    return 0;
  }

  v12 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v13 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v14 = *(*(*(v12 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v14 && (, v15 = v14, [v15 copy], _bridgeAnyObjectToAny(_:)(), v15, swift_unknownObjectRelease(), , sub_100006370(0, &qword_1019F52C0, CKShare_ptr), (swift_dynamicCast() & 1) != 0))
  {

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (qword_1019F2348 != -1)
  {
    swift_once();
  }

  v17 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_1005EB3DC(v17, qword_101AD8030);
  LOBYTE(v24) = v16;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v18 = *(*(v12 + v13) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v19 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v20 = *&v18[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v21 = v18;
  if (!v20)
  {
    sub_10096C7D4();
    v20 = *&v18[v19];
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_1019F2350 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v17, qword_101AD8048);
  LOBYTE(v24) = v23 > 0;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  return 1;
}

uint64_t sub_10066035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  sub_1005B981C(&qword_1019F6D50, &qword_10146FB80);
  v4[17] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = sub_1005B981C(&qword_1019F6D58, &qword_10146FB88);
  v4[22] = swift_task_alloc();
  v4[23] = sub_1005B981C(&qword_1019F6D60, &qword_10146FB90);
  v4[24] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6D68, &qword_10146FB98);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = sub_1005B981C(&qword_1019F6D70, &unk_10146FBA0);
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = type metadata accessor for MainActor();
  v4[32] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[33] = v9;
  v4[34] = v8;

  return _swift_task_switch(sub_1006605D4, v9, v8);
}

uint64_t sub_1006605D4(uint64_t a1)
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = v1[25];
  sub_10067E8AC();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001A2F8(&qword_1019F6D78, &qword_1019F6D58, &qword_10146FB88, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v1[35] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPopoverController;
  v5 = static MainActor.shared.getter();
  v1[36] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[37] = v6;
  v1[38] = v8;

  return _swift_task_switch(sub_10066076C, v6, v8);
}

uint64_t sub_10066076C()
{
  v1 = v0[36];
  v0[39] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001A2F8(&qword_1019F6D80, &qword_1019F6D60, &qword_10146FB90, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_100660870;
  v3 = v0[17];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_100660870()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_100660B58;
  }

  else
  {
    (*(v2 + 312))();
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_100660998;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100660998()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000CAAC(v3, &qword_1019F6D50, &qword_10146FB80);
    v4 = v0[33];
    v5 = v0[34];

    return _swift_task_switch(sub_100660F50, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[20], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[41] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[42] = v8;
    *v8 = v0;
    v8[1] = sub_100660B70;
    v9 = v0[20];

    return (v11)(v0 + 43, v9);
  }
}

uint64_t sub_100660B70()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);

  (*(v3 + 8))(v2, v4);
  *(v1 + 345) = *(v1 + 344);
  v5 = *(v1 + 304);
  v6 = *(v1 + 296);

  return _swift_task_switch(sub_100660D1C, v6, v5);
}

uint64_t sub_100660D1C()
{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_100660D80, v1, v2);
}

uint64_t sub_100660D80()
{
  if (*(v0 + 345))
  {
    *(v0 + 80) = &type metadata for CRLFeatureFlags;
    v1 = sub_100004D60();
    *(v0 + 56) = 21;
    *(v0 + 88) = v1;
    v2 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 56));
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    v3 = sub_101013330();
    sub_1006761A4(v3, 0, 0);
  }

  else
  {
    *(v0 + 40) = &type metadata for CRLFeatureFlags;
    v4 = sub_100004D60();
    *(v0 + 16) = 0;
    *(v0 + 48) = v4;
    v5 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 16));
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    v6 = [*(v0 + 128) presentedViewController];
    if (!v6)
    {
      goto LABEL_10;
    }

    v3 = v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v3 = v3;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        [v3 dismissViewControllerAnimated:1 completion:0];
        sub_10103ADB8(1);
      }
    }
  }

LABEL_10:
  v10 = static MainActor.shared.getter();
  *(v0 + 288) = v10;
  if (v10)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v0 + 296) = v11;
  *(v0 + 304) = v13;

  return _swift_task_switch(sub_10066076C, v11, v13);
}

uint64_t sub_100660F50()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100661028()
{
  v1 = type metadata accessor for Tips.Status();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v27 = &type metadata for CRLFeatureFlags;
  v14 = sub_100004D60();
  v28 = v14;
  LOBYTE(v26[0]) = 0;
  v15 = isFeatureEnabled(_:)();
  sub_100005070(v26);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v27 = &type metadata for CRLFeatureFlags;
  v28 = v14;
  LOBYTE(v26[0]) = 24;
  v16 = isFeatureEnabled(_:)();
  sub_100005070(v26);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v23 = v0;
  sub_10067E9D0();
  Tip.status.getter();
  v25 = v2[4];
  v25(v10, v13, v1);
  v24 = v2[11];
  v17 = v24(v10, v1);
  v18 = enum case for Tips.Status.invalidated(_:);
  v19 = v10;
  v20 = v2[1];
  v20(v19, v1);
  if (v17 != v18)
  {
    if ((Tip.shouldDisplay.getter() & 1) == 0)
    {
      return 1;
    }

LABEL_8:
    sub_10101200C();
    return 1;
  }

  sub_10067E97C();
  Tip.status.getter();
  v25(v4, v7, v1);
  v21 = v24(v4, v1);
  v20(v4, v1);
  if (v21 != v17)
  {
    if ((Tip.shouldDisplay.getter() & 1) == 0)
    {
      return 1;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_1006612E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_1005B981C(&qword_1019F6D50, &qword_10146FB80);
  v4[22] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = sub_1005B981C(&qword_1019F6D58, &qword_10146FB88);
  v4[27] = swift_task_alloc();
  v4[28] = sub_1005B981C(&qword_1019F6D60, &qword_10146FB90);
  v4[29] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6D68, &qword_10146FB98);
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = sub_1005B981C(&qword_1019F6D70, &unk_10146FBA0);
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for MainActor();
  v4[37] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[38] = v9;
  v4[39] = v8;

  return _swift_task_switch(sub_10066155C, v9, v8);
}

uint64_t sub_10066155C(uint64_t a1)
{
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[30];
  v1[40] = sub_10067E9D0();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001A2F8(&qword_1019F6D78, &qword_1019F6D58, &qword_10146FB88, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v1[41] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPopoverController;
  v5 = static MainActor.shared.getter();
  v1[42] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[43] = v6;
  v1[44] = v8;

  return _swift_task_switch(sub_1006616F8, v6, v8);
}

uint64_t sub_1006616F8()
{
  v1 = v0[42];
  v0[45] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001A2F8(&qword_1019F6D80, &qword_1019F6D60, &qword_10146FB90, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_1006617FC;
  v3 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_1006617FC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_100661AE4;
  }

  else
  {
    (*(v2 + 360))();
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_100661924;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100661924()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000CAAC(v3, &qword_1019F6D50, &qword_10146FB80);
    v4 = v0[38];
    v5 = v0[39];

    return _swift_task_switch(sub_100661FEC, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[25], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[47] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[48] = v8;
    *v8 = v0;
    v8[1] = sub_100661AFC;
    v9 = v0[25];

    return (v11)(v0 + 49, v9);
  }
}

uint64_t sub_100661AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  *(v1 + 393) = *(v1 + 392);
  v5 = *(v1 + 352);
  v6 = *(v1 + 344);

  return _swift_task_switch(sub_100661CA8, v6, v5);
}

uint64_t sub_100661CA8()
{

  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return _swift_task_switch(sub_100661D0C, v1, v2);
}

uint64_t sub_100661D0C()
{
  if (*(v0 + 393))
  {
    *(v0 + 80) = &type metadata for CRLFeatureFlags;
    v1 = sub_100004D60();
    *(v0 + 56) = 24;
    *(v0 + 88) = v1;
    v2 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 56));
    if ((v2 & 1) == 0)
    {
      goto LABEL_15;
    }

    v3 = [*(v0 + 168) traitCollection];
    if ([v3 horizontalSizeClass] == 1)
    {
    }

    else
    {
      v12 = [objc_opt_self() crl_phoneUI];

      if (!v12)
      {
        v13 = sub_101013310();
        v14 = &type metadata for CRLTipStencilLibraryFull;
        *(v0 + 120) = &type metadata for CRLTipStencilLibraryFull;
        v16 = *(v0 + 320);
        v15 = sub_10103AD30;
        goto LABEL_14;
      }
    }

    v13 = sub_101013290();
    v14 = &type metadata for CRLTipStencilLibraryCompact;
    *(v0 + 120) = &type metadata for CRLTipStencilLibraryCompact;
    v15 = sub_10103AD0C;
    v16 = sub_10067E97C();
LABEL_14:
    *(v0 + 128) = v16;
    v17 = sub_100020E58((v0 + 96), v14);
    v18 = v13;
    sub_1010395E4(v17, v18, v15, 0, v14, v16);

    sub_100005070((v0 + 96));
    goto LABEL_15;
  }

  *(v0 + 40) = &type metadata for CRLFeatureFlags;
  v4 = sub_100004D60();
  *(v0 + 16) = 0;
  *(v0 + 48) = v4;
  v5 = isFeatureEnabled(_:)();
  sub_100005070((v0 + 16));
  if (v5)
  {
    v6 = [*(v0 + 168) presentedViewController];
    if (v6)
    {
      v7 = v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
        v10 = v7;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          [v10 dismissViewControllerAnimated:1 completion:0];
          sub_10103ADB8(1);
        }
      }

      else
      {
      }
    }
  }

LABEL_15:
  v19 = static MainActor.shared.getter();
  *(v0 + 336) = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v0 + 344) = v20;
  *(v0 + 352) = v22;

  return _swift_task_switch(sub_1006616F8, v20, v22);
}

uint64_t sub_100661FEC()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006620C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_1005B981C(&qword_1019F6D50, &qword_10146FB80);
  v4[22] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = sub_1005B981C(&qword_1019F6D58, &qword_10146FB88);
  v4[27] = swift_task_alloc();
  v4[28] = sub_1005B981C(&qword_1019F6D60, &qword_10146FB90);
  v4[29] = swift_task_alloc();
  v6 = sub_1005B981C(&qword_1019F6D68, &qword_10146FB98);
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = sub_1005B981C(&qword_1019F6D70, &unk_10146FBA0);
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for MainActor();
  v4[37] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[38] = v9;
  v4[39] = v8;

  return _swift_task_switch(sub_10066233C, v9, v8);
}

uint64_t sub_10066233C(uint64_t a1)
{
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[30];
  v1[40] = sub_10067E97C();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001A2F8(&qword_1019F6D78, &qword_1019F6D58, &qword_10146FB88, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v1[41] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPopoverController;
  v5 = static MainActor.shared.getter();
  v1[42] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[43] = v6;
  v1[44] = v8;

  return _swift_task_switch(sub_1006624D8, v6, v8);
}

uint64_t sub_1006624D8()
{
  v1 = v0[42];
  v0[45] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001A2F8(&qword_1019F6D80, &qword_1019F6D60, &qword_10146FB90, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_1006625DC;
  v3 = v0[22];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_1006625DC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_10067F3D4;
  }

  else
  {
    (*(v2 + 360))();
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_100662704;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100662704()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000CAAC(v3, &qword_1019F6D50, &qword_10146FB80);
    v4 = v0[38];
    v5 = v0[39];

    return _swift_task_switch(sub_10067F2F4, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[25], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[47] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[48] = v8;
    *v8 = v0;
    v8[1] = sub_1006628C4;
    v9 = v0[25];

    return (v11)(v0 + 49, v9);
  }
}

uint64_t sub_1006628C4()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  *(v1 + 393) = *(v1 + 392);
  v5 = *(v1 + 352);
  v6 = *(v1 + 344);

  return _swift_task_switch(sub_100662A70, v6, v5);
}

uint64_t sub_100662A70()
{

  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return _swift_task_switch(sub_100662AD4, v1, v2);
}

uint64_t sub_100662AD4()
{
  if (*(v0 + 393))
  {
    *(v0 + 80) = &type metadata for CRLFeatureFlags;
    v1 = sub_100004D60();
    *(v0 + 56) = 24;
    *(v0 + 88) = v1;
    v2 = isFeatureEnabled(_:)();
    sub_100005070((v0 + 56));
    if ((v2 & 1) == 0)
    {
      goto LABEL_15;
    }

    v3 = [*(v0 + 168) traitCollection];
    if ([v3 horizontalSizeClass] == 1)
    {
    }

    else
    {
      v12 = [objc_opt_self() crl_phoneUI];

      if (!v12)
      {
        v13 = sub_101013310();
        v14 = &type metadata for CRLTipStencilLibraryFull;
        *(v0 + 120) = &type metadata for CRLTipStencilLibraryFull;
        v16 = sub_10103AD30;
        v15 = sub_10067E9D0();
        goto LABEL_14;
      }
    }

    v13 = sub_101013290();
    v14 = &type metadata for CRLTipStencilLibraryCompact;
    *(v0 + 120) = &type metadata for CRLTipStencilLibraryCompact;
    v15 = *(v0 + 320);
    v16 = sub_10103AD0C;
LABEL_14:
    *(v0 + 128) = v15;
    v17 = sub_100020E58((v0 + 96), v14);
    v18 = v13;
    sub_1010395E4(v17, v18, v16, 0, v14, v15);

    sub_100005070((v0 + 96));
    goto LABEL_15;
  }

  *(v0 + 40) = &type metadata for CRLFeatureFlags;
  v4 = sub_100004D60();
  *(v0 + 16) = 0;
  *(v0 + 48) = v4;
  v5 = isFeatureEnabled(_:)();
  sub_100005070((v0 + 16));
  if (v5)
  {
    v6 = [*(v0 + 168) presentedViewController];
    if (v6)
    {
      v7 = v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
        v10 = v7;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          [v10 dismissViewControllerAnimated:1 completion:0];
          sub_10103ADB8(1);
        }
      }

      else
      {
      }
    }
  }

LABEL_15:
  v19 = static MainActor.shared.getter();
  *(v0 + 336) = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v0 + 344) = v20;
  *(v0 + 352) = v22;

  return _swift_task_switch(sub_1006624D8, v20, v22);
}

id sub_100662ED4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s34TextEditingAllowingAlertControllerCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100662F2C()
{
  v1 = [v0 undoManager];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = &selRef_canUndo;
  if (v3)
  {
    v5 = &selRef_canUndoDisregardingDelegates;
    v6 = &selRef_canRedoDisregardingDelegates;
  }

  else
  {
    v6 = &selRef_canRedo;
  }

  v7 = [v4 *v5];
  [v4 *v6];
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = 1;
  }

  v25 = v8;
  v9 = [v2 undoActionName];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [v2 redoActionName];
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v11 = [v2 undoMenuTitleForUndoActionName:v9];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = String._bridgeToObjectiveC()();
  v13 = objc_opt_self();
  v14 = [v13 systemImageNamed:v12];

  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  v16 = v2;
  v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v18 = [v16 redoMenuTitleForUndoActionName:{v10, 0, v25, 0, sub_10067CDD0, v15}];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v13 systemImageNamed:v19];

  *(swift_allocObject() + 16) = v16;
  v21 = v16;
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10146CE00;
  *(v23 + 32) = v17;
  *(v23 + 40) = v22;

  return v23;
}

void sub_1006632BC()
{
  v1 = [v0 undoManager];
  if (v1)
  {
    v48 = v1;
    v2 = _UISolariumEnabled();
    v49 = sub_101013250();
    if (v2)
    {
      v47 = [v49 customView];

      if (v47)
      {
        objc_opt_self();
        v3 = swift_dynamicCastObjCClass();
        if (!v3)
        {

          v42 = v47;
          goto LABEL_26;
        }

        v4 = v3;
LABEL_11:
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v48;
        }

        v31 = &selRef_canUndo;
        if (v29)
        {
          v31 = &selRef_canUndoDisregardingDelegates;
          v32 = &selRef_canRedoDisregardingDelegates;
        }

        else
        {
          v32 = &selRef_canRedo;
        }

        v33 = [v30 *v31];
        v34 = [v30 *v32];
        v35 = sub_101013250();
        [v35 setEnabled:(v34 | v33) & 1];

        if (([objc_opt_self() crl_phoneUI] & 1) != 0 || (v36 = objc_msgSend(v0, "traitCollection"), v37 = objc_msgSend(v36, "horizontalSizeClass"), v36, v37 == 1))
        {
          [v4 setShowsMenuAsPrimaryAction:(v33 & 1) == 0];
          v38 = sub_100662F2C();
          if (v38 >> 62)
          {
            sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
            preferredElementSize = _bridgeCocoaArray<A>(_:)();
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
            preferredElementSize = v38;
          }

          sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
          v40._countAndFlagsBits = 0;
          v40._object = 0xE000000000000000;
          v52.value.super.isa = 0;
          v52.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v40, 0, v52, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v46).super.super.isa;
          [v4 setMenu:isa];
        }

        else
        {
          [v4 setShowsMenuAsPrimaryAction:0];
          [v4 setMenu:0];
          v43 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController];
          if (v43)
          {
            v44 = v43;
            sub_1006639F8();
            sub_100006370(0, &qword_101A0B790, UIAlertAction_ptr);
            v45 = Array._bridgeToObjectiveC()().super.isa;

            [v44 crl_setActions:v45];
          }
        }
      }
    }

    else
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (!v28)
      {

        v42 = v49;
        goto LABEL_26;
      }

      v4 = [v28 button];

      if (v4)
      {
        goto LABEL_11;
      }
    }

    v42 = v48;
LABEL_26:

    return;
  }

  v5 = objc_opt_self();
  v6 = [v5 _atomicIncrementAssertCount];
  v50 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v50, "No undo manager", 15, 2u);
  StaticString.description.getter("updateUndoBarButtonItemState()", 30, 2);
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v15;
  v16 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(inited + 104) = v16;
  *(inited + 72) = v7;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v10;
  *(inited + 120) = v12;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 2221;
  v18 = v50;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "No undo manager", 15, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter("updateUndoBarButtonItemState()", 30, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter("No undo manager", 15, 2);
  v27 = String._bridgeToObjectiveC()();

  [v5 handleFailureInFunction:v25 file:v26 lineNumber:2221 isFatal:0 format:v27 args:v24];
}

void *sub_1006639F8()
{
  v1 = [v0 undoManager];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 undoMenuItemTitle];
    if (!v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = String._bridgeToObjectiveC()();
    }

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v75 = sub_10067CDD0;
    v76 = v5;
    aBlock = _NSConcreteStackBlock;
    v72 = *"";
    v73 = sub_100665148;
    v74 = &unk_10187ED58;
    v6 = _Block_copy(&aBlock);
    v7 = v2;

    v75 = CRLWPShapeLayout.descendersCannotClip.getter;
    v76 = 0;
    aBlock = _NSConcreteStackBlock;
    v72 = *"";
    v73 = sub_1006651B4;
    v74 = &unk_10187ED80;
    v8 = _Block_copy(&aBlock);
    v9 = [v4 _actionWithTitle:v3 image:0 style:0 handler:v6 shouldDismissHandler:v8];
    _Block_release(v8);
    _Block_release(v6);

    v10 = [v7 redoMenuItemTitle];
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v75 = sub_10067CDE0;
    v76 = v11;
    aBlock = _NSConcreteStackBlock;
    v72 = *"";
    v73 = sub_100665148;
    v74 = &unk_10187EDD0;
    v12 = _Block_copy(&aBlock);
    v13 = v7;

    v75 = CRLWPShapeLayout.descendersCannotClip.getter;
    v76 = 0;
    aBlock = _NSConcreteStackBlock;
    v72 = *"";
    v73 = sub_1006651B4;
    v74 = &unk_10187EDF8;
    v14 = _Block_copy(&aBlock);
    v15 = [v4 _actionWithTitle:v10 image:0 style:0 handler:v12 shouldDismissHandler:v14];
    _Block_release(v14);
    _Block_release(v12);

    v16 = [objc_opt_self() mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = sub_10067CDF0;
    v76 = v20;
    aBlock = _NSConcreteStackBlock;
    v72 = *"";
    v73 = sub_10068B39C;
    v74 = &unk_10187EE20;
    v21 = _Block_copy(&aBlock);

    v22 = [v4 actionWithTitle:v19 style:1 handler:v21];
    _Block_release(v21);

    if (v9 && v15)
    {
      v23 = v9;
      v24 = v15;
      [v23 setEnabled:{objc_msgSend(v13, "canUndo")}];
      [v24 setEnabled:{objc_msgSend(v13, "canRedo")}];
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_10146E8A0;
      v25[4] = v23;
      v25[5] = v24;
      v25[6] = v22;
    }

    else
    {
      v68 = v22;
      v69 = v15;
      v70 = v9;
      v67 = objc_opt_self();
      v46 = [v67 _atomicIncrementAssertCount];
      aBlock = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &aBlock, "Error creating undo/redo action", 31, 2u);
      StaticString.description.getter("newUndoRedoActions()", 20, 2);
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
      v48 = String._bridgeToObjectiveC()();

      v49 = [v48 lastPathComponent];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v53 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v46;
      v55 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v55;
      v56 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
      *(inited + 104) = v56;
      *(inited + 72) = v47;
      *(inited + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(inited + 112) = v50;
      *(inited + 120) = v52;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v57;
      *(inited + 152) = 2312;
      v58 = aBlock;
      *(inited + 216) = v55;
      *(inited + 224) = v56;
      *(inited + 192) = v58;
      v59 = v47;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v62 = static os_log_type_t.error.getter();
      v25 = _swiftEmptyArrayStorage;
      sub_100005404(v53, &_mh_execute_header, v62, "Error creating undo/redo action", 31, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v63 = swift_allocObject();
      v63[2] = 8;
      v63[3] = 0;
      v63[4] = 0;
      v63[5] = 0;
      v64 = __VaListBuilder.va_list()();
      StaticString.description.getter("newUndoRedoActions()", 20, 2);
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Error creating undo/redo action", 31, 2);
      v24 = String._bridgeToObjectiveC()();

      [v67 handleFailureInFunction:v65 file:v23 lineNumber:2312 isFatal:0 format:v24 args:v64];

      v13 = v65;
    }
  }

  else
  {
    v26 = objc_opt_self();
    v27 = [v26 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &aBlock, "No undo manager", 15, 2u);
    StaticString.description.getter("newUndoRedoActions()", 20, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v29 = String._bridgeToObjectiveC()();

    v30 = [v29 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_10146CA70;
    *(v35 + 56) = &type metadata for Int32;
    *(v35 + 64) = &protocol witness table for Int32;
    *(v35 + 32) = v27;
    v36 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v35 + 96) = v36;
    v37 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v35 + 104) = v37;
    *(v35 + 72) = v28;
    *(v35 + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    *(v35 + 112) = v31;
    *(v35 + 120) = v33;
    *(v35 + 176) = &type metadata for UInt;
    *(v35 + 184) = &protocol witness table for UInt;
    *(v35 + 144) = v38;
    *(v35 + 152) = 2289;
    v39 = aBlock;
    *(v35 + 216) = v36;
    *(v35 + 224) = v37;
    *(v35 + 192) = v39;
    v40 = v28;
    v41 = v39;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v35);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v43 = static os_log_type_t.error.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_100005404(v34, &_mh_execute_header, v43, "No undo manager", 15, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter("newUndoRedoActions()", 20, 2);
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No undo manager", 15, 2);
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v13 file:v23 lineNumber:2289 isFatal:0 format:v24 args:v45];
  }

  return v25;
}

uint64_t sub_10066462C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_10067EE50;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10187F578;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000063B8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_100664920()
{
  sub_1006632BC();
  v0 = sub_101035D60();
  v1 = sub_1010133B4();
  [v1 setEnabled:v0 & 1];
}

uint64_t sub_100664998(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_100005070(v9);
}

uint64_t sub_100664A0C()
{
  v1[31] = v0;
  type metadata accessor for MainActor();
  v1[32] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[33] = v3;
  v1[34] = v2;

  return _swift_task_switch(sub_100664AA4, v3, v2);
}

uint64_t sub_100664AA4()
{
  v28 = v0;
  if (*(v0[31] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController))
  {
    v1 = swift_task_alloc();
    v0[35] = v1;
    *v1 = v0;
    v1[1] = sub_100664F1C;

    return sub_10102D7D8();
  }

  else
  {

    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27, "Not showing undo menu", 21, 2u);
    StaticString.description.getter("dismissUndoMenu()", 17, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 2259;
    v15 = v27;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Not showing undo menu", 21, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("dismissUndoMenu()", 17, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Not showing undo menu", 21, 2);
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:2259 isFatal:0 format:v24 args:v21];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100664F1C()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_10066503C, v3, v2);
}

uint64_t sub_10066503C()
{

  sub_1006650A0();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1006650A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController);
  *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController) = 0;

  v2 = [objc_opt_self() sharedApplication];
  [v2 setApplicationSupportsShakeToEdit:1];

  v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isSuppressingBottomToolTrayForPresentationController;
  if (*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isSuppressingBottomToolTrayForPresentationController) == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomToolTray);
    if (v4)
    {
      [v4 setToolTrayHidden:0 animated:1];
    }

    *(v0 + v3) = 0;
  }
}

void sub_100665148(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1006651B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

void sub_1006651F4(uint64_t a1, uint64_t a2)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "Cancelled undo", 14, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1006650A0();
  }
}

void sub_1006652B4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken;
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_100641C1C(0, 0, v4, &unk_10146F8D8, v9);

  *(v1 + v6) = 0;

  v10 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert;
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert);
  if (v11)
  {
    v12 = *&v11[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert];
    if (v12)
    {
      v13 = swift_allocObject();
      v13[3] = 0;
      v13[4] = 0;
      v13[2] = v11;
      aBlock[4] = sub_100674A10;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_10187E380;
      v14 = _Block_copy(aBlock);
      v15 = v11;
      v16 = v12;

      [v16 dismissViewControllerAnimated:1 completion:v14];

      _Block_release(v14);
      v11 = *(v1 + v10);
    }
  }

  *(v1 + v10) = 0;
}

uint64_t sub_1006654F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100665590, v6, v5);
}

uint64_t sub_100665590()
{
  v1 = *(v0 + 24);
  if (v1)
  {

    return _swift_task_switch(sub_10066563C, v1, 0);
  }

  else
  {

    **(v0 + 16) = *(v0 + 24) == 0;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10066563C()
{
  [*(v0[3] + 112) cancel];
  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_1006656AC, v1, v2);
}

uint64_t sub_1006656AC()
{

  **(v0 + 16) = *(v0 + 24) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10066571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 472) = a6;
  *(v6 + 336) = a4;
  *(v6 + 344) = a5;
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  *(v6 + 352) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v6 + 360) = v7;
  *(v6 + 368) = *(v7 - 8);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = type metadata accessor for MainActor();
  *(v6 + 392) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 400) = v9;
  *(v6 + 408) = v8;

  return _swift_task_switch(sub_100665850, v9, v8);
}

uint64_t sub_100665850()
{
  v49 = v0;
  v1 = *(v0 + 336);
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken;
  if (*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken))
  {
    v46 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken;
    v47 = *(v0 + 336);
    v3 = objc_opt_self();

    v45 = v3;
    v4 = [v3 _atomicIncrementAssertCount];
    v48 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v48, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("didSubmit(url:didChange:)", 25, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 2347;
    v16 = v48;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("didSubmit(url:didChange:)", 25, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v25 = String._bridgeToObjectiveC()();

    [v45 handleFailureInFunction:v23 file:v24 lineNumber:2347 isFatal:0 format:v25 args:v22];

    v2 = v46;
    v1 = v47;
  }

  v26 = *(v0 + 360);
  v27 = *(v0 + 368);
  v29 = *(v0 + 344);
  v28 = *(v0 + 352);
  swift_unknownObjectWeakInit();
  sub_10000BE14(v29, v28, &unk_1019F33C0, &unk_101468A60);
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    v30 = *(v0 + 352);

    sub_10000CAAC(v30, &unk_1019F33C0, &unk_101468A60);
LABEL_11:
    sub_100666380(v0 + 320);
    swift_unknownObjectWeakDestroy();

    v35 = *(v0 + 8);

    return v35();
  }

  v31 = *(v0 + 472);
  (*(*(v0 + 368) + 32))(*(v0 + 376), *(v0 + 352), *(v0 + 360));
  if (v31 != 1)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

    goto LABEL_11;
  }

  if (*(v1 + v2))
  {
    v33 = *(v0 + 368);
    v32 = *(v0 + 376);
    v34 = *(v0 + 360);

    (*(v33 + 8))(v32, v34);
    goto LABEL_11;
  }

  v38 = *(v0 + 368);
  v37 = *(v0 + 376);
  v39 = *(v0 + 360);
  sub_101013118();
  sub_1005B981C(&unk_1019F6B30, &qword_10146F930);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10146C6B0;
  (*(v38 + 16))(v41 + v40, v37, v39);
  v42 = sub_100666548(v41, 0, 0);
  *(v0 + 416) = v42;
  v43 = v42;
  v44 = *(v0 + 336);

  *(v1 + v2) = v43;

  *(v0 + 424) = *(v44 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper);

  *(v0 + 432) = static MainActor.shared.getter();

  return _swift_task_switch(sub_100665FF4, v43, 0);
}

uint64_t sub_100665FF4()
{
  v0[55] = *(v0[52] + 112);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[56] = v2;
  v0[57] = v1;

  return _swift_task_switch(sub_10066607C, v2, v1);
}

uint64_t sub_10066607C()
{
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_100666128;
  v2 = *(v0 + 440);

  return sub_100658F70(v2);
}

uint64_t sub_100666128()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return _swift_task_switch(sub_100666248, v3, v2);
}

uint64_t sub_100666248()
{
  v1 = v0[55];

  v2 = v0[50];
  v3 = v0[51];

  return _swift_task_switch(sub_1006662D4, v2, v3);
}

uint64_t sub_1006662D4()
{

  sub_100666380((v0 + 40));

  (*(v0[46] + 8))(v0[47], v0[45]);
  swift_unknownObjectWeakDestroy();

  v1 = v0[1];

  return v1();
}

double sub_100666380(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      v5 = *&v4[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert];
      if (v5)
      {
        v6 = swift_allocObject();
        v6[3] = 0;
        v6[4] = 0;
        v6[2] = v4;
        aBlock[4] = sub_10067F3DC;
        aBlock[5] = v6;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_10187E650;
        v7 = _Block_copy(aBlock);
        v8 = v4;
        v4 = v5;

        [v4 dismissViewControllerAnimated:1 completion:v7];

        _Block_release(v7);
      }
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *&v9[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert];
    *&v9[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert] = 0;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    *&v11[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken] = 0;
  }

  return result;
}

uint64_t sub_100666548(char *a1, id a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v8 = Strong, v9 = [Strong editingCoordinator], v8, !v9))
  {
    sub_10067AC78();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    return a3;
  }

  v10 = *&v9[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

  if (!*(a1 + 2))
  {
    sub_10067AC78();
    swift_allocError();
    *v16 = 0;
LABEL_14:
    swift_willThrow();

    return a3;
  }

  if (a2 || (a3 & 1) != 0)
  {
    v17 = a2;
    swift_bridgeObjectRetain_n();
LABEL_12:
    v18 = objc_allocWithZone(CRLMultipleItemImporter);
    type metadata accessor for URL();
    v19 = v10;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [v18 initWithURLs:isa boardItemFactory:v19 importAnimatedGIFsAsImages:0];

    type metadata accessor for CRLBoardItemInsertingCancellable();
    a3 = swift_allocObject();
    swift_defaultActor_initialize();

    *(a3 + 112) = v21;
    *(a3 + 120) = a2;
    *(a3 + 128) = a1;
    return a3;
  }

  v11 = objc_allocWithZone(CRLTemporaryDirectory);
  v12 = String._bridgeToObjectiveC()();
  v24 = 0;
  a2 = [v11 initWithSignature:v12 error:&v24];

  a3 = v24;
  if (!a2)
  {
    v22 = v24;
    _convertNSErrorToError(_:)();

    goto LABEL_14;
  }

  v13 = v24;
  a3 = a2;
  v14 = sub_100674A1C(a1, a3);
  if (!v3)
  {
    a1 = v14;

    goto LABEL_12;
  }

  return a3;
}

double sub_1006667EC(uint64_t a1, char a2)
{
  v5 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v20 - v8;
  v10 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_10000BE14(a1, v9, &unk_1019F33C0, &unk_101468A60);
  type metadata accessor for MainActor();
  v14 = v2;
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = v16 + v7;
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v14;
  sub_10003DFF8(v9, v18 + v16, &unk_1019F33C0, &unk_101468A60);
  *(v18 + v17) = a2;
  sub_10064191C(0, 0, v12, &unk_10146F910, v18);

  return result;
}

void sub_1006669F8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if (qword_1019F21A0 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlInsertMedia;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v8 = sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(inited + 56) = v8;
    v9 = sub_10000FE24(&unk_101A10A90, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(inited + 32) = a1;
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 64) = v9;
    *(inited + 72) = v4;
    v10 = a1;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v11, "Photo picker (%p) picked %d result(s).", 38, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v12 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress;
    if (*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress))
    {
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_10146C6B0;
      *(v13 + 56) = v8;
      *(v13 + 64) = v9;
      *(v13 + 32) = v10;
      v14 = v10;
      v15 = static os_log_type_t.default.getter();
      sub_100005404(v6, &_mh_execute_header, v15, "Already loading. Ignoring results from photo picker (%p).", 57, 2, v13);
      swift_setDeallocating();
      sub_100005070((v13 + 32));
    }

    else
    {
      v23 = objc_opt_self();
      v24 = [v23 supportedImageTypes];
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = [v23 supportedMovieTypes];
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v2;
      sub_100798D48(v27);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = v10;
      v31[4] = v29;
      v31[5] = a2;
      v32 = v10;

      v34 = PHPickerViewController.crl_loadFileRepresentations(for:supportedTypeIdentifiers:completionHandler:)(v33, v25, sub_10067AD14, v31);

      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      *(v36 + 24) = v35;
      aBlock[4] = sub_10067AD20;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_10187E718;
      v37 = _Block_copy(aBlock);

      sub_10002E7A8(sub_10067AD20, v36);

      [v34 setCancellationHandler:v37];
      _Block_release(v37);

      v38 = *(v28 + v12);
      *(v28 + v12) = v34;
    }
  }

  else
  {
    if (qword_1019F21A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlInsertMedia;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_10146C6B0;
    *(v17 + 56) = sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(v17 + 64) = sub_10000FE24(&unk_101A10A90, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(v17 + 32) = a1;
    v18 = a1;
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v16, &_mh_execute_header, v19, "Dismissing photo picker (%p) with empty results.", 48, 2, v17);
    swift_setDeallocating();
    sub_100005070((v17 + 32));
    v20 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress;
    v21 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress);
    if (v21)
    {
      [v21 cancel];
      v22 = *(v2 + v20);
      *(v2 + v20) = 0;
    }

    else
    {
      [v18 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100666F7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_10098EABC(&_mh_execute_header, "picker(_:didFinishPicking:)", 27, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2, 2407);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *&Strong[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress];
    *&Strong[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress] = 0;
  }

  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a5;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a1;
  v16[7] = a3;
  v16[8] = a7;
  aBlock[4] = sub_10067AD28;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10187E768;
  v17 = _Block_copy(aBlock);

  v18 = a5;

  v19 = a1;
  swift_errorRetain();

  [v18 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

void sub_100667130(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    if (qword_1019F21A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlInsertMedia;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(inited + 64) = sub_10000FE24(&unk_101A10A90, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(inited + 32) = a2;
    v19 = a2;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v17, &_mh_execute_header, v20, "Assets ready but photo picker (%p) loading progress was cancelled.", 66, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
  }

  else if (a3)
  {
    v21 = *(a3 + 16);
    if (v21)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v47 = Strong;
        v48 = a7;
        v49 = a4;
        if (qword_1019F21A0 != -1)
        {
          swift_once();
        }

        v46 = static OS_os_log.crlInsertMedia;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v23 = swift_initStackObject();
        *(v23 + 16) = xmmword_10146BDE0;
        *(v23 + 56) = &type metadata for Int;
        *(v23 + 64) = &protocol witness table for Int;
        *(v23 + 32) = v21;
        *(v23 + 96) = sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
        *(v23 + 104) = sub_10000FE24(&unk_101A10A90, &unk_1019F6BC0, PHPickerViewController_ptr);
        *(v23 + 72) = a2;
        v24 = a2;
        v25 = static os_log_type_t.default.getter();
        sub_100005404(v46, &_mh_execute_header, v25, "Inserting %d file URL(s) from photo picker (%p).", 48, 2, v23);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v26 = v47;
        v27 = sub_101013118();
        static TaskPriority.userInitiated.getter();
        v28 = type metadata accessor for TaskPriority();
        (*(*(v28 - 8) + 56))(v16, 0, 1, v28);
        type metadata accessor for MainActor();
        v29 = a5;

        v30 = static MainActor.shared.getter();
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = &protocol witness table for MainActor;
        v31[4] = v27;
        v31[5] = a3;
        v31[7] = 0;
        v31[8] = 0;
        v31[6] = a5;
        sub_10064191C(0, 0, v16, &unk_1014D70A0, v31);

        a7 = v48;
      }
    }
  }

  if (a6)
  {
    v50 = a6;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    sub_100006370(0, &qword_1019F6BD0, NSError_ptr);
    if (swift_dynamicCast())
    {
      v32 = v51;
      if (([v51 crl_isCancelError] & 1) == 0)
      {
        if (qword_1019F21A0 != -1)
        {
          swift_once();
        }

        v33 = static OS_os_log.crlInsertMedia;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v34 = swift_initStackObject();
        *(v34 + 16) = xmmword_10146C6B0;
        v32 = v32;
        v35 = [v32 description];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_1000053B0();
        *(v34 + 32) = v36;
        *(v34 + 40) = v38;
        v39 = static os_log_type_t.error.getter();
        sub_100005404(v33, &_mh_execute_header, v39, "Error loading files from photo picker: %@", 41, 2, v34);
        swift_setDeallocating();
        sub_100005070((v34 + 32));
        v40 = sub_101307814(a7);
        swift_beginAccess();
        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          v43 = *(v41 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);

          v40 = v40;
          v44 = _convertErrorToNSError(_:)();

          [v43 presentError:v44 completionHandler:0];
        }
      }
    }
  }
}

void sub_100667724(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress];
    *&Strong[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress] = 0;
  }
}

void sub_1006678BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

void sub_100667940(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10066799C(a2);
  }
}

void sub_10066799C(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v245 - v4;
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v6 - 8);
  v253 = &v245 - v7;
  v8 = type metadata accessor for URL();
  v254 = *(v8 - 8);
  __chkstk_darwin(v8);
  v251 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v252 = &v245 - v11;
  __chkstk_darwin(v12);
  v14 = &v245 - v13;
  __chkstk_darwin(v15);
  *&v255 = &v245 - v16;
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v245 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v21 = sub_10006E4C8(UIImagePickerControllerMediaType), (v22 & 1) == 0) || (sub_100064288(*(a1 + 56) + 32 * v21, &v259), (swift_dynamicCast() & 1) == 0))
  {
    *&v255 = objc_opt_self();
    v30 = [v255 _atomicIncrementAssertCount];
    *&v259 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v259, "No media type", 13, 2u);
    StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v30;
    v39 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v39;
    v40 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v40;
    *(inited + 72) = v31;
    *(inited + 136) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 112) = v34;
    *(inited + 120) = v36;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v41;
    *(inited + 152) = 2485;
    v42 = v259;
    *(inited + 216) = v39;
    *(inited + 224) = v40;
    *(inited + 192) = v42;
    v43 = v31;
    v44 = v42;
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v46, "No media type", 13, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No media type", 13, 2);
    v51 = String._bridgeToObjectiveC()();

    [v255 handleFailureInFunction:v49 file:v50 lineNumber:2485 isFatal:0 format:v51 args:v48];

    return;
  }

  v248 = v14;
  v249 = v8;
  v246 = v5;
  v247 = v1;
  v23 = *(&v257 + 1);
  v250 = v257;
  v24 = String._bridgeToObjectiveC()();
  static UTType.image.getter();
  UTType.identifier.getter();
  v25 = *(v18 + 8);
  v25(v20, v17);
  v26 = String._bridgeToObjectiveC()();

  v27 = [v24 crl_conformsToUTI:v26];

  if (v27)
  {

    if (*(a1 + 16))
    {
      v28 = sub_10006E4C8(UIImagePickerControllerEditedImage);
      if (v29)
      {
        sub_100064288(*(a1 + 56) + 32 * v28, &v257);
        sub_10000BF3C(&v257, &v259);
LABEL_57:
        if (*(&v260 + 1))
        {
          sub_100006370(0, &qword_1019F6EC8, UIImage_ptr);
          if (swift_dynamicCast())
          {
            v80 = v257;
            v149 = UIImageJPEGRepresentation(v257, 0.8);
            if (v149)
            {
              v150 = v149;
              v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v76 = v151;

              v152 = [objc_opt_self() mainBundle];
              v153 = String._bridgeToObjectiveC()();
              v154 = String._bridgeToObjectiveC()();
              v155 = [v152 localizedStringForKey:v153 value:v154 table:0];

              v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v158 = v157;

              *&v259 = 1735420462;
              *(&v259 + 1) = 0xE400000000000000;
              *&v257 = v156;
              *(&v257 + 1) = v158;
              *&v257 = String.init<A>(_:)();
              *(&v257 + 1) = v159;
              String.append<A>(contentsOf:)();
              v160 = v257;
              sub_1005B981C(&qword_1019F6ED0, &qword_10146FC60);
              v161 = swift_initStackObject();
              v255 = xmmword_10146C6B0;
              *(v161 + 16) = xmmword_10146C6B0;
              *(v161 + 32) = v81;
              v77 = (v161 + 32);
              *(v161 + 40) = v76;
              *(v161 + 48) = v160;
              sub_100024E98(v81, v76);
              sub_100658948(v161);
              goto LABEL_107;
            }

            *&v255 = v80;
            v254 = objc_opt_self();
            v206 = [v254 _atomicIncrementAssertCount];
            *&v259 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v259, "Unable to get image data", 24, 2u);
            StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
            v207 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
            v208 = String._bridgeToObjectiveC()();

            v209 = [v208 lastPathComponent];

            v210 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v212 = v211;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v213 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v214 = swift_allocObject();
            *(v214 + 16) = xmmword_10146CA70;
            *(v214 + 56) = &type metadata for Int32;
            *(v214 + 64) = &protocol witness table for Int32;
            *(v214 + 32) = v206;
            v215 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(v214 + 96) = v215;
            v216 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
            *(v214 + 104) = v216;
            *(v214 + 72) = v207;
            *(v214 + 136) = &type metadata for String;
            v217 = sub_1000053B0();
            *(v214 + 112) = v210;
            *(v214 + 120) = v212;
            *(v214 + 176) = &type metadata for UInt;
            *(v214 + 184) = &protocol witness table for UInt;
            *(v214 + 144) = v217;
            *(v214 + 152) = 2491;
            v218 = v259;
            *(v214 + 216) = v215;
            *(v214 + 224) = v216;
            *(v214 + 192) = v218;
            v219 = v207;
            v220 = v218;
            v221 = static os_log_type_t.error.getter();
            sub_100005404(v213, &_mh_execute_header, v221, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v214);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v222 = static os_log_type_t.error.getter();
            sub_100005404(v213, &_mh_execute_header, v222, "Unable to get image data", 24, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v223 = swift_allocObject();
            v223[2] = 8;
            v223[3] = 0;
            v223[4] = 0;
            v223[5] = 0;
            v224 = __VaListBuilder.va_list()();
            StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
            v199 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
            v200 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Unable to get image data", 24, 2);
            v201 = String._bridgeToObjectiveC()();

            [v254 handleFailureInFunction:v199 file:v200 lineNumber:2491 isFatal:0 format:v201 args:v224];

            goto LABEL_90;
          }
        }

        else
        {
          sub_10000CAAC(&v259, &unk_1019F4D00, &unk_10146E7F0);
        }

        v253 = objc_opt_self();
        v162 = [v253 _atomicIncrementAssertCount];
        *&v259 = [objc_allocWithZone(NSString) init];
        v163 = _swiftEmptyArrayStorage;
        sub_100604538(_swiftEmptyArrayStorage, &v259, "Bad image info", 14, 2u);
        StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
        *&v255 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
        v164 = String._bridgeToObjectiveC()();

        v165 = [v164 lastPathComponent];

        v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v167 = v166;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v168 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v169 = swift_allocObject();
        *(v169 + 16) = xmmword_10146CA70;
        *(v169 + 56) = &type metadata for Int32;
        *(v169 + 64) = &protocol witness table for Int32;
        *(v169 + 32) = v162;
        v170 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v169 + 96) = v170;
        v171 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(v169 + 104) = v171;
        v172 = v255;
        *(v169 + 72) = v255;
        *(v169 + 136) = &type metadata for String;
        v173 = sub_1000053B0();
        *(v169 + 112) = v254;
        *(v169 + 120) = v167;
        *(v169 + 176) = &type metadata for UInt;
        *(v169 + 184) = &protocol witness table for UInt;
        *(v169 + 144) = v173;
        *(v169 + 152) = 2490;
        v174 = v259;
        *(v169 + 216) = v170;
        *(v169 + 224) = v171;
        *(v169 + 192) = v174;
        v175 = v172;
        v176 = v174;
        v177 = static os_log_type_t.error.getter();
        sub_100005404(v168, &_mh_execute_header, v177, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v169);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v178 = static os_log_type_t.error.getter();
        sub_100005404(v168, &_mh_execute_header, v178, "Bad image info", 14, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v179 = swift_allocObject();
        v179[2] = 8;
        v179[3] = 0;
        v180 = v179 + 3;
        v179[4] = 0;
        v179[5] = 0;
        v181 = _swiftEmptyArrayStorage[2];
        if (!v181)
        {
LABEL_89:
          v198 = __VaListBuilder.va_list()();
          StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
          v199 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
          v200 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Bad image info", 14, 2);
          v201 = String._bridgeToObjectiveC()();

          [v253 handleFailureInFunction:v199 file:v200 lineNumber:2490 isFatal:0 format:v201 args:v198];

LABEL_90:

          if (qword_1019F2098 != -1)
          {
LABEL_114:
            swift_once();
          }

          v202 = static OS_os_log.crlDefault;
          v203 = static os_log_type_t.error.getter();
          sub_100005404(v202, &_mh_execute_header, v203, "No image to insert", 18, 2, _swiftEmptyArrayStorage);
          return;
        }

        v182 = 0;
        while (1)
        {
          sub_100020E58(&v163[5 * v182 + 4], v163[5 * v182 + 7]);
          v183 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v184 = *v180;
          v185 = *(v183 + 16);
          v85 = __OFADD__(*v180, v185);
          v186 = *v180 + v185;
          if (v85)
          {
            __break(1u);
            goto LABEL_109;
          }

          v187 = v179[4];
          if (v187 >= v186)
          {
            goto LABEL_81;
          }

          if (v187 + 0x4000000000000000 < 0)
          {
            goto LABEL_110;
          }

          v188 = v179[5];
          if (2 * v187 > v186)
          {
            v186 = 2 * v187;
          }

          v179[4] = v186;
          if ((v186 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_111;
          }

          v189 = v163;
          v190 = v183;
          v191 = swift_slowAlloc();
          v192 = v191;
          v179[5] = v191;
          if (v188)
          {
            break;
          }

          v183 = v190;
          v163 = v189;
          if (!v192)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_82:
          v194 = *(v183 + 16);
          if (v194)
          {
            v195 = (v183 + 32);
            v196 = *v180;
            while (1)
            {
              v197 = *v195++;
              *&v192[8 * v196] = v197;
              v196 = *v180 + 1;
              if (__OFADD__(*v180, 1))
              {
                break;
              }

              *v180 = v196;
              if (!--v194)
              {
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_100:
            v259 = 0u;
            v260 = 0u;
            goto LABEL_55;
          }

LABEL_66:

          if (++v182 == v181)
          {
            goto LABEL_89;
          }
        }

        if (v191 != v188 || v191 >= &v188[8 * v184])
        {
          memmove(v191, v188, 8 * v184);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v183 = v190;
        v163 = v189;
LABEL_81:
        v192 = v179[5];
        if (!v192)
        {
          goto LABEL_88;
        }

        goto LABEL_82;
      }

      v146 = *(a1 + 16);
      v102 = 0uLL;
      v257 = 0u;
      v258 = 0u;
      if (v146)
      {
        v147 = sub_10006E4C8(UIImagePickerControllerOriginalImage);
        if ((v148 & 1) == 0)
        {
          goto LABEL_100;
        }

        sub_100064288(*(a1 + 56) + 32 * v147, &v259);
LABEL_55:
        if (*(&v258 + 1))
        {
          sub_10000CAAC(&v257, &unk_1019F4D00, &unk_10146E7F0);
        }

        goto LABEL_57;
      }
    }

    else
    {
      v102 = 0uLL;
      v257 = 0u;
      v258 = 0u;
    }

    v259 = v102;
    v260 = v102;
    goto LABEL_55;
  }

  v52 = String._bridgeToObjectiveC()();
  static UTType.movie.getter();
  UTType.identifier.getter();
  v25(v20, v17);
  v53 = String._bridgeToObjectiveC()();

  v54 = [v52 crl_conformsToUTI:v53];

  if (!v54)
  {
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_10146C6B0;
    *(v57 + 56) = &type metadata for String;
    v58 = sub_1000053B0();
    *(v57 + 32) = v250;
    v254 = v58;
    *&v255 = v57 + 32;
    *(v57 + 64) = v58;
    *(v57 + 40) = v23;
    v252 = objc_opt_self();
    v59 = [v252 _atomicIncrementAssertCount];
    *&v259 = [objc_allocWithZone(NSString) init];
    v253 = v57;
    sub_100604538(v57, &v259, "Bad media type: %@", 18, 2u);
    StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v61 = String._bridgeToObjectiveC()();

    v62 = [v61 lastPathComponent];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v66 = static OS_os_log.crlAssert;
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_10146CA70;
    *(v67 + 56) = &type metadata for Int32;
    *(v67 + 64) = &protocol witness table for Int32;
    *(v67 + 32) = v59;
    v68 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v67 + 96) = v68;
    v69 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v67 + 72) = v60;
    v70 = v254;
    *(v67 + 136) = &type metadata for String;
    *(v67 + 144) = v70;
    *(v67 + 104) = v69;
    *(v67 + 112) = v63;
    *(v67 + 120) = v65;
    *(v67 + 176) = &type metadata for UInt;
    *(v67 + 184) = &protocol witness table for UInt;
    *(v67 + 152) = 2517;
    v71 = v259;
    *(v67 + 216) = v68;
    *(v67 + 224) = v69;
    *(v67 + 192) = v71;
    v72 = v60;
    v73 = v71;
    v74 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);
    swift_setDeallocating();
    v254 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v75 = static os_log_type_t.error.getter();
    v76 = v253;
    sub_100005404(v66, &_mh_execute_header, v75, "Bad media type: %@", 18, 2, v253);

    type metadata accessor for __VaListBuilder();
    v77 = swift_allocObject();
    v77[2] = 8;
    v77[3] = 0;
    v78 = v77 + 3;
    v77[4] = 0;
    v77[5] = 0;
    v79 = v76[2];
    if (!v79)
    {
LABEL_42:
      v98 = __VaListBuilder.va_list()();
      StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
      v99 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
      v100 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Bad media type: %@", 18, 2);
      v101 = String._bridgeToObjectiveC()();

      [v252 handleFailureInFunction:v99 file:v100 lineNumber:2517 isFatal:0 format:v101 args:v98];

      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }

    v80 = 0;
    v81 = 40;
    while (1)
    {
      sub_100020E58((v255 + 40 * v80), *(v255 + 40 * v80 + 24));
      v82 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v83 = *v78;
      v84 = *(v82 + 16);
      v85 = __OFADD__(*v78, v84);
      v86 = *v78 + v84;
      if (v85)
      {
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
        goto LABEL_114;
      }

      v87 = v77[4];
      if (v87 >= v86)
      {
        goto LABEL_34;
      }

      if (v87 + 0x4000000000000000 < 0)
      {
        goto LABEL_112;
      }

      v88 = v77[5];
      if (2 * v87 > v86)
      {
        v86 = 2 * v87;
      }

      v77[4] = v86;
      if ((v86 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_113;
      }

      v89 = v76;
      v90 = v82;
      v91 = swift_slowAlloc();
      v92 = v91;
      v77[5] = v91;
      if (v88)
      {
        break;
      }

      v82 = v90;
      v76 = v89;
      v81 = 40;
      if (!v92)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_35:
      v94 = *(v82 + 16);
      if (v94)
      {
        v95 = (v82 + 32);
        v96 = *v78;
        while (1)
        {
          v97 = *v95++;
          *&v92[8 * v96] = v97;
          v96 = *v78 + 1;
          if (__OFADD__(*v78, 1))
          {
            break;
          }

          *v78 = v96;
          if (!--v94)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_107:

        sub_10002640C(v81, v76);
        swift_setDeallocating();
        sub_10000CAAC(v77, &qword_1019F6ED8, &qword_10146FC68);
        return;
      }

LABEL_19:

      v80 = v80 + 1;
      if (v80 == v79)
      {
        goto LABEL_42;
      }
    }

    if (v91 != v88 || v91 >= &v88[8 * v83])
    {
      memmove(v91, v88, 8 * v83);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v82 = v90;
    v76 = v89;
    v81 = 40;
LABEL_34:
    v92 = v77[5];
    if (!v92)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (*(a1 + 16) && (v55 = sub_10006E4C8(UIImagePickerControllerMediaURL), (v56 & 1) != 0))
  {
    sub_100064288(*(a1 + 56) + 32 * v55, &v257);
  }

  else
  {
    v257 = 0u;
    v258 = 0u;
    v250 = objc_opt_self();
    v103 = [v250 _atomicIncrementAssertCount];
    v256 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v256, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
    v104 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v105 = String._bridgeToObjectiveC()();

    v106 = [v105 lastPathComponent];

    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v110 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_10146CA70;
    *(v111 + 56) = &type metadata for Int32;
    *(v111 + 64) = &protocol witness table for Int32;
    *(v111 + 32) = v103;
    v112 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v111 + 96) = v112;
    v113 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v111 + 104) = v113;
    v114 = v104;
    *(v111 + 72) = v104;
    *(v111 + 136) = &type metadata for String;
    v115 = sub_1000053B0();
    *(v111 + 112) = v107;
    *(v111 + 120) = v109;
    *(v111 + 176) = &type metadata for UInt;
    *(v111 + 184) = &protocol witness table for UInt;
    *(v111 + 144) = v115;
    *(v111 + 152) = 2502;
    v116 = v256;
    *(v111 + 216) = v112;
    *(v111 + 224) = v113;
    *(v111 + 192) = v116;
    v117 = v114;
    v118 = v116;
    v119 = static os_log_type_t.error.getter();
    sub_100005404(v110, &_mh_execute_header, v119, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v111);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v120 = static os_log_type_t.error.getter();
    sub_100005404(v110, &_mh_execute_header, v120, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v121 = swift_allocObject();
    v121[2] = 8;
    v121[3] = 0;
    v121[4] = 0;
    v121[5] = 0;
    v122 = __VaListBuilder.va_list()();
    StaticString.description.getter("insertImagePickerMediaWithInfo(_:)", 34, 2);
    v123 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v124 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v125 = String._bridgeToObjectiveC()();

    [v250 handleFailureInFunction:v123 file:v124 lineNumber:2502 isFatal:0 format:v125 args:v122];
  }

  v259 = v257;
  v260 = v258;
  v127 = v248;
  v126 = v249;
  v128 = v254;
  v129 = v255;
  v130 = v253;
  if (*(&v258 + 1))
  {
    v131 = swift_dynamicCast();
    v128[7](v130, v131 ^ 1u, 1, v126);
    if ((v128[6])(v130, 1, v126) != 1)
    {
      (v128[4])(v129, v130, v126);
      v132 = [objc_opt_self() mainBundle];
      v133 = String._bridgeToObjectiveC()();
      v134 = String._bridgeToObjectiveC()();
      v135 = [v132 localizedStringForKey:v133 value:v134 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v251;
      URL.deletingLastPathComponent()();
      v137 = v252;
      URL.appendingPathComponent(_:)();

      v138 = v136;
      v139 = v128[1];
      v139(v138, v126);
      URL.pathExtension.getter();
      URL.appendingPathExtension(_:)();

      v139(v137, v126);
      v140 = objc_opt_self();
      v141 = [v140 defaultManager];
      URL._bridgeToObjectiveC()(v142);
      v144 = v143;
      *&v259 = 0;
      LODWORD(v133) = [v141 removeItemAtURL:v143 error:&v259];

      if (v133)
      {
        v145 = v259;
      }

      else
      {
        v225 = v259;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v226 = [v140 defaultManager];
      v227 = v255;
      URL._bridgeToObjectiveC()(v228);
      v230 = v229;
      URL._bridgeToObjectiveC()(v231);
      v233 = v232;
      *&v259 = 0;
      v234 = [v226 moveItemAtURL:v230 toURL:v232 error:&v259];

      if (v234)
      {
        v235 = v259;
        v139(v227, v126);
        v236 = v254;
        (*(v254 + 2))(v227, v127, v126);
      }

      else
      {
        v237 = v259;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v236 = v254;
      }

      v238 = sub_101013118();
      sub_1005B981C(&unk_1019F6B30, &qword_10146F930);
      v239 = (*(v236 + 80) + 32) & ~*(v236 + 80);
      v240 = swift_allocObject();
      *(v240 + 16) = xmmword_10146C6B0;
      v236[2](v240 + v239, v227, v126);
      v241 = v246;
      static TaskPriority.userInitiated.getter();
      v242 = type metadata accessor for TaskPriority();
      (*(*(v242 - 8) + 56))(v241, 0, 1, v242);
      type metadata accessor for MainActor();

      v243 = static MainActor.shared.getter();
      v244 = swift_allocObject();
      v244[2] = v243;
      v244[3] = &protocol witness table for MainActor;
      v244[4] = v238;
      v244[5] = v240;
      v244[7] = 0;
      v244[8] = 0;
      v244[6] = 0;
      sub_10064191C(0, 0, v241, &unk_10146FC58, v244);

      v139(v127, v126);
      v139(v227, v126);
      return;
    }
  }

  else
  {
    sub_10000CAAC(&v259, &unk_1019F4D00, &unk_10146E7F0);
    v128[7](v130, 1, 1, v126);
  }

  sub_10000CAAC(v130, &unk_1019F33C0, &unk_101468A60);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v204 = static OS_os_log.crlDefault;
  v205 = static os_log_type_t.error.getter();
  sub_100005404(v204, &_mh_execute_header, v205, "No movie URL to insert", 22, 2, _swiftEmptyArrayStorage);
}

void sub_100669DB4(char a1, char *a2)
{
  if (a1)
  {
    v22 = [objc_allocWithZone(VNDocumentCameraViewController) init];
    [v22 setDelegate:a2];
    swift_unknownObjectWeakAssign();
    [a2 presentViewController:v22 animated:1 completion:0];
  }

  else
  {
    v3 = objc_opt_self();
    v4 = [v3 mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = [v3 mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    v15 = [v3 mainBundle];
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();

    aBlock[4] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_10187F118;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    [v14 addAction:v21];
    [a2 presentViewController:v14 animated:1 completion:0];
  }
}

void sub_10066A1A4(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [a2 title];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = [a2 title];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {

    v16 = v7;
    v18 = v9;
  }

  v19 = [a2 pageCount];
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v20 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v19;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v16;
  *(inited + 80) = v18;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v20, &_mh_execute_header, v22, "Document camera finished %d page scan with title: %@", 52, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v19;
  v24[3] = a2;
  v24[4] = v7;
  v24[5] = v9;
  v24[6] = v23;
  aBlock[4] = sub_10067EAF0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10187F438;
  v25 = _Block_copy(aBlock);
  v26 = a2;

  [v28 dismissViewControllerAnimated:1 completion:v25];
  _Block_release(v25);
}

uint64_t sub_10066A4F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v143 = a5;
  v149 = a3;
  v150 = a4;
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v142 = &v141 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v141 - v14;
  v16 = type metadata accessor for UTType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = [objc_allocWithZone(PDFDocument) init];
  if (a1 < 0)
  {
    goto LABEL_53;
  }

  v144 = v19;
  v145 = v17;
  v146 = v16;
  v147 = v12;
  v148 = v10;
  v151 = v15;
  v152 = v9;
  if (a1)
  {
    v20 = 0;
    v15 = 0;
    v21 = &selRef_editAccessibilityDescription_;
    v12 = CSSearchableItem_ptr;
    v22 = &selRef_ignoreUrl_;
    v153 = xmmword_10146CA70;
    v154 = a1;
    v155 = a2;
    while (1)
    {
      v17 = [a2 v21[405]];
      v25 = [objc_allocWithZone(*(v12 + 101)) v22[397]];
      if (!v25)
      {
        v160 = v17;
        v159 = objc_opt_self();
        v26 = [v159 _atomicIncrementAssertCount];
        v162[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v162, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("documentCameraViewController(_:didFinishWith:)", 46, 2);
        v158 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
        v27 = String._bridgeToObjectiveC()();

        v28 = [v27 lastPathComponent];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v156 = v30;
        v157 = v29;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v31 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = v153;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v26;
        v33 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v33;
        v34 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(inited + 104) = v34;
        v35 = v158;
        *(inited + 72) = v158;
        *(inited + 136) = &type metadata for String;
        v36 = sub_1000053B0();
        v37 = v156;
        *(inited + 112) = v157;
        *(inited + 120) = v37;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v36;
        *(inited + 152) = 2565;
        v38 = v162[0];
        *(inited + 216) = v33;
        *(inited + 224) = v34;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v38;
        v39 = v35;
        v40 = v38;
        v41 = static os_log_type_t.error.getter();
        sub_100005404(v31, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v42 = static os_log_type_t.error.getter();
        sub_100005404(v31, &_mh_execute_header, v42, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v43 = swift_allocObject();
        v43[2] = 8;
        v43[3] = 0;
        v43[4] = 0;
        v43[5] = 0;
        v44 = __VaListBuilder.va_list()();
        StaticString.description.getter("documentCameraViewController(_:didFinishWith:)", 46, 2);
        v45 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
        v46 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v47 = String._bridgeToObjectiveC()();

        [v159 handleFailureInFunction:v45 file:v46 lineNumber:2565 isFatal:0 format:v47 args:v44];

        a1 = v154;
        a2 = v155;
        v21 = &selRef_editAccessibilityDescription_;
        v12 = CSSearchableItem_ptr;
        v22 = &selRef_ignoreUrl_;
        goto LABEL_5;
      }

      v23 = v25;
      [v161 insertPage:v25 atIndex:v20];

      v24 = __OFADD__(v20++, 1);
      if (v24)
      {
        break;
      }

LABEL_5:
      if (a1 == ++v15)
      {
        goto LABEL_10;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
LABEL_14:
    v65 = static OS_os_log.crlAssert;
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_10146CA70;
    *(v66 + 56) = &type metadata for Int32;
    *(v66 + 64) = &protocol witness table for Int32;
    *(v66 + 32) = v15;
    v67 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v66 + 96) = v67;
    v68 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    v69 = v158;
    *(v66 + 72) = v158;
    v70 = v159;
    *(v66 + 136) = &type metadata for String;
    *(v66 + 144) = v70;
    *(v66 + 104) = v68;
    *(v66 + 112) = a1;
    *(v66 + 120) = v17;
    *(v66 + 176) = &type metadata for UInt;
    *(v66 + 184) = &protocol witness table for UInt;
    *(v66 + 152) = 2575;
    v71 = v162[0];
    *(v66 + 216) = v67;
    *(v66 + 224) = v68;
    *(v66 + 192) = v71;
    v72 = v69;
    v73 = v71;
    v74 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v66);
    swift_setDeallocating();
    v159 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v75 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v75, "Error creating temporary directory: %@", 38, 2, v12);

    type metadata accessor for __VaListBuilder();
    v76 = swift_allocObject();
    v76[2] = 8;
    v76[3] = 0;
    v77 = v76 + 3;
    v76[4] = 0;
    v76[5] = 0;
    v17 = *(v12 + 2);
    if (v17)
    {
      v78 = 0;
      while (1)
      {
        v79 = &v160[40 * v78];
        a1 = *(v79 + 4);
        sub_100020E58(v79, *(v79 + 3));
        v80 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v15 = *v77;
        v81 = *(v80 + 16);
        v24 = __OFADD__(*v77, v81);
        v82 = *v77 + v81;
        if (v24)
        {
          goto LABEL_50;
        }

        v83 = v76[4];
        if (v83 >= v82)
        {
          goto LABEL_31;
        }

        if (v83 + 0x4000000000000000 < 0)
        {
          goto LABEL_51;
        }

        a1 = v76[5];
        if (2 * v83 > v82)
        {
          v82 = 2 * v83;
        }

        v76[4] = v82;
        if ((v82 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_52;
        }

        v84 = v12;
        v85 = v80;
        v86 = swift_slowAlloc();
        v87 = v86;
        v76[5] = v86;
        if (a1)
        {
          break;
        }

        v80 = v85;
        v12 = v84;
        if (!v87)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_32:
        v89 = *(v80 + 16);
        if (v89)
        {
          v90 = (v80 + 32);
          v91 = *v77;
          while (1)
          {
            v92 = *v90++;
            v87[v91] = v92;
            v91 = *v77 + 1;
            if (__OFADD__(*v77, 1))
            {
              break;
            }

            *v77 = v91;
            if (!--v89)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_49;
        }

LABEL_16:

        if (++v78 == v17)
        {
          goto LABEL_39;
        }
      }

      if (v86 != a1 || v86 >= a1 + 8 * v15)
      {
        memmove(v86, a1, 8 * v15);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v80 = v85;
      v12 = v84;
LABEL_31:
      v87 = v76[5];
      if (!v87)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

LABEL_39:
    v93 = __VaListBuilder.va_list()();
    StaticString.description.getter("documentCameraViewController(_:didFinishWith:)", 46, 2);
    v94 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
    v95 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Error creating temporary directory: %@", 38, 2);
    v96 = String._bridgeToObjectiveC()();

    [v156 handleFailureInFunction:v94 file:v95 lineNumber:2575 isFatal:0 format:v96 args:v93];

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
LABEL_10:
    v48 = objc_allocWithZone(CRLTemporaryDirectory);
    v49 = String._bridgeToObjectiveC()();
    v162[0] = 0;
    v50 = [v48 initWithSignature:v49 error:v162];

    v51 = v162[0];
    if (!v50)
    {
      v15 = v162[0];
      v57 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v12 = swift_initStackObject();
      *(v12 + 1) = xmmword_10146C6B0;
      v162[0] = v57;
      v157 = v57;
      swift_errorRetain();
      sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
      v58 = String.init<A>(describing:)();
      v60 = v59;
      *(v12 + 7) = &type metadata for String;
      v61 = sub_1000053B0();
      *(v12 + 4) = v58;
      v159 = v61;
      v160 = v12 + 32;
      *(v12 + 8) = v61;
      *(v12 + 5) = v60;
      v156 = objc_opt_self();
      LODWORD(v15) = [v156 _atomicIncrementAssertCount];
      v162[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(v12, v162, "Error creating temporary directory: %@", 38, 2u);
      StaticString.description.getter("documentCameraViewController(_:didFinishWith:)", 46, 2);
      v158 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
      v62 = String._bridgeToObjectiveC()();

      v63 = [v62 lastPathComponent];

      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v64;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_14;
    }

    v160 = v50;
    v52 = v51;
    v53 = String._bridgeToObjectiveC()();
    v54 = v144;
    static UTType.pdf.getter();
    UTType.preferredFilenameExtension.getter();
    (*(v145 + 1))(v54, v146);
    v55 = String._bridgeToObjectiveC()();

    v56 = [v53 stringByAppendingPathExtension:v55];

    if (v56)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    v99 = v151;
    v98 = v152;
    v100 = v148;
    v101 = v160;
    v102 = [v160 URL];

    v103 = v147;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.appendingPathComponent(_:isDirectory:)();

    v104 = *(v100 + 8);
    v104(v103, v98);
    URL._bridgeToObjectiveC()(v105);
    v107 = v106;
    LOBYTE(v103) = [v161 writeToURL:v106];

    if (v103)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v109 = Strong;
        v110 = sub_101013118();

        sub_1005B981C(&unk_1019F6B30, &qword_10146F930);
        v111 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v112 = swift_allocObject();
        v159 = v104;
        v113 = v112;
        *(v112 + 16) = xmmword_10146C6B0;
        (*(v100 + 16))(v112 + v111, v99, v98);
        v114 = v142;
        static TaskPriority.userInitiated.getter();
        v115 = type metadata accessor for TaskPriority();
        (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
        type metadata accessor for MainActor();
        v116 = v160;

        v117 = static MainActor.shared.getter();
        v118 = swift_allocObject();
        v118[2] = v117;
        v118[3] = &protocol witness table for MainActor;
        v118[4] = v110;
        v118[5] = v113;
        v118[7] = 0;
        v118[8] = 0;
        v118[6] = v50;
        sub_10064191C(0, 0, v114, &unk_10146FC50, v118);

        return (v159)(v99, v98);
      }

      else
      {

        return (v104)(v99, v98);
      }
    }

    else
    {
      v158 = (v100 + 8);
      v159 = v104;
      v157 = objc_opt_self();
      v119 = [v157 _atomicIncrementAssertCount];
      v162[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v162, "Error saving PDF", 16, 2u);
      StaticString.description.getter("documentCameraViewController(_:didFinishWith:)", 46, 2);
      v120 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
      v121 = String._bridgeToObjectiveC()();

      v122 = [v121 lastPathComponent];

      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v125 = v124;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v126 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v127 = swift_initStackObject();
      *(v127 + 16) = xmmword_10146CA70;
      *(v127 + 56) = &type metadata for Int32;
      *(v127 + 64) = &protocol witness table for Int32;
      *(v127 + 32) = v119;
      v128 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v127 + 96) = v128;
      v129 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
      *(v127 + 104) = v129;
      *(v127 + 72) = v120;
      *(v127 + 136) = &type metadata for String;
      v130 = sub_1000053B0();
      *(v127 + 112) = v123;
      *(v127 + 120) = v125;
      *(v127 + 176) = &type metadata for UInt;
      *(v127 + 184) = &protocol witness table for UInt;
      *(v127 + 144) = v130;
      *(v127 + 152) = 2582;
      v131 = v162[0];
      *(v127 + 216) = v128;
      *(v127 + 224) = v129;
      *(v127 + 192) = v131;
      v132 = v120;
      v133 = v131;
      v134 = static os_log_type_t.error.getter();
      sub_100005404(v126, &_mh_execute_header, v134, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v127);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v135 = static os_log_type_t.error.getter();
      sub_100005404(v126, &_mh_execute_header, v135, "Error saving PDF", 16, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v136 = swift_allocObject();
      v136[2] = 8;
      v136[3] = 0;
      v136[4] = 0;
      v136[5] = 0;
      v137 = __VaListBuilder.va_list()();
      StaticString.description.getter("documentCameraViewController(_:didFinishWith:)", 46, 2);
      v138 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController-ToolbarAdditions.swift", 112, 2);
      v139 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Error saving PDF", 16, 2);
      v140 = String._bridgeToObjectiveC()();

      [v157 handleFailureInFunction:v138 file:v139 lineNumber:2582 isFatal:0 format:v140 args:v137];

      return (v159)(v151, v152);
    }
  }
}