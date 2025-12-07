void PeoplePickerViewController.activeParticipantsAddresses()()
{
  v23[2] = MEMORY[0x1E69E7CD0];
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation);
  if (v1)
  {
    v22 = v1;
    v2 = [v22 activeRemoteParticipants];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90, MEMORY[0x1E69E81B8]);
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v3 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v3 = v23[3];
      v4 = v23[4];
      v5 = v23[5];
      v6 = v23[6];
      v7 = v23[7];
    }

    else
    {
      v6 = 0;
      v8 = -1 << *(v3 + 32);
      v4 = v3 + 56;
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

      v7 = v10 & *(v3 + 56);
    }

    v11 = (v5 + 64) >> 6;
    if (v3 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_22;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v17 = [v16 handle];
        v18 = [v17 value];

        if (!v18)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = MEMORY[0x1BFB209B0](v19);
        }

        v20 = outlined bridged method (ob) of @objc NSString._im_normalizedURI()(v18);
        if (!v21)
        {
          break;
        }

        specialized Set._Variant.insert(_:)(v23, v20, v21);

        v6 = v14;
        v7 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v16 = v23[0];
          v14 = v6;
          v15 = v7;
          if (v23[0])
          {
            continue;
          }
        }

        goto LABEL_22;
      }

LABEL_25:
      __break(1u);
      return;
    }

LABEL_22:
    outlined consume of Set<TUHandle>.Iterator._Variant(v3);
  }
}

uint64_t PeoplePickerViewController.currentRecipientsAddresses()()
{
  v17 = MEMORY[0x1E69E7CD0];
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFB22010](i, v2);
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = *(CNComposeRecipient.normalizedAddresses()() + 16);

        if (v8)
        {
          v9 = v17;
          v10 = CNComposeRecipient.normalizedAddresses()();
          v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v10);
          specialized Set.union<A>(_:)(v11, v9);
          v13 = v12;

          v17 = v13;
        }

        else
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          specialized Set._Variant.insert(_:)(v16, v14, v15);
        }
      }

      return v17;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void PeoplePickerViewController.updateActionBarState()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    v4 = v1;
    v5 = [v3 recipients];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized Array.count.getter();
    if (v7 == 1 && specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](0, v6);
      }

      else
      {
        v8 = *(v6 + 32);
      }

      v9 = v8;
      v10 = CNComposeRecipient.tuHandle.getter();
    }

    else
    {
      v10 = 0;
    }

    v11 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x148))(v10);
    if (!v7 || PeoplePickerViewController.isIDSLookupPendingForCurrentRecipients()() || (PeoplePickerViewController.recipientsIncludeInvalidAddresses()(), (v12 & 1) != 0) || (swift_beginAccess(), v13 = , PeoplePickerViewController.isCallAllowed(policy:)(v13), v15 = v14, , (v15 & 1) == 0) || v7 >= 2 && (v16 = [objc_opt_self() sharedInstance]) != 0 && (v17 = v16, v18 = objc_msgSend(v16, sel_isGreenTea), v17, v18))
    {

      (*((*v11 & *v4) + 0x178))(0);
    }

    else
    {
      v19 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
      swift_beginAccess();
      v20 = *(v19 + 16);
      PeoplePickerViewController.isAudioAllowedForCurrentRecipients()();
      v40 = v21;
      PeoplePickerViewController.isMultiwayAllowedForCurrentRecipients()();
      v23 = v22;
      PeoplePickerViewController.isVideoAllowedForCurrentRecipients()();
      v25 = v24;
      v26 = PeoplePickerViewController.isAVLessSharePlayAllowedForCurrentRecipients()();
      if (v20 == 3)
      {
        (*((*v11 & *v4) + 0x130))(3);
        PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(3, 4, v6);

        v29 = 0;
      }

      else if (v20)
      {

        (*((*v11 & *v4) + 0x130))(3);
        v29 = 0x10000;
      }

      else
      {

        v28 = (*((*v11 & *v2) + 0x3D8))(v27);
        (*((*v11 & *v4) + 0x130))(v28);
        if (v25)
        {
          v29 = 0x10000;
        }

        else
        {
          v29 = 0;
        }
      }

      v30 = PeoplePickerViewController.isTelephonyAllowedForCurrentState()();
      v31 = 0x100000000;
      if ((v26 & 1) == 0)
      {
        v31 = 0;
      }

      v32 = 0x1000000;
      if ((v23 & 1) == 0)
      {
        v32 = 0;
      }

      v33 = 256;
      if ((v40 & 1) == 0)
      {
        v33 = 0;
      }

      (*((*v11 & *v4) + 0x178))(v32 | v33 | v31 | v29 | v30 & 1);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v34 = static OS_os_log.conversationKit;
      v35 = static os_log_type_t.default.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1BC4BA940;
      v37 = String.init<A>(reflecting:)();
      v39 = v38;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      os_log(_:dso:log:type:_:)("Updating actionBarState with explanationType: %@", 48, 2, &dword_1BBC58000, v34, v35, v36);
    }

    [v4 layoutIfNeeded];
  }
}

void PeoplePickerViewController.updateHelpText()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
  v2 = [v1 recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter();

  if (v3 >= 1 && !PeoplePickerViewController.isIDSLookupPendingForCurrentRecipients()())
  {
    if (v3 == 1 || (v4 = [objc_opt_self() sharedInstance]) == 0 || (v5 = v4, v6 = objc_msgSend(v4, sel_isGreenTea), v5, (v6 & 1) == 0))
    {
      v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
      swift_beginAccess();
      v8 = *(v7 + 16);
      if ((v8 - 1) >= 2)
      {
        v12 = 0;
        if (!v8)
        {
LABEL_14:
          [v1 setComposeFieldInfoText_];

          return;
        }

        v13 = [objc_opt_self() conversationKit];
        v19._object = 0xE000000000000000;
        v14.value._countAndFlagsBits = 0x61737265766E6F43;
        v14.value._object = 0xEF74694B6E6F6974;
        v15._object = 0x80000001BC4F9870;
        v15._countAndFlagsBits = 0xD00000000000001BLL;
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        v19._countAndFlagsBits = 0;
        v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v19);
        countAndFlagsBits = v17._countAndFlagsBits;
        object = v17._object;
      }

      else
      {
        countAndFlagsBits = PeoplePickerViewController.webInviteeExplanation()();
        object = v10;
      }

      v12 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);

      goto LABEL_14;
    }
  }

  [v1 setComposeFieldInfoText_];
}

void PeoplePickerViewController.presentationOptions(for:)(void *a1)
{
  v2 = v1;
  if ([a1 isGroup])
  {
    v4 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(a1);
    if (!v4)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v5 = v4;
    v6 = specialized Array.count.getter();
    if (!v6)
    {
LABEL_13:

      return;
    }

    v7 = v6;
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB22010](v9, v5);
        }

        else
        {
          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        ++v9;
        PeoplePickerViewController.presentationOptions(for:)(v10);
        v13 = v12;

        if ((v13 & ~v8) != 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v8 |= v14;
      }

      while (v7 != v9);
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v55 = a1;
  v15 = CNComposeRecipient.normalizedAddresses()();
  v16 = PeoplePickerViewController.currentRecipientsAddresses()();

  specialized Set.union<A>(_:)(v17, v16);
  v18 = PeoplePickerViewController.callFilterPolicy(for:)();

  v19 = *(v15 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = (v15 + 40);
    while (v20 < *(v15 + 16))
    {
      if (*(v18 + 16))
      {
        v22 = *(v21 - 1);
        v23 = *v21;

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
        v26 = v25;

        if (v26)
        {
          v27 = *(*(v18 + 56) + 8 * v24);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
          v28 = v27;
          isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
          v30 = [v28 isEqualToNumber_];

          if (v30)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1BC4BAC30;
            *(inited + 32) = v55;
            v51 = v55;
            PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(3, 5, inited);
            swift_setDeallocating();
            specialized _ContiguousArrayStorage.__deallocating_deinit();

            return;
          }
        }
      }

      ++v20;
      v21 += 2;
      if (v19 == v20)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_22:
  v31 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v55, &selRef_address);
  if (v32)
  {
    v33 = MEMORY[0x1BFB209B0](v31);
  }

  else
  {
    v33 = 0;
  }

  v34 = TUCopyIDSCanonicalAddressForDestinationID();

  if (!v34)
  {

    return;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (PeoplePickerViewController.isIDSLookupPending(for:)(v35, v37))
  {
    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;

      [v39 effectiveUserInterfaceLayoutDirection];

      return;
    }

    goto LABEL_43;
  }

  v40 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v55, &selRef_address);
  if (!v41)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v42 = v40;
  v43 = v41;

  v44 = MEMORY[0x1BFB209B0](v42, v43);

  v45 = [v44 destinationIdIsPhoneNumber];

  v46 = [*&v2[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController] recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = specialized Array.count.getter();

  if (v47 > 1 || v2[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style] == 1)
  {
    v48._countAndFlagsBits = v35;
    v48._object = v37;
    v49 = PeoplePickerViewModel.isMultiwayAvailable(for:)(v48);
  }

  else
  {
    v49 = PeoplePickerViewController.isFaceTimeAvailable(for:)(v35, v37);
  }

  v52 = v49;

  if (((v52 | v45) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_1BC4BAC30;
    *(v53 + 32) = v55;
    v54 = v55;
    PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(3, 6, v53);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }
}

void PeoplePickerViewController.updatePresentationOptions(_:for:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](v6, a2);
      }

      else
      {
        v8 = *(a2 + 8 * v6 + 32);
      }

      v9 = v8;
      ++v6;
      [v7 setPresentationOptions:a1 forRecipient:v8];
    }

    while (v5 != v6);
  }
}

id PeoplePickerViewController.setActionUnavailable()()
{
  v1 = v0;
  result = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) setComposeFieldInfoText_];
  v3 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar;
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar);
  if (v4)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x178);
    v6 = v4;
    v5(0);

    result = *(v1 + v3);
    if (result)
    {

      return [result layoutIfNeeded];
    }
  }

  return result;
}

BOOL PeoplePickerViewController.isIDSLookupPendingForCurrentRecipients()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
  v2 = &selRef_fillRule;
  v3 = [v1 recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  j = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter())
  {

    return 0;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (j & 0xC000000000000001) == 0, j);
  if ((j & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  for (i = *(j + 32); ; i = MEMORY[0x1BFB22010](0, j))
  {
    v6 = i;

    v7 = [v1 v2[40]];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = specialized Array.count.getter();

    if (v8 <= 1 && *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) != 1 && ![v6 isGroup])
    {
      break;
    }

    v9 = [v1 v2[40]];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = specialized Array.count.getter();
    for (j = 0; ; ++j)
    {
      if (v1 == j)
      {

        goto LABEL_18;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](j, v10);
      }

      else
      {
        if (j >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v11 = *(v10 + 8 * j + 32);
      }

      v12 = v11;
      if (__OFADD__(j, 1))
      {
        break;
      }

      PeoplePickerViewController.isIDSMultiwayLookupPending(for:)(v11);
      v2 = v13;

      if (v2)
      {

        return 1;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v15 = [v1 v2[40]];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = specialized Array.count.getter();

  if (v16 != 1)
  {
    goto LABEL_18;
  }

  v17 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v6, &selRef_address);
  if (v18)
  {
    v19 = MEMORY[0x1BFB209B0](v17);
  }

  else
  {
    v19 = 0;
  }

  v20 = TUCopyIDSCanonicalAddressForDestinationID();

  if (!v20)
  {
LABEL_18:

    return 0;
  }

  v21 = [objc_opt_self() sharedManager];
  v22 = [v21 faceTimeVideoAvailabilityForDestination_];

  return v22 == 0;
}

void PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v22 = a2;
  v21 = a1;
  if (a3 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients;
    v8 = *(v4 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    v23 = v5 & 0xC000000000000001;
    v24 = v8;
    swift_beginAccess();
    v9 = 0;
    v10 = v5;
    do
    {
      if (v23)
      {
        v11 = MEMORY[0x1BFB22010](v9, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v24 recipients];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v12;
      MEMORY[0x1EEE9AC00](v15);
      v20[2] = &v25;
      LOBYTE(v13) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v20, v14);

      if (v13)
      {
        v16 = *(v4 + v7);

        specialized Set.contains(_:)(v12, v16);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          swift_beginAccess();
          specialized Set._Variant.insert(_:)(&v26, v12);
          v19 = v26;
          swift_endAccess();

          PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(v21, v22);
        }
      }

      ++v9;

      v5 = v10;
    }

    while (v6 != v9);
  }
}

uint64_t PeoplePickerViewController.webInviteeExplanation()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Array.count.getter();

  v3 = [objc_opt_self() conversationKit];
  if (v2 <= 1)
  {
    v4 = 5459283;
  }

  else
  {
    v4 = 5459277;
  }

  v27._object = 0xE000000000000000;
  v5 = 0xE300000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, v6, v3, v7, v27);

  v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style);
  v10 = [objc_opt_self() conversationKit];
  v26 = 0xE000000000000000;
  if (v9)
  {
    v11 = 0x4C465F4552414853;
    v12 = 0xEA0000000000574FLL;
  }

  else
  {
    v11 = 0x465F455441455243;
    v12 = 0xEB00000000574F4CLL;
  }

  v13.value._countAndFlagsBits = 0x61737265766E6F43;
  v13.value._object = 0xEF74694B6E6F6974;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, v13, v10, v14, *(&v26 - 1));

  v17 = [objc_opt_self() conversationKit];
  v28._object = 0xE000000000000000;
  v18._object = 0x80000001BC4F9890;
  v18._countAndFlagsBits = 0xD000000000000017;
  v19.value._countAndFlagsBits = 0x61737265766E6F43;
  v19.value._object = 0xEF74694B6E6F6974;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BC4BAA20;
  v22 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v23 = lazy protocol witness table accessor for type String and conformance String();
  *(v21 + 32) = v8;
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  *(v21 + 64) = v23;
  *(v21 + 72) = v16;
  v24 = String.init(format:_:)();

  return v24;
}

id CNComposeRecipient.tuHandle.getter()
{
  v1 = [v0 kind];
  if (v1)
  {
    if (v1 != 1)
    {
      return 0;
    }

    result = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_address);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = OUTLINED_FUNCTION_46();
      v6 = MEMORY[0x1BFB209B0](v5);

      v7 = [v4 normalizedPhoneNumberHandleForValue:v6 isoCountryCode:0];
LABEL_7:
      v11 = v7;

      return v11;
    }

    __break(1u);
  }

  else
  {
    result = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_address);
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = OUTLINED_FUNCTION_46();
      v6 = MEMORY[0x1BFB209B0](v10);

      v7 = [v9 normalizedEmailAddressHandleForValue_];
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void PeoplePickerViewController.recipientsIncludeInvalidAddresses()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter();
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v24 = v3;
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v5)
    {
      v7 = MEMORY[0x1BFB22010](v4, v2);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_35;
      }

      v7 = *(v2 + 32 + 8 * v4);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if ([v7 isGroup])
    {
      v25 = v8;
      v9 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v8);
      if (!v9)
      {
        goto LABEL_36;
      }

      v10 = v9;
      v11 = specialized Array.count.getter();
      for (i = 0; ; ++i)
      {
        if (v11 == i)
        {

          v3 = v24;
          v21 = v25;
          v6 = v2 & 0xFFFFFFFFFFFFFF8;
          v5 = v2 & 0xC000000000000001;
          goto LABEL_27;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB22010](i, v10);
        }

        else
        {
          if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v13 = *(v10 + 8 * i + 32);
        }

        v14 = v13;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v15 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v13, &selRef_address);
        if (v16)
        {
          v17 = MEMORY[0x1BFB209B0](v15);
        }

        else
        {
          v17 = 0;
        }

        v18 = TUCopyIDSCanonicalAddressForDestinationID();

        if (!v18)
        {

          return;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      break;
    }

    v19 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v8, &selRef_address);
    v21 = v8;
    if (v20)
    {
      v22 = MEMORY[0x1BFB209B0](v19);
    }

    else
    {
      v22 = 0;
    }

    v23 = TUCopyIDSCanonicalAddressForDestinationID();

    if (!v23)
    {

      return;
    }

LABEL_27:
    ++v4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void PeoplePickerViewController.isCallAllowed(policy:)(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 56) + ((v8 << 9) | (8 * v9)));
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v11 = v10;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v13 = [v11 isEqualToNumber_];

    if (v13)
    {
LABEL_11:

      return;
    }
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
      goto LABEL_11;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void PeoplePickerViewController.isAudioAllowedForCurrentRecipients()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter() == 1)
  {
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) == 0)
      {
        v3 = *(v2 + 32);
LABEL_5:
        v4 = v3;

        CNComposeRecipient.idsDestinationsMatchingAddress()();
        v6 = v5;
        if ([objc_opt_self() supportsDisplayingFaceTimeAudioCalls])
        {
          PeoplePickerViewController.isMultiwayAllowed(for:)(v6, &selRef_isFaceTimeAudioAvailableForAnyDestinationInDestinations_);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    v3 = MEMORY[0x1BFB22010](0, v2);
    goto LABEL_5;
  }

  PeoplePickerViewController.isMultiwayAllowedForCurrentRecipients()();
}

void PeoplePickerViewController.isMultiwayAllowedForCurrentRecipients()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter();
  v5 = v4 > 0;
  v6 = specialized Array.count.getter();
  if (v6)
  {
    v7 = v6;
    v17 = v4;
    v8 = 0;
    v9 = v3 & 0xC000000000000001;
LABEL_3:
    v18 = v5;
    v10 = v8;
    do
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v10, v9 == 0, v3);
      if (v9)
      {
        v11 = MEMORY[0x1BFB22010](v10, v3);
      }

      else
      {
        v11 = *(v3 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      CNComposeRecipient.idsDestinationsMatchingAddress()();
      v14 = PeoplePickerViewController.isMultiwayAllowed(for:)(v13, &selRef_isFaceTimeMultiwayAvailableForAnyDestinationInDestinations_);

      if ((v14 & 1) == 0)
      {

LABEL_13:
        v5 = 0;
        if (v8 != v7)
        {
          goto LABEL_3;
        }

        return;
      }

      PeoplePickerViewController.hasMatchingMeHandle(for:)(v12);
      v16 = v15;

      if (v16)
      {
        goto LABEL_13;
      }

      ++v10;
    }

    while (v8 != v7);

    v4 = v17;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v4 >= 1)
    {
LABEL_18:
      if (__OFADD__(*(*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) + 16), v4))
      {
LABEL_21:
        __break(1u);
      }

      else
      {
        PeoplePickerViewController.maxParticipantLimit.getter();
      }
    }
  }
}

void PeoplePickerViewController.isVideoAllowedForCurrentRecipients()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter() == 1)
  {
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) == 0)
      {
        v3 = *(v2 + 32);
LABEL_5:
        v4 = v3;

        CNComposeRecipient.idsDestinationsMatchingAddress()();
        PeoplePickerViewController.isMultiwayAllowed(for:)(v5, &selRef_isFaceTimeVideoAvailableForAnyDestinationInDestinations_);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    v3 = MEMORY[0x1BFB22010](0, v2);
    goto LABEL_5;
  }

  PeoplePickerViewController.isMultiwayAllowedForCurrentRecipients()();
}

