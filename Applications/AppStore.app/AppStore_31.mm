void sub_100370104(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter);
    v3 = Strong;

    swift_beginAccess();
    v4 = *(v2 + 32);
    if (*(v4 + 16))
    {
      sub_10002C0AC(v4 + 32, v8);
      sub_10002849C(&unk_10097A950, &qword_1007B1320);
      type metadata accessor for JourneyDrivenOnboardingStep();
      if (swift_dynamicCast())
      {
        sub_1004D4280(v7, v2);
      }
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_10036E764();
  }
}

uint64_t sub_100370424@<X0>(uint64_t a2@<X2>, char *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v31 - v14;
  __chkstk_darwin(v16);
  v18 = v31 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = [Strong collectionView];

    if (v21)
    {
      v22 = [v21 indexPathForItemAtPoint:{a4, a5}];
      if (v22)
      {
        v23 = v22;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v31[1] = a2;
        v32 = *(v10 + 32);
        v32(v18, v15, v9);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v25 = [v21 cellForItemAtIndexPath:isa];
        v31[0] = v25;

        (*(v10 + 16))(v12, v18, v9);
        swift_getObjectType();
        v26 = v25;
        v27 = dispatch thunk of FlowPreviewablePresenter.flowPreviewBackgroundColor(at:)();

        (*(v10 + 8))(v18, v9);
        v32(a3, v12, v9);
        v28 = type metadata accessor for PreviewItem(0);
        *&a3[*(v28 + 20)] = v31[0];
        *&a3[*(v28 + 24)] = v27;
        return (*(*(v28 - 8) + 56))(a3, 0, 1, v28);
      }
    }
  }

  v30 = type metadata accessor for PreviewItem(0);
  return (*(*(v30 - 8) + 56))(a3, 1, 1, v30);
}

uint64_t sub_100370728@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a2;
  v6 = sub_10002849C(&unk_100981870, &qword_1007C9158);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_getObjectType();
    dispatch thunk of FlowPreviewablePresenter.flowPreviewDestinationForItem(at:)();
    ObjectType = dispatch thunk of FlowPreviewablePresenter.actionPresenterView.getter();
    v15 = ObjectType;
    if (ObjectType)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      v34[1] = 0;
      v34[2] = 0;
    }

    v34[0] = v15;
    v34[3] = ObjectType;
    v19 = dispatch thunk of FlowPreviewablePresenter.flowPreviewActionsConfiguration(at:sender:)();
    sub_10002B894(v34, &unk_1009711D0, &unk_1007B1A10);
    if (v19)
    {
      v28 = v13;
      v29 = v8;

      v20 = FlowPreviewActionsConfiguration.actions.getter();
      v21 = v20;
      v34[0] = _swiftEmptyArrayStorage;
      v30 = v11;
      v31 = a3;
      v22 = v20 & 0xFFFFFFFFFFFFFF8;
      if (v20 >> 62)
      {
LABEL_27:
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = 0;
      v32 = _swiftEmptyArrayStorage;
      while (v23 != v24)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_26;
          }

          v25 = *(v21 + 8 * v24 + 32);

          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v27 = sub_1003719A8(v24, v25, v19, v4, v33);

        ++v24;
        if (v27)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v32 = v34[0];
          v24 = v26;
        }
      }

      v11 = v30;
      v8 = v29;
    }

    sub_100031660(v11, v8, &unk_100981870, &qword_1007C9158);
    FlowPreview.init(destination:actions:)();

    swift_unknownObjectRelease();
    return sub_10002B894(v11, &unk_100981870, &qword_1007C9158);
  }

  else
  {
    v16 = type metadata accessor for FlowPreview();
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 1, 1, v16);
  }
}

unint64_t sub_100370AA0(uint64_t a1, __n128 a2)
{
  v2 = type metadata accessor for FlowPreviewDestination.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100981870, &qword_1007C9158);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FlowPreviewDestination();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  FlowPreview.destination.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &unk_100981870, &qword_1007C9158);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    FlowPreviewDestination.contentType.getter();
    v14 = (*(v3 + 88))(v5, v2);
    if (v14 == enum case for FlowPreviewDestination.ContentType.source(_:))
    {
      sub_100372FD0();
      (*(v10 + 8))(v12, v9);
      return 0;
    }

    else if (v14 == enum case for FlowPreviewDestination.ContentType.flowDestination(_:))
    {
      v15 = sub_100372498();
      (*(v10 + 8))(v12, v9);
      return v15;
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }
}

UIMenu sub_100370DB8()
{
  v0 = FlowPreview.actions.getter();
  if (v0 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v1)
  {
    return 0;
  }

LABEL_3:
  v2 = FlowPreview.actions.getter();
  if (v2 >> 62)
  {
    sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);
    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);
    preferredElementSize = v2;
  }

  sub_100005744(0, &qword_10097AAF0, UIMenu_ptr);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v8, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7);
}

id sub_100370EF8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1003746C0(v4);

  return v6;
}

uint64_t sub_100370F58(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v42[0] = v42 - v3;
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v42[1] = v42 - v5;
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002849C(&unk_100981870, &qword_1007C9158);
  __chkstk_darwin(v7 - 8);
  v9 = v42 - v8;
  v10 = type metadata accessor for FlowPreviewDestination();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_100981860, &unk_1007C9148);
  __chkstk_darwin(v16 - 8);
  v18 = v42 - v17;
  v19 = type metadata accessor for FlowPreview();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v21);
  v24 = *(a1 + *(type metadata accessor for PreviewItem(0) + 20));
  if (v24)
  {
    v25 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  }

  else
  {
    v25 = 0;
    *(&v47 + 1) = 0;
    *&v48 = 0;
  }

  *&v47 = v24;
  *(&v48 + 1) = v25;
  v26 = v24;
  sub_100370728(&v47, v18);
  (*(v13 + 8))(v15, v12);
  sub_10002B894(&v47, &unk_1009711D0, &unk_1007B1A10);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v27 = &unk_100981860;
    v28 = &unk_1007C9148;
    v29 = v18;
    return sub_10002B894(v29, v27, v28);
  }

  (*(v20 + 32))(v23, v18, v19);
  FlowPreview.destination.getter();
  v31 = v44;
  v30 = v45;
  if ((*(v44 + 48))(v9, 1, v45) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v27 = &unk_100981870;
    v28 = &qword_1007C9158;
    v29 = v9;
    return sub_10002B894(v29, v27, v28);
  }

  v33 = v43;
  (*(v31 + 32))(v43, v9, v30);
  if (!FlowPreviewDestination.flowAction.getter())
  {
    (*(v31 + 8))(v33, v30);
    return (*(v20 + 8))(v23, v19);
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  Action.title.getter();
  Action.actionMetrics.getter();
  Action.impressionMetrics.getter();
  type metadata accessor for BlankAction();
  swift_allocObject();
  v34 = BlankAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v37 = v43;
      FlowPreviewDestination.sender.getter();
      dispatch thunk of ActionPresenterView.perform(action:sender:)();

      sub_10002B894(&v47, &unk_1009711D0, &unk_1007B1A10);
      (*(v44 + 8))(v37, v45);
      return (*(v20 + 8))(v23, v19);
    }
  }

  v38 = *(v46 + qword_1009816C8);
  v39 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v40 = v42[0];
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v41 = *(v39 - 8);
  if ((*(v41 + 48))(v40, 1, v39) != 1)
  {
    sub_1005FA048(v34, 1, v38, v40);

    (*(v44 + 8))(v43, v45);
    (*(v20 + 8))(v23, v19);
    return (*(v41 + 8))(v40, v39);
  }

  (*(v44 + 8))(v43, v45);
  (*(v20 + 8))(v23, v19);
  v27 = &unk_100972A00;
  v28 = &unk_1007B3130;
  v29 = v40;
  return sub_10002B894(v29, v27, v28);
}

void sub_10037170C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, a5);

  swift_unknownObjectRelease();
}

void sub_1003717AC(void *a1, void (*a2)(void))
{
  if (a1 && a2)
  {
    v3 = a1;
    a2();
  }
}

void sub_100371814(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1003753E4(v8, a5);

  swift_unknownObjectRelease();
}

id sub_1003718AC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_100375994(v6);

  return v9;
}

id sub_10037191C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = sub_100375CA8(v7);

  swift_unknownObjectRelease();

  return v10;
}

void *sub_1003719A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = FlowPreviewActionsConfiguration.offerActionIndex.getter();
  v11 = v10;
  v12 = v9 == a1;
  v13 = FlowPreviewActionsConfiguration.destructiveActionIndex.getter() == a1;
  return sub_100371A28(a2, a3, v12 & ~v11, v13 & ~v14, a5);
}

void *sub_100371A28(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v55 = a5;
  v58 = a1;
  v56 = swift_isaMask & *v5;
  v8 = sub_10002849C(&unk_100981890, &unk_1007C9160);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v57 = type metadata accessor for FlowPreviewOfferPresenter();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v57);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v17 = dispatch thunk of FlowPreviewablePresenter.actionPresenterView.getter();
    v53 = v18;
    swift_unknownObjectRelease();
    if (!v17)
    {
      return 0;
    }

    if (a3)
    {
      v56 = v17;
      FlowPreviewActionsConfiguration.offerDisplayProperties.getter();
      if (a4)
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      FlowPreviewOfferPresenter.init(displayProperties:offerAction:asPartOf:)();
      v20 = v57;
      if ((*(v11 + 48))(v10, 1, v57) == 1)
      {
        swift_unknownObjectRelease();

        sub_10002B894(v10, &unk_100981890, &unk_1007C9160);
        return 0;
      }

      v55 = v19;
      v29 = *(v11 + 32);
      v29(v15, v10, v20);
      v30 = FlowPreviewOfferPresenter.offerTitles.getter();
      if (v31 != 1)
      {
        v34 = v30;
        v35 = v31;
        v36 = v32;
        v52 = v33;

        if (v35)
        {
          v51 = v36;
          v37 = Action.artwork.getter();
          v50 = v34;
          if (v37)
          {
            v38 = v37;
            if (dispatch thunk of Artwork.isSystemImage.getter())
            {
              v58 = static SystemImage.load(artwork:with:includePrivateImages:)();
            }

            else if (dispatch thunk of Artwork.isBundleImage.getter())
            {
              v58 = sub_100330100(v38, 0);
            }

            else
            {
              v58 = 0;
            }
          }

          else
          {
            v58 = 0;
          }

          v49 = sub_100005744(0, &qword_10097CD40, UIAction_ptr);
          v39 = v54;
          (*(v11 + 16))(v54, v15, v20);
          v40 = (*(v11 + 80) + 16) & ~*(v11 + 80);
          v41 = swift_allocObject();
          v48 = v15;
          v42 = v11;
          v43 = v20;
          v44 = v41;
          v29((v41 + v40), v39, v43);
          v45 = (v44 + ((v12 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
          v46 = v53;
          *v45 = v56;
          v45[1] = v46;
          swift_unknownObjectRetain();

          v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          swift_unknownObjectRelease();

          (*(v42 + 8))(v48, v43);
          return v27;
        }

        sub_1003761C0(v34, 0, v36, v52);
      }

      swift_unknownObjectRelease();

      (*(v11 + 8))(v15, v20);
      return 0;
    }

    if (a4)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_100005744(0, &qword_10097CD40, UIAction_ptr);
    sub_100031660(v55, v59, &unk_1009711D0, &unk_1007B1A10);
    v23 = v17;
    ObjectType = swift_getObjectType();
    v25 = v58;

    swift_unknownObjectRetain();
    v27 = sub_1003742BC(v25, v23, v21, v59, v26, v22, ObjectType, v53);
    if (sub_100374478(v25))
    {
      v28 = sub_100371FA4(v25);
      swift_unknownObjectRelease();
      if ((v28 & 1) == 0)
      {

        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v27;
  }

  return result;
}

uint64_t sub_100371FA4(uint64_t a1)
{
  v27 = type metadata accessor for LegacyAppState();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for FlowDestination(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v26 = type metadata accessor for AdamId();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowAction();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    memset(v28, 0, sizeof(v28));

    sub_100462678(v17, v28, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10002B894(v5, &unk_1009796F0, &unk_1007BA400);
    }

    else
    {
      sub_100376064(v5, v12, type metadata accessor for FlowDestination);
      sub_100376064(v12, v9, type metadata accessor for FlowDestination);
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v18 = sub_10002849C(&unk_1009835A0, &unk_1007C9170);
        v19 = v26;
        (*(v13 + 32))(v15, &v9[*(v18 + 48)], v26);
        v20 = type metadata accessor for URL();
        (*(*(v20 - 8) + 8))(v9, v20);
        goto LABEL_9;
      }

      sub_1003760CC(v9, type metadata accessor for FlowDestination);
    }
  }

  type metadata accessor for WriteReviewAction();
  if (swift_dynamicCastClass())
  {

    WriteReviewAction.adamId.getter();

    v19 = v26;
LABEL_9:
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    swift_getObjectType();
    dispatch thunk of AppStateController.stateMachine(forApp:)();
    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    swift_unknownObjectRelease();
    v21 = LegacyAppState.hasBeenPurchased.getter();
    (*(v25 + 8))(v2, v27);
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for ProductPresenter();
      if (swift_dynamicCastClass())
      {
        v22 = dispatch thunk of ProductPresenter.alwaysAllowReviews.getter();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_16:
        (*(v13 + 8))(v15, v19);
        v23 = v21 | v22;
        return v23 & 1;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v22 = 0;
    goto LABEL_16;
  }

  v23 = 0;
  return v23 & 1;
}

unint64_t sub_100372498()
{
  v1 = swift_isaMask & *v0;
  v105 = v0;
  v102 = v1;
  v2 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v2 - 8);
  v4 = &v87 - v3;
  v5 = type metadata accessor for FlowPresentationContext();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v98 = v6;
  v99 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v87 - v8;
  v9 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v9);
  v103 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v11 - 8);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v87 - v14;
  v16 = type metadata accessor for FlowDestination(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v97 = (&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v106 = &v87 - v20;
  v21 = sub_10002849C(&unk_100981870, &qword_1007C9158);
  __chkstk_darwin(v21 - 8);
  v23 = &v87 - v22;
  v24 = type metadata accessor for FlowPreviewDestination();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  FlowPreview.destination.getter();
  v28 = v24;
  v29 = v25;
  if ((*(v25 + 48))(v23, 1, v28) == 1)
  {
    v30 = &unk_100981870;
    v31 = &qword_1007C9158;
    v32 = v23;
LABEL_6:
    sub_10002B894(v32, v30, v31);
    return 0;
  }

  v94 = v4;
  (*(v25 + 32))(v27, v23, v28);
  v33 = FlowPreviewDestination.flowAction.getter();
  v34 = v27;
  if (!v33)
  {
    (*(v25 + 8))(v27, v28);
    return 0;
  }

  v35 = v33;
  v36 = v29;
  v95 = v28;

  FlowPreviewDestination.sender.getter();
  sub_100462678(v35, v108, v15);
  v37 = *(v17 + 48);
  if (v37(v15, 1, v16) == 1)
  {
    (*(v29 + 8))(v34, v95);

    v30 = &unk_1009796F0;
    v31 = &unk_1007BA400;
    v32 = v15;
    goto LABEL_6;
  }

  v92 = v37;
  v38 = v106;
  sub_100376064(v15, v106, type metadata accessor for FlowDestination);
  v39 = v105;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_1003760CC(v38, type metadata accessor for FlowDestination);
    (*(v36 + 8))(v34, v95);
    return 0;
  }

  v88 = v36;
  v91 = v34;
  v93 = Strong;
  v41 = [Strong traitCollection];

  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();

  sub_10065DB50(v104);
  v42 = sub_10040BB0C();
  v89 = v35;
  v90 = v41;
  if (v42)
  {
    v109 = 0;
    memset(v108, 0, sizeof(v108));
    v43 = *(v39 + qword_1009816C8);

    dispatch thunk of Action.clickSender.getter();
    v44 = v96;
    sub_100462678(v35, v107, v96);
    v45 = v92;
    if (v92(v44, 1, v16) == 1)
    {
      v46 = v97;
      swift_storeEnumTagMultiPayload();
      if (v45(v44, 1, v16) != 1)
      {
        sub_10002B894(v44, &unk_1009796F0, &unk_1007BA400);
      }
    }

    else
    {
      v46 = v97;
      sub_100376064(v44, v97, type metadata accessor for FlowDestination);
    }

    v49 = FlowAction.referrerUrl.getter();
    v51 = v50;
    v52 = v94;
    FlowAction.referrerData.getter();
    sub_1003C1668(v46, v41, v49, v51, v52, v108, v43, 1);
    v47 = v53;

    sub_10002B894(v52, &unk_1009767C0, &unk_1007B1880);
    sub_1003760CC(v46, type metadata accessor for FlowDestination);
    sub_10002B894(v108, &unk_100981880, &unk_1007BECD0);
    if (!v47)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v47 = sub_1003C8A6C(v35, v41, *(v39 + qword_1009816C8));
    if (!v47)
    {
LABEL_33:
      v76 = v106;
      v77 = v91;
      v78 = v95;
      v63 = v93;
      v69 = v90;
LABEL_39:

      sub_1003760CC(v103, type metadata accessor for FlowPresentationHints);
      sub_1003760CC(v76, type metadata accessor for FlowDestination);
      (*(v88 + 8))(v77, v78);
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v80 = v99;
      v82 = v100 + 32;
      v81 = *(v100 + 32);
      v83 = v101;
      v81(v99, v104, v101);
      v84 = (*(v82 + 48) + 48) & ~*(v82 + 48);
      v85 = swift_allocObject();
      v86 = v102;
      *(v85 + 2) = *(v102 + 80);
      *(v85 + 3) = *(v86 + 88);
      *(v85 + 4) = v79;
      *(v85 + 5) = v89;
      v81(&v85[v84], v80, v83);
      return v47;
    }
  }

  v54 = v47;
  ObjectType = swift_getObjectType();
  v56 = swift_conformsToProtocol2();
  v57 = v54;
  if (v56)
  {
    v58 = v56;
    (*(v56 + 16))(1, ObjectType, v56);
    v59 = *(v58 + 32);
    v60 = v93;
    v57 = v93;
    v59(v60, ObjectType, v58);
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (!v61)
  {
    goto LABEL_33;
  }

  v62 = v61;
  v63 = v54;
  v64 = [v62 viewControllers];
  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v65 >> 62))
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      goto LABEL_25;
    }

LABEL_37:

    v69 = v90;
    v77 = v91;
    v75 = v93;
LABEL_38:

    v76 = v106;
    v78 = v95;
    goto LABEL_39;
  }

  v66 = _CocoaArrayWrapper.endIndex.getter();
  if (!v66)
  {
    goto LABEL_37;
  }

LABEL_25:
  v67 = __OFSUB__(v66, 1);
  result = v66 - 1;
  if (v67)
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((v65 & 0xC000000000000001) != 0)
  {
LABEL_41:
    v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
    v69 = v68;

    swift_getObjectType();
    v70 = swift_conformsToProtocol2();
    if (v70 && v69)
    {
      v71 = v70;
      v72 = swift_getObjectType();
      (*(v71 + 16))(1, v72, v71);
      v73 = *(v71 + 32);
      v74 = v93;
      v75 = v93;
      v73(v74, v72, v71);

      v69 = v90;
    }

    else
    {

      v75 = v63;
      v63 = v90;
    }

    v77 = v91;
    goto LABEL_38;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v68 = *(v65 + 8 * result + 32);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_100372FD0()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_10002849C(&unk_100981870, &qword_1007C9158);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for FlowPreviewDestination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FlowPreview.destination.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100981870, &qword_1007C9158);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = FlowPreviewDestination.flowAction.getter();
    (*(v6 + 8))(v8, v5);
    if (v9)
    {
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = *(v1 + 80);
      v11[3] = *(v1 + 88);
      v11[4] = v10;
      v11[5] = v9;
    }
  }

  return 0;
}

char *sub_100373214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = qword_1009816C8;
    v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      v12 = *&v8[v9];

      sub_1005F9C8C(a3, 1, v12, v6);

      return (*(v11 + 8))(v6, v10);
    }
  }

  return result;
}

void sub_1003733B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v83 = a1;
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v80 = &v68 - v5;
  v75 = type metadata accessor for FlowOrigin();
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowAnimationBehavior();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FlowPresentationContext();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v16 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = type metadata accessor for FlowPage();
  v20 = *(v19 - 1);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v69 = v8;
  v70 = v7;
  swift_getObjectType();
  v81 = &protocol descriptor for FlowPreviewingViewController;
  v23 = swift_conformsToProtocol2();
  if (v23 && v83)
  {
    v24 = v23;
    v25 = v19;
    v26 = v83;
    ObjectType = swift_getObjectType();
    v28 = v26;
    v29 = v22;
    v30 = *(v24 + 40);
    v31 = v28;
    v30(ObjectType, v24);
    v22 = v29;
    v19 = v25;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = v83;
    v35 = [v33 viewControllers];
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v36 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (v37)
      {
LABEL_8:
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v38)
        {
          __break(1u);
        }

        else if ((v36 & 0xC000000000000001) == 0)
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_48;
          }

          v40 = *(v36 + 8 * v39 + 32);
          goto LABEL_13;
        }

        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
        v41 = v40;

        swift_getObjectType();
        v42 = swift_conformsToProtocol2();
        if (v42 && v41)
        {
          v43 = v42;
          v44 = swift_getObjectType();
          (*(v43 + 40))(v44, v43);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_19:
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.viewController(_:), v19);
  v45 = type metadata accessor for URL();
  (*(*(v45 - 8) + 56))(v18, 1, 1, v45);
  v46 = type metadata accessor for ReferrerData();
  (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
  v68 = sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v85 = v68;
  v84 = v83;
  v47 = v83;
  static ActionMetrics.notInstrumented.getter();
  (*(v74 + 16))(v77, v79, v72);
  (*(v69 + 104))(v71, enum case for FlowAnimationBehavior.infer(_:), v70);
  (*(v78 + 104))(v73, enum case for FlowOrigin.inapp(_:), v75);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v48 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v49 = qword_1009816C8;
  v50 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v51 = v80;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v52 = *(v50 - 8);
  if ((*(v52 + 48))(v51, 1, v50) == 1)
  {
    sub_10002B894(v51, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    v53 = *&Strong[v49];

    sub_1005F9C8C(v48, 1, v53, v51);

    (*(v52 + 8))(v51, v50);
  }

  swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  if (v54 && v83)
  {
    v55 = v54;
    v56 = swift_getObjectType();
    (*(v55 + 48))(v56, v55);
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (!v57)
  {

LABEL_40:

    return;
  }

  v58 = v57;
  v19 = v47;
  v59 = [v58 viewControllers];
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  v61 = _CocoaArrayWrapper.endIndex.getter();
  if (!v61)
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_28:
  v38 = __OFSUB__(v61, 1);
  v62 = v61 - 1;
  if (v38)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v60 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_33;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    return;
  }

  v63 = *(v60 + 8 * v62 + 32);
LABEL_33:
  v64 = v63;

  swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  if (v65)
  {
    if (v64)
    {
      v66 = v65;
      v67 = swift_getObjectType();
      (*(v66 + 48))(v67, v66);
    }
  }
}

double sub_100373E24(uint64_t a1)
{

  sub_10001F64C(a1 + qword_1009816B8);
  swift_unknownObjectWeakDestroy();

  return result;
}

uint64_t type metadata accessor for PreviewItem(uint64_t a1)
{
  result = qword_100981808;
  if (!qword_100981808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100373F20(uint64_t a1)
{
  type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    sub_100373FEC(319, qword_100981818, &qword_100972EB0, UIView_ptr);
    if (v2 <= 0x3F)
    {
      sub_100373FEC(319, qword_100984200, &qword_100970180, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100373FEC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100005744(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100374098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10002B894(v7, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

id sub_1003741DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10037422C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_1003742BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Action.title.getter();
  if (v12)
  {
    v13 = Action.artwork.getter();
    if (v13)
    {
      v14 = v13;
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        static SystemImage.load(artwork:with:includePrivateImages:)();
      }

      else if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        sub_100330100(v14, 0);
      }
    }

    sub_100031660(a4, v19, &unk_1009711D0, &unk_1007B1A10);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a8;
    *(v16 + 32) = a1;
    v17 = v19[1];
    *(v16 + 40) = v19[0];
    *(v16 + 56) = v17;
    v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_10002B894(a4, &unk_1009711D0, &unk_1007B1A10);
  }

  else
  {
    sub_10002B894(a4, &unk_1009711D0, &unk_1007B1A10);

    swift_unknownObjectRelease();
    return 0;
  }

  return v15;
}

BOOL sub_100374478(uint64_t a1)
{
  v1 = type metadata accessor for FlowPage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  type metadata accessor for FlowAction();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  FlowAction.page.getter();
  (*(v2 + 104))(v4, enum case for FlowPage.writeReview(_:), v1);
  sub_100376294();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {

    v8 = *(v2 + 8);
    v8(v4, v1);
    v8(v7, v1);

    return 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v11 = *(v2 + 8);
  v11(v4, v1);
  v11(v7, v1);

  if (v10)
  {
    return 1;
  }

LABEL_7:
  type metadata accessor for WriteReviewAction();
  return swift_dynamicCastClass() != 0;
}

id sub_1003746C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v66 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_100981860, &unk_1007C9148);
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - v8;
  v69 = type metadata accessor for FlowPreview();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = v10;
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v60 - v12;
  v13 = sub_10002849C(&qword_100981858, &qword_1007C9140);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = type metadata accessor for PreviewItem(0);
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v70 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 view];
  [a1 locationInView:v20];
  v22 = v21;
  v24 = v23;

  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v26 = result;
  (*(v2 + qword_1009816B0))(v22, v24);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    v27 = &qword_100981858;
    v28 = &qword_1007C9140;
    v29 = v15;
    goto LABEL_9;
  }

  v63 = v2;
  v30 = v70;
  sub_100376064(v15, v70, type metadata accessor for PreviewItem);
  v31 = v66;
  (*(v66 + 2))(v6, v30, v4);
  v32 = *(v30 + *(v16 + 20));
  if (v32)
  {
    v33 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v34 = v32;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    *(&aBlock + 1) = 0;
    *&v73 = 0;
  }

  v35 = v69;
  v36 = v67;
  *&aBlock = v34;
  *(&v73 + 1) = v33;
  v37 = v34;
  sub_100370728(&aBlock, v9);
  (*(v31 + 1))(v6, v4);
  sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
  if (v36[6](v9, 1, v35) == 1)
  {
    sub_1003760CC(v70, type metadata accessor for PreviewItem);

    v27 = &unk_100981860;
    v28 = &unk_1007C9148;
    v29 = v9;
LABEL_9:
    sub_10002B894(v29, v27, v28);
    return 0;
  }

  v66 = v36[4];
  v66(v68, v9, v35);
  if (v32)
  {
    v39 = v37;
    [v26 convertPoint:v39 toCoordinateSpace:{v22, v24}];
    v40 = [v39 hitTest:0 withEvent:?];
    if (v40)
    {
      v62 = v39;
      v41 = v40;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v61 = v41;
      do
      {
        v71 = v41;
        v42 = v41;
        sub_10002849C(&qword_1009818B0, &qword_1007C9180);
        if (swift_dynamicCast())
        {
          v43 = *(&v73 + 1);
          sub_10002B894(&aBlock, &qword_1009818B8, qword_1007C9188);
          if (v43)
          {

            (*(v67 + 1))(v68, v69);
            sub_1003760CC(v70, type metadata accessor for PreviewItem);
            return 0;
          }
        }

        else
        {
          v74 = 0;
          aBlock = 0u;
          v73 = 0u;
          sub_10002B894(&aBlock, &qword_1009818B8, qword_1007C9188);
        }

        v41 = [v42 superview];
      }

      while (v41);

      v35 = v69;
      v36 = v67;
      v39 = v62;
    }
  }

  v44 = v68;
  v45 = sub_100370AA0(v68, v38);
  v47 = v46;
  v63 = v46;
  v49 = v48;
  v50 = swift_allocObject();
  v50[2] = v45;
  v50[3] = v47;
  v67 = v45;
  v50[4] = v49;
  v51 = v65;
  v36[2](v65, v44, v35);
  v52 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v53 = swift_allocObject();
  v66((v53 + v52), v51, v35);
  v66 = objc_opt_self();
  v74 = sub_100376338;
  v75 = v50;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = v36;
  *&v73 = sub_1003741DC;
  *(&v73 + 1) = &unk_1008BF978;
  v55 = _Block_copy(&aBlock);
  v56 = v45;
  v57 = v63;
  sub_1003763E0(v56, v63, v49);

  v74 = sub_100376370;
  v75 = v53;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_10037422C;
  *(&v73 + 1) = &unk_1008BF9A0;
  v58 = _Block_copy(&aBlock);

  v59 = [v66 configurationWithIdentifier:0 previewProvider:v55 actionProvider:v58];

  _Block_release(v58);
  _Block_release(v55);

  sub_100376020(v67, v57);
  v54[1](v68, v69);
  sub_1003760CC(v70, type metadata accessor for PreviewItem);
  return v59;
}

uint64_t sub_100374F3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100981858, &qword_1007C9140);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PreviewItem(0);
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 view];
  [a1 locationInView:v14];
  v16 = v15;
  v18 = v17;

  (*(v3 + qword_1009816B0))(v16, v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10002B894(v8, &qword_100981858, &qword_1007C9140);
  }

  sub_100376064(v8, v13, type metadata accessor for PreviewItem);
  sub_100370F58(v13);
  v20 = *&v13[*(v9 + 20)];
  if (v20)
  {
    ObjectType = swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = *(v22 + 16);
      v24 = v22;
      v25 = v20;
      v23(a2, ObjectType, v24);
    }
  }

  return sub_1003760CC(v13, type metadata accessor for PreviewItem);
}

uint64_t sub_100375198(void *a1, uint64_t a2)
{
  v5 = sub_10002849C(&qword_100981858, &qword_1007C9140);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for PreviewItem(0);
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 view];
  [a1 locationInView:v13];
  v15 = v14;
  v17 = v16;

  (*(v2 + qword_1009816B0))(v15, v17);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10002B894(v7, &qword_100981858, &qword_1007C9140);
  }

  sub_100376064(v7, v12, type metadata accessor for PreviewItem);
  v19 = *&v12[*(v8 + 20)];
  if (v19)
  {
    ObjectType = swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v22 = *(v21 + 24);
      v23 = v21;
      v24 = v19;
      v22(a2, ObjectType, v23);
    }
  }

  return sub_1003760CC(v12, type metadata accessor for PreviewItem);
}

uint64_t sub_1003753E4(void *a1, void *a2)
{
  v3 = v2;
  v48 = a2;
  v5 = type metadata accessor for IndexPath();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100981860, &unk_1007C9148);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for FlowPreview();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100981858, &qword_1007C9140);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = type metadata accessor for PreviewItem(0);
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 view];
  [a1 locationInView:v21];
  v23 = v22;
  v25 = v24;

  (*(v3 + qword_1009816B0))(v23, v25);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10002B894(v15, &qword_100981858, &qword_1007C9140);
  }

  sub_100376064(v15, v20, type metadata accessor for PreviewItem);
  v27 = v49;
  (*(v49 + 16))(v7, v20, v5);
  v28 = *&v20[*(v16 + 20)];
  if (v28)
  {
    v29 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  }

  else
  {
    v29 = 0;
    v54 = 0;
    v55 = 0;
  }

  v30 = v51;
  aBlock = v28;
  v56 = v29;
  v31 = v28;
  sub_100370728(&aBlock, v10);
  (*(v27 + 8))(v7, v5);
  sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
  v32 = v52;
  if ((*(v30 + 48))(v10, 1, v52) == 1)
  {
    sub_1003760CC(v20, type metadata accessor for PreviewItem);
    return sub_10002B894(v10, &unk_100981860, &unk_1007C9148);
  }

  else
  {
    v33 = v50;
    v34.n128_f64[0] = (*(v30 + 32))(v50, v10, v32);
    v35 = sub_100370AA0(v33, v34);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (v37 && (v41 = v35, (Strong = v36) != 0) || (Strong = swift_unknownObjectWeakLoadStrong(), v38))
    {

      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    v44 = swift_allocObject();
    v44[2] = Strong;
    v44[3] = v38;
    v44[4] = v43;
    v57 = sub_100376014;
    v58 = v44;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100007A08;
    v56 = &unk_1008BF838;
    v45 = _Block_copy(&aBlock);
    v46 = Strong;
    sub_10000827C(v38, v43);

    [v48 addCompletion:v45];
    _Block_release(v45);
    sub_10001F63C(v38, v43);

    sub_100376020(v36, v38);
    (*(v30 + 8))(v50, v32);
    return sub_1003760CC(v20, type metadata accessor for PreviewItem);
  }
}

id sub_100375994(void *a1)
{
  v3 = sub_10002849C(&qword_100981858, &qword_1007C9140);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for PreviewItem(0);
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_1009816B0))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &qword_100981858, &qword_1007C9140);
    return 0;
  }

  else
  {
    sub_100376064(v5, v10, type metadata accessor for PreviewItem);
    v17 = *&v10[*(v6 + 20)];
    if (v17)
    {
      v18 = objc_allocWithZone(UIPreviewParameters);
      v19 = v17;
      v20 = [v18 init];
      [v20 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      if (v22)
      {
        v23 = v22;
        v24 = *(v22 + 8);
        v25 = v19;
        v24(ObjectType, v23);
        v26 = (*(v23 + 40))(ObjectType, v23);
        if (v26)
        {
          v27 = v26;

          v25 = v27;
        }
      }

      else
      {
        v25 = v19;
      }

      v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v25 parameters:v20];

      sub_1003760CC(v10, type metadata accessor for PreviewItem);
      return v28;
    }

    else
    {
      sub_1003760CC(v10, type metadata accessor for PreviewItem);
      return 0;
    }
  }
}

id sub_100375CA8(void *a1)
{
  v3 = sub_10002849C(&qword_100981858, &qword_1007C9140);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for PreviewItem(0);
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_1009816B0))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &qword_100981858, &qword_1007C9140);
  }

  else
  {
    sub_100376064(v5, v10, type metadata accessor for PreviewItem);
    v16 = *&v10[*(v6 + 20)];
    if (v16)
    {
      v17 = objc_allocWithZone(UIPreviewParameters);
      v18 = v16;
      v19 = [v17 init];
      [v19 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v21;
        v23 = *(v21 + 32);
        v24 = v18;
        v23(ObjectType, v22);
        v25 = (*(v22 + 40))(ObjectType, v22);
        if (v25)
        {
          v26 = v25;

          v24 = v26;
        }
      }

      else
      {
        v24 = v18;
      }

      v27 = [v24 window];
      if (v27)
      {

        v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v24 parameters:v19];
        sub_1003760CC(v10, type metadata accessor for PreviewItem);
        return v28;
      }
    }

    sub_1003760CC(v10, type metadata accessor for PreviewItem);
  }

  return 0;
}

void sub_100376020(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

uint64_t sub_100376064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003760CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10037612C(void *a1)
{
  v3 = *(type metadata accessor for FlowPresentationContext() - 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_1003733B8(a1, v4, v5, v6);
}

double sub_1003761C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100376294()
{
  result = qword_1009818A0;
  if (!qword_1009818A0)
  {
    type metadata accessor for FlowPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009818A0);
  }

  return result;
}

void *sub_100376338()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

UIMenu sub_100376370()
{
  type metadata accessor for FlowPreview();

  return sub_100370DB8();
}

double sub_1003763E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a1;
  }

  return result;
}

void sub_1003765E4()
{
  v1 = type metadata accessor for SystemImage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  v10 = *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView);
  (*(v2 + 104))(v4, **(&off_1008BFAD8 + *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronDirection)), v1, v6);
  (*(v2 + 32))(v8, v4, v1);
  v11 = v10;
  v12 = static SystemImage.load(_:with:)();
  (*(v2 + 8))(v8, v1);
  [v11 setImage:v12];

  v13 = *(v0 + v9);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 configurationWithPointSize:6 weight:15.0];
  [v15 setPreferredSymbolConfiguration:v16];
}

char *sub_1003767C0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView;
  *&v0[v2] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurEffect;
  *&v0[v3] = [objc_opt_self() effectWithStyle:9];
  v4 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  *&v0[v4] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_visibleSize] = _Q0;
  *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_tapSize] = xmmword_1007C9250;
  v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronDirection] = 1;
  v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_shouldUseDirectionalChevron] = 1;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*&v0[v3]];
  *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView] = v10;
  v11 = [objc_opt_self() effectForBlurEffect:*&v0[v3] style:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_vibrancyView] = v12;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 68.0, 44.0);
  v14 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView;
  v15 = *&v13[OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView];
  v16 = v13;
  [v15 setUserInteractionEnabled:0];
  v16[OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronDirection] = 1;
  v17 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  [*&v16[OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView] setContentMode:4];
  sub_1003765E4();
  v18 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView;
  [*&v13[v14] addSubview:*&v16[OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView]];
  v19 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_vibrancyView;
  v20 = [*&v16[OBJC_IVAR____TtC8AppStore18RoundChevronButton_vibrancyView] contentView];
  [v20 addSubview:*&v16[v17]];

  v21 = [*&v16[v18] contentView];
  [v21 addSubview:*&v16[v19]];

  v22 = *&v13[v14];
  v23 = v16;
  [v23 addSubview:v22];
  [v23 setOverrideUserInterfaceStyle:1];

  return v23;
}

void sub_100376AD8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [v0 bounds];
  v2 = (CGRectGetWidth(v24) + -28.0) * 0.5;
  [v0 bounds];
  v3 = (CGRectGetHeight(v25) + -28.0) * 0.5;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView];
  [v4 setFrame:{v2, v3, 28.0, 28.0}];
  v5 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  v6 = [*&v0[OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView] image];
  if (v6)
  {
    v7 = v6;
    [*&v0[v5] setContentMode:1];
    v8 = [v0 traitCollection];
    v9 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v9)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *&v1[v5];
    [v4 frame];
    Width = CGRectGetWidth(v26);
    [v7 size];
    v14 = floor(v10 + (Width - v13) * 0.5);
    [v4 frame];
    Height = CGRectGetHeight(v27);
    [v7 size];
    v17 = floor((Height - v16) * 0.5);
    [v7 size];
    v19 = v18;
    [v7 size];
    [v11 setFrame:{v14, v17, v19, v20}];
  }

  v21 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView;
  [*&v1[OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  [*&v1[OBJC_IVAR____TtC8AppStore18RoundChevronButton_vibrancyView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  v22 = *&v1[v21];
  v28.size.width = 28.0;
  v28.size.height = 28.0;
  v28.origin.x = v2;
  v28.origin.y = v3;
  [v22 _setCornerRadius:CGRectGetHeight(v28) * 0.5];
}

unint64_t sub_100376E84()
{
  result = qword_100981960;
  if (!qword_100981960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981960);
  }

  return result;
}

void sub_100376ED8()
{
  v1 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_blurEffect;
  *(v0 + v2) = [objc_opt_self() effectWithStyle:9];
  v3 = OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_visibleSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_tapSize) = xmmword_1007C9250;
  *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_chevronDirection) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore18RoundChevronButton_shouldUseDirectionalChevron) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100377024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  v11[1] = PrivacyFooter.bodyText.getter();
  type metadata accessor for LinkableText();
  type metadata accessor for BaseObjectGraph();
  sub_100377948(&qword_100973290, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  ComponentModel.pairedWith<A>(objectGraph:)();

  v8 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1003773A0(v7, v4 + v9);
  swift_endAccess();
  sub_100287C10();
  return sub_100377410(v7);
}

uint64_t sub_1003771C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  sub_1000056A8(v7, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1003773A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100377410(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100377478(void *a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2.n128_f64[0];
  v34[0] = a1;
  v8 = type metadata accessor for PrivacyFooterLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivacyFooterLayout();
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin(v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LabelPlaceholderCompatibility();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000367E8();
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  sub_1000056A8(v19, qword_1009D10E8);
  v20 = [a6 traitCollection];
  v34[1] = a6;
  v21 = v20;
  v22 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyFooter.bodyText.getter();
  LinkableText.styledText.getter();

  v23 = dispatch thunk of StyledText.asAttributedString(using:)();

  v24 = type metadata accessor for Feature();
  v39 = v24;
  v40 = sub_100377948(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_1000056E0(v38);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  v34[0] = v23;
  v26 = v22;
  isFeatureEnabled(_:)();
  sub_100007000(v38);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v16 + 8))(v18, v15);
  if (qword_10096D520 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v8, qword_1009CEBE8);
  (*(v9 + 16))(v11, v27, v8);
  v28 = v39;
  v29 = v40;
  v30 = sub_10002A400(v38, v39);
  v37[3] = v28;
  v37[4] = *(v29 + 8);
  v31 = sub_1000056E0(v37);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)();
  sub_100377948(&unk_10098DE10, &type metadata accessor for PrivacyFooterLayout, &protocol conformance descriptor for PrivacyFooterLayout);
  v32 = v36;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v35 + 8))(v14, v32);
  sub_100007000(v38);
  return v7;
}

uint64_t sub_100377948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003779A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = [v7 contentView];
  [a6 pageMarginInsets];
  [v9 setLayoutMargins:?];

  v10 = EditorialQuote.text.getter();
  sub_1002804BC(v10, v11);
  v12 = EditorialQuote.attribution.getter();

  return sub_1002804C8(v12, v13);
}

double sub_100377ACC(uint64_t a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2.n128_f64[0];
  v48 = type metadata accessor for EditorialQuoteLayout.Metrics();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for EditorialQuoteLayout();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for LabelPlaceholderCompatibility();
  v56 = *(v55 - 8);
  *&v11 = __chkstk_darwin(v55).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a6 pageMarginInsets];
  CGSize.subtracting(insets:)();
  v14 = [a6 traitCollection];
  v15 = UITraitCollection.isSizeClassCompact.getter();

  v16 = 4;
  if ((v15 & 1) == 0)
  {
    v16 = 1;
  }

  v53 = v16;
  v46 = a1;
  EditorialQuote.text.getter();
  v45 = v17;
  v18 = sub_1000367E8();
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  sub_1000056A8(v19, qword_1009CEBA8);
  v20 = [a6 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v21 = type metadata accessor for Feature();
  v63 = v21;
  v22 = sub_1003781FC(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v64 = v22;
  v23 = sub_1000056E0(v62);
  v24 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25 = *(v21 - 8);
  v44 = v18;
  v26 = *(v25 + 104);
  v26(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
  isFeatureEnabled(_:)();
  v54 = a6;
  sub_100007000(v62);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v27 = *(v56 + 8);
  v56 += 8;
  v27(v13, v55);
  v46 = EditorialQuote.attribution.getter();
  v45 = v28;
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v19, qword_1009CEBC0);
  v29 = [v54 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v60 = v21;
  v61 = v22;
  v30 = sub_1000056E0(v59);
  v26(v30, v24, v21);
  isFeatureEnabled(_:)();
  sub_100007000(v59);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v27(v13, v55);
  if (qword_10096D4F0 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_1000056A8(v48, qword_1009CEB90);
  (*(v47 + 16))(v49, v32, v31);
  v33 = v63;
  v34 = v64;
  v35 = sub_10002A400(v62, v63);
  v58[3] = v33;
  v58[4] = *(v34 + 8);
  v36 = sub_1000056E0(v58);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  v37 = v60;
  v38 = v61;
  v39 = sub_10002A400(v59, v60);
  v57[3] = v37;
  v57[4] = *(v38 + 8);
  v40 = sub_1000056E0(v57);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v41 = v50;
  EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)();
  sub_1003781FC(&unk_10098D260, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v42 = v52;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  (*(v51 + 8))(v41, v42);
  sub_100007000(v59);
  sub_100007000(v62);
  return v7;
}

uint64_t sub_1003781FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003782B4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SearchCollectionLayoutAttributes();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100378390(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 configurationWithTextStyle:v6];

  *a3 = v7;
}

uint64_t sub_1003783FC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  sub_100005644(v4, qword_1009CFCD8);
  v28 = sub_1000056A8(v4, qword_1009CFCD8);
  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v31 = sub_1000056A8(v5, qword_1009D1178);
  v6 = *(v5 - 8);
  v33 = *(v6 + 16);
  v34 = v6 + 16;
  v33(v3, v31, v5);
  v35 = enum case for FontSource.useCase(_:);
  v7 = v1 + 13;
  v36 = v1[13];
  v36(v3);
  v8 = type metadata accessor for StaticDimension();
  v51[3] = v8;
  v51[4] = &protocol witness table for StaticDimension;
  v30 = v8;
  sub_1000056E0(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v48);
  v10 = v1 + 2;
  v32 = v1[2];
  v32(v9, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v29 = v1[1];
  v29(v3, v0);
  v11 = v33;
  v33(v3, v31, v5);
  (v36)(v3, v35, v0);
  v49 = v8;
  v50 = &protocol witness table for StaticDimension;
  sub_1000056E0(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v45);
  v32(v12, v3, v0);
  v25 = v1 + 1;
  StaticDimension.init(_:scaledLike:)();
  v13 = v29;
  v29(v3, v0);
  v27 = v5;
  v11(v3, v31, v5);
  v31 = v7;
  (v36)(v3, v35, v0);
  v46 = v30;
  v47 = &protocol witness table for StaticDimension;
  sub_1000056E0(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v42);
  v26 = v10;
  v32(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13(v3, v0);
  if (qword_10096E0B8 != -1)
  {
    swift_once();
  }

  v15 = v27;
  v24 = sub_1000056A8(v27, qword_1009D11A8);
  v33(v3, v24, v15);
  v16 = v35;
  (v36)(v3, v35, v0);
  v17 = v30;
  v43 = v30;
  v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v39);
  v19 = v32;
  v32(v18, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v20 = v29;
  v29(v3, v0);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39[0] = 0;
  v33(v3, v24, v15);
  (v36)(v3, v16, v0);
  v38[3] = v17;
  v38[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v37);
  v19(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v20(v3, v0);
  return PrivacyCategoryLayout.Metrics.init(textLeadingMargin:titleTopSpace:iconHorizontalCenterMargin:iconSize:dataTypesTopSpace:dataTypesBottomSpace:bottomMargin:)();
}

char *sub_100378980(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  *&v5[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1178);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setClipsToBounds:0];
  v27 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView]];
  v28 = *&v26[v27];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v29 = v28;
  v30 = static UIColor.primaryText.getter();
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel]];
  v32 = *&v26[v31];
  v33 = static UIColor.primaryText.getter();
  [v32 setTextColor:v33];

  return v26;
}

id sub_100378DCC(__n128 a1)
{
  v2 = v1;
  v58 = type metadata accessor for PrivacyCategoryStyle();
  v3 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v52 - v6;
  __chkstk_darwin(v7);
  v57 = &v52 - v8;
  v9 = type metadata accessor for DirectionalTextAlignment();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v52 - v14;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel];
  v17 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category];
  if (v18)
  {

    PrivacyCategory.title.getter();

    v18 = String._bridgeToObjectiveC()();
  }

  [v16 setText:{v18, v13}];

  v19 = &StringUserDefaultsDebugSetting;
  if (*&v2[v17])
  {
    v54 = v16;

    v20 = PrivacyCategory.dataTypes.getter();

    if (*(v20 + 16))
    {
      v21 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel;
      v22 = *&v2[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel];
      if (v22)
      {
        goto LABEL_15;
      }

      if (qword_10096E0B8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for FontUseCase();
      v24 = sub_1000056A8(v23, qword_1009D11A8);
      v25 = *(v23 - 8);
      (*(v25 + 16))(v15, v24, v23);
      (*(v25 + 56))(v15, 0, 1, v23);
      (*(v53 + 104))(v11, enum case for DirectionalTextAlignment.leading(_:), v9);
      v26 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
      v27 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v28 = *&v2[v21];
      if (v28)
      {
        [v28 removeFromSuperview];
        v29 = *&v2[v21];
      }

      else
      {
        v29 = 0;
      }

      *&v2[v21] = v27;
      v33 = v27;

      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v34 = v33;
      v35 = static UIColor.secondaryText.getter();
      [v34 setTextColor:v35];

      [v2 addSubview:v34];
      [v2 setNeedsLayout];

      v22 = *&v2[v21];
      if (v22)
      {
LABEL_15:
        v59 = v20;
        v36 = v22;
        sub_10002849C(&unk_100977380, &qword_1007BB880);
        sub_10015872C();
        BidirectionalCollection<>.joined(separator:)();

        v37 = String._bridgeToObjectiveC()();

        [v36 setText:v37];
      }

      else
      {
      }

      v32 = v57;
      v31 = v58;
      v38 = *&v2[v21];
      v19 = &StringUserDefaultsDebugSetting;
      if (v38)
      {
        [v38 setHidden:0];
      }

      goto LABEL_18;
    }
  }

  v30 = *&v2[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel];
  v32 = v57;
  v31 = v58;
  if (v30)
  {
    [v30 setHidden:1];
  }

LABEL_18:
  if (*&v2[v17])
  {

    v39 = v55;
    PrivacyCategory.style.getter();

    (*(v3 + 32))(v32, v39, v31);
    v40 = v56;
    (*(v3 + 16))(v56, v32, v31);
    v41 = (*(v3 + 88))(v40, v31);
    if (v41 == enum case for PrivacyCategoryStyle.productPage(_:))
    {
      if (qword_10096E0A8 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for FontUseCase();
      v43 = v42;
      v44 = qword_1009D1178;
LABEL_27:
      v45 = sub_1000056A8(v42, v44);
      v46 = *(v43 - 8);
      (*(v46 + 16))(v15, v45, v43);
      (*(v46 + 56))(v15, 0, 1, v43);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      (*(v3 + 8))(v32, v31);
      return [v2 v19[41].base_meths];
    }

    if (v41 == enum case for PrivacyCategoryStyle.detailPage(_:))
    {
      if (qword_10096E0B0 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for FontUseCase();
      v43 = v42;
      v44 = qword_1009D1190;
      goto LABEL_27;
    }

    if (qword_10096E0A8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for FontUseCase();
    v48 = sub_1000056A8(v47, qword_1009D1178);
    v49 = *(v47 - 8);
    (*(v49 + 16))(v15, v48, v47);
    (*(v49 + 56))(v15, 0, 1, v47);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    v50 = *(v3 + 8);
    v50(v32, v31);
    v50(v56, v31);
  }

  return [v2 v19[41].base_meths];
}

uint64_t sub_1003795C4()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PrivacyCategoryLayout();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v26 - v13;
  v43.receiver = v0;
  v43.super_class = ObjectType;
  v29 = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v12);

  sub_100379904(v15, v0, v14);

  (*(v8 + 16))(v10, v14, v7);
  v16 = *&v0[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView];
  v41 = type metadata accessor for ArtworkView();
  v42 = &protocol witness table for UIView;
  v40 = v16;
  v17 = *&v0[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel];
  v18 = type metadata accessor for DynamicTypeLabel();
  v38 = v18;
  v39 = &protocol witness table for UILabel;
  v37 = v17;
  v19 = *&v0[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel];
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v19;
  v35 = v18;
  v36 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v24 = v28;
  PrivacyCategoryLayout.placeChildren(relativeTo:in:)();
  (*(v30 + 8))(v24, v31);
  (*(v4 + 8))(v6, v27);
  return (*(v8 + 8))(v14, v7);
}

void sub_100379904(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v6 = type metadata accessor for PrivacyCategoryStyle();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v51 = &v47 - v12;
  v13 = type metadata accessor for FloatingPointRoundingRule();
  v48 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FontSource();
  v55 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for StaticDimension();
  v19 = *(v54 - 8);
  __chkstk_darwin(v54);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DA28 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v23 = sub_1000056A8(v22, qword_1009CFCD8);
  (*(*(v22 - 8) + 16))(a3, v23, v22);
  v24 = sub_10037B094(a1);
  if (v24)
  {
    v25 = v24;
    [v24 size];
    PrivacyCategoryLayout.Metrics.iconSize.setter();

    if (!a1)
    {
      return;
    }
  }

  else
  {
    v47 = a3;
    if (qword_10096E0A0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for FontUseCase();
    v27 = sub_1000056A8(v26, qword_1009D1160);
    (*(*(v26 - 8) + 16))(v18, v27, v26);
    v28 = v55;
    (*(v55 + 104))(v18, enum case for FontSource.useCase(_:), v16);
    v60 = v16;
    v61 = &protocol witness table for FontSource;
    v29 = sub_1000056E0(v59);
    (*(v28 + 16))(v29, v18, v16);
    StaticDimension.init(_:scaledLike:)();
    (*(v28 + 8))(v18, v16);
    static Dimensions.defaultRoundingRule.getter();
    v30 = v54;
    AnyDimension.value(in:rounded:)();
    (*(v48 + 8))(v15, v13);
    PrivacyCategoryLayout.Metrics.iconSize.setter();
    (*(v19 + 8))(v21, v30);
    if (!a1)
    {
      return;
    }
  }

  PrivacyCategory.style.getter();
  v32 = v51;
  v31 = v52;
  v33 = v53;
  (*(v52 + 32))(v51, v10, v53);
  v34 = v50;
  (*(v31 + 16))(v50, v32, v33);
  v35 = (*(v31 + 88))(v34, v33);
  if (v35 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_10096E0A8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for FontUseCase();
    v37 = v36;
    v38 = qword_1009D1178;
LABEL_17:
    v39 = sub_1000056A8(v36, v38);
    (*(*(v37 - 8) + 16))(v18, v39, v37);
    v40 = v55;
    (*(v55 + 104))(v18, enum case for FontSource.useCase(_:), v16);
    v60 = v54;
    v61 = &protocol witness table for StaticDimension;
    sub_1000056E0(v59);
    v57 = v16;
    v58 = &protocol witness table for FontSource;
    v41 = sub_1000056E0(v56);
    (*(v40 + 16))(v41, v18, v16);
    StaticDimension.init(_:scaledLike:)();
    (*(v40 + 8))(v18, v16);
    PrivacyCategoryLayout.Metrics.titleTopSpace.setter();
    (*(v31 + 8))(v32, v33);
    return;
  }

  if (v35 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_10096E0B0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for FontUseCase();
    v37 = v36;
    v38 = qword_1009D1190;
    goto LABEL_17;
  }

  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for FontUseCase();
  v43 = sub_1000056A8(v42, qword_1009D1178);
  (*(*(v42 - 8) + 16))(v18, v43, v42);
  v44 = v55;
  (*(v55 + 104))(v18, enum case for FontSource.useCase(_:), v16);
  v60 = v54;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v57 = v16;
  v58 = &protocol witness table for FontSource;
  v45 = sub_1000056E0(v56);
  (*(v44 + 16))(v45, v18, v16);
  StaticDimension.init(_:scaledLike:)();
  (*(v44 + 8))(v18, v16);
  PrivacyCategoryLayout.Metrics.titleTopSpace.setter();
  v46 = *(v31 + 8);
  v46(v32, v33);
  v46(v34, v33);
}

double sub_10037A194(uint64_t a1, double a2, double a3)
{
  v28 = type metadata accessor for PrivacyCategoryLayout();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;

  sub_100379904(v15, a1, v14);

  (*(v9 + 16))(v11, v14, v8);
  v16 = *(v3 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView);
  v38 = type metadata accessor for ArtworkView();
  v39 = &protocol witness table for UIView;
  v37 = v16;
  v17 = *(v3 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel);
  v18 = type metadata accessor for DynamicTypeLabel();
  v35 = v18;
  v36 = &protocol witness table for UILabel;
  v34 = v17;
  v19 = *(v3 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel);
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v30 = 0;
    v31 = 0;
  }

  v29 = v19;
  v32 = v18;
  v33 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)();
  PrivacyCategoryLayout.measurements(fitting:in:)();
  v25 = v24;
  (*(v5 + 8))(v7, v28);
  (*(v9 + 8))(v14, v8);
  return v25;
}

void sub_10037A4D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = [a1 imageWithRenderingMode:{2, a4, a5}];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView);

    v10.value.super.isa = v5;
    v10.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v10, v9);
  }
}

uint64_t sub_10037A62C(void *a1, void *a2)
{
  v64 = type metadata accessor for PrivacyCategoryLayout();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v4;
  __chkstk_darwin(v5);
  v62 = &v48 - v6;
  v7 = type metadata accessor for LabelPlaceholderCompatibility();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrivacyCategoryStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v59 = *(v67 - 8);
  __chkstk_darwin(v67);
  v54 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v65 = a2;
  sub_100379904(a1, a2, &v48 - v19);
  v58 = v20;
  PrivacyCategoryLayout.Metrics.iconSize.getter();
  v55 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v56 = LayoutViewPlaceholder.init(representing:)();
  v66 = a1;
  PrivacyCategory.style.getter();
  v21 = (*(v11 + 88))(v13, v10);
  v69 = v14;
  v57 = v7;
  if (v21 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_10096E0A8 != -1)
    {
      swift_once();
    }

    v22 = qword_1009D1178;
LABEL_9:
    v23 = sub_1000056A8(v14, v22);
    (*(v68 + 16))(v16, v23, v14);
    goto LABEL_13;
  }

  if (v21 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_10096E0B0 != -1)
    {
      swift_once();
    }

    v22 = qword_1009D1190;
    goto LABEL_9;
  }

  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v14, qword_1009D1178);
  (*(v68 + 16))(v16, v24, v14);
  (*(v11 + 8))(v13, v10);
LABEL_13:
  v25 = v65;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v26 = [v25 traitCollection];
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyCategory.title.getter();
  v28 = type metadata accessor for Feature();
  v76[3] = v28;
  v29 = sub_100085D7C();
  v52 = v16;
  v50 = v29;
  v76[4] = v29;
  v30 = sub_1000056E0(v76);
  v31 = *(*(v28 - 8) + 104);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v48 = v31;
  v31(v30);
  v32 = v27;
  isFeatureEnabled(_:)();
  sub_100007000(v76);
  v51 = v32;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v33 = *(v53 + 8);
  v34 = v57;
  v33(v9, v57);
  if (qword_10096E0B8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v69, qword_1009D11A8);
  v35 = [v65 traitCollection];
  v36 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v75[0] = PrivacyCategory.dataTypes.getter();
  sub_10002849C(&unk_100977380, &qword_1007BB880);
  sub_10015872C();
  BidirectionalCollection<>.joined(separator:)();

  v75[3] = v28;
  v75[4] = v50;
  v37 = sub_1000056E0(v75);
  v48(v37, v49, v28);
  v66 = v36;
  isFeatureEnabled(_:)();
  sub_100007000(v75);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v33(v9, v34);
  v38 = v59;
  v39 = v58;
  (*(v59 + 16))(v54, v58, v67);
  v73 = v55;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v72 = v56;
  sub_10002C0AC(v76, v71);
  sub_10002C0AC(v75, v70);

  v40 = v62;
  PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)();
  v41 = v63;
  v42 = v61;
  v43 = v64;
  (*(v63 + 16))(v61, v40, v64);
  v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v45 = swift_allocObject();
  (*(v41 + 32))(v45 + v44, v42, v43);
  swift_allocObject();
  v46 = LayoutViewPlaceholder.init(measureWith:)();

  (*(v41 + 8))(v40, v43);
  sub_100007000(v75);
  sub_100007000(v76);
  (*(v68 + 8))(v52, v69);
  (*(v38 + 8))(v39, v67);
  return v46;
}

id sub_10037B094(uint64_t a1)
{
  if (a1 && (PrivacyCategory.prefersSmallArtwork.getter() & 1) != 0)
  {
    if (qword_10096DA20 != -1)
    {
      swift_once();
    }

    v2 = &qword_100981A58;
  }

  else
  {
    if (qword_10096DA18 == -1)
    {
      if (!a1)
      {
        return 0;
      }
    }

    else
    {
      swift_once();
      if (!a1)
      {
        return 0;
      }
    }

    v2 = &qword_100981A50;
  }

  v3 = *v2;
  v4 = PrivacyCategory.artwork.getter();
  if ((dispatch thunk of Artwork.isLocalImage.getter() & 1) == 0)
  {

LABEL_13:

    return 0;
  }

  v5 = v3;
  if (dispatch thunk of Artwork.isSystemImage.getter())
  {
    v6 = static SystemImage.load(artwork:with:includePrivateImages:)();
    goto LABEL_18;
  }

  if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = sub_100330100(v4, v3);
LABEL_18:
  v8 = v6;

  result = v8;
  if (!v8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10037B1EC()
{
  result = qword_100981AA8;
  if (!qword_100981AA8)
  {
    type metadata accessor for GameCenterPlayerProfileAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981AA8);
  }

  return result;
}

uint64_t sub_10037B24C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = type metadata accessor for FlowOrigin();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FlowPresentationContext();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = type metadata accessor for FlowPage();
  __chkstk_darwin(v17);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (*(v19 + 104))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.gameCenterPlayerProfile(_:));
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = type metadata accessor for ReferrerData();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = GameCenterPlayerProfileAction.playerId.getter();
  if (v23)
  {
    v24 = &type metadata for String;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v36 = 0;
  }

  v34 = v22;
  v35 = v23;
  v37 = v24;
  static ActionMetrics.notInstrumented.getter();
  (*(v7 + 104))(v9, enum case for FlowPresentationContext.infer(_:), v29);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v30);
  (*(v2 + 104))(v32, enum case for FlowOrigin.inapp(_:), v31);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v25 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v26 = sub_1005D01FC(v25, 1, v33);

  return v26;
}

char *sub_10037B72C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v11 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_materialView;
  *&v4[v11] = [objc_allocWithZone(UIVisualEffectView) init];
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView;
  v14 = *&v12[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_materialView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_materialView]];
  v17 = *&v12[v13];
  v17[OBJC_IVAR____TtC8AppStore12GradientView_kind] = 2;
  v18 = v17;
  v19 = [v18 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  [*&v12[v13] setAlpha:0.5];
  v20 = *&v12[v13];
  v21 = [v20 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v22 = *&v12[v13];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v24 = *&v15[v16];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B15F0;
  v26 = objc_opt_self();
  v27 = v24;
  result = [v26 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v25 + 32) = result;
    *(v25 + 40) = [objc_opt_self() colorEffectSaturate:1.5];
    sub_10037C4D0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 setBackgroundEffects:isa];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10037BBE4()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ShelfBackgroundMaterialGradientColors.oneColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    result = swift_allocObject();
    *(result + 1) = xmmword_1007B0B70;
    result[4] = v8;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.twoColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    result = swift_allocObject();
    v10 = *v6;
    *(result + 1) = xmmword_1007B15F0;
    *(result + 2) = v10;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.threeColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v11 = *v6;
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    result = swift_allocObject();
    *(result + 1) = xmmword_1007B48F0;
    result[4] = v11;
    *(result + 5) = vextq_s8(*(v6 + 8), *(v6 + 8), 8uLL);
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.fourColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    result = swift_allocObject();
    v12 = *v6;
    v13 = *(v6 + 1);
    *(result + 1) = xmmword_1007BB060;
    *(result + 2) = v12;
    *(result + 3) = v13;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10037BEF8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ShelfBackground();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v5 + 96))(v7, v4);
    v13 = *(sub_10002849C(&qword_100978410, &unk_1007C3880) + 48);
    (*(v9 + 32))(v12, v7, v8);
    v14 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v41 = v12;
    v15 = sub_10037BBE4();
    v16 = v15;
    v44 = *&v2[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView];
    v42 = v9;
    if (v15 >> 62)
    {
      goto LABEL_45;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      do
      {
        v47 = _swiftEmptyArrayStorage;
        v19 = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v18 & 0x8000000000000000) == 0)
        {
          v40 = v8;
          v20 = 0;
          v8 = 0;
          v21 = 0;
          v45 = v16 & 0xFFFFFFFFFFFFFF8;
          v46 = v16 & 0xC000000000000001;
          v43 = v16;
          v16 += 32;
          do
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            if (v21)
            {
              goto LABEL_48;
            }

            if (!v17)
            {
              goto LABEL_39;
            }

            v23 = v8 % v17;
            if (v46)
            {
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_40;
              }

              if (v23 >= *(v45 + 16))
              {
                goto LABEL_41;
              }

              v24 = *(v16 + 8 * v23);
            }

            v25 = v24;
            v26 = v2;
            v27 = [v2 traitCollection];
            v28 = [v27 userInterfaceStyle];

            v29 = 0.3;
            if (v28 == 2)
            {
              v29 = 0.5;
            }

            v30 = [v25 colorWithAlphaComponent:v29];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v2 = v47[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v19 = specialized ContiguousArray._endMutation()();
            v21 = v8 == v17;
            if (v8 == v17)
            {
              v8 = 0;
            }

            else
            {
              v31 = __OFADD__(v8++, 1);
              if (v31)
              {
                goto LABEL_43;
              }
            }

            ++v20;
            v2 = v26;
          }

          while (v22 != v18);
          *&v44[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v47;

          sub_1001C0CEC();
          v47 = _swiftEmptyArrayStorage;
          v19 = sub_100144108(0, v18, 0);
          v16 = 0;
          v32 = 0;
          v33 = 0;
          v34 = v47;
          while (1)
          {
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v33)
            {
              goto LABEL_49;
            }

            v47 = v34;
            v36 = *(v34 + 16);
            v35 = *(v34 + 24);
            if (v36 >= v35 >> 1)
            {
              v19 = sub_100144108((v35 > 1), v36 + 1, 1);
              v34 = v47;
            }

            *(v34 + 16) = v36 + 1;
            *(v34 + 8 * v36 + 32) = v32 / v17;
            v33 = v32 == v17;
            if (v32 == v17)
            {
              v32 = 0;
            }

            else
            {
              v31 = __OFADD__(v32++, 1);
              if (v31)
              {
                goto LABEL_44;
              }
            }

            ++v16;
            if (v8 == v18)
            {

              v37 = v44;
              sub_1001C0B48(v34);
              if (v17 == 4)
              {
                v38 = 0.0;
              }

              else
              {
                v38 = 0.5;
              }

              v39 = [v37 layer];
              objc_opt_self();
              [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v38, 0.0}];

              [v37 setNeedsDisplay];
              [v26 setNeedsLayout];
              (*(v42 + 8))(v41, v40);
              return;
            }
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v19 = _CocoaArrayWrapper.endIndex.getter();
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v17 = v19;
        v18 = v19 + 1;
      }

      while (!__OFADD__(v19, 1));
    }

    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    *(*&v2[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView] + OBJC_IVAR____TtC8AppStore12GradientView_colors) = _swiftEmptyArrayStorage;

    sub_1001C0CEC();
    sub_1001C0B48(_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10037C4D0()
{
  result = qword_10097FB70;
  if (!qword_10097FB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097FB70);
  }

  return result;
}

uint64_t sub_10037C5DC(Swift::Float a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v7 = type metadata accessor for Shadow();
  sub_100005644(v7, a5);
  sub_1000056A8(v7, a5);
  sub_100028BB8();
  UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, a1);
  return Shadow.init(color:blurRadius:offset:)();
}

uint64_t sub_10037C670()
{
  v0 = type metadata accessor for Shadow();
  sub_100005644(v0, qword_1009CFD80);
  sub_1000056A8(v0, qword_1009CFD80);
  sub_100028BB8();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  UIColor.init(light:dark:)(v3, v5);
  return Shadow.init(color:blurRadius:offset:)();
}

uint64_t sub_10037C950(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v7 = type metadata accessor for Shadow();
  sub_100005644(v7, a5);
  sub_1000056A8(v7, a5);
  v8 = [objc_opt_self() blackColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  return Shadow.init(color:blurRadius:offset:)();
}

void *sub_10037CA14()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_10037CA4C(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_10037CAA4;
}

void sub_10037CAA4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10020E160(v2);
  }

  else
  {
    sub_10020E160(*a1);
  }
}

uint64_t sub_10037CB3C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10037CD10(&qword_100979CE0, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007C94E8);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_10037CBF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_10037CD10(&qword_100979CE0, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007C94E8);

  return a3(ObjectType, v4);
}

uint64_t sub_10037CD10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10037CE20(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Separator();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ComponentLayoutOptions();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10037D488(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v19 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  sub_1000586D8(a5, v14);
  type metadata accessor for InAppPurchaseLockupView(0);
  v20 = sub_1004A1F00(a5, a1, a2);
  if (v19)
  {
    v21 = v20;
    Separator.verticalOutset.getter();
    sub_10002A400(v26, v26[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v24 + 8))(v10, v25);
    (*(v12 + 8))(v14, v11);
    sub_100007000(v26);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v21 = v22;
    (*(v12 + 8))(v14, v11);
  }

  return v21;
}

uint64_t sub_10037D16C(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v28[1] = a1;
  v8 = type metadata accessor for Separator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Shelf.PresentationHints();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v17 = v16;
  type metadata accessor for InAppPurchaseLockupView(0);
  sub_1004A1F00(a5, v17, a3);
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_10037D488(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v13 + 8))(v15, v12);
  sub_1000586D8(a5, v11);
  Separator.height(in:)();
  (*(v9 + 8))(v11, v8);
  [a5 pageMarginInsets];
  v18 = [a5 traitCollection];
  LOBYTE(v8) = UITraitCollection.isSizeClassRegular.getter();

  if ((v8 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v19 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v23 = v24;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v21 = v20;
    PageTraitEnvironment.pageColumnMargin.getter();
    v23 = v21 - (v22 + v22);
  }

  v25 = [objc_opt_self() absoluteDimension:v23];
  v26 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v26;
}

uint64_t sub_10037D488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10037D540()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for AlertActionHeaderViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v5 addSubview:v6];

      v7 = *&v0[OBJC_IVAR____TtC8AppStore31AlertActionHeaderViewController_imageView];
      *&v0[OBJC_IVAR____TtC8AppStore31AlertActionHeaderViewController_imageView] = v6;
      v8 = v6;

      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007B15F0;
      v10 = objc_opt_self();
      *(v9 + 32) = [v10 secondaryLabelColor];
      *(v9 + 40) = [v10 clearColor];
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v12 = [objc_opt_self() configurationWithPaletteColors:isa];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 setPreferredSymbolConfiguration:v12];
      [v8 setContentMode:1];

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007BCD60;
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 heightAnchor];

        v17 = [v16 constraintEqualToConstant:80.0];
        *(v13 + 32) = v17;
        v18 = [v8 topAnchor];

        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v40 = v12;
          v21 = [v19 topAnchor];

          v22 = [v18 constraintEqualToAnchor:v21 constant:20.0];
          *(v13 + 40) = v22;
          v23 = [v8 bottomAnchor];

          v24 = [v0 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 bottomAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            *(v13 + 48) = v27;
            v28 = [v8 leadingAnchor];

            v29 = [v0 view];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 leadingAnchor];

              v32 = [v28 constraintEqualToAnchor:v31];
              *(v13 + 56) = v32;
              v33 = [v8 trailingAnchor];

              v34 = [v0 view];
              if (v34)
              {
                v35 = v34;
                v36 = objc_opt_self();
                v37 = [v35 trailingAnchor];

                v38 = [v33 constraintEqualToAnchor:v37];
                *(v13 + 64) = v38;
                sub_100005744(0, &qword_1009766E0, NSLayoutConstraint_ptr);
                v39 = Array._bridgeToObjectiveC()().super.isa;

                [v36 activateConstraints:v39];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_10037DB0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionHeaderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10037DBB4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10037F7E8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_10037DE48()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppPromotionView(uint64_t a1)
{
  result = qword_100981BB0;
  if (!qword_100981BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_10037DFE8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10037E04C;
}

void sub_10037E04C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_10037E174()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  if (!CGRectIsEmpty(v13))
  {
    v1 = *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView];
    LayoutMarginsAware<>.layoutFrame.getter();
    sub_1002C65CC(v11);
    sub_1002C97E0();
    sub_1001A927C(v11);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v14);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinY(v15);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v1 setFrame:?];
    v2 = *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView];
    v3 = [v2 superview];
    if (v3)
    {
      v4 = v3;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v5 = v0;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v16);
        LayoutMarginsAware<>.layoutFrame.getter();
        v8 = CGRectGetHeight(v17) - MaxY;
        LayoutMarginsAware<>.layoutFrame.getter();
        [v2 setBounds:{0.0, 0.0, CGRectGetWidth(v18), v8}];
        [v1 frame];
        v9 = CGRectGetMaxY(v19);
        LayoutMarginsAware<>.layoutFrame.getter();
        v10 = CGRectGetHeight(v20) - v9;
        [v5 bounds];
        [v2 setCenter:{CGRectGetWidth(v21) * 0.5, v9 + v10 * 0.5}];
      }
    }
  }
}

void sub_10037E51C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_10002849C(&unk_10097B3D0, "α\b");
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  v14 = *&v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer];
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return;
  }

  v62 = *&v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView];
  v15 = [v62 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v18 = v2;
  v61[1] = v17;
  LOBYTE(v17) = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v24 = [v62 superview];
    if (!v24)
    {
      return;
    }

    v25 = v24;
    v26 = v18;
    v27 = static NSObject.== infix(_:_:)();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0x3FF0000000000000;
    v68 = sub_10037FAC4;
    v69 = v29;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100007A08;
    v67 = &unk_1008BFD88;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v31;
    v68 = sub_10037FADC;
    v69 = v32;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_1008BFDD8;
LABEL_30:
    v66 = sub_100504C5C;
    v67 = v33;
    v59 = _Block_copy(&aBlock);
    v60 = v31;

    [v28 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v30 options:v59 animations:0.0 completion:1.0];
    _Block_release(v59);
    _Block_release(v30);
    return;
  }

  if (v19 == 1)
  {
    v34 = v62;
    [a1 locationInView:v62];
    v35 = v18 + OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation;
    *v35 = v36;
    *(v35 + 1) = v37;
    v35[16] = 0;
    v38 = [v34 superview];
    if (!v38)
    {
      return;
    }

    v39 = v38;
    v40 = v18;
    v41 = static NSObject.== infix(_:_:)();

    if ((v41 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = 0x3FEEB851EB851EB8;
    v68 = sub_10037FAC4;
    v69 = v42;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100007A08;
    v67 = &unk_1008BFE28;
    v30 = _Block_copy(&aBlock);
    v31 = v40;

    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    *(v43 + 24) = v31;
    v68 = sub_10037FADC;
    v69 = v43;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_1008BFE78;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v62];
    v46 = (v18 + OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation + 16))
    {
      *v46 = v44;
      v46[1] = v45;
      *(v46 + 16) = 0;
    }

    else
    {
      v47 = sqrt((v45 - v46[1]) * (v45 - v46[1]) + (v44 - *v46) * (v44 - *v46));
      [v14 allowableMovement];
      if (v48 < v47)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100079A28(v18 + v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_10097B3F0;
    v22 = &qword_1007B3120;
    v23 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    ObjectGraphPair.value.getter();
    v67 = ObjectType;
    aBlock = v18;
    v49 = v18;
    dispatch thunk of Action.clickSender.setter();

    ObjectGraphPair.objectGraph.getter();
    v50 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v6, 1, v50) != 1)
    {
      ObjectGraphPair.value.getter();
      v52 = ObjectGraphPair.objectGraph.getter();
      sub_1005F9AF4(aBlock, 1, v52, v6);

      (*(v11 + 8))(v13, v10);

      (*(v51 + 8))(v6, v50);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100972A00;
    v22 = &unk_1007B3130;
    v23 = v6;
  }

  sub_10002B894(v23, v21, v22);
LABEL_27:
  v53 = [v62 superview];
  if (v53)
  {
    v54 = v53;
    v55 = v18;
    v56 = static NSObject.== infix(_:_:)();

    if (v56)
    {
      v28 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = 0x3FF0000000000000;
      v68 = sub_10037F830;
      v69 = v57;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_100007A08;
      v67 = &unk_1008BFCE8;
      v30 = _Block_copy(&aBlock);
      v31 = v55;

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = v31;
      v68 = sub_10037F83C;
      v69 = v58;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v33 = &unk_1008BFD38;
      goto LABEL_30;
    }
  }
}

id sub_10037EF04(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

BOOL sub_10037EF64(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView];
  v9 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView)];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    return 0;
  }

  [a2 locationInView:v2];
  v16 = v15;
  v18 = v17;
  v19 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v26.x = v16;
  v26.y = v18;
  if (CGRectContainsPoint(v28, v26))
  {
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();

      if (v20)
      {
        return 0;
      }
    }

    v21 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
    swift_beginAccess();
    sub_100079A28(&v3[v21], v7);
    v22 = sub_10002849C(&unk_10097B3D0, "α\b");
    v23 = (*(*(v22 - 8) + 48))(v7, 1, v22) != 1;
    sub_10002B894(v7, &qword_10097B3F0, &qword_1007B3120);
    return v23;
  }

  else
  {

    return 0;
  }
}

void sub_10037F234(uint64_t a1)
{
  sub_1000798B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_10037F304(uint64_t **a1))()
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
  v2[4] = sub_10037DFE8(v2);
  return sub_1000B4CAC;
}

double sub_10037F388(uint64_t a1)
{
  [*(*v1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v5);
  return 0.0;
}

CGFloat sub_10037F400(uint64_t a1)
{
  v2 = *v1;
  [*&v2[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v4);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v5);
  [v2 bounds];
  return CGRectGetWidth(v6) * 0.5;
}

uint64_t sub_10037F4AC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10037F7E8(&qword_100981BD0, type metadata accessor for AppPromotionView, &unk_1007C96A8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10037F520(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10037F7E8(&qword_100981BD0, type metadata accessor for AppPromotionView, &unk_1007C96A8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10037F5AC(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10037F7E8(&qword_100981BD0, type metadata accessor for AppPromotionView, &unk_1007C96A8);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10037F668(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_10037F7E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10037F840()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_10037F86C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  v3 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView] = [objc_allocWithZone(type metadata accessor for AppPromotionCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer] = v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView]];
  v11 = OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView]];
  v12 = OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v12] setMinimumPressDuration:0.1];
  [*&v10[v12] setDelegate:v10];
  [*&v10[v11] addGestureRecognizer:*&v10[v12]];

  return v10;
}

id sub_10037FAE0(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_1009CFF30];
  v12 = type metadata accessor for ArtworkView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a1[qword_1009CFF28] = v13;
  v15.receiver = a1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t type metadata accessor for FramedArtworkCollectionViewCell(uint64_t a1)
{
  result = qword_100981C00;
  if (!qword_100981C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10037FCD4(uint64_t a1, uint64_t a2)
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_10037FDC4(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10037FD6C(uint64_t a1)
{
  result = sub_10037FDC4(&qword_100981D88, type metadata accessor for FramedArtworkCollectionViewCell, &unk_1007C9748);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10037FDC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10037FE20()
{
  result = qword_100981D90;
  if (!qword_100981D90)
  {
    type metadata accessor for OfferAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981D90);
  }

  return result;
}

double sub_10037FE78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100005744(0, &qword_100981DA0, ASDApp_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_10037FF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionOutcome();
  v99 = *(v4 - 8);
  v100 = v4;
  __chkstk_darwin(v4);
  v98 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OpenableDestination();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v88 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v84 - v11;
  v111 = type metadata accessor for LegacyAppState();
  v107 = *(v111 - 8);
  __chkstk_darwin(v111);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v108 = &v84 - v14;
  __chkstk_darwin(v15);
  v104 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  v23 = type metadata accessor for AdamId();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v91 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v84 - v27;
  v87 = sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v109 = Promise.__allocating_init()();
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  type metadata accessor for BaseObjectGraph();
  v105 = a2;
  inject<A, B>(_:from:)();
  v29 = v113;
  ObjectType = swift_getObjectType();
  OfferAction.adamId.getter();
  v96 = ObjectType;
  v97 = v29;
  v31 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v33 = v32;
  v106 = *(v24 + 8);
  v101 = v23;
  v102 = v28;
  v103 = v24 + 8;
  v106(v28, v23);
  swift_getObjectType();
  OfferAction.includeBetaApps.getter();
  dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
  v34 = v107;
  v35 = *(v107 + 16);
  v110 = v22;
  v36 = v111;
  v35(v19, v22, v111);
  v37 = v19;
  v38 = v19;
  v39 = v36;
  v40 = (*(v34 + 88))(v38, v36);
  if (v40 == enum case for LegacyAppState.waiting(_:))
  {
    v41 = v108;
    v85 = v37;
    v42 = v37;
    v43 = v39;
    v35(v108, v42, v39);
    (*(v34 + 96))(v41, v39);
    sub_1003827A8(a1, 1, v31, v33);
    v44 = v109;
    Promise.pipe(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v45 = *(v34 + 8);
    v45(v110, v43);
    v46 = type metadata accessor for InstallationType();
    (*(*(v46 - 8) + 8))(v41, v46);
    v45(v85, v43);
    return v44;
  }

  v84 = v33;
  v48 = v106;
  v90 = a1;
  v86 = v31;
  if (v40 == enum case for LegacyAppState.purchased(_:))
  {
    v49 = v104;
    v50 = v111;
    v35(v104, v37, v111);
    v51 = v37;
    v52 = v50;
    v53 = v34;
    (*(v34 + 96))(v49, v52);
    v54 = type metadata accessor for PurchaseType();
    v55 = *(v54 - 8);
    if ((*(v55 + 88))(v49, v54) != enum case for PurchaseType.preorder(_:))
    {
      (*(v55 + 8))(v49, v54);
LABEL_6:
      v56 = v102;
      OfferAction.adamId.getter();
      dispatch thunk of AppStateController.refreshState(for:)();
      v48(v56, v101);
      v58 = v98;
      v57 = v99;
      v59 = v100;
      (*(v99 + 104))(v98, enum case for ActionOutcome.performed(_:), v100);
      v47 = v109;
      Promise.resolve(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v58, v59);
      v60 = *(v53 + 8);
      v61 = v111;
      v60(v110, v111);
      v60(v51, v61);
      return v47;
    }

LABEL_19:
    v70 = *(v53 + 8);
    v71 = v111;
    v70(v51, v111);
    sub_100381010(v90, v86, v84, v105);
    v47 = v109;
    Promise.pipe(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v70(v110, v71);
    return v47;
  }

  v53 = v34;
  v51 = v37;
  if (v40 == enum case for LegacyAppState.updatable(_:) || v40 == enum case for LegacyAppState.downloadable(_:))
  {
    goto LABEL_19;
  }

  if (v40 == enum case for LegacyAppState.paused(_:))
  {
    v62 = v108;
    v63 = v111;
    v35(v108, v37, v111);
    (*(v34 + 96))(v62, v63);
    sub_100380BE4(v90);
LABEL_13:
    v47 = v109;
    Promise.pipe(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v64 = *(v34 + 8);
    v64(v110, v63);
    v65 = type metadata accessor for LegacyAppState.AppInstallationDetails();
    (*(*(v65 - 8) + 8))(v62, v65);
    v64(v37, v63);
    return v47;
  }

  if (v40 == enum case for LegacyAppState.downloading(_:))
  {
    v62 = v108;
    v63 = v111;
    v35(v108, v37, v111);
    (*(v34 + 96))(v62, v63);
    sub_100384824(v90);
    goto LABEL_13;
  }

  if (v40 != enum case for LegacyAppState.openable(_:))
  {
    if (v40 != enum case for LegacyAppState.buyable(_:) && v40 != enum case for LegacyAppState.unknown(_:))
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v66 = v92;
  v67 = v111;
  v35(v92, v37, v111);
  (*(v34 + 96))(v66, v67);

  (*(v94 + 32))(v93, v66, v95);
  v68 = v90;
  if (OfferAction.requiresExceptionRequest.getter())
  {
    sub_100381010(v68, v86, v84, v105);
    v69 = v110;
  }

  else
  {
    v73 = v91;
    OfferAction.adamId.getter();
    v74 = AdamId.numberValue.getter();
    v75 = v101;
    v48(v73, v101);
    if (v74)
    {
      v108 = v74;
      type metadata accessor for AdAttributionManager();
      BaseObjectGraph.optional<A>(_:)();
      if (v112)
      {
        v76 = v102;
        OfferAction.adamId.getter();
        dispatch thunk of AdAttributionManager.processReengagement(forAdamID:)();

        v48(v76, v75);
      }

      v69 = v110;
      v67 = v111;
      OfferAction.adamId.getter();
      (*(v94 + 16))(v88, v93, v95);
      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for OpenAppAction();
      swift_allocObject();
      v82 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
      sub_1005D0478(v82, 1, v105);
    }

    else
    {
      v77 = v102;
      OfferAction.adamId.getter();
      v78 = AdamId.stringValue.getter();
      v80 = v79;
      v48(v77, v75);
      sub_100384158();
      swift_allocError();
      *v81 = v78;
      *(v81 + 8) = v80;
      *(v81 + 16) = 0;
      Promise.__allocating_init(error:)();
      v69 = v110;
      v67 = v111;
    }
  }

  v47 = v109;
  Promise.pipe(to:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v94 + 8))(v93, v95);
  v83 = *(v53 + 8);
  v83(v69, v67);
  v83(v37, v67);
  return v47;
}

uint64_t sub_100380BE4(uint64_t a1)
{
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  OfferAction.adamId.getter();
  v9 = AdamId.numberValue.getter();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v11 = Promise.__allocating_init()();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007B0B70;
    *(v12 + 32) = v9;
    sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    v13 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_100384C50;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10037FE78;
    aBlock[3] = &unk_1008BFF70;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for OSLogger();
    sub_1000056A8(v20, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    OfferAction.adamId.getter();
    v21 = AdamId.stringValue.getter();
    v23 = v22;
    v10(v5, v2);
    sub_100384158();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return Promise.__allocating_init(error:)();
  }
}

id sub_100381010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v7 = type metadata accessor for LegacyAppState();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdamId();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097D9F8, &unk_1007C4F90);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v43 = type metadata accessor for PurchaseIntent();
  v16 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdHeaderProvider();
  v41 = a4;
  BaseObjectGraph.optional<A>(_:)();
  if (v45[0])
  {

    sub_10002849C(&qword_10097DA00, &unk_1007C4FA0);
    Box.read<A>(with:)();
  }

  swift_unknownObjectRetain();

  PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)();
  v18 = v43;
  if ((*(v16 + 48))(v15, 1, v43) == 1)
  {
    sub_10002B894(v15, &qword_10097D9F8, &unk_1007C4F90);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_100384158();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 7;
    v20 = Promise.__allocating_init(error:)();

    return v20;
  }

  (*(v16 + 32))(v42, v15, v18);
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v37 = Promise.__allocating_init()();
  type metadata accessor for AdAttributionManager();
  BaseObjectGraph.optional<A>(_:)();
  if (v45[0])
  {
    OfferAction.adamId.getter();
    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    dispatch thunk of AdAttributionManager.performClickThroughAttribution(forAdamID:appState:)();

    (*(v39 + 8))(v9, v7);
    (*(v38 + 8))(v12, v10);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v22 = result;
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 applicationIsInstalled:v23];

    if (v24)
    {
      v39 = v16;
      v25 = OfferAction.bundleId.getter();
      if (v26 && (v27 = v25, v28 = v26, v29 = objc_allocWithZone(LSApplicationRecord), v30 = sub_1003841AC(v27, v28), v30))
      {

        sub_1003816E8(a1, a2, v44, v41);
        v20 = v37;
        Promise.pipe(to:)();

        (*(v39 + 8))(v42, v43);
      }

      else
      {
        type metadata accessor for Commerce();
        type metadata accessor for BaseObjectGraph();
        v31 = v41;
        inject<A, B>(_:from:)();
        v32 = v44;
        dispatch thunk of Commerce.purchase(with:stateMachine:)();
        sub_100384C68(v40, v45);
        v33 = swift_allocObject();
        v20 = v37;
        v33[2] = v37;
        v33[3] = a1;
        sub_100384CA0(v45, (v33 + 4));
        v33[6] = v31;
        v33[7] = a2;
        v33[8] = v32;
        v34 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
        swift_unknownObjectRetain();

        v35 = static OS_dispatch_queue.main.getter();
        v45[3] = v34;
        v45[4] = &protocol witness table for OS_dispatch_queue;
        v45[0] = v35;
        Promise.then(perform:orCatchError:on:)();

        (*(v39 + 8))(v42, v43);
        sub_100007000(v45);
      }
    }

    else
    {
      sub_100384278(a1, v41);
      v36 = v16;
      v20 = v37;
      Promise.pipe(to:)();

      (*(v36 + 8))(v42, v43);
    }

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003816E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v4 = type metadata accessor for LegacyAppState();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InstallationType();
  v52 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AdamId();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = OfferAction.bundleId.getter();
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v15;
  v18 = v16;
  v45 = v7;
  v19 = objc_allocWithZone(LSApplicationRecord);

  v20 = sub_1003841AC(v17, v18);
  if (!v20)
  {

LABEL_4:
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v21 = OfferAction.bundleId.getter();
    v23 = v22;
    sub_100384158();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 3;
    return Promise.__allocating_init(error:)();
  }

  v26 = objc_allocWithZone(ASDSystemAppRequest);
  v27 = String._bridgeToObjectiveC()();

  v28 = [v26 initWithBundleID:v27];

  OfferAction.adamId.getter();
  v29 = AdamId.numberValue.getter();
  v43 = *(v50 + 8);
  v44 = v50 + 8;
  v43(v14, v51);
  [v28 setStoreItemID:v29];

  v42 = v28;
  [v28 setUserInitiated:1];
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentState.getter();
  v30 = v46;
  v31 = (*(v46 + 88))(v6, v4);
  if (v31 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v30 + 8))(v6, v4);
    (*(v52 + 104))(v53, enum case for InstallationType.redownload(_:), v45);
  }

  else
  {
    v32 = *(v52 + 104);
    if (v31 == enum case for LegacyAppState.buyable(_:) || v31 == enum case for LegacyAppState.unknown(_:))
    {
      v32(v53, enum case for InstallationType.purchase(_:), v45);
    }

    else
    {
      v32(v53, enum case for InstallationType.unknown(_:), v45);
      (*(v30 + 8))(v6, v4);
    }
  }

  v33 = dispatch thunk of AppStateMachine.appStateController.getter();
  v34 = v49;
  if (!v33)
  {
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
  }

  swift_getObjectType();
  OfferAction.adamId.getter();
  dispatch thunk of AppStateController.setWaiting(for:installationType:)();
  v35 = v51;
  v43(v14, v51);
  OfferAction.adamId.getter();
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v36 = Promise.__allocating_init()();
  v37 = v50;
  (*(v50 + 16))(v11, v14, v35);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  *(v39 + 24) = v36;
  (*(v37 + 32))(v39 + v38, v11, v35);
  aBlock[4] = sub_100384DE0;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100235540;
  aBlock[3] = &unk_1008C0088;
  v40 = _Block_copy(aBlock);

  v41 = v42;
  [v42 startWithErrorHandler:v40];
  _Block_release(v40);
  swift_unknownObjectRelease();

  v43(v14, v35);
  (*(v52 + 8))(v53, v45);
  return v36;
}

void sub_100381D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v54 = a2;
  v8 = type metadata accessor for AdamId();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionOutcome();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PurchaseResult();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for PurchaseResult.askToBuy(_:))
  {
    (*(v16 + 96))(v19, v15);
    v21 = [objc_opt_self() defaultCenter];
    v22 = static AskToBuyRequestNotificationDetails.notificationName.getter();
    sub_10002849C(&unk_10097E340, &unk_1007C9830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v55 = static AskToBuyRequestNotificationDetails.adamIdKey.getter();
    v56 = v24;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v8;
    sub_1000056E0((inited + 72));
    AdamId.init(value:)();
    sub_100397CE8(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_1009827A0, &unk_1007B2F90);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v21 postNotificationName:v22 object:0 userInfo:isa];

    (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
    Promise.resolve(_:)();
    (*(v12 + 8))(v14, v11);
    return;
  }

  v49 = v10;
  v48 = v8;
  if (v20 != enum case for PurchaseResult.completed(_:))
  {
    if (v20 == enum case for PurchaseResult.canceled(_:))
    {
      v36 = v49;
      OfferAction.adamId.getter();
      v37 = AdamId.stringValue.getter();
      v39 = v38;
      (*(v53 + 8))(v36, v48);
      sub_100384158();
      swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v39;
      v41 = 1;
    }

    else
    {
      if (v20 != enum case for PurchaseResult.unknown(_:))
      {
        (*(v16 + 8))(v19, v15);
        return;
      }

      v42 = v49;
      OfferAction.adamId.getter();
      v43 = AdamId.stringValue.getter();
      v45 = v44;
      (*(v53 + 8))(v42, v48);
      sub_100384158();
      swift_allocError();
      *v40 = v43;
      *(v40 + 8) = v45;
      v41 = 2;
    }

    *(v40 + 16) = v41;
    Promise.reject(_:)();

    return;
  }

  (*(v16 + 96))(v19, v15);
  v26 = v19[2];
  (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
  Promise.resolve(_:)();
  (*(v12 + 8))(v14, v11);
  v27 = OfferAction.buyCompletedAction.getter();
  if (v27)
  {
    sub_1005D0214(v27, 1, v52);
  }

  v28 = v49;
  if (v26)
  {
    type metadata accessor for InAppMessagesManager();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v29 = *(v55 + 16);
    v30 = objc_allocWithZone(IAMCountableEvent);
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 initWithName:v31];

    [v29 receiveEvent:v32];
    sub_100292E88();
  }

  type metadata accessor for HostProcessIdentifier();
  v33 = static HostProcessIdentifier.shared.getter();
  v34 = dispatch thunk of HostProcessIdentifier.isProcessRunningInCompanionApp()();

  if (v34)
  {
    swift_getObjectType();
    v35 = dispatch thunk of AppStateMachine.appStateController.getter();
    if (v35)
    {
      v55 = v35;
    }

    else
    {
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
    }

    v46 = v48;
    swift_getObjectType();
    OfferAction.adamId.getter();
    dispatch thunk of AppStateController.setRemoteInstalled(for:)();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v28, v46);
  }
}

double sub_100382468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AdamId();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v11 = v17[2];
  v12 = v17[3];
  if (a1)
  {
    swift_errorRetain();
    Promise.reject(_:)();
    swift_getObjectType();
    AppStateController.clearWaiting(for:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17[1] = swift_getObjectType();
    (*(v8 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v12;
    (*(v8 + 32))(v16 + v14, v10, v7);
    *(v16 + v15) = a3;
    swift_unknownObjectRetain();

    dispatch thunk of AppStateController.refreshDataSources(for:completion:)();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100382680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ActionOutcome();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  AppStateController.clearWaiting(for:)();
  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  Promise.resolve(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003827A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v59 = a2;
  v65 = type metadata accessor for OSSignpostID();
  v61 = *(v65 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for AdamId();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v62 = a1;
  OfferAction.adamId.getter();
  v17 = AdamId.numberValue.getter();
  v18 = *(v11 + 8);
  v18(v16, v10);
  if (v17)
  {
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v19 = Promise.__allocating_init()();
    v57 = a3;
    v58 = v19;
    swift_getObjectType();
    v20 = dispatch thunk of AppStateMachine.hasCurrentBetaState.getter() & v59;
    type metadata accessor for SignpostAggregator();
    static SignpostAggregator.log.getter();
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v21 = static SignpostAggregator.log.getter();
    v59 = v20 & 1;
    if (v20)
    {
      v22 = "ActionDispatcher[ASDAppQuery.BetaApps]:cancelAction";
    }

    else
    {
      v22 = "ActionDispatcher[ASDAppQuery]:cancelAction";
    }

    if (v20)
    {
      v23 = 51;
    }

    else
    {
      v23 = 42;
    }

    v54 = v23;
    v55 = v22;
    if (v20)
    {
      v24 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v24 = &selRef_queryForStoreItemIDs_;
    }

    v56 = v9;
    os_signpost(_:dso:log:name:signpostID:)();

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1007B0B70;
    *(v25 + 32) = v17;
    sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    v52 = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v53 = [objc_opt_self() *v24];

    v27 = v61;
    v28 = v9;
    v29 = v65;
    (*(v61 + 16))(v63, v28, v65);
    sub_100384C68(v60, v67);
    v30 = (*(v27 + 80) + 33) & ~*(v27 + 80);
    v31 = v30 + v6;
    v32 = (v30 + v6) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v54;
    *(v36 + 16) = v55;
    *(v36 + 24) = v37;
    *(v36 + 32) = 2;
    (*(v27 + 32))(v36 + v30, v63, v29);
    *(v36 + v31) = v59;
    sub_100384CA0(v67, v36 + v32 + 8);
    *(v36 + v33) = v62;
    v38 = (v36 + v34);
    v39 = v58;
    v40 = v64;
    *v38 = v57;
    v38[1] = v40;
    *(v36 + v35) = v39;
    v41 = v52;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
    aBlock[4] = sub_100384CD8;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10037FE78;
    aBlock[3] = &unk_1008C0010;
    v42 = _Block_copy(aBlock);
    v43 = v41;

    swift_unknownObjectRetain();

    v44 = v53;
    [v53 executeQueryWithResultHandler:v42];
    _Block_release(v42);

    (*(v27 + 8))(v56, v65);
    return v39;
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for OSLogger();
    sub_1000056A8(v46, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    OfferAction.adamId.getter();
    v47 = AdamId.stringValue.getter();
    v49 = v48;
    v18(v13, v10);
    sub_100384158();
    swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    *(v50 + 16) = 0;
    return Promise.__allocating_init(error:)();
  }
}

void sub_100382E24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v43 = a8;
  v44 = a13;
  v41 = a10;
  v42 = a11;
  v48 = a9;
  v49 = a12;
  v15 = type metadata accessor for ActionOutcome();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AdamId();
  v46 = *(v18 - 8);
  v47 = v18;
  __chkstk_darwin(v18);
  v45 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  type metadata accessor for SignpostAggregator();
  v20 = static SignpostAggregator.log.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(a1 + 32);
LABEL_7:
        v22 = v21;
        v23 = [v21 progress];
        if (v23)
        {
          v24 = v23;
          [v23 cancel];
          v25 = v40;
          (*(v40 + 104))(v17, enum case for ActionOutcome.performed(_:), v15);
          Promise.resolve(_:)();

          (*(v25 + 8))(v17, v15);
          return;
        }

        if (qword_10096D120 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for OSLogger();
        sub_1000056A8(v26, qword_1009CE218);
        sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B1E00;
        LogMessage.init(stringLiteral:)();
        v51 = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
        v50[0] = v44;
        v27 = v44;
        static LogMessage.traceableSensitive(_:)();
        sub_10002B894(v50, &unk_1009711D0, &unk_1007B1A10);
        LogMessage.init(stringLiteral:)();
        Logger.error(_:)();

        v28 = v45;
        OfferAction.adamId.getter();
        v29 = AdamId.stringValue.getter();
        v31 = v30;
        (*(v46 + 8))(v28, v47);
        sub_100384158();
        swift_allocError();
        *v32 = v29;
        *(v32 + 8) = v31;
        *(v32 + 16) = 4;
        Promise.reject(_:)();

        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((a7 & 1) == 0)
  {
    if (qword_10096D120 == -1)
    {
LABEL_18:
      v33 = type metadata accessor for OSLogger();
      sub_1000056A8(v33, qword_1009CE218);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1E00;
      LogMessage.init(stringLiteral:)();
      v51 = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
      v50[0] = v44;
      v34 = v44;
      static LogMessage.traceableSensitive(_:)();
      sub_10002B894(v50, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      v35 = v45;
      OfferAction.adamId.getter();
      v36 = AdamId.stringValue.getter();
      v38 = v37;
      (*(v46 + 8))(v35, v47);
      sub_100384158();
      swift_allocError();
      *v39 = v36;
      *(v39 + 8) = v38;
      *(v39 + 16) = 4;
      Promise.reject(_:)();
LABEL_19:

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  sub_1003827A8(v48, 0, v41, v42);
  Promise.pipe(to:)();
}

uint64_t sub_100383508(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ActionOutcome();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AdamId();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for OSLogger();
    sub_1000056A8(v26, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1E00;
    LogMessage.init(stringLiteral:)();
    v37 = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    v36[0] = a3;
    v27 = a3;
    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(v36, &unk_1009711D0, &unk_1007B1A10);
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    OfferAction.adamId.getter();
    v28 = AdamId.stringValue.getter();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_100384158();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 5;
    Promise.reject(_:)();
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 pause];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      Promise.resolve(_:)();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_10096D120 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = type metadata accessor for OSLogger();
  v32 = sub_1000056A8(v20, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  LogMessage.init(stringLiteral:)();
  v37 = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  v36[0] = a3;
  v21 = a3;
  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(v36, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  OfferAction.adamId.getter();
  v22 = AdamId.stringValue.getter();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_100384158();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 5;
  Promise.reject(_:)();
}

uint64_t sub_100383B2C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ActionOutcome();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AdamId();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for OSLogger();
    sub_1000056A8(v26, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1E00;
    LogMessage.init(stringLiteral:)();
    v37 = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    v36[0] = a3;
    v27 = a3;
    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(v36, &unk_1009711D0, &unk_1007B1A10);
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    OfferAction.adamId.getter();
    v28 = AdamId.stringValue.getter();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_100384158();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 6;
    Promise.reject(_:)();
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 resume];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      Promise.resolve(_:)();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_10096D120 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = type metadata accessor for OSLogger();
  v32 = sub_1000056A8(v20, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  LogMessage.init(stringLiteral:)();
  v37 = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  v36[0] = a3;
  v21 = a3;
  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(v36, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  OfferAction.adamId.getter();
  v22 = AdamId.stringValue.getter();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_100384158();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 6;
  Promise.reject(_:)();
}

unint64_t sub_100384158()
{
  result = qword_100981D98;
  if (!qword_100981D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981D98);
  }

  return result;
}

id sub_1003841AC(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();

  v8 = 0;
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100384278(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = type metadata accessor for AlertActionStyle();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdamId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v36 = _swiftEmptyArrayStorage;
  static ActionMetrics.notInstrumented.getter();
  OfferAction.adamId.getter();
  (*(v5 + 56))(v10, 0, 1, v4);
  type metadata accessor for RestoreAppStoreAction();
  swift_allocObject();
  v12 = RestoreAppStoreAction.init(actionMetrics:gatedAppAdamId:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v29 = v12;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v34 = 0xD000000000000021;
  v35 = 0x800000010080F7A0;
  OfferAction.adamId.getter();
  v13 = AdamId.stringValue.getter();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for ExternalUrlAction();
  swift_allocObject();
  if (ExternalUrlAction.init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)())
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for CompoundAction();
  swift_allocObject();
  v17 = CompoundAction.init(title:actions:presentationStyle:actionMetrics:)();
  v18._countAndFlagsBits = 0xD000000000000023;
  v18._object = 0x800000010080F7D0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = localizedString(_:comment:)(v18, v19);
  v21._object = 0x800000010080F800;
  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedString(_:comment:)(v21, v22);
  v23._countAndFlagsBits = 0xD00000000000001CLL;
  v23._object = 0x800000010080F820;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  localizedString(_:comment:)(v23, v24);
  sub_10002849C(&qword_100981DA8, &qword_1007C9848);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B10D0;
  *(v25 + 32) = v20;
  *(v25 + 48) = v17;
  *(v25 + 56) = 0u;

  static ActionMetrics.notInstrumented.getter();
  (*(v30 + 104))(v32, enum case for AlertActionStyle.normal(_:), v31);
  type metadata accessor for AlertAction();
  swift_allocObject();
  v26 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
  v27 = sub_1005D0490(v26, 1, v33);

  return v27;
}

uint64_t sub_100384824(uint64_t a1)
{
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  OfferAction.adamId.getter();
  v9 = AdamId.numberValue.getter();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v11 = Promise.__allocating_init()();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007B0B70;
    *(v12 + 32) = v9;
    sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    v13 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_100384C5C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10037FE78;
    aBlock[3] = &unk_1008BFFC0;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for OSLogger();
    sub_1000056A8(v20, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    OfferAction.adamId.getter();
    v21 = AdamId.stringValue.getter();
    v23 = v22;
    v10(v5, v2);
    sub_100384158();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return Promise.__allocating_init(error:)();
  }
}

void sub_100384CD8(unint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100382E24(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8, *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_100384DE0(uint64_t a1)
{
  v3 = *(type metadata accessor for AdamId() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100382468(a1, v4, v5, v6);
}

uint64_t sub_100384E54()
{
  v1 = *(type metadata accessor for AdamId() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100382680(v2, v3, v4);
}

uint64_t sub_100384EE4(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_100384F00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100384F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100384F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100384FA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

char *sub_100384FE0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView;
  v14 = *&v12[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v12;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v12[v13]];

  return v18;
}

id sub_10038525C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v10, v4);

  *(v2 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = 0;

  v6 = sub_100617504(v5);
  v7 = &v1[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  return [v1 setNeedsLayout];
}

id sub_10038536C()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotCollectionViewCell(0);
  v37.receiver = v1;
  v37.super_class = v6;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    return [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    AspectRatio.init(_:_:)();
    v18 = [v1 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    AspectRatio.height(fromWidth:)();
    v25 = *&v1[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView];
    [v25 setFrame:{v20, v22, v24, v26}];
    v27 = [v1 contentView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v38.origin.x = v29;
    v38.origin.y = v31;
    v38.size.width = v33;
    v38.size.height = v35;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = v29;
    v39.origin.y = v31;
    v39.size.width = v33;
    v39.size.height = v35;
    [v25 setCenter:{MidX, CGRectGetMidY(v39)}];
    return (*(v3 + 8))(v5, v2);
  }
}

id sub_100385628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotCollectionViewCell(uint64_t a1)
{
  result = qword_100981DD8;
  if (!qword_100981DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100385700(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

CGFloat sub_1003857C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  type metadata accessor for BorderedScreenshotView(0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = CGRectGetWidth(v6) - (v2 + v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v7);
  return v4;
}

void sub_100385868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_1003858D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_100385940(uint64_t a1)
{
  result = sub_100385968();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100385968()
{
  result = qword_100981DE8;
  if (!qword_100981DE8)
  {
    type metadata accessor for ScreenshotCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981DE8);
  }

  return result;
}

void sub_1003859C0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_100385AA4(void *a1)
{
  v1 = a1;
  sub_1003859C0();
}

double sub_100385AEC(void *a1)
{
  v1 = a1;
  sub_100041CD0();

  return 0.0;
}

void sub_100385B40()
{
  v1 = v0;
  v2 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v174 = *(v2 - 8);
  v175 = v2;
  __chkstk_darwin(v2);
  v173 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v170 = *(v4 - 8);
  v171 = v4;
  __chkstk_darwin(v4);
  v172 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v167 = *(v6 - 8);
  v168 = v6;
  __chkstk_darwin(v6);
  v169 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TitleHeaderLayout();
  v176 = *(v8 - 8);
  __chkstk_darwin(v8);
  v164 = (&v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v166 = *(v10 - 8);
  __chkstk_darwin(v10);
  v165 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderLayout.Child();
  v191 = *(v12 - 8);
  v192 = v12;
  __chkstk_darwin(v12);
  v153 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v190 = &v148 - v15;
  __chkstk_darwin(v16);
  v189 = &v148 - v17;
  __chkstk_darwin(v18);
  v20 = &v148 - v19;
  v21 = type metadata accessor for CharacterSet();
  v154 = *(v21 - 8);
  v155 = v21;
  __chkstk_darwin(v21);
  v151 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v182);
  v183 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&unk_100984360, &unk_1007D54C0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v150 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v186 = (&v148 - v28);
  __chkstk_darwin(v29);
  v185 = &v148 - v30;
  __chkstk_darwin(v31);
  v152 = &v148 - v32;
  __chkstk_darwin(v33);
  v188 = (&v148 - v34);
  __chkstk_darwin(v35);
  v187 = (&v148 - v36);
  __chkstk_darwin(v37);
  v180 = &v148 - v38;
  *&v40 = __chkstk_darwin(v39).n128_u64[0];
  v42 = &v148 - v41;
  v43 = [v0 collectionView];
  if (v43)
  {
    v44 = v43;
    v160 = v10;
    v161 = v25;
    v158 = v24;
    v159 = v8;
    v179 = v20;
    [v43 frame];

    v184 = dispatch thunk of BaseGenericPagePresenter.pageTitle.getter();
    v46 = v45;
    v47 = v1;
    if (qword_10096D3B0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for TitleHeaderView.Style(0);
    v49 = sub_1000056A8(v48, qword_1009CE860);
    sub_100041CD0();
    v50 = [v47 traitCollection];
    v51 = v191 + 56;
    v52 = *(v191 + 56);
    v177 = v42;
    v53 = v42;
    v54 = v192;
    v52(v53, 1, 1, v192);
    v156 = v52;
    v157 = v51;
    v52(v180, 1, 1, v54);
    v222 = 0;
    memset(v221, 0, sizeof(v221));
    v220 = 0;
    memset(v219, 0, sizeof(v219));
    v178 = v48;
    v55 = *(v48 + 20);
    v181 = v49;
    v149 = v55;
    sub_1002C0C9C(v49 + v55, v183, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1000367E8();
    v162 = v50;
    v56 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    v57 = v46;
    v163 = v47;
    if (!v46)
    {
      v62 = v192;
      goto LABEL_11;
    }

    v58 = v184;
    *&v216 = v184;
    *(&v216 + 1) = v46;

    v59 = v151;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v61 = v60;
    (v154)[1](v59, v155);

    if (v61)
    {
      v62 = v192;
      goto LABEL_11;
    }

    [v56 lineHeight];
    v64 = ceil(v63 * 1.3);
    v65 = &v200;
    v62 = v192;
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v64 > -9.22337204e18)
    {
      if (v64 < 9.22337204e18)
      {
LABEL_11:
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        v66 = type metadata accessor for Feature();
        v214 = v66;
        v215 = sub_100387C98(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v67 = sub_1000056E0(v213);
        (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);

        v68 = v56;
        isFeatureEnabled(_:)();
        sub_100007000(v213);
        v69 = v165;
        v154 = v68;
        v155 = v57;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        (*(v166 + 8))(v69, v160);
        sub_100031660(&v216, v212, &qword_100975610, &qword_1007B5690);
        v70 = v214;
        v71 = v215;
        v72 = sub_10002A400(v213, v214);
        v211[3] = v70;
        v211[4] = *(v71 + 8);
        v73 = sub_1000056E0(v211);
        (*(*(v70 - 8) + 16))(v73, v72, v70);
        v75 = v182;
        v74 = v183;
        v76 = *(v183 + v182[8]);
        v209 = &type metadata for Float;
        v210 = &protocol witness table for Float;
        v208[0] = v76;
        v77 = v182[9];
        v78 = type metadata accessor for StaticDimension();
        v207[3] = v78;
        v207[4] = &protocol witness table for StaticDimension;
        v79 = sub_1000056E0(v207);
        v80 = *(*(v78 - 8) + 16);
        v80(v79, v74 + v77, v78);
        v81 = v75[10];
        v206[3] = v78;
        v206[4] = &protocol witness table for StaticDimension;
        v82 = sub_1000056E0(v206);
        v80(v82, v74 + v81, v78);
        sub_100031660(v221, &v200, &unk_10097E890, qword_1007B4270);
        v83 = *(&v201 + 1);
        if (*(&v201 + 1))
        {
          v84 = v202;
          v85 = sub_10002A400(&v200, *(&v201 + 1));
          *(&v204 + 1) = v83;
          v205 = *(v84 + 8);
          v86 = sub_1000056E0(&v203);
          (*(*(v83 - 8) + 16))(v86, v85, v83);
          sub_100007000(&v200);
        }

        else
        {
          sub_10002B894(&v200, &unk_10097E890, qword_1007B4270);
          v203 = 0u;
          v204 = 0u;
          v205 = 0;
        }

        v87 = v179;
        v88 = v186;
        sub_100031660(v219, v197, &unk_10097E890, qword_1007B4270);
        v89 = v198;
        if (v198)
        {
          v90 = v199;
          v91 = sub_10002A400(v197, v198);
          *(&v201 + 1) = v89;
          v202 = *(v90 + 8);
          v92 = sub_1000056E0(&v200);
          (*(*(v89 - 8) + 16))(v92, v91, v89);
          sub_100007000(v197);
        }

        else
        {
          sub_10002B894(v197, &unk_10097E890, qword_1007B4270);
          v200 = 0u;
          v201 = 0u;
          v202 = 0;
        }

        v93 = v182;
        v94 = v183;
        sub_10002C0AC(v183 + v182[12], v197);
        sub_10002C0AC(v94 + v93[13], &v196);
        v194 = &type metadata for Double;
        v195 = &protocol witness table for Double;
        v193 = 0x4020000000000000;
        TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
        sub_100007000(v213);
        sub_10002B894(&v216, &qword_100975610, &qword_1007B5690);
        v95 = *(v181 + v178[9]);
        sub_10002849C(&qword_1009812E8, &qword_1007C9B00);
        v96 = *(v161 + 72);
        v97 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        if (v95)
        {
          if (v95 == 1)
          {
            v166 = swift_allocObject();
            v98 = (v166 + v97);
            sub_100031660(v177, v166 + v97, &unk_100984360, &unk_1007D54C0);
            v99 = v191 + 16;
            (*(v191 + 16))(&v98[v96], v87, v62);
            v156(&v98[v96], 0, 1, v62);
            sub_100031660(v180, &v98[2 * v96], &unk_100984360, &unk_1007D54C0);
            v100 = (v99 + 32);
            v189 = (v99 + 16);
            v101 = _swiftEmptyArrayStorage;
            v102 = 3;
            v184 = v96;
            v185 = v98;
            v103 = v98;
            v104 = &unk_100984360;
            v187 = v100;
            do
            {
              v105 = v188;
              sub_100031660(v103, v188, v104, &unk_1007D54C0);
              sub_10035EF58(v105, v88);
              v106 = v192;
              if ((*v100)(v88, 1, v192) == 1)
              {
                sub_10002B894(v88, v104, &unk_1007D54C0);
              }

              else
              {
                v107 = v104;
                v108 = *v189;
                (*v189)(v190, v88, v106);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v101 = sub_100033A68(0, *(v101 + 2) + 1, 1, v101);
                }

                v110 = *(v101 + 2);
                v109 = *(v101 + 3);
                if (v110 >= v109 >> 1)
                {
                  v101 = sub_100033A68((v109 > 1), v110 + 1, 1, v101);
                }

                v100 = v187;
                *(v101 + 2) = v110 + 1;
                v108(&v101[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v110], v190, v192);
                v88 = v186;
                v104 = v107;
                v96 = v184;
              }

              v103 += v96;
              --v102;
            }

            while (v102);
            swift_setDeallocating();
            swift_arrayDestroy();
            v65 = v159;
            v52 = v164;
            v62 = v192;
          }

          else
          {
            v123 = swift_allocObject();
            v124 = v123 + v97;
            sub_100031660(v177, v123 + v97, &unk_100984360, &unk_1007D54C0);
            v125 = v191;
            (*(v191 + 16))(v123 + v97 + v96, v87, v62);
            v156((v123 + v97 + v96), 0, 1, v62);
            v126 = v152;
            sub_100031660(v123 + v97, v152, &unk_100984360, &unk_1007D54C0);
            v127 = v150;
            sub_10035EF58(v126, v150);
            v128 = *(v125 + 48);
            v129 = (v125 + 32);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10002B894(v127, &unk_100984360, &unk_1007D54C0);
              v130 = _swiftEmptyArrayStorage;
            }

            else
            {
              v166 = v123;
              v131 = *v129;
              (*v129)(v153, v127, v62);
              v130 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v130 = sub_100033A68(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v133 = *(v130 + 2);
              v132 = *(v130 + 3);
              if (v133 >= v132 >> 1)
              {
                v130 = sub_100033A68((v132 > 1), v133 + 1, 1, v130);
              }

              *(v130 + 2) = v133 + 1;
              v134 = &v130[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v133];
              v62 = v192;
              v131(v134, v153, v192);
              v127 = v150;
            }

            v135 = v124 + v96;
            v136 = v152;
            sub_100031660(v135, v152, &unk_100984360, &unk_1007D54C0);
            sub_10035EF58(v136, v127);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10002B894(v127, &unk_100984360, &unk_1007D54C0);
              v65 = v159;
            }

            else
            {
              v137 = *v129;
              (*v129)(v153, v127, v62);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v159;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v130 = sub_100033A68(0, *(v130 + 2) + 1, 1, v130);
              }

              v140 = *(v130 + 2);
              v139 = *(v130 + 3);
              if (v140 >= v139 >> 1)
              {
                v130 = sub_100033A68((v139 > 1), v140 + 1, 1, v130);
              }

              *(v130 + 2) = v140 + 1;
              v137(&v130[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v140], v153, v62);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
            v52 = v164;
          }
        }

        else
        {
          v166 = swift_allocObject();
          v111 = v166 + v97;
          sub_100031660(v177, v166 + v97, &unk_100984360, &unk_1007D54C0);
          sub_100031660(v180, v111 + v96, &unk_100984360, &unk_1007D54C0);
          v112 = v191 + 16;
          (*(v191 + 16))(v111 + 2 * v96, v87, v62);
          v113 = v62;
          v156((v111 + 2 * v96), 0, 1, v62);
          v186 = (v112 + 32);
          v188 = (v112 + 16);
          v190 = _swiftEmptyArrayStorage;
          v114 = 3;
          v165 = v111;
          v115 = v185;
          do
          {
            v116 = v96;
            v117 = v187;
            sub_100031660(v111, v187, &unk_100984360, &unk_1007D54C0);
            sub_10035EF58(v117, v115);
            if ((*v186)(v115, 1, v113) == 1)
            {
              sub_10002B894(v115, &unk_100984360, &unk_1007D54C0);
            }

            else
            {
              v118 = *v188;
              (*v188)(v189, v115, v113);
              v119 = v190;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v119 = sub_100033A68(0, *(v119 + 2) + 1, 1, v119);
              }

              v121 = *(v119 + 2);
              v120 = *(v119 + 3);
              if (v121 >= v120 >> 1)
              {
                v119 = sub_100033A68((v120 > 1), v121 + 1, 1, v119);
              }

              *(v119 + 2) = v121 + 1;
              v122 = (*(v191 + 80) + 32) & ~*(v191 + 80);
              v190 = v119;
              v113 = v192;
              v118(&v119[v122 + *(v191 + 72) * v121], v189);
              v115 = v185;
            }

            v96 = v116;
            v111 += v116;
            --v114;
          }

          while (v114);
          swift_setDeallocating();
          swift_arrayDestroy();
          v65 = v159;
          v52 = v164;
          v62 = v113;
        }

        swift_deallocClassInstance();
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        sub_100031660(&v216, v213, &qword_100975610, &qword_1007B5690);
        v141 = v178;
        v142 = v181;
        v143 = *(v181 + v178[14]);
        v212[3] = &type metadata for CGFloat;
        v212[4] = &protocol witness table for CGFloat;
        v212[0] = v143;
        (*(v167 + 16))(v169, v181 + v178[10], v168);
        (*(v170 + 16))(v172, v142 + v141[11], v171);
        (*(v174 + 104))(v173, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v175);
        TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
        CGSize.subtracting(insets:)();
        sub_100387C98(&unk_1009812F0, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v213[0] = v144;
        v213[1] = v145;
        CGSize.add(outsets:)();
        if (JUScreenClassGetMain() != 1)
        {

          (*(v176 + 8))(v52, v65);
          (*(v191 + 8))(v179, v62);
          sub_1001EFF9C(v183);
          sub_10002B894(v219, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v221, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v180, &unk_100984360, &unk_1007D54C0);
          sub_10002B894(v177, &unk_100984360, &unk_1007D54C0);
          goto LABEL_62;
        }

        v57 = v176;
        v58 = v177;
        v59 = v179;
        if (qword_10096E760 != -1)
        {
          swift_once();
        }

        v146 = sub_1000056A8(v182, qword_1009D2688);
        v61 = v149;
        if (sub_1003FA6EC((v181 + v149), v146))
        {

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_1001EFF9C(v183);
          sub_10002B894(v219, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v221, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v180, &unk_100984360, &unk_1007D54C0);
          sub_10002B894(v58, &unk_100984360, &unk_1007D54C0);
LABEL_62:
          sub_10002B894(&v216, &qword_100975610, &qword_1007B5690);

          return;
        }

        if (qword_10096E768 == -1)
        {
LABEL_61:
          v147 = sub_1000056A8(v182, qword_1009D26A0);
          sub_1003FA6EC((v181 + v61), v147);

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_1001EFF9C(v183);
          sub_10002B894(v219, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v221, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v180, &unk_100984360, &unk_1007D54C0);
          sub_10002B894(v58, &unk_100984360, &unk_1007D54C0);
          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_61;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  __break(1u);
}

id sub_100387448(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000001007FB9D0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v10, v11.super.isa);
  }

  return v12;
}

id sub_10038759C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  v16 = sub_100387448(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_1003876DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 != 0xD000000000000039 || 0x80000001007FB9D0 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v25 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v26.receiver = v5;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v25, isa);

    goto LABEL_14;
  }

  type metadata accessor for TitleHeaderView(0);
  v14 = swift_dynamicCastClassUnconditional();
  sub_100041CD0();
  if (v15 > 40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 40.0;
  }

  [v14 setLayoutMargins:{0.0, v16, 0.0, v16}];
  v17 = (v14 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);
  *v17 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v17[1] = 0;

  v18 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
  [*(v14 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) setNumberOfLines:0];
  [*(v14 + v18) setAllowsDefaultTighteningForTruncation:1];
  [*(v14 + v18) setTextAlignment:1];
  sub_100041CD0();
  if (v19 <= 40.0)
  {
    v19 = 40.0;
  }

  v20 = (v14 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset);
  *v20 = 0.0;
  v20[1] = v19;
  v20[2] = 0.0;
  v20[3] = v19;
  [v14 setNeedsLayout];
  if (qword_10096D3B0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v11, qword_1009CE860);
  sub_1002C0C9C(v21, v13, type metadata accessor for TitleHeaderView.Style);
  (*((swift_isaMask & *v14) + 0x1C8))(v13);
  dispatch thunk of BaseGenericPagePresenter.pageTitle.getter();
  if (v22)
  {
    v23 = *(v14 + v18);
    isa = String._bridgeToObjectiveC()();

    [v23 setText:isa];
LABEL_14:
  }
}

uint64_t sub_100387A1C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_1003876DC(v16, v17, v13, v15);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for PrivacyDefinitionsViewController(uint64_t a1)
{
  result = qword_100981E18;
  if (!qword_100981E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100387C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100387CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v143 = a3;
  v11 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v11 - 8);
  v130 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v129 = &v120 - v14;
  v15 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v15 - 8);
  v128 = &v120 - v16;
  v17 = type metadata accessor for VideoControls();
  __chkstk_darwin(v17 - 8);
  v127 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v120 - v20;
  v21 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v21 - 8);
  v125 = &v120 - v22;
  v123 = type metadata accessor for VideoFillMode();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v124 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for VideoConfiguration();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v142 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ComponentLayoutOptions();
  v140 = *(v25 - 8);
  v141 = v25;
  __chkstk_darwin(v25);
  v139 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v135 = *(v27 - 8);
  v136 = v27;
  __chkstk_darwin(v27);
  v134 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for BreakoutDetailsDisplayProperties();
  v137 = *(v29 - 8);
  v138 = v29;
  __chkstk_darwin(v29);
  v31 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&unk_100975ED0, qword_1007B46C0);
  __chkstk_darwin(v32 - 8);
  v34 = &v120 - v33;
  v35 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v35);
  v37 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = (&v120 - v39);
  v41 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v145 = *(v41 - 8);
  v146 = v41;
  *&v42 = __chkstk_darwin(v41).n128_u64[0];
  v144 = &v120 - v43;
  v44 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_pageTraits] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  v147 = a1;
  LargeHeroBreakout.details.getter();
  v45 = BreakoutDetails.badgeColorOverride.getter();

  v133 = a4;
  if (v45)
  {
    if (qword_10096CFF0 != -1)
    {
      swift_once();
    }

    v46 = sub_1000056A8(v35, qword_1009CDE58);
    sub_1000C2608(v46, v40);
    v47 = *v40;
    v48 = v45;

    *v40 = v45;
    sub_1000C2608(v40, v37);
    sub_10002849C(&qword_100973F50, &qword_1007B4260);
    v49 = v144;
    Conditional<>.init(value:)();

    sub_1000C266C(v40);
  }

  else
  {
    if (qword_10096CFF0 != -1)
    {
      swift_once();
    }

    v50 = sub_1000056A8(v35, qword_1009CDE58);
    sub_1000C2608(v50, v40);
    sub_10002849C(&qword_100973F50, &qword_1007B4260);
    v49 = v144;
    Conditional<>.init(value:)();
  }

  v51 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView];
  v52 = LargeHeroBreakout.details.getter();
  v53 = v145;
  v54 = v146;
  (*(v145 + 16))(v34, v49, v146);
  (*(v53 + 56))(v34, 0, 1, v54);
  v121 = v51;
  sub_1003A9938(v52, v34, v143);

  sub_10002B894(v34, &unk_100975ED0, qword_1007B46C0);
  LargeHeroBreakout.detailsDisplayProperties.getter();
  v55 = v134;
  BreakoutDetailsDisplayProperties.position.getter();
  v56 = v138;
  v57 = *(v137 + 8);
  v57(v31, v138);
  v58 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  v59 = v135;
  v60 = &v7[v58];
  v61 = v136;
  (*(v135 + 24))(v60, v55, v136);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v59 + 8))(v55, v61);
  v62 = v139;
  static ComponentLayoutOptions.isFirstSection.getter();
  sub_100389E54(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v63 = v141;
  v64 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v140 + 8))(v62, v63);
  LargeHeroBreakout.detailsDisplayProperties.getter();
  v65 = BreakoutDetailsDisplayProperties.wantsBlur.getter();
  v57(v31, v56);
  v66 = v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = ((v64 | v65) & 1) == 0;
  v67 = &off_100982000;
  if (((v64 | v65) & 1) == v66)
  {
    if ((v64 | v65))
    {
      v68 = [v7 contentView];
      [v68 insertSubview:*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] aboveSubview:*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
    }
  }

  v69 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
  v70 = v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect];
  v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect] = v64 & 1;
  if ((v64 & 1) != v70)
  {
    v71 = 0.0;
    if (v64)
    {
      *&v71 = 1.0;
    }

    [*&v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient] setOpacity:v71];
    [v69 setNeedsDisplay];
  }

  v72 = v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect];
  v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect] = v65 & 1;
  if ((v65 & 1) != v72)
  {
    v73 = 0.0;
    if (v65)
    {
      v73 = 1.0;
    }

    [*&v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView] setAlpha:v73];
    [v69 setNeedsDisplay];
  }

  v74 = LargeHeroBreakout.heading.getter();
  v76 = v75;
  if (v75)
  {
    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v74 & 0xFFFFFFFFFFFFLL;
    }

    v78 = v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v79 = v77 == 0;
    v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = v79;
    if (v79 == v78)
    {
      goto LABEL_26;
    }

    if (v77)
    {
      v80 = [v7 contentView];
      [v80 insertSubview:*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel] belowSubview:v121];

LABEL_26:
      v81 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
LABEL_30:
      v83 = String._bridgeToObjectiveC()();

      goto LABEL_31;
    }
  }

  else
  {
    v82 = v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
    if (v82 == 1)
    {
      v83 = 0;
      v81 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
      goto LABEL_31;
    }
  }

  [*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel] removeFromSuperview];
  v81 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (v76)
  {
    goto LABEL_30;
  }

  v83 = 0;
LABEL_31:
  [v81 setText:v83];

  sub_1003AEAA0();
  if (LargeHeroBreakout.video.getter())
  {
    (*(v122 + 104))(v124, enum case for VideoFillMode.scaleAspectFill(_:), v123);
    Video.preview.getter();
    Artwork.size.getter();
    v84 = v125;
    AspectRatio.init(_:_:)();

    v85 = type metadata accessor for AspectRatio();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v86 = v148[0];
    Video.playbackId.getter();
    v87 = v128;
    Video.videoUrl.getter();
    v88 = type metadata accessor for URL();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    v141 = v7;
    v89 = v129;
    Video.templateMediaEvent.getter();
    v90 = v130;
    Video.templateClickEvent.getter();
    v91 = type metadata accessor for VideoView(0);
    sub_100389E54(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v140 = v91;
    v143 = v86;
    v92 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v90, &unk_100973A50, &unk_1007B4FD0);
    v7 = v141;
    sub_10002B894(v89, &unk_100973A50, &unk_1007B4FD0);
    v93 = v87;
    v67 = &off_100982000;
    sub_10002B894(v93, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v148, &qword_10096FB90, &qword_1007B2A50);
    v94 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v95 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
    v96 = *(v94 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    if (v92)
    {
      v97 = v92;
      v98 = [v97 superview];
      if (v98)
      {
        v99 = v98;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v100 = v96;
        v101 = static NSObject.== infix(_:_:)();

        v67 = &off_100982000;
        if (v101)
        {
          [v97 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v106 = *&v96[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v96[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v92;
    v107 = v92;
    sub_10047C6C8(v106);

    v108 = *(*(v94 + v95) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v108 && (v109 = swift_dynamicCastClass()) != 0)
    {
      v110 = v109;
      v111 = v108;
      [v110 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v131 + 8))(v142, v132);
  }

  else if (LargeHeroBreakout.artwork.getter())
  {

    v102 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView];
    v103 = *(*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v104 = *(v103 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    *(v103 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = v102;
    v105 = v102;
    sub_10047C6C8(v104);

    sub_10047B37C();
  }

  v112 = LargeHeroBreakout.backgroundColor.getter();
  v113 = v144;
  if (!v112)
  {
    v112 = [objc_opt_self() clearColor];
  }

  v114 = v112;
  v115 = *(v67[475] + v7);
  v116 = type metadata accessor for MediaView();
  v149.receiver = v115;
  v149.super_class = v116;
  objc_msgSendSuper2(&v149, "setBackgroundColor:", v114);
  [*(*&v115[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:v114];
  v117 = *&v115[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v117)
  {
    v118 = v117;
    [v118 setBackgroundColor:v114];
  }

  [v7 setNeedsLayout];
  return (*(v145 + 8))(v113, v146);
}

uint64_t sub_100388DFC()
{
  result = dispatch thunk of LargeHeroBreakout.clickAction.getter();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_100388E38(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v7, v13);
  sub_1003AE3AC(v10, a6, v15);
  (*(v8 + 8))(v10, v7);
  type metadata accessor for LargeHeroBreakoutLayout();
  sub_100389E54(&unk_100982470, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  (*(v12 + 8))(v15, v11);
  v16 = [objc_opt_self() fractionalWidthDimension:1.0];
  v17 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v17;
}

double sub_100389118(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for BreakoutDetailsDisplayProperties();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  __chkstk_darwin(v12 - 8);
  v38 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for LargeHeroBreakoutLayout();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LabelPlaceholderCompatibility();
  v15 = *(v34 - 8);
  *&v16 = __chkstk_darwin(v34).n128_u64[0];
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a6;
  v19 = [a6 traitCollection];
  v20 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v21 = LayoutViewPlaceholder.init(representing:)();
  v37 = a1;
  LargeHeroBreakout.heading.getter();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E2E0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  sub_1000056A8(v22, qword_1009D1820);
  static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v23 = type metadata accessor for Feature();
  v33 = v19;
  v24 = v23;
  v52[3] = v23;
  v52[4] = sub_100389E54(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_1000056E0(v52);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  isFeatureEnabled(_:)();
  sub_100007000(v52);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v15 + 8))(v18, v34);
  LargeHeroBreakout.detailsDisplayProperties.getter();
  BreakoutDetailsDisplayProperties.position.getter();
  (*(v35 + 8))(v11, v36);
  sub_1003AE3AC(v9, v44, v38);
  (*(v39 + 8))(v9, v41);
  swift_allocObject();
  v26 = LayoutViewPlaceholder.init(representing:)();
  v50 = v20;
  v51 = &protocol witness table for LayoutViewPlaceholder;
  v49 = v26;
  sub_10002C0AC(v52, v48);
  v46 = v20;
  v47 = &protocol witness table for LayoutViewPlaceholder;
  v45 = v21;

  v27 = v40;
  LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)();
  sub_100389E54(&qword_100982468, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  v28 = v43;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v30 = v29;

  (*(v42 + 8))(v27, v28);
  sub_100007000(v52);
  return v30;
}

void sub_10038972C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v7 - 8);
  v9 = v31 - v8;
  v10 = type metadata accessor for VideoConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspectRatio();
  v34 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v36);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for LargeHeroBreakout();
  if (swift_dynamicCast())
  {
    v33 = a2;
    v17 = v35;
    v18 = LargeHeroBreakout.video.getter();
    if (v18)
    {
      v32 = v3;
      v19 = *(*(*&v3[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v19 && (v31[4] = v18, v20 = type metadata accessor for VideoView(0), (v21 = swift_dynamicCastClass()) != 0))
      {
        v31[2] = v20;
        v31[3] = v17;
        v22 = qword_1009D2200;
        v23 = v21;
        swift_beginAccess();
        v24 = *(v11 + 16);
        v31[1] = v23;
        v24(v13, v23 + v22, v10);
        v25 = v19;
        VideoConfiguration.aspectRatio.getter();
        (*(v11 + 8))(v13, v10);
        v26 = v34;
        if ((*(v34 + 48))(v9, 1, v14) != 1)
        {
          (*(v26 + 32))(v16, v9, v14);
          [v32 bounds];
          AspectRatio.maxSize(filling:)();
          Video.preview.getter();
          Artwork.config(_:mode:prefersLayeredImage:)();

          sub_100389E54(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          (*(v26 + 8))(v16, v14);
          return;
        }

        sub_10002B894(v9, &unk_1009732A0, &unk_1007B4FE0);
      }

      else
      {
      }

      v3 = v32;
    }

    if (LargeHeroBreakout.artwork.getter())
    {
      [v3 bounds];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v27 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView;
      v28 = *&v3[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v28 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v29 = *&v3[v27];
      type metadata accessor for ArtworkView();
      sub_100389E54(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v30 = v29;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }
}

void sub_100389CDC(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView);
  type metadata accessor for ArtworkView();
  sub_100389E54(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v4 = v3;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v5 = *(*(*(v2 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    if (swift_dynamicCastClass())
    {
      sub_100389E54(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
      v6 = v5;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }
  }
}

uint64_t sub_100389E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100389E9C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = 0;

  v2 = *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView];
  ArtworkView.image.setter();

  v3 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer];
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  v6 = *(v5 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v5 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
  sub_10047C6C8(v6);

  sub_10047B37C();
  v7 = *(v3 + v4);
  v8 = *(v7 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v7 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
  sub_10047C6C8(v8);

  *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = 0;

  v9 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
  if (v9)
  {
    v10 = v9;
    ArtworkView.image.setter();
  }

  *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;

  v11 = &v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle];
  *v11 = 0;
  *(v11 + 1) = 0;

  v12 = sub_10038A1E8();
  v13 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView];
  [v13 setHidden:{1, v12}];
  [v13 setText:0];
  v14 = &v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText];
  *v14 = 0;
  *(v14 + 1) = 0;

  return sub_10038A36C();
}

id sub_10038A0E8()
{
  v1 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v0 contentView];
    [v5 insertSubview:v4 aboveSubview:*&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer]];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_10038A1E8()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView];
  v2 = [v1 text];
  if (!v2)
  {
    v9 = &v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle + 8];
    v8 = *v9;
LABEL_11:
    if (!v8)
    {
      return result;
    }

LABEL_12:
    if (*v9)
    {
LABEL_13:

      v12 = String._bridgeToObjectiveC()();

LABEL_17:
      [v1 setText:v12];

      [v0 setNeedsLayout];
      return result;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v4 = v2;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v9 = &v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle + 8];
  v8 = *v9;
  if (!v7)
  {
    goto LABEL_11;
  }

  if (!v8)
  {

    if (*v9)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v5 != *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle] || v8 != v7)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return result;
    }

    goto LABEL_12;
  }

  return result;
}

id sub_10038A36C()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v31 - v8;
  if (*&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText + 8])
  {
    v10 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel;
    v11 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel];
    v12 = &selRef__setDefaultAttributes_;
    if (v11)
    {
    }

    else
    {
      v14 = qword_10096DDE8;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for FontUseCase();
      v16 = sub_1000056A8(v15, qword_1009D0938);
      v17 = *(v15 - 8);
      (*(v17 + 16))(v9, v16, v15);
      (*(v17 + 56))(v9, 0, 1, v15);
      (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
      v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
      v19 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v20 = String._bridgeToObjectiveC()();
      [v19 setText:v20];

      v21 = qword_10096D6F8;
      v22 = v19;
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setTextColor:qword_1009CF528];

      [v22 setTextAlignment:1];
      [v22 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v23 = v22;
      sub_10038A814(v22);
      v12 = &selRef__setDefaultAttributes_;
      v24 = [v1 contentView];
      [v24 addSubview:v23];

      v11 = *&v1[v10];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v25 = [v11 layer];
    v26 = [v1 v12[388]];
    [v26 overrideUserInterfaceStyle];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();

    [v25 setCompositingFilter:v27];

    v28 = *&v1[v10];
    if (v28)
    {
      v29 = v28;
      v30 = String._bridgeToObjectiveC()();

      [v29 setText:v30];

      result = *&v1[v10];
      if (!result)
      {
        return result;
      }

      return [result setHidden:0];
    }

LABEL_17:

    result = *&v1[v10];
    if (!result)
    {
      return result;
    }

    return [result setHidden:0];
  }

  result = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel];
  if (result)
  {

    return [result setHidden:{1, v7}];
  }

  return result;
}

void sub_10038A814(void *a1)
{
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel;
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel);
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel) = a1;
  v13 = a1;

  v9 = *(v1 + v7);
  if (v9)
  {
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    v10 = v9;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10002B894(v14, &unk_1009711D0, &unk_1007B1A10);
    sub_10002B894(v15, &unk_1009711D0, &unk_1007B1A10);
    UIView.setAutomationSemantics(_:)();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11 = v13;
  }
}

void (*sub_10038A9BC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_10038AA58;
}

void sub_10038AA58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v2)
    {
      sub_10038C528(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v5 = v2;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v8 = v3;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v3[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v2;
    v16 = v2;
    sub_10047C6C8(v15);

    v17 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_10038C528(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v10 = v2;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v13 = v3;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v19 = *&v3[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v2;
    v18 = v2;
    sub_10047C6C8(v19);

    v17 = v19;
  }
}

char *sub_10038ACA0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v90 = *(v10 - 8);
  v91 = v10;
  __chkstk_darwin(v10);
  v89 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DirectionalTextAlignment();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v84 - v14;
  v16 = type metadata accessor for WordmarkView.Alignment();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v20 - 8);
  v22 = &v84 - v21;
  v23 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_itemLayoutContext;
  v24 = type metadata accessor for ItemLayoutContext();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  v25 = &v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = 0;
  v27 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView;
  v28 = enum case for Wordmark.arcade(_:);
  v29 = type metadata accessor for Wordmark();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v22, v28, v29);
  (*(v30 + 56))(v22, 0, 1, v29);
  (*(v17 + 104))(v19, enum case for WordmarkView.Alignment.leading(_:), v16);
  *(&v98 + 1) = &type metadata for Double;
  v99 = &protocol witness table for Double;
  *&v97 = 0x4028000000000000;
  v31 = objc_allocWithZone(type metadata accessor for WordmarkView());
  *&v5[v27] = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView] = 0;
  v32 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_10096DDE0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for FontUseCase();
  v34 = sub_1000056A8(v33, qword_1009D0920);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v15, v34, v33);
  (*(v35 + 56))(v15, 0, 1, v33);
  (*(v85 + 104))(v86, enum case for DirectionalTextAlignment.none(_:), v87);
  v36 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v32] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton;
  v38 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v37] = sub_1000F5284(0, v39);
  v40 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  *&v5[v40] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel] = 0;
  v41 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView;
  *&v5[v41] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v42 = type metadata accessor for MediaView();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v43[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v43[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v43[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v43[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v44 = type metadata accessor for UberContentContainer();
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v45[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v46 = &v45[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v46 = 0;
  v46[8] = 1;
  v47 = &v45[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v47 = 0u;
  *(v47 + 1) = 0u;
  v47[32] = 1;
  *&v45[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v96.receiver = v45;
  v96.super_class = v44;
  v48 = objc_msgSendSuper2(&v96, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v49 = v48;
  if (*&v48[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v48 addSubview:?];
  }

  v50 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v43[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v49;
  v95.receiver = v43;
  v95.super_class = v42;
  v51 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v51 setClipsToBounds:1];
  [v51 addSubview:*&v51[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *&v5[v50] = v51;
  v94.receiver = v5;
  v94.super_class = ObjectType;
  v52 = objc_msgSendSuper2(&v94, "initWithFrame:", a1, a2, a3, a4);
  v53 = [v52 contentView];
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v54 = [v52 contentView];
  [v54 _setCornerRadius:20.0];

  v55 = [v52 contentView];
  [v55 setClipsToBounds:1];

  v56 = [v52 contentView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v57 = static UIColor.placeholderBackground.getter();
  [v56 setBackgroundColor:v57];

  v58 = [v52 contentView];
  v59 = [v58 layer];

  [v59 setAllowsGroupBlending:0];
  v60 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView;
  v61 = *&v52[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1007B15F0;
  v63 = objc_allocWithZone(UIColor);
  v64 = v61;
  *(v62 + 32) = [v63 initWithWhite:0.0 alpha:0.0];
  *(v62 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  *&v64[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v62;

  sub_1001C0CEC();

  v65 = [v52 contentView];
  [v65 addSubview:*&v52[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer]];

  v66 = [v52 contentView];
  [v66 addSubview:*&v52[v60]];

  v67 = [v52 contentView];
  [v67 addSubview:*&v52[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton]];

  v68 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView;
  v69 = *&v52[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView];
  v70 = static UIColor.primaryText.getter();
  [v69 setTextColor:v70];

  [*&v52[v68] setTextAlignment:1];
  [*&v52[v68] setHidden:1];
  v71 = [v52 contentView];
  [v71 addSubview:*&v52[v68]];

  v72 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView;
  v73 = *&v52[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView];
  v74 = static UIColor.primaryText.getter();
  [v73 setTintColor:v74];

  v75 = *&v52[v72];
  v97 = 0u;
  v98 = 0u;
  v92 = 0u;
  v93 = 0u;
  v76 = v75;
  v77 = v89;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v92, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v97, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v78 = v91;
  v79 = *(v90 + 8);
  v79(v77, v91);
  v80 = [v52 contentView];

  [v80 addSubview:*&v52[v72]];
  v81 = *&v52[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView];
  v97 = 0u;
  v98 = 0u;
  v92 = 0u;
  v93 = 0u;
  v82 = v81;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v92, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v97, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v79(v77, v78);
  return v52;
}

uint64_t sub_10038B8F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PosterLockupLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PosterLockupLayout();
  v42 = *(v8 - 8);
  v43 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69.receiver = v1;
  v69.super_class = ObjectType;
  objc_msgSendSuper2(&v69, "layoutSubviews", v9);
  [v1 bounds];
  v37[1] = v7;
  sub_10038A03C(v11, v12);
  v13 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView];
  v67 = type metadata accessor for GradientView();
  v68 = &protocol witness table for UIView;
  v66 = v13;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer];
  v64 = type metadata accessor for MediaView();
  v65 = &protocol witness table for UIView;
  v63 = v14;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView];
  v61 = type metadata accessor for WordmarkView();
  v62 = &protocol witness table for UIView;
  v60 = v15;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
  if (v16)
  {
    v17 = type metadata accessor for ArtworkView();
    v18 = &protocol witness table for UIView;
    v19 = v16;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v56 = 0;
    v57 = 0;
  }

  v55 = v19;
  v58 = v17;
  v59 = v18;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView];
  v21 = type metadata accessor for DynamicTypeLabel();
  v53 = v21;
  v54 = &protocol witness table for UILabel;
  v52 = v20;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton];
  v50 = type metadata accessor for OfferButton();
  v51 = &protocol witness table for UIView;
  v49 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel];
  if (v23)
  {
    v24 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v45 = 0;
    v46 = 0;
  }

  v44 = v23;
  v47 = v21;
  v48 = v24;
  v25 = v16;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v13;
  v29 = v14;
  v30 = v15;
  v31 = v41;
  PosterLockupLayout.init(metrics:gradient:poster:header:logoArt:fallbackTitle:offerButton:footer:)();
  v32 = [v1 contentView];
  [v32 bounds];

  v33 = v38;
  PosterLockupLayout.placeChildren(relativeTo:in:)();
  (*(v39 + 8))(v33, v40);
  sub_10002849C(&unk_1009856C0, qword_1007C9C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  [v1 bounds];
  v35 = CGRectGetHeight(v70) + -88.0;
  [v1 bounds];
  *(inited + 32) = v35 / CGRectGetHeight(v71);
  *(inited + 40) = 0x3FF0000000000000;
  sub_1001C0B48(inited);
  return (*(v42 + 8))(v31, v43);
}

uint64_t type metadata accessor for PosterLockupCollectionViewCell(uint64_t a1)
{
  result = qword_1009824C0;
  if (!qword_1009824C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038BFF4(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10038C0B8()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_10038C128(void *a1)
{
  sub_10047D0EC(a1);
}

uint64_t (*sub_10038C180(uint64_t **a1))()
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
  v2[4] = sub_10038A9BC(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10038C1F0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10038C528(&unk_1009824E0, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007C9C40);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10038C264(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10038C528(&unk_1009824E0, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007C9C40);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10038C2F0(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10038C528(&unk_1009824E0, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007C9C40);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10038C3AC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_10038C528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10038C570()
{
  v1 = v0;
  v44 = type metadata accessor for DirectionalTextAlignment();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for WordmarkView.Alignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork) = 0;
  v17 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView;
  v18 = enum case for Wordmark.arcade(_:);
  v19 = type metadata accessor for Wordmark();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v7 + 104))(v9, enum case for WordmarkView.Alignment.leading(_:), v6);
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v47 = 0x4028000000000000;
  v21 = objc_allocWithZone(type metadata accessor for WordmarkView());
  *(v1 + v17) = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView) = 0;
  v22 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_10096DDE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D0920);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v5, v24, v23);
  (*(v25 + 56))(v5, 0, 1, v23);
  (*(v42 + 104))(v43, enum case for DirectionalTextAlignment.none(_:), v44);
  v26 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v22) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton;
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v27) = sub_1000F5284(0, v29);
  v30 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v30) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel) = 0;
  v31 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView;
  *(v1 + v31) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v32 = type metadata accessor for MediaView();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v33[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v33[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v33[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v33[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v34 = type metadata accessor for UberContentContainer();
  v35 = objc_allocWithZone(v34);
  *&v35[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v35[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v36 = &v35[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v35[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v37[32] = 1;
  *&v35[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v46.receiver = v35;
  v46.super_class = v34;
  v38 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = v38;
  if (*&v38[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v38 addSubview:?];
  }

  v40 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v33[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v39;
  v45.receiver = v33;
  v45.super_class = v32;
  v41 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v42);
  [v41 setClipsToBounds:1];
  [v41 addSubview:*&v41[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v1 + v40) = v41;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10038CC0C()
{
  v1 = OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10038CCD4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v6 = sub_10038CC0C();
  v7 = [v6 searchTextField];

  v8 = objc_allocWithZone(type metadata accessor for SearchTextInputSourceTextField());
  v9 = sub_10061A83C(v7);
  v10 = *&v1[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput];
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput] = v9;

  v11 = OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar;
  [*&v1[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] setDelegate:v1];
  v12 = *&v1[v11];
  sub_100615BAC();

  v13 = *&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButton];
  static UIButton.Configuration._glass()();
  v14._countAndFlagsBits = 0x465F484352414553;
  v14._object = 0xEE00535245544C49;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  localizedString(_:comment:)(v14, v15);
  UIButton.Configuration.title.setter();
  v16 = sub_10032FEB0(0xD000000000000010, 0x800000010080FCA0, 0);
  v17 = [v16 imageWithRenderingMode:2];

  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();
  v18 = type metadata accessor for UIButton.Configuration();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  UIButton.configuration.setter();
  [v13 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v13 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v19 = 0.0;
  [v13 setAlpha:0.0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v13 addAction:v20 forControlEvents:64];

  [v13 setPointerInteractionEnabled:1];
  [*&v1[v11] _setSearchFieldContainerLayoutCustomizationDelegate:v1];
  v21 = [v1 traitCollection];
  [v21 horizontalSizeClass];
  LOBYTE(v4) = UITraitCollection.isRegularPad.getter();
  [*&v1[v11] _additionalPaddingForSearchFieldAtLeadingEdge];
  v23 = v22;
  if (v4)
  {
    [v13 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v19 = v24 + 15.0;
  }

  if (v19 != v23)
  {
    v25 = *&v1[v11];
    [v25 _setAdditionalPaddingForSearchFieldAtLeadingEdge:v19];
  }
}

void sub_10038D440(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
    if (v3)
    {
      v4 = *&Strong[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler + 8];
      v5 = *&Strong[OBJC_IVAR____TtC8AppStore16SearchController_filterButton];
      v6 = Strong;
      sub_10000827C(*&Strong[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler], v4);
      v7 = v5;
      v3();
      sub_10001F63C(v3, v4);

      Strong = v7;
    }
  }
}

unint64_t sub_10038D56C(uint64_t a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SearchController();
  v3 = objc_msgSendSuper2(&v12, "keyCommands");
  if (v3)
  {
    v4 = v3;
    sub_100005744(0, &qword_100982610, UIKeyCommand_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v13 = v5;
  v6 = UIKeyInputEscape;
  v7._object = 0x800000010080FCC0;
  v7._countAndFlagsBits = 0xD000000000000035;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  localizedString(_:comment:)(v7, v8);
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() keyCommandWithInput:v6 modifierFlags:0 action:"handleCancelKeyCommandWithCommand:" discoverabilityTitle:v9];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v13;
}

id sub_10038D788(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8AppStore16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v3[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] = 0;
  v6 = &v3[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC8AppStore16SearchController_filterButton;
  *&v3[v7] = [objc_opt_self() buttonWithType:1];
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10038D8F4(void *a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC8AppStore16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SearchController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10038D9FC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10038DAC4(char *a1, void *a2)
{
  v13 = [a1 traitCollection];
  v4 = [v13 horizontalSizeClass];
  v5 = v4 == [a2 horizontalSizeClass];
  v6 = v13;
  if (!v5)
  {
    v7 = UITraitCollection.isRegularPad.getter();
    v8 = sub_10038CC0C();
    [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
    v10 = v9;

    v11 = 0.0;
    if (v7)
    {
      [*&a1[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v11 = v12 + 15.0;
    }

    v6 = v13;
    if (v11 != v10)
    {
      [*&a1[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:?];
      v6 = v13;
    }
  }
}

void sub_10038DBE0()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_100619DF0();

  if (v7)
  {
    v8 = [v1 searchResultsController];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for SearchResultsContainerViewController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v19 = *(v10 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
        v11 = v19;

        if (v19)
        {
          type metadata accessor for StoreCollectionViewController();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            v13 = *(v12 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
            v14 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

            BaseObjectGraph.injectIfAvailable<A>(_:)();
            v15 = *(v14 - 8);
            if ((*(v15 + 48))(v4, 1, v14) == 1)
            {
              sub_1000F40E0(v4);
            }

            else
            {

              sub_1005FA0B0(v17, 1, v13, v4);

              (*(v15 + 8))(v4, v14);
            }

            [*&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] setEnabled:1];

            return;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v19 = 0;
LABEL_11:
    [*&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] setEnabled:0];

    v16 = v19;
  }
}

void sub_10038DE7C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  if ([v5 isActive])
  {
    v12 = [v5 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v14 = v13 == 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = *&v6[OBJC_IVAR____TtC8AppStore16SearchController_filterButton];
  [v15 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v17 = v16;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  Height = CGRectGetHeight(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  v20 = CGRectGetHeight(v44);
  v21 = [v6 traitCollection];
  v22 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!v14)
  {
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    if (v22)
    {
      MaxX = CGRectGetMaxX(*&v25);
      v30 = 15.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v25) - v17;
      v30 = -15.0;
    }

    v23 = MaxX + v30;
    v24 = 1.0;
    goto LABEL_14;
  }

  if (v22)
  {
    if (!a1)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    [a1 frame];
    v23 = CGRectGetMaxX(v45) + 15.0 + 8.0;
    v24 = 0.0;
LABEL_14:
    v31 = MinY + (v20 - Height) * 0.5;
    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    *(v32 + 24) = v23;
    *(v32 + 32) = v31;
    *(v32 + 40) = v17;
    *(v32 + 48) = Height;
    *(v32 + 56) = v24;
    v33 = v6;
    v34 = [v15 superview];
    if (v34)
    {

      [v15 setFrame:{v23, v31, v17, Height}];
      [v15 setAlpha:v24];
      v35 = 0;
      v36 = 0;
LABEL_19:
      [v15 setUserInteractionEnabled:v24 > 0.0];
      v40 = sub_10038CC0C();
      sub_100615BAC();

      sub_10001F63C(v35, v36);
      return;
    }

    if (a1)
    {
      [a1 addSubview:v15];
      v37 = objc_opt_self();
      v38 = swift_allocObject();
      v35 = sub_10038E440;
      *(v38 + 16) = sub_10038E440;
      *(v38 + 24) = v32;
      v41[4] = sub_10006F094;
      v41[5] = v38;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 1107296256;
      v41[2] = sub_1000489A8;
      v41[3] = &unk_1008C0270;
      v39 = _Block_copy(v41);

      [v37 performWithoutAnimation:v39];
      _Block_release(v39);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if ((v37 & 1) == 0)
      {
        v36 = v32;
        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (a1)
  {
    [a1 frame];
    v23 = CGRectGetMinX(v46) - (v17 + 15.0 + 8.0);
    v24 = 0.0;
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
}

id sub_10038E294()
{
  [*&v0[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] setEnabled:0];
  if ([v0 delegate])
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      (*(v2 + 8))(ObjectType, v2);
    }

    swift_unknownObjectRelease();
  }

  return [v0 setActive:0];
}

id sub_10038E37C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC8AppStore16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v6, "initWithSearchResultsController:", a1);
}

id sub_10038E440()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC8AppStore16SearchController_filterButton);
  [v2 setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];

  return [v2 setAlpha:v1];
}

uint64_t sub_10038E4B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UberedPageScrollObserver();
  v5 = swift_allocObject();
  v6 = sub_100043964(v2, v5, a1, a2);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  *(v6 + 72) = sub_10038F584;
  *(v6 + 80) = v8;

  sub_10001F63C(v9, v10);

  return v6;
}

double sub_10038E588(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  (*(a2 + 8))(a1, a2);
  sub_10038F5D8();
  CompoundScrollObserver.addChild(_:)();

  return result;
}

void sub_10038E618(uint64_t a1, uint64_t a2)
{
  if (sub_10038ED6C())
  {
    v5 = *(a2 + 8);
    *(v5(a1, a2) + 88) = 1;

    v6 = [v2 transitionCoordinator];
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = v8;
      v20 = sub_10038F5AC;
      v21 = v9;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_1006D1458;
      v19 = &unk_1008C0428;
      v10 = _Block_copy(&aBlock);

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = v11;
      v20 = sub_10038F5CC;
      v21 = v12;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_1006D1458;
      v19 = &unk_1008C0478;
      v13 = _Block_copy(&aBlock);

      [v7 animateAlongsideTransition:v10 completion:v13];
      _Block_release(v13);
      _Block_release(v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v5(a1, a2);
      v14 = [v2 collectionView];
      if (v14)
      {
        v15 = v14;
        sub_1000423A0(v14);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_10038E8AC(uint64_t a1, uint64_t a2)
{
  v5 = [v2 presentedViewController];
  if (v5)
  {
  }

  else
  {
    if ((*(a2 + 24))(a1, a2))
    {
      (*(a2 + 8))(a1, a2);
      sub_100041DF8();
    }

    else
    {
      v7 = [v2 transitionCoordinator];
      v8 = (*(a2 + 8))(a1, a2);
      if (v7)
      {
        v17 = sub_10019DB94;
        v18 = v8;
        v13 = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_1006D1458;
        v16 = &unk_1008C0388;
        v9 = _Block_copy(&v13);

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        v11[2] = a1;
        v11[3] = a2;
        v11[4] = v10;
        v17 = sub_10038F5A0;
        v18 = v11;
        v13 = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_1006D1458;
        v16 = &unk_1008C03D8;
        v12 = _Block_copy(&v13);

        [v7 animateAlongsideTransition:v9 completion:v12];
        _Block_release(v12);
        _Block_release(v9);
        swift_unknownObjectRelease();
        return result;
      }

      sub_100041DF8();
    }
  }

  return result;
}

void sub_10038EB44(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9[4] = sub_10038F644;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1006D1458;
  v9[3] = &unk_1008C0360;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_10038EC50(char a1)
{
  v3 = (*((swift_isaMask & *v1) + 0xC0))((a1 & 8) == 0);
  if (a1 & 1) != 0 || (a1 & 2) != 0 && (v3 = (*((swift_isaMask & *v1) + 0x150))(v3), (v3))
  {
    v4 = (*((swift_isaMask & *v1) + 0xB8))(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *((swift_isaMask & *v1) + 0x188);
  v6 = v4 & 1;

  return v5(v6);
}

BOOL sub_10038ED6C()
{
  v1 = (*((swift_isaMask & *v0) + 0x160))();
  v2 = v1 == 0;
  if (!v1)
  {
    v3 = [v0 navigationController];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 navigationBar];

    v1 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

void sub_10038EE2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = type metadata accessor for TimingCurve();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, v19 = COERCE_DOUBLE((*((swift_isaMask & *Strong) + 0x1B8))()), v21 = v20, v18, (v21 & 1) != 0))
  {
    if (a4 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a4)
  {
LABEL_4:
    static TimingCurve.easingCurve1.getter();
    TimingCurve.controlPoint1.getter();
    v23 = v22;
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v16, v10);
    static TimingCurve.easingCurve1.getter();
    TimingCurve.controlPoint2.getter();
    v28 = v27;
    v30 = v29;
    v26(v13, v10);
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    *(v31 + 24) = a3;
    *(v31 + 32) = a1;
    *(v31 + 40) = a4;
    v32 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_10038F590;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C0310;
    v33 = _Block_copy(aBlock);

    v34 = [v32 initWithDuration:v33 controlPoint1:a5 controlPoint2:v23 animations:{v25, v28, v30}];
    _Block_release(v33);
    [v34 startAnimation];
  }
}