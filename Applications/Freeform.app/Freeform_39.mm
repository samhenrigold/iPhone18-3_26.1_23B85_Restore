uint64_t sub_10071C828()
{
  v1 = _swiftEmptySetSingleton;
  v9 = _swiftEmptySetSingleton;
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC))
  {
    v1 = sub_10071C400();
    v9 = v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder);
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0x180);
    v4 = v2;
    v5 = v3();
    sub_1006369C4(v5);

    v1 = v9;
  }

  v6 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_observedObjects);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_observedObjects) = v1;
  sub_1007351F0(v6);

  sub_1007351FC(v7);
}

id sub_10071C93C(char a1, char a2)
{
  v4 = v2;
  v54 = _swiftEmptyArrayStorage;
  v6 = *&v2[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders];
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v53 = _swiftEmptyArrayStorage;

    v8 = &v53;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_84;
    }

    v11 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v6 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      (*((swift_isaMask & *v12) + 0xE0))();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v11);

    v14 = v53;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons;
  *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons] = v14;

  v16 = *&v4[v15];
  if (v16 >> 62)
  {
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);

    v17 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v17 = v16;
  }

  sub_1007993B0(v17);
  if (v54 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
      v9 = sub_100B36684(0, 1, 1, _swiftEmptyArrayStorage);
      v3 = *(v9 + 2);
      v10 = *(v9 + 3);
      v7 = v3 + 1;
      if (v3 < v10 >> 1)
      {
LABEL_17:
        *(v9 + 2) = v7;
        *&v9[8 * v3 + 32] = v8;
        goto LABEL_23;
      }

LABEL_84:
      v9 = sub_100B36684((v10 > 1), v7, 1, v9);
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_23:
  v18 = *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBuilders];
  v51 = v9;
  if ((a1 & 1) == 0)
  {

    goto LABEL_41;
  }

  v53 = _swiftEmptyArrayStorage;
  if (v18 >> 62)
  {
    goto LABEL_86;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:

  if (!v19)
  {
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  v50 = v4;
  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if ([*&v21[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] tag] == 27)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = v18;
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v20;
    if (v23 == v19)
    {
      v24 = v53;
      v4 = v50;
LABEL_40:

      v18 = v24;
LABEL_41:
      if (!(v18 >> 62))
      {
        v25 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_43;
      }

      goto LABEL_80;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v25 = _CocoaArrayWrapper.endIndex.getter();
LABEL_43:
    v26 = _swiftEmptyArrayStorage;
    if (v25)
    {
      v53 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v25 < 0)
      {
        __break(1u);
LABEL_86:
        v19 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_26;
      }

      v27 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v18 + 8 * v27 + 32);
        }

        v29 = v28;
        ++v27;
        (*((swift_isaMask & *v28) + 0xE0))();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v25 != v27);
      v26 = v53;
    }

    v30 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBaseButtons;
    *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBaseButtons] = v26;

    v31 = *&v4[v30];
    if (v31 >> 62)
    {
      sub_100006370(0, &qword_1019F6D00, UIView_ptr);

      v32 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100006370(0, &qword_1019F6D00, UIView_ptr);
      v32 = v31;
    }

    sub_1007993B0(v32);
    v33 = *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder];
    if (!v33)
    {
      goto LABEL_59;
    }

    v34 = v33;
    if (!sub_101306E14())
    {

LABEL_59:

      goto LABEL_60;
    }

    sub_10130669C();
    v35 = *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton];
    *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton] = v36;
    v37 = v36;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_60:
    v38 = v54;
    v39 = v54 >> 62;
    v40 = v54 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v40)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v41 = *(v38 + 8 * v18 + 32);
      }

      v43 = v41;
      v4 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      LODWORD(v42) = 1144750080;
      [v41 setContentHuggingPriority:1 forAxis:v42];

      ++v18;
      if (v4 == v40)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
  }

LABEL_71:
  if (v39)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v44 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v46 = [v44 initWithArrangedSubviews:isa];

  v47 = [objc_opt_self() tertiarySystemFillColor];
  sub_10071D18C(v51, v47);

  v48 = 12.0;
  if (a2)
  {
    v48 = 10.0;
  }

  [v46 setSpacing:v48];
  [v46 setDistribution:3];
  [v46 setAlignment:3];
  return v46;
}

void sub_10071D18C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v11 = *v4++;
      v12 = [objc_allocWithZone(UIView) init];
      [v12 setBackgroundColor:a2];
      v13 = [v12 layer];
      [v13 setMasksToBounds:1];

      v14 = [v12 layer];
      [v14 setCornerRadius:1.0];

      v15 = [v12 layer];
      [v15 setCornerCurve:kCACornerCurveContinuous];

      [v2 insertArrangedSubview:v12 atIndex:v11];
      v16 = [v2 axis];
      if (v16 == 1)
      {
        v5 = [v12 heightAnchor];
        v6 = [v5 constraintEqualToConstant:1.0];

        [v6 setActive:1];
        v7 = [v12 widthAnchor];
        v8 = [v2 widthAnchor];
        v9 = [v7 constraintEqualToAnchor:v8 multiplier:1.0];
      }

      else
      {
        if (v16)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }

        v17 = [v12 widthAnchor];
        v18 = [v17 constraintEqualToConstant:2.0];

        [v18 setActive:1];
        v19 = [v12 heightAnchor];
        v20 = [v19 constraintEqualToConstant:28.0];

        [v20 setActive:1];
        v7 = [v12 centerYAnchor];
        v8 = [v2 centerYAnchor];
        v9 = [v7 constraintEqualToAnchor:v8];
      }

      v10 = v9;

      [v10 setActive:1];
      --v3;
    }

    while (v3);
  }
}

void sub_10071D4E0()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBuilders;
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBuilders) = _swiftEmptyArrayStorage;

  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBaseButtons) = _swiftEmptyArrayStorage;

  v2 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton) = 0;

  v5 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders;
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders) = _swiftEmptyArrayStorage;

  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons) = _swiftEmptyArrayStorage;

  v6 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasElementsBuilders;
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasElementsBuilders) = _swiftEmptyArrayStorage;

  sub_10071D804();
  sub_10071D9EC(v7);
  v9 = v8;
  v11 = v10;

  *(v0 + v6) = _swiftEmptyArrayStorage;

  *(v0 + v1) = v9;

  *(v0 + v5) = v11;

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() elementWithName:v12 image:0 type:1 action:0];

  v14 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController);
  v15 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  v16 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterEllipsisBuilder());
  v17 = &v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v18 = &v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
  *v18 = 0;
  v18[1] = 0;
  *(v17 + 1) = &off_101884938;
  *(v17 + 2) = &off_101884000;
  swift_unknownObjectWeakAssign();
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v13;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v14;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = v15;
  v19 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
  *&v19[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v14;
  v31.receiver = v19;
  v31.super_class = type metadata accessor for CRLMiniFormatterDataProvider();
  v20 = v14;
  v21 = v13;
  v22 = v15;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v31, "init");
  v23 = [v21 crlaxLabel];
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

  *v18 = v25;
  v18[1] = v27;

  v30.receiver = v16;
  v30.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
  v28 = objc_msgSendSuper2(&v30, "init");

  v29 = *(v0 + v2);
  *(v0 + v2) = v28;
}

void sub_10071D804()
{
  v1 = v0;
  sub_100006370(0, &unk_1019FCBF0, NSMutableArray_ptr);
  v2 = NSArray.init(arrayLiteral:)();
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController) currentEditors];
  sub_1005B981C(&qword_101A09750, &qword_101477C00);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    sub_100006370(0, &qword_1019FCC00, off_10182F918);
    v8 = v2;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    return;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v7 respondsToSelector:"addMiniFormatterElementsToArray:atPoint:"])
      {
        if ([v7 respondsToSelector:"addMiniFormatterElementsToArray:atPoint:"])
        {
          [v7 addMiniFormatterElementsToArray:v2 atPoint:{0.0, 0.0}];
        }
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  __break(1u);
}

unint64_t sub_10071D9EC(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 elementType];
      if (v8 == 2)
      {
        v13 = *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController];
        v14 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController];
        v15 = sub_1005D707C(v7, v2, v13, v14);

        v16 = v15;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else if (v8)
      {
      }

      else
      {
        v9 = *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController];
        v10 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController];
        v11 = sub_1005D707C(v7, v2, v9, v10);

        v12 = v11;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_10071DC74(uint64_t a1, void *a2)
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v65 = _swiftEmptyArrayStorage;
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  v6 = sub_100A7163C();
  v7 = [*(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  if (v7 && (v8 = v7, v9 = sub_100F22994(v56), v8, v9))
  {
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *(v9 + 16);
    }

    v11 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath);
    if (v11)
    {

      v13 = sub_100BC5D60(v12, v11);

      swift_bridgeObjectRelease_n();
      if ((v6 & 1) != 0 || (v13 & 1) == 0 && v10)
      {
        goto LABEL_16;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (!(v6 & 1 | (v10 != 0)))
    {
      goto LABEL_20;
    }
  }

  else if (*(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath))
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v14 = sub_100B375A4(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_100B375A4((v15 > 1), v16 + 1, 1, v14);
  }

  v63 = type metadata accessor for CRLiOSMiniFormatterViewController();
  v64 = &off_101892E60;
  *&v62 = v5;
  v14[2] = v16 + 1;
  sub_100050F74(&v62, &v14[5 * v16 + 4]);
  v65 = v14;
LABEL_21:
  v17 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v17)
  {
    v18 = v17;
    v19 = [v18 viewControllers];
    v20 = sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = _swiftEmptyArrayStorage;
    if (v21 >> 62)
    {
      goto LABEL_40;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      while (1)
      {
        v52 = v18;
        v53 = v3;
        v23 = 0;
        v18 = (v21 & 0xC000000000000001);
        v24 = v21 & 0xFFFFFFFFFFFFFF8;
        v54 = v21 & 0xFFFFFFFFFFFFFF8;
        while (v18)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v3 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            v34 = v58;
            v18 = v52;
            v3 = v53;
            goto LABEL_42;
          }

LABEL_30:
          v57 = v25;
          v26 = v25;
          sub_1005B981C(&unk_1019FCBE0, qword_101477BE8);
          if (swift_dynamicCast())
          {
            v27 = v22;
            v28 = v18;
            v29 = v21;
            v30 = v20;
            sub_100050F74(&v59, &v62);
            v32 = v63;
            v31 = v64;
            sub_100020E58(&v62, v63);
            v33 = (v31[3])(v55, v56, v32, v31);
            sub_100005070(&v62);
            if (v33)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v20 = v30;
            v21 = v29;
            v18 = v28;
            v22 = v27;
            v24 = v54;
          }

          else
          {

            v61 = 0;
            v59 = 0u;
            v60 = 0u;
            sub_10000CAAC(&v59, &qword_1019FCBD8, &qword_101477BE0);
          }

          ++v23;
          if (v3 == v22)
          {
            goto LABEL_38;
          }
        }

        if (v23 < *(v24 + 16))
        {
          break;
        }

        __break(1u);
LABEL_40:
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (!v22)
        {
          goto LABEL_41;
        }
      }

      v25 = *(v21 + 8 * v23 + 32);
      v3 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

LABEL_41:
    v34 = _swiftEmptyArrayStorage;
LABEL_42:

    v35 = sub_100F222FC(v34);

    if (v35)
    {
      sub_10079AFF8(v35);
    }
  }

  v36 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController);
  if (!v36 || (*&v62 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController), sub_100006370(0, &qword_101A10AB0, UIViewController_ptr), v37 = v36, sub_1005B981C(&unk_1019FCBE0, qword_101477BE8), (swift_dynamicCast() & 1) == 0))
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_56;
  }

  if (!*(&v60 + 1))
  {
LABEL_56:
    sub_10000CAAC(&v59, &qword_1019FCBD8, &qword_101477BE0);
    return v65;
  }

  sub_100050F74(&v59, &v62);
  v38 = v63;
  v39 = v64;
  sub_100020E58(&v62, v63);
  if ((v39[3])(v55, v56, v38, v39))
  {
    sub_10000630C(&v62, &v59);
    v40 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_100B375A4(0, v40[2] + 1, 1, v40);
      v65 = v40;
    }

    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_100B375A4((v41 > 1), v42 + 1, 1, v40);
      v65 = v40;
    }

    v43 = *(&v60 + 1);
    v44 = v61;
    v45 = sub_10002A948(&v59, *(&v60 + 1));
    v46 = __chkstk_darwin(v45);
    v48 = &v51 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v48, v46);
    sub_100725200(v42, v48, &v65, v43, v44);
    sub_100005070(&v59);
    v65 = v40;
  }

  sub_100005070(&v62);
  return v65;
}

void *sub_10071E2EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = _swiftEmptyArrayStorage;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (v6)
  {
    v7 = v6;
    sub_100A6AC3C(a1, a2);
    if (v8)
    {
      v9 = sub_100B375A4(0, 1, 1, _swiftEmptyArrayStorage);
      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        v9 = sub_100B375A4((v10 > 1), v11 + 1, 1, v9);
      }

      v40 = type metadata accessor for CRLiOSMiniFormatterViewController();
      v41 = &off_101892E60;
      *&v39 = v7;
      v9[2] = v11 + 1;
      sub_100050F74(&v39, &v9[5 * v11 + 4]);
      v42 = v9;
    }

    else
    {
    }
  }

  v12 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 viewControllers];
    sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v16);
    v34[2] = a1;
    v34[3] = a2;
    v17 = sub_1009ADBA8(sub_1007257F4, v34, v15);
    v18 = sub_100F222FC(v17);

    if (v18)
    {
      sub_10079AFF8(v18);
    }
  }

  v19 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController);
  if (!v19 || (*&v39 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController), sub_100006370(0, &qword_101A10AB0, UIViewController_ptr), v20 = v19, sub_1005B981C(&unk_1019FCBE0, qword_101477BE8), (swift_dynamicCast() & 1) == 0))
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    goto LABEL_22;
  }

  if (!*(&v37 + 1))
  {
LABEL_22:
    sub_10000CAAC(&v36, &qword_1019FCBD8, &qword_101477BE0);
    return v42;
  }

  sub_100050F74(&v36, &v39);
  v21 = v40;
  v22 = v41;
  sub_100020E58(&v39, v40);
  if ((v22[2])(a1, a2, v21, v22))
  {
    sub_10000630C(&v39, &v36);
    v23 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_100B375A4(0, v23[2] + 1, 1, v23);
      v42 = v23;
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_100B375A4((v24 > 1), v25 + 1, 1, v23);
      v42 = v23;
    }

    v26 = *(&v37 + 1);
    v27 = v38;
    v28 = sub_10002A948(&v36, *(&v37 + 1));
    v29 = __chkstk_darwin(v28);
    v31 = &v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31, v29);
    sub_100725200(v25, v31, &v42, v26, v27);
    sub_100005070(&v36);
    v42 = v23;
  }

  sub_100005070(&v39);
  return v42;
}

uint64_t sub_10071E6DC(id *a1, uint64_t a2, uint64_t a3)
{
  v15 = *a1;
  sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
  v5 = v15;
  sub_1005B981C(&unk_1019FCBE0, qword_101477BE8);
  if (swift_dynamicCast())
  {
    sub_100050F74(v10, v12);
    v6 = v13;
    v7 = v14;
    sub_100020E58(v12, v13);
    v8 = (*(v7 + 16))(a2, a3, v6, v7);
    sub_100005070(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_10000CAAC(v10, &qword_1019FCBD8, &qword_101477BE0);
    v8 = 0;
  }

  return v8 & 1;
}

void *sub_10071E7FC()
{
  v1 = v0;
  v53 = _swiftEmptyArrayStorage;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (v2)
  {
    v3 = v2;
    if (sub_100A7163C())
    {
      v4 = sub_100B375A4(0, 1, 1, _swiftEmptyArrayStorage);
      v6 = v4[2];
      v5 = v4[3];
      if (v6 >= v5 >> 1)
      {
        v4 = sub_100B375A4((v5 > 1), v6 + 1, 1, v4);
      }

      v51 = type metadata accessor for CRLiOSMiniFormatterViewController();
      v52 = &off_101892E60;
      *&v50 = v3;
      v4[2] = v6 + 1;
      sub_100050F74(&v50, &v4[5 * v6 + 4]);
      v53 = v4;
    }

    else
    {
    }
  }

  v7 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 viewControllers];
    v10 = sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = _swiftEmptyArrayStorage;
    if (v11 >> 62)
    {
      goto LABEL_26;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      while (1)
      {
        v42 = v8;
        v43 = v1;
        v13 = 0;
        v8 = (v11 & 0xC000000000000001);
        v14 = v11 & 0xFFFFFFFFFFFFFF8;
        v44 = v11 & 0xFFFFFFFFFFFFFF8;
        while (v8)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v1 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            v24 = v46;
            v8 = v42;
            v1 = v43;
            goto LABEL_28;
          }

LABEL_16:
          v45 = v15;
          v16 = v15;
          sub_1005B981C(&unk_1019FCBE0, qword_101477BE8);
          if (swift_dynamicCast())
          {
            v17 = v12;
            v18 = v8;
            v19 = v11;
            v20 = v10;
            sub_100050F74(&v47, &v50);
            v22 = v51;
            v21 = v52;
            sub_100020E58(&v50, v51);
            v23 = (v21[4])(v22, v21);
            sub_100005070(&v50);
            if (v23)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v10 = v20;
            v11 = v19;
            v8 = v18;
            v12 = v17;
            v14 = v44;
          }

          else
          {

            v49 = 0;
            v47 = 0u;
            v48 = 0u;
            sub_10000CAAC(&v47, &qword_1019FCBD8, &qword_101477BE0);
          }

          ++v13;
          if (v1 == v12)
          {
            goto LABEL_24;
          }
        }

        if (v13 < *(v14 + 16))
        {
          break;
        }

        __break(1u);
LABEL_26:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_27;
        }
      }

      v15 = *(v11 + 8 * v13 + 32);
      v1 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_27:
    v24 = _swiftEmptyArrayStorage;
LABEL_28:

    v25 = sub_100F222FC(v24);

    if (v25)
    {
      sub_10079AFF8(v25);
    }
  }

  v26 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController);
  if (!v26 || (*&v50 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController), sub_100006370(0, &qword_101A10AB0, UIViewController_ptr), v27 = v26, sub_1005B981C(&unk_1019FCBE0, qword_101477BE8), (swift_dynamicCast() & 1) == 0))
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_42;
  }

  if (!*(&v48 + 1))
  {
LABEL_42:
    sub_10000CAAC(&v47, &qword_1019FCBD8, &qword_101477BE0);
    return v53;
  }

  sub_100050F74(&v47, &v50);
  v28 = v51;
  v29 = v52;
  sub_100020E58(&v50, v51);
  if ((v29[4])(v28, v29))
  {
    sub_10000630C(&v50, &v47);
    v30 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_100B375A4(0, v30[2] + 1, 1, v30);
      v53 = v30;
    }

    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_100B375A4((v31 > 1), v32 + 1, 1, v30);
      v53 = v30;
    }

    v33 = *(&v48 + 1);
    v34 = v49;
    v35 = sub_10002A948(&v47, *(&v48 + 1));
    v36 = __chkstk_darwin(v35);
    v38 = &v41 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38, v36);
    sub_100725200(v32, v38, &v53, v33, v34);
    sub_100005070(&v47);
    v53 = v30;
  }

  sub_100005070(&v50);
  return v53;
}

void *sub_10071ED64()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (v1)
  {
    sub_1005B981C(&qword_1019FCBD0, &unk_1014C70B0);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_10146C6B0;
    v2[7] = type metadata accessor for CRLiOSMiniFormatterViewController();
    v2[8] = &off_101892E60;
    v2[4] = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v1;
  return v2;
}

uint64_t sub_10071EDEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = result + 32;
    do
    {
      sub_10000630C(v8, v11);
      v9 = v12;
      v10 = v13;
      sub_100020E58(v11, v12);
      (*(v10 + 48))(a2, a3, a4, v9, v10);
      result = sub_100005070(v11);
      v8 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_10071EE9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (v3)
  {
    v6 = v3;
    sub_100A6AE9C(a1, a2);
    if (v7)
    {
      sub_1005B981C(&qword_1019FCBC8, &unk_101477BD0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_10146C6B0;
      v9 = type metadata accessor for CRLiOSMiniFormatterViewController();
      result = v8;
      *(v8 + 56) = v9;
      *(v8 + 64) = &off_101892E48;
      *(v8 + 32) = v6;
      return result;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10071EF50(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      sub_10000630C(v2, v20);
      v4 = sub_100020E58(v20, v20[3]);
      v5 = *v4;
      v6 = *(*v4 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper);
      if (v6)
      {
        v7 = v6;
        sub_10091C3B4();
      }

      v8 = sub_100020E58((v5 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate), *(v5 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24));
      v9 = *v8;
      v10 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController;
      v11 = *(*v8 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
      if (!v11)
      {
        goto LABEL_5;
      }

      v12 = [v11 topViewController];
      if (!v12)
      {
        goto LABEL_5;
      }

      v3 = v12;
      type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
        v15 = v14;

        if (!v14)
        {
          goto LABEL_5;
        }

        v16 = *(v9 + v10);
        if (!v16)
        {
          goto LABEL_5;
        }

        v17 = v16;
        v18 = [v17 visibleViewController];
        if (v18)
        {
          v3 = v18;
          v19 = swift_dynamicCastClass();
          if (v19)
          {
            sub_1007211DC(v19, 0);
          }
        }

        else
        {
          v3 = v17;
        }
      }

LABEL_5:
      result = sub_100005070(v20);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_10071F0CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
    v5 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
    v3 = v1;
    if (v2)
    {
      v4 = v2;
      sub_10091C3B4();
    }

    sub_100020E58(&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate], *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24]);
    sub_1007253B0();
  }
}

double sub_10071F1C0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC;
  if (!*(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC))
  {
    goto LABEL_21;
  }

  sub_10071F530(a1, a2);
  if (v8)
  {
    if (*(v3 + v5))
    {
      v29 = *(v3 + v5);
      *(a3 + 24) = type metadata accessor for CRLiOSMiniFormatterViewController();
      *(a3 + 32) = &off_101892E28;
      *a3 = v29;

      v9 = v29;
      return result;
    }

LABEL_21:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v11 = sub_10071FC8C(a1, a2);
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if ((v11 & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_21;
    }

    v30 = a2;
    v28 = v12;
    v13 = [v28 viewControllers];
    sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = a3;
    if (v14 >> 62)
    {
      goto LABEL_35;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
LABEL_20:

      a3 = v27;
      goto LABEL_21;
    }

    while (1)
    {
      v16 = v14 & 0xC000000000000001;
      if ((v14 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v14 + 32);
LABEL_19:

        if (v15 == 1)
        {
          goto LABEL_20;
        }

        v18 = 5;
        while (1)
        {
          v19 = v18 - 4;
          if (v16)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            v20 = *(v14 + 8 * v18);
          }

          v21 = v20;
          v22 = v18 - 3;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_34;
          }

          type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = *(v23 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
            if (v24)
            {
              v25 = *((swift_isaMask & *v24) + 0x1C8);
              v26 = v24;
              v16 = v14 & 0xC000000000000001;
              LOBYTE(v25) = v25(a1, v30);

              if (v25)
              {

                sub_1005B981C(&unk_1019FCBB0, &qword_101477BC8);
                a3 = v27;
                goto LABEL_11;
              }
            }
          }

          ++v18;
          if (v22 == v15)
          {
            goto LABEL_20;
          }
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (!v12 || ![v12 topViewController])
  {
    goto LABEL_21;
  }

  sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
  sub_1005B981C(&unk_1019FCBB0, &qword_101477BC8);
LABEL_11:
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  return result;
}

void sub_10071F530(uint64_t a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting);
  v5 = [v4 interactiveCanvasController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 editorController];
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = (v9 + 16);
      v61 = sub_1007257EC;
      v62 = v9;
      aBlock = _NSConcreteStackBlock;
      v58 = *"";
      v59 = sub_10066C70C;
      v60 = &unk_1018841E8;
      v11 = _Block_copy(&aBlock);

      [v8 enumerateEditorsOnStackUsingBlock:v11];

      _Block_release(v11);
      swift_beginAccess();
      v12 = *v10;

      if (v12)
      {
        return;
      }
    }

    else
    {
    }
  }

  v13 = a2;
  v14 = [v4 interactiveCanvasController];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v14 selectionModelTranslator];
  if (!v16)
  {

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 boardItemsForSelectionPath:v13];

  type metadata accessor for CRLBoardItem(0);
  sub_100006490(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_11:
  sub_100725300(v19);
  v21 = v20;

  if (!v21)
  {
    return;
  }

  v22 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_flattenedBoardItemsForCurrentSelectionPath);
  if (!v22)
  {
    goto LABEL_39;
  }

  v23 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController);

  v24 = [v23 traitCollection];
  if ([objc_opt_self() crl_phoneUI])
  {
  }

  else
  {
    v25 = [v24 crl_isCompactWidth];

    if ((v25 & 1) == 0)
    {
      sub_100721740(v22, v21);
      if (v26)
      {

        goto LABEL_39;
      }
    }
  }

  v55 = v21 & 0xC000000000000001;
  v56 = v22;
  if ((v21 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100006490(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v21 = v65;
    v27 = v66;
    v28 = v67;
    v29 = v68;
    v30 = v69;
  }

  else
  {
    v31 = -1 << *(v21 + 32);
    v27 = v21 + 56;
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v21 + 56);

    v29 = 0;
  }

  while ((v21 & 0x8000000000000000) == 0)
  {
    v36 = v29;
    v37 = v30;
    if (!v30)
    {
      while (1)
      {
        v29 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v29 >= ((v28 + 64) >> 6))
        {
          goto LABEL_36;
        }

        v37 = *(v27 + 8 * v29);
        ++v36;
        if (v37)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_26:
    v30 = (v37 - 1) & v37;
    v34 = *(*(v21 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v37)))));
    if (!v34)
    {
      goto LABEL_36;
    }

LABEL_27:
    type metadata accessor for CRLTableItem(0);
    v35 = swift_dynamicCastClass();

    if (v35)
    {
      sub_100035F90(v21);
      if ((v56 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for CRLBoardItem(0);
        sub_100006490(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
        Set.Iterator.init(_cocoa:)();
        v41 = aBlock;
        v40 = v58;
        v42 = v59;
        v43 = v60;
        v44 = v61;
      }

      else
      {
        v45 = -1 << *(v56 + 32);
        v40 = v56 + 56;
        v42 = ~v45;
        v46 = -v45;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v44 = (v47 & *(v56 + 56));
        v43 = 0;
      }

      v48 = (v42 + 64) >> 6;
      if ((v41 & 0x8000000000000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_47:
      v49 = __CocoaSet.Iterator.next()();
      if (!v49 || (v63 = v49, type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), v50 = v64, v51 = v43, v52 = v44, !v64))
      {
LABEL_58:
        v39 = v41;
        goto LABEL_37;
      }

      while (1)
      {
        if (swift_dynamicCastClass())
        {

          sub_100035F90(v41);

          sub_100006370(0, &qword_1019FCBC0, off_10182F938);
          static NSObject.== infix(_:_:)();
          return;
        }

        v43 = v51;
        v44 = v52;
        if (v41 < 0)
        {
          goto LABEL_47;
        }

LABEL_50:
        v53 = v43;
        v54 = v44;
        v51 = v43;
        if (!v44)
        {
          break;
        }

LABEL_54:
        v52 = (v54 - 1) & v54;
        v50 = *(*(v41 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v54)))));
        if (!v50)
        {
          goto LABEL_58;
        }
      }

      while (1)
      {
        v51 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v51 >= v48)
        {
          goto LABEL_58;
        }

        v54 = *(v40 + 8 * v51);
        ++v53;
        if (v54)
        {
          goto LABEL_54;
        }
      }

LABEL_61:
      __break(1u);
      return;
    }
  }

  v38 = __CocoaSet.Iterator.next()();
  if (v38)
  {
    v64 = v38;
    type metadata accessor for CRLBoardItem(0);
    swift_dynamicCast();
    v34 = aBlock;
    if (aBlock)
    {
      goto LABEL_27;
    }
  }

LABEL_36:
  v39 = v21;
LABEL_37:
  sub_100035F90(v39);

  if (v55)
  {
    __CocoaSet.count.getter();
  }

LABEL_39:
}

uint64_t sub_10071FC8C(uint64_t a1, uint64_t a2)
{
  sub_10071D804();
  sub_10071D9EC(v5);
  v7 = v6;

  v8 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (!v8 || (v9 = [v8 topViewController]) == 0)
  {
LABEL_18:

    return 1;
  }

  v10 = v9;
  type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
    v13 = v12;

    if (v12)
    {
      if (v7 >> 62)
      {
LABEL_22:
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v14 != i; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v16 = *(v7 + 8 * i + 32);
        }

        v17 = v16;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {

          v19 = (*((swift_isaMask & *v13) + 0x1C8))(a1, a2);

          return v19 & 1;
        }
      }
    }

    goto LABEL_18;
  }

  return 1;
}

double sub_10071FEC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1007201B8(a1, a2);
  v6 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if ((v5 & 1) == 0)
  {
    if (v6)
    {
      v8 = v6;
      v9 = [v8 viewControllers];
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v8;
      v25 = a3;
      if (v10 >> 62)
      {
        goto LABEL_29;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        while (1)
        {
          v12 = v10 & 0xFFFFFFFFFFFFFF8;
          v13 = v10 & 0xC000000000000001;
          if ((v10 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v14 = *(v10 + 32);
LABEL_13:

            if (v11 == 1)
            {
              goto LABEL_14;
            }

            v15 = 5;
            v26 = v10;
            while (1)
            {
              v16 = v15 - 4;
              if (v13)
              {
                v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v16 >= *(v12 + 16))
                {
                  break;
                }

                v17 = *(v10 + 8 * v15);
              }

              v18 = v17;
              v19 = v15 - 3;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_28;
              }

              type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
              v20 = swift_dynamicCastClass();
              if (v20)
              {
                v21 = *(v20 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
                if (v21)
                {
                  v22 = *((swift_isaMask & *v21) + 0x1D0);
                  v23 = v21;
                  v10 = v26;
                  LOBYTE(v22) = v22(a1, a2);

                  if (v22)
                  {

                    sub_1005B981C(&unk_1019FCBB0, &qword_101477BC8);
                    a3 = v25;
                    goto LABEL_5;
                  }
                }
              }

              ++v15;
              if (v19 == v11)
              {
                goto LABEL_14;
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v11 = _CocoaArrayWrapper.endIndex.getter();
          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_13;
      }

LABEL_14:

      a3 = v25;
    }

LABEL_15:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (!v6 || ![v6 topViewController])
  {
    goto LABEL_15;
  }

  sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
  sub_1005B981C(&unk_1019FCBB0, &qword_101477BC8);
LABEL_5:
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1007201B8(uint64_t a1, uint64_t a2)
{
  sub_10071D804();
  sub_10071D9EC(v5);
  v7 = v6;

  v8 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (!v8 || (v9 = [v8 topViewController]) == 0)
  {
LABEL_18:

    return 1;
  }

  v10 = v9;
  type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
    v13 = v12;

    if (v12)
    {
      if (v7 >> 62)
      {
LABEL_22:
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v14 != i; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v16 = *(v7 + 8 * i + 32);
        }

        v17 = v16;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {

          v19 = (*((swift_isaMask & *v13) + 0x1D0))(a1, a2);

          return v19 & 1;
        }
      }
    }

    goto LABEL_18;
  }

  return 1;
}

void sub_1007203EC(uint64_t a1)
{
  v2 = v1;
  sub_10000630C(a1, v23);
  sub_1005B981C(&unk_1019FCBB0, &qword_101477BC8);
  sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
  if (swift_dynamicCast())
  {
    v3 = v22;
    v4 = *&v1[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC];
    if (v4)
    {
      v5 = v22;
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {

        sub_10071B728(1, 1, 0);
        return;
      }
    }

    else
    {
      v8 = v22;
    }

    v9 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController;
    v10 = [*&v1[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController] topViewController];
    if (v10)
    {
      v11 = v10;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        [v1 dismissSecondLayerPopover];
LABEL_15:

        return;
      }
    }

    else
    {
    }

    v13 = *&v1[v9];
    if (v13)
    {
      v14 = [v13 viewControllers];
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v23[0] = v22;
      __chkstk_darwin(v16);
      v21[2] = v23;
      LOBYTE(v14) = sub_100C33540(sub_1007257CC, v21, v15);

      if (v14)
      {
        v17 = *&v2[v9];
        if (v17)
        {

          v18 = *&v2[v9];
          if (v18)
          {
            v19 = v18;
            v20 = [v19 popViewControllerAnimated:1];

            return;
          }
        }
      }
    }

    goto LABEL_15;
  }
}

void sub_100720634()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (!v1)
  {
    return;
  }

  v13 = v1;
  v2 = [v13 popoverPresentationController];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100720FAC();
    if (v4)
    {
      v5 = v4;
      [v3 setSourceView:v4];
      sub_1007208C0(v5);
      sub_100006370(0, &qword_1019F6D00, UIView_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v3 setPassthroughViews:isa];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v7 = [objc_opt_self() currentTraitCollection];
      v8 = [v7 horizontalSizeClass];

      if (v8 == 2)
      {
        if (UIAccessibilityFocusedElement(UIAccessibilityNotificationVoiceOverIdentifier))
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v15 = 0u;
          v16 = 0u;
        }

        v17[0] = v15;
        v17[1] = v16;
        if (*(&v16 + 1))
        {
          sub_100006370(0, &qword_1019F6D00, UIView_ptr);
          if (swift_dynamicCast())
          {
            v9 = [v3 presentedView];
            v10 = sub_100720B0C(v9, v14);

            if (v10)
            {
              v11 = UIAccessibilityLayoutChangedNotification;
              v12 = v10;
              UIAccessibilityPostNotification(v11, v12);
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {

          sub_10000CAAC(v17, &unk_1019F4D00, &unk_10146E7F0);
        }

        return;
      }
    }
  }
}

void *sub_1007208C0(uint64_t a1)
{
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons);

  sub_1007993C8(v2);
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v6 = *(v11 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v6 showsMenuAsPrimaryAction] & 1) != 0 || (sub_100006370(0, &qword_1019F6E10, UIButton_ptr), (static NSObject.== infix(_:_:)()))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v5 = v11 & 0xFFFFFFFFFFFFFF8;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);

    v9 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v9 = _swiftEmptyArrayStorage;
  }

  return v9;
}

id sub_100720B0C(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result;
    if ([v3 accessibilityElementsHidden])
    {
LABEL_3:

LABEL_4:
      return 0;
    }

    if ([v3 isAccessibilityElement])
    {
      v4 = [v3 accessibilityLabel];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v20 = [a2 accessibilityLabel];
      if (v20)
      {
        v21 = v3;
        v22 = v20;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v3 = v21;
        if (v8)
        {
          if (!v25)
          {
            goto LABEL_49;
          }

          if (v6 == v23 && v8 == v25)
          {
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v26 & 1) == 0)
            {
              goto LABEL_3;
            }
          }
        }

        else if (v25)
        {
          goto LABEL_51;
        }
      }

      else if (v8)
      {
        goto LABEL_49;
      }

      v27 = [v3 accessibilityIdentifier];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v32 = [a2 accessibilityIdentifier];
      if (v32)
      {
        v33 = v3;
        v34 = v32;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v3 = v33;
        if (v31)
        {
          if (v37)
          {
            if (v29 == v35 && v31 == v37)
            {
            }

            else
            {
              v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v38 & 1) == 0)
              {
                goto LABEL_3;
              }
            }

LABEL_53:
            v39 = [v3 accessibilityTraits];

            v40 = UIAccessibilityTraitNotEnabled | UIAccessibilityTraitSelected;
            v41 = (([a2 accessibilityTraits] ^ v39) & ~v40) == 0;
            result = v2;
            if (v41)
            {
              return result;
            }

            goto LABEL_4;
          }

          goto LABEL_49;
        }

        if (!v37)
        {
          goto LABEL_53;
        }

LABEL_51:

        goto LABEL_3;
      }

      if (!v31)
      {
        goto LABEL_53;
      }

LABEL_49:

LABEL_61:

      return 0;
    }

    v42 = v3;
    v9 = [v3 subviews];
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
LABEL_58:
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (v11 != v12)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v16 = sub_100720B0C(v13, a2);

      ++v12;
      if (v16)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v15;
      }
    }

    if (_swiftEmptyArrayStorage >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v17 = v42;
      if (result)
      {
LABEL_23:
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v18 = _swiftEmptyArrayStorage[4];
        }

        v19 = v18;

        return v19;
      }
    }

    else
    {
      v17 = v42;
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }
    }

    goto LABEL_61;
  }

  return result;
}

id sub_100720FAC()
{
  result = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (!result)
  {
    return result;
  }

  result = [result topViewController];
  if (!result)
  {
    return result;
  }

  v2 = result;
  type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    return 0;
  }

  v4 = *(v3 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
  v5 = v4;

  if (!v4)
  {
    return 0;
  }

  v6 = *&v5[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element];

  v7 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders);
  v17 = v0;
  if (v7 >> 62)
  {
LABEL_27:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = -v8;
  v10 = 4;
  while (1)
  {
    if (v9 + v10 == 4)
    {

      return 0;
    }

    v11 = v10 - 4;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v12 = *(v7 + 8 * v10);
    }

    v13 = v12;
    sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    ++v10;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_26;
    }
  }

  v15 = *(v17 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons);
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v11 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(v15 + 8 * v10);
  }

  return v16;
}

void sub_1007211DC(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v5 = [v40 visibleViewController];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
    if (swift_dynamicCastClass() && (sub_100006370(0, &qword_1019F54D0, NSObject_ptr), (static NSObject.== infix(_:_:)() & 1) != 0))
    {
      v7 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController);
      if (v7)
      {
        v8 = [v7 presentationController];
        if (v8)
        {
          v9 = v8;
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (!v10)
          {
            v29 = v6;
            v6 = v40;
LABEL_27:

            v27 = v6;
            goto LABEL_28;
          }

          v15 = v10;
          if (a2)
          {
            [a2 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
            v18 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
            if (v18)
            {
              v19 = *(v18 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper);
              if (v19)
              {
                v20 = v16 + 12.0 + 12.0;
                v21 = v17 + 12.0 + 12.0;
                v22 = v19;
                v23 = sub_10091C278();

                v24 = *(v23 + 56);
                v25 = v21 + 10.0;
                v26 = v20;
                goto LABEL_20;
              }
            }
          }

          else
          {
            sub_1007164E4(v11, v12, v13, v14);
            v32 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
            if (v32)
            {
              v33 = *(v32 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper);
              if (v33)
              {
                v34 = v31;
                v35 = v30;
                v36 = v33;
                v37 = sub_10091C278();

                v24 = *(v37 + 56);
                v25 = v34 + 10.0;
                v26 = v35;
LABEL_20:
                v38 = sub_100BDD904(v26, v25);

                if (v38)
                {
                  if (v24)
                  {
                    v39 = 2;
                  }

                  else
                  {
                    v39 = 1;
                  }
                }

                else
                {
                  v39 = 3;
                }

                goto LABEL_26;
              }
            }
          }

          v39 = 2;
LABEL_26:
          [v15 setPermittedArrowDirections:v39];
          v29 = v40;
          goto LABEL_27;
        }
      }

      v27 = v6;
      v9 = v40;
    }

    else
    {
      v27 = v40;
      v9 = v6;
    }

LABEL_28:

    v28 = v9;
    goto LABEL_29;
  }

  v28 = v40;
LABEL_29:
}

void sub_10072147C()
{

  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_secondLayerPresentedBuilder);
}

id sub_1007215AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100721740(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(a2 + 16))
  {
    return;
  }

  v5 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(a1 + 16))
  {
    return;
  }

  if (!v4)
  {
    v6 = *(a2 + 16);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v7 = *(a1 + 16);
    goto LABEL_14;
  }

  v6 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v7 = __CocoaSet.count.getter();
LABEL_14:
  v8 = v6 < v7;
  if (v6 >= v7)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (v8)
  {
    v10 = a1;
  }

  else
  {
    v10 = a2;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100006490(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v9 = v37;
    v11 = v38;
    v12 = v39;
    v13 = v40;
    v14 = v41;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);

    v13 = 0;
  }

  type metadata accessor for CRLBoardItem(0);
  v18 = (v12 + 64) >> 6;
  v19 = v10 & 0xC000000000000001;
  v33 = v9;
  v35 = v10 + 56;
  v32 = v10 & 0xC000000000000001;
  while (1)
  {
    while (1)
    {
      v21 = v14;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (!__CocoaSet.Iterator.next()())
      {
LABEL_44:
        sub_100035F90(v9);

        return;
      }

      swift_dynamicCast();
      v24 = v36;
      v34 = v21;
      if (v19)
      {
        goto LABEL_27;
      }

LABEL_38:
      if (*(v10 + 16))
      {
        v25 = NSObject._rawHashValue(seed:)(*(v10 + 40));
        v26 = -1 << *(v10 + 32);
        v27 = v25 & ~v26;
        if ((*(v35 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (1)
          {
            v29 = v10;
            v30 = *(*(v10 + 48) + 8 * v27);
            v31 = static NSObject.== infix(_:_:)();

            if (v31)
            {
              break;
            }

            v27 = (v27 + 1) & v28;
            v10 = v29;
            if (((*(v35 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          sub_100035F90(v33);

          goto LABEL_48;
        }
      }

LABEL_43:

      v19 = v32;
      v9 = v33;
      v14 = v34;
    }

    v22 = v14;
    if (!v14)
    {
      break;
    }

LABEL_34:
    v34 = (v22 - 1) & v22;
    v36 = *(*(v9 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v22)))));
    v24 = v36;
    if (!v19)
    {
      goto LABEL_38;
    }

LABEL_27:
    v20 = __CocoaSet.contains(_:)();

    v14 = v34;
    if (v20)
    {
      sub_100035F90(v9);
LABEL_48:

      return;
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_44;
    }

    v22 = *(v11 + 8 * v13);
    ++v23;
    if (v22)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
}

void sub_100721B14()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController) selectionPath];
  v2 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath) = v1;
  v4 = v1;

  sub_100719D9C();
  v5 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v6)
  {
    v7 = [v6 topViewController];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
        v11 = v10;

        if (v10)
        {

          *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldRepositionSecondLayerPopover) = 1;
          *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldUpdateSecondLayerPopoverPassthroughViews) = 1;
          *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldUpdateSecondLayerPermittedArrowDirections) = 1;
        }
      }

      else
      {
      }
    }
  }

  v12 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC;
  v13 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (v13)
  {
    v14 = *(v0 + v2);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isUpdatingMiniFormatter;
      *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isUpdatingMiniFormatter) = 1;
      v16 = v13;
      v17 = v14;
      sub_10071B980(0, v0, v13, 0);

      sub_10071A710(v17, 0);
      *(v0 + v15) = 0;
    }
  }

  v18 = *(v0 + v5);
  if (v18)
  {
    v19 = [v18 topViewController];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
LABEL_16:

        goto LABEL_17;
      }

      v22 = *(v21 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
      v23 = v22;

      if (v22)
      {

        v24 = sub_100720FAC();
        if (v24)
        {
          v20 = v24;
          *(v24 + OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton_isPresentingPopover) = 1;
          [v24 setHighlighted:1];
          goto LABEL_16;
        }
      }
    }
  }

LABEL_17:
  v25 = *(v0 + v12);
  if (v25)
  {
    v26 = *&v25[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay];
    v27 = v25;
    v28 = [v26 arrangedSubviews];
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v29 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v31 = 0;
      v32 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate;
      v33 = v29 & 0xC000000000000001;
      v47 = v29 & 0xC000000000000001;
      while (1)
      {
        if (v33)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v35 = *(v29 + 8 * v31 + 32);
        }

        v36 = v35;
        v37 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        sub_10000630C(&v27[v32], v49);
        sub_1005B981C(&unk_101A0E8A0, &unk_101477BB0);
        type metadata accessor for CRLiOSMiniFormatterPresenter();
        if (swift_dynamicCast())
        {
          v38 = *&v48[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController];
          if (v38)
          {
            v39 = i;
            v40 = v32;
            v41 = v27;
            v42 = v38;
            v43 = [v42 topViewController];

            if (v43)
            {
              type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
              v44 = swift_dynamicCastClass();
              if (v44)
              {
                v45 = *(v44 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
                v46 = v45;

                if (v45)
                {

                  v34 = 0;
LABEL_36:
                  v27 = v41;
                  v32 = v40;
                  i = v39;
                  v33 = v47;
                  goto LABEL_22;
                }
              }

              else
              {
              }
            }

            v34 = 1;
            goto LABEL_36;
          }

          v34 = 1;
        }

        else
        {
          v34 = 1;
        }

LABEL_22:
        [v36 setIsAccessibilityElement:{v34, v47}];

        ++v31;
        if (v37 == i)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_42:
  }
}

uint64_t sub_100721FB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath);
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {

    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v2 = *(v1 + 16);

    if (v2 != 1)
    {
LABEL_23:

      return 0;
    }
  }

  v3 = sub_100BC17E0(v1);

  if (v3)
  {
    v4 = [v3 knobs];
    sub_100006370(0, &unk_101A28760, off_10182F778);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        type metadata accessor for CRLConnectionLineKnob();
        if (swift_dynamicCastClass())
        {

          return 1;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    goto LABEL_23;
  }

  return 0;
}

void sub_100722168(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder;
  *&v8[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder] = 0;
  *&v8[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint] = 0;
  *&v8[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView] = a1;
  *&v8[v9] = a3;
  v8[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useNavigationControllerWidth] = 0;
  *&v8[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_bottomPadding] = 0;
  v8[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useUCBMargins] = 0;
  v10 = &v8[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate];
  *v10 = v3;
  v10[1] = &off_101884000;
  v53.receiver = v8;
  v53.super_class = v7;
  v11 = a1;
  v12 = a3;
  v13 = v3;
  v14 = objc_msgSendSuper2(&v53, "initWithNibName:bundle:", 0, 0);
  if (*&v14[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder])
  {
    swift_unknownObjectWeakAssign();
  }

  [v11 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v17 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC;
  v18 = *&v13[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC];
  if (v18 && (v19 = *(v18 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper)) != 0)
  {
    v20 = v15 + 12.0 + 12.0;
    v21 = v16 + 12.0 + 12.0;
    v22 = v19;
    v23 = sub_10091C278();

    v24 = *(v23 + 56);
    LOBYTE(v22) = sub_100BDD904(v20, v21 + 10.0);

    if (v22)
    {
      if (v24)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 3;
    }
  }

  else
  {
    v25 = 2;
  }

  sub_10072258C(v14, a2, v25);
  v26 = *&v13[v17];
  if (v26)
  {
    v27 = *&v26[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay];
    v28 = v26;
    v29 = [v27 arrangedSubviews];
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v14;
    if (v30 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v32 = 0;
      v33 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate;
      v34 = v30 & 0xC000000000000001;
      v49 = v30;
      v50 = v30 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v34)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v50 + 16))
          {
            goto LABEL_34;
          }

          v36 = *(v30 + 8 * v32 + 32);
        }

        v37 = v36;
        v38 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        sub_10000630C(&v28[v33], v52);
        sub_1005B981C(&unk_101A0E8A0, &unk_101477BB0);
        type metadata accessor for CRLiOSMiniFormatterPresenter();
        if (swift_dynamicCast())
        {
          v39 = *&v51[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController];
          if (v39)
          {
            v40 = i;
            v41 = v33;
            v42 = v28;
            v43 = v39;
            v44 = [v43 topViewController];

            if (v44)
            {
              v45 = swift_dynamicCastClass();
              if (v45)
              {
                v46 = *(v45 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
                v47 = v46;

                if (v46)
                {

                  v35 = 0;
LABEL_30:
                  v28 = v42;
                  v33 = v41;
                  i = v40;
                  v30 = v49;
                  goto LABEL_16;
                }
              }

              else
              {
              }
            }

            v35 = 1;
            goto LABEL_30;
          }

          v35 = 1;
        }

        else
        {
          v35 = 1;
        }

LABEL_16:
        [v37 setIsAccessibilityElement:{v35, v48}];

        ++v32;
        if (v38 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:
  }

  else
  {
  }
}

void sub_10072258C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isInProcessOfPresentingSecondLayerPopover] & 1) == 0)
  {
    v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isInProcessOfPresentingSecondLayerPopover] = 1;
    sub_10071BC94(1, 0, 0);
    v7 = [objc_allocWithZone(UINavigationController) initWithRootViewController:a1];
    [v7 setNavigationBarHidden:1 animated:0];
    [v7 setDelegate:v3];
    v8 = type metadata accessor for CRLiOSMiniFormatterPopoverWrappedNavigationController();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterPopoverWrappedNavigationController_wrappedNavigationController] = v7;
    v23.receiver = v9;
    v23.super_class = v8;
    v10 = v7;
    v11 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
    [v11 setModalPresentationStyle:7];
    v12 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController];
    *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController] = v11;
    v13 = v11;

    v14 = [v13 popoverPresentationController];
    if (v14)
    {
      [v14 setDelegate:v3];
      [v14 setSourceView:a2];
      [v14 setPermittedArrowDirections:a3];
      sub_1007208C0(a2);
      sub_100006370(0, &qword_1019F6D00, UIView_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v14 setPassthroughViews:isa];

      v16 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController];
      *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController] = v10;
      v17 = v10;

      v18 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController];
      v19 = swift_allocObject();
      *(v19 + 16) = v3;
      v22[4] = sub_1007252EC;
      v22[5] = v19;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = *"";
      v22[2] = sub_100007638;
      v22[3] = &unk_101884198;
      v20 = _Block_copy(v22);
      v21 = v3;

      [v18 presentViewController:v13 animated:1 completion:v20];
      _Block_release(v20);
      sub_10071C828();

      v10 = v13;
      v13 = v14;
    }
  }
}

void sub_100722860()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController) traitCollection];
  if ([objc_opt_self() crl_phoneUI])
  {
  }

  else
  {
    v2 = [v1 crl_isCompactWidth];

    if (!v2)
    {
      return;
    }
  }

  v3 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  if (v3)
  {
    v4 = v3;
    [v3 unobscuredFrameDidChange];
    [v4 scrollCurrentSelectionToVisibleWithOptions:1];
  }
}

void sub_100722964(void *a1, void *a2)
{
  v3 = v2;
  v5 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController];
  *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController] = a1;
  v6 = a1;

  v7 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder];
  *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder] = a2;
  v8 = a2;

  [v6 setModalPresentationStyle:7];
  v9 = [v6 view];
  if (v9)
  {
    v10 = v9;
    [v9 setAccessibilityViewIsModal:1];

    v11 = [v6 popoverPresentationController];
    if (v11)
    {
      v12 = v11;
      [v11 setDelegate:v3];
      [v12 setPermittedArrowDirections:12];
      v13 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath];
      v14 = &qword_1019FC000;
      if (v13)
      {
        v15 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController];

        v16 = [v15 canvasView];
        [v12 setSourceView:v16];

        sub_100BDDAE4(v13);
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v25 = [*&v3[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController];
        if (v25)
        {
          v26 = v25;
          [v25 convertUnscaledToBoundsRect:{v18, v20, v22, v24}];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          [v26 visibleScaledRectForCanvasUI];
          v91.origin.x = v35;
          v79 = v35;
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v84.origin.x = v28;
          v84.origin.y = v30;
          v84.size.width = v32;
          v84.size.height = v34;
          v91.origin.y = v37;
          v91.size.width = v39;
          v91.size.height = v41;
          v85 = CGRectIntersection(v84, v91);
          x = v85.origin.x;
          y = v85.origin.y;
          width = v85.size.width;
          height = v85.size.height;
          v46 = CGRectGetWidth(v85);
          v82 = y;
          v86.origin.x = x;
          v86.origin.y = y;
          v47 = width;
          v86.size.width = width;
          v86.size.height = height;
          v48 = v46 * CGRectGetHeight(v86);
          v87.origin.x = v79;
          v87.origin.y = v37;
          v87.size.width = v39;
          v87.size.height = v41;
          v49 = CGRectGetWidth(v87);
          v88.origin.x = v79;
          v88.origin.y = v37;
          v88.size.width = v39;
          v88.size.height = v41;
          if (v49 * CGRectGetHeight(v88) >= v48 + v48)
          {
            MidX = x;
            MidY = v82;
          }

          else
          {
            v89.origin.x = x;
            v89.origin.y = v82;
            v89.size.width = v47;
            v89.size.height = height;
            MidX = CGRectGetMidX(v89);
            v90.origin.x = x;
            v90.origin.y = v82;
            v90.size.width = v47;
            v90.size.height = height;
            MidY = CGRectGetMidY(v90);
            v47 = 1.0;
            height = 1.0;
          }
        }

        else
        {
          MidX = 0.0;
          MidY = 0.0;
          v47 = 0.0;
          height = 0.0;
        }

        [v12 setSourceRect:{MidX, MidY, v47, height}];
      }

      else
      {
        v81 = objc_opt_self();
        v52 = [v81 _atomicIncrementAssertCount];
        aBlock[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, aBlock, "Cannot present an auxiliary popover without any reps selected on casnvas", 72, 2u);
        StaticString.description.getter("presentAuxiliary(popoverVC:from:)", 33, 2);
        v80 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Formatters/CRLiOSMiniFormatterPresenter.swift", 103, 2);
        v53 = String._bridgeToObjectiveC()();

        v54 = [v53 lastPathComponent];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v56;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v57 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v52;
        v59 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v59;
        v60 = sub_1005CF04C();
        *(inited + 104) = v60;
        *(inited + 72) = v80;
        *(inited + 136) = &type metadata for String;
        v61 = sub_1000053B0();
        *(inited + 112) = v55;
        *(inited + 120) = v78;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v61;
        *(inited + 152) = 1097;
        v62 = aBlock[0];
        *(inited + 216) = v59;
        *(inited + 224) = v60;
        *(inited + 192) = v62;
        v63 = v80;
        v64 = v62;
        v65 = static os_log_type_t.error.getter();
        sub_100005404(v57, &_mh_execute_header, v65, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v66 = static os_log_type_t.error.getter();
        sub_100005404(v57, &_mh_execute_header, v66, "Cannot present an auxiliary popover without any reps selected on casnvas", 72, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v67 = swift_allocObject();
        v67[2] = 8;
        v67[3] = 0;
        v67[4] = 0;
        v67[5] = 0;
        v68 = __VaListBuilder.va_list()();
        StaticString.description.getter("presentAuxiliary(popoverVC:from:)", 33, 2);
        v69 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Formatters/CRLiOSMiniFormatterPresenter.swift", 103, 2);
        v70 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Cannot present an auxiliary popover without any reps selected on casnvas", 72, 2);
        v71 = String._bridgeToObjectiveC()();

        [v81 handleFailureInFunction:v69 file:v70 lineNumber:1097 isFatal:0 format:v71 args:v68];

        v14 = &qword_1019FC000;
        v13 = 0;
      }

      [v3 dismissSecondLayerPopover];
      v72 = [v6 traitCollection];
      if ([objc_opt_self() crl_phoneUI])
      {
      }

      else if (!v72 || (v73 = [v72 crl_isCompactWidth], v72, (v73 & 1) == 0))
      {
        sub_10071B728(1, 1, 0);
      }

      if (v13)
      {
        v74 = *&v3[v14[334]];
        v75 = swift_allocObject();
        v75[2] = v6;
        aBlock[4] = sub_100724554;
        aBlock[5] = v75;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_101884148;
        v76 = _Block_copy(aBlock);
        v77 = v6;

        [v74 presentViewController:v77 animated:1 completion:v76];

        _Block_release(v76);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100723160(void *a1)
{
  v1 = UIAccessibilityScreenChangedNotification;
  v2 = [a1 view];
  UIAccessibilityPostNotification(v1, v2);
}

void sub_1007231C8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController;
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v5)
  {
    v6 = [v5 topViewController];
    if (v6)
    {
      v7 = v6;
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v8 = a1;
      v9 = static NSObject.== infix(_:_:)();

      if ((v9 & 1) != 0 && ([v8 isBeingPresented] & 1) == 0)
      {
        v10 = *(v2 + v4);
        if (v10)
        {
          v11 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController);
          if (v11)
          {
            v12 = v10;
            v13 = v11;
            sub_1007164E4(v14, v15, v16, v17);
            [v12 setPreferredContentSize:?];
            v18 = v13;
            [v12 preferredContentSize];
            [v18 setPreferredContentSize:?];
          }
        }
      }
    }
  }
}

void sub_100723324()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v2)
  {
    v3 = [v2 topViewController];
    if (v3)
    {
      v13 = v3;
      type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
      if (swift_dynamicCastClass())
      {
        v4 = *(v0 + v1);
        if (v4)
        {
          v5 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController);
          if (v5)
          {
            v6 = v4;
            v7 = v5;
            sub_1007164E4(v8, v9, v10, v11);
            [v6 setPreferredContentSize:?];
            v12 = v7;
            [v6 preferredContentSize];
            [v12 setPreferredContentSize:?];
          }
        }
      }
    }
  }
}

double sub_10072342C()
{
  v1 = v0;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v23 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v17)
  {
    v28 = v17;

    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v27 = v5;
    v24 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v18 = *(v10 + 8);
    v25 = v10 + 8;
    v26 = v18;
    v18(v12, v9);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10072454C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018840F8;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_100006490(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v21 = v29;
    v23 = v9;
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10000D494();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v20);

    (*(v2 + 8))(v4, v21);
    (*(v6 + 8))(v8, v27);
    v26(v16, v23);
  }

  return result;
}

void sub_100723834(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
    if (v3)
    {
      v4 = v3;
      v5 = [v4 topViewController];
      if (v5)
      {
        v6 = UIAccessibilityLayoutChangedNotification;
        v7 = v5;
        v8 = [v5 view];
        UIAccessibilityPostNotification(v6, v8);

        v2 = v7;
        v4 = v8;
      }

      v2 = v4;
    }
  }
}

id sub_100723910()
{
  result = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  if (result)
  {
    v2 = result;
    v3 = [result commandController];

    if (v3)
    {
      v4 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
      swift_beginAccess();
      v5 = *&v3[v4];
      if (v5 >> 62)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v6 > 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1007239DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 window];

      if (v4)
      {
        [v4 frame];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100723A90(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (result)
  {
    return [result pushViewController:a1 animated:1];
  }

  return result;
}

id sub_100723ABC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder) = 0;

  sub_10071C828();
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController);

  return [v3 becomeFirstResponderIfAppropriate];
}

void sub_100723B24()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 commandController];

    if (v3)
    {
      sub_10088E3FC(0);
      sub_10088F490();
    }
  }
}

void sub_100723BD4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 commandController];

    if (v3)
    {
      sub_10088E600(0);
    }
  }
}

void sub_100723CB8(void *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v3)
  {
    v4 = [v3 visibleViewController];
    if (v4)
    {
      v5 = v4;
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        sub_10071BE54();
      }
    }
  }
}

uint64_t sub_100723DF8(void *a1, void *a2)
{
  v4 = [a1 presentedViewController];
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController);
  if (v4)
  {
    v6 = v4;
    if (!v5)
    {

      return -1;
    }

    sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return -1;
    }
  }

  else if (v5)
  {
    return -1;
  }

  if ([objc_opt_self() crl_phoneUI] & 1) != 0 || (objc_msgSend(a2, "crl_isCompactWidth"))
  {
    return 1;
  }

  return -1;
}

void sub_100723F38(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController);
  v5 = v4;
  v6 = [a1 presentedViewController];
  v7 = v6;
  if (!v4)
  {
    if (v6)
    {

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v6)
  {

    goto LABEL_9;
  }

  sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
LABEL_7:
    sub_10071BE54();
  }

LABEL_9:
  v9 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController;
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController);
  v17 = v10;
  v11 = [a1 presentedViewController];
  if (v10)
  {
    if (v11)
    {
      v16 = v11;
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v12 = static NSObject.== infix(_:_:)();

      if ((v12 & 1) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    v11 = v17;
  }

  else if (!v11)
  {
LABEL_14:
    v13 = *(v2 + v9);
    *(v2 + v9) = 0;

    v14 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder);
    *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder) = 0;

    sub_10071C828();
    v15 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController);

    [v15 becomeFirstResponderIfAppropriate];
    return;
  }
}

void sub_100724248()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterPopoverWrappedNavigationController_wrappedNavigationController];
  [v4 willMoveToParentViewController:v0];
  [v0 addChildViewController:v4];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v4 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v8 addSubview:v9];

  [v4 didMoveToParentViewController:v0];
  v11 = [v0 view];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v4 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  isa = [v13 crl_constraintsToAllSidesOfItem:v12];

  if (!isa)
  {
    sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints:isa];
}

uint64_t sub_10072455C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1007245AC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 4 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100724628(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100006370(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100006370(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void sub_100724840(unint64_t a1, void *a2, char a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v39 = __CocoaSet.element(at:)();
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      return;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    v16 = v13;
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v34 = v11;
    v39 = __CocoaSet.Index.element.getter();
    type metadata accessor for CRLTransactableHashableWrapper();
    swift_dynamicCast();
    v17 = v38;
    Hasher.init(_seed:)();
    v18 = *(v17 + 24);
    v37 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 32))(ObjectType, v18);
    sub_100006490(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v20 = *(v9 + 8);
    v35 = v9 + 8;
    v36 = v16;
    v20(v15, v16);
    v6 = &v38;
    v21 = Hasher._finalize()();
    v22 = -1 << *(a4 + 32);
    a1 = v21 & ~v22;
    v33 = a4 + 56;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v32 = ~v22;
      do
      {
        v23 = a4;
        v24 = *(*(*(a4 + 48) + 8 * a1) + 24);
        v25 = swift_getObjectType();
        v26 = *(v24 + 32);

        v26(v25, v24);
        v27 = *(v37 + 24);
        v28 = swift_getObjectType();
        v29 = v34;
        (*(v27 + 32))(v28, v27);
        LODWORD(v6) = static UUID.== infix(_:_:)();

        v30 = v29;
        v31 = v36;
        v20(v30, v36);
        v20(v15, v31);
        if (v6)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v32;
        a4 = v23;
      }

      while (((*(v33 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != v6)
  {
    __break(1u);
LABEL_16:
  }
}

uint64_t sub_100724C24@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_100064110(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100724C7C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for CalculateExpression();
      swift_dynamicCast();
      return;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    type metadata accessor for CalculateExpression();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    sub_100006490(&qword_1019F37A0, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v7 = -1 << *(a4 + 32);
    a1 = v6 & ~v7;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v8 = ~v7;
      sub_100006490(&qword_1019F37A8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        a1 = (a1 + 1) & v8;
        if (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_16;
    }

LABEL_10:

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

uint64_t sub_100724F20@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  if (result < 0 || (v6 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v9 = *(a3 + 48);
    v10 = a4(0);
    return sub_10000C4FC(v9 + *(*(v10 - 8) + 72) * v6, a6, a5);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100724FF4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      a5(0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    a5(0);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_100725200(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10002C58C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100050F74(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100725298(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100725300(uint64_t a1)
{
  if (a1)
  {
    sub_10071998C(a1);
    v2 = v1;
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = _swiftEmptySetSingleton;
      while (v4 < *(v2 + 16))
      {
        v6 = v4 + 1;

        sub_1010ACA5C(v7, v5);
        v5 = v8;
        v4 = v6;
        if (v3 == v6)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }
}

void sub_1007253B0()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (!v2)
  {
    return;
  }

  v3 = [v2 topViewController];
  if (!v3)
  {
    return;
  }

  v12 = v3;
  type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
    v6 = v5;

    if (!v5)
    {
      return;
    }

    v7 = *(v0 + v1);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = [v8 visibleViewController];
    if (!v9)
    {
      v11 = v8;
      goto LABEL_11;
    }

    v12 = v9;
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      sub_1007211DC(v10, 0);
    }
  }

  v11 = v12;
LABEL_11:
}

void sub_1007254CC()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldRepositionSecondLayerPopover) == 1)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldRepositionSecondLayerPopover) = 0;
    sub_100720634();
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldUpdateSecondLayerPopoverPassthroughViews) == 1)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldUpdateSecondLayerPopoverPassthroughViews) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
    if (v1)
    {
      v2 = v1;
      v3 = [v2 popoverPresentationController];
      if (v3)
      {
        v4 = v3;
        v5 = sub_100720FAC();
        if (v5)
        {
          v6 = v5;
          sub_1007208C0(v5);
          sub_100006370(0, &qword_1019F6D00, UIView_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v4 setPassthroughViews:isa];
        }
      }
    }
  }

  v8 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldUpdateSecondLayerPermittedArrowDirections;
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldUpdateSecondLayerPermittedArrowDirections) == 1)
  {
    v9 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 visibleViewController];
      if (v11)
      {
        v14 = v11;
        type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          *(v0 + v8) = 0;
          sub_1007211DC(v12, 0);
        }

        v13 = v14;
      }

      else
      {
        v13 = v10;
      }
    }
  }
}

void sub_10072567C(void *a1, void *a2)
{
  type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
    v7 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_secondLayerPresentedBuilder);
    *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_secondLayerPresentedBuilder) = v6;
    v18 = a2;
    v8 = v6;

    [a1 setNavigationBarHidden:1 animated:1];
    v9 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
    if (v9)
    {
      v10 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController);
      if (v10)
      {
        v11 = v9;
        v12 = v10;
        sub_1007164E4(v13, v14, v15, v16);
        [v11 setPreferredContentSize:?];
        v17 = v12;
        [v11 preferredContentSize];
        [v17 setPreferredContentSize:?];
      }
    }

    sub_100722860();
  }
}

uint64_t sub_100725840()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (type metadata accessor for CRLUSDZEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    [v3 showMediaReplaceUI:v0];
  }

  return swift_unknownObjectRelease();
}

id sub_1007258E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLMiniFormatterUSDZDataProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t CRLWPWritingDirection.asNSWritingDirection.getter(uint64_t result)
{
  if ((result + 1) >= 3)
  {
    v26[11] = v1;
    v26[12] = v2;
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v26[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v26, "Unknown direction.", 18, 2u);
    StaticString.description.getter("asNSWritingDirection", 20, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingDirection.swift", 87, 2);
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
    v13 = sub_1005CF000();
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 39;
    v16 = v26[0];
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
    sub_100005404(v11, &_mh_execute_header, v20, "Unknown direction.", 18, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("asNSWritingDirection", 20, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingDirection.swift", 87, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown direction.", 18, 2);
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:39 isFatal:0 format:v25 args:v22];

    return -1;
  }

  return result;
}

uint64_t CRLWPWritingDirection.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case -1:
      return 0x6C61727574614ELL;
    case 0:
      return 0x206F74207466654CLL;
    case 1:
      return 0x6F74207468676952;
  }

  v27[11] = v1;
  v27[12] = v2;
  v4 = objc_opt_self();
  v5 = [v4 _atomicIncrementAssertCount];
  v27[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v27, "Unknown writing direction.", 26, 2u);
  StaticString.description.getter("description", 11, 2);
  v6 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingDirection.swift", 87, 2);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v5;
  v14 = sub_1005CF000();
  *(inited + 96) = v14;
  v15 = sub_1005CF04C();
  *(inited + 104) = v15;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for String;
  v16 = sub_1000053B0();
  *(inited + 112) = v9;
  *(inited + 120) = v11;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v16;
  *(inited + 152) = 55;
  v17 = v27[0];
  *(inited + 216) = v14;
  *(inited + 224) = v15;
  *(inited + 192) = v17;
  v18 = v6;
  v19 = v17;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v21, "Unknown writing direction.", 26, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v22 = swift_allocObject();
  v22[2] = 8;
  v22[3] = 0;
  v22[4] = 0;
  v22[5] = 0;
  v23 = __VaListBuilder.va_list()();
  StaticString.description.getter("description", 11, 2);
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingDirection.swift", 87, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unknown writing direction.", 26, 2);
  v26 = String._bridgeToObjectiveC()();

  [v4 handleFailureInFunction:v24 file:v25 lineNumber:55 isFatal:0 format:v26 args:v23];

  return 0x2E6E776F6E6B6E55;
}

uint64_t sub_1007260E4(uint64_t result)
{
  if ((result + 1) >= 3)
  {
    v26[11] = v1;
    v26[12] = v2;
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v26[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v26, "Unknown direction.", 18, 2u);
    StaticString.description.getter("init(_:)", 8, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingDirection.swift", 87, 2);
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
    v13 = sub_1005CF000();
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 24;
    v16 = v26[0];
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
    sub_100005404(v11, &_mh_execute_header, v20, "Unknown direction.", 18, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(_:)", 8, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingDirection.swift", 87, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown direction.", 18, 2);
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:24 isFatal:0 format:v25 args:v22];

    return -1;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CRLAssetDownloadManager.CRLAssetDownloadManagerThrottlingConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1007264B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100726500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100726550()
{
  qword_101AD62F8 = 97;
  unk_101AD6300 = 0xE100000000000000;
  qword_101AD6308 = swift_getKeyPath();
  unk_101AD6310 = 98;
  qword_101AD6318 = 0xE100000000000000;
  qword_101AD6320 = swift_getKeyPath();
  qword_101AD6328 = 99;
  qword_101AD6330 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD6338 = result;
  return result;
}

uint64_t sub_1007265C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v67 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v8 = UUID.uuidString.getter();
  v10 = v9;
  *(inited + 56) = &type metadata for String;
  v11 = sub_1000053B0();
  *(inited + 32) = v8;
  v12 = inited + 32;
  v66 = v11;
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  v13 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v14 = CROrderedSet.contains(_:)();
  v68 = v4;
  if (v14)
  {
    v61[1] = v13;
    v62 = a1;
    v63 = v6;
    v64 = v2;
    v61[0] = objc_opt_self();
    v65 = [v61[0] _atomicIncrementAssertCount];
    v69.i64[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v69, "Trying to insert scene which already exists for UUID %{public}", 62, 2u);
    StaticString.description.getter("insertScene(from:)", 18, 2);
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Scenes/CRLScenesData.swift", 96, 2);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v19;

    a1 = inited;
    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v20 = static OS_os_log.crlAssert;
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_10146CA70;
      *(v21 + 56) = &type metadata for Int32;
      *(v21 + 64) = &protocol witness table for Int32;
      *(v21 + 32) = v65;
      v22 = sub_1005CF000();
      *(v21 + 96) = v22;
      v23 = sub_1000683C4(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
      *(v21 + 72) = v15;
      v24 = v66;
      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = v24;
      *(v21 + 104) = v23;
      *(v21 + 112) = v18;
      *(v21 + 120) = v6;
      *(v21 + 176) = &type metadata for UInt;
      *(v21 + 184) = &protocol witness table for UInt;
      *(v21 + 152) = 50;
      v25 = v69.i64[0];
      *(v21 + 216) = v22;
      *(v21 + 224) = v23;
      *(v21 + 192) = v25;
      v26 = v15;
      v27 = v25;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v29, "Trying to insert scene which already exists for UUID %{public}", 62, 2, a1);

      type metadata accessor for __VaListBuilder();
      v15 = swift_allocObject();
      v15[2] = 8;
      v15[3] = 0;
      v4 = v15 + 3;
      v15[4] = 0;
      v15[5] = 0;
      v66 = a1;
      v30 = *(a1 + 16);
      if (!v30)
      {
LABEL_29:
        v47 = __VaListBuilder.va_list()();
        StaticString.description.getter("insertScene(from:)", 18, 2);
        v48 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Scenes/CRLScenesData.swift", 96, 2);
        v49 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Trying to insert scene which already exists for UUID %{public}", 62, 2);
        v50 = String._bridgeToObjectiveC()();

        [v61[0] handleFailureInFunction:v48 file:v49 lineNumber:50 isFatal:0 format:v50 args:v47];

        v6 = v63;
        a1 = v62;
        v4 = v68;
        goto LABEL_30;
      }

      v31 = 0;
      a1 = 40;
      while (1)
      {
        v32 = (v12 + 40 * v31);
        v18 = v32[3];
        sub_100020E58(v32, v18);
        v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v6 = *v4;
        v34 = *(v33 + 16);
        v35 = __OFADD__(*v4, v34);
        v36 = *v4 + v34;
        if (v35)
        {
          break;
        }

        v37 = v15[4];
        if (v37 >= v36)
        {
          goto LABEL_20;
        }

        if (v37 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v18 = v15[5];
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        v15[4] = v36;
        if ((v36 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v38 = v12;
        v39 = v33;
        v40 = swift_slowAlloc();
        v41 = v40;
        v15[5] = v40;
        if (v18)
        {
          if (v40 != v18 || v40 >= &v18[8 * v6])
          {
            memmove(v40, v18, 8 * v6);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v33 = v39;
          v12 = v38;
          a1 = 40;
LABEL_20:
          v41 = v15[5];
          if (!v41)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v33 = v39;
        v12 = v38;
        a1 = 40;
        if (!v41)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v43 = *(v33 + 16);
        if (v43)
        {
          v44 = (v33 + 32);
          v45 = *v4;
          while (1)
          {
            v46 = *v44++;
            *&v41[8 * v45] = v46;
            v45 = *v4 + 1;
            if (__OFADD__(*v4, 1))
            {
              break;
            }

            *v4 = v45;
            if (!--v43)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v31 == v30)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

LABEL_28:

LABEL_30:
  CROrderedSet.append(_:)();
  v51 = a1;
  v52 = *(v67 + 16);
  v52(v6, v51, v4);
  v53 = type metadata accessor for CRLSceneDataValue(0);
  v54 = (v51 + *(v53 + 20));
  v55 = v54[1];
  v69.i64[0] = *v54;
  v69.i64[1] = v55;
  type metadata accessor for CRLBoardScenesCRDTData(0);

  sub_1005B981C(&qword_1019FCC98, &unk_1014AD3F0);
  CRDictionary.subscript.setter();
  v52(v6, v51, v68);
  v56 = (v51 + *(v53 + 24));
  v57.f64[0] = *v56;
  v58.f64[0] = v56[1];
  v57.f64[1] = v56[2];
  v58.f64[1] = v56[3];
  *&v57.f64[0] = vcvt_f32_f64(v57);
  v59.i64[0] = LODWORD(v57.f64[0]);
  v59.i64[1] = HIDWORD(v57.f64[0]);
  v69 = vorrq_s8(vshll_n_s32(vcvt_f32_f64(v58), 0x20uLL), v59);
  v70 = _swiftEmptyDictionarySingleton;
  sub_1005B981C(&unk_101A22730, &unk_101477C50);
  return CRDictionary.subscript.setter();
}

BOOL sub_100726D18(uint64_t a1)
{
  v1 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_101A28650, &unk_101477C40);
  CROrderedSet.remove(_:)();
  v8 = (*(v5 + 48))(v3, 1, v4);
  if (v8 == 1)
  {
    sub_10000CAAC(v3, &qword_1019F6990, &qword_10146D2F0);
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlScenes;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v11 = UUID.uuidString.getter();
    v13 = v12;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v11;
    *(inited + 40) = v13;
    v14 = static os_log_type_t.default.getter();
    sub_100005404(v9, &_mh_execute_header, v14, "Scene attribute lookup failed for UUID %{public}", 48, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    type metadata accessor for CRLBoardScenesCRDTData(0);
    sub_1005B981C(&qword_1019FCC98, &unk_1014AD3F0);
    CRDictionary.removeValue(forKey:)();

    sub_1005B981C(&unk_101A22730, &unk_101477C50);
    CRDictionary.removeValue(forKey:)();

    (*(v5 + 8))(v7, v4);
  }

  return v8 != 1;
}

uint64_t sub_100727014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v10 = CROrderedSet.contains(_:)();
  if (v10)
  {
    (*(v7 + 16))(v9, a1, v6);
    v18[1] = a2;
    v18[2] = a3;
    type metadata accessor for CRLBoardScenesCRDTData(0);

    sub_1005B981C(&qword_1019FCC98, &unk_1014AD3F0);
    CRDictionary.subscript.setter();
  }

  else
  {
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlScenes;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v16 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v16, "Scene rename failed for UUID %{public}", 38, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
  }

  return v10 & 1;
}

uint64_t sub_100727234(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v24 = a3;
  v25 = a5;
  v22 = a2;
  v23 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v10 = CROrderedSet.contains(_:)();
  if (v10)
  {
    (*(v7 + 16))(v9, a1, v6);
    *&v11.f64[0] = v22.n128_u64[0];
    *&v11.f64[1] = v23.n128_u64[0];
    v12 = vcvt_f32_f64(v11);
    *&v13.f64[0] = v24.n128_u64[0];
    *&v13.f64[1] = v25.n128_u64[0];
    v14.i64[0] = v12.u32[0];
    v14.i64[1] = v12.u32[1];
    v26 = vorrq_s8(vshll_n_s32(vcvt_f32_f64(v13), 0x20uLL), v14);
    v27 = _swiftEmptyDictionarySingleton;
    type metadata accessor for CRLBoardScenesCRDTData(0);
    sub_1005B981C(&unk_101A22730, &unk_101477C50);
    CRDictionary.subscript.setter();
  }

  else
  {
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlScenes;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "Scene rename failed for UUID %{public}", 38, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
  }

  return v10 & 1;
}

uint64_t sub_100727474(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FCE50, &qword_101478328);
  __chkstk_darwin(v2 - 8);
  v51 = v42 - v3;
  v4 = sub_1005B981C(&qword_1019F66F8, &unk_101478330);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = v42 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v10 - 8);
  v12 = v42 - v11;
  v13 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v42 - v17;
  v19 = sub_1005B981C(&unk_101A22740, &unk_101478340);
  v55 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = v42 - v21;
  v49 = v14;
  (*(v14 + 16))(v18, v56, v13, v20);
  v23 = sub_10001A2F8(&qword_1019FCE58, &unk_101A28650, &unk_101477C40, &protocol conformance descriptor for CROrderedSet<A>);
  v50 = v13;
  v46 = v23;
  dispatch thunk of Sequence.makeIterator()();
  v24 = sub_10001A2F8(&unk_101A22750, &unk_101A22740, &unk_101478340, &protocol conformance descriptor for CROrderedSet<A>.Iterator);
  v57 = v22;
  v58 = v19;
  dispatch thunk of IteratorProtocol.next()();
  v25 = *(v7 + 48);
  if (v25(v12, 1, v6) == 1)
  {
LABEL_2:
    (*(v55 + 8))(v57, v58);
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlScenes;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v26, &_mh_execute_header, v27, "Reordered scene IDs are not equal to existing scene IDs.", 56, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v28 = *(v7 + 32);
    v48 = (v7 + 8);
    v44 = v24;
    v45 = v12;
    v42[1] = v7 + 32;
    v43 = v25;
    v42[0] = v28;
LABEL_6:
    v28(v9, v12, v6);
    v29 = 0;
    v30 = *(a1 + 16);
    do
    {
      if (v30 == v29)
      {
        (*v48)(v9, v6);
        v12 = v45;
        dispatch thunk of IteratorProtocol.next()();
        v33 = v43(v12, 1, v6);
        v28 = v42[0];
        if (v33 != 1)
        {
          goto LABEL_6;
        }

        goto LABEL_2;
      }

      v31 = v29 + 1;
      sub_1000683C4(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = v31;
    }

    while ((v32 & 1) == 0);
    (*v48)(v9, v6);
    (*(v55 + 8))(v57, v58);
    v59 = a1;
    sub_1005B981C(&qword_101A0A360, qword_101489F20);
    sub_10001A2F8(&qword_1019FCE60, &qword_101A0A360, qword_101489F20, &protocol conformance descriptor for [A]);
    sub_10001A2F8(&qword_1019FCE68, &unk_101A28650, &unk_101477C40, &protocol conformance descriptor for CROrderedSet<A>);
    v34 = v52;
    v35 = v50;
    BidirectionalCollection<>.difference<A>(from:)();
    sub_10001A2F8(&qword_1019FCE70, &unk_101A28650, &unk_101477C40, &protocol conformance descriptor for CROrderedSet<A>);
    v36 = v51;
    RangeReplaceableCollection.applying(_:)();
    v37 = v49;
    if ((*(v49 + 48))(v36, 1, v35) != 1)
    {
      v41 = v47;
      (*(v37 + 32))(v47, v36, v35);
      CROrderedSet.removeAll()();
      CROrderedSet.append<A>(contentsOf:)();
      (*(v37 + 8))(v41, v35);
      (*(v53 + 8))(v34, v54);
      return 1;
    }

    sub_10000CAAC(v36, &qword_1019FCE50, &qword_101478328);
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlScenes;
    v39 = static os_log_type_t.default.getter();
    sub_100005404(v38, &_mh_execute_header, v39, "Failed to apply scene reordering.", 33, 2, _swiftEmptyArrayStorage);
    (*(v53 + 8))(v34, v54);
  }

  return 0;
}

uint64_t sub_100727C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UUID();
  sub_1000683C4(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((static CROrderedSet.== infix(_:_:)() & 1) == 0 || (static CRDictionary.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10007F4A4();
  sub_10007F5AC();

  return static CRDictionary.== infix(_:_:)();
}

uint64_t sub_100727DAC@<X0>(void *a1@<X8>)
{
  if (qword_1019F1510 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = unk_101AD6300;
  v3 = qword_101AD6308;
  v2 = unk_101AD6310;
  v4 = qword_101AD6318;
  v5 = qword_101AD6320;
  v6 = qword_101AD6328;
  v7 = qword_101AD6330;
  v8 = qword_101AD6338;
  *a1 = qword_101AD62F8;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t sub_100727E78(uint64_t a1)
{
  v2 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return static CRStruct_3.fieldKeys.getter(a1, v2);
}

uint64_t sub_100727EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for UUID();
  sub_1000683C4(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  CROrderedSet.init()();
  CRDictionary.init()();
  sub_10007F4A4();
  sub_10007F5AC();
  result = CRDictionary.init()();
  *(a2 + *(a1 + 28)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100727FF4(uint64_t a1)
{
  v2 = sub_1000683C4(&qword_1019FCDC8, type metadata accessor for CRLBoardScenesCRDTData, aA_47);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100728060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1007280DC(uint64_t a1, uint64_t a2)
{
  sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.actionUndoingDifference(from:)();
}

uint64_t sub_100728160(uint64_t a1, uint64_t a2)
{
  sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.apply(_:)();
}

uint64_t sub_1007281DC(uint64_t a1, uint64_t a2)
{
  sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.hasDelta(from:)();
}

uint64_t sub_100728258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.delta(_:from:)();
}

uint64_t sub_1007282EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100728368(uint64_t a1, uint64_t a2)
{
  sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.merge(delta:)();
}

uint64_t sub_1007283E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100728468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1007284EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_100728580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1007285FC()
{
  sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.needToFinalizeTimestamps()();
}

uint64_t sub_100728668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1007286E4(uint64_t a1, uint64_t a2)
{
  sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.merge(_:)();
}

uint64_t sub_100728768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_1007289EC(uint64_t a1)
{
  v2 = sub_1000683C4(&qword_1019FCE20, type metadata accessor for CRLBoardScenesCRDTData, byte_101478220);

  return CRStruct_3.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100728A68()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6174614474636572;
  }
}

uint64_t sub_100728AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174614474636572 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100728B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100729250();
  v5 = sub_1007292A8();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100728BF4(uint64_t a1)
{
  v2 = sub_1007292A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100728C30(uint64_t a1)
{
  v2 = sub_1007292A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100728C6C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FCE38, &unk_101478318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1007292A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11 = 0;
  sub_1007299A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v12 = *(v3 + 2);
    v11 = 1;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100728E14(float32x4_t *a1, float32x4_t *a2)
{
  if (vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))))
  {
    sub_100B3216C(a1[1].i64[0], a2[1].i64[0]);
  }
}

double sub_100728E44@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100729750(a2, &v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100728EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007299F8();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100728EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007299F8();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100728F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007F4A4();
  v7 = sub_10007F5AC();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100728FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007299F8();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_10072909C(uint64_t a1)
{
  v2 = sub_1007293F4();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_1007290F0()
{
  result = qword_1019FCD60;
  if (!qword_1019FCD60)
  {
    result = swift_getWitnessTable(aI_60, &type metadata for CRLSceneSavedRectData, v0, v1);
    atomic_store(result, &qword_1019FCD60);
  }

  return result;
}

unint64_t sub_100729148()
{
  result = qword_1019FCD68;
  if (!qword_1019FCD68)
  {
    result = swift_getWitnessTable(byte_101477D80, &type metadata for CRLSceneSavedRectData, v0, v1);
    atomic_store(result, &qword_1019FCD68);
  }

  return result;
}

unint64_t sub_1007291A0()
{
  result = qword_1019FCD70;
  if (!qword_1019FCD70)
  {
    result = swift_getWitnessTable(byte_101477E18, &type metadata for CRLSceneSavedRectData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FCD70);
  }

  return result;
}

unint64_t sub_1007291F8()
{
  result = qword_1019FCD78;
  if (!qword_1019FCD78)
  {
    result = swift_getWitnessTable(byte_101477F30, &type metadata for CRLSceneSavedRectData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FCD78);
  }

  return result;
}

unint64_t sub_100729250()
{
  result = qword_1019FCD80;
  if (!qword_1019FCD80)
  {
    result = swift_getWitnessTable(byte_101477EF8, &type metadata for CRLSceneSavedRectData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FCD80);
  }

  return result;
}

unint64_t sub_1007292A8()
{
  result = qword_1019FCD88;
  if (!qword_1019FCD88)
  {
    result = swift_getWitnessTable(asc_101477E50, &type metadata for CRLSceneSavedRectData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FCD88);
  }

  return result;
}

unint64_t sub_100729300()
{
  result = qword_1019FCD90;
  if (!qword_1019FCD90)
  {
    result = swift_getWitnessTable(aQ_53, &type metadata for CRLSceneSavedRectData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FCD90);
  }

  return result;
}

unint64_t sub_100729358()
{
  result = qword_1019FCD98;
  if (!qword_1019FCD98)
  {
    result = swift_getWitnessTable(byte_101477EA0, &type metadata for CRLSceneSavedRectData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FCD98);
  }

  return result;
}

unint64_t sub_1007293F4()
{
  result = qword_1019FCDB0;
  if (!qword_1019FCDB0)
  {
    result = swift_getWitnessTable(byte_101477DD0, &type metadata for CRLSceneSavedRectData, v0, v1);
    atomic_store(result, &qword_1019FCDB0);
  }

  return result;
}

uint64_t sub_100729750@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_1019FCE28, &unk_101478308);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1007292A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v14 = 0;
  sub_100729950();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v13[0];
  v10 = v13[1];
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v14 = 1;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v13[0];
  result = sub_100005070(a1);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  return result;
}

unint64_t sub_100729950()
{
  result = qword_1019FCE30;
  if (!qword_1019FCE30)
  {
    result = swift_getWitnessTable(byte_101493F2C, &type metadata for CRLRectData, v0, v1);
    atomic_store(result, &qword_1019FCE30);
  }

  return result;
}

unint64_t sub_1007299A4()
{
  result = qword_1019FCE40;
  if (!qword_1019FCE40)
  {
    result = swift_getWitnessTable(byte_101493F04, &type metadata for CRLRectData, v0, v1);
    atomic_store(result, &qword_1019FCE40);
  }

  return result;
}

unint64_t sub_1007299F8()
{
  result = qword_1019FCE48;
  if (!qword_1019FCE48)
  {
    result = swift_getWitnessTable(byte_101477F58, &type metadata for CRLSceneSavedRectData, v0, v1);
    atomic_store(result, &qword_1019FCE48);
  }

  return result;
}

void sub_100729A94(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100729B34()
{
  result = qword_1019FCF10;
  if (!qword_1019FCF10)
  {
    result = swift_getWitnessTable(byte_1014783E8, &type metadata for CRLSceneSavedRectData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FCF10);
  }

  return result;
}

uint64_t _s15ContextMenuItemOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7B)
  {
    goto LABEL_17;
  }

  if (a2 + 133 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 133) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 133;
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

      return (*a1 | (v4 << 8)) - 133;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 133;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s15ContextMenuItemOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 133 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 133) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7B)
  {
    v4 = 0;
  }

  if (a2 > 0x7A)
  {
    v5 = ((a2 - 123) >> 8) + 1;
    *result = a2 - 123;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100729CE4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 1) + 5;
  }
}

_BYTE *sub_100729D10(_BYTE *result, unsigned int a2)
{
  if (a2 < 5)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = a2 & 1 ^ 0xA1;
  }

  return result;
}

id sub_100729D50(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playNormalImage] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playPressedImage] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_pauseNormalImage] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_pausePressedImage] = 0;
  v3 = OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_imageRenderable;
  *&v1[v3] = [objc_opt_self() renderable];
  v1[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying] = 0;
  v1[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRLUSDZPlayPauseKnob();
  v4 = objc_msgSendSuper2(&v6, "initWithType:position:radius:tag:onRep:", 0, 5, a1, 0.0, 0.0, 24.0);
  sub_100729EF8();
  [v4 setWorksWithStylus:1];
  [v4 setWorksWhenRepLocked:1];
  [v4 setWorksWhenDocumentIsSharedReadOnly:1];
  sub_10072A680();
  sub_10072A460();

  return v4;
}

id sub_100729EF8()
{
  result = [v0 rep];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  type metadata accessor for CRLUSDZRep(0);
  [swift_dynamicCastClassUnconditional() boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;

  [v0 radius];
  v8 = v7;
  result = [v0 rep];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = [swift_dynamicCastClassUnconditional() canvas];

  if (v10)
  {
    [v10 viewScale];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = (v8 + 8.0) / v12;
  v14 = sub_1004A48FC();
  v15 = v4 * 0.5 - v13;
  if (v14)
  {
    v15 = -v15;
  }

  return [v0 setOffset:{v15, v6 * 0.5 - v13}];
}

uint64_t sub_10072A060()
{
  v1 = v0;
  v2 = [v0 knobImage];
  v3 = *&v0[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playNormalImage];
  if (v2)
  {
    v4 = v2;
    if (v3)
    {
      sub_10072AAB4();
      v5 = v3;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  else if (!v3)
  {
LABEL_6:
    v7 = 1;
    return v7 & 1;
  }

  v8 = [v1 knobImage];
  v9 = *&v1[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playPressedImage];
  v7 = v9 == 0;
  if (v8)
  {
    v10 = v8;
    if (v9)
    {
      sub_10072AAB4();
      v11 = v9;
      v7 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

id sub_10072A280()
{
  v1 = [objc_opt_self() renderable];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_imageRenderable];
  v3 = v1;
  [v3 addSubrenderable:v2];
  [v0 radius];
  v4 = sub_10011ECB4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v0 radius];
  v12 = [objc_opt_self() bezierPathWithContinuousCornerRoundedRect:v4 cornerRadius:{v6, v8, v10, v11}];
  [v3 setBounds:{v4, v6, v8, v10}];
  v13 = [v12 CGPath];
  [v3 setPath:v13];

  sub_10072AB58();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 CGColor];
  }

  else
  {
    v16 = 0;
  }

  [v3 setFillColor:v16];

  return v3;
}

void sub_10072A460()
{
  v22 = [v0 knobImage];
  if (v22)
  {
    v1 = [v0 renderable];
    if (v1)
    {
      v2 = v1;
      v3 = objc_opt_self();
      [v3 begin];
      [v3 disableActions];
      v4 = [v0 rep];
      v5 = 1.0;
      if (v4)
      {
        v6 = v4;
        v7 = [v4 canvas];

        if (v7)
        {
          [v7 contentsScale];
          v5 = v8;
        }
      }

      v9 = OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_imageRenderable;
      v10 = *&v0[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_imageRenderable];
      [v22 size];
      [v10 setBounds:sub_10011ECB4()];

      [v2 bounds];
      v15 = sub_100120414(v11, v12, v13, v14);
      v17 = v16;
      v18 = sub_10072A060();
      v19 = v15 + 2.88;
      if ((v18 & 1) == 0)
      {
        v19 = v15;
      }

      [*&v0[v9] setPosition:{v19, v17}];
      v20 = *&v0[v9];
      v21 = [v22 CGImageForContentsScale:v5];
      [v20 setContents:v21];

      [v3 commit];
    }
  }
}

void sub_10072A680()
{
  v1 = sub_10072A8F0();
  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playNormalImage);
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playNormalImage) = v1;
  v5 = v1;

  v6 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playPressedImage);
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playPressedImage) = v3;
  v7 = v3;

  v8 = sub_10072A8F0();
  v10 = v9;

  v11 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_pauseNormalImage);
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_pauseNormalImage) = v8;

  v12 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_pausePressedImage);
  *(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_pausePressedImage) = v10;
}

void sub_10072A764(void **a1)
{
  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = [objc_allocWithZone(CRLColor) initWithUIColor:v2];

  v4 = *a1;
  *a1 = v3;
}

id sub_10072A81C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZPlayPauseKnob();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10072A8F0()
{
  v0 = [objc_opt_self() configurationWithPointSize:3 weight:22.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_allocWithZone(CRLImage) initWithUIImage:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  if (v3)
  {
    v6 = [v3 compositedImageWithColor:v5 alpha:20 blendMode:1.0];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v4 blackColor];
  if (v6)
  {
    [v7 compositedImageWithColor:v8 alpha:20 blendMode:0.333333333];
  }

  return v6;
}

unint64_t sub_10072AAB4()
{
  result = qword_1019FAC38;
  if (!qword_1019FAC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FAC38);
  }

  return result;
}

uint64_t sub_10072AB00()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked))
  {
    v1 = &OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_pausePressedImage;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_pauseNormalImage;
  }

  v2 = &OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playPressedImage;
  if (!*(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked))
  {
    v2 = &OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_playNormalImage;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying))
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  return *(v0 + *v3);
}

void sub_10072AB58()
{
  v7 = 0;
  v0 = objc_opt_self();
  v1 = [v0 traitCollectionWithUserInterfaceStyle:1];
  v2 = swift_allocObject();
  *(v2 + 16) = &v7;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10072ACF4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10002AAE4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_101884450;
  v4 = _Block_copy(aBlock);
  v5 = v1;

  [v0 crl_withTraitCollectionAsCurrent:v5 performBlock:v4];

  _Block_release(v4);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_10072ACFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_10072AD20, 0, 0);
}

uint64_t sub_10072AD20()
{
  if (*(*(v0 + 56) + 16))
  {
    sub_100020E58(*(v0 + 72), *(*(v0 + 72) + 24));
    *(v0 + 88) = type metadata accessor for MainActor();
    *(v0 + 96) = static MainActor.shared.getter();
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_10072AE54;
    v2 = *(v0 + 64);

    return sub_1010AF408(v2);
  }

  else
  {
    sub_10072BCBC();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10072AE54(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_10072B1A8;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_10072AFD4;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10072AFD4()
{
  v1 = v0[15];

  v0[5] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v0[6] = &off_1018ADA90;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_10072B094;
  v3 = v0[7];

  return sub_10072B6BC(v3, (v0 + 2));
}

uint64_t sub_10072B094(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_10072B658;
  }

  else
  {
    v4 = sub_10072B228;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10072B1A8()
{

  return _swift_task_switch(sub_10072B210, 0, 0);
}

uint64_t sub_10072B228()
{
  sub_100020E58(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10072B2CC;
  v2 = v0[17];

  return sub_100FE17C4(v2);
}

uint64_t sub_10072B2CC()
{

  return _swift_task_switch(sub_10072B3C8, 0, 0);
}

uint64_t sub_10072B3C8()
{
  v1 = *sub_100020E58(*(v0 + 72), *(*(v0 + 72) + 24));
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_10072B470;

  return sub_100FF8D2C(v0 + 16, v1);
}

uint64_t sub_10072B470()
{
  *(*v1 + 168) = v0;

  if (v0)
  {

    v2 = sub_10072B5F4;
  }

  else
  {
    v2 = sub_10072B58C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10072B58C()
{
  sub_100005070(v0 + 2);
  v1 = v0[1];
  v2 = v0[17];

  return v1(v2);
}

uint64_t sub_10072B5F4()
{
  sub_100005070((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10072B658()
{
  sub_100005070((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10072B6BC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10072B788, 0, 0);
}

uint64_t sub_10072B788(uint64_t a1)
{
  v2 = v1[2];
  v3 = *(v2 + 16);
  v25 = v3;
  if (v3)
  {
    v4 = v1[5];
    v28 = *(v4 + 16);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v7 = (v4 + 32);
    v26 = (v4 + 8);
    v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    do
    {
      v28(v1[7], v5, v1[4]);
      v8 = URL.scheme.getter();
      if (v9)
      {
        v10 = v8 == 0x7370747468 && v9 == 0xE500000000000000;
        if (v10 || (v11 = v8, v12 = v9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v11 == 1886680168 ? (v13 = v12 == 0xE400000000000000) : (v13 = 0), v13))
        {

LABEL_18:
          v15 = *v7;
          (*v7)(v1[6], v1[7], v1[4]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100776944(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_100776944((v16 > 1), v17 + 1, 1);
          }

          v18 = v1[6];
          v19 = v1[4];
          _swiftEmptyArrayStorage[2] = v17 + 1;
          v15(_swiftEmptyArrayStorage + v27 + v17 * v6, v18, v19);
          goto LABEL_4;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_18;
        }
      }

      (*v26)(v1[7], v1[4]);
LABEL_4:
      v5 += v6;
      --v3;
    }

    while (v3);
  }

  v1[8] = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2] != v25)
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.appIntents;
    v21 = static os_log_type_t.debug.getter();
    sub_100005404(v20, &_mh_execute_header, v21, "Attempted to import non web urls as link previews", 49, 2, _swiftEmptyArrayStorage);
  }

  v22 = swift_task_alloc();
  v1[9] = v22;
  *v22 = v1;
  v22[1] = sub_10072BAA0;
  v23 = v1[3];

  return sub_100A094BC(_swiftEmptyArrayStorage, v23);
}

uint64_t sub_10072BAA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_10072BC44;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_10072BBC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10072BBC8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_10072BC44()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10072BCBC()
{
  result = qword_1019FCF78;
  if (!qword_1019FCF78)
  {
    result = swift_getWitnessTable(aQ_48, &type metadata for CRLAppIntentsBoardItemsImporterError, v0, v1);
    atomic_store(result, &qword_1019FCF78);
  }

  return result;
}

unint64_t UUID.crl_data()(uint64_t a1)
{
  v10 = UUID.uuid.getter();
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  UUID.uuid.getter();
  return sub_100024DD4(&v10, 0x10uLL);
}

unint64_t sub_10072BE80()
{
  result = qword_1019FCF80;
  if (!qword_1019FCF80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UUID.UUIDCodingError, &type metadata for UUID.UUIDCodingError, v0, v1);
    atomic_store(result, &qword_1019FCF80);
  }

  return result;
}

double sub_10072BEE4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A0E8B0, off_10182F740))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v5 = [v3 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_9:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v7 = [v6 anyBoardItem];
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_9;
  }

  type metadata accessor for CRLBoardItem(0);
  sub_1005B981C(&unk_101A0B070, &unk_10148AB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10072C004()
{
  v0 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  sub_10072BEE4(&v9);
  if (v10)
  {
    sub_100050F74(&v9, v11);
    v3 = v12;
    v4 = v13;
    sub_100020E58(v11, v12);
    (*(v4 + 8))(v3, v4);
    sub_100005070(v11);
    v5 = type metadata accessor for CRLAssetData(0);
    if ((*(*(v5 - 8) + 48))(v2, 1, v5) != 1)
    {
      v6 = *&v2[*(v5 + 20)];

      sub_10072C8E4(v2);
      return v6;
    }
  }

  else
  {
    sub_10000CAAC(&v9, &qword_1019FCFB8, &unk_1014785F0);
    v8 = type metadata accessor for CRLAssetData(0);
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  }

  sub_10000CAAC(v2, &unk_101A1B880, &unk_10147AB00);
  return 0;
}

id sub_10072C1BC()
{
  v0 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v0 - 8);
  v2 = &v31 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  sub_10072BEE4(&v31);
  if (v32)
  {
    sub_100050F74(&v31, v33);
    v10 = v34;
    v11 = v35;
    sub_100020E58(v33, v34);
    (*(v11 + 8))(v10, v11);
    v12 = type metadata accessor for CRLAssetData(0);
    if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
    {
      sub_10000CAAC(v9, &unk_101A1B880, &unk_10147AB00);
      v13 = 0;
    }

    else
    {
      v14 = v34;
      v15 = v35;
      sub_100020E58(v33, v34);
      v16 = (*(v15 + 16))(v14, v15);
      v17 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
      os_unfair_lock_lock(*(v17 + 16));
      v18 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
      v19 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      if (v19)
      {
        v20 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      }

      else
      {
        v21 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
        v22 = v16;
        v23 = sub_10001F1A0(v22);

        v24 = *&v16[v18];
        *&v16[v18] = v23;
        v20 = v23;

        v19 = 0;
      }

      v25 = *(v17 + 16);
      v26 = v19;
      os_unfair_lock_unlock(v25);
      sub_10108CAF4(v9, 0, 3, 0, 0, v2);

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        sub_10000CAAC(v2, &unk_1019F33C0, &unk_101468A60);
        v13 = 0;
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        URL._bridgeToObjectiveC()(v27);
        v29 = v28;
        v13 = [v28 crl_fileSize];

        (*(v4 + 8))(v6, v3);
      }

      sub_10072C8E4(v9);
    }

    sub_100005070(v33);
  }

  else
  {
    sub_10000CAAC(&v31, &qword_1019FCFB8, &unk_1014785F0);
    return 0;
  }

  return v13;
}

id sub_10072C580()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_1019FCFB0, off_10182F8C0))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v4 = [v5 canRemoveImageBackground];
    }

    else
    {
      v4 = 0;
    }
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10072C654()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_1019FCFB0, off_10182F8C0))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      [v3 removeImageBackground:v0];
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10072C730(uint64_t a1)
{
  v14[3] = type metadata accessor for CRLMiniFormatterMediaDataProvider();
  v14[0] = v1;
  sub_100601584(v14, &v10);
  if (v11)
  {
    sub_10000BF3C(&v10, &v12);
    v2 = *&v1[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    if (sub_100006370(0, &qword_1019FCFB0, off_10182F8C0))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v5 = v1;
    v6 = [v2 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      sub_100020E58(&v12, v13);
      [v8 showMediaReplaceUI:_bridgeAnythingToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_100005070(&v12);
  }

  else
  {
    v4 = v1;
    sub_10000CAAC(&v10, &unk_1019F4D00, &unk_10146E7F0);
  }

  return sub_10000CAAC(v14, &unk_1019F4D00, &unk_10146E7F0);
}

id sub_10072C88C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLMiniFormatterMediaDataProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10072C8E4(uint64_t a1)
{
  v2 = type metadata accessor for CRLAssetData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10072C940(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for CRLCloudKitOperationSink();
    v6 = swift_allocObject();
    v7 = qword_1019F1588;
    v8 = v4;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_101AD6518;
    v6[2] = qword_101AD6518;
    v46[3] = v5;
    v46[4] = &off_101884A78;
    v46[0] = v6;
    v10 = type metadata accessor for CRLCloudAssetDownloader();
    v11 = swift_allocObject();
    v12 = sub_10002A948(v46, v5);
    v47 = &v42;
    v13 = __chkstk_darwin(v12);
    v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v44 = v5;
    v45 = &off_101884A78;
    *&v43 = v17;
    v18 = v9;
    swift_defaultActor_initialize();
    v11[15] = 0;
    swift_unknownObjectWeakInit();
    v11[21] = _swiftEmptySetSingleton;
    v11[22] = _swiftEmptyDictionarySingleton;
    v11[15] = &off_101884678;
    swift_unknownObjectWeakAssign();

    sub_100050F74(&v43, (v11 + 16));
    sub_100005070(v46);
    a2[3] = v10;
    a2[4] = &off_101884A68;

    *a2 = v11;
  }

  else
  {
    v47 = objc_opt_self();
    v19 = [v47 _atomicIncrementAssertCount];
    v46[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v46, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("init(store:)", 12, 2);
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v28 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v28;
    v29 = sub_1005CF04C();
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 23;
    v31 = v46[0];
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(store:)", 12, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v40 = String._bridgeToObjectiveC()();

    [v47 handleFailureInFunction:v38 file:v39 lineNumber:23 isFatal:0 format:v40 args:v37];

    sub_1007348E0();
    swift_allocError();
    *v41 = 0xD00000000000002CLL;
    v41[1] = 0x8000000101562150;
    swift_willThrow();
  }
}

uint64_t sub_10072CF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100BEB81C();
  if (!v1)
  {
    v4 = result;
    result = type metadata accessor for CRLNetworkReachabilityListener();
    a1[3] = result;
    a1[4] = &off_101899BB0;
    *a1 = v4;
  }

  return result;
}

void sub_10072CF90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(v2 + 272) + 16))
  {

    sub_10003E994(a1);
    if (v5)
    {

      swift_beginAccess();
      sub_1006F6E18(a2);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_10072D060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(sub_1005B981C(&qword_1019FD550, &qword_1014787A8) + 48));
  v4 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_observers;
  swift_beginAccess();
  v5 = sub_10003E994(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + v4);
    *(v3 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA46D8();
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);

    sub_100BDBB9C();
    *(v3 + v4) = v9;
  }

  return swift_endAccess();
}

uint64_t sub_10072D180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10072D1A0, a4, 0);
}

uint64_t sub_10072D1A0()
{
  sub_10072D578(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10072D200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10072D220, a4, 0);
}

uint64_t sub_10072D220()
{
  sub_10072D280(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_10072D280(uint64_t a1)
{
  if (qword_1019F2108 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlAssetDownloadManager;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 64) = v7;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "The AssetDownloadManager was being informed that an asset is ready to download asset: %{public}@. Resetting download attempts.", 126, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v9 = sub_1007317C0(a1);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_10146C6B0;
  v11 = UUID.uuidString.getter();
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v7;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v13, "resetDownloadAttempts for assetUUID: %@", 39, 2, v10);
  swift_setDeallocating();
  sub_100005070((v10 + 32));
  *(v9 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) = 0;

  sub_10072D578(a1);
}

void *sub_10072D450@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_10000BE14(v1 + 176, &v7, &unk_1019FD5A0, &qword_101478868);
  v4 = v8;
  v5 = sub_10000CAAC(&v7, &unk_1019FD5A0, &qword_101478868);
  if (!v4)
  {
    result = (*(v1 + 120))(&v7, v5);
    if (v2)
    {
      return result;
    }

    swift_beginAccess();
    sub_10002C638(&v7, v1 + 176, &unk_1019FD5A0, &qword_101478868);
    swift_endAccess();
  }

  result = sub_10000BE14(v1 + 176, &v7, &unk_1019FD5A0, &qword_101478868);
  if (v8)
  {
    return sub_100050F74(&v7, a1);
  }

  __break(1u);
  return result;
}

void sub_10072D578(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  sub_100730040();
  sub_100730258();
  v10 = sub_1007317C0(a1);
  if (*(v10 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask))
  {
  }

  else
  {
    if (*(v10 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) * *(v10 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) <= 273.0)
    {
      v11 = *(v10 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) * *(v10 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts);
    }

    else
    {
      v11 = 273.0;
    }

    v20 = v10;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    (*(v4 + 16))(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v14 = sub_100734A28(&qword_1019FD578, v13, type metadata accessor for CRLAssetDownloadManager, aI_62);
    v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v14;
    *(v17 + 32) = v11;
    (*(v4 + 32))(v17 + v15, v6, v3);
    *(v17 + v16) = v1;
    *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    swift_retain_n();

    v18 = sub_10064191C(0, 0, v9, &unk_101478860, v17);
    sub_100732AB0(v18);
  }
}

uint64_t sub_10072D864(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 144) = a6;
  *(v7 + 152) = a7;
  *(v7 + 136) = a5;
  *(v7 + 128) = a1;
  return _swift_task_switch(sub_10072D88C, a6, 0);
}

uint64_t sub_10072D88C()
{
  v1 = *(v0 + 128);
  if (v1 > 0.0)
  {
    if (qword_1019F2108 != -1)
    {
      swift_once();
      v1 = *(v0 + 128);
    }

    v2 = static OS_os_log.crlAssetDownloadManager;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v4 = UUID.uuidString.getter();
    v6 = v5;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v4;
    *(inited + 40) = v6;
    *(inited + 96) = &type metadata for Double;
    *(inited + 104) = &protocol witness table for Double;
    *(inited + 72) = v1;
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v7, "CRLAssetDownloadManager download task for assetUUID %@ delayed by %.2f seconds", 78, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    v8 = swift_arrayDestroy();
    v9 = v1 * 1000000000.0;
    if (COERCE_UNSIGNED_INT64(v1 * 1000000000.0) >> 52 > 0x7FE)
    {
      __break(1u);
    }

    else if (v9 > -1.0)
    {
      if (v9 < 1.84467441e19)
      {
        v10 = v9;
        v11 = swift_task_alloc();
        *(v0 + 160) = v11;
        *v11 = v0;
        v11[1] = sub_10072DB08;
        v8 = v10;

        return static Task<>.sleep(nanoseconds:)(v8);
      }

LABEL_15:
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(v8);
    }

    __break(1u);
    goto LABEL_15;
  }

  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_10072DC4C;
  v13 = *(v0 + 152);

  return sub_10072DD40(v13);
}

uint64_t sub_10072DB08()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 168) = v4;
  *v4 = v3;
  v4[1] = sub_10072DC4C;
  v5 = *(v2 + 152);

  return sub_10072DD40(v5);
}

uint64_t sub_10072DC4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10072DD40(uint64_t a1)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = v1;
  return _swift_task_switch(sub_10072DD60, v1, 0);
}

uint64_t sub_10072DD60()
{
  v1 = v0[29];
  if (*(v1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) & 1) != 0 || *(v1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask) && (, isCancelled = swift_task_isCancelled(), , v1 = v0[29], (isCancelled))
  {
    sub_100731D28(1);
    sub_10072E20C(v1);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_assetUUID;
    v0[31] = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_assetUUID;
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_10072DEA0;

    return sub_10072E624(v1 + v5);
  }
}

uint64_t sub_10072DEA0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_10072E034;
  }

  else
  {
    v4 = sub_10072DFCC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10072DFCC()
{
  sub_10072F854(v0[29] + v0[31]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10072E034()
{
  if (qword_1019F2108 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = static OS_os_log.crlAssetDownloadManager;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 64) = v7;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  swift_getErrorValue();
  v8 = Error.publicDescription.getter(v0[22], v0[23]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  swift_getErrorValue();
  v10 = Error.fullDescription.getter(v0[25]);
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v10;
  *(inited + 120) = v11;
  v12 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v12, "Failed to perform download task for asset. assetUUID=%@ error=%{public}@ %@", 75, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_10072E20C(v1);

  v13 = v0[1];

  return v13();
}

void sub_10072E20C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_assetUUID;
  swift_beginAccess();
  v4 = *(v1 + 272);
  if (*(v4 + 16))
  {

    v5 = sub_10003E994(a1 + v3);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      if (v7 == a1)
      {
        if (*(a1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) & 1) != 0 || *(a1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask) && (, isCancelled = swift_task_isCancelled(), , (isCancelled))
        {
          if (qword_1019F2108 != -1)
          {
            swift_once();
          }

          v9 = static OS_os_log.crlAssetDownloadManager;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v11 = UUID.uuidString.getter();
          v13 = v12;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v11;
          *(inited + 40) = v13;
          v14 = static os_log_type_t.error.getter();
          sub_100005404(v9, &_mh_execute_header, v14, "Stopped trying to download asset. Notifying of cancel. assetUUID=%@", 67, 2, inited);
          swift_setDeallocating();
          sub_100005070((inited + 32));
          sub_100733528();
        }

        else
        {
          if (qword_1019F2108 != -1)
          {
            swift_once();
          }

          v21 = static OS_os_log.crlAssetDownloadManager;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v22 = swift_initStackObject();
          *(v22 + 16) = xmmword_10146C6B0;
          v23 = UUID.uuidString.getter();
          v25 = v24;
          *(v22 + 56) = &type metadata for String;
          v26 = sub_1000053B0();
          *(v22 + 64) = v26;
          *(v22 + 32) = v23;
          *(v22 + 40) = v25;
          v27 = static os_log_type_t.error.getter();
          sub_100005404(v21, &_mh_execute_header, v27, "Failed to download asset. Notifying of failure. assetUUID=%@", 60, 2, v22);
          swift_setDeallocating();
          sub_100005070((v22 + 32));
          sub_100733038();
          if (*(a1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) <= 2)
          {
            v28 = swift_initStackObject();
            *(v28 + 16) = xmmword_10146C6B0;
            v29 = UUID.uuidString.getter();
            *(v28 + 56) = &type metadata for String;
            *(v28 + 64) = v26;
            *(v28 + 32) = v29;
            *(v28 + 40) = v30;
            v31 = static os_log_type_t.error.getter();
            sub_100005404(v21, &_mh_execute_header, v31, "Failed to download asset. Auto-Retrying. assetUUID=%@", 53, 2, v28);
            swift_setDeallocating();
            sub_100005070((v28 + 32));
            sub_10072D578(a1 + v3);
          }
        }

        return;
      }
    }

    else
    {
    }
  }

  if (qword_1019F2108 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlAssetDownloadManager;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10146C6B0;
  v17 = UUID.uuidString.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_1000053B0();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v20, "The AssetRequestInfo associated with ended download task no longer exists but we are trying to end it. assetUUID=%@", 115, 2, v16);
  swift_setDeallocating();
  sub_100005070((v16 + 32));
}

uint64_t sub_10072E624(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  sub_1005B981C(&qword_101A0B040, &unk_101478840);
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10072E7C8, v1, 0);
}

uint64_t sub_10072E7C8()
{
  v0[32] = *(v0[21] + 112);
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_10072E878;
  v2 = v0[31];
  v3 = v0[20];

  return sub_10108D4EC(v2, v3, 0, 0, 3);
}

uint64_t sub_10072E878()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_10072E988, v1, 0);
}

uint64_t sub_10072E988()
{
  v1 = v0[31];
  v2 = v0[26];
  v3 = v0[27];
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  sub_10000CAAC(v1, &unk_1019F33C0, &unk_101468A60);
  if (v5 == 1)
  {
    if (qword_1019F2108 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlAssetDownloadManager;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v8 = UUID.uuidString.getter();
    v10 = v9;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v8;
    *(inited + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v11, "CRLAssetDownloadManager _performDownloadRequest() assetUUID: %@", 63, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_10072D450((v0 + 11));
    sub_100020E58(v0 + 11, v0[14]);
    v14 = swift_task_alloc();
    v0[36] = v14;
    *v14 = v0;
    v14[1] = sub_10072EC44;
    v15 = v0[20];

    return sub_100736B38(v15);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10072EC44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 168);
  if (v1)
  {
    v6 = sub_10072EF64;
  }

  else
  {
    v6 = sub_10072ED78;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10072ED78()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[26];
  sub_10000BE14(v0[37] + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL, v2, &unk_1019F33C0, &unk_101468A60);
  if (v1(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v0[30], &unk_1019F33C0, &unk_101468A60);
    sub_1007348E0();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();

    sub_100005070(v0 + 11);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[37];
    (*(v0[27] + 32))(v0[29], v0[30], v0[26]);
    v8 = OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata;
    v0[39] = OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata;
    v9 = (v7 + *(type metadata accessor for CRLAssetSyncMetadata(0) + 20) + v8);
    v0[40] = *v9;
    v0[41] = v9[1];

    return _swift_task_switch(sub_10072F014, 0, 0);
  }
}

uint64_t sub_10072EF64()
{
  sub_100005070((v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10072F014()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[42] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[40];
    v3 = v0[41];
    v5 = v0[37] + v0[39];
    v6 = swift_task_alloc();
    v0[43] = v6;
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = v4;
    v6[5] = v3;
    v7 = swift_task_alloc();
    v0[44] = v7;
    v8 = sub_1005B981C(&qword_1019FD598, &unk_101478850);
    *v7 = v0;
    v7[1] = sub_10072F1E4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 19, 0, 0, 0xD000000000000036, 0x80000001015624F0, sub_100734C9C, v6, v8);
  }

  else
  {
    sub_1007348E0();
    v9 = swift_allocError();
    *v10 = 0xD000000000000028;
    v10[1] = 0x80000001015624C0;
    swift_willThrow();
    v0[48] = v9;
    v11 = v0[21];

    return _swift_task_switch(sub_10072F780, v11, 0);
  }
}

uint64_t sub_10072F1E4()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_10072F63C;
  }

  else
  {

    v2 = sub_10072F300;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10072F300(uint64_t a1)
{
  v2 = *(v1 + 152);
  if (!v2)
  {
    v6 = *(v1 + 336);
    sub_1007348E0();
    v7 = swift_allocError();
    *v8 = xmmword_101478600;
    swift_willThrow();
    v3 = v7;

    goto LABEL_6;
  }

  v3 = *(v1 + 360);
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
  sub_1010898C8();
  if (v3)
  {

LABEL_6:
    *(v1 + 384) = v3;
    v14 = *(v1 + 168);
    v15 = sub_10072F780;
    goto LABEL_7;
  }

  v9 = *(v1 + 312);
  v10 = *(v1 + 296);
  v11 = *(v1 + 224);
  v34 = *(v1 + 232);
  sub_1010934D4(v10 + v9, v4, v5);
  URL.appendingPathComponent(_:)();

  sub_10108B1E0(v10 + v9, v11, 1);
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_101091278(v34, v11, 0, 1);
  v16 = v13;

  if (v16)
  {
    v17 = *(v1 + 312);
    v18 = *(v1 + 296);
    v19 = *(v1 + 216);
    v20 = *(v1 + 200);
    v32 = *(v1 + 208);
    v33 = *(v1 + 224);
    v22 = *(v1 + 184);
    v21 = *(v1 + 192);
    v23 = *(v1 + 176);
    v35 = *(*(v1 + 256) + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
    os_unfair_lock_lock(*(v35 + 16));
    (*(v21 + 16))(v20, v18 + v17, v22);
    v24 = sub_1005B981C(&qword_1019FBED8, &unk_10148AB60);
    v25 = *(v24 + 48);
    (*(v19 + 16))(v23, v33, v32);
    *(v23 + v25) = 7;
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    swift_beginAccess();
    sub_100BC2038(v23, v20);
    swift_endAccess();
    os_unfair_lock_unlock(*(v35 + 16));
  }

  v27 = *(v1 + 216);
  v26 = *(v1 + 224);
  v28 = *(v1 + 208);
  v29 = *(v1 + 168);

  v30 = *(v27 + 8);
  *(v1 + 368) = v30;
  *(v1 + 376) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v26, v28);
  v15 = sub_10072F6B0;
  v14 = v29;
LABEL_7:

  return _swift_task_switch(v15, v14, 0);
}

uint64_t sub_10072F63C()
{
  v1 = v0[42];

  v0[48] = v0[45];
  v2 = v0[21];

  return _swift_task_switch(sub_10072F780, v2, 0);
}

uint64_t sub_10072F6B0()
{
  v1 = v0[46];
  v2 = v0[29];
  v3 = v0[26];

  v1(v2, v3);
  sub_100005070(v0 + 11);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10072F780()
{
  (*(v0[27] + 8))(v0[29], v0[26]);

  sub_100005070(v0 + 11);

  v1 = v0[1];

  return v1();
}

void sub_10072F854(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 272) + 16))
  {

    sub_10003E994(a1);
    if (v3)
    {

      sub_100732EB8();
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_1006F6E44(a1);
  swift_endAccess();

  if (!*(*(v1 + 272) + 16))
  {
    sub_100730158();
    sub_1007306D0();
  }
}

uint64_t sub_10072F95C()
{
  sub_10072F9BC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10072F9BC()
{
  v48 = type metadata accessor for UUID();
  v1 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FD570, &qword_101478800);
  __chkstk_darwin(v3 - 8);
  v46 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v39 - v6;
  swift_beginAccess();
  v8 = *(v0 + 272);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v39[2] = v1 + 16;
  v39[1] = v1 + 32;
  v41 = v1;
  v45 = (v1 + 8);
  v42 = v8;

  v14 = 0;
  v43 = xmmword_10146BDE0;
  v47 = v7;
  v44 = v9;
  while (v12)
  {
    v15 = v14;
LABEL_15:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v15 << 6);
    v21 = v42;
    v22 = v41;
    v23 = v40;
    v24 = v48;
    (*(v41 + 16))(v40, *(v42 + 48) + *(v41 + 72) * v20, v48);
    v25 = *(*(v21 + 56) + 8 * v20);
    v26 = sub_1005B981C(&qword_1019FD550, &qword_1014787A8);
    v27 = *(v26 + 48);
    v28 = *(v22 + 32);
    v18 = v46;
    v28(v46, v23, v24);
    *(v18 + v27) = v25;
    (*(*(v26 - 8) + 56))(v18, 0, 1, v26);

    v7 = v47;
LABEL_16:
    sub_10003DFF8(v18, v7, &qword_1019FD570, &qword_101478800);
    v29 = sub_1005B981C(&qword_1019FD550, &qword_1014787A8);
    if ((*(*(v29 - 8) + 48))(v7, 1, v29) == 1)
    {

      return;
    }

    v30 = *&v7[*(v29 + 48)];
    *(v30 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 1;
    if (qword_1019F2108 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlAssetDownloadManager;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = v43;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v33;
    *(inited + 40) = v35;
    v36 = *(v30 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts);
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = v36;
    v37 = static os_log_type_t.default.getter();
    sub_100005404(v31, &_mh_execute_header, v37, "Asset %{public}@ download was cancelled on the %d attempt", 57, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v9 = v44;
    if (*(v30 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask))
    {

      Task.cancel()();
    }

    v7 = v47;
    (*v45)(v47, v48);
  }

  if (v13 <= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16 - 1;
  v18 = v46;
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      v38 = sub_1005B981C(&qword_1019FD550, &qword_1014787A8);
      (*(*(v38 - 8) + 56))(v18, 1, 1, v38);
      v12 = 0;
      v14 = v17;
      goto LABEL_16;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_10072FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10072FF74, a4, 0);
}

uint64_t sub_10072FF74()
{
  v1 = v0[5];
  swift_beginAccess();
  if (*(*(v1 + 272) + 16))
  {
    v2 = v0[6];

    sub_10003E994(v2);
    if (v3)
    {

      sub_100731D28(0);
    }

    else
    {
    }
  }

  v4 = v0[1];

  return v4();
}

void sub_100730040()
{
  if (!*(v0 + 216))
  {
    type metadata accessor for CRLAssetDownloadManager.CullingListener();
    v1 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    *(v0 + 216) = v1;

    v2 = qword_1019F1FA0;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = off_101A17F70;
    os_unfair_lock_lock(*(off_101A17F70 + 2));
    if (qword_1019F1FA8 != -1)
    {
      swift_once();
    }

    [qword_101A17F78 addObject:v1];
    os_unfair_lock_unlock(v3[2]);
  }
}

double sub_100730158()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    swift_beginAccess();
    if (!*(*(v0 + 272) + 16))
    {
      v3 = qword_1019F1FA0;

      if (v3 != -1)
      {
        swift_once();
      }

      v4 = off_101A17F70;
      os_unfair_lock_lock(*(off_101A17F70 + 2));
      if (qword_1019F1FA8 != -1)
      {
        swift_once();
      }

      [qword_101A17F78 removeObject:v1];
      os_unfair_lock_unlock(v4[2]);

      *(v0 + 216) = 0;
    }
  }

  return result;
}

uint64_t sub_100730258()
{
  swift_beginAccess();
  sub_10000BE14(v0 + 224, v4, &qword_1019FD580, &qword_101478820);
  v1 = v5;
  result = sub_10000CAAC(v4, &qword_1019FD580, &qword_101478820);
  if (!v1)
  {
    (*(v0 + 136))(v4, result);
    sub_10000630C(v4, v3);
    swift_beginAccess();
    sub_10002C638(v3, v0 + 224, &qword_1019FD580, &qword_101478820);
    swift_endAccess();
    sub_100020E58(v4, v5);
    type metadata accessor for CRLNetworkReachabilityListener();
    v3[0] = sub_100BEB6DC();
    swift_allocObject();
    swift_weakInit();
    sub_1005B981C(&qword_1019FD588, &qword_101478828);
    sub_10001A2F8(&qword_1019FD590, &qword_1019FD588, &qword_101478828, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_100020E58(v4, v5);
    sub_100BEB64C();
    return sub_100005070(v4);
  }

  return result;
}

double sub_100730518(_BYTE *a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *&result = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v11 - v5;
  if (*a1 == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v8;
      sub_10064191C(0, 0, v6, &unk_101478838, v10);
    }
  }

  return result;
}

uint64_t sub_100730670()
{
  sub_100730AD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007306D0()
{
  swift_beginAccess();
  sub_10000BE14(v0 + 224, &v2, &qword_1019FD580, &qword_101478820);
  if (!v3)
  {
    return sub_10000CAAC(&v2, &qword_1019FD580, &qword_101478820);
  }

  sub_100050F74(&v2, v4);
  swift_beginAccess();
  if (!*(*(v0 + 272) + 16))
  {
    sub_100020E58(v4, v4[3]);
    type metadata accessor for CRLNetworkReachabilityListener();
    sub_100BEB694();
    sub_100730850();
  }

  return sub_100005070(v4);
}

void sub_100730850()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 264);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_100734A28(&qword_1019FB8C0, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    Set.Iterator.init(_cocoa:)();
    v4 = v19;
    v3 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_100035F90(v4);

      *(v1 + 264) = _swiftEmptySetSingleton;

      v18 = 0;
      memset(v17, 0, sizeof(v17));
      swift_beginAccess();
      sub_10002C638(v17, v1 + 224, &qword_1019FD580, &qword_101478820);
      swift_endAccess();
      return;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (*&v17[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100730AD4()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v77 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v76 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v96 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v94 = &v76 - v9;
  v10 = sub_1005B981C(&qword_1019FD570, &qword_101478800);
  __chkstk_darwin(v10 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  swift_beginAccess();
  v82 = v0;
  v16 = *(v0 + 272);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;
  v93 = (v6 + 16);
  v95 = (v6 + 32);
  v88 = v6;
  v91 = (v6 + 8);
  v76 = v7 + 7;
  v86 = v16;

  v22 = v21;
  v23 = 0;
  v80 = xmmword_10146C6B0;
  v87 = v12;
  v92 = v15;
  v90 = v17;
  v89 = v21;
  v83 = v5;
  while (v20)
  {
    v24 = v5;
    v25 = v23;
LABEL_16:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v86;
    v31 = v88;
    (*(v88 + 16))(v94, *(v86 + 48) + *(v88 + 72) * v29, v24);
    v32 = *(*(v30 + 56) + 8 * v29);
    v33 = sub_1005B981C(&qword_1019FD550, &qword_1014787A8);
    v34 = *(v33 + 48);
    v35 = *(v31 + 32);
    v5 = v24;
    v12 = v87;
    v35();
    *&v12[v34] = v32;
    (*(*(v33 - 8) + 56))(v12, 0, 1, v33);

    v15 = v92;
LABEL_17:
    sub_10003DFF8(v12, v15, &qword_1019FD570, &qword_101478800);
    v36 = sub_1005B981C(&qword_1019FD550, &qword_1014787A8);
    if ((*(*(v36 - 8) + 48))(v15, 1, v36) == 1)
    {

      return;
    }

    v37 = *&v15[*(v36 + 48)];
    v38 = *v95;
    (*v95)(v96, v15, v5);
    if (*(v37 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) & 1) != 0 || *(v37 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask) && (, isCancelled = swift_task_isCancelled(), , (isCancelled))
    {

      (*v91)(v96, v5);
      v17 = v90;
      goto LABEL_5;
    }

    v85 = v38;
    v17 = v90;
    if (qword_1019F2108 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlAssetDownloadManager;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = v80;
    v42 = UUID.uuidString.getter();
    v44 = v43;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v42;
    *(inited + 40) = v44;
    v45 = static os_log_type_t.default.getter();
    sub_100005404(v40, &_mh_execute_header, v45, "resetDownloadAttempts for assetUUID: %@", 39, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v84 = v37;
    *(v37 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) = 0;
    v46 = v82;
    v5 = v83;
    if (!*(v82 + 216))
    {
      type metadata accessor for CRLAssetDownloadManager.CullingListener();
      v47 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      *(v46 + 216) = v47;

      v48 = qword_1019F1FA0;

      if (v48 != -1)
      {
        swift_once();
      }

      v49 = off_101A17F70;
      os_unfair_lock_lock(*(off_101A17F70 + 2));
      if (qword_1019F1FA8 != -1)
      {
        swift_once();
      }

      [qword_101A17F78 addObject:v47];
      os_unfair_lock_unlock(v49[2]);
    }

    sub_100730258();
    v50 = *(v46 + 272);
    if (*(v50 + 16))
    {

      v51 = sub_10003E994(v96);
      if (v52)
      {
        v53 = *(*(v50 + 56) + 8 * v51);

        goto LABEL_35;
      }
    }

    v55 = v94;
    v56 = v96;
    (*v93)(v94, v96, v5);
    type metadata accessor for CRLAssetDownloadManager.AssetRequestInfo(0);
    v53 = swift_allocObject();
    *(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask) = 0;
    *(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 0;
    *(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) = 0;
    *(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_observers) = _swiftEmptyDictionarySingleton;
    v85(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_assetUUID, v55, v5);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = *(v46 + 272);
    *(v46 + 272) = 0x8000000000000000;
    sub_100A9B3FC(v53, v56, isUniquelyReferenced_nonNull_native);
    *(v46 + 272) = v101;
    swift_endAccess();
LABEL_35:
    if (*(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask))
    {

      (*v91)(v96, v5);

      v15 = v92;
    }

    else
    {
      if (*(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) * *(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) <= 273.0)
      {
        v58 = *(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) * *(v53 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts);
      }

      else
      {
        v58 = 273.0;
      }

      v59 = type metadata accessor for TaskPriority();
      v79 = *(v59 - 8);
      (*(v79 + 56))(v81, 1, 1, v59);
      v60 = v88;
      (*(v88 + 16))(v94, v96, v5);
      v78 = sub_100734A28(&qword_1019FD578, v61, type metadata accessor for CRLAssetDownloadManager, aI_62);
      v62 = (*(v60 + 80) + 40) & ~*(v60 + 80);
      v63 = (v76 + v62) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      v65 = v82;
      v66 = v64;
      v67 = v78;
      *(v64 + 16) = v82;
      *(v64 + 24) = v67;
      *(v64 + 32) = v58;
      v85(v64 + v62, v94, v83);
      *(v66 + v63) = v65;
      *(v66 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
      v68 = v77;
      sub_10000BE14(v81, v77, &qword_1019FB750, &qword_10146F1B0);
      v69 = (*(v79 + 48))(v68, 1, v59);
      swift_retain_n();

      if (v69 == 1)
      {
        sub_10000CAAC(v68, &qword_1019FB750, &qword_10146F1B0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v79 + 8))(v68, v59);
      }

      v70 = *(v66 + 16);
      swift_unknownObjectRetain();

      if (v70)
      {
        swift_getObjectType();
        v71 = dispatch thunk of Actor.unownedExecutor.getter();
        v73 = v72;
        swift_unknownObjectRelease();
      }

      else
      {
        v71 = 0;
        v73 = 0;
      }

      sub_10000CAAC(v81, &qword_1019FB750, &qword_10146F1B0);
      v74 = swift_allocObject();
      *(v74 + 16) = &unk_101478810;
      *(v74 + 24) = v66;
      if (v73 | v71)
      {
        v98 = 0;
        v99 = v71;
        v97 = 0;
        v100 = v73;
      }

      v12 = v87;
      v75 = swift_task_create();
      sub_100732AB0(v75);

      v5 = v83;
      (*v91)(v96, v83);
      v15 = v92;
    }

LABEL_5:
    v22 = v89;
  }

  if (v22 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v22;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      v54 = sub_1005B981C(&qword_1019FD550, &qword_1014787A8);
      (*(*(v54 - 8) + 56))(v12, 1, 1, v54);
      v20 = 0;
      v23 = v27;
      goto LABEL_17;
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v24 = v5;
      v23 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1007317C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 272);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_10003E994(a1);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    (*(v5 + 16))(v7, a1, v4);
    type metadata accessor for CRLAssetDownloadManager.AssetRequestInfo(0);
    v11 = swift_allocObject();
    *(v11 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask) = 0;
    *(v11 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 0;
    *(v11 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts) = 0;
    *(v11 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_observers) = _swiftEmptyDictionarySingleton;
    (*(v5 + 32))(v11 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_assetUUID, v7, v4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 272);
    *(v2 + 272) = 0x8000000000000000;
    sub_100A9B3FC(v11, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 272) = v15;
    swift_endAccess();
    return v11;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  return v11;
}

void sub_1007319C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_observers;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (!*(v11 + 16))
  {
LABEL_10:
    type metadata accessor for CRLAssetDownloadManager.ObserverHandlerInfos();
    v21 = swift_allocObject();
    sub_1005B981C(&qword_1019FD568, &qword_1014787F8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10146C6B0;
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    *(v22 + 32) = a2;
    *(v22 + 40) = sub_100734EE4;
    *(v22 + 48) = v23;
    *(v21 + 16) = v22;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v5 + v10);
    *(v5 + v10) = 0x8000000000000000;
    sub_100A9B600(v21, a1, isUniquelyReferenced_nonNull_native);
    *(v5 + v10) = v30;
    swift_endAccess();
    if ((a2 & 1) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = sub_10003E994(a1);
  if ((v13 & 1) == 0)
  {

    goto LABEL_10;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  swift_beginAccess();
  v16 = *(v14 + 16);

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 16) = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_100B36058(0, v16[2] + 1, 1, v16);
    *(v14 + 16) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_100B36058((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[3 * v19];
  v20[4] = a2;
  v20[5] = sub_100734EE4;
  v20[6] = v15;
  *(v14 + 16) = v16;
  swift_endAccess();

  if (a2)
  {
LABEL_11:
    if (*(v5 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask))
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = a4;
      v29[4] = sub_100734A70;
      v29[5] = v25;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = *"";
      v29[2] = sub_100007638;
      v29[3] = &unk_1018847A0;
      v26 = _Block_copy(v29);

      v27 = v26;
      if (+[NSThread isMainThread])
      {
        v27[2](v27);
      }

      else
      {
        v28 = &_dispatch_main_q;
        dispatch_async(&_dispatch_main_q, v27);
      }

      _Block_release(v27);
    }
  }
}