id PeoplePickerViewController.isAVLessSharePlayAllowedForCurrentRecipients()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter();
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = *(*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) + 16);
  result = specialized Array.count.getter();
  if (!__OFADD__(v6, result))
  {
    if (PeoplePickerViewController.maxParticipantLimit.getter() >= result + v6)
    {
      v8 = 0;
      v9 = v3 & 0xC000000000000001;
      while (1)
      {
        v10 = v5 == v8;
        if (v5 == v8)
        {
          goto LABEL_15;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v8, v9 == 0, v3);
        if (v9)
        {
          result = MEMORY[0x1BFB22010](v8, v3);
        }

        else
        {
          result = *(v3 + 8 * v8 + 32);
        }

        v11 = result;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_17;
        }

        CNComposeRecipient.idsDestinationsMatchingAddress()();
        if ((PeoplePickerViewController.isMultiwayAllowed(for:)(v12, &selRef_isiMessageAvailableForAnyDestinationInDestinations_) & 1) == 0)
        {

          break;
        }

        v13 = PeoplePickerViewController.isAVLessSharePlayCapable(for:)();

        ++v8;
        if ((v13 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_14:
    v10 = 0;
LABEL_15:

    return v10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t PeoplePickerViewController.isTelephonyAllowedForCurrentState()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    return 0;
  }

  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter() != 1 || !specialized Array.count.getter())
  {

    return 0;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1BFB22010](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;
  result = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v3, &selRef_address);
  if (v6)
  {
    v7 = result;
    v8 = v6;

    v9 = PeoplePickerViewController.isTelephonyCallAllowed(for:)(v7, v8);

    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PeoplePickerViewController.cancelQueries()()
{
  v0 = [objc_opt_self() sharedManager];
  [v0 cancelQueries];
}

uint64_t CNComposeRecipient.idsDestinations()()
{
  v49 = MEMORY[0x1E69E7CD0];
  if (![v0 isGroup])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BA930;
    v11 = *MEMORY[0x1E695C208];
    v12 = *MEMORY[0x1E695C330];
    *(v10 + 32) = *MEMORY[0x1E695C208];
    *(v10 + 40) = v12;
    v13 = v11;
    v14 = v12;
    v15 = outlined bridged method (mbnn) of @objc CNComposeRecipient.contactWithKeys(toFetch:)(v10, v0);
    if (v15)
    {
      v47 = v15;
      v16 = [v15 emailAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      result = specialized Array.count.getter();
      if (result)
      {
        v18 = result;
        if (result < 1)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        for (i = 0; i != v18; ++i)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1BFB22010](i, v17);
          }

          else
          {
            v20 = *(v17 + 8 * i + 32);
          }

          v21 = v20;
          v22 = [v20 value];
          v23 = TUCopyIDSCanonicalAddressForDestinationID();

          if (v23)
          {
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;

            specialized Set._Variant.insert(_:)(v48, v24, v26);
          }

          else
          {
          }
        }
      }

      v27 = [v47 phoneNumbers];
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      result = specialized Array.count.getter();
      if (result)
      {
        v29 = result;
        if (result < 1)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        for (j = 0; j != v29; ++j)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1BFB22010](j, v28);
          }

          else
          {
            v31 = *(v28 + 8 * j + 32);
          }

          v32 = v31;
          v33 = [v31 value];
          v34 = [v33 stringValue];

          if (!v34)
          {
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = MEMORY[0x1BFB209B0](v35);
          }

          v36 = TUCopyIDSCanonicalAddressForDestinationID();

          if (v36)
          {
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            specialized Set._Variant.insert(_:)(v48, v37, v39);
          }

          else
          {
          }
        }
      }
    }

    else
    {
      v40 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_address);
      if (!v41)
      {
        return v49;
      }

      v42 = MEMORY[0x1BFB209B0](v40);

      v43 = TUCopyIDSCanonicalAddressForDestinationID();

      if (!v43)
      {
        return v49;
      }

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      specialized Set._Variant.insert(_:)(v48, v44, v46);
    }

LABEL_40:

    return v49;
  }

  result = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v0);
  if (result)
  {
    v2 = result;
    result = specialized Array.count.getter();
    if (result)
    {
      v3 = result;
      if (result >= 1)
      {
        v4 = 0;
        v5 = MEMORY[0x1E69E7CD0];
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1BFB22010](v4, v2);
          }

          else
          {
            v6 = *(v2 + 8 * v4 + 32);
          }

          v7 = v6;
          ++v4;
          v8 = CNComposeRecipient.idsDestinations()();
          specialized Set.union<A>(_:)(v8, v5);
          v5 = v9;
        }

        while (v3 != v4);

        return v5;
      }

      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t PeoplePickerViewController.callFilterPolicy(for:)()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 callFilterController];

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;
  v3 = TUPreferredFaceTimeBundleIdentifier();
  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = MEMORY[0x1BFB209B0](v4);
  }

  v5 = [v1 policyForAddresses:v2.super.isa forBundleIdentifier:v3];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void PeoplePickerViewController.removeRecipient(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.conversationKit;
  v5 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  a1;
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:type:_:)("Removing recipient: %@", 22, 2, &dword_1BBC58000, v4, v5, v6);

  v10 = CNComposeRecipient.idsDestinations()();
  swift_beginAccess();
  specialized Set._subtract<A>(_:)(v10);
  swift_endAccess();

  PeoplePickerViewController.currentRecipientsAddresses()();
  v11 = PeoplePickerViewController.callFilterPolicy(for:)();

  v12 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictionPolicy;
  swift_beginAccess();
  *(v2 + v12) = v11;

  PeoplePickerViewController.updateState()();
}

id PeoplePickerViewController.coordinatorFinished(_:completed:)(void *a1, char a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();
  if (a2)
  {

    return [v2 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id PeoplePickerViewController.coordinatorFailed(_:)(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id PeoplePickerViewController.isTelephonyCallAllowed(for:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  if (([v4 supportsPrimaryCalling] & 1) != 0 || !objc_msgSend(v4, sel_supportsTelephonyCalls))
  {
    return 0;
  }

  v5 = MEMORY[0x1BFB209B0](a1, a2);
  v6 = [v5 destinationIdIsPhoneNumber];

  return v6;
}

void CNComposeRecipient.idsDestinationsMatchingAddress()()
{
  if ([v0 isGroup])
  {
    v1 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v0);
    if (!v1)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v2 = v1;
    v3 = specialized Array.count.getter();
    if (v3)
    {
      v4 = v3;
      v36 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if ((v4 & 0x8000000000000000) == 0)
      {
        v5 = 0;
        v6 = v36;
        while (1)
        {
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1BFB22010](v5, v2);
          }

          else
          {
            if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v8 = *(v2 + 8 * v5 + 32);
          }

          v9 = v8;
          v10 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v8, &selRef_address);
          if (v11)
          {
            v12 = MEMORY[0x1BFB209B0](v10);
          }

          else
          {
            v12 = 0;
          }

          v13 = TUCopyIDSCanonicalAddressForDestinationID();

          if (!v13)
          {
            goto LABEL_40;
          }

          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v17 = *(v36 + 16);
          if (v17 >= *(v36 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          *(v36 + 16) = v17 + 1;
          v18 = v36 + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v16;
          ++v5;
          if (v7 == v4)
          {

            goto LABEL_25;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA940;
    v19 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_address);
    if (v20)
    {
      v21 = MEMORY[0x1BFB209B0](v19);
    }

    else
    {
      v21 = 0;
    }

    v22 = TUCopyIDSCanonicalAddressForDestinationID();

    if (!v22)
    {
      goto LABEL_42;
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v6 + 32) = v23;
    *(v6 + 40) = v25;
  }

LABEL_25:
  v26 = 0;
  v27 = *(v6 + 16);
  v28 = (v6 + 40);
  v29 = MEMORY[0x1E69E7CC0];
  while (v27 != v26)
  {
    if (v26 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v31 = *(v28 - 1);
    v30 = *v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v34;
    }

    v32 = *(v29 + 16);
    if (v32 >= *(v29 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v35;
    }

    *(v29 + 16) = v32 + 1;
    v33 = v29 + 16 * v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    v28 += 2;
    ++v26;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v29);
}

void PeoplePickerViewController.hasMatchingMeHandle(for:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_9:
    v10 = (*(v3 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];

    v13 = MEMORY[0x1BFB209B0](v11, v12);

    v14 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
    if (v15)
    {
      v16 = MEMORY[0x1BFB209B0](v14);
    }

    else
    {
      v16 = 0;
    }

    v6 &= v6 - 1;
    v17 = TUDestinationIDsAreEqual();

    if (v17)
    {
LABEL_13:

      return;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 56 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void PeoplePickerViewController.isIDSMultiwayLookupPending(for:)(void *a1)
{
  if ([a1 isGroup])
  {
    v2 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(a1);
    if (v2)
    {
      v3 = v2;
      v4 = specialized Array.count.getter();
      v5 = 0;
      while (1)
      {
        if (v4 == v5)
        {
LABEL_10:

          return;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFB22010](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        PeoplePickerViewController.isIDSMultiwayLookupPending(for:)(v6);
        v9 = v8;

        ++v5;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v10 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
    if (v11)
    {
      v12 = MEMORY[0x1BFB209B0](v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v13)
    {
      v14 = [objc_opt_self() sharedManager];
      [v14 faceTimeMultiwayAvailabilityForDestination_];
    }
  }
}

BOOL PeoplePickerViewController.isIDSLookupPending(for:)(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter();

  v7 = &selRef_faceTimeMultiwayAvailabilityForDestination_;
  if (v6 <= 1 && *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) != 1)
  {
    v7 = &selRef_faceTimeVideoAvailabilityForDestination_;
  }

  v8 = [objc_opt_self() sharedManager];
  v9 = MEMORY[0x1BFB209B0](a1, a2);
  v10 = [v8 *v7];

  return v10 == 0;
}

id PeoplePickerViewController.isMultiwayAllowed(for:)(uint64_t a1, SEL *a2)
{
  v3 = [objc_opt_self() sharedManager];

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 *a2];

  return v5;
}

id PeoplePickerViewController.isAVLessSharePlayCapable(for:)()
{
  v0 = [objc_opt_self() sharedManager];
  isa = Set._bridgeToObjectiveC()().super.isa;
  v2 = [v0 isAVLessSharePlayCapableForAnyDestinationInDestinations_];

  return v2;
}

BOOL PeoplePickerViewController.isFaceTimeAvailable(for:)(uint64_t a1, void *a2)
{
  if (PeoplePickerViewModel.isAudioAvailable(for:)(*&a1))
  {
    return 1;
  }

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  return PeoplePickerViewModel.isVideoAvailable(for:)(v5);
}

id PeoplePickerViewController.pickablePerson(for:)(void *a1)
{
  v2 = CNComposeRecipient.tuHandle.getter();
  if (v2)
  {
    v3 = v2;
    if ([a1 contact])
    {
      v4 = objc_allocWithZone(type metadata accessor for PickablePerson());
      v5 = OUTLINED_FUNCTION_38_2();
    }

    else
    {
      v13 = objc_allocWithZone(type metadata accessor for PickablePerson());
      v5 = 0;
      v6 = v3;
    }

    return PickablePerson.init(contact:handle:)(v5, v6);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BA940;
    outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
    v8 = MEMORY[0x1E69E6158];
    if (v9)
    {
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    *(v7 + 56) = v8;
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v15);

    return 0;
  }
}

uint64_t CNComposeRecipient.normalizedAddresses()()
{
  if (![v0 isGroup])
  {
    v17 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_normalizedAddress);
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = v17;
    v20 = v18;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
LABEL_30:
      v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v29;
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v30;
      v1 = *(v30 + 16);
      v5 = v1 + 1;
      if (v1 < *(v30 + 24) >> 1)
      {
LABEL_31:
        *(v6 + 16) = v5;
        v31 = v6 + 16 * v1;
        *(v31 + 32) = v0;
        *(v31 + 40) = v3;
        return v6;
      }

LABEL_40:
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v32;
      goto LABEL_31;
    }

    v22 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_normalizedAddress);
    if (v23)
    {
      v24 = v22;
      v25 = v23;

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v26;
      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v33;
      }

      *(v6 + 16) = v27 + 1;
      v28 = v6 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
LABEL_29:

      return v6;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v0);
  if (result)
  {
    v3 = result;
    v4 = specialized Array.count.getter();
    if (v4)
    {
      v5 = v4;
      if (v4 >= 1)
      {
        v1 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v7 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB22010](v1, v3) : *(v3 + 8 * v1 + 32);
          v0 = v7;
          v8 = CNComposeRecipient.normalizedAddresses()();
          v9 = *(v8 + 16);
          v10 = *(v6 + 16);
          if (__OFADD__(v10, v9))
          {
            break;
          }

          v11 = v8;
          if (!swift_isUniquelyReferenced_nonNull_native() || (v12 = *(v6 + 24) >> 1, v12 < v10 + v9))
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v6 = v13;
            v12 = *(v13 + 24) >> 1;
          }

          if (*(v11 + 16))
          {
            if (v12 - *(v6 + 16) < v9)
            {
              goto LABEL_37;
            }

            swift_arrayInitWithCopy();

            if (v9)
            {
              v14 = *(v6 + 16);
              v15 = __OFADD__(v14, v9);
              v16 = v14 + v9;
              if (v15)
              {
                goto LABEL_38;
              }

              *(v6 + 16) = v16;
            }
          }

          else
          {

            if (v9)
            {
              goto LABEL_36;
            }
          }

          ++v1;

          if (v5 == v1)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      __break(1u);
      goto LABEL_40;
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t _s15ConversationKit18PeoplePickerRankerC14findDuetHandle4from02isH8EligiblexSgSayxG_SbSSXEtAA0cdH0RzlFZAA22RecipientResultWrapperC_Tt2g5(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = specialized Array.count.getter();
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB22010](i, a1);
      v7 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (RecipientResultWrapper.isDuetHandle.getter())
    {
      v8 = RecipientResultWrapper.idsHandle.getter();
      if (v9)
      {
        v10 = a2(v8);

        if (v10)
        {
          return v7;
        }
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t PeoplePickerViewController.addPossibleRecipient(_:)(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  specialized Set._Variant.insert(_:)(&v11, v4);
  v5 = v11;
  swift_endAccess();

  if ([v4 isGroup])
  {
    v6 = (v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsGroupDestinations);
  }

  else
  {
    v6 = (v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations);
    swift_beginAccess();
  }

  v7 = *v6;

  v8 = CNComposeRecipient.idsDestinations()();
  specialized Set.union<A>(_:)(v8, v7);
  *v6 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x1E695BF80]);
  Subject<>.send()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  return Subject<>.send()();
}

void PeoplePickerViewController.removePossibleRecipient(_:)(void *a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  swift_beginAccess();
  v45 = v1;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type CNComposeRecipient and conformance NSObject, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v4 = v49;
    v5 = v50;
    v6 = v51;
    v7 = v52;
    v8 = v53;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v4 = v3;
  }

  v12 = (v6 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_28:
      outlined consume of Set<TUHandle>.Iterator._Variant(v4);
LABEL_29:

      return;
    }

    while (1)
    {
      v18 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
      v20 = v19;
      v47 = v17;
      v21 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v17, &selRef_address);
      if (!v20)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_25;
      }

      if (v18 == v21 && v20 == v22)
      {

LABEL_31:
        outlined consume of Set<TUHandle>.Iterator._Variant(v4);

        swift_beginAccess();
        v25 = specialized Set._Variant.remove(_:)();
        swift_endAccess();

        v26 = [*(v45 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = specialized Array.count.getter();
        v29 = 0;
        while (2)
        {
          if (v28 == v29)
          {

            v40 = *(v45 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses);

            v41 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
            if (!v42)
            {
              goto LABEL_60;
            }

            v43 = specialized Set.contains(_:)(v41, v42, v40);

            if (!v43)
            {
              v44 = CNComposeRecipient.idsDestinations()();
              swift_beginAccess();
              specialized Set._subtract<A>(_:)(v44);
              swift_endAccess();

              goto LABEL_29;
            }

            goto LABEL_55;
          }

          if ((v27 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1BFB22010](v29, v27);
          }

          else
          {
            if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_59;
            }

            v30 = *(v27 + 8 * v29 + 32);
          }

          v31 = v30;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_58;
          }

          v32 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
          v34 = v33;
          v35 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v31, &selRef_address);
          v37 = v36;
          if (v34)
          {
            if (v36)
            {
              if (v32 == v35 && v34 == v36)
              {

                return;
              }

              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v39)
              {
                goto LABEL_54;
              }

              goto LABEL_49;
            }
          }

          else
          {

            if (!v37)
            {
LABEL_54:

LABEL_55:

              return;
            }
          }

LABEL_49:
          ++v29;
          continue;
        }
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_31;
      }

LABEL_26:
      v7 = v15;
      v8 = v16;
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
        swift_dynamicCast();
        v17 = v48;
        v15 = v7;
        v16 = v8;
        if (v48)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    if (!v22)
    {
      goto LABEL_31;
    }

LABEL_25:

    goto LABEL_26;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_28;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void PeoplePickerViewController.providersChanged(for:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BAA20;
  *(v3 + 56) = type metadata accessor for PeoplePickerViewController();
  v4 = MEMORY[0x1E69E81C8];
  *(v3 + 64) = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PeoplePickerViewController and conformance NSObject, v5, type metadata accessor for PeoplePickerViewController, MEMORY[0x1E69E81C8]);
  *(v3 + 32) = v1;
  *(v3 + 96) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallProviderManager, 0x1E69D8A90);
  *(v3 + 104) = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUCallProviderManager and conformance NSObject, &lazy cache variable for type metadata for TUCallProviderManager, 0x1E69D8A90, v4);
  *(v3 + 72) = a1;
  v6 = v1;
  v7 = a1;
  OUTLINED_FUNCTION_48_7("%@ is handling providersChangedForProviderManager %@", 52, v8, &dword_1BBC58000);

  PeoplePickerViewController.refreshCallerIDPicker()();
}

void PeoplePickerViewController.searchController(_:willDisplayRowFor:)(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_49_7();
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_41();
    type metadata accessor for NSObject(v7, v8, v9);
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_41();
    v14 = lazy protocol witness table accessor for type TUCall and conformance TUCall(v10, v11, v12, v13);
    OUTLINED_FUNCTION_50_8(v14);
    v6 = v34;
    v3 = v35;
    v2 = v36;
    v15 = v37;
    v4 = v38;
  }

  else
  {
    OUTLINED_FUNCTION_6_41();
    v15 = 0;
  }

  v16 = (v2 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408), swift_dynamicCast(), (v21 = v33) == 0))
      {
LABEL_26:
        v30 = OUTLINED_FUNCTION_4_42();
        outlined consume of Set<TUHandle>.Iterator._Variant(v30);

        PeoplePickerViewController.addPossibleRecipient(_:)(a2);
        return;
      }

      goto LABEL_14;
    }

    v17 = v15;
    if (!v4)
    {
      break;
    }

LABEL_10:
    OUTLINED_FUNCTION_7_1();
    v4 = v19 & v18;
    v21 = *(*(v6 + 48) + ((v15 << 9) | (8 * v20)));
    if (!v21)
    {
      goto LABEL_26;
    }

LABEL_14:
    v22 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a2, &selRef_address);
    v24 = v23;
    v25 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v21, &selRef_address);
    v27 = v26;
    if (v24)
    {
      if (!v26)
      {

        goto LABEL_25;
      }

      if (v22 == v25 && v24 == v26)
      {

LABEL_28:
        v31 = OUTLINED_FUNCTION_4_42();
        outlined consume of Set<TUHandle>.Iterator._Variant(v31);

        return;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (!v27)
      {
        goto LABEL_28;
      }

LABEL_25:
    }
  }

  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= v16)
    {
      goto LABEL_26;
    }

    ++v17;
    if (*(v3 + 8 * v15))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void PeoplePickerViewController.searchController(_:preferredRecipientFor:)(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_49_7();
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_41();
    type metadata accessor for NSObject(v7, v8, v9);
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_41();
    v14 = lazy protocol witness table accessor for type TUCall and conformance TUCall(v10, v11, v12, v13);
    OUTLINED_FUNCTION_50_8(v14);
    v6 = v36;
    v3 = v37;
    v2 = v38;
    v15 = v39;
    v4 = v40;
  }

  else
  {
    OUTLINED_FUNCTION_6_41();
    v15 = 0;
  }

  v16 = (v2 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408), swift_dynamicCast(), (v21 = v35) == 0))
      {
LABEL_26:
        v32 = OUTLINED_FUNCTION_4_42();
        outlined consume of Set<TUHandle>.Iterator._Variant(v32);

        return;
      }

      goto LABEL_14;
    }

    v17 = v15;
    if (!v4)
    {
      break;
    }

LABEL_10:
    OUTLINED_FUNCTION_7_1();
    v4 = v19 & v18;
    v21 = *(*(v6 + 48) + ((v15 << 9) | (8 * v20)));
    if (!v21)
    {
      goto LABEL_26;
    }

LABEL_14:
    v22 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a2, &selRef_address);
    v24 = v23;
    v25 = OUTLINED_FUNCTION_15_14();
    v27 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v25, v26);
    v29 = v28;
    if (v24)
    {
      if (!v28)
      {

        goto LABEL_25;
      }

      if (v22 == v27 && v24 == v28)
      {

LABEL_28:
        v33 = OUTLINED_FUNCTION_4_42();
        outlined consume of Set<TUHandle>.Iterator._Variant(v33);

        PeoplePickerViewController.preferredRecipient(for:)(a2);
        return;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (!v29)
      {
        goto LABEL_28;
      }

LABEL_25:
    }
  }

  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= v16)
    {
      goto LABEL_26;
    }

    ++v17;
    if (*(v3 + 8 * v15))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void PeoplePickerViewController.searchController(_:didTapTableAccessoryFor:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA940;
  *(v5 + 56) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  *(v5 + 64) = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type CNComposeRecipient and conformance NSObject, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408, MEMORY[0x1E69E81C8]);
  *(v5 + 32) = a2;
  v6 = a2;
  OUTLINED_FUNCTION_48_7("Tapped contact accessory button for recipient %{sensitive}@", 59, v7, &dword_1BBC58000);

  v8 = [v6 contact];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 hasBeenPersisted];
    v11 = objc_opt_self();
    if (v10)
    {
      v12 = [v11 viewControllerForContact_];
    }

    else
    {
      v12 = [v11 viewControllerForUnknownContact_];
    }
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
    v13 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v6, &selRef_address);
    v9 = @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(v15, 0, 0, v13, v14);
    v12 = [objc_opt_self() viewControllerForUnknownContact_];
  }

  v16 = v12;

  v17 = *&v3[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation];
  if (v17)
  {
    objc_opt_self();
    v18 = v16;
    v19 = OUTLINED_FUNCTION_40_2();
    v21 = [v19 v20];
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x1E695CE28]);
    v23 = v16;
    v21 = [v22 init];
  }

  v29 = v21;
  [v29 setIncludeDonatedContacts_];
  [v29 setIncludeSuggestedContacts_];
  v24 = [v16 view];
  if (v24)
  {
    v25 = v24;
    v26 = [objc_opt_self() systemBackgroundColor];
    [v25 setBackgroundColor_];

    [v16 setAllowsEditing_];
    [v16 setAllowsActions_];
    v27 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    [v16 setContactStore_];
    v28 = [v3 navigationController];
    [v28 pushViewController:v16 animated:1];
  }

  else
  {
    __break(1u);
  }
}

void PeoplePickerViewController.didTapTextViewAccessoryButton(for:anchoredTo:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationKit);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v11 = v6;
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Showing contact picker from accessory button, anchorView: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if (*(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler))
  {
    v15 = *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 80);
    swift_unknownObjectRetain();
    v17(v6, ObjectType, v15);
    swift_unknownObjectRelease();
  }
}

uint64_t PeoplePickerViewController.searchController(_:contextMenuConfigurationFor:)(void *a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    v3 = [a1 atomViewForRecipient_];
    if (!v3)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.conversationKit);
      v3 = Logger.logObject.getter();
      v5 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_25(v5))
      {
        v6 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v6);
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v7, v8, "Unable to grab recipient atom view.");
        OUTLINED_FUNCTION_26();
      }
    }
  }

  return 0;
}

void PeoplePickerViewController.actionBar(_:selectedAction:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v5 = static OS_os_log.conversationKit;
      v6 = static os_log_type_t.info.getter();
      os_log(_:dso:log:type:_:)("create link button tapped in people picker", 42, 2, &dword_1BBC58000, v5, v6, MEMORY[0x1E69E7CC0]);
      v7 = type metadata accessor for LinkCreationCoordinator();
      v8 = objc_allocWithZone(v7);
      *&v8[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_shareSheetViewController] = 0;
      v9 = &v8[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_conversationLink];
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      v10 = &v8[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_parentViewController];
      OUTLINED_FUNCTION_3_5(&v8[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_parentViewController], v30);
      *(v10 + 1) = &protocol witness table for PeoplePickerViewController;
      swift_unknownObjectUnownedInit();
      v29.receiver = v8;
      v29.super_class = v7;
      v11 = objc_msgSendSuper2(&v29, sel_init);
      v12 = *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator);
      *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator) = v11;
      v13 = v11;

      (*((*MEMORY[0x1E69E7D40] & *v13) + 0xB8))(a2);
      OUTLINED_FUNCTION_52_5();
    }

    else
    {
      switch(a2)
      {
        case 1:
          if (one-time initialization token for conversationKit != -1)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        case 2:
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_41_0();
          os_log(_:dso:log:type:_:)(v20);
          OUTLINED_FUNCTION_52_5();

          PeoplePickerViewController.addPeople()();
          break;
        case 3:
          OUTLINED_FUNCTION_52_5();

          PeoplePickerViewController.handleShareLinkWithMessagesAction()();
          break;
        case 4:
          OUTLINED_FUNCTION_52_5();

          PeoplePickerViewController.presentMessageComposeSheetWithActivity()(v19);
          break;
        case 5:
          OUTLINED_FUNCTION_52_5();

          [v26 v27];
          break;
        default:
          if (one-time initialization token for conversationKit != -1)
          {
LABEL_32:
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

LABEL_26:
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_41_0();
          os_log(_:dso:log:type:_:)(v23);
          OUTLINED_FUNCTION_52_5();

          PeoplePickerViewController.startCall(videoEnabled:)(v24);
          break;
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v14 = static OS_os_log.conversationKit;
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Telephony call button tapped", 28, 2, &dword_1BBC58000, v14, v15, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_52_5();

    PeoplePickerViewController.dialTelephonyCall(handle:rttType:)(v16, v17);
  }
}

void PeoplePickerViewController.handleShareLinkWithMessagesAction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
  swift_beginAccess();
  PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(*(v1 + 16), 2);
  v2 = PeoplePickerViewController.smsAccount.getter();
  if (v2)
  {

    v3 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount;
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount);
    if (!v4)
    {
      __break(1u);
      goto LABEL_10;
    }

    v2 = [v4 isSMSRelayCapable];
    if (v2)
    {
      v5 = *(v0 + v3);
      if (v5)
      {
        v2 = [v5 allowsSMSRelay];
        if ((v2 & 1) == 0)
        {
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();

          PeoplePickerViewController.showSMSRelayUpgradeAlert(withCompletion:)(partial apply for closure #1 in PeoplePickerViewController.handleShareLinkWithMessagesAction(), v6);

          return;
        }

        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      return;
    }
  }

LABEL_6:
  PeoplePickerViewController.presentMessageComposeSheetWithConversationLink()(v2);
}

double PeoplePickerViewController.presentMessageComposeSheetWithActivity()(uint64_t a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_31:
    swift_once();
  }

  v2 = static OS_os_log.conversationKit;
  v3 = static os_log_type_t.default.getter();
  v4 = MEMORY[0x1E69E7CC0];
  os_log(_:dso:log:type:_:)("Sharing group activity via message compose sheet", 48, 2, &dword_1BBC58000, v2, v3, MEMORY[0x1E69E7CC0]);
  v22 = v1;
  v1 = [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter();
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB22010](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v1 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v9 = CNComposeRecipient.normalizedAddresses()();

    v1 = *(v9 + 16);
    v10 = *(v4 + 16);
    if (__OFADD__(v10, v1))
    {
      goto LABEL_27;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v1 + v10 > *(v4 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v11;
    }

    if (*(v9 + 16))
    {
      if ((*(v4 + 24) >> 1) - *(v4 + 16) < v1)
      {
        goto LABEL_29;
      }

      swift_arrayInitWithCopy();

      if (v1)
      {
        v12 = *(v4 + 16);
        v13 = __OFADD__(v12, v1);
        v14 = v1 + v12;
        if (v13)
        {
          goto LABEL_30;
        }

        *(v4 + 16) = v14;
      }
    }

    else
    {

      if (v1)
      {
        goto LABEL_28;
      }
    }
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v22) + 0x370))(v15))
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    v19 = CNAutocompleteSearchController.messagesChatGUID.getter();
    (*(v17 + 48))(v4, v19, v20, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  return result;
}

void closure #2 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void PeoplePickerViewController.presentMessageComposeSheetWithConversationLink()(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = static OS_os_log.conversationKit;
    v4 = static os_log_type_t.default.getter();
    v5 = MEMORY[0x1E69E7CC0];
    os_log(_:dso:log:type:_:)("Sharing conversation link via message compose view controller", 61, 2, &dword_1BBC58000, v3, v4, MEMORY[0x1E69E7CC0]);
    v6 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar;
    v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar);
    v8 = MEMORY[0x1E69E7D40];
    if (v7)
    {
      v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x160);
      v10 = v7;
      v9(0);
    }

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink);
    if (!v12)
    {
      v29 = v8;
      v30 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation);
      if (v30)
      {
        v31 = objc_opt_self();
        v32 = v30;
        v33 = [v31 sharedInstance];
        v34 = [v33 conversationManager];

        v51 = partial apply for closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink();
        v52 = v11;
        aBlock = MEMORY[0x1E69E9820];
        v48 = 1107296256;
        v49 = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
        v50 = &block_descriptor_127;
        v35 = _Block_copy(&aBlock);

        [v34 generateLinkForConversation:v32 completionHandler:v35];

        _Block_release(v35);
      }

      else
      {
        v37 = [objc_opt_self() sharedInstance];
        v38 = [v37 conversationManager];

        PeoplePickerViewController.currentRecipientHandlesWithFaceTimeAvailable()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, MEMORY[0x1E69E81B8]);
        isa = Set._bridgeToObjectiveC()().super.isa;

        v51 = partial apply for closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink();
        v52 = v11;
        aBlock = MEMORY[0x1E69E9820];
        v48 = 1107296256;
        v49 = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
        v50 = &block_descriptor_124;
        v40 = _Block_copy(&aBlock);

        [v38 generateLinkWithInvitedMemberHandles:isa linkLifetimeScope:0 completionHandler:v40];

        _Block_release(v40);
      }

      v8 = v29;
LABEL_24:
      v41 = *(v2 + v6);
      if (v41)
      {
        v42 = *((*v8 & *v41) + 0x160);
        v43 = v41;
        v42(1);
      }

      return;
    }

    v45 = v6;
    v46 = v2;
    v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    v14 = v12;
    v15 = [v13 recipients];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = specialized Array.count.getter();
    v44 = v14;
    if (!v17)
    {

      v19 = MEMORY[0x1E69E7CC0];
LABEL_21:
      v2 = v46;
      v36 = *(v46 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
      swift_beginAccess();
      specialized PeoplePickerViewController.presentMessageComposeViewController(for:withRecipientHandles:shouldIgnoreEmails:delegate:)(v44, v19, *(v36 + 16) != 1, v2, v2);

      v6 = v45;
      goto LABEL_24;
    }

    v2 = v17;
    aBlock = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v2 < 0)
    {
      break;
    }

    v18 = 0;
    v19 = aBlock;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB22010](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v21 = *(v16 + 8 * v18 + 32);
      }

      v22 = v21;
      v23 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v21, &selRef_address);
      if (!v24)
      {
        goto LABEL_31;
      }

      v25 = v23;
      v26 = v24;

      aBlock = v19;
      v27 = *(v19 + 16);
      if (v27 >= *(v19 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = aBlock;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v26;
      ++v18;
      if (v20 == v2)
      {

        v8 = MEMORY[0x1E69E7D40];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void PeoplePickerViewController.showSMSRelayUpgradeAlert(withCompletion:)(uint64_t a1, uint64_t a2)
{
  v5 = PeoplePickerViewController.smsAccount.getter();
  if (v5)
  {
    v6 = v5;
    v35 = v2;
    v36 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.conversationKit;
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Offering to enable SMS relay", 28, 2, &dword_1BBC58000, v7, v8, MEMORY[0x1E69E7CC0]);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
    v9 = objc_opt_self();
    v10 = [v9 conversationKit];
    v39._object = 0xE000000000000000;
    v11._object = 0x80000001BC4F96A0;
    v11._countAndFlagsBits = 0xD000000000000012;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v39);

    v15 = [v9 conversationKit];
    v40._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    v16._object = 0x80000001BC4F96C0;
    v17.value._countAndFlagsBits = 0x61737265766E6F43;
    v17.value._object = 0xEF74694B6E6F6974;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v40);

    v37 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v14._countAndFlagsBits, v14._object, v19._countAndFlagsBits, v19._object, 1);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
    v20 = [v9 conversationKit];
    v41._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x4E4F5F4E525554;
    v21._object = 0xE700000000000000;
    v22.value._countAndFlagsBits = 0x61737265766E6F43;
    v22.value._object = 0xEF74694B6E6F6974;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v41);

    v24 = swift_allocObject();
    v24[2] = v6;
    v24[3] = v36;
    v24[4] = a2;
    v25 = v6;

    v26 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
    [v37 addAction_];

    v27 = [v9 &off_1E7FE9588];
    v42._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0x4C45434E4143;
    v28._object = 0xE600000000000000;
    v29.value._countAndFlagsBits = 0x61737265766E6F43;
    v29.value._object = 0xEF74694B6E6F6974;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v42);

    v31 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
    [v37 addAction_];

    [v35 presentViewController:v37 animated:1 completion:0];
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.conversationKit;
    v33 = static os_log_type_t.default.getter();
    v34 = MEMORY[0x1E69E7CC0];

    os_log(_:dso:log:type:_:)("Not offering to enable SMS relay because no SMS account was found", 65, 2, &dword_1BBC58000, v32, v33, v34);
  }
}

void closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink()(void *a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a2)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v15 = static OS_os_log.conversationKit;
      v16 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BC4BA940;
      aBlock[0] = a2;
      v18 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v19 = String.init<A>(reflecting:)();
      v21 = v20;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      os_log(_:dso:log:type:_:)("Error generating a conversation link: %@", 40, 2, &dword_1BBC58000, v15, v16, v17);
    }

    else if (a1)
    {
      v22 = *(Strong + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink);
      *(Strong + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = a1;
      v23 = a1;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v33 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v14;
      *(v24 + 24) = v23;
      aBlock[4] = partial apply for closure #1 in closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink();
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_133;
      v30 = _Block_copy(aBlock);
      v32 = v23;
      v31 = v14;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v25 = v30;
      v26 = v33;
      MEMORY[0x1BFB215C0](0, v12, v8, v30);
      _Block_release(v25);

      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v27 = static OS_os_log.conversationKit;
      v28 = static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)("Failed to generate a valid link, but no error was returned", 58, 2, &dword_1BBC58000, v27, v28, MEMORY[0x1E69E7CC0]);
    }
  }
}

void closure #1 in closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink()(char *a1, void *a2)
{
  v4 = [*&a1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController] recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter();
  if (v6)
  {
    v7 = v6;
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v20 = a2;
      v8 = 0;
      v9 = v21;
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB22010](v8, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v11 = *(v5 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v11, &selRef_address);
        if (!v14)
        {
          goto LABEL_19;
        }

        v15 = v13;
        v16 = v14;

        v17 = *(v21 + 16);
        if (v17 >= *(v21 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        *(v21 + 16) = v17 + 1;
        v18 = v21 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v16;
        ++v8;
        if (v10 == v7)
        {

          a2 = v20;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v19 = *&a1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel];
    swift_beginAccess();
    specialized PeoplePickerViewController.presentMessageComposeViewController(for:withRecipientHandles:shouldIgnoreEmails:delegate:)(a2, v9, *(v19 + 16) != 1, a1, a1);
  }
}

Swift::Void __swiftcall PeoplePickerViewController.messageComposeViewController(_:didFinishWith:)(MFMessageComposeViewController *_, MessageComposeResult didFinishWith)
{
  [(MFMessageComposeViewController *)_ dismissViewControllerAnimated:1 completion:0];

  PeoplePickerViewController.handleMessageComposeCompletion(withResult:)(didFinishWith);
}

void PeoplePickerViewController.handleMessageComposeCompletion(withResult:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    if (*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) == 1 && a1 == 1)
    {
      PeoplePickerViewController.addPeople()();
    }
  }

  else
  {
    PeoplePickerViewController.handleMessageComposeCompletionForInviteFlow(withResult:)(a1);
  }
}

void PeoplePickerViewController.handleMessageComposeCompletionForInviteFlow(withResult:)(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink);
  if (v4)
  {
    if (a1 != 1)
    {
      v22 = objc_opt_self();
      v23 = v4;
      v24 = [v22 sharedInstance];
      v25 = [v24 conversationManager];

      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      aBlock[4] = partial apply for closure #1 in PeoplePickerViewController.handleMessageComposeCompletionForInviteFlow(withResult:);
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_109;
      v27 = _Block_copy(aBlock);
      v28 = v23;

      [v25 invalidateLink:v28 completionHandler:v27];

      _Block_release(v27);
      v29 = *(v2 + v3);
      *(v2 + v3) = 0;

      return;
    }

    v39 = v4;
    v5 = PeoplePickerViewController.currentRecipientsWithFaceTimeUnvailable()();
    v6 = PeoplePickerViewController.currentRecipientsWithFaceTimeAvailable()();
    v7 = specialized Array.count.getter();
    if (v7 < 1 || (v7 = specialized Array.count.getter(), v7 != 1))
    {
      v18 = 0;
      goto LABEL_17;
    }

    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](0, v6);
      }

      else
      {
        v8 = *(v6 + 32);
      }

      v9 = v8;
      v10 = *&v8[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address];
      v11 = *&v8[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address + 8];

      v12 = MEMORY[0x1BFB209B0](v10, v11);

      v13 = TUCopyIDSCanonicalAddressForDestinationID();

      if (v13)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17._countAndFlagsBits = v14;
        v17._object = v16;
        v18 = PeoplePickerViewModel.isWebCapableAvailable(for:)(v17);

LABEL_17:
        if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x370))(v7))
        {
          v31 = v30;
          ObjectType = swift_getObjectType();
          (*(v31 + 56))(v39, v5, v6, v18, ObjectType, v31);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.conversationKit;
    v34 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BC4BA940;
    aBlock[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit14PickablePersonCGMd, &_sSay15ConversationKit14PickablePersonCGMR);
    v36 = String.init<A>(reflecting:)();
    v38 = v37;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    os_log(_:dso:log:type:_:)("Could not get information from facetime available recipients", 60, 2, &dword_1BBC58000, v33, v34, v35);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.conversationKit;
    v20 = static os_log_type_t.error.getter();
    v21 = MEMORY[0x1E69E7CC0];

    os_log(_:dso:log:type:_:)("No conversation link found even though the message compose sheet was presented", 78, 2, &dword_1BBC58000, v19, v20, v21);
  }
}

void closure #1 in PeoplePickerViewController.handleMessageComposeCompletionForInviteFlow(withResult:)(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.conversationKit;
    v7 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
    v9 = a3;
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 64) = v14;
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    v15 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    *(v8 + 96) = v13;
    *(v8 + 104) = v14;
    *(v8 + 72) = v16;
    *(v8 + 80) = v17;
    os_log(_:dso:log:type:_:)("Error attempting to invalidate link %@: %@", 42, 2, &dword_1BBC58000, v6, v7, v8);
  }
}

id @nonobjc CNComposeRecipient.init(contact:address:kind:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v9 = MEMORY[0x1BFB209B0](a2, a3, a5);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithContact:a1 address:v9 kind:a4];

  return v10;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, void *a6)
{
  v7 = a3[1];
  v125 = a6;
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    v113 = v125;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v100 = (v9 + 16);
      v99 = *(v9 + 16);
      for (i = v9; ; v9 = i)
      {
        if (v99 < 2)
        {

          return;
        }

        v101 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v102 = (v9 + 16 * v99);
        v103 = *v102;
        v104 = v100;
        v9 = &v100[2 * v99];
        v105 = *(v9 + 8);
        v106 = (v101 + 8 * *v9);
        v114 = (v101 + 8 * v105);
        v118 = (v101 + 8 * *v102);
        v107 = v113;
        specialized _merge<A>(low:mid:high:buffer:by:)(v118, v106, v114, v112, a5 & 1, v107);
        if (v124)
        {
          break;
        }

        if (v105 < v103)
        {
          goto LABEL_123;
        }

        if (v99 - 2 >= *v104)
        {
          goto LABEL_124;
        }

        v100 = v104;
        *v102 = v103;
        v102[1] = v105;
        v108 = *v104 - v99;
        if (*v104 < v99)
        {
          goto LABEL_125;
        }

        v124 = 0;
        v99 = *v104 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v9 + 16), v108, v9);
        *v104 = v99;
      }

LABEL_107:
      return;
    }

LABEL_132:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    goto LABEL_97;
  }

  v109 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v120 = v9;
      v12 = *(*a3 + 8 * v11);
      v13 = v8;
      v14 = (*a3 + 8 * v8);
      v113 = (8 * v8);
      v16 = *v14;
      v15 = v14 + 2;
      v17 = v8 + 1;
      v9 = swift_allocObject();
      *(v9 + 16) = v125;
      *(swift_allocObject() + 16) = v125;
      v114 = v125;

      v115 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v12, v16, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v9, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:));

      v11 = v17;
      v18 = v13 + 2;
      while (1)
      {
        v19 = v18;
        v20 = v11 + 1;
        if (v20 >= v7)
        {
          break;
        }

        v9 = *(v15 - 1);
        v21 = *v15;
        v22 = v20;
        v23 = v7;
        v24 = swift_allocObject();
        *(v24 + 16) = v114;
        *(swift_allocObject() + 16) = v114;
        v25 = v114;

        v26 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v21, v9, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v24, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:)) & 1;

        v7 = v23;

        ++v15;
        v18 = v19 + 1;
        v11 = v22;
        if ((v115 & 1) != v26)
        {
          goto LABEL_9;
        }
      }

      v11 = v7;
LABEL_9:
      if (v115)
      {
        v10 = v13;
        if (v11 < v13)
        {
          goto LABEL_129;
        }

        if (v13 >= v11)
        {
          v9 = v120;
        }

        else
        {
          if (v7 >= v19)
          {
            v27 = v19;
          }

          else
          {
            v27 = v7;
          }

          v28 = 8 * v27 - 8;
          v29 = v11;
          v30 = v13;
          v31 = v113;
          do
          {
            if (v30 != --v11)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v33 = *&v31[v32];
              *&v31[v32] = *(v32 + v28);
              *(v32 + v28) = v33;
            }

            ++v30;
            v28 -= 8;
            v31 += 8;
          }

          while (v30 < v11);
          v9 = v120;
          v11 = v29;
        }
      }

      else
      {
        v9 = v120;
        v10 = v13;
      }
    }

    v34 = a3[1];
    if (v11 >= v34)
    {
      goto LABEL_41;
    }

    v35 = v11;
    v68 = __OFSUB__(v11, v10);
    v36 = v11 - v10;
    if (v68)
    {
      goto LABEL_128;
    }

    if (v36 < v109)
    {
      break;
    }

    v11 = v35;
LABEL_41:
    if (v11 < v10)
    {
      goto LABEL_127;
    }

    v117 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v9 = v97;
    }

    v50 = *(v9 + 16);
    v49 = *(v9 + 24);
    v51 = v50 + 1;
    v52 = v117;
    if (v50 >= v49 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v9);
      v52 = v117;
      v9 = v98;
    }

    *(v9 + 16) = v51;
    v53 = (v9 + 32);
    v54 = (v9 + 32 + 16 * v50);
    *v54 = v10;
    v54[1] = v52;
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v50)
    {
      v113 = (v9 + 32);
      v122 = v9;
      while (1)
      {
        v55 = v51 - 1;
        v56 = &v53[16 * v51 - 16];
        v57 = (v9 + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(v9 + 32);
          v59 = *(v9 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_62:
          if (v61)
          {
            goto LABEL_114;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_117;
          }

          v77 = *(v56 + 1);
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
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_77:
        if (v76)
        {
          goto LABEL_119;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
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

        v88 = &v53[16 * v55 - 16];
        v89 = *v88;
        v90 = v55;
        v9 = &v53[16 * v55];
        v91 = *(v9 + 8);
        v92 = (v87 + 8 * *v88);
        v93 = (v87 + 8 * *v9);
        v94 = (v87 + 8 * v91);
        v95 = v125;
        specialized _merge<A>(low:mid:high:buffer:by:)(v92, v93, v94, v114, a5 & 1, v95);
        if (v124)
        {

          goto LABEL_107;
        }

        if (v91 < v89)
        {
          goto LABEL_109;
        }

        v96 = *(v122 + 16);
        if (v90 > v96)
        {
          goto LABEL_110;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        if (v90 >= v96)
        {
          goto LABEL_111;
        }

        v124 = 0;
        v51 = v96 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v9 + 16), v96 - 1 - v90, v9);
        v9 = v122;
        *(v122 + 16) = v96 - 1;
        v53 = v113;
        if (v96 <= 2)
        {
          goto LABEL_91;
        }
      }

      v62 = &v53[16 * v51];
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

      v69 = v57[1];
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
        v84 = *(v56 + 1);
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
    v8 = v117;
    v7 = a3[1];
    if (v117 >= v7)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v10, v109))
  {
    goto LABEL_130;
  }

  if (v10 + v109 >= v34)
  {
    v37 = a3[1];
  }

  else
  {
    v37 = v10 + v109;
  }

  if (v37 < v10)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v11 = v35;
  if (v35 == v37)
  {
    goto LABEL_41;
  }

  v121 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v35 - 8;
  v110 = v10;
  v40 = (v10 - v35);
  v112 = v37;
LABEL_33:
  v114 = v39;
  v116 = v11;
  v41 = *(v38 + 8 * v11);
  v113 = v40;
  v42 = v39;
  while (1)
  {
    v43 = *v42;
    v44 = swift_allocObject();
    *(v44 + 16) = v125;
    *(swift_allocObject() + 16) = v125;
    v45 = v125;

    v46 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v41, v43, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v44, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:));

    if ((v46 & 1) == 0)
    {
LABEL_38:
      v11 = v116 + 1;
      v39 = (v114 + 1);
      v40 = v113 - 1;
      if ((v116 + 1) == v112)
      {
        v11 = v112;
        v9 = v121;
        v10 = v110;
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    if (!v38)
    {
      break;
    }

    v47 = *v42;
    v41 = v42[1];
    *v42 = v41;
    v42[1] = v47;
    --v42;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_38;
    }
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

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, uint64_t *a3, char *a4, char a5, void *a6)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 8;
  v11 = (a3 - a2) / 8;
  if (v10 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v12 = &v6[v10];
    v38 = v7;
    for (i = v12; ; v12 = i)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_28;
      }

      v14 = *v8;
      v15 = *v6;
      v16 = swift_allocObject();
      *(v16 + 16) = a6;
      *(swift_allocObject() + 16) = a6;
      v17 = a6;

      v18 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v14, v15, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v16, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:));

      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v8;
      v20 = v9 == v8++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      v7 = v38;
    }

    v19 = v6;
    v20 = v9 == v6++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v19;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 8, a4);
  v12 = &v6[v11];
  v37 = v9;
  v35 = v6;
LABEL_15:
  v21 = v8 - 1;
  --v7;
  for (j = v8 - 1; v12 > v6 && v8 > v9; v21 = j)
  {
    v23 = v8;
    v25 = v12 - 1;
    v24 = *(v12 - 1);
    v26 = *v21;
    v27 = v12;
    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    *(swift_allocObject() + 16) = a6;
    v29 = a6;

    v30 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v24, v26, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v28, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:));

    v31 = v7 + 1;
    if (v30)
    {
      v20 = v31 == v23;
      v9 = v37;
      v8 = j;
      v12 = v27;
      v6 = v35;
      if (!v20)
      {
        *v7 = *j;
        v8 = j;
      }

      goto LABEL_15;
    }

    if (v27 != v31)
    {
      *v7 = *v25;
    }

    --v7;
    v12 = v25;
    v6 = v35;
    v8 = v23;
    v9 = v37;
  }

LABEL_28:
  v32 = v12 - v6;
  if (v8 != v6 || v8 >= &v6[v32])
  {
    memmove(v8, v6, 8 * v32);
  }

  return 1;
}

void outlined bridged method (mbnn) of @objc UINavigationItem.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setTitle_];
}

uint64_t outlined bridged method (ob) of @objc TUConversationActivity.concatenatedMetadataDescription.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_15_14();
}

id outlined bridged method (mbnn) of @objc CNComposeRecipient.contactWithKeys(toFetch:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [a2 contactWithKeysToFetch_];

  return v4;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PeoplePickerStyle and conformance PeoplePickerStyle()
{
  result = lazy protocol witness table cache variable for type PeoplePickerStyle and conformance PeoplePickerStyle;
  if (!lazy protocol witness table cache variable for type PeoplePickerStyle and conformance PeoplePickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PeoplePickerStyle and conformance PeoplePickerStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PeoplePickerStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of LinkShareCoordinatorProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

void outlined consume of IMAccount??(id a1)
{
  if (a1 != 1)
  {
  }
}

id outlined copy of IMAccount??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc CNComposeRecipient.children()(void *a1)
{
  v1 = [a1 children];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc CNAutocompleteSearchController.otherRecipientAddresses.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setOtherRecipientAddresses_];
}

void outlined bridged method (mbnn) of @objc UINavigationBar.largeTitleTextAttributes.setter(uint64_t a1, void *a2)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setLargeTitleTextAttributes_];
}

uint64_t _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(uint64_t a1, uint64_t a2, char a3, unsigned int (*a4)(uint64_t, uint64_t), uint64_t a5, unsigned int (*a6)(uint64_t, uint64_t))
{
  v45 = type metadata accessor for RecipientResultWrapper();
  v46 = &protocol witness table for RecipientResultWrapper;
  v44[0] = a1;
  v43[3] = v45;
  v43[4] = &protocol witness table for RecipientResultWrapper;
  v43[0] = a2;

  v11 = RecipientResultWrapper.idsHandle.getter();
  v13 = v12;
  v14 = RecipientResultWrapper.idsHandle.getter();
  v16 = v15;
  if (!v13)
  {

    goto LABEL_15;
  }

  if (!v15)
  {
LABEL_15:
    if (one-time initialization token for peoplePicker != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.peoplePicker);
    outlined init with copy of IDSLookupManager(v44, v42);
    outlined init with copy of IDSLookupManager(v43, v41);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315394;
      outlined init with copy of IDSLookupManager(v42, v39);
      v30 = specialized >> prefix<A>(_:)(v39);
      v32 = v31;
      outlined destroy of TapInteractionHandler?(v39, &_s15ConversationKit18PeoplePickerHandle_pSgMd, &_s15ConversationKit18PeoplePickerHandle_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v40);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      outlined init with copy of IDSLookupManager(v41, v39);
      v34 = specialized >> prefix<A>(_:)(v39);
      v36 = v35;
      outlined destroy of TapInteractionHandler?(v39, &_s15ConversationKit18PeoplePickerHandle_pSgMd, &_s15ConversationKit18PeoplePickerHandle_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v40);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_1BBC58000, v26, v27, "Missing IDS Handle for %s, %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v29, -1, -1);
      MEMORY[0x1BFB23DF0](v28, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v41);
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    LOBYTE(v20) = v13 != 0;
    goto LABEL_21;
  }

  v17 = v14;
  if (a3)
  {
    v18 = a4;
    v19 = a4(v11, v13);
  }

  else
  {
    v18 = a6;
    v19 = a6(v11, v13);
  }

  LOBYTE(v20) = v19;
  if (((v19 ^ v18(v17, v16)) & 1) == 0)
  {
    v21 = MEMORY[0x1BFB209B0](v11, v13);
    v20 = [v21 destinationIdIsPhoneNumber];

    v22 = MEMORY[0x1BFB209B0](v17, v16);
    v23 = [v22 destinationIdIsPhoneNumber];

    if (v20 == v23)
    {
      if (v11 == v17 && v13 == v16)
      {

        LOBYTE(v20) = 0;
        goto LABEL_22;
      }

      LOBYTE(v20) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_21:

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v20 & 1;
}

double specialized PeoplePickerViewController.presentMessageComposeViewController(for:withRecipientHandles:shouldIgnoreEmails:delegate:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 URL];
  if (v15)
  {
    v16 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [objc_allocWithZone(MEMORY[0x1E6973F10]) init];
    [v17 setMessageComposeDelegate_];
    outlined bridged method (mbgnn) of @objc MFMessageComposeViewController.recipients.setter(a2, v17);
    v18 = [objc_opt_self() conversationKit];
    v40._object = 0xE000000000000000;
    v19.value._countAndFlagsBits = 0x61737265766E6F43;
    v19.value._object = 0xEF74694B6E6F6974;
    v20._object = 0x80000001BC4F97A0;
    v20._countAndFlagsBits = 0xD000000000000010;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v40);

    outlined bridged method (mbnn) of @objc MFMessageComposeViewController.body.setter(v22._countAndFlagsBits, v22._object, v17);
    [v17 _setCanEditRecipients_];
    [v17 setShouldHideClearPluginButton_];
    [v17 _setShouldIgnoreEmailsWhenSending_];
    v23 = [objc_allocWithZone(MEMORY[0x1E69D8C20]) initWithTUConversationLink_];
    v24 = TULinkShareItem.dataRepresentation.getter();
    v26 = v25;

    isa = Data._bridgeToObjectiveC()().super.isa;
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    [v17 addRichLinkData:isa withWebpageURL:v29];

    [a5 presentViewController:v17 animated:1 completion:0];
    outlined consume of Data._Representation(v24, v26);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.conversationKit;
    v33 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BC4BA940;
    v39[1] = a1;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
    v35 = a1;
    v36 = String.init<A>(reflecting:)();
    v38 = v37;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    os_log(_:dso:log:type:_:)("Failed to present the message compose sheet with invalid conversation link: %@", 78, 2, &dword_1BBC58000, v32, v33, v34);
  }

  return result;
}

{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 URL];
  if (v15)
  {
    v16 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [objc_allocWithZone(MEMORY[0x1E6973F10]) init];
    [v17 setMessageComposeDelegate_];
    outlined bridged method (mbgnn) of @objc MFMessageComposeViewController.recipients.setter(a2, v17);
    v18 = [objc_opt_self() conversationKit];
    v40._object = 0xE000000000000000;
    v19.value._countAndFlagsBits = 0x61737265766E6F43;
    v19.value._object = 0xEF74694B6E6F6974;
    v20._object = 0x80000001BC4F97A0;
    v20._countAndFlagsBits = 0xD000000000000010;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v40);

    outlined bridged method (mbnn) of @objc MFMessageComposeViewController.body.setter(v22._countAndFlagsBits, v22._object, v17);
    [v17 _setCanEditRecipients_];
    [v17 setShouldHideClearPluginButton_];
    [v17 _setShouldIgnoreEmailsWhenSending_];
    v23 = [objc_allocWithZone(MEMORY[0x1E69D8C20]) initWithTUConversationLink_];
    v24 = TULinkShareItem.dataRepresentation.getter();
    v26 = v25;

    isa = Data._bridgeToObjectiveC()().super.isa;
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    [v17 addRichLinkData:isa withWebpageURL:v29];

    [a5 presentViewController:v17 animated:1 completion:0];
    outlined consume of Data._Representation(v24, v26);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.conversationKit;
    v33 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BC4BA940;
    v39[1] = a1;
    type metadata accessor for TUConversationLink();
    v35 = a1;
    v36 = String.init<A>(reflecting:)();
    v38 = v37;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    os_log(_:dso:log:type:_:)("Failed to present the message compose sheet with invalid conversation link: %@", 78, 2, &dword_1BBC58000, v32, v33, v34);
  }

  return result;
}

uint64_t key path getter for InCallControlsOpenMessagesCell.delegate : InCallControlsOpenMessagesCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsOpenMessagesCell.delegate : InCallControlsOpenMessagesCell(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t InCallControlsOpenMessagesCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsOpenMessagesCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_delegate;
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

uint64_t closure #1 in variable initialization expression of InCallControlsOpenMessagesCell.openMessagesButton()
{
  type metadata accessor for InCallControlButton();
  v10 = &type metadata for SymbolImageDescribers.DrawerTable;
  v11 = &protocol witness table for SymbolImageDescribers.DrawerTable;
  v9[0] = 0;
  v0 = [objc_opt_self() conversationKit];
  v12._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x4547415353454DLL;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v1._object = 0xE700000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v12);

  v5 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(4, v9, v4._countAndFlagsBits, v4._object, 0x402C000000000000, 0, 0, 0, 0, 1);
  v6 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label;
  [*(v5 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label) setAdjustsFontForContentSizeCategory_];
  v7 = *(v5 + v6);
  if (v7)
  {
    [v7 setNumberOfLines_];
    v7 = *(v5 + v6);
  }

  [v7 setAdjustsFontSizeToFitWidth_];
  return v5;
}

id InCallControlsOpenMessagesCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

void *InCallControlsOpenMessagesCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton;
  *(v0 + v1) = closure #1 in variable initialization expression of InCallControlsOpenMessagesCell.openMessagesButton();
  v9 = type metadata accessor for InCallControlsOpenMessagesCell();
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v9);
  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);
  v7 = v5;
  v6();

  return v7;
}

Swift::Void __swiftcall InCallControlsOpenMessagesCell.configureSubviews()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  static UIBackgroundConfiguration.listPlainCell()();
  v5 = [objc_opt_self() clearColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v6 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  MEMORY[0x1BFB216F0](v4);
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in InCallControlsOpenMessagesCell.configureSubviews(), v8);

  if (one-time initialization token for brickButton != -1)
  {
    swift_once();
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x1D0);

  v9(v10);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = OUTLINED_FUNCTION_0_64();
  [v11 addSubview_];

  v12 = [v7 heightAnchor];
  v13 = [v12 constraintGreaterThanOrEqualToConstant_];

  v14 = OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint;
  v15 = *(v1 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint);
  *(v1 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint) = v13;

  InCallControlsOpenMessagesCell.updateConstraintsConstants()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BE4A0;
  v17 = [v7 leadingAnchor];
  v18 = OUTLINED_FUNCTION_0_64();
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v20;
  v21 = *(v1 + v14);
  if (v21)
  {
    v22 = objc_opt_self();
    *(v16 + 40) = v21;
    v23 = v21;
    v24 = [v7 centerYAnchor];
    v25 = OUTLINED_FUNCTION_0_64();
    v26 = [v25 centerYAnchor];

    v27 = OUTLINED_FUNCTION_1_14();
    *(v16 + 48) = v27;
    v28 = [v7 topAnchor];
    v29 = OUTLINED_FUNCTION_0_64();
    v30 = [v29 topAnchor];

    v31 = OUTLINED_FUNCTION_1_14();
    *(v16 + 56) = v31;
    v32 = [v7 bottomAnchor];
    v33 = OUTLINED_FUNCTION_0_64();
    v34 = [v33 bottomAnchor];

    v35 = OUTLINED_FUNCTION_1_14();
    *(v16 + 64) = v35;
    v36 = [v7 trailingAnchor];
    v37 = OUTLINED_FUNCTION_0_64();
    v38 = [v37 trailingAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    *(v16 + 72) = v39;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in InCallControlsOpenMessagesCell.configureSubviews()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x68))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 8);
      v8 = *&v3[OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton];
      v7(v3, v8, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id InCallControlsOpenMessagesCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsOpenMessagesCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton;
  *(v0 + v1) = closure #1 in variable initialization expression of InCallControlsOpenMessagesCell.openMessagesButton();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall InCallControlsOpenMessagesCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for InCallControlsOpenMessagesCell();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (isa)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      goto LABEL_13;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  InCallControlsOpenMessagesCell.updateConstraintsConstants()();
LABEL_13:
}

void InCallControlsOpenMessagesCell.updateConstraintsConstants()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint);
  if (v1)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton) + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
    v4 = v1;
    v3 = [v2 font];
    if (!v3)
    {
      v3 = [objc_opt_self() preferredFontForTextStyle_];
    }

    NSLayoutConstraint.setConstant(_:scaledToFont:)(v3, 52.0);
  }

  else
  {
    __break(1u);
  }
}

id InCallControlsOpenMessagesCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsOpenMessagesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for reuseIdentifier()
{
  type metadata accessor for ParticipantCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15ParticipantCellCmMd, &_s15ConversationKit15ParticipantCellCmMR);
  result = String.init<A>(describing:)();
  static ParticipantCell.reuseIdentifier = result;
  *algn_1EDDCCF28 = v1;
  return result;
}

uint64_t *ParticipantCell.reuseIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for reuseIdentifier != -1)
  {
    OUTLINED_FUNCTION_0_65(&one-time initialization token for reuseIdentifier);
  }

  return &static ParticipantCell.reuseIdentifier;
}

uint64_t static ParticipantCell.reuseIdentifier.getter()
{
  if (one-time initialization token for reuseIdentifier != -1)
  {
    OUTLINED_FUNCTION_0_65(&one-time initialization token for reuseIdentifier);
  }

  v0 = static ParticipantCell.reuseIdentifier;

  return v0;
}

uint64_t ParticipantCell.participantIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantIdentifier;
  swift_beginAccess();
  return outlined init with copy of UUID?(v1 + v3, a1);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ParticipantCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id ParticipantCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_6(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantView;
  v4 = objc_allocWithZone(type metadata accessor for ParticipantView(0));
  *(v0 + v3) = OUTLINED_FUNCTION_1_66(v5, v6, v7, v8);
  v9 = (v0 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OUTLINED_FUNCTION_18_1();
  v13 = objc_msgSendSuper2(v11, v12, v10, v0, ObjectType);
  v14 = [v13 contentView];
  ParticipantCell.configureSubviews(in:)(v14);

  return v13;
}

id ParticipantCell.configureSubviews(in:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  ParticipantView.isInRoster.setter(1);
  UIView.addTapInteraction(withTapCount:)(1);
  [a1 addSubview_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA7F0;
  v6 = [v3 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v3 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [v3 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [v3 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v5 + 56) = v17;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints_];

  static Layout.Roster.iOS.getter(v20);
  [a1 _setContinuousCornerRadius_];

  return [a1 setClipsToBounds_];
}

id ParticipantCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantCell.init(coder:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_6(v1);
  v2 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantView;
  v3 = objc_allocWithZone(type metadata accessor for ParticipantView(0));
  *(v0 + v2) = OUTLINED_FUNCTION_1_66(v4, v5, v6, v7);
  v8 = (v0 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_prepareForReuse, v3);
  v6 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantIdentifier;
  swift_beginAccess();
  outlined assign with take of UUID?(v5, v0 + v7);
  swift_endAccess();
  ParticipantView.reset()();
}

uint64_t ParticipantCell.configure(with:)()
{
  v1 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  ParticipantViewModel.participantDetails.getter();
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 16))(v10, v7, v11);
  outlined destroy of ParticipantViewModel.ParticipantDetails(v7, type metadata accessor for ParticipantViewModel.ParticipantDetails);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v12 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantIdentifier;
  swift_beginAccess();
  outlined assign with take of UUID?(v10, v0 + v12);
  swift_endAccess();
  ParticipantViewModel.participantDetails.getter();
  v13 = &v7[*(v5 + 28)];
  v15 = *v13;
  v14 = *(v13 + 1);

  outlined destroy of ParticipantViewModel.ParticipantDetails(v7, type metadata accessor for ParticipantViewModel.ParticipantDetails);
  v16 = (v0 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);
  *v16 = v15;
  v16[1] = v14;

  ParticipantViewModel.compatibleWithRoster.getter();
  ParticipantView.configure(with:isOneToOneMode:)(v3, 0);
  return outlined destroy of ParticipantViewModel.ParticipantDetails(v3, type metadata accessor for ParticipantViewModel);
}

Swift::Void __swiftcall ParticipantCell.updateAudioPowerForParticipantCell(withPower:)(Swift::Float withPower)
{
  v2 = ParticipantView.monogramView.getter();
  ParticipantMonogramView.updateAudioVisualization(with:)(withPower);
}

uint64_t ParticipantCell.accessibilityDisplayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);

  return v1;
}

double ParticipantCell.accessibilityDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

id ParticipantCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ParticipantViewModel.ParticipantDetails(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ParticipantCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParticipantCell;
  if (!type metadata singleton initialization cache for ParticipantCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ParticipantCell(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double CollaborationControlsRecipeGenerator.collaborationHUDRecipe(controlsManager:alternateAppearance:)@<D0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v114) = a2;
  v117 = a3;
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v113 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v115 = &v104 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  v19 = type metadata accessor for StagedCollaboration(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v116 = v22 - v21;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 296))() & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_59();
  v25 = (*(v24 + 704))();
  if (!v25)
  {
    goto LABEL_9;
  }

  v112 = v25;
  OUTLINED_FUNCTION_3_59();
  v111 = (*(v26 + 2144))();
  if (!v111)
  {

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_3_59();
  (*(v27 + 2240))();
  if (swift_getEnumCaseMultiPayload())
  {

    outlined destroy of ForegroundCollaborationState(v18, type metadata accessor for ForegroundCollaborationState);
LABEL_9:
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v4);
    return result;
  }

  outlined init with take of StagedCollaboration(v18, v116);
  if ((v114 & 1) != 0 && (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0), v32 = OUTLINED_FUNCTION_4_43(), (v34 = static UIImageView.appIcon(for:)(v32, v33)) != 0))
  {
    v108 = v34;
    v109 = [v34 image];
    v107 = closure #1 in CollaborationControlsRecipeGenerator.recipeViewFor(_:in:managedBy:usingAlternateApperance:)(v111, a1);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v35 = OUTLINED_FUNCTION_4_43();
    v37 = static UIImage.appIcon(for:usingIconCrop:)(v35, v36, 1);
    v110 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v38 = objc_opt_self();
    v39 = v37;
    v109 = v112;
    v40 = [v38 clearColor];
    v41 = v109;
    v109 = v37;
    v42 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v41, v37, 0, 0, v40);
    v108 = [v42 view];
    (*((*v23 & *a1) + 0x2A8))();
    v107 = (*((*v23 & *v42) + 0x58))(v14);

    (*(v11 + 8))(v14, v10);
  }

  v43 = v116;
  v44 = SWShareableContent.collaborationInitiator.getter();
  v45 = (v43 + *(v19 + 28));
  v46 = *v45;
  v47 = v45[1];
  v110 = ConversationControlsStringProvider.collaborationHUDStrings(initiator:itemTitle:)(v44, *v45, v47);
  v49 = v48;
  v51 = v50;

  if (v114)
  {
    if (one-time initialization token for bundleIDToItemType != -1)
    {
      swift_once();
    }

    v52 = *&v111[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier];
    v53 = *&v111[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8];
    swift_beginAccess();
    v54 = specialized Dictionary.subscript.getter(v52, v53, static AppLaunchNotice.bundleIDToItemType);
    v56 = v55;
    swift_endAccess();
    if (v56)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1BC4BA940;
      v58 = [objc_opt_self() conversationKit];
      v126._object = 0xE000000000000000;
      v59.value._countAndFlagsBits = 0x61737265766E6F43;
      v59.value._object = 0xEF74694B6E6F6974;
      v60._countAndFlagsBits = v54;
      v60._object = v56;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      v126._countAndFlagsBits = 0;
      v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v59, v58, v61, v126);

      *(v57 + 32) = v62;

      v51 = v57;
    }

    if (v47)
    {

      v49 = v47;
      v110 = v46;
    }
  }

  v120 = 10;
  v121 = 0u;
  v122 = 0u;
  v123 = 7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);

  v63._countAndFlagsBits = v110;
  v110 = v49;
  v63._object = v49;
  isa = NSAttributedString.__allocating_init(string:)(v63).super.isa;
  v64 = *(v51 + 16);
  v65 = MEMORY[0x1E69E7CC0];
  v114 = v51;
  if (v64)
  {
    *&v124[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v66 = (v51 + 40);
    do
    {
      v67 = *(v66 - 1);
      v68 = *v66;

      v69._countAndFlagsBits = v67;
      v69._object = v68;
      NSAttributedString.__allocating_init(string:)(v69);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v66 += 2;
      --v64;
    }

    while (v64);
    v65 = *&v124[0];
  }

  v70 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  type metadata accessor for ConversationControlsAction(0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1BC4BAA20;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v124);
  v104 = v124[1];
  v105 = v124[0];
  v75 = v125;
  v76 = v4[9];
  v77 = v113;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v70);
  v81 = (v77 + v4[10]);
  v82 = v77 + v4[15];
  *(v82 + 4) = 0;
  *v82 = 0u;
  *(v82 + 1) = 0u;
  v82[40] = -2;
  *(v77 + v4[16]) = 0;
  v83 = v77 + v4[17];
  v84 = v77 + v4[18];
  *v84 = 1;
  *(v84 + 8) = 0u;
  *(v84 + 24) = 0u;
  *(v84 + 40) = 0u;
  *(v84 + 56) = 0u;
  v84[72] = 0;
  outlined init with copy of ConversationControlsType(&v120, v77);
  v85 = v108;
  v77[6] = 0;
  v77[7] = v85;
  v86 = v107;
  v77[8] = v109;
  v77[9] = v86;
  v77[10] = isa;
  v77[11] = v65;
  v81[1] = 0;
  v81[2] = 0;
  *v81 = 0;
  v87 = v77 + v76;
  v88 = v115;
  outlined assign with copy of AttributedString?(v115, v87);
  *(v77 + v4[11]) = 2;
  *(v77 + v4[12]) = 0;
  *(v77 + v4[13]) = 1;
  *(v77 + v4[14]) = 2;
  *v83 = 0;
  *(v83 + 1) = 0;
  v83[16] = -1;
  v89 = *(v74 + 16);
  if (v89 <= 5)
  {

    outlined destroy of AttributedString?(v88);
    outlined destroy of ConversationControlsType(&v120);
    *v82 = v74;
    *(v82 + 24) = v104;
    *(v82 + 8) = v105;
    v82[40] = v75 | 0x80;
    v100 = v117;
    outlined init with copy of ConversationControlsRecipe(v77, v117);
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v4);
    OUTLINED_FUNCTION_0_66();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, &static Logger.conversationControls);

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = v88;
      v95 = swift_slowAlloc();
      v118 = v89;
      v119 = v95;
      *v93 = 136315138;
      v96 = String.init<A>(reflecting:)();
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v119);

      *(v93 + 4) = v98;
      _os_log_impl(&dword_1BBC58000, v91, v92, "Too many buttonShelf actions (%s)", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x1BFB23DF0](v95, -1, -1);
      MEMORY[0x1BFB23DF0](v93, -1, -1);

      v99 = v94;
    }

    else
    {

      v99 = v88;
    }

    outlined destroy of AttributedString?(v99);
    outlined destroy of ConversationControlsType(&v120);
    OUTLINED_FUNCTION_0_66();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v4);
  }

  outlined destroy of ForegroundCollaborationState(v116, type metadata accessor for StagedCollaboration);

  return result;
}

Swift::Int closure #1 in CollaborationControlsRecipeGenerator.recipeViewFor(_:in:managedBy:usingAlternateApperance:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v7 = String.hash(into:)();
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2A8))(v7);
  UUID.uuidString.getter();
  (*(v4 + 8))(v6, v3);
  String.hash(into:)();

  return Hasher.finalize()();
}

uint64_t outlined init with take of StagedCollaboration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StagedCollaboration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ForegroundCollaborationState(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t key path getter for CallControlsFullScreenStatusViewModel.view : CallControlsFullScreenStatusViewModel@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CallControlsFullScreenStatusViewModel.view : CallControlsFullScreenStatusViewModel(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return CallControlsFullScreenStatusViewModel.view.setter(v2, v1);
}

uint64_t CallControlsFullScreenStatusViewModel.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  CallControlsFullScreenStatusViewModel.view.didset();
  return swift_unknownObjectRelease();
}

uint64_t CallControlsFullScreenStatusViewModel.view.didset()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(1, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*CallControlsFullScreenStatusViewModel.view.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return CallControlsFullScreenStatusViewModel.view.modify;
}

void CallControlsFullScreenStatusViewModel.view.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    CallControlsFullScreenStatusViewModel.view.didset();
  }

  free(v3);
}

id CallControlsFullScreenStatusViewModel.init(powerSaverManager:videoStatusProvider:)()
{
  OUTLINED_FUNCTION_4_44();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_cancellable] = 0;
  v6 = &v1[OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_powerSaverManager];
  *v6 = v4;
  *(v6 + 1) = v3;
  v7 = &v1[OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider];
  *v7 = v2;
  *(v7 + 1) = v0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::Void __swiftcall CallControlsFullScreenStatusViewModel.startObservingStatesIfNeeded()()
{
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_cancellable))
  {
    CallControlsFullScreenStatusViewModel.startObservation(_:)(0, 0);
  }
}

uint64_t CallControlsFullScreenStatusViewModel.startObservation(_:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v46 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVyyts5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVyyts5NeverOGGMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytAJGGGMd, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytAJGGGMR);
  OUTLINED_FUNCTION_1();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytALGGGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytALGGGSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_1();
  v47 = v17;
  v48 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v45 = v42 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider))
  {
    v21 = *(v2 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider + 8);
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);
  }

  else
  {
    Empty.init(completeImmediately:)();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>, &_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR, MEMORY[0x1E695C018]);
    v23 = Publisher.eraseToAnyPublisher()();
    v24 = OUTLINED_FUNCTION_7_8();
    v25(v24);
  }

  v42[1] = v23;
  v26 = v2;
  v27 = *(v2 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_powerSaverManager + 8);
  v28 = swift_getObjectType();
  v29 = (*(v27 + 32))(v28, v27);
  v51 = v23;
  v52 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.merge(with:)();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<(), Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVyyts5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVyyts5NeverOGGMR, MEMORY[0x1E695BE80]);
  Publisher.prepend(_:)();
  (*(v7 + 8))(v10, v5);
  v30 = [objc_opt_self() mainRunLoop];
  v52 = v30;
  v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v32 = v46;
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v31);
  type metadata accessor for NSRunLoop();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[()], Never>, Publishers.MergeMany<AnyPublisher<(), Never>>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytAJGGGMd, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytAJGGGMR, MEMORY[0x1E695BCA8]);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v34 = v44;
  v33 = v45;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v32);

  (*(v43 + 8))(v15, v34);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v36[2] = v35;
  v37 = v49;
  v38 = v50;
  v36[3] = v49;
  v36[4] = v38;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v37, v38);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Concatenate<Publishers.Sequence<[()], Never>, Publishers.MergeMany<AnyPublisher<(), Never>>>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytALGGGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytALGGGSo9NSRunLoopCGMR, MEMORY[0x1E695BE98]);
  v39 = v48;
  v40 = Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v33, v39);
  *(v26 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_cancellable) = v40;
}

void closure #1 in CallControlsFullScreenStatusViewModel.startObservation(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    CallControlsFullScreenStatusViewModel.updateStatus()();
  }

  if (a3)
  {
    a3();
  }
}

Swift::Void __swiftcall CallControlsFullScreenStatusViewModel.updateStatus()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_powerSaverManager + 8);
    swift_getObjectType();
    if ((*(v4 + 8))())
    {
      ObjectType = swift_getObjectType();
      v6 = objc_opt_self();
      v7 = [v6 conversationKit];
      v8.super.isa = v7;
      OUTLINED_FUNCTION_17_0(0x54415245504D4554, 0xEB00000000455255, 0x61737265766E6F43, 0xEF74694B6E6F6974, v8);

      v9 = [v6 conversationKit];
      v10.super.isa = v9;
      OUTLINED_FUNCTION_17_0(0xD000000000000013, 0x80000001BC4F9B30, 0x61737265766E6F43, 0xEF74694B6E6F6974, v10);

      OUTLINED_FUNCTION_6_42();
      OUTLINED_FUNCTION_3_60();
      v12(v11);
    }

    else
    {
      v13 = OUTLINED_FUNCTION_7_8();
      if ((v14(v13) & 1) == 0 || (v15 = OUTLINED_FUNCTION_7_8(), v16(v15), !v17))
      {
        if (*(v1 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider))
        {
          v26 = *(v1 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider + 8);
          swift_getObjectType();
          v27 = *(v26 + 8);
          swift_unknownObjectRetain();
          v28 = OUTLINED_FUNCTION_7_8();
          if (v27(v28))
          {
            v29 = swift_getObjectType();
            v30 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_5_5();
            v31.super.isa = v30;
            v34 = OUTLINED_FUNCTION_17_0(0xD000000000000011, 0x80000001BC4F9B10, v32, v33, v31);
            v36 = v35;

            OUTLINED_FUNCTION_6_42();
            v37(0, 0, v34, v36, v29, v3);

            (*(v3 + 16))(0, v29, v3);
            swift_unknownObjectRelease();
            goto LABEL_13;
          }

          swift_unknownObjectRelease();
        }

        v38 = swift_getObjectType();
        OUTLINED_FUNCTION_6_42();
        OUTLINED_FUNCTION_3_60();
        v39();
        (*(v3 + 16))(1, v38, v3);
        goto LABEL_13;
      }

      ObjectType = swift_getObjectType();
      v18 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_5();
      v19.super.isa = v18;
      OUTLINED_FUNCTION_17_0(v20, v21, v22, v23, v19);

      OUTLINED_FUNCTION_6_42();
      OUTLINED_FUNCTION_3_60();
      v25(v24);
    }

    (*(v3 + 16))(0, ObjectType, v3);
LABEL_13:
    swift_unknownObjectRelease();
  }
}

id CallControlsFullScreenStatusViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallControlsFullScreenStatusViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double RecentsListViewController.gridLayoutInset()()
{
  type metadata accessor for RecentsCollectionViewGridCell();
  static RecentsCollectionViewGridCell.effectiveScreenWidth.getter();
  v1 = v0;
  if (static RecentsCollectionViewGridCell.needsAXLayout.getter())
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 2.0;
  }

  type metadata accessor for RecentsListViewController(0);
  static RecentsListViewController.gridLayoutItemSize()();
  return (v1 - v2 * v3) / (v2 + 1.0);
}

void static RecentsListViewController.gridLayoutItemSize()()
{
  type metadata accessor for RecentsCollectionViewGridCell();
  static RecentsCollectionViewGridCell.effectiveScreenWidth.getter();
  static RecentsCollectionViewGridCell.needsAXLayout.getter();
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];
}

uint64_t *RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v309 = a4;
  v327 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v10);
  v330 = type metadata accessor for ContactAvatarTileView.Caption.ForegroundStyle();
  OUTLINED_FUNCTION_1();
  v339 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v14);
  v312 = type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v311 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40();
  v18 = OUTLINED_FUNCTION_16(v17);
  v19 = type metadata accessor for RecentsCallItem(v18);
  OUTLINED_FUNCTION_1();
  v305 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_10(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v31);
  v303 = type metadata accessor for BackgroundStyleConfiguration();
  OUTLINED_FUNCTION_1();
  v302 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v34);
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
  OUTLINED_FUNCTION_1();
  v336 = v36;
  v337 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_8();
  v39 = v38 - v37;
  v322 = type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  OUTLINED_FUNCTION_1();
  v321 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32();
  v338 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMR);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_32();
  v329 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v53 = OUTLINED_FUNCTION_22(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_17();
  v56 = v54 - v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5();
  v335 = v58;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v298 - v60;
  v62 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v333 = v63;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_40();
  v332 = v65;
  OUTLINED_FUNCTION_4_24();
  v326 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v325 = v66;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5();
  v334 = v69;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v72);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v298 - v74;
  v76 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v331 = v77;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_8();
  v81 = v80 - v79;
  v340 = v19;
  v341 = a1;
  v82 = &a1[*(v19 + 20)];
  v83 = *(v82 + 1);
  v307 = v27;
  v328 = v56;
  v301 = v39;
  if (v83)
  {
    v314 = *v82;
    v315 = v83;
  }

  else
  {
    v314 = 0;
    v315 = 0xE000000000000000;
  }

  v84 = *&v341[*(v340 + 48)];
  if (specialized Array.count.getter() == 1 && specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v84 & 0xC000000000000001) == 0, v84);
    if ((v84 & 0xC000000000000001) != 0)
    {

      v86 = MEMORY[0x1BFB22010](0, v84);
    }

    else
    {
      v85 = *(v84 + 32);

      v86 = v85;
    }

    v87 = v86;
    v88 = [v86 givenName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = String.count.getter();

    if (v89 < 1)
    {
    }

    else
    {

      v90 = [v87 familyName];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      LOBYTE(v90) = RecentsListViewController.isStringChineseJapaneseKorean(_:)(v91, v93);

      if (v90)
      {
        v94 = [objc_opt_self() stringFromContact:v87 style:0];
        if (v94)
        {
          v95 = v94;
          v314 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          object = v96;
        }

        else
        {
          v314 = 0;
          object = 0;
        }

        v291 = [v87 familyName];
        v317 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v293 = v292;

        v294 = [v87 givenName];
        v315 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v296 = v295;

        v342 = v317;
        v343 = v293;

        MEMORY[0x1BFB20B10](v315, v296);

        v297 = object;
        if (object)
        {

          v315 = v297;
        }

        else
        {
          v315 = v343;
          v314 = v342;
        }
      }

      else
      {
        v141 = [v87 givenName];
        v314 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v315 = v142;
      }
    }
  }

  else
  {
  }

  v97 = RecentsCallItem.mediaType.getter();
  if ((v98 & 1) == 0 && v97 == 1 || (v99 = RecentsCallItem.mediaType.getter(), v317 = 0, v100 = 0xE000000000000000, (v101 & 1) == 0) && v99 == 2)
  {
    v102 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v317 = OUTLINED_FUNCTION_18_27(v103, v104, v105, v106);
    v100 = v107;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v76);
  object = v100;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v109 = 0;
    v304 = 0xE000000000000000;
  }

  else
  {
    v110 = v331;
    (*(v331 + 32))(v81, v75, v76);
    v109 = static Date.faceTimeDateString(from:showToday:)(v81, 0);
    v304 = v111;
    (*(v110 + 8))(v81, v76);
  }

  v112 = v62;
  v113 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (!v113)
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v62);
    goto LABEL_27;
  }

  v114 = v113;
  v115 = [v113 thumbnailURL];

  if (v115)
  {
    v116 = v335;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v117 = 0;
  }

  else
  {
    v117 = 1;
    v116 = v335;
  }

  __swift_storeEnumTagSinglePayload(v116, v117, 1, v62);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
  {
LABEL_27:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (specialized Array.count.getter() < 2)
    {
      v121 = RecentsCallItem.contact.getter();
      if (v121)
      {
        v122 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        OUTLINED_FUNCTION_37_0();
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_1BC4BAC30;
        *(v123 + 32) = v122;
        v124 = v324;
        *v324 = v123;
        v125 = MEMORY[0x1E6995B28];
      }

      else
      {
        v136 = static Color.gray.getter();
        v124 = v324;
        *v324 = v136;
        v125 = MEMORY[0x1E6995B40];
      }

      (*(v325 + 104))(v124, *v125, v326);
    }

    else
    {
      *v324 = v84;
      (*(v325 + 104))();
    }

    v132 = v301;
    v135 = v337;
    goto LABEL_43;
  }

  v127 = v332;
  v126 = v333;
  (*(v333 + 32))(v332, v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV05imageB0_ACSg05videoB0tMd, &_s10Foundation3URLV05imageB0_ACSg05videoB0tMR);
  v128 = v334;
  (*(v126 + 16))(v334, v127, v112);
  v129 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v129)
  {
    v130 = v129;
    v131 = [v129 mediaURL];

    v132 = v301;
    if (v131)
    {
      v133 = v328;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v134 = 0;
      v135 = v337;
    }

    else
    {
      v134 = 1;
      v135 = v337;
      v133 = v328;
    }

    (*(v333 + 8))(v332, v112);
    __swift_storeEnumTagSinglePayload(v133, v134, 1, v112);
    v140 = v334;
    outlined init with take of CaptionSectioner.SpeakerSection?();
  }

  else
  {
    (*(v126 + 8))(v127, v112);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v112);
    v132 = v301;
    v135 = v337;
    v140 = v128;
  }

  v143 = v325;
  v144 = v326;
  (*(v325 + 104))(v140, *MEMORY[0x1E6995B38], v326);
  (*(v143 + 32))(v324, v140, v144);
LABEL_43:
  v300 = v109;
  type metadata accessor for ContactAvatarTileView.Caption();
  OUTLINED_FUNCTION_10_0();
  v328 = v145;
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v145);
  v149 = *(v336 + 104);
  v149(v132, *MEMORY[0x1E6995B58], v135);
  v150 = *MEMORY[0x1E6995960];
  type metadata accessor for CUIMaterial.Platter();
  OUTLINED_FUNCTION_7_0();
  v152 = v316;
  v336 = *(v151 + 104);
  v337 = v153;
  v335 = v151 + 104;
  (v336)(v316, v150);
  v154 = *MEMORY[0x1E6995980];
  type metadata accessor for CUIMaterial();
  OUTLINED_FUNCTION_7_0();
  v156 = *(v155 + 104);
  LODWORD(v334) = v154;
  v332 = v156;
  v333 = v157;
  v331 = v155 + 104;
  v156(v152, v154);
  v158 = *MEMORY[0x1E6995C00];
  v159 = v302[13];
  v160 = v303;
  v159(v152, v158, v303);
  ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)();
  v161 = RecentsCallItem.mediaType.getter();
  if ((v162 & 1) == 0 && v161 == 1)
  {
    v149(v132, *MEMORY[0x1E6995B50], v135);
    v163 = v316;
    (v336)(v316, v150, v337);
    OUTLINED_FUNCTION_50_9();
    v164();
    v159(v163, v158, v160);
    v165 = v299;
    ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)();
    v166 = v321;
    v167 = v338;
    v168 = v322;
    (*(v321 + 8))(v338, v322);
    (*(v166 + 32))(v167, v165, v168);
  }

  RecentsCallItem.isIncomingCall.getter();
  v169 = v323;
  SystemImage.init(systemName:)();
  v170 = v320;
  v171 = v330;
  v172 = 0xE900000000000044;
  v173 = type metadata accessor for SystemImage();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v173);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v173);
  v180 = static Color.primary.getter();
  v181 = RecentsCallItem.isMissedCallItem.getter();
  RecentsCallItem.hasVideoMessage.getter();
  v316 = v173;
  if (v182)
  {
    v183 = RecentsCallItem.messageIndicatorViewModel.getter();
    if (v183)
    {
      v184 = v183;

      [v184 duration];
      v186 = v185;

      v187 = RecentsListViewController.formatTimeInterval(_:)(v186);
      countAndFlagsBits = v187._countAndFlagsBits;
      object = v187._object;
    }

    else
    {
      countAndFlagsBits = v317;
    }

    SystemImage.init(systemName:)();
    v172 = &_s16CommunicationsUI11SystemImageVSgMR;
    OUTLINED_FUNCTION_33_3(v169);
    v197 = OUTLINED_FUNCTION_21_3();
    __swift_storeEnumTagSinglePayload(v197, v198, v199, v173);
    outlined init with take of CaptionSectioner.SpeakerSection?();
    v200 = v341;
    v201 = RecentsCallItem.messageIndicatorViewModel.getter();
    v317 = countAndFlagsBits;
    if (v201)
    {
      v200 = v201;
      if ([v201 isRead])
      {
      }

      else
      {
        OUTLINED_FUNCTION_55_6();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, &_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
        v202 = OUTLINED_FUNCTION_21_3();
        __swift_storeEnumTagSinglePayload(v202, v203, v204, v173);
        OUTLINED_FUNCTION_100_0();
        v172 = static Color.green.getter();

        v180 = v172;
      }
    }

    OUTLINED_FUNCTION_20();
    v205 = swift_allocObject();
    OUTLINED_FUNCTION_60_4(v205);
    OUTLINED_FUNCTION_0_67();
    _s15ConversationKit15RecentsCallItemVWOcTm_0();
    OUTLINED_FUNCTION_82_2();
    v206 = OUTLINED_FUNCTION_104_0(&unk_1F3AD1DB0);
    OUTLINED_FUNCTION_12_30(v206);
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    v207 = v200;
    v305 = v206;

    v181 = 1;
    v196 = partial apply for closure #1 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:);
    goto LABEL_60;
  }

  v189 = v341;
  RecentsCallItem.hasAudioMessage.getter();
  if ((v190 & 1) == 0)
  {
    OUTLINED_FUNCTION_20();
    v193 = swift_allocObject();
    OUTLINED_FUNCTION_60_4(v193);
    OUTLINED_FUNCTION_0_67();
    _s15ConversationKit15RecentsCallItemVWOcTm_0();
    OUTLINED_FUNCTION_82_2();
    v194 = OUTLINED_FUNCTION_104_0(&unk_1F3AD1D10);
    OUTLINED_FUNCTION_12_30(v194);
    v171 = v330;
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    v195 = v189;
    v305 = v194;

    v196 = partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:);
LABEL_60:
    v303 = v196;
    v302 = v172;
    goto LABEL_68;
  }

  v191 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v191)
  {
    v192 = v191;
    if ([v191 isRead])
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v169, &_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_55_6();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, &_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
      v208 = OUTLINED_FUNCTION_21_3();
      __swift_storeEnumTagSinglePayload(v208, v209, v210, v173);
      OUTLINED_FUNCTION_100_0();
      v211 = static Color.green.getter();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v169, &_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
      v180 = v211;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v169, &_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
  }

  v181 = 1;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v212, v213, v214, v173);
  v215 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v216.super.isa = v215;
  v317 = OUTLINED_FUNCTION_17_0(v217, v218, v219, v220, v216);
  object = v221;

  OUTLINED_FUNCTION_20();
  v222 = swift_allocObject();
  OUTLINED_FUNCTION_60_4(v222);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v302 = *(v305 + 80);
  v223 = swift_allocObject();
  OUTLINED_FUNCTION_12_30(v223);
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  v224 = v215;
  v305 = v223;

  v225 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v225)
  {
    v226 = v225;
    outlined bridged method (pb) of @objc TPMessageIndicatorViewModel.transcriptSummary.getter(v225);
    if (v227)
    {
      static Color.primary.getter();
      (*(v311 + 104))(v313, *MEMORY[0x1E6981DF0], v312);
      ContactAvatarTileView.Caption.init(title:color:blendMode:)();

      OUTLINED_FUNCTION_33_3(v329);
      v181 = 1;
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v228, v229, v230, v328);
      outlined init with take of CaptionSectioner.SpeakerSection?();
    }

    else
    {
    }
  }

  v303 = partial apply for closure #2 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:);
LABEL_68:
  (*(v325 + 16))(v318, v324, v326);
  v231 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMd, &_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMR) + 48);
  v232 = MEMORY[0x1E6995978];
  if (!v181)
  {
    v232 = MEMORY[0x1E6995968];
  }

  v233 = v306;
  (v336)(v306, *v232, v337);
  OUTLINED_FUNCTION_50_9();
  v234();
  *(v233 + v231) = 0x3FF0000000000000;
  v235 = *(v339 + 104);
  v236 = *MEMORY[0x1E6995B68];
  v339 += 104;
  (v235)(v233, v236, v171);
  v238 = v340;
  v237 = v341;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_51_6();
  v239(v313);

  v312 = v180;
  v299 = v180;
  OUTLINED_FUNCTION_3_0();
  ContactAvatarTileView.Caption.init(title:subTitle:foregroundStyle:shadow:showBlockedIndicator:accessory:blendMode:accessoryForegroundColor:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v240, v241, v242, v328);
  v243 = v237[*(v238 + 60)];
  if (v243 == 1)
  {

    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v244, v245, v246, v316);
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMd, &_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMR);
  v247 = OUTLINED_FUNCTION_62_4();
  v248(v247);
  OUTLINED_FUNCTION_50_9();
  v249();
  v250 = OUTLINED_FUNCTION_63_5();
  v235(v250);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v251, v252, v253, v328);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (v243)
  {

    v254 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v255.super.isa = v254;
    OUTLINED_FUNCTION_17_0(v256, v257, v258, v259, v255);
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v260, v261, v262, v316);
  v263 = OUTLINED_FUNCTION_62_4();
  v264(v263);
  OUTLINED_FUNCTION_50_9();
  v265();
  v266 = OUTLINED_FUNCTION_63_5();
  v235(v266);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v267, v268, v269, v328);
  v270 = v322;
  (*(v321 + 16))(v308, v338, v322);
  v271 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v271, v272, v273, v270);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v274 = type metadata accessor for ContactPosterOrAvatarTileState();
  OUTLINED_FUNCTION_84(v274);
  v339 = ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  OUTLINED_FUNCTION_20();
  v275 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v276 = swift_allocObject();
  v277 = v327;
  *(v276 + 16) = v275;
  *(v276 + 24) = v277;
  OUTLINED_FUNCTION_41_10();
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  OUTLINED_FUNCTION_20();
  v278 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v279 = swift_allocObject();
  v280 = v327;
  *(v279 + 16) = v278;
  *(v279 + 24) = v280;
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  v281 = v310;
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v282, v283, v284, v340);
  v285 = type metadata accessor for ContactAvatarTileViewModel(0);
  OUTLINED_FUNCTION_84(v285);
  v286 = v280;

  v299 = v281;
  v287 = v303;
  v288 = v305;
  v289 = ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(v339, partial apply for closure #4 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:), v276, v303, v305, partial apply for closure #5 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:), v279, 0, 0, 0, v299, MEMORY[0x1E69E7CC0]);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v287, v288);

  OUTLINED_FUNCTION_33_3(v320);
  OUTLINED_FUNCTION_33_3(v323);
  (*(v321 + 8))(v338, v322);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v329, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMR);
  (*(v325 + 8))(v324, v326);
  return v289;
}

uint64_t RecentsListViewController.isStringChineseJapaneseKorean(_:)(uint64_t a1, unint64_t a2)
{
  v4 = RecentsListViewController.isPreferredLocalizationChineseKorean()();
  if (a2)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = MEMORY[0x1BFB209B0](a1, a2);
      v4 = CNIsChineseJapaneseKoreanString();
    }
  }

  return v4 & 1;
}

Swift::String __swiftcall RecentsListViewController.formatTimeInterval(_:)(Swift::Double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v2 setZeroFormattingBehavior_];
  [v2 setAllowedUnits_];
  [v2 setUnitsStyle_];
  v3 = [v2 stringFromTimeInterval_];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

void closure #1 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (![Strong isEditing])
    {
      v19 = RecentsCallItem.messageIndicatorViewModel.getter();
      if (v19)
      {
        v20 = v19;
        v21 = [v19 mediaURL];

        if (v21)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        __swift_storeEnumTagSinglePayload(v6, v22, 1, v10);
        outlined init with take of CaptionSectioner.SpeakerSection?();
        if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
        {
          (*(v11 + 32))(v13, v9, v10);
          RecentsListViewController.presentVideoMessagePlayer(url:and:bypassSafety:)();

          (*(v11 + 8))(v13, v10);
          return;
        }
      }

      else
      {

        __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return;
    }

    type metadata accessor for RecentsCollectionViewGridCell();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v18 = a2;
      [v17 setSelected_];
    }
  }
}

void closure #2 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void *, __n128, __n128, __n128, __n128))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([Strong isEditing])
    {
      type metadata accessor for RecentsCollectionViewGridCell();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = a2;
        [v10 setSelected_];
      }
    }

    else
    {
      UIView.windowRect.getter(v16);
      v12.n128_u64[0] = 0;
      v13.n128_u64[0] = 0;
      v14.n128_u64[0] = 0;
      v15.n128_u64[0] = 0;
      if ((v17 & 1) == 0)
      {
        v14.n128_u64[0] = v16[2];
        v15.n128_u64[0] = v16[3];
        v12.n128_u64[0] = v16[0];
        v13.n128_u64[0] = v16[1];
      }

      a4(a3, a2, v12, v13, v14, v15);
    }
  }
}

void RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)()
{
  OUTLINED_FUNCTION_29();
  v149 = v0;
  v152 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v7 = OUTLINED_FUNCTION_16(v6);
  v8 = type metadata accessor for RecentsCallItem(v7);
  OUTLINED_FUNCTION_1();
  v147 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_8();
  v12 = OUTLINED_FUNCTION_16(v11);
  v164 = type metadata accessor for RecentOngoingConversationMetadata(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMR);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v20);
  v143 = type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v141 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v23);
  v165 = type metadata accessor for ContactAvatarTileView.Caption.ForegroundStyle();
  OUTLINED_FUNCTION_1();
  v160 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMR);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v159 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v158 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  v157 = v35;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  OUTLINED_FUNCTION_1();
  v161 = v37;
  v162 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_40();
  v168 = v38;
  v39 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RecentsCallItemType(v39);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v131 - v47;
  v49 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v167 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_4();
  v53 = v52;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_32();
  v166 = v55;
  v56 = v8[5];
  v163 = v3;
  v57 = (v3 + v56);
  v58 = *(v3 + v56 + 8);
  v59 = 0xE000000000000000;
  if (v58)
  {
    v137 = *v57;
    v136 = v58;
  }

  else
  {
    v137 = 0;
    v136 = 0xE000000000000000;
  }

  v60 = (v163 + v8[6]);
  v61 = v60[1];
  if (v61)
  {
    v62 = *v60;
  }

  else
  {
    v62 = 0;
  }

  v140 = v62;
  if (v61)
  {
    v59 = v61;
  }

  v139 = v59;
  v150 = v8;
  *v166 = *(v163 + v8[12]);
  (*(v167 + 104))();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v164);
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
    OUTLINED_FUNCTION_40_13();
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v164);
  }

  else
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_0(v43, type metadata accessor for RecentsCallItemType);
  }

  closure #1 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)(v168);
  v70 = *(v167 + 16);
  v138 = v53;
  v146 = v49;
  v70(v53, v166, v49);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMd, &_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMR);
  v72 = *(v71 + 48);
  v73 = *MEMORY[0x1E6995968];
  type metadata accessor for CUIMaterial.Platter();
  OUTLINED_FUNCTION_7_0();
  v134 = *(v74 + 104);
  v135 = v74 + 104;
  v132 = v75;
  v134(v27, v73);
  v156 = *MEMORY[0x1E6995980];
  v76 = v156;
  v155 = type metadata accessor for CUIMaterial();
  OUTLINED_FUNCTION_7_0();
  v154 = *(v77 + 104);
  v133 = v77 + 104;
  v154(v27, v76);
  *(v27 + v72) = 0x3FF0000000000000;
  v78 = *MEMORY[0x1E6995B68];
  v153 = *(v160 + 13);
  v79 = v78;
  v153(v27);
  OUTLINED_FUNCTION_51_6();
  v80(v142);
  ContactAvatarTileView.Caption.init(title:foregroundStyle:showBlockedIndicator:blendMode:)();
  v81 = type metadata accessor for ContactAvatarTileView.Caption();
  v82 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
  v143 = type metadata accessor for SystemImage();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  v160 = v48;
  v89 = *(v71 + 48);
  LODWORD(v142) = *MEMORY[0x1E6995970];
  v90 = v134;
  (v134)(v27);
  (v154)(v27, v156, v155);
  *(v27 + v89) = 0x3FF0000000000000;
  v91 = v79;
  (v153)(v27, v79, v165);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v81);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v81);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v143);
  v101 = *(v71 + 48);
  (v90)(v27, v142, v132);
  (v154)(v27, v156, v155);
  *(v27 + v101) = 0x3FF0000000000000;
  (v153)(v27, v91, v165);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v81);
  v105 = v162;
  (*(v161 + 16))(v145, v168, v162);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v105);
  v109 = type metadata accessor for ContactPosterOrAvatarTileState();
  v169 = 0u;
  v170 = 0u;
  v171 = 0;
  OUTLINED_FUNCTION_84(v109);
  v165 = ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  v110 = v144;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v111 = v164;
  if (__swift_getEnumTagSinglePayload(v110, 1, v164) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v110, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_40_13();
    v112 = v131[1];
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    v113 = *(v112 + *(v111 + 24));
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5_18();
    if (((*(v114 + 128))(v113) & 1) == 0)
    {
      type metadata accessor for RecentsJoinButton(0);
      v115 = static RecentsJoinButton.fetchMenuItems(_:)(v112);
      OUTLINED_FUNCTION_47_9();
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_47_9();
  }

  v115 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v159 = v115;
  OUTLINED_FUNCTION_20();
  v116 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v117 = *(v147 + 80);
  v118 = v148;
  v119 = swift_allocObject();
  v164 = v119;
  *(v119 + 16) = v116;
  *(v119 + 24) = v115;
  OUTLINED_FUNCTION_41_10();
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  OUTLINED_FUNCTION_20();
  v120 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  v122 = v152;
  *(v121 + ((v118 + ((v117 + 24) & ~v117) + 7) & 0xFFFFFFFFFFFFFFF8)) = v152;
  v123 = v151;
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v150);
  v127 = type metadata accessor for ContactAvatarTileViewModel(0);
  OUTLINED_FUNCTION_84(v127);
  v128 = v159;

  v129 = v122;
  ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(v165, partial apply for specialized closure #2 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:), v164, partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:), v121, 0, 0, 0, 0, v128, v123, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_93_0();
  v130(v168);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v160, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  (*(v167 + 8))(v166, v146);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = type metadata accessor for BackgroundStyleConfiguration();
  v1 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v19 - v16;
  (*(v11 + 104))(v19 - v16, *MEMORY[0x1E6995B58], v10, v15);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  }

  else
  {
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    type metadata accessor for RecentsJoinButton(0);
    static RecentsJoinButton.fetchButtonImageName(_:)(v9, v13);
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_0(v9, type metadata accessor for RecentOngoingConversationMetadata);
    (*(v11 + 8))(v17, v10);
    (*(v11 + 32))(v17, v13, v10);
  }

  (*(v11 + 16))(v13, v17, v10);
  *v3 = static Color.green.getter();
  v3[8] = 1;
  (*(v1 + 104))(v3, *MEMORY[0x1E6995BF8], v19[0]);
  ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)();
  return (*(v11 + 8))(v17, v10);
}

void specialized closure #2 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(a2 + 16))
    {
    }

    else
    {
      v9 = type metadata accessor for IndexPath();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
      RecentsListViewController.joinCall(for:indexPath:isOrphanedVideoMessage:)();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }
  }
}

void closure #3 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)(uint64_t a1, char *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    UIView.windowRect.getter(v11);
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    if ((v12 & 1) == 0)
    {
      v9 = *&v11[2];
      v10 = *&v11[3];
      v7 = *v11;
      v8 = *&v11[1];
    }

    RecentsListViewController.presentDetailsView(for:sourceRect:sourceView:)(a2, a3, v7, v8, v9, v10);
  }
}

void RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:)()
{
  OUTLINED_FUNCTION_29();
  v220 = v0;
  v235 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v7 = OUTLINED_FUNCTION_16(v6);
  v8 = type metadata accessor for RecentsCallItem(v7);
  OUTLINED_FUNCTION_1();
  v219 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_16(v11);
  v218 = type metadata accessor for BackgroundStyleConfiguration();
  OUTLINED_FUNCTION_1();
  v217 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v14);
  v214 = type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
  OUTLINED_FUNCTION_1();
  v213 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMR);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v20);
  v211 = type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v210 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v23);
  v227 = type metadata accessor for ContactAvatarTileView.Caption.ForegroundStyle();
  OUTLINED_FUNCTION_1();
  v238 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40();
  v226 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMR);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v232 = v30;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v231 = v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  v230 = v34;
  OUTLINED_FUNCTION_4_24();
  v209 = type metadata accessor for ClipShape();
  OUTLINED_FUNCTION_1();
  v208 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v37);
  v206 = type metadata accessor for ClippedImage.ImageSize();
  OUTLINED_FUNCTION_1();
  v205 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8();
  v42 = v41 - v40;
  v43 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle();
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v45);
  v195 = type metadata accessor for ClippedImageBackgroundView.BackgroundStyle();
  OUTLINED_FUNCTION_1();
  v194 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v48);
  v237 = type metadata accessor for SystemImage();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v50);
  v203 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v202 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v225 = v53;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.SizeConfiguration();
  OUTLINED_FUNCTION_1();
  v233 = v55;
  v234 = v54;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_32();
  v229 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
  v59 = OUTLINED_FUNCTION_22(v58);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_32();
  v228 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_22(v62);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v191 - v64;
  v66 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v68 = v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_17();
  v72 = v70 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v191 - v74;
  v76 = v3;
  v77 = (v3 + *(v8 + 20));
  v78 = v77[1];
  v193 = *v77;
  v79 = *(v8 + 40);
  v239 = v8;
  v196 = *(v76 + v79);
  v240 = v76;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v66);
  v198 = v78;
  if (EnumTagSinglePayload == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v199 = 0;
    v192 = 0;
    v223 = 0;
    v222 = 0;
    v81 = 0xE000000000000000;
    v200 = 0xE000000000000000;
    v236 = 0xE000000000000000;
  }

  else
  {
    (*(v68 + 32))(v75, v65, v66);

    Date.init()();
    v199 = static Date.> infix(_:_:)();
    v82 = *(v68 + 8);
    v82(v72, v66);
    v222 = static Date.faceTimeDateString(from:showToday:)(v75, 1);
    v236 = v83;
    v223 = static Date.faceTimeDateString(from:showToday:)(v75, 0);
    v200 = v84;
    if (one-time initialization token for faceTimeTodayFormatter != -1)
    {
      swift_once();
    }

    v85 = static Date.faceTimeTodayFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v87 = [v85 stringFromDate_];

    v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v88;

    v82(v75, v66);
  }

  v89 = v228;
  v224 = v81;
  OUTLINED_FUNCTION_10_0();
  v90 = v237;
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v237);
  v94 = *(v240 + *(v239 + 44));
  if (v94)
  {
    v95 = v94;
    SystemImage.init(uiImage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v90);
    outlined init with take of CaptionSectioner.SpeakerSection?();
  }

  v99 = v229;
  *v229 = vdupq_n_s64(0x405D400000000000uLL);
  v101 = v233;
  v100 = v234;
  (*(v233 + 104))(v99, *MEMORY[0x1E6995B30], v234);
  SystemImage.init(systemName:)();
  (*(v101 + 16))(v197, v99, v100);
  v102 = objc_opt_self();
  v103 = [v102 systemFillColor];
  v104 = Color.init(uiColor:)();
  v105 = v201;
  *v201 = v104;
  OUTLINED_FUNCTION_51_6();
  v106(v105);
  v107 = [v102 tertiarySystemFillColor];
  Color.init(uiColor:)();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleO_AA4FontV4fontAG6WeightV6weighttMd, &_s7SwiftUI5ImageV5ScaleO_AA4FontV4fontAG6WeightV6weighttMR);
  v109 = *(v108 + 48);
  v110 = *(v108 + 64);
  v111 = *MEMORY[0x1E69816C0];
  type metadata accessor for Image.Scale();
  OUTLINED_FUNCTION_7_0();
  (*(v112 + 104))(v42, v111);
  *(v42 + v109) = static Font.largeTitle.getter();
  static Font.Weight.semibold.getter();
  *(v42 + v110) = v113;
  OUTLINED_FUNCTION_51_6();
  v114(v42);
  ClippedImageBackgroundView.ForegroundStyle.init(clipShapeColor:clippedImageSize:)();
  OUTLINED_FUNCTION_51_6();
  v115(v207);
  v116 = v225;
  ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.init(image:clipShape:sizeConfiguration:includeBlurOverlay:backgroundStyle:foregroundStyle:)();
  OUTLINED_FUNCTION_51_6();
  v117(v116);
  if (!v198)
  {
    v119 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v120.super.isa = v119;
    OUTLINED_FUNCTION_17_0(v121, 0xE700000000000000, v122, v123, v120);
  }

  v118 = v236;
  v124 = v196;
  v125 = Color.init(uiColor:)();
  v127 = v226;
  v126 = v227;
  *v226 = v125;
  v128 = *MEMORY[0x1E6995B60];
  v129 = *(v238 + 104);
  v238 += 104;
  v209 = v129;
  (v129)(v127, v128, v126);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_51_6();
  v130(v212);
  v191 = static Color.primary.getter();
  OUTLINED_FUNCTION_3_0();
  ContactAvatarTileView.Caption.init(title:subTitle:foregroundStyle:shadow:showBlockedIndicator:accessory:blendMode:accessoryForegroundColor:)();
  type metadata accessor for ContactAvatarTileView.Caption();
  OUTLINED_FUNCTION_12();
  v212 = v131;
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v131);
  if (v199)
  {

    v135 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v136.super.isa = v135;
    v222 = OUTLINED_FUNCTION_17_0(v137, 0xE800000000000000, v138, v139, v136);
    v236 = v140;

    v211 = v200;
  }

  else
  {
    v211 = v224;
    v223 = v192;
    v224 = v200;
    v236 = v118;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v237);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMd, &_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMR);
  v145 = *(v144 + 48);
  LODWORD(v208) = *MEMORY[0x1E6995970];
  v146 = v208;
  v147 = type metadata accessor for CUIMaterial.Platter();
  OUTLINED_FUNCTION_7_0();
  v207 = *(v148 + 104);
  v210 = v148 + 104;
  v149 = v226;
  v207(v226, v146, v147);
  LODWORD(v206) = *MEMORY[0x1E6995980];
  v150 = v206;
  v151 = type metadata accessor for CUIMaterial();
  OUTLINED_FUNCTION_7_0();
  v204 = *(v152 + 104);
  v205 = v152 + 104;
  v204(v149, v150, v151);
  *(v149 + v145) = 0x3FF0000000000000;
  LODWORD(v203) = *MEMORY[0x1E6995B68];
  v153 = v227;
  v154 = v209;
  v209(v149);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  v155 = v212;
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v212);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v155);

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v237);
  v165 = *(v144 + 48);
  v207(v149, v208, v147);
  v166 = v204;
  v204(v149, v206, v151);
  *(v149 + v165) = 0x3FF0000000000000;
  v154(v149, v203, v153);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v155);
  OUTLINED_FUNCTION_51_6();
  v170(v215);
  v171 = v216;
  v166(v216, *MEMORY[0x1E6995988], v151);
  OUTLINED_FUNCTION_51_6();
  v172(v171);
  ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)();
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  v173 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
  v177 = type metadata accessor for ContactPosterOrAvatarTileState();
  v241 = 0u;
  v242 = 0u;
  v243 = 0;
  OUTLINED_FUNCTION_84(v177);
  v238 = ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  OUTLINED_FUNCTION_20();
  v178 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v179 = swift_allocObject();
  v180 = v235;
  *(v179 + 16) = v178;
  *(v179 + 24) = v180;
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  OUTLINED_FUNCTION_20();
  v181 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v182 = swift_allocObject();
  v183 = v235;
  *(v182 + 16) = v181;
  *(v182 + 24) = v183;
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  v184 = v221;
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v185, v186, v187, v239);
  v188 = type metadata accessor for ContactAvatarTileViewModel(0);
  OUTLINED_FUNCTION_84(v188);
  v189 = v183;
  ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(v238, partial apply for closure #2 in RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:), v179, partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:), v182, 0, 0, 0, 0, 0, v184, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_93_0();
  v190(v229);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v228, &_s16CommunicationsUI11SystemImageVSgMd, &_s16CommunicationsUI11SystemImageVSgMR);
  OUTLINED_FUNCTION_30_0();
}

void closure #4 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ([Strong isEditing])
    {
      type metadata accessor for RecentsCollectionViewGridCell();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = v3;
        [v11 setSelected_];
      }
    }

    else
    {
      type metadata accessor for IndexPath();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
      RecentsListViewController.joinCall(for:indexPath:isOrphanedVideoMessage:)();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }
  }
}

void closure #3 in RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong isEditing])
    {
      type metadata accessor for RecentsCollectionViewGridCell();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        v9 = a2;
        [v8 setSelected_];
      }
    }

    else
    {
      RecentsListViewController.showLinkDetailViewController(for:)(a3);
    }
  }
}

UIImage __swiftcall UIImage.resized(to:)(CGSize to)
{
  height = to.height;
  width = to.width;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  OUTLINED_FUNCTION_37_0();
  v5 = swift_allocObject();
  *(v5 + 2) = v1;
  v5[3] = width;
  v5[4] = height;
  OUTLINED_FUNCTION_24();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in UIImage.resized(to:);
  *(v6 + 24) = v5;
  v11[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v11[3] = &block_descriptor_17;
  v7 = _Block_copy(v11);
  v8 = v1;

  v9 = [v4 imageWithActions_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Void __swiftcall RecentsListViewController.recentsCollectionViewGridCellIsSelected(cell:isSelected:)(UICollectionViewCell *cell, Swift::Bool isSelected)
{
  OUTLINED_FUNCTION_29();
  v24 = v3;
  v5 = v4;
  v6 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x678);
  v18 = v17(v14);
  v19 = [v18 indexPathForCell_];

  if (v19)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = (*(v8 + 32))(v16, v12, v6);
    v21 = (v17)(v20);
    v22.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    if (v24)
    {
      [v21 selectItemAtIndexPath:v22.super.isa animated:0 scrollPosition:0];
    }

    else
    {
      [v21 deselectItemAtIndexPath:v22.super.isa animated:0];
    }

    (*(v8 + 8))(v16, v6);
  }

  RecentsListViewController.updateMarkAsReadButton()();
  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsListViewController.presentGroupReportAndBlockAction(of:)()
{
  RecentsListViewController.tipKitStopObservation()();
  OUTLINED_FUNCTION_5_18();
  v4 = (*(v3 + 920))();
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_10_26(&one-time initialization token for faceTime);
  }

  v5 = static ReportSpamManager.faceTime;
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_67_2(v6);
  v20[3] = type metadata accessor for RecentsCallItem(0);
  v20[4] = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  outlined init with copy of IDSLookupManager(v20, v19);
  OUTLINED_FUNCTION_77_0();
  v7 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v19, (v7 + 2));
  v7[7] = v0;
  v7[8] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v7[9] = v1;
  outlined init with copy of IDSLookupManager(v20, v18);
  v8 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v18, (v8 + 2));
  v8[7] = v5;
  v8[8] = v0;
  v8[9] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v8[10] = v1;
  OUTLINED_FUNCTION_24();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  *(v9 + 24) = v1;
  OUTLINED_FUNCTION_24();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_98(v10);
  v11 = v0;

  OUTLINED_FUNCTION_79();
  specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)();
  v13 = v12;

  [v11 fetchSharing];

  __swift_destroy_boxed_opaque_existential_1(v20);

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_24();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  v15 = v11;
  v16 = v13;
  OUTLINED_FUNCTION_108_2();
}

uint64_t closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:), v4, v3);
}

uint64_t RecentsListViewController.presentReportAndBlockAction(of:)()
{
  RecentsListViewController.tipKitStopObservation()();
  OUTLINED_FUNCTION_5_18();
  v4 = (*(v3 + 920))();
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_10_26(&one-time initialization token for faceTime);
  }

  v5 = static ReportSpamManager.faceTime;
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_67_2(v6);
  v25[3] = type metadata accessor for RecentsCallItem(0);
  v25[4] = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  outlined init with copy of IDSLookupManager(v25, v24);
  OUTLINED_FUNCTION_77_0();
  v7 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v24, (v7 + 2));
  v7[7] = v0;
  v7[8] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v7[9] = v1;
  outlined init with copy of IDSLookupManager(v25, v23);
  v8 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v23, (v8 + 2));
  v8[7] = v5;
  v8[8] = v0;
  v8[9] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v8[10] = v1;
  OUTLINED_FUNCTION_24();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  *(v9 + 24) = v1;
  OUTLINED_FUNCTION_24();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_98(v10);
  v11 = v0;

  v12 = OUTLINED_FUNCTION_79();
  specialized SpamAlertBuilder.reportAndBlockAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(v12, v13, v14, v15, v8, v16, v9);
  v18 = v17;

  [v11 fetchSharing];

  __swift_destroy_boxed_opaque_existential_1(v25);

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_24();
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = v18;
  v20 = v11;
  v21 = v18;
  OUTLINED_FUNCTION_108_2();
}

uint64_t RecentsListViewController.presentBlockAllAction(of:)()
{
  RecentsListViewController.tipKitStopObservation()();
  OUTLINED_FUNCTION_5_18();
  (*(v2 + 920))();
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_10_26(&one-time initialization token for faceTime);
  }

  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_67_2(v3);
  v15[3] = type metadata accessor for RecentsCallItem(0);
  v15[4] = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  outlined init with copy of IDSLookupManager(v15, v14);
  OUTLINED_FUNCTION_77_0();
  v4 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v14, (v4 + 2));
  v4[7] = v0;
  v4[8] = partial apply for closure #1 in RecentsListViewController.presentBlockAllAction(of:);
  v4[9] = v1;
  OUTLINED_FUNCTION_24();
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in RecentsListViewController.presentBlockAllAction(of:);
  *(v5 + 24) = v1;
  OUTLINED_FUNCTION_24();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_105_0(v6);
  v7 = v0;
  v8 = OUTLINED_FUNCTION_79();
  v9 = specialized SpamAlertBuilder.blockAllParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(v8);

  [v7 fetchSharing];

  __swift_destroy_boxed_opaque_existential_1(v15);

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_24();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v11 = v7;
  v12 = v9;
  OUTLINED_FUNCTION_108_2();
}

uint64_t closure #2 in RecentsListViewController.presentBlockAllAction(of:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in RecentsListViewController.presentBlockAllAction(of:), v4, v3);
}

uint64_t closure #2 in RecentsListViewController.presentBlockAllAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[3];
  v2 = v0[2];

  [v2 presentViewController:v1 animated:1 completion:0];
  v3 = v0[1];

  return v3();
}

uint64_t RecentsListViewController.presentBlockUnknownAction(of:)()
{
  RecentsListViewController.tipKitStopObservation()();
  OUTLINED_FUNCTION_5_18();
  (*(v2 + 920))();
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_10_26(&one-time initialization token for faceTime);
  }

  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_67_2(v3);
  v15[3] = type metadata accessor for RecentsCallItem(0);
  v15[4] = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  outlined init with copy of IDSLookupManager(v15, v14);
  OUTLINED_FUNCTION_77_0();
  v4 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v14, (v4 + 2));
  v4[7] = v0;
  v4[8] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v4[9] = v1;
  OUTLINED_FUNCTION_24();
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  *(v5 + 24) = v1;
  OUTLINED_FUNCTION_24();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_105_0(v6);
  v7 = v0;
  v8 = OUTLINED_FUNCTION_79();
  v9 = specialized SpamAlertBuilder.blockUnknownParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(v8);

  [v7 fetchSharing];

  __swift_destroy_boxed_opaque_existential_1(v15);

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_24();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v11 = v7;
  v12 = v9;
  OUTLINED_FUNCTION_108_2();
}

void closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    RecentsListViewController.tipKitStartObservation()();
  }
}

uint64_t RecentsListViewController.isPreferredLocalizationChineseKorean()()
{
  v0 = type metadata accessor for Locale.Language.Components();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Locale.Components();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 preferredLocalizations];

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v13 + 16))
  {

    static Locale.canonicalLanguageIdentifier(from:)();

    Locale.Components.init(identifier:)();
    Locale.Components.languageComponents.getter();
    Locale.Language.Components.languageCode.getter();
    (*(v1 + 8))(v3, v0);
    v14 = type metadata accessor for Locale.LanguageCode();
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      v15 = 0;
    }

    else
    {
      v16 = MEMORY[0x1BFB1A4D0]();
      v18 = v17;
      (*(*(v14 - 8) + 8))(v6, v14);
      v19 = v16 == 24938 && v18 == 0xE200000000000000;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v16 == 28523 ? (v20 = v18 == 0xE200000000000000) : (v20 = 0), v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v16 == 26746 ? (v21 = v18 == 0xE200000000000000) : (v21 = 0), v21)))
      {

        v15 = 1;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {

    v15 = 0;
  }

  return v15 & 1;
}

void partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(void (*a1)(uint64_t, void *, __n128, __n128, __n128, __n128))
{
  v2 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_54_5();
  closure #2 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(v3, v4, v5, a1);
}

uint64_t outlined bridged method (pb) of @objc TPMessageIndicatorViewModel.transcriptSummary.getter(void *a1)
{
  v1 = [a1 transcriptSummary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:)(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v1);
  v2 = OUTLINED_FUNCTION_54_5();

  return a1(v2);
}

void partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)()
{
  v1 = *(type metadata accessor for RecentsCallItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #3 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)(v3, (v0 + v2), v4);
}

void partial apply for closure #4 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v0);
  v1 = OUTLINED_FUNCTION_54_5();
  closure #4 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(v1, v2, v3);
}

void specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)()
{
  OUTLINED_FUNCTION_29();
  v56 = v0;
  v57 = v1;
  v61 = v2;
  v59 = v3;
  v60 = v4;
  v58 = v5;
  v6 = type metadata accessor for RecentsCallItem(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_0_67();
  OUTLINED_FUNCTION_46();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v11 = specialized SpamModelable.formattedInitiatorHandle.getter();
  v13 = v12;
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_0(v10, type metadata accessor for RecentsCallItem);
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  v53 = v15;
  v54 = v14;
  v16 = objc_opt_self();
  v17 = [v16 conversationKit];
  v18.super.isa = v17;
  OUTLINED_FUNCTION_17_0(0xD00000000000002ALL, 0x80000001BC4F9DA0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v18);

  v19 = [v16 &off_1E7FE9588];
  v20.super.isa = v19;
  OUTLINED_FUNCTION_17_0(0xD000000000000038, 0x80000001BC4F9DD0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BC4BA940;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v21 + 32) = v54;
  *(v21 + 40) = v53;
  v22 = String.init(format:_:)();
  v24 = v23;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v25 = OUTLINED_FUNCTION_46();
  @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v25, v26, v22, v24, 0);
  v55 = objc_opt_self();
  v27 = [v55 currentDevice];
  [v27 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v28 = [v16 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v29.super.isa = v28;
  OUTLINED_FUNCTION_17_0(0xD00000000000001BLL, 0x80000001BC4F9CC0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v29);

  OUTLINED_FUNCTION_24();
  v30 = swift_allocObject();
  *(v30 + 16) = v56;
  *(v30 + 24) = v57;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v56, v57);
  v31 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v32 = [v16 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_27(0xD000000000000026, 0x80000001BC4F9E10, 0x61737265766E6F43, 0xEF74694B6E6F6974);

  OUTLINED_FUNCTION_24();
  v33 = swift_allocObject();
  *(v33 + 16) = v58;
  *(v33 + 24) = v59;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v58, v59);
  v34 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v35 = [v16 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v36.super.isa = v35;
  OUTLINED_FUNCTION_17_0(0xD000000000000027, 0x80000001BC4F9D70, 0x61737265766E6F43, 0xEF74694B6E6F6974, v36);
  OUTLINED_FUNCTION_80_0();

  OUTLINED_FUNCTION_24();
  v37 = swift_allocObject();
  *(v37 + 16) = v60;
  *(v37 + 24) = v61;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v60, v61);
  v38 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  *(inited + 32) = v31;
  *(inited + 40) = v34;
  *(inited + 48) = v38;
  v41 = v31;
  v42 = v34;
  v43 = v38;
  v44 = [v55 currentDevice];
  v45 = [v44 userInterfaceIdiom];

  if (v45 == 1)
  {

    inited = OUTLINED_FUNCTION_88_1();
    *(inited + 16) = xmmword_1BC4BC370;
    *(inited + 32) = v42;
    *(inited + 40) = v43;
    *(inited + 48) = v41;
    v46 = v41;
    v47 = v41;
    v48 = v42;
    v49 = v43;
  }

  else
  {
    v46 = v41;
  }

  v50 = specialized Array.count.getter();
  OUTLINED_FUNCTION_49_8();
  while (1)
  {
    if (v50 == v39)
    {

      OUTLINED_FUNCTION_30_0();
      return;
    }

    if (v42)
    {
      v51 = MEMORY[0x1BFB22010](v39, inited);
    }

    else
    {
      if (v39 >= MEMORY[0xEF74694B6E6F6984])
      {
        goto LABEL_19;
      }

      v51 = *(inited + 8 * v39 + 32);
    }

    v52 = v51;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_83_3();

    ++v39;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t partial apply for closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(v3, v4);
}

void specialized SpamAlertBuilder.reportAndBlockAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = objc_opt_self();
  v10 = OUTLINED_FUNCTION_101_0(v9);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_14_2();
  v11 = OUTLINED_FUNCTION_97_2();
  v12.super.isa = v10;
  OUTLINED_FUNCTION_17_0(v11, v13, 0x61737265766E6F43, v14, v12);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  OUTLINED_FUNCTION_20_18();
  @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v15, v16, v17, v18, v19);
  v88 = objc_opt_self();
  v20 = [v88 currentDevice];
  [v20 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v21 = [v8 (v7 + 1416)];
  OUTLINED_FUNCTION_29_3();
  v22 = 0xEF74694B6E6F6974;
  v23.super.isa = v21;
  OUTLINED_FUNCTION_17_0(v24, 0x80000001BC4F9CC0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v23);

  OUTLINED_FUNCTION_24();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_106_0(v25, v26, v27, v28, v29, v30, v31, v32, v75, v78, a7);
  OUTLINED_FUNCTION_86_0();
  v33 = OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_97_2();
  OUTLINED_FUNCTION_96_3();
  v34.super.isa = v33;
  OUTLINED_FUNCTION_17_0(v35, v36, v37, v38, v34);

  OUTLINED_FUNCTION_24();
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  v40 = OUTLINED_FUNCTION_87_2();
  v41 = [v8 v21 + 1416];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_18_27(v42, v43, v44, v45);

  OUTLINED_FUNCTION_24();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_102_0(v46, v47, v48, v49, v50, v51, v52, v53, v76, v79, v82, a2, a3, v88, a4, v92, a5);
  v54 = OUTLINED_FUNCTION_85_2();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  v57 = OUTLINED_FUNCTION_103_0(inited, xmmword_1BC4BC370);
  v58 = v40;
  v59 = v54;
  v60 = [v89 currentDevice];
  v61 = [v60 userInterfaceIdiom];

  if (v61 == 1)
  {

    v62 = OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_74_2(v62, v63, v64, v65, v66, v67, v68, v69, v77, v80, v83, v85, v87, v89, v91);
    v70 = v58;
    v71 = v59;
  }

  else
  {
    v22 = v57;
  }

  v72 = specialized Array.count.getter();
  OUTLINED_FUNCTION_49_8();
  while (1)
  {
    if (v72 == v55)
    {

      return;
    }

    if (v58)
    {
      v73 = MEMORY[0x1BFB22010](v55, inited);
    }

    else
    {
      if (v55 >= MEMORY[0x61737265766E6F53])
      {
        goto LABEL_14;
      }

      v73 = inited[2].n128_u64[v55];
    }

    v74 = v73;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_83_3();

    ++v55;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

{
  v8 = objc_opt_self();
  v9 = [v8 conversationKit];
  v54._object = 0xE000000000000000;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._object = 0x80000001BC4F9D10;
  v11._countAndFlagsBits = 0xD000000000000020;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v54);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v14 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v13._countAndFlagsBits, v13._object, 0, 0, 0);
  v51 = objc_opt_self();
  v15 = [v51 currentDevice];
  [v15 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v16 = [v8 &off_1E7FE9588];
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v55._object = 0xE000000000000000;
  v17._object = 0x80000001BC4F9CC0;
  v18.value._countAndFlagsBits = 0x61737265766E6F43;
  v18.value._object = 0xEF74694B6E6F6974;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v55);

  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a6, a7);
  v21 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v22 = [v8 conversationKit];
  v56._object = 0xE000000000000000;
  v23._object = 0x80000001BC4F9D40;
  v23._countAndFlagsBits = 0xD000000000000020;
  v24.value._countAndFlagsBits = 0x61737265766E6F43;
  v24.value._object = 0xEF74694B6E6F6974;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v56);

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  v27 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v28 = [v8 conversationKit];
  v57._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000027;
  v29._object = 0x80000001BC4F9D70;
  v30.value._countAndFlagsBits = 0x61737265766E6F43;
  v30.value._object = 0xEF74694B6E6F6974;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v57);

  v32 = swift_allocObject();
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v33 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  *(inited + 32) = v21;
  *(inited + 40) = v27;
  *(inited + 48) = v33;
  v35 = v21;
  v36 = v27;
  v37 = v33;
  v38 = [v51 currentDevice];
  v39 = [v38 userInterfaceIdiom];

  if (v39 == 1)
  {

    inited = swift_allocObject();
    *(inited + 16) = xmmword_1BC4BC370;
    *(inited + 32) = v36;
    *(inited + 40) = v37;
    *(inited + 48) = v35;
    v40 = v35;
    v41 = v35;
    v42 = v36;
    v43 = v37;
  }

  else
  {
    v40 = v35;
  }

  v44 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v44 == i)
    {

      return;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1BFB22010](i, inited);
    }

    else
    {
      if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v46 = *(inited + 8 * i + 32);
    }

    v47 = v46;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v14 addAction_];
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t partial apply for closure #2 in RecentsListViewController.presentReportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(v3, v4);
}

void _s15ConversationKit16SpamAlertBuilderC014reportAndBlockD033_1968E5514C13C55B0B1DD71C8D317F12LL2of12blockHandler0sg6ReportT006cancelT0011preparationT0So17UIAlertControllerCAA0C9Modelable_p_ySbcSgA3NtFTf4ennnnn_nSo6TUCallC_Ttg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_opt_self();
  v9 = OUTLINED_FUNCTION_101_0(v8);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_14_2();
  v10 = OUTLINED_FUNCTION_97_2();
  v11.super.isa = v9;
  OUTLINED_FUNCTION_17_0(v10, v12, 0x61737265766E6F43, v13, v11);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  OUTLINED_FUNCTION_20_18();
  @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v14, v15, v16, v17, v18);
  v87 = objc_opt_self();
  v19 = [v87 currentDevice];
  [v19 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v20 = [v7 (v6 + 1416)];
  OUTLINED_FUNCTION_29_3();
  v21 = 0xEF74694B6E6F6974;
  v22.super.isa = v20;
  OUTLINED_FUNCTION_17_0(v23, 0x80000001BC4F9CC0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v22);

  OUTLINED_FUNCTION_24();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_106_0(v24, v25, v26, v27, v28, v29, v30, v31, v74, v77, a6);
  OUTLINED_FUNCTION_86_0();
  v32 = OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_97_2();
  OUTLINED_FUNCTION_96_3();
  v33.super.isa = v32;
  OUTLINED_FUNCTION_17_0(v34, v35, v36, v37, v33);

  OUTLINED_FUNCTION_24();
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *(v38 + 24) = a2;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);
  v39 = OUTLINED_FUNCTION_87_2();
  v40 = [v7 v20 + 1416];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_18_27(v41, v42, v43, v44);

  OUTLINED_FUNCTION_24();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_102_0(v45, v46, v47, v48, v49, v50, v51, v52, v75, v78, v81, a1, a2, v87, a3, v91, a4);
  v53 = OUTLINED_FUNCTION_85_2();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  v56 = OUTLINED_FUNCTION_103_0(inited, xmmword_1BC4BC370);
  v57 = v39;
  v58 = v53;
  v59 = [v88 currentDevice];
  v60 = [v59 userInterfaceIdiom];

  if (v60 == 1)
  {

    v61 = OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_74_2(v61, v62, v63, v64, v65, v66, v67, v68, v76, v79, v82, v84, v86, v88, v90);
    v69 = v57;
    v70 = v58;
  }

  else
  {
    v21 = v56;
  }

  v71 = specialized Array.count.getter();
  OUTLINED_FUNCTION_49_8();
  while (1)
  {
    if (v71 == v54)
    {

      return;
    }

    if (v57)
    {
      v72 = MEMORY[0x1BFB22010](v54, inited);
    }

    else
    {
      if (v54 >= MEMORY[0x61737265766E6F53])
      {
        goto LABEL_14;
      }

      v72 = inited[2].n128_u64[v54];
    }

    v73 = v72;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_83_3();

    ++v54;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in RecentsListViewController.presentBlockAllAction(of:)(v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in RecentsListViewController.presentBlockUnknownAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(v3, v4);
}

uint64_t objectdestroy_50Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

id OUTLINED_FUNCTION_99_0()
{

  return [v0 conversationKit];
}

id OUTLINED_FUNCTION_101_0(void *a1)
{

  return [a1 conversationKit];
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a1 + 16) = a15;
  *(a1 + 24) = a17;

  return outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a15, a17);
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return dispatch thunk of TaskQueue.async(_:)();
}

void CGAffineTransform.rotatingTranslationComponent(by:)(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  tx = v2[4];
  ty = v2[5];
  v9 = *v2;
  v10 = *(v2 + 1);
  *&using.a = *v2;
  *&using.c = v10;
  using.tx = tx;
  using.ty = ty;
  if (CGAffineTransformIsIdentity(&using))
  {
    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = v9;
    v7 = v10;
    if (a2 != 0.0)
    {
      CGAffineTransformMakeRotation(&using, a2);
      CGAffineTransform.transformingTranslationComponent(using:)(&v11, &using);
      v8 = *&v11.a;
      v7 = *&v11.c;
      tx = v11.tx;
      ty = v11.ty;
    }
  }

  *a1 = v8;
  *(a1 + 16) = v7;
  *(a1 + 32) = tx;
  *(a1 + 40) = ty;
}

void __swiftcall CGAffineTransform.transformingTranslationComponent(using:)(CGAffineTransform *__return_ptr retstr, CGAffineTransform *using)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v9 = v2[5];
  v12.a = *v2;
  v12.b = v6;
  v12.c = v7;
  v12.d = v8;
  v12.tx = v10;
  v12.ty = v9;
  if (!CGAffineTransformIsIdentity(&v12))
  {
    v11 = v10 * using->b;
    v10 = using->tx + v10 * using->a + v9 * using->c;
    v9 = using->ty + v11 + v9 * using->d;
  }

  retstr->a = v5;
  retstr->b = v6;
  retstr->c = v7;
  retstr->d = v8;
  retstr->tx = v10;
  retstr->ty = v9;
}

void __swiftcall CGAffineTransform.transformingTranslationComponent(using:)(CGAffineTransform *__return_ptr retstr, CATransform3D *using)
{
  m21 = v2[4];
  m22 = v2[5];
  v10 = *v2;
  v11 = *(v2 + 1);
  *&__dst.m11 = *v2;
  *&__dst.m13 = v11;
  __dst.m21 = m21;
  __dst.m22 = m22;
  if (CGAffineTransformIsIdentity(&__dst))
  {
    v8 = v10;
    v7 = v11;
  }

  else
  {
    memcpy(&__dst, using, sizeof(__dst));
    v9 = MEMORY[0x1BFB228D0](&__dst);
    v8 = v10;
    v7 = v11;
    if (v9)
    {
      memcpy(&__dst, using, sizeof(__dst));
      CATransform3DGetAffineTransform(&usinga, &__dst);
      CGAffineTransform.transformingTranslationComponent(using:)(&__dst, &usinga);
      v8 = *&__dst.m11;
      v7 = *&__dst.m13;
      m21 = __dst.m21;
      m22 = __dst.m22;
    }
  }

  *&retstr->a = v8;
  *&retstr->c = v7;
  retstr->tx = m21;
  retstr->ty = m22;
}

void CGAffineTransform.rotatingTranslationComponent(for:)(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = 0.0;
  if (a1 <= 3)
  {
    v7 = dbl_1BC4C3888[a1];
  }

  *&using.a = *v2;
  *&using.c = v5;
  *&using.tx = v6;
  v14 = v5;
  v15 = v4;
  v13 = v6;
  IsIdentity = CGAffineTransformIsIdentity(&using);
  v10 = v13;
  v9 = v14;
  v11 = v15;
  if (v7 != 0.0 && !IsIdentity)
  {
    CGAffineTransformMakeRotation(&using, v7);
    CGAffineTransform.transformingTranslationComponent(using:)(&v16, &using);
    v11 = *&v16.a;
    v9 = *&v16.c;
    v10 = *&v16.tx;
  }

  *a2 = v11;
  a2[1] = v9;
  a2[2] = v10;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR, MEMORY[0x1E697EA58], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR, MEMORY[0x1E697E730], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR, MEMORY[0x1E697BF90], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMR, MEMORY[0x1E697C580], a1);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, &v24 - v18, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a3(0);
    OUTLINED_FUNCTION_7_0();
    return (*(v20 + 32))(a4, v19);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_25_22(v22, &dword_1BBC58000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v12 + 8))(v16, v10);
  }
}

double static _ColorMatrix.buttonPlatter.getter@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  MEMORY[0x1BFB1E170](v11);
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a4;
  *(a1 + 48) = a5;
  result = 0.0;
  *(a1 + 64) = xmmword_1BC4C0360;
  return result;
}

uint64_t ModalOverlayTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = 0.0;
  if (TransitionPhase.isIdentity.getter())
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVy15ConversationKit22ModalOverlayTransitionVGMd, &_s7SwiftUI22PlaceholderContentViewVy15ConversationKit22ModalOverlayTransitionVGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v15 + 16))(v8, a1);
  *&v8[*(v5 + 44)] = v14;
  if ((TransitionPhase.isIdentity.getter() & 1) == 0)
  {
    v13 = 25.0;
  }

  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v8, v12, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMR);
  v16 = &v12[*(v9 + 44)];
  *v16 = v13;
  v16[8] = 0;
  if (TransitionPhase.isIdentity.getter())
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.8;
  }

  static UnitPoint.center.getter();
  v19 = v18;
  v21 = v20;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v12, a3, &_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGAA06_ScaleM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGAA06_ScaleM0VGMR);
  v23 = a3 + *(result + 36);
  *v23 = v17;
  *(v23 + 8) = v17;
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  return result;
}

id ActivityIndicator.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v0 setActivityIndicatorViewStyle_];
  v1 = [objc_opt_self() whiteColor];
  [v0 setColor_];

  [v0 startAnimating];
  return v0;
}

id ActivityIndicator.updateUIView(_:context:)(void *a1)
{
  type metadata accessor for ControlSize();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMR, MEMORY[0x1E697DC30], v5 - v4);
  v6 = OUTLINED_FUNCTION_1_5();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x1E697DC20])
  {
    return [a1 _setCustomWidth_];
  }

  v10 = v8;
  v11 = *MEMORY[0x1E697DC10];
  v12 = type metadata accessor for ActivityIndicator(0);
  if (v10 == v11)
  {
    return [a1 _setCustomWidth_];
  }

  [a1 _setCustomWidth_];
  v13 = OUTLINED_FUNCTION_1_5();
  return v14(v13);
}

int *ActivityIndicator.init()@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMR);
  OUTLINED_FUNCTION_12_31();
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ActivityIndicator(0);
  *(a2 + result[5]) = 0x402C000000000000;
  *(a2 + result[6]) = 0x403E000000000000;
  *(a2 + result[7]) = 0x4038000000000000;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ActivityIndicator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ActivityIndicator and conformance ActivityIndicator, type metadata accessor for ActivityIndicator, &protocol conformance descriptor for ActivityIndicator);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ActivityIndicator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ActivityIndicator and conformance ActivityIndicator, type metadata accessor for ActivityIndicator, &protocol conformance descriptor for ActivityIndicator);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ActivityIndicator(uint64_t a1)
{
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ActivityIndicator and conformance ActivityIndicator, type metadata accessor for ActivityIndicator, &protocol conformance descriptor for ActivityIndicator);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t ScreenSharingOverlayPlatterButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v142 = a2;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v124[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
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
  v26 = &v124[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v124[-v28];
  v134 = type metadata accessor for ButtonStyleConfiguration.Label();
  OUTLINED_FUNCTION_1();
  v133 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v34 = v33 - v32;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v124[-v36];
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_10(&v124[-v39]);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_10(&v124[-v41]);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_10(&v124[-v43]);
  v132 = v34;
  v135 = a1;
  v44 = ButtonStyleConfiguration.label.getter();
  v143 = v3;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v44);
  v45 = *MEMORY[0x1E697FF40];
  v146 = v7;
  v46 = *(v7 + 104);
  v150 = v45;
  v149 = v46;
  v46(v26);
  OUTLINED_FUNCTION_17_25(v26);
  *(v47 - 256) = v11;
  v48 = *(v11 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v29, v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v26, &v16[v48], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  OUTLINED_FUNCTION_3_62(v16);
  if (!v50)
  {
    v49 = v128;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v16, v128, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    OUTLINED_FUNCTION_3_62(&v16[v48]);
    if (!v50)
    {
      v52 = v146;
      v53 = &v16[v48];
      v54 = v129;
      (*(v146 + 32))(v129, v53, v5);
      OUTLINED_FUNCTION_1_67();
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v55, v56, MEMORY[0x1E697FF60]);
      v125 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *(v52 + 8);
      v11 = v52 + 8;
      v49 = v57;
      v57(v54, v5);
      v48 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
      OUTLINED_FUNCTION_19_14(v26);
      OUTLINED_FUNCTION_19_14(v29);
      v57(v128, v5);
      OUTLINED_FUNCTION_19_14(v16);
      OUTLINED_FUNCTION_10_27();
      OUTLINED_FUNCTION_22_19();
      if (v125)
      {
        goto LABEL_12;
      }

LABEL_10:
      static Font.subheadline.getter();
      static Font.Weight.medium.getter();
      v51 = Font.weight(_:)();

      goto LABEL_13;
    }

    v48 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
    OUTLINED_FUNCTION_19_14(v26);
    OUTLINED_FUNCTION_19_14(v29);
    (*(v146 + 8))(v49, v5);
    OUTLINED_FUNCTION_22_19();
LABEL_9:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    OUTLINED_FUNCTION_10_27();
    goto LABEL_10;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  OUTLINED_FUNCTION_3_62(&v16[v48]);
  v11 = v145;
  v49 = v144;
  if (!v50)
  {
    goto LABEL_9;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  OUTLINED_FUNCTION_10_27();
LABEL_12:
  v51 = static Font.headline.getter();
LABEL_13:
  KeyPath = swift_getKeyPath();
  (*(v133 + 32))(v37, v132, v134);
  OUTLINED_FUNCTION_23_20();
  v60 = &v37[v59];
  *v60 = KeyPath;
  v60[1] = v51;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v61 = 0.5;
  }

  else
  {
    v61 = 1.0;
  }

  v62 = v151;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v37, v151, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  OUTLINED_FUNCTION_23_20();
  *(v62 + v63) = v61;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v64);
  OUTLINED_FUNCTION_15_21();
  v65();
  OUTLINED_FUNCTION_17_25(v49);
  v67 = *(*(v66 - 256) + 48);
  v68 = v11;
  v69 = v11;
  v70 = v147;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v68, v147, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v49, v70 + v67, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  OUTLINED_FUNCTION_3_62(v70);
  v71 = v141;
  if (!v50)
  {
    v76 = v126;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v70, v126, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    OUTLINED_FUNCTION_3_62(v70 + v67);
    if (!v77)
    {
      v80 = v146;
      v81 = OUTLINED_FUNCTION_20_19();
      v82(v81);
      OUTLINED_FUNCTION_1_67();
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v83, v84, MEMORY[0x1E697FF60]);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v85 = *(v80 + 8);
      v86 = OUTLINED_FUNCTION_1_5();
      v85(v86);
      OUTLINED_FUNCTION_18_28(v144);
      OUTLINED_FUNCTION_18_28(v145);
      (v85)(v76, v5);
      v48 = v148;
      v87 = OUTLINED_FUNCTION_18_28(v70);
      v73 = v151;
      goto LABEL_26;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v144, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v72 = v147;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v145, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v78 = OUTLINED_FUNCTION_1_5();
    v79(v78);
    v73 = v151;
    goto LABEL_24;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v72 = v147;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  OUTLINED_FUNCTION_3_62(v72 + v67);
  v73 = v151;
  if (!v50)
  {
LABEL_24:
    v74 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd;
    v75 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR;
    goto LABEL_25;
  }

  v74 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
  v75 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
LABEL_25:
  v87 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, v74, v75);
LABEL_26:
  v88 = v138;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v87);
  OUTLINED_FUNCTION_15_21();
  v89();
  OUTLINED_FUNCTION_17_25(v48);
  v91 = *(*(v90 - 256) + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v88, v71, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v48, v71 + v91, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  OUTLINED_FUNCTION_3_62(v71);
  if (!v50)
  {
    v92 = v127;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v71, v127, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    OUTLINED_FUNCTION_3_62(v71 + v91);
    if (!v93)
    {
      v94 = v146;
      v95 = OUTLINED_FUNCTION_20_19();
      v96(v95);
      OUTLINED_FUNCTION_1_67();
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v97, v98, MEMORY[0x1E697FF60]);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v99 = *(v94 + 8);
      v100 = OUTLINED_FUNCTION_1_5();
      v99(v100);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v148, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v73 = v151;
      (v99)(v92, v5);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_18_28(v148);
    OUTLINED_FUNCTION_18_28(v88);
    (*(v146 + 8))(v92, v5);
LABEL_34:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_18_28(v48);
  OUTLINED_FUNCTION_18_28(v88);
  OUTLINED_FUNCTION_3_62(v71 + v91);
  if (!v50)
  {
    goto LABEL_34;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
LABEL_35:
  v122 = static Alignment.center.getter();
  v123 = v101;
  LOBYTE(v121) = 1;
  v120 = 0;
  LOBYTE(v119) = 1;
  v118 = 0;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(__src);
  v102 = v139;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v73, v139, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMR);
  OUTLINED_FUNCTION_23_20();
  memcpy((v102 + v103), __src, 0x70uLL);
  v151 = static Alignment.center.getter();
  v105 = v104;
  OUTLINED_FUNCTION_23_20();
  v106 = v140;
  v108 = v140 + v107;
  v109 = *MEMORY[0x1E697F468];
  v110 = type metadata accessor for RoundedCornerStyle();
  OUTLINED_FUNCTION_7_0();
  v112 = *(v111 + 104);
  v112(v108, v109, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyACyAA01_fG11PlaceholderVAA05_BlurG0VG_Qo_GGMd, &_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyACyAA01_fG11PlaceholderVAA05_BlurG0VG_Qo_GGMR);
  v152 = 0x4059000000000000;
  v153 = 1;
  static _ColorMatrix.buttonPlatter.getter(v155);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA26_BackdropEffectPlaceholderVAA05_BlurF0VGMd, &_s7SwiftUI15ModifiedContentVyAA26_BackdropEffectPlaceholderVAA05_BlurF0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>();
  View._colorMatrix(_:)();
  v113 = (v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorL0VFQOyAEyAA01_hI11PlaceholderVAA05_BlurI0VG_Qo_GGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorL0VFQOyAEyAA01_hI11PlaceholderVAA05_BlurI0VG_Qo_GGGMR) + 36));
  *v113 = v151;
  v113[1] = v105;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v102, v106, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGAA01_d5ShapeL0VyAXGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGAA01_d5ShapeL0VyAXGGMR);
  v115 = v142;
  v116 = v142 + *(v114 + 36);
  v112(v116, v109, v110);
  *(v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ContentShapeModifierVyAA7CapsuleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA7CapsuleVGMR) + 36)) = 0;
  return outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v106, v115, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMR);
}