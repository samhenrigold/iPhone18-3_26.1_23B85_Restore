void ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.init(coder:)()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = closure #1 in variable initialization expression of ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.titleLabel(v2);

  *(v0 + v1) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.addAccessoryView(_:)(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4CB3D0;
  v5 = [a1 leadingAnchor];
  v6 = [*&v1[OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel] trailingAnchor];
  v7 = OUTLINED_FUNCTION_2_87();
  v9 = [v7 v8];

  *(v4 + 32) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [a1 trailingAnchor];
  v12 = OUTLINED_FUNCTION_2_87();
  v14 = [v12 v13];

  *(v4 + 40) = v14;
  v15 = [a1 topAnchor];
  v16 = [v1 topAnchor];
  v17 = OUTLINED_FUNCTION_2_87();
  v19 = [v17 v18];

  *(v4 + 48) = v19;
  v20 = [a1 centerYAnchor];
  v21 = [v1 centerYAnchor];
  v22 = OUTLINED_FUNCTION_2_87();
  v24 = [v22 v23];

  *(v4 + 56) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [a1 bottomAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:12.0];

  *(v4 + 64) = v27;
  v28 = [a1 heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v4 + 72) = v29;
  v30 = [a1 widthAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v4 + 80) = v31;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints_];
}

id ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ConversationControlsPrimaryActionButtonProvider.__ivar_destroyer()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 200), *(v0 + 208));
}

uint64_t ConversationControlsPrimaryActionButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 200), *(v0 + 208));

  return v0;
}

uint64_t ConversationControlsPrimaryActionButtonProvider.__deallocating_deinit()
{
  ConversationControlsPrimaryActionButtonProvider.deinit();

  return swift_deallocClassInstance();
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  ObjectType = swift_getObjectType();

  return specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(a1, a3, a4, a5, v5, ObjectType, a2);
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = [objc_opt_self() tu:a1 contactStoreConfigurationForConversation:?];
  v9 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v10 = [v7 mergedRemoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = specialized Set.count.getter();
  if (v12)
  {
    v13 = v12;
    v69 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = specialized Set.startIndex.getter(v11);
    v66 = result;
    v67 = v15;
    v68 = v16 & 1;
    if ((v13 & 0x8000000000000000) == 0)
    {
      v58 = v9;
      v59 = a5;
      v60 = v7;
      v17 = 0;
      v63 = v13;
      v64 = v11 & 0xC000000000000001;
      v18 = &selRef_isRecordingAllowed;
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = v68;
        v21 = OUTLINED_FUNCTION_4_69();
        v22 = v11;
        specialized Set.subscript.getter(v21, v23, v24, v11, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        v26 = v25;
        v27 = v18;
        v28 = [v25 v18[6]];
        v29 = [v28 shouldHideContact];

        if (v29)
        {
          [objc_allocWithZone(MEMORY[0x1E695CF18]) initWithContact_];
        }

        else
        {
          v30 = [v26 v27 + 248];
          [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

          v26 = v30;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_1_5();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        v11 = v22;
        if (v64)
        {
          if (!v20)
          {
            goto LABEL_22;
          }

          v18 = &selRef_isRecordingAllowed;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v42 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd, &_sSh5IndexVySo20TUConversationMemberC_GMR);
          v43 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v43(v65, 0);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_4_69();
          v34 = specialized _NativeSet.index(after:)(v31, v32, v33, v22);
          v36 = v35;
          v38 = v37;
          v39 = OUTLINED_FUNCTION_4_69();
          result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v39, v40, v41);
          v66 = v34;
          v67 = v36;
          v68 = v38 & 1;
          v18 = &selRef_isRecordingAllowed;
          v42 = v63;
        }

        ++v17;
        if (v19 == v42)
        {

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v66, v67, v68);
          v44 = v69;
          v7 = v60;
          v9 = v58;
          a5 = v59;
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v44 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v45 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
    v46 = a2;
    v47 = a5;
    v48 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v9, v44, a2, v47);
    v49 = [v48 avatarViewController];
    v50 = a4;
    if (!a4)
    {
      a3 = TUConversation.participantListDisplayName.getter();
      v50 = v51;
    }

    v52 = outlined bridged method (pb) of @objc TUConversation.messagesGroupPhotoData.getter(v7);
    v54 = v53;
    v55 = [v48 contacts];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = objc_allocWithZone(MEMORY[0x1E695D158]);
    v57 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(a3, v50, v52, v54);
    [v49 updateViewWithGroupIdentity_];

    return v48;
  }

  return result;
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:handle:badgeImage:)(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BAC30;
    v6 = [a2 shouldHideContact];
    v7 = objc_allocWithZone(MEMORY[0x1E695CF18]);
    if (v6)
    {
      v8 = [v7 initWithContact_];
    }

    else
    {
      v8 = [v7 _initWithHandle_];
    }

    *(v5 + 32) = v8;
  }

  v9 = [objc_opt_self() clearColor];
  v10 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
  v11 = OUTLINED_FUNCTION_62_0();
  v13 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v11, v12, a3, v9);

  return v13;
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:participants:badgeImage:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = *(a2 + 16);
  if (!v12)
  {

    goto LABEL_11;
  }

  v22 = a3;
  specialized ContiguousArray.reserveCapacity(_:)();
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  do
  {
    outlined init with copy of Participant(v13, v11);
    v15 = *(v11 + *(v5 + 28));
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = v15;
    if ([v16 shouldHideContact])
    {

LABEL_6:
      [objc_allocWithZone(MEMORY[0x1E695CF18]) initWithContact_];
      goto LABEL_8;
    }

    [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

LABEL_8:
    outlined destroy of Participant(v11);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v13 += v14;
    --v12;
  }

  while (v12);

  a3 = v22;
LABEL_11:
  v17 = [objc_opt_self() clearColor];
  v18 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
  v19 = OUTLINED_FUNCTION_4_31();
  return ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v19, v20, a3, v17);
}

uint64_t ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:badgeImage:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  specialized ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:badgeImage:)(v10, a2, v2, v5, v6);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:activeRemoteParticipant:badgeImage:)(void *a1, void *a2, void *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:activeRemoteParticipant:badgeImage:)(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t static ConversationControlsBadgingAvatarViewController.hasAvatar(for:)(NSObject *a1)
{
  v1 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3].isa);
  OUTLINED_FUNCTION_62_0();
  dispatch thunk of BasicCall.underlyingObject.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  v1 = v27;
  v2 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v27);
  if (!v2)
  {
LABEL_14:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, &static Logger.conversationControls);
    v6 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BBC58000, v6, v24, "hasAvatar: call has no contactIdentifiers", v25, 2u);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
    }

LABEL_19:

    goto LABEL_20;
  }

  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    goto LABEL_14;
  }

  v5 = [objc_opt_self() tu:v27 contactStoreConfigurationForCall:?];
  v6 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v7 = (v3 + 40);
  v8 = -v4;
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {

      goto LABEL_19;
    }

    if (++v9 >= *(v3 + 16))
    {
      break;
    }

    v10 = v7 + 2;
    v12 = *(v7 - 1);
    v11 = *v7;

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    LOBYTE(v12) = CNContactStore.hasImage(forContactId:)(v13);

    v7 = v10;
    if (v12)
    {

      return 1;
    }
  }

  __break(1u);
LABEL_23:
  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_10:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v1, v26);
  v1 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    swift_getDynamicType();
    v19 = _typeName(_:qualified:)();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v26);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1BBC58000, v1, v16, "hasAvatar: Unexpected call type: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
LABEL_20:

    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return 0;
}

id ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [objc_opt_self() settingsWithContactStore:a1 threeDTouchEnabled:0];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v9 = objc_msgSendSuper2(&v15, sel_initWithSettings_, v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
  v10 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setContacts_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNBadgingAvatarBadgeStyleSettings, 0x1E695D0E8);
  v12 = CNBadgingAvatarBadgeStyleSettings.__allocating_init(position:color:backgroundColor:cropStyle:)(2, 0, 0, 1);
  [v10 setBadgeStyleSettings_];

  v13 = [v10 badgeStyleSettings];
  [v13 setBackgroundColor_];

  [v10 setBadgeImage_];
  return v10;
}

Swift::Int ConversationControlsBadgingAvatarViewController.hash(callUUID:)(double a1)
{
  v2 = v1;
  Hasher.init()();
  v3 = [v1 contacts];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter();

  MEMORY[0x1BFB22640](v4);
  UUID.uuidString.getter();
  String.hash(into:)();

  v5 = [v2 badgeImage];
  if (v5)
  {
    v6 = v5;
    v7 = UIImagePNGRepresentation(v5);
    if (v7)
    {
      v8 = v7;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = OUTLINED_FUNCTION_62_0();
      v10 = MEMORY[0x1BFB1A2C0](v9);
      MEMORY[0x1BFB22640](v10);

      v11 = OUTLINED_FUNCTION_62_0();
      outlined consume of Data._Representation(v11, v12);
    }

    else
    {
    }
  }

  return Hasher.finalize()();
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(settings:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSettings_];

  return v3;
}

id ConversationControlsBadgingAvatarViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id CNBadgingAvatarBadgeStyleSettings.__allocating_init(position:color:backgroundColor:cropStyle:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPosition:a1 color:a2 backgroundColor:a3 cropStyle:a4];

  return v6;
}

id @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v7 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v7 = 0;
  }

  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a3, a4);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v4 initGroupWithName:v7 photo:isa contacts:v9];

  return v10;
}

uint64_t outlined bridged method (pb) of @objc TUConversation.messagesGroupPhotoData.getter(void *a1)
{
  v1 = [a1 messagesGroupPhotoData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc CNMutableContact.firstName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setFirstName_];
}

uint64_t specialized _NativeSet.index(after:)(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return _HashTable.occupiedBucket(after:)();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(uint64_t a1)
{
  if (a1 < 0 || (OUTLINED_FUNCTION_1_89(), v4 ^ v5 | v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_58();
  if ((v8 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v7 + 36) != v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v7 + 48);
  v10 = v9 + *(*(type metadata accessor for Participant(0) - 8) + 72) * v2;

  outlined init with copy of Participant(v10, v1);
}

{
  if (a1 < 0 || (OUTLINED_FUNCTION_1_89(), v4 ^ v5 | v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_58();
  if ((v8 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v7 + 36) != v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v7 + 48);
  v10 = type metadata accessor for Participant();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = v9 + *(v11 + 72) * v2;

  v12(v1, v13, v10);
}

void specialized Set.subscript.getter(uint64_t a1, int a2, char a3, uint64_t a4)
{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for SGURL, 0x1E69992A8);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for CHHandle, 0x1E6993578);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a1 < 0 || 1 << *(a3 + 32) <= a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 24 * a1;
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 8) = v6;
    *(a4 + 16) = v5;

    return;
  }

LABEL_8:
  __break(1u);
}

id specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v10 = a2;
    swift_unknownObjectRelease();
    v11 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v10, a3, 0, 0, a4);

    return v11;
  }

  else
  {
    (*(a7 + 48))(v53, a6, a7, a3, a4, a5);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    v15 = dispatch thunk of BasicCall.contactStoreConfiguration.getter();
    v48 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_destroy_boxed_opaque_existential_1(v53);
    v16 = (*(a7 + 192))(a6, a7);
    v17 = specialized Set.count.getter();
    if (v17)
    {
      v18 = v17;
      v47 = a1;
      v52 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      result = specialized Set.startIndex.getter(v16);
      v49 = result;
      v50 = v19;
      v51 = v20 & 1;
      if ((v18 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        while (!__OFADD__(v21++, 1))
        {
          v23 = OUTLINED_FUNCTION_1_5();
          specialized Set.subscript.getter(v23, v24, v51, v16, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
          v26 = v25;
          v27 = [v25 shouldHideContact];
          v28 = objc_allocWithZone(MEMORY[0x1E695CF18]);
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = v26;
          }

          v30 = &selRef_initWithContact_;
          if (!v27)
          {
            v30 = &selRef__initWithHandle_;
          }

          [v28 *v30];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          if ((v16 & 0xC000000000000001) != 0)
          {
            if (!v51)
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_1_5();
            if (__CocoaSet.Index.handleBitPattern.getter())
            {
              swift_isUniquelyReferenced_nonNull_native();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
            v35 = Set.Index._asCocoa.modify();
            __CocoaSet.formIndex(after:isUnique:)();
            result = v35(v53, 0);
          }

          else
          {
            if (v51)
            {
              goto LABEL_40;
            }

            if ((v49 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            v31 = 1 << *(v16 + 32);
            if (v49 >= v31)
            {
              goto LABEL_35;
            }

            v32 = v49 >> 6;
            v33 = *(v16 + 56 + 8 * (v49 >> 6));
            if (((v33 >> v49) & 1) == 0)
            {
              goto LABEL_36;
            }

            if (*(v16 + 36) != v50)
            {
              goto LABEL_37;
            }

            v34 = v33 & (-2 << (v49 & 0x3F));
            if (v34)
            {
              v31 = __clz(__rbit64(v34)) | v49 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v36 = v32 << 6;
              v37 = v32 + 1;
              v38 = (v16 + 64 + 8 * v32);
              while (v37 < (v31 + 63) >> 6)
              {
                v40 = *v38++;
                v39 = v40;
                v36 += 64;
                ++v37;
                if (v40)
                {
                  v41 = OUTLINED_FUNCTION_1_5();
                  result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v41, v42, 0);
                  v31 = __clz(__rbit64(v39)) + v36;
                  goto LABEL_29;
                }
              }

              v43 = OUTLINED_FUNCTION_1_5();
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v43, v44, 0);
            }

LABEL_29:
            v49 = v31;
            v50 = v50;
            v51 = 0;
          }

          if (v21 == v18)
          {

            swift_unknownObjectRelease();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v49, v50, v51);
            v45 = v52;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {

      swift_unknownObjectRelease();
      v45 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v46 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
      return ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v48, v45, a3, a4);
    }
  }

  return result;
}

void specialized ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:badgeImage:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for URL();
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v65 - v12;
  v13 = type metadata accessor for CharacterSet();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 32))(v21, a1, a4, v19);
  if ((dispatch thunk of BasicCall.isPushToTalk.getter() & 1) == 0)
  {

    goto LABEL_26;
  }

  v77 = a4;
  v74 = a5;
  dispatch thunk of BasicCall.underlyingObject.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    a4 = v77;
    goto LABEL_26;
  }

  v66 = v9;
  v73 = v79;
  v22 = [v79 channelDisplayName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v71 = v25;
  v72 = v23;
  v80 = v23;
  v81 = v25;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v26 = StringProtocol.components(separatedBy:)();
  (*(v14 + 8))(v16, v13);
  v27 = specialized Collection.prefix(_:)(2, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v35 = (v33 >> 1) - v31;
  if (!__OFSUB__(v33 >> 1, v31))
  {
    v36 = v34;
    v69 = v27;
    v70 = v17;
    if (v35 <= 0)
    {
      v39 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      if (v31 > 0 || v33 < 2)
      {
        goto LABEL_28;
      }

      v39 = *v29;
      v38 = v29[1];
    }

    outlined bridged method (mbnn) of @objc CNMutableContact.firstName.setter(v39, v38, v36);
    if (v35 < 2)
    {
      v42 = 0;
      v41 = 0xE000000000000000;
    }

    else
    {
      if (v31 > 1 || v33 < 4)
      {
        goto LABEL_29;
      }

      v42 = v29[2];
      v41 = v29[3];
    }

    outlined bridged method (mbnn) of @objc CNMutableContact.lastName.setter(v42, v41, v36);
    v43 = dispatch thunk of BasicCall.contactStoreConfiguration.getter();
    v44 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v45 = swift_allocObject();
    v67 = xmmword_1BC4BAC30;
    *(v45 + 16) = xmmword_1BC4BAC30;
    *(v45 + 32) = v36;
    v46 = objc_opt_self();
    v74 = a2;
    v47 = v36;
    v48 = v44;
    v49 = [v46 clearColor];
    v50 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
    v51 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v48, v45, a2, v49);
    v52 = [v73 imageURL];
    if (v52)
    {
      v53 = v52;
      v65 = v48;
      v54 = v75;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = v76;
      v56 = v66;
      (*(v78 + 32))(v76, v54, v66);
      v57 = Data.init(contentsOf:options:)();
      v17 = v70;
      v58 = v57;
      v60 = v59;
      a4 = v77;
      (*(v78 + 8))(v55, v56);
      v48 = v65;
    }

    else
    {
      v58 = 0;
      v60 = 0xF000000000000000;
      v17 = v70;
      a4 = v77;
    }

    v61 = swift_allocObject();
    *(v61 + 16) = v67;
    *(v61 + 32) = v47;
    v62 = objc_allocWithZone(MEMORY[0x1E695D158]);
    outlined copy of Data?(v58, v60);
    v63 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v72, v71, v58, v60);
    v64 = [v51 avatarViewController];

    [v64 updateViewWithGroupIdentity_];
    outlined consume of Data?(v58, v60);

    swift_unknownObjectRelease();
LABEL_26:
    (*(v17 + 8))(v21, a4);
    return;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

id specialized ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:activeRemoteParticipant:badgeImage:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for URL();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 32))(v20, a1, a5, v18);
  if (dispatch thunk of BasicCall.isPushToTalk.getter())
  {
    v53 = v15;
    v49 = v10;
    v21 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    v22 = [a2 name];
    v55 = a2;
    if (!v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = MEMORY[0x1BFB209B0](v23);
    }

    [v21 setNickname_];

    v24 = dispatch thunk of BasicCall.contactStoreConfiguration.getter();
    v25 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BC4BAC30;
    *(v26 + 32) = v21;
    v27 = objc_opt_self();
    v51 = a3;
    v28 = v25;
    v50 = v21;
    v29 = [v27 clearColor];
    v30 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
    v52 = v28;
    v31 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v28, v26, a3, v29);
    v32 = v55;
    v33 = [v55 imageURL];
    if (v33)
    {
      v34 = v33;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = v54;
      v36 = v49;
      (*(v54 + 32))(v53, v12, v49);
      v37 = Data.init(contentsOf:options:)();
      v39 = v38;
      (*(v35 + 8))(v53, v36);
    }

    else
    {
      v37 = 0;
      v39 = 0xF000000000000000;
    }

    v40 = [v32 name];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    outlined copy of Data?(v37, v39);
    v44 = [v31 contacts];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = objc_allocWithZone(MEMORY[0x1E695D158]);
    v46 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v41, v43, v37, v39);
    v47 = [v31 avatarViewController];

    [v47 updateViewWithGroupIdentity_];
    outlined consume of Data?(v37, v39);
  }

  else
  {

    v31 = 0;
  }

  (*(v16 + 8))(v20, a5);
  return v31;
}

Swift::Void __swiftcall MenuAssertionManager.acquireAssertion(reason:)(Swift::String reason)
{
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1BFB209B0](reason._countAndFlagsBits, reason._object);
  v4 = [v2 acquireForReason_];

  swift_beginAccess();
  if (v4)
  {
    v5 = swift_unknownObjectRetain();
    MEMORY[0x1BFB20CC0](v5);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_endAccess();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall MenuAssertionManager.releaseLastAssertion()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    swift_endAccess();
    return;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = specialized Array._customRemoveLast()();
  if (v2)
  {
LABEL_6:
    v6 = v2;
    swift_endAccess();
    [v6 invalidate];
    swift_unknownObjectRelease();
    return;
  }

  v3 = specialized Array.count.getter();
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (!v4)
  {
    v2 = specialized Array.remove(at:)(v5);
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall MenuAssertionManager.releaseAllAssertions()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = specialized Array.count.getter();

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      *(v0 + 24) = MEMORY[0x1E69E7CC0];

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB22010](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    [v4 invalidate];
    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id *MenuAssertionManager.deinit()
{
  (*(*v0 + 18))();
  [v0[2] invalidate];

  return v0;
}

uint64_t MenuAssertionManager.__deallocating_deinit()
{
  MenuAssertionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t MenuAssertionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  MenuAssertionManager.init()();
  return v0;
}

uint64_t MenuAssertionManager.init()()
{
  v1 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC501820);
  v2 = [objc_opt_self() assertionWithIdentifier_];

  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return v0;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return OUTLINED_FUNCTION_0_105(a1, specialized _ArrayBuffer._consumeAndCreateNew(), type metadata accessor for HUDActivityManager.BannerUpdate, specialized UnsafeMutablePointer.moveInitialize(from:count:), a2);
}

{
  return OUTLINED_FUNCTION_0_105(a1, specialized _ArrayBuffer._consumeAndCreateNew(), type metadata accessor for Participant, specialized UnsafeMutablePointer.moveInitialize(from:count:), a2);
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(unint64_t, unint64_t, unint64_t)@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_1_90();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v15 = *(v7 + 16);
  if (v15 <= a1)
  {
    __break(1u);
  }

  else
  {
    v16 = *(a3(0) - 8);
    v17 = *(v16 + 72);
    v18 = v7 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v17 * a1;
    outlined init with take of HUDActivityManager.BannerUpdate(v18, a6, a4);
    result = a5(v18 + v17, v15 - 1 - a1, v18);
    *(v7 + 16) = v15 - 1;
    *v6 = v7;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void specialized Array.remove(at:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v5 = v8;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 + 40 * a1;
    outlined init with take of TapInteractionHandler((v7 + 32), a2);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 72), v6 - 1 - a1, (v7 + 32));
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_1_90();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    result = a2(v4);
    v4 = result;
  }

  v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v4;
    return v13;
  }

  return result;
}

void specialized Array._customRemoveLast()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_90();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v2 = v7;
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
    outlined init with take of HUDActivityManager.BannerUpdate(v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1, type metadata accessor for HUDActivityManager.BannerUpdate);
    *(v2 + 16) = v5;
    *v1 = v2;

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

{
  OUTLINED_FUNCTION_1_90();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v2 = v6;
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    outlined init with take of TapInteractionHandler((v2 + 40 * v4 - 8), a1);
    *(v2 + 16) = v5;
    *v1 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with take of HUDActivityManager.BannerUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ConversationControlsButton.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return ConversationControlsButton.localizedName.didset();
}

id static ConversationControlsButtonFactory.makeButton(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  if (*(v0 + 40))
  {
    v1 = objc_allocWithZone(type metadata accessor for ConversationControlsButton());

    OUTLINED_FUNCTION_18_1();
    return ConversationControlsButton.init(frame:provider:)();
  }

  else
  {
    v3 = objc_allocWithZone(type metadata accessor for SystemApertureButton());

    OUTLINED_FUNCTION_18_1();
    return SystemApertureButton.init(frame:provider:)();
  }
}

id SystemApertureButton.__allocating_init(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_18_1();
  return SystemApertureButton.init(frame:provider:)();
}

id ConversationControlsButton.__allocating_init(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_18_1();
  return ConversationControlsButton.init(frame:provider:)();
}

uint64_t key path getter for ConversationControlsButton.delegate : ConversationControlsButton@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___CNKConversationControlsButton_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ConversationControlsButton.delegate : ConversationControlsButton(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR___CNKConversationControlsButton_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ConversationControlsButton.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___CNKConversationControlsButton_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationControlsButton.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___CNKConversationControlsButton_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t ConversationControlsButton.localizedName.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  v2 = *v1;

  return v2;
}

double key path getter for ConversationControlsButton.localizedName : ConversationControlsButton@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t key path setter for ConversationControlsButton.localizedName : ConversationControlsButton(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ConversationControlsButton.localizedName.setter(v1, v2);
}

uint64_t ConversationControlsButton.localizedName.didset()
{
  v1 = v0 + OBJC_IVAR___CNKConversationControlsButton_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*ConversationControlsButton.localizedName.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ConversationControlsButton.localizedName.modify;
}

uint64_t ConversationControlsButton.localizedName.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ConversationControlsButton.localizedName.didset();
  }

  return result;
}

id ConversationControlsButton.init(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR___CNKConversationControlsButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR___CNKConversationControlsButton_provider) = v0;
  v4 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v5, v6, v4, v1, ObjectType);
}

id ConversationControlsButton.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void ConversationControlsButton.init(coder:)()
{
  *(v0 + OBJC_IVAR___CNKConversationControlsButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_4_70("Fatal error", v2, v3, v4, 0x80000001BC4F2780, "ConversationKit/ConversationControlsButtonFactory.swift");
  __break(1u);
}

Swift::Void __swiftcall ConversationControlsButton.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  [v2 setAnimationsEnabled_];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  OUTLINED_FUNCTION_2_88();
  (*(v3 + 552))();
  [v2 setAnimationsEnabled_];
}

void @objc ConversationControlsButton.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

UIContextMenuConfiguration_optional __swiftcall ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v2 = ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(_.super.isa, &OBJC_IVAR___CNKConversationControlsButton_provider);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

CGPoint __swiftcall ConversationControlsButton.menuAttachmentPoint(for:)(UIContextMenuConfiguration a1)
{
  v1 = ConversationControlsButton.menuAttachmentPoint(for:)(a1.super.isa, &OBJC_IVAR___CNKConversationControlsButton_provider, &protocol witness table for ConversationControlsButton);
  result.y = v2;
  result.x = v1;
  return result;
}

uint64_t ConversationControlsButton.cnkContentAlpha.getter()
{
  return ConversationControlsButton.cnkContentAlpha.getter();
}

{
  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 216))();
}

uint64_t ConversationControlsButton.cnkContentAlpha.setter()
{
  return ConversationControlsButton.cnkContentAlpha.setter();
}

{
  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 224))();
}

uint64_t (*ConversationControlsButton.cnkContentAlpha.modify(uint64_t a1))()
{
  *(a1 + 8) = *(v1 + OBJC_IVAR___CNKConversationControlsButton_provider);
  OUTLINED_FUNCTION_0_1();
  *a1 = (*(v3 + 216))();
  return ConversationControlsButton.cnkContentAlpha.modify;
}

uint64_t (*protocol witness for Control.cnkContentAlpha.modify in conformance ConversationControlsButton(uint64_t a1))()
{
  v2 = *(v1 + OBJC_IVAR___CNKConversationControlsButton_provider);
  *(a1 + 8) = v2;
  *a1 = (*(*v2 + 216))();
  return ConversationControlsButton.cnkContentAlpha.modify;
}

id SystemApertureButton.init(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider) = v0;
  v8 = ObjectType;

  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v1, v8);
  [v6 setShowsMenuFromSource_];

  return v6;
}

id @objc ConversationControlsButton.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1BFB209B0](v5, v7);

  return v8;
}

uint64_t ConversationControlsButton.description.getter(uint64_t *a1, uint64_t *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  _StringGuts.grow(_:)(32);

  v14 = 60;
  v15 = 0xE100000000000000;
  v12 = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v7);

  MEMORY[0x1BFB20B10](0x6E6F74747562203ALL, 0xEB00000000203D20);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, sel_description, v12);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v9);

  MEMORY[0x1BFB20B10](0x6469766F7270203BLL, 0xED0000203D207265);
  type metadata accessor for ControlsButtonProvider();

  v10 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v10);

  MEMORY[0x1BFB20B10](62, 0xE100000000000000);
  return v14;
}

Swift::Void __swiftcall SystemApertureButton.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  OUTLINED_FUNCTION_2_88();
  (*(v1 + 552))();
}

uint64_t ConversationControlsButton.didMoveToWindow()()
{
  OUTLINED_FUNCTION_247();
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_didMoveToWindow);
  OUTLINED_FUNCTION_2_88();
  return (*(v1 + 560))(v0);
}

uint64_t ConversationControlsButton.contextMenuInteraction(_:willDisplayMenuFor:animator:)()
{
  v10.receiver = v0;
  v10.super_class = OUTLINED_FUNCTION_8_59();
  OUTLINED_FUNCTION_11_47(v10.super_class, sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_, v1, v2, v3, v4, v5, v6, v10);
  OUTLINED_FUNCTION_2_88();
  v7 = OUTLINED_FUNCTION_15_14();
  return v8(v7);
}

uint64_t ConversationControlsButton.contextMenuInteraction(_:willEndFor:animator:)()
{
  v10.receiver = v0;
  v10.super_class = OUTLINED_FUNCTION_8_59();
  OUTLINED_FUNCTION_11_47(v10.super_class, sel_contextMenuInteraction_willEndForConfiguration_animator_, v1, v2, v3, v4, v5, v6, v10);
  OUTLINED_FUNCTION_2_88();
  v7 = OUTLINED_FUNCTION_15_14();
  return v8(v7);
}

UIContextMenuConfiguration_optional __swiftcall SystemApertureButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v2 = ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(_.super.isa, &OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void *ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(uint64_t a1, void *a2)
{
  v3 = *(**(v2 + *a2) + 264);

  if (v3(v4))
  {
    v6 = v5;
    type metadata accessor for UIContextMenuConfiguration();
    OUTLINED_FUNCTION_24();
    v7 = swift_allocObject();
    *(v7 + 24) = v6;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_24();
    v8 = swift_allocObject();
    *(v8 + 24) = &protocol witness table for ControlsButtonProvider;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_24();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
    v11 = v10;
    [v10 setPreferredMenuAlignment_];
    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t ConversationControlsButton._contextMenuInteraction(_:styleForMenuWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_1();
  if (!(*(v9 + 264))())
  {
    return 0;
  }

  v11 = v10;
  v12 = swift_getObjectType();
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel__contextMenuInteraction_styleForMenuWithConfiguration_, a1, a2);
  (*(v11 + 24))(v4, a4, v13, v12, v11);
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();

  return a4;
}

CGPoint __swiftcall SystemApertureButton.menuAttachmentPoint(for:)(UIContextMenuConfiguration a1)
{
  v1 = ConversationControlsButton.menuAttachmentPoint(for:)(a1.super.isa, &OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider, &protocol witness table for SystemApertureButton);
  result.y = v2;
  result.x = v1;
  return result;
}

double ConversationControlsButton.menuAttachmentPoint(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_1();
  if ((*(v7 + 264))())
  {
    v9 = v8;
    v10 = swift_getObjectType();
    v11 = COERCE_DOUBLE((*(v9 + 16))(v4, a3, v3, v10, v9));
    v13 = v12;
    swift_unknownObjectRelease();
    if ((v13 & 1) == 0)
    {
      return v11;
    }
  }

  v15.receiver = v4;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_menuAttachmentPointForConfiguration_, v3);
  return result;
}

id ConversationControlsButton.__allocating_init(frame:)()
{
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

uint64_t (*SystemApertureButton.cnkContentAlpha.modify(uint64_t a1))()
{
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider);
  OUTLINED_FUNCTION_0_1();
  *a1 = (*(v3 + 216))();
  return SystemApertureButton.cnkContentAlpha.modify;
}

uint64_t (*protocol witness for Control.cnkContentAlpha.modify in conformance SystemApertureButton(uint64_t a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider);
  *(a1 + 8) = v2;
  *a1 = (*(*v2 + 216))();
  return SystemApertureButton.cnkContentAlpha.modify;
}

unint64_t type metadata accessor for UIContextMenuConfiguration()
{
  result = lazy cache variable for type metadata for UIContextMenuConfiguration;
  if (!lazy cache variable for type metadata for UIContextMenuConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  }

  return result;
}

uint64_t outlined init with copy of ConversationControlsSecondaryPillButtonType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversationHUDSecondaryPillView.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_activity;
  swift_beginAccess();
  return outlined init with copy of Activity?(v1 + v3, a1);
}

uint64_t outlined init with copy of Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversationHUDSecondaryPillView.activity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_activity;
  swift_beginAccess();
  outlined assign with copy of Activity?(a1, v1 + v3);
  swift_endAccess();
  ConversationHUDSecondaryPillView.updateIconView()();
  ConversationHUDSecondaryPillView.updateTitle()();
  ConversationHUDSecondaryPillView.updateCallToAction()();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
}

uint64_t outlined assign with copy of Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*ConversationHUDSecondaryPillView.activity.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ConversationHUDSecondaryPillView.activity.modify;
}

void ConversationHUDSecondaryPillView.activity.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ConversationHUDSecondaryPillView.updateIconView()();
    ConversationHUDSecondaryPillView.updateTitle()();
    ConversationHUDSecondaryPillView.updateCallToAction()();
  }
}

uint64_t key path getter for ConversationHUDSecondaryPillView.backgroundMaterialView : ConversationHUDSecondaryPillView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

UIView *closure #1 in ConversationHUDSecondaryPillView.backgroundMaterialView.getter(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext))
  {
    if (*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext) == 1)
    {
      v1 = objc_opt_self();
      if (one-time initialization token for backgroundBlurEffect != -1)
      {
        swift_once();
      }

      v2 = [v1 _effectForBlurEffect_vibrancyStyle_];
      v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
      v4 = [v3 contentView];
      v5 = [objc_opt_self() tintColor];
      [v4 setBackgroundColor_];

      v6 = objc_allocWithZone(MEMORY[0x1E69DD250]);
      v7 = v3;
      v8 = [v6 init];
      [(UIView *)v8 addSubview:v7];
      v9 = ConversationHUDSecondaryPillView.contentHStack.getter();
      [(UIView *)v8 addSubview:v9];

      UIView.addConstraintsToFill(_:insets:)(v8, *MEMORY[0x1E69DC5C0]);
      v10 = v8;
    }

    else
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
        type metadata accessor for ConversationHUDInCallBackdropView();
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v22 = ConversationHUDSecondaryPillView.contentHStack.getter();
        [(UIView *)v7 addSubview:v22];

        v20 = v7;
        goto LABEL_12;
      }

      v15 = [objc_opt_self() effectWithStyle_];
      v16 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

      v17 = objc_allocWithZone(MEMORY[0x1E69DD250]);
      v7 = v16;
      v18 = [v17 init];
      [(UIView *)v18 addSubview:v7];
      v19 = ConversationHUDSecondaryPillView.contentHStack.getter();
      [(UIView *)v18 addSubview:v19];

      UIView.addConstraintsToFill(_:insets:)(v18, *MEMORY[0x1E69DC5C0]);
      v10 = v18;
    }
  }

  else
  {
    v11 = [objc_opt_self() effectWithStyle_];
    v12 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    v13 = [v12 contentView];
    v14 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v13 addSubview_];

    v10 = v12;
    v7 = v10;
  }

  v20 = v10;
LABEL_12:
  [(UIView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UIView *)v7 _setContinuousCornerRadius:ConversationHUDSecondaryPillView.minimumCornerRadius.getter()];
  [(UIView *)v7 setClipsToBounds:1];

  return v20;
}

void ConversationHUDSecondaryPillView.backgroundMaterialView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView) = a1;
}

void (*ConversationHUDSecondaryPillView.backgroundMaterialView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDSecondaryPillView.backgroundMaterialView.getter();
  return ConversationHUDSecondaryPillView.backgroundMaterialView.modify;
}

void ConversationHUDSecondaryPillView.backgroundMaterialView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView) = v2;
}

double ConversationHUDSecondaryPillView.minimumCornerRadius.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType;
  swift_storeEnumTagMultiPayload();
  v5 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(v0 + v4, v3);
  OUTLINED_FUNCTION_0_106();
  outlined destroy of ConversationControlsSecondaryPillButtonType(v3, v6);
  result = 38.0;
  if ((v5 & 1) == 0)
  {
    return 28.0;
  }

  return result;
}

id ConversationHUDSecondaryPillView.appStoreLockup.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___appStoreLockup;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___appStoreLockup);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in ConversationHUDSecondaryPillView.appStoreLockup.getter(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    outlined consume of IMAccount??(v4);
  }

  outlined copy of IMAccount??(v2);
  return v3;
}

id closure #1 in ConversationHUDSecondaryPillView.appStoreLockup.getter(void *a1)
{
  v2 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v50 - v7;
  if (![*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags) uninstalledAppStoreLockupEnabled])
  {
    return 0;
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC8);
  v9(v53);
  v10 = v54;
  if (!v54)
  {
    v28 = &_s15ConversationKit8Activity_pSgMd;
    v29 = &_s15ConversationKit8Activity_pSgMR;
    v30 = v53;
    goto LABEL_8;
  }

  v52 = v2;
  v11 = v55;
  v12 = __swift_project_boxed_opaque_existential_1(v53, v54);
  v13 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
  v51 = (*(v11 + 32))(v10, v11);
  v18 = v17;
  v19 = (*(v13 + 8))(v16, v10);
  if (!v18)
  {
    return 0;
  }

  (v9)(v53, v19);
  v20 = v54;
  if (v54)
  {
    v21 = v55;
    v22 = __swift_project_boxed_opaque_existential_1(v53, v54);
    v23 = *(v20 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22);
    v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    (*(v21 + 112))(v20, v21);
    (*(v23 + 8))(v26, v20);
    v27 = type metadata accessor for Collaboration(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v27) != 1)
    {

      v28 = &_s15ConversationKit13CollaborationVSgMd;
      v29 = &_s15ConversationKit13CollaborationVSgMR;
      v30 = v8;
LABEL_8:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, v28, v29);
      return 0;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    v31 = type metadata accessor for Collaboration(0);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v31);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  v32 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType;
  swift_storeEnumTagMultiPayload();
  v33 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(a1 + v32, v4);
  outlined destroy of ConversationControlsSecondaryPillButtonType(v4, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  if ((v33 & 1) == 0)
  {

    return 0;
  }

  v34 = [objc_allocWithZone(MEMORY[0x1E698B3C8]) initWithFrame_];
  [v34 setSize_];
  [v34 setShowsPlaceholderContent_];
  v35 = objc_allocWithZone(MEMORY[0x1E698B3D0]);
  v37 = @nonobjc ASCLockupViewGroup.init(name:)(v36, 0x502068636E75614CLL, 0xEB000000006C6C69);
  [v34 setGroup_];
  v38 = swift_allocObject();
  v39 = v51;
  v38[2] = v51;
  v38[3] = v18;
  v38[4] = v34;

  v40 = v34;
  ASCLockupViewGroup.__lockupRequest(for:completion:)(v39, v18);

  v41 = objc_opt_self();
  v42 = [v41 whiteColor];
  v43 = [v41 blackColor];
  v44 = [v41 blackColor];
  v45 = [v41 whiteColor];
  v46 = [v41 whiteColor];
  v47 = objc_allocWithZone(MEMORY[0x1E698B3E8]);
  v48 = @nonobjc ASCOfferTheme.init(titleBackgroundColor:titleTextColor:subtitleTextColor:iconTintColor:progressColor:)(v42, v43, v44, v45, v46);
  [v40 setOfferTheme_];

  return v40;
}

void closure #1 in closure #1 in ConversationHUDSecondaryPillView.appStoreLockup.getter(uint64_t a1, void *a2, void *a3, uint64_t a4, id a5)
{
  if (a2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.conversationControls);

    v7 = a2;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315394;

      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v27);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1BBC58000, oslog, v8, "Failed to request lockup for bundleIdentifier: %s, error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      v18 = v9;
LABEL_6:
      MEMORY[0x1BFB23DF0](v18, -1, -1);

      return;
    }

LABEL_15:

    return;
  }

  if (!a1)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, &static Logger.conversationControls);

    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;

      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1BBC58000, oslog, v20, "Failed to get lockupRequest for bundleIdentifier %s and received no error", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      v18 = v21;
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  [a5 setRequest_];
}

void ASCLockupViewGroup.__lockupRequest(for:completion:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([v2 respondsToSelector_])
  {
    v5 = v2;
    swift_unknownObjectRetain();
    v6 = MEMORY[0x1BFB209B0](a1, a2);
    v7 = *MEMORY[0x1E698B348];
    OUTLINED_FUNCTION_1_92();
    v12 = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
    v14 = &block_descriptor_3;
    v8 = _Block_copy(aBlock);

    [v5 _lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock_];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = MEMORY[0x1BFB209B0](a1, a2);
    v9 = *MEMORY[0x1E698B348];
    OUTLINED_FUNCTION_1_92();
    v12 = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
    v14 = &block_descriptor_37;
    v10 = _Block_copy(aBlock);

    [v2 _lockupRequestForBundleID_withContext_completionBlock_];
    _Block_release(v10);
  }
}

id closure #1 in ConversationHUDSecondaryPillView.contentHStack.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setAxis_];
  [v2 setAlignment_];
  [v2 setSpacing_];

  v3 = ConversationHUDSecondaryPillView.appStoreLockup.getter();
  if (v3)
  {
    v4 = v3;
    [v2 addArrangedSubview_];
  }

  else
  {
    if (*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView))
    {
      [v2 addArrangedSubview_];
    }

    v5 = ConversationHUDSecondaryPillView.labelsVStack.getter();
    [v2 addArrangedSubview_];

    if (*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction))
    {
      [v2 addArrangedSubview_];
    }
  }

  return v2;
}

id ConversationHUDSecondaryPillView.backgroundMaterialView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id closure #1 in ConversationHUDSecondaryPillView.labelsVStack.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setAxis_];
  [v2 setAlignment_];
  [v2 setSpacing_];
  v3 = ConversationHUDSecondaryPillView.titleLabel.getter();
  [v2 addArrangedSubview_];

  v4 = ConversationHUDSecondaryPillView.subtitleLabel.getter();
  v5 = outlined bridged method (ob) of @objc UILabel.text.getter(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      [v2 addArrangedSubview_];
    }
  }

  return v2;
}

id ConversationHUDSecondaryPillView.titleLabel.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = closure #1 in ConversationHUDSecondaryPillView.titleLabel.getter(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in ConversationHUDSecondaryPillView.titleLabel.getter(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  OUTLINED_FUNCTION_7_57([v2 setNumberOfLines_], sel_setClipsToBounds_);
  [v2 setLineBreakMode_];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  v5 = UIFont.caseSensitive()().super.isa;
  [v2 setFont_];

  OUTLINED_FUNCTION_7_57(v6, sel_setAdjustsFontForContentSizeCategory_);
  v7 = [objc_opt_self() *a1];
  [v2 setTextColor_];

  v9 = OUTLINED_FUNCTION_7_57(v8, sel_setMarqueeEnabled_);
  OUTLINED_FUNCTION_7_57(v9, sel_setMarqueeRunning_);
  type metadata accessor for UILayoutPriority(0);
  v10 = lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
  OUTLINED_FUNCTION_5_65(v10, v11, v12, v13, v14, v15, v16, v17, v29, 0, 16256, 0);
  LODWORD(v18) = v31;
  v19 = [v2 setContentCompressionResistancePriority:0 forAxis:v18];
  OUTLINED_FUNCTION_5_65(v19, v20, v21, v22, v23, v24, v25, v26, v30, 0, 16256, 0);
  LODWORD(v27) = v32;
  [v2 setContentHuggingPriority:0 forAxis:v27];
  return v2;
}

id ConversationHUDSecondaryPillView.__allocating_init(controlsManager:controlsContext:buttonType:menuHostViewController:activity:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v13 = objc_allocWithZone(v6);
  return ConversationHUDSecondaryPillView.init(controlsManager:controlsContext:buttonType:menuHostViewController:activity:)(a1, v11, a3, a4, a5, a6);
}

id ConversationHUDSecondaryPillView.init(controlsManager:controlsContext:buttonType:menuHostViewController:activity:)(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v14 = &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_activity];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_margins];
  __asm { FMOV            V1.2D, #12.0 }

  *v15 = xmmword_1BC4CB620;
  v15[1] = _Q1;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___appStoreLockup] = 1;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___contentHStack] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___labelsVStack] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___titleLabel] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___subtitleLabel] = 0;
  v21 = &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_menuHostViewController];
  *v22 = 0;
  v22[1] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsManager] = a1;
  v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext] = a2;
  outlined init with copy of ConversationControlsSecondaryPillButtonType(a3, &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType]);
  *v22 = a4;
  v22[1] = a5;
  swift_beginAccess();
  v23 = a4;
  v24 = a1;
  outlined assign with copy of Activity?(a6, v14);
  swift_endAccess();
  v28.receiver = v6;
  v28.super_class = type metadata accessor for ConversationHUDSecondaryPillView(0);
  v25 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ConversationHUDSecondaryPillView.setupRootView()();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a6, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
  OUTLINED_FUNCTION_0_106();
  outlined destroy of ConversationControlsSecondaryPillButtonType(a3, v26);
  return v25;
}

void ConversationHUDSecondaryPillView.setupRootView()()
{
  v1 = [v0 layer];
  [v1 setAllowsGroupOpacity_];

  v2 = ConversationHUDSecondaryPillView.createIconView()();
  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView);
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView) = v2;

  ConversationHUDSecondaryPillView.updateTitle()();
  ConversationHUDSecondaryPillView.updateSubtitle()();
  v4 = ConversationHUDSecondaryPillView.createCallToAction()();
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction);
  v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction);
  *v5 = v4;
  v5[1] = v7;

  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  [v0 addSubview_];

  ConversationHUDSecondaryPillView.setupLayoutConstraints()();
}

id ConversationHUDSecondaryPillView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDSecondaryPillView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_activity;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_margins);
  __asm { FMOV            V1.2D, #12.0 }

  *v3 = xmmword_1BC4CB620;
  v3[1] = _Q1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___appStoreLockup) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___contentHStack) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___labelsVStack) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___subtitleLabel) = 0;
  v9 = (v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_menuHostViewController);
  *v10 = 0;
  v10[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDSecondaryPillView.layoutSubviews()()
{
  swift_getObjectType();
  v26.receiver = v0;
  v26.super_class = type metadata accessor for ConversationHUDSecondaryPillView(0);
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = ConversationHUDSecondaryPillView.minimumCornerRadius.getter();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v3 = v2();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v12 = CGRectGetHeight(v27) * 0.5;
  if (v1 <= v12)
  {
    v1 = v12;
  }

  v13 = v2();
  [v13 _continuousCornerRadius];
  v15 = v14;

  if (v15 != v1)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Logger.conversationControls);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136446466;
      v21 = _typeName(_:qualified:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v1;
      _os_log_impl(&dword_1BBC58000, v17, v18, "[%{public}s] updating corner radius to %f", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
      MEMORY[0x1BFB23DF0](v19, -1, -1);
    }

    v24 = v2();
    [v24 _setContinuousCornerRadius_];
  }
}

void ConversationHUDSecondaryPillView.addTarget(_:action:)(void *a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of Any(a1, v10);
  v6 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v7 = @nonobjc UITapGestureRecognizer.init(target:action:)(v10, a2);
  [v3 addGestureRecognizer_];

  v8 = *&v3[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction];
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = v8;
    [v9 addTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:a2 forControlEvents:64];

    swift_unknownObjectRelease();
  }
}

id ConversationHUDSecondaryPillView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationHUDSecondaryPillView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDSecondaryPillView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ConversationHUDSecondaryPillView.createIconView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v49 - v3;
  v5 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v49 - v9);
  v11 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType;
  outlined init with copy of ConversationControlsSecondaryPillButtonType(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, v49 - v9);
  if (!swift_getEnumCaseMultiPayload())
  {
    v20 = *v10;
    v16 = ConversationHUDSecondaryPillView.createIconViewForLagunaRecommendation(_:)();

    return v16;
  }

  outlined destroy of ConversationControlsSecondaryPillButtonType(v10, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  swift_storeEnumTagMultiPayload();
  v12 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(v0 + v11, v7);
  v13 = outlined destroy of ConversationControlsSecondaryPillButtonType(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  if ((v12 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))(&v54, v13);
    if (!v55)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v54, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
      return 0;
    }

    outlined init with take of TapInteractionHandler(&v54, v51);
    v21 = [*(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags) uninstalledAppStoreLockupEnabled];
    v22 = v52;
    v23 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    if (!v21)
    {
      if (((*(v23 + 40))(v22, v23) & 1) == 0)
      {
        v26 = 0x80000001BC501B70;
        v24 = 0xD000000000000012;
        goto LABEL_15;
      }

      v22 = v52;
      v23 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
    }

    v24 = (*(v23 + 32))(v22, v23);
    v26 = v25;
LABEL_15:
    v27 = v52;
    v28 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v28 + 112))(v27, v28);
    v29 = type metadata accessor for Collaboration(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v29);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
    if (EnumTagSinglePayload == 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
      v31 = static UIImageView.appIcon(for:)(v24, v26);
      if (v31)
      {
        goto LABEL_17;
      }
    }

    else
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      SymbolImageDescribers.ConversationActivityIcon.symbolImageDescription.getter(11);
      v33 = static UIImage.symbolImage(for:)(&v54);
      outlined destroy of SymbolImageDescription(&v54);
      if (v33)
      {
        v34 = [objc_opt_self() whiteColor];
        v35 = [v33 imageWithTintColor:v34 renderingMode:1];
      }

      else
      {
        v35 = 0;
      }

      v36 = v52;
      v37 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      if (((*(v37 + 40))(v36, v37) & 1) == 0)
      {

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
        v46 = static UIImageView.defaultAppIcon(for:)(v35);

        v32 = v46;
        goto LABEL_29;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
      v31 = static UIImageView.appIcon(for:)(v24, v26);

      if (v31)
      {
LABEL_17:
        v32 = v31;

LABEL_29:
        v16 = v32;
        ConversationHUDSecondaryPillView.constrainIconView(_:)(v16);

        __swift_destroy_boxed_opaque_existential_1(v51);
        return v16;
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, &static Logger.conversationControls);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50 = v42;
      *v41 = 136315138;
      if (v26)
      {
        v49[0] = v24;
        v49[1] = v26;
        v43 = String.init<A>(reflecting:)();
        v45 = v44;
      }

      else
      {
        v45 = 0xE300000000000000;
        v43 = 7104878;
      }

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v50);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_1BBC58000, v39, v40, "Unable to obtain icon for bundleIdentifier: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFB23DF0](v42, -1, -1);
      MEMORY[0x1BFB23DF0](v41, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v51);
    return 0;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static NameAndPhotoUtilities.shared;
  v15 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView;
  swift_beginAccess();
  v16 = *(v14 + v15);
  if (v16)
  {
    v17 = v16;
    ConversationHUDSecondaryPillView.constrainIconView(_:)(v17);
    v18 = [v17 layer];
    [v18 setCornerRadius_];

    v19 = [v17 layer];
    [v19 setMasksToBounds_];
  }

  return v16;
}

void ConversationHUDSecondaryPillView.updateTitle()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationVSgMd, &_s15ConversationKit19StagedCollaborationVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v167 = &v166 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v168 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v166 - v7;
  v169 = type metadata accessor for Collaboration(0);
  MEMORY[0x1EEE9AC00](v169);
  v166 = (&v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v166 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v166 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v166 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v166 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v166 - v26);
  v28 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType;
  outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, &v166 - v26);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ConversationControlsSecondaryPillButtonType(v27, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v24);
    if (swift_getEnumCaseMultiPayload() - 9 <= 2)
    {
      outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v21);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 11:
          v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v31 = "VIEWING_YOUR_SCREEN";
          v32 = [objc_opt_self() conversationKit];
          v163 = 0xE000000000000000;
          v33 = 0x61737265766E6F43;
          v34 = 0xEF74694B6E6F6974;
          v35 = 0xD00000000000001DLL;
          goto LABEL_25;
        case 10:
          v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v31 = "NEW_CONTACT_NAME_BANNER_TITLE";
          v32 = [objc_opt_self() conversationKit];
          v163 = 0xE000000000000000;
          v33 = 0x61737265766E6F43;
          v34 = 0xEF74694B6E6F6974;
          v35 = 0xD000000000000017;
          goto LABEL_25;
        case 9:
          v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v31 = "SHARE_NAME_BANNER_TITLE";
          v32 = [objc_opt_self() conversationKit];
          v163 = 0xE000000000000000;
          v33 = 0x61737265766E6F43;
          v34 = 0xEF74694B6E6F6974;
          v35 = 0xD000000000000021;
LABEL_25:
          v68 = v31 | 0x8000000000000000;
LABEL_29:
          v69._countAndFlagsBits = 0;
          v69._object = 0xE000000000000000;
          v70 = 0;
          v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, *&v33, v32, v69, *(&v163 - 1));

          outlined bridged method (mbnn) of @objc UILabel.text.setter(v71._countAndFlagsBits, v71._object, v30);
LABEL_30:

          return;
      }

      v50 = v21;
LABEL_27:
      outlined destroy of ConversationControlsSecondaryPillButtonType(v50, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      return;
    }

    outlined destroy of ConversationControlsSecondaryPillButtonType(v24, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v18);
    v42 = swift_getEnumCaseMultiPayload();
    if (v42 == 12)
    {
LABEL_12:
      outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v15);
      v43 = swift_getEnumCaseMultiPayload();
      if (v43 == 12)
      {
        v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v32 = [objc_opt_self() conversationKit];
        v163 = 0xE000000000000000;
        v33 = 0x61737265766E6F43;
        v34 = 0xEF74694B6E6F6974;
        v68 = 0x80000001BC501CC0;
        v35 = 0xD000000000000013;
        goto LABEL_29;
      }

      if (v43 == 1)
      {
        v44 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v45 = [objc_opt_self() conversationKit];
        v175._object = 0xE000000000000000;
        v46._countAndFlagsBits = 0x535F4E4545524353;
        v46._object = 0xEE00474E49524148;
        v47.value._countAndFlagsBits = 0x61737265766E6F43;
        v47.value._object = 0xEF74694B6E6F6974;
        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        v175._countAndFlagsBits = 0;
        v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v175);

        outlined bridged method (mbnn) of @objc UILabel.text.setter(v49._countAndFlagsBits, v49._object, v44);
      }

      v50 = v15;
      goto LABEL_27;
    }

    if (v42 == 1)
    {
      outlined destroy of ConversationControlsSecondaryPillButtonType(v18, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      goto LABEL_12;
    }

    v57 = outlined destroy of ConversationControlsSecondaryPillButtonType(v18, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    v58 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
    v58(&v170, v57);
    if (!v171)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v170, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, &static Logger.conversationControls);
      v73 = v1;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v170 = v77;
        *v76 = 136315138;
        (v58)(v172);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
        v78 = String.init<A>(describing:)();
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v170);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_1BBC58000, v74, v75, "SecondaryPillButton: No activity:%s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x1BFB23DF0](v77, -1, -1);
        MEMORY[0x1BFB23DF0](v76, -1, -1);
      }

      v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
      [v30 setText_];
      goto LABEL_30;
    }

    outlined init with take of TapInteractionHandler(&v170, v172);
    outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v12);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
      case 4u:
        v59 = v173;
        v60 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v61 = (*(v60 + 104))(v59, v60);
        if (v61)
        {
          v62 = v61;
          v63 = [v61 activity];
          v64 = [v63 isScreenSharingActivity];

          if (v64)
          {
            v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
            v66 = "%@_Collaboration_Title_Quoted";
            v67 = [objc_opt_self() conversationKit];
            goto LABEL_59;
          }
        }

        v81 = v173;
        v82 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v83 = v168;
        (*(v82 + 112))(v81, v82);
        LODWORD(v81) = __swift_getEnumTagSinglePayload(v83, 1, v169);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v83, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        if (v81 == 1)
        {
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v84 = [objc_opt_self() conversationKit];
          v164 = 0xE000000000000000;
          v85 = 0x616853206E696F4ALL;
          v86 = 0xEE0079616C506572;
          v87 = 0x61737265766E6F43;
          v88 = 0xEF74694B6E6F6974;
          goto LABEL_69;
        }

        v124 = v173;
        v125 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v126 = (*(v125 + 48))(v124, v125);
        if (v127)
        {
          v94 = v126;
          v95 = v127;
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v96 = "Join Collaboration";
          v97 = [objc_opt_self() conversationKit];
          v165 = 0xE000000000000000;
          v98 = 0x61737265766E6F43;
          v99 = 0xEF74694B6E6F6974;
          v100 = 0xD00000000000001DLL;
          goto LABEL_55;
        }

        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v84 = [objc_opt_self() conversationKit];
        v85 = 0xD000000000000012;
        v164 = 0xE000000000000000;
        v87 = 0x61737265766E6F43;
        v88 = 0xEF74694B6E6F6974;
        v86 = 0x80000001BC501B90;
        goto LABEL_69;
      case 3u:
        v103 = v173;
        v104 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        (*(v104 + 112))(v103, v104);
        if (__swift_getEnumTagSinglePayload(v8, 1, v169) != 1)
        {
          v134 = v166;
          _s15ConversationKit11ParticipantVWObTm_3(v8, v166, type metadata accessor for Collaboration);
          if (v134[7] == 1 || (v135 = v134[9]) == 0)
          {
            v137 = ConversationHUDSecondaryPillView.titleLabel.getter();
            v158 = [objc_opt_self() conversationKit];
            v159._countAndFlagsBits = 0xD000000000000012;
            v180._object = 0xE000000000000000;
            v159._object = 0x80000001BC501B90;
            v160.value._countAndFlagsBits = 0x61737265766E6F43;
            v160.value._object = 0xEF74694B6E6F6974;
            v161._countAndFlagsBits = 0;
            v161._object = 0xE000000000000000;
            v180._countAndFlagsBits = 0;
            v162 = NSLocalizedString(_:tableName:bundle:value:comment:)(v159, v160, v158, v161, v180);
            countAndFlagsBits = v162._countAndFlagsBits;
            object = v162._object;
          }

          else
          {
            v136 = v134[8];

            v137 = ConversationHUDSecondaryPillView.titleLabel.getter();
            v138 = [objc_opt_self() conversationKit];
            v178._object = 0xE000000000000000;
            v139._countAndFlagsBits = 0xD00000000000001DLL;
            v139._object = 0x80000001BC501BB0;
            v140.value._countAndFlagsBits = 0x61737265766E6F43;
            v140.value._object = 0xEF74694B6E6F6974;
            v141._countAndFlagsBits = 0;
            v141._object = 0xE000000000000000;
            v178._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v139, v140, v138, v141, v178);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v142 = swift_allocObject();
            *(v142 + 16) = xmmword_1BC4BA940;
            *(v142 + 56) = MEMORY[0x1E69E6158];
            *(v142 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v142 + 32) = v136;
            *(v142 + 40) = v135;
            countAndFlagsBits = String.init(format:_:)();
            object = v144;
          }

          outlined bridged method (mbnn) of @objc UILabel.text.setter(countAndFlagsBits, object, v137);

          v101 = type metadata accessor for Collaboration;
          v102 = v134;
LABEL_74:
          outlined destroy of ConversationControlsSecondaryPillButtonType(v102, v101);
          goto LABEL_71;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
        v105 = v173;
        v106 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v107 = (*(v106 + 104))(v105, v106);
        if (v107)
        {
          v108 = v107;
          v94 = outlined bridged method (ob) of @objc TUConversationActivity.localizedApplicationName.getter([v107 activity]);
          v95 = v109;

          if (v95)
          {
            v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
            v97 = [objc_opt_self() conversationKit];
            v165 = 0xE000000000000000;
            v100 = 0x6975716552204025;
            v110 = 0xEB00000000646572;
            v98 = 0x61737265766E6F43;
            v99 = 0xEF74694B6E6F6974;
            goto LABEL_56;
          }
        }

        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v84 = [objc_opt_self() conversationKit];
        v85 = 0xD000000000000011;
        v164 = 0xE000000000000000;
        v86 = 0x80000001BC501CA0;
        v87 = 0x61737265766E6F43;
        v88 = 0xEF74694B6E6F6974;
        goto LABEL_69;
      case 5u:
        v89 = [objc_opt_self() sharedInstance];
        v90 = [v89 neighborhoodActivityConduit];

        v91 = [v90 activeSplitSessionTV];
        if (!v91 || (v92 = outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter(v91), !v93))
        {
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v66 = "O_USE_SHAREPLAY_TITLE";
          v67 = [objc_opt_self() conversationKit];
LABEL_59:
          v84 = v67;
          v164 = 0xE000000000000000;
          v87 = 0x61737265766E6F43;
          v88 = 0xEF74694B6E6F6974;
          v86 = v66 | 0x8000000000000000;
          v85 = 0xD000000000000013;
          goto LABEL_69;
        }

        v94 = v92;
        v95 = v93;
        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v96 = "Playing on Apple TV";
        v97 = [objc_opt_self() conversationKit];
        v165 = 0xE000000000000000;
        v98 = 0x61737265766E6F43;
        v99 = 0xEF74694B6E6F6974;
        v100 = 0xD000000000000014;
LABEL_55:
        v110 = v96 | 0x8000000000000000;
        goto LABEL_56;
      case 6u:
        v120 = v173;
        v121 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v122 = (*(v121 + 48))(v120, v121);
        if (!v123)
        {
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v84 = [objc_opt_self() conversationKit];
          v164 = 0xE000000000000000;
          v85 = 0x414C504552414853;
          v87 = 0x61737265766E6F43;
          v88 = 0xEF74694B6E6F6974;
          v86 = 0xE900000000000059;
          goto LABEL_69;
        }

        v94 = v122;
        v95 = v123;
        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v97 = [objc_opt_self() conversationKit];
        v165 = 0xE000000000000000;
        v100 = 0x616C506572616853;
        v110 = 0xEC00000040252079;
        v98 = 0x61737265766E6F43;
        v99 = 0xEF74694B6E6F6974;
LABEL_56:
        v128._countAndFlagsBits = 0;
        v128._object = 0xE000000000000000;
        v129 = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v100, *&v98, v97, v128, *(&v165 - 1));

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1BC4BA940;
        *(v130 + 56) = MEMORY[0x1E69E6158];
        *(v130 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v130 + 32) = v94;
        *(v130 + 40) = v95;
        v131 = String.init(format:_:)();
        v133 = v132;
        goto LABEL_57;
      case 7u:
        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v177._object = 0xE000000000000000;
        v111._countAndFlagsBits = 0xD000000000000025;
        v111._object = 0x80000001BC501C30;
        v112._countAndFlagsBits = 0;
        v112._object = 0xE000000000000000;
        v177._countAndFlagsBits = 0;
        v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v111, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v112, v177);
        v114 = v115._object;
        v113 = v115._countAndFlagsBits;
        goto LABEL_70;
      case 8u:
        v116 = v173;
        v117 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v118 = v167;
        (*(v117 + 120))(v116, v117);
        v119 = type metadata accessor for StagedCollaboration(0);
        if (__swift_getEnumTagSinglePayload(v118, 1, v119) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v118, &_s15ConversationKit19StagedCollaborationVSgMd, &_s15ConversationKit19StagedCollaborationVSgMR);
          goto LABEL_65;
        }

        v146 = (v118 + *(v119 + 28));
        v148 = *v146;
        v147 = v146[1];

        outlined destroy of ConversationControlsSecondaryPillButtonType(v118, type metadata accessor for StagedCollaboration);
        if (!v147)
        {
LABEL_65:
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v84 = [objc_opt_self() conversationKit];
          v164 = 0xE000000000000000;
          v85 = 0xD00000000000001BLL;
          v86 = 0x80000001BC501BF0;
          v87 = 0x61737265766E6F43;
          v88 = 0xEF74694B6E6F6974;
LABEL_69:
          v155._countAndFlagsBits = 0;
          v155._object = 0xE000000000000000;
          v156 = 0;
          v157 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v85, *&v87, v84, v155, *(&v164 - 1));

          v113 = v157._countAndFlagsBits;
          v114 = v157._object;
          goto LABEL_70;
        }

        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v149 = [objc_opt_self() conversationKit];
        v179._object = 0xE000000000000000;
        v150._object = 0x80000001BC501C10;
        v150._countAndFlagsBits = 0xD000000000000013;
        v151.value._countAndFlagsBits = 0x61737265766E6F43;
        v151.value._object = 0xEF74694B6E6F6974;
        v152._countAndFlagsBits = 0;
        v152._object = 0xE000000000000000;
        v179._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v150, v151, v149, v152, v179);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1BC4BA940;
        *(v153 + 56) = MEMORY[0x1E69E6158];
        *(v153 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v153 + 32) = v148;
        *(v153 + 40) = v147;
        v131 = String.init(format:_:)();
        v133 = v154;
LABEL_57:

        v113 = v131;
        v114 = v133;
LABEL_70:
        outlined bridged method (mbnn) of @objc UILabel.text.setter(v113, v114, v65);

LABEL_71:
        __swift_destroy_boxed_opaque_existential_1(v172);
        break;
      default:
        v101 = type metadata accessor for ConversationControlsSecondaryPillButtonType;
        v102 = v12;
        goto LABEL_74;
    }
  }

  else
  {
    v36 = *v27;
    v37 = outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter([*v27 deviceHandle]);
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v41 = ConversationHUDSecondaryPillView.titleLabel.getter();
      outlined bridged method (mbnn) of @objc UILabel.text.setter(v39, v40, v41);
    }

    else
    {
      v51 = ConversationHUDSecondaryPillView.titleLabel.getter();
      v52 = [objc_opt_self() conversationKit];
      v176._object = 0xE000000000000000;
      v53._countAndFlagsBits = 0x56545F454C505041;
      v54.value._countAndFlagsBits = 0x61737265766E6F43;
      v54.value._object = 0xEF74694B6E6F6974;
      v53._object = 0xE800000000000000;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      v176._countAndFlagsBits = 0;
      v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v176);

      outlined bridged method (mbnn) of @objc UILabel.text.setter(v56._countAndFlagsBits, v56._object, v51);
    }
  }
}

void ConversationHUDSecondaryPillView.updateSubtitle()()
{
  v1 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsSecondaryPillButtonType(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      _s15ConversationKit11ParticipantVWObTm_3(v6, v3, type metadata accessor for Participant);
      v16 = ConversationHUDSecondaryPillView.subtitleLabel.getter();
      v17 = [objc_opt_self() conversationKit];
      v33._object = 0xE000000000000000;
      v18.value._countAndFlagsBits = 0x61737265766E6F43;
      v18.value._object = 0xEF74694B6E6F6974;
      v19._object = 0x80000001BC4F3EC0;
      v19._countAndFlagsBits = 0xD000000000000024;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v33._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v33);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BC4BA940;
      Participant.contactDetails.getter();
      v22 = v32[1];

      Participant.name(_:)();
      v24 = v23;
      v26 = v25;

      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      v27 = String.init(format:_:)();
      v29 = v28;

      outlined bridged method (mbnn) of @objc UILabel.text.setter(v27, v29, v16);

      v30 = type metadata accessor for Participant;
      v31 = v3;
      break;
    case 11:
      v8 = ConversationHUDSecondaryPillView.subtitleLabel.getter();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v12 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsManager)) + 0x2A0))();
      v11 = NameAndPhotoUtilities.pendingIncomingName(from:)(v12, v13);
      v10 = v14;
      swift_unknownObjectRelease();
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    case 10:
    case 9:
      v8 = ConversationHUDSecondaryPillView.subtitleLabel.getter();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v9 = (static NameAndPhotoUtilities.shared + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalDisplayName);
      swift_beginAccess();
      v10 = v9[1];
      if (v10)
      {
        v11 = *v9;

LABEL_12:
        v15 = MEMORY[0x1BFB209B0](v11, v10);

LABEL_14:
        [v8 setText_];

        return;
      }

LABEL_13:
      v15 = 0;
      goto LABEL_14;
    default:
      v30 = type metadata accessor for ConversationControlsSecondaryPillButtonType;
      v31 = v6;
      break;
  }

  outlined destroy of ConversationControlsSecondaryPillButtonType(v31, v30);
}

uint64_t ConversationHUDSecondaryPillView.createCallToAction()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversationControlsAction(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      outlined destroy of ConversationControlsSecondaryPillButtonType(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      *v10 = 1;
      goto LABEL_9;
    case 1u:
      swift_storeEnumTagMultiPayload();
      outlined destroy of ConversationControlsSecondaryPillButtonType(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      goto LABEL_10;
    case 3u:
      if (![*(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags) uninstalledAppStoreLockupEnabled])
      {
        goto LABEL_9;
      }

      (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))(&v25);
      v11 = *(&v26 + 1);
      if (*(&v26 + 1))
      {
        v12 = v27;
        v13 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
        v14 = *(v11 - 8);
        v15 = MEMORY[0x1EEE9AC00](v13);
        v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v17, v15);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v25, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
        (*(v12 + 112))(v11, v12);
        (*(v14 + 8))(v17, v11);
        v18 = type metadata accessor for Collaboration(0);
        if (__swift_getEnumTagSinglePayload(v4, 1, v18) != 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
LABEL_9:
          swift_storeEnumTagMultiPayload();
LABEL_10:
          v19 = *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_menuHostViewController);
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          v20 = v19;
          ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
          v22 = v21;

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v25, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
          outlined destroy of ConversationControlsSecondaryPillButtonType(v10, type metadata accessor for ConversationControlsAction);
          return v22;
        }
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v25, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
        v24 = type metadata accessor for Collaboration(0);
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
      return 0;
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
      goto LABEL_9;
    default:
      outlined destroy of ConversationControlsSecondaryPillButtonType(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      return 0;
  }
}

Swift::Void __swiftcall ConversationHUDSecondaryPillView.setupLayoutConstraints()()
{
  v3 = v1;
  v4 = 0.0;
  if (*(&v1->super.super.isa + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext))
  {
    if (*(&v1->super.super.isa + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext) == 1)
    {
      static Layout.ConversationControls.values.getter(v42);
      v5 = v42[13];
      v0 = static Layout.ConversationControls.values.getter(v43);
      v4 = v43[13];
    }

    else
    {
      v0 = static Layout.ConversationControls.values.getter(v43);
      v5 = v43[18];
    }
  }

  else
  {
    v5 = 0.0;
  }

  v6 = *((*MEMORY[0x1E69E7D40] & v1->super.super.isa) + 0xE0);
  v7 = (v6)(v0);
  v45.top = 0.0;
  v45.leading = v5;
  v45.bottom = v4;
  v45.trailing = v5;
  UIView.addConstraintsToFill(_:insets:)(v3, v45);

  v8 = ConversationHUDSecondaryPillView.contentHStack.getter();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA7F0;
  v10 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___contentHStack;
  v11 = [*(&v3->super.super.isa + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___contentHStack) topAnchor];
  OUTLINED_FUNCTION_6_58();
  v12 = v6();
  v13 = [v12 topAnchor];

  v14 = OUTLINED_FUNCTION_4_71();
  *(v9 + 32) = v14;
  v15 = [*(&v3->super.super.isa + v10) leadingAnchor];
  OUTLINED_FUNCTION_6_58();
  v16 = v6();
  v17 = [v16 leadingAnchor];

  v18 = OUTLINED_FUNCTION_4_71();
  *(v9 + 40) = v18;
  v19 = [*(&v3->super.super.isa + v10) bottomAnchor];
  OUTLINED_FUNCTION_6_58();
  v20 = v6();
  v21 = [v20 bottomAnchor];

  v22 = OUTLINED_FUNCTION_4_71();
  *(v9 + 48) = v22;
  v23 = [*(&v3->super.super.isa + v10) trailingAnchor];
  OUTLINED_FUNCTION_6_58();
  v24 = v6();
  v25 = [v24 trailingAnchor];

  v26 = OUTLINED_FUNCTION_4_71();
  *(v9 + 56) = v26;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];

  v28 = ConversationHUDSecondaryPillView.appStoreLockup.getter();
  if (v28)
  {
    v29 = v28;
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BC4BC370;
    v31 = [v29 leadingAnchor];
    v32 = [*(&v3->super.super.isa + v10) leadingAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    *(v30 + 32) = v33;
    v34 = [v29 trailingAnchor];
    v35 = [*(&v3->super.super.isa + v10) trailingAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    *(v30 + 40) = v36;
    v37 = [v29 bottomAnchor];
    v38 = [*(&v3->super.super.isa + v10) bottomAnchor];
    v39 = [v37 constraintEqualToAnchor_];

    *(v30 + 48) = v39;
    v40 = Array._bridgeToObjectiveC()().super.isa;

    [v41 activateConstraints_];
  }
}

id ConversationHUDSecondaryPillView.createIconViewForLagunaRecommendation(_:)()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  SymbolImageDescribers.TVHandoff.symbolImageDescription.getter();
  v0 = static UIImage.symbolImage(for:)(v5);
  outlined destroy of SymbolImageDescription(v5);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v2 = v1;
  [v2 setContentMode_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setTintColor_];

  ConversationHUDSecondaryPillView.constrainIconView(_:)(v2);
  return v2;
}

void ConversationHUDSecondaryPillView.constrainIconView(_:)(void *a1)
{
  v3 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType;
  swift_storeEnumTagMultiPayload();
  v7 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(v1 + v6, v5);
  outlined destroy of ConversationControlsSecondaryPillButtonType(v5, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  if (v7)
  {
    v8 = 52.0;
  }

  else
  {
    v8 = 32.0;
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA930;
  v11 = [a1 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v10 + 32) = v12;
  v13 = [a1 widthAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v10 + 40) = v14;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints_];
}

void ConversationHUDSecondaryPillView.updateIconView()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView);
  if (v2)
  {
    v3 = v2;
    v4 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v4 removeArrangedSubview_];

    [v3 removeFromSuperview];
  }

  v5 = ConversationHUDSecondaryPillView.createIconView()();
  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v7 = v5;

    v8 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v8 insertArrangedSubview:v7 atIndex:0];
  }
}

void ConversationHUDSecondaryPillView.updateCallToAction()()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction);
  if (v2)
  {
    v3 = v2;
    v4 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v4 removeArrangedSubview_];

    [v3 removeFromSuperview];
  }

  v5 = ConversationHUDSecondaryPillView.createCallToAction()();
  if (v5)
  {
    v7 = *v1;
    *v1 = v5;
    *(v1 + 8) = v6;
    v8 = v5;

    v9 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v9 addArrangedSubview_];
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t type metadata accessor for ConversationHUDSecondaryPillView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationHUDSecondaryPillView;
  if (!type metadata singleton initialization cache for ConversationHUDSecondaryPillView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @nonobjc ASCLockupViewGroup.init(name:)(double a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = MEMORY[0x1BFB209B0](a2, a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 initWithName_];

  return v5;
}

id @nonobjc ASCOfferTheme.init(titleBackgroundColor:titleTextColor:subtitleTextColor:iconTintColor:progressColor:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = [v5 initWithTitleBackgroundColor:a1 titleTextColor:a2 subtitleTextColor:a3 iconTintColor:a4 progressColor:a5];

  return v11;
}

uint64_t type metadata completion function for ConversationHUDSecondaryPillView(uint64_t a1)
{
  result = type metadata accessor for ConversationControlsSecondaryPillButtonType(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t outlined destroy of ConversationControlsSecondaryPillButtonType(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.initializeCountdownView(with:fullValue:)(Swift::Double with, Swift::Double fullValue)
{
  OUTLINED_FUNCTION_5_18();
  (*(v4 + 224))();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  v21 = OUTLINED_FUNCTION_8_49(v5, &static Logger.conversationControls);
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = with;
    *(v14 + 12) = 2048;
    *(v14 + 14) = fullValue;
    OUTLINED_FUNCTION_1_93();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    OUTLINED_FUNCTION_3_83();
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.startCountdown()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 184);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_5_18();
  (*(v3 + 232))();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v4 = type metadata accessor for Logger();
  v19 = OUTLINED_FUNCTION_8_49(v4, &static Logger.conversationControls);
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_1_93();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_3_83();
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.tick()()
{
  OUTLINED_FUNCTION_5_18();
  (*(v0 + 240))();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  v16 = OUTLINED_FUNCTION_8_49(v1, &static Logger.conversationControls);
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_1_93();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_3_83();
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.countdownEnded()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 184);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_4_0(v0 + 16, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 184);
      swift_getObjectType();
      v6 = *(v5 + 24);
      v7 = v4;
      v6();

      swift_unknownObjectRelease();
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v8 = type metadata accessor for Logger();
    v9 = OUTLINED_FUNCTION_8_49(v8, &static Logger.conversationControls);
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_33();
      *v11 = 0;
      _os_log_impl(&dword_1BBC58000, v9, v10, "[CountdownJoinButtonProvider] countdownEnded", v11, 2u);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v12 = type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_8_49(v12, &static Logger.conversationControls);
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = OUTLINED_FUNCTION_33();
      *v14 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v13, "[CountdownJoinButtonProvider] Skipping joinConversation because button no longer exists after countdownEnded.", v14, 2u);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.cancelJoinCountdown()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 184);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  v18 = OUTLINED_FUNCTION_8_49(v3, &static Logger.conversationControls);
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_1_93();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_3_83();
  }
}

uint64_t ConversationControlsCountdownJoinButtonProvider.init(controlsManager:context:shape:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  v3[23] = 0;
  swift_unknownObjectWeakInit();
  v3[25] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher;
  v9 = type metadata accessor for CountdownVoucher(0);
  __swift_storeEnumTagSinglePayload(v4 + v8, 1, 1, v9);
  type metadata accessor for ConversationControlsJoinCallCountdownView();
  v4[21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[23] = &protocol witness table for ConversationControlsManager;
  v10 = swift_unknownObjectWeakAssign();
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x328))(v10);
  v4[25] = &protocol witness table for ConversationControlsJoinCountdownActionController;
  swift_unknownObjectWeakAssign();

  v4[20] = a1;
  v12 = ControlsButtonProvider.init(context:shape:)(v6, v5);
  v13 = *(v12 + 168);
  swift_retain_n();
  v14 = a1;
  v15 = v13;
  static Layout.ConversationControls.values.getter(v26);
  OUTLINED_FUNCTION_5_18();
  (*(v16 + 160))();

  v17 = *(v12 + 168);
  v18 = objc_opt_self();
  v19 = v17;
  (*((*v11 & *v19) + 0xB8))([v18 secondarySystemFillColor]);

  type metadata accessor for UIImage();
  v20 = *MEMORY[0x1E69DDDC8];
  v25[64] = 0;
  v27[0] = 0x69662E6F65646976;
  v27[1] = 0xEA00000000006C6CLL;
  v27[2] = 2;
  v27[3] = v20;
  v28 = 0;
  v29 = 7;
  v30 = 0;
  v31 = 0;
  v32[0] = 0x69662E6F65646976;
  v32[1] = 0xEA00000000006C6CLL;
  v32[2] = 2;
  v32[3] = v20;
  v33 = 0;
  v34 = 7;
  v35 = 0;
  v36 = 0;
  v21 = v20;
  outlined init with copy of SymbolImageDescription(v27, v25);
  outlined destroy of SymbolImageDescription(v32);
  v22 = static UIImage.symbolImage(for:)(v27);
  outlined destroy of SymbolImageDescription(v27);
  ControlsButtonProvider.image.setter(v22, v23);

  return v12;
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.buttonChanged()()
{
  ControlsButtonProvider.buttonChanged()();
  OUTLINED_FUNCTION_4_0(v0 + 16, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000013, 0x80000001BC501E00, Strong);
    [v2 setClipsToBounds_];
    [v2 addSubview_];
    [v2 addTarget:v0 action:sel_cancelJoinCountdown forControlEvents:64];
    v3 = [v2 imageView];
    if (v3)
    {
      v4 = v3;
      [v3 setAlpha_];
    }
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.didLayoutSubviews(button:)(UIButton *button)
{
  ControlsButtonProvider.didLayoutSubviews(button:)(button);
  v3 = *(v1 + 168);
  [(UIButton *)button bounds];
  [v3 setFrame_];
  v4 = [(UIButton *)button layer];
  [(UIButton *)button bounds];
  [v4 setCornerRadius_];
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.movedToWindow(button:)(UIButton *button)
{
  v2 = v1;
  v4 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd, &_s15ConversationKit16CountdownVoucherVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31[-v14];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v31[-v18];
  v20 = [(UIButton *)button window];
  if (v20)
  {

    v21 = OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher;
    OUTLINED_FUNCTION_4_0(v2 + OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher, v32);
    outlined init with copy of CountdownVoucher?(v2 + v21, v19);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v4);
    outlined destroy of CountdownVoucher?(v19);
    if (EnumTagSinglePayload != 1)
    {
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v2 + 200);
      ObjectType = swift_getObjectType();
      (*(v23 + 8))(v2, &protocol witness table for ConversationControlsCountdownJoinButtonProvider, ObjectType, v23);
      swift_unknownObjectRelease();
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    __swift_storeEnumTagSinglePayload(v15, v25, 1, v4);
    swift_beginAccess();
    v29 = v2 + v21;
    v30 = v15;
  }

  else
  {
    v26 = OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher;
    OUTLINED_FUNCTION_4_0(v2 + OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher, v32);
    outlined init with copy of CountdownVoucher?(v2 + v26, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
    {
      outlined destroy of CountdownVoucher?(v12);
      return;
    }

    outlined init with take of CountdownVoucher(v12, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v2 + 200);
      v28 = swift_getObjectType();
      (*(v27 + 16))(v6, v28, v27);
      swift_unknownObjectRelease();
    }

    outlined destroy of CountdownVoucher(v6);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v4);
    swift_beginAccess();
    v29 = v2 + v26;
    v30 = v9;
  }

  outlined assign with take of CountdownVoucher?(v30, v29);
  swift_endAccess();
}

uint64_t ConversationControlsCountdownJoinButtonProvider.__ivar_destroyer()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 176);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 192);
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher;

  return outlined destroy of CountdownVoucher?(v1);
}

uint64_t ConversationControlsCountdownJoinButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 176);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 192);
  outlined destroy of CountdownVoucher?(v0 + OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher);
  return v0;
}

uint64_t ConversationControlsCountdownJoinButtonProvider.__deallocating_deinit()
{
  ConversationControlsCountdownJoinButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of CountdownVoucher?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd, &_s15ConversationKit16CountdownVoucherVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CountdownVoucher?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd, &_s15ConversationKit16CountdownVoucherVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of CountdownVoucher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountdownVoucher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CountdownVoucher(uint64_t a1)
{
  v2 = type metadata accessor for CountdownVoucher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of CountdownVoucher?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd, &_s15ConversationKit16CountdownVoucherVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ConversationControlsCountdownJoinButtonProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationControlsCountdownJoinButtonProvider;
  if (!type metadata singleton initialization cache for ConversationControlsCountdownJoinButtonProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ConversationControlsCountdownJoinButtonProvider(uint64_t a1)
{
  type metadata accessor for CountdownVoucher?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CountdownVoucher?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CountdownVoucher?)
  {
    type metadata accessor for CountdownVoucher(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CountdownVoucher?);
    }
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x64656E696F6ALL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 0x6E456172656D6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xED000064656C6261;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x64656E696F6ALL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1952867692;
    }

    else
    {
      v2 = 0x6E456172656D6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED000064656C6261;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10(v4, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 1701736302;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x746365726964;
    }

    else
    {
      v4 = 0x79616C6572;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x746365726964;
    }

    else
    {
      v2 = 0x79616C6572;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10(v4, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0x656C746974;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656C746974;
  switch(v4)
  {
    case 1:
      v5 = 0x41746E6572727563;
      v3 = 0xEF79746976697463;
      break;
    case 2:
      v5 = 0x7069636974726170;
      v7 = 1937010273;
      goto LABEL_11;
    case 3:
      v5 = 0x6572616873;
      break;
    case 4:
      v5 = 0x6143656C67676F74;
      v6 = 0x736E6F697470;
      goto LABEL_8;
    case 5:
      v5 = 0xD000000000000017;
      v3 = 0x80000001BC4F1D50;
      break;
    case 6:
      v5 = 0x7373654D6E65706FLL;
      v7 = 1936025441;
LABEL_11:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 7:
      v5 = 0x646E416B636F6C62;
      v6 = 0x74726F706552;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 8:
      v3 = 0xE800000000000000;
      v5 = 0x656C746954747470;
      break;
    case 9:
      v5 = 0x545450657661656CLL;
      v3 = 0xEF6C656E6E616843;
      break;
    case 10:
      v5 = 0x415454506E65706FLL;
      v3 = 0xEA00000000007070;
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x41746E6572727563;
      v8 = 0xEF79746976697463;
      break;
    case 2:
      v2 = 0x7069636974726170;
      v10 = 1937010273;
      goto LABEL_24;
    case 3:
      v2 = 0x6572616873;
      break;
    case 4:
      v2 = 0x6143656C67676F74;
      v9 = 0x736E6F697470;
      goto LABEL_21;
    case 5:
      v2 = 0xD000000000000017;
      v8 = 0x80000001BC4F1D50;
      break;
    case 6:
      v2 = 0x7373654D6E65706FLL;
      v10 = 1936025441;
LABEL_24:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 7:
      v2 = 0x646E416B636F6C62;
      v9 = 0x74726F706552;
LABEL_21:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 8:
      v8 = 0xE800000000000000;
      v2 = 0x656C746954747470;
      break;
    case 9:
      v2 = 0x545450657661656CLL;
      v8 = 0xEF6C656E6E616843;
      break;
    case 10:
      v2 = 0x415454506E65706FLL;
      v8 = 0xEA00000000007070;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_35_10(v5, a2, v2);
  }

  return v12 & 1;
}

{
  v2 = 0xEF6E6F6973736553;
  v3 = 0x65756E69746E6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x736553657661656CLL;
    }

    else
    {
      v5 = 0x6E6F697463416F6ELL;
    }

    if (v4 == 1)
    {
      v6 = 0xEC0000006E6F6973;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x65756E69746E6F63;
    v6 = 0xEF6E6F6973736553;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x736553657661656CLL;
    }

    else
    {
      v3 = 0x6E6F697463416F6ELL;
    }

    if (a2 == 1)
    {
      v2 = 0xEC0000006E6F6973;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_42_16(v5, a2, v3);
  }

  return v8 & 1;
}

{
  v2 = 0xEB00000000656C62;
  v3 = 0x616C696176616E75;
  v4 = a1;
  v5 = 0x616C696176616E75;
  v6 = 0xEB00000000656C62;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7964616552746F6ELL;
      break;
    case 2:
      v6 = 0x80000001BC4F1C50;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x7964616572;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v7 = 1836212599;
      goto LABEL_11;
    case 5:
      v5 = 0x6552657669746361;
      v6 = 0xEF676E6964726F63;
      break;
    case 6:
      v5 = 0xD000000000000013;
      v6 = 0x80000001BC4F1C90;
      break;
    case 7:
      v5 = 0x6F4364726F636572;
      v6 = 0xEE006574656C706DLL;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v7 = 1684956531;
LABEL_11:
      v5 = v7 | 0x676E6900000000;
      break;
    case 9:
      v6 = 0xE400000000000000;
      v5 = 1953391987;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7964616552746F6ELL;
      break;
    case 2:
      v2 = 0x80000001BC4F1C50;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x7964616572;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v8 = 1836212599;
      goto LABEL_22;
    case 5:
      v3 = 0x6552657669746361;
      v2 = 0xEF676E6964726F63;
      break;
    case 6:
      v3 = 0xD000000000000013;
      v2 = 0x80000001BC4F1C90;
      break;
    case 7:
      v3 = 0x6F4364726F636572;
      v2 = 0xEE006574656C706DLL;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v8 = 1684956531;
LABEL_22:
      v3 = v8 | 0x676E6900000000;
      break;
    case 9:
      v2 = 0xE400000000000000;
      v3 = 1953391987;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_42_16(v5, a2, v3);
  }

  return v10 & 1;
}

{
  v2 = 1852403562;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1702260589;
    }

    else
    {
      v4 = 0x50646E416E696F6ALL;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB0000000079616CLL;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1852403562;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1702260589;
    }

    else
    {
      v2 = 0x50646E416E696F6ALL;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB0000000079616CLL;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10(v4, a2, v2);
  }

  return v8 & 1;
}

{
  v2 = 0xEE00646574616572;
  v3 = 0x43796C6C61636F6CLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x64657469766E69;
    }

    else
    {
      v5 = 0x6574736576726168;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0x43796C6C61636F6CLL;
    v6 = 0xEE00646574616572;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x64657469766E69;
    }

    else
    {
      v3 = 0x6574736576726168;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE900000000000064;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_42_16(v5, a2, v3);
  }

  return v8 & 1;
}

{
  v2 = 0xE900000000000079;
  v3 = 0x616C706572616873;
  v4 = a1;
  v5 = "screenshare-sharebutton";
  v6 = 0x616C706572616873;
  v7 = 0xE900000000000079;
  v8 = "shareplay-sharebutton";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000015;
      v7 = 0x80000001BC4F1A70;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_63_6();
      v7 = 0xEB00000000650079;
      break;
    case 3:
      v7 = 0x80000001BC4F1AA0;
      v6 = 0xD000000000000017;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_63_6();
      v7 = 0xEF7070612D650079;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000015;
      v2 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_62_6();
      v2 = 0xEB00000000650079;
      break;
    case 3:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000017;
      break;
    case 4:
      OUTLINED_FUNCTION_62_6();
      v2 = 0xEF7070612D650079;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_42_16(v6, a2, v3);
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = 0xD00000000000002ALL;
  }

  if (v2)
  {
    v4 = "systemApertureLayoutMode";
  }

  else
  {
    v4 = "e.alloy.facetime.messaging";
  }

  if (a2)
  {
    v5 = 0xD000000000000026;
  }

  else
  {
    v5 = 0xD00000000000002ALL;
  }

  if (a2)
  {
    v6 = "e.alloy.facetime.messaging";
  }

  else
  {
    v6 = "systemApertureLayoutMode";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10(v3, a2, v5);
  }

  return v8 & 1;
}

{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6765746E696E6F6ELL;
  }

  else
  {
    v3 = 0x7461726765746E69;
  }

  if (v2)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xED00006465746172;
  }

  if (a2)
  {
    v5 = 0x6765746E696E6F6ELL;
  }

  else
  {
    v5 = 0x7461726765746E69;
  }

  if (a2)
  {
    v6 = 0xED00006465746172;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)()
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_28_23();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0x655F000000000000;
  v6 = v5;
  v7 = v4;
  v8 = v0;
  switch(v6)
  {
    case 1:
      v8 = 0x80000001BC4F19F0;
      v7 = v2 + 2;
      break;
    case 2:
      break;
    case 3:
      v9 = "drawer_toggle-video";
      goto LABEL_6;
    case 4:
      v8 = 0x80000001BC4F1A30;
      v7 = v2 + 3;
      break;
    default:
      v9 = "conversationkit-info";
LABEL_6:
      v8 = v9 | 0x8000000000000000;
      v7 = 0xD000000000000011;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x80000001BC4F19F0;
      v4 = v2 + 2;
      break;
    case 2:
      break;
    case 3:
      v10 = "drawer_toggle-video";
      goto LABEL_12;
    case 4:
      v0 = 0x80000001BC4F1A30;
      v4 = v2 + 3;
      break;
    default:
      v10 = "conversationkit-info";
LABEL_12:
      v0 = v10 | 0x8000000000000000;
      v4 = 0xD000000000000011;
      break;
  }

  if (v7 == v4 && v8 == v0)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_42_16(v7, v1, v4);
  }

  return v12 & 1;
}

{
  v0 = 0xED0000676F64746FLL;
  OUTLINED_FUNCTION_28_23();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x685F000000000000;
  v5 = v4;
  v6 = "drawer_ring-background";
  v7 = v3;
  v8 = 0xED0000676F64746FLL;
  v9 = "drawer_effects-selected";
  switch(v5)
  {
    case 1:
      v7 = OUTLINED_FUNCTION_45_12() & 0xFFFFFFFFFFFFLL | 0x655F000000000000;
      v8 = 0xEE00737463656666;
      break;
    case 2:
      v8 = 0x80000001BC4F1940;
      v7 = 0xD000000000000017;
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_45_12() & 0xFFFFFFFFFFFFLL | 0x655F000000000000;
      v8 = 0xED0000646E617078;
      break;
    case 4:
      v7 = 0xD000000000000016;
      v8 = 0x80000001BC4F1970;
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_45_12() & 0xFFFFFFFFFFFFLL | 0x615F000000000000;
      v10 = 1869177973;
      goto LABEL_8;
    case 6:
      v7 = OUTLINED_FUNCTION_45_12() & 0xFFFFFFFFFFFFLL | 0x675F000000000000;
      v8 = 0xEB00000000776F6CLL;
      break;
    case 7:
      v7 = 0x6C6C61632D646E65;
      v10 = 1667329375;
LABEL_8:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_28_23();
      v3 = v11 & 0xFFFFFFFFFFFFLL | 0x655F000000000000;
      v0 = 0xEE00737463656666;
      break;
    case 2:
      v0 = (v9 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000017;
      break;
    case 3:
      OUTLINED_FUNCTION_28_23();
      OUTLINED_FUNCTION_65_0();
      break;
    case 4:
      v3 = 0xD000000000000016;
      v0 = (v6 - 32) | 0x8000000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_28_23();
      v3 = v13 & 0xFFFFFFFFFFFFLL | 0x615F000000000000;
      v12 = 1869177973;
      goto LABEL_17;
    case 6:
      OUTLINED_FUNCTION_28_23();
      v3 = v14 & 0xFFFFFFFFFFFFLL | 0x675F000000000000;
      v0 = 0xEB00000000776F6CLL;
      break;
    case 7:
      v3 = 0x6C6C61632D646E65;
      v12 = 1667329375;
LABEL_17:
      v0 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v0)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_42_16(v7, v1, v3);
  }

  return v16 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_35_10(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = OUTLINED_FUNCTION_43_10();
  v10(v9);
  lazy protocol witness table accessor for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action(a4, a5, a6);
  OUTLINED_FUNCTION_312();
  dispatch thunk of RawRepresentable.rawValue.getter();
  OUTLINED_FUNCTION_312();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v17 == v15 && v18 == v16)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_42_16(v17, v11, v15);
  }

  return v13 & 1;
}

void specialized >> prefix<A>(_:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for Participant(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for Participant);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ParticipantViewModel(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit20ParticipantViewModelOSgMd, &_s15ConversationKit20ParticipantViewModelOSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ParticipantViewModel);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ConversationControlsSecondaryPillButtonType(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ConversationControlsAction(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ConversationControlsAction);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ConversationControlsRecipe(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ConversationControlsRecipe);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for HUDActivityManager.BannerUpdate(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for HUDActivityManager.BannerUpdate);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RecentsCallItem(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit15RecentsCallItemVSgMd, &_s15ConversationKit15RecentsCallItemVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RecentsCallItem);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for SharedContentViewModel(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit22SharedContentViewModelOSgMd, &_s15ConversationKit22SharedContentViewModelOSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for SharedContentViewModel);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RecentsCallItemType(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit19RecentsCallItemTypeOSgMd, &_s15ConversationKit19RecentsCallItemTypeOSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RecentsCallItemType);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RecentOngoingConversationMetadata(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RecentOngoingConversationMetadata);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ScreenShareAttributes(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ScreenShareAttributes);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for StagedCollaboration(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit19StagedCollaborationVSgMd, &_s15ConversationKit19StagedCollaborationVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for StagedCollaboration);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for Participant.State(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for Participant.State);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RemoteControlMessage(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit20RemoteControlMessageOSgMd, &_s15ConversationKit20RemoteControlMessageOSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RemoteControlMessage);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RemoteControlRequest(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit20RemoteControlRequestVSgMd, &_s15ConversationKit20RemoteControlRequestVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RemoteControlRequest);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RemoteControlResponse(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit21RemoteControlResponseVSgMd, &_s15ConversationKit21RemoteControlResponseVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RemoteControlResponse);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RecentCallRecentItemMetadata(v6);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RecentCallRecentItemMetadata);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

uint64_t *ConversationControlsRecipeGenerator.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_46_12(&one-time initialization token for shared);
  }

  return &static ConversationControlsRecipeGenerator.shared;
}

uint64_t ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v451 = a1;
  v450 = type metadata accessor for PushToTalkNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  v455 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  v452 = &v449 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v449 - v21;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, &static Logger.conversationControls);
  outlined init with copy of ConversationControlsType(a2, &v465);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v454 = a3;
    v28 = v27;
    v464[0] = v27;
    *v26 = 136315138;
    outlined init with copy of ConversationControlsType(&v465, &v456);
    specialized >> prefix<A>(_:)(&v456);
    v449 = v12;
    OUTLINED_FUNCTION_74_3();
    v29 = v16;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v456, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of ConversationControlsType(&v465);
    v30 = OUTLINED_FUNCTION_312();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);

    *(v26 + 4) = v33;
    v16 = v29;
    v22 = v453;
    v12 = v449;
    _os_log_impl(&dword_1BBC58000, v24, v25, "generating recipe for type %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v34 = v28;
    a3 = v454;
    MEMORY[0x1BFB23DF0](v34, -1, -1);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
  }

  else
  {

    outlined destroy of ConversationControlsType(&v465);
  }

  v35 = type metadata accessor for ConversationControlsRecipe(0);
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v35);
  outlined init with copy of ConversationControlsType(a2, &v465);
  v36 = v465;
  switch(v469)
  {
    case 1:
      v454 = a3;
      v98 = v22;
      outlined init with take of TapInteractionHandler(&v465, &v456);
      if (v451 == 2)
      {
        goto LABEL_56;
      }

      outlined init with copy of IDSLookupManager(&v456, v464);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
      if (swift_dynamicCast())
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v99 = OUTLINED_FUNCTION_48_10();
        PushToTalkControlsRecipeGenerator.pttHUDRecipe(controlsManager:)(v99, v100, v101);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        outlined init with take of ConversationControlsRecipe?(v22, a4);
        outlined destroy of PushToTalkNotice(v10, type metadata accessor for PushToTalkNotice);
      }

      else
      {
        v153 = v460;
        __swift_project_boxed_opaque_existential_1(&v456, v459);
        v154 = OUTLINED_FUNCTION_6_4();
        v155(v154, v153);
        if (v461 == 1)
        {
        }

        else
        {
          v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v168 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        v169 = static Features.shared;
        v462 = &type metadata for ScreeningStatusOverride;
        v463 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v170 = type metadata accessor for Defaults();
        OUTLINED_FUNCTION_50_1(v170);
        v171 = v169;
        v461 = Defaults.init()();
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v172 = OUTLINED_FUNCTION_56_7();
        v173 = OUTLINED_FUNCTION_84(v172);
        v174 = OUTLINED_FUNCTION_29_18(v173, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_72_5(v174, v175);
        OUTLINED_FUNCTION_30_15();
        v176();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v177 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_17_5(v177);
        (*(v36 + 8))(v16, *(&v36 + 1));
        OUTLINED_FUNCTION_48_10();
        OUTLINED_FUNCTION_31_2();
        DefaultHUDControlsRecipeGenerator.defaultHUDRecipe(controlsManager:)(v178, v179, v180);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        outlined init with take of ConversationControlsRecipe?(v22, a4);
      }

LABEL_55:
      __swift_destroy_boxed_opaque_existential_1(v464);
LABEL_56:
      v193 = v452;
      outlined init with copy of (CGFloat, AutoplayCandidate)(a4, v452, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v193, 1, v35);
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v195, v196, v197);
      if (EnumTagSinglePayload == 1)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v198 = static SystemApertureIconFactory.shared;
        v464[3] = &type metadata for ScreeningStatusOverride;
        v464[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v199 = type metadata accessor for Defaults();
        OUTLINED_FUNCTION_50_1(v199);

        v464[0] = Defaults.init()();
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v200 = OUTLINED_FUNCTION_56_7();
        v201 = OUTLINED_FUNCTION_84(v200);
        v202 = OUTLINED_FUNCTION_29_18(v201, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_72_5(v202, v203);
        OUTLINED_FUNCTION_30_15();
        v204();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v205 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_17_5(v205);
        v206 = OUTLINED_FUNCTION_57_6();
        v207(v206);
        outlined init with copy of IDSLookupManager(&v456, v464);
        v208 = OUTLINED_FUNCTION_48_10();
        NoticeRecipeGenerator.noticeRecipe(controlsManager:notice:)(v208, v209, v198, v201, v210);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v464, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        outlined init with take of ConversationControlsRecipe?(v98, a4);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v456);
    case 2:
      v459 = &type metadata for ScreeningStatusOverride;
      v54 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      v55 = OUTLINED_FUNCTION_52_10(v54);
      OUTLINED_FUNCTION_50_1(v55);
      v56 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v56);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v453 = v36;
      v57 = a4;
      v58 = OUTLINED_FUNCTION_44_10();
      v59 = OUTLINED_FUNCTION_84(v58);
      v60 = OUTLINED_FUNCTION_29_18(v59, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
      OUTLINED_FUNCTION_70_2(v60, v61);
      OUTLINED_FUNCTION_39_11();
      v62();
      OUTLINED_FUNCTION_59_5(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v63 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
      v64 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_19_23(v59 + v63, v65, v66, v64);
      v67(v16, v35);
      OUTLINED_FUNCTION_76_3();
      HandoffControlsRecipeGenerator.handoffCompletedRecipe(controlsManager:localizedDeviceCategory:)();
      swift_setDeallocating();
      SystemApertureIconFactory.deinit();
      OUTLINED_FUNCTION_75_5();
      swift_deallocClassInstance();

      goto LABEL_12;
    case 3:
      v459 = &type metadata for ScreeningStatusOverride;
      v68 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      v69 = OUTLINED_FUNCTION_52_10(v68);
      OUTLINED_FUNCTION_50_1(v69);
      v70 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v70);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v57 = a4;
      v71 = OUTLINED_FUNCTION_44_10();
      v72 = OUTLINED_FUNCTION_84(v71);
      v73 = OUTLINED_FUNCTION_29_18(v72, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
      OUTLINED_FUNCTION_72_5(v73, v74);
      OUTLINED_FUNCTION_39_11();
      v75();
      OUTLINED_FUNCTION_59_5(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v76 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
      v77 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_19_23(v72 + v76, v78, v79, v77);
      v80(v16, *(&v36 + 1));
      OUTLINED_FUNCTION_76_3();
      HandoffControlsRecipeGenerator.lagunaHandoffHUDRecipe(controlsManager:suggestion:)();
      swift_setDeallocating();
      SystemApertureIconFactory.deinit();
      OUTLINED_FUNCTION_75_5();
      swift_deallocClassInstance();

LABEL_12:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      v37 = a3;
      v53 = v57;
      return outlined init with take of ConversationControlsRecipe?(v37, v53);
    case 4:
      v459 = &type metadata for ScreeningStatusOverride;
      v38 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      v39 = OUTLINED_FUNCTION_52_10(v38);
      OUTLINED_FUNCTION_50_1(v39);
      v40 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v40);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v453 = v36;
      v41 = OUTLINED_FUNCTION_60_6();
      v42 = OUTLINED_FUNCTION_84(v41);
      v43 = OUTLINED_FUNCTION_68_4((v42 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService));
      (*(v12 + 16))(v43, v16, v16);
      OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v44 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
      v45 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_19_23(v42 + v44, v46, v47, v45);
      v48(v16, v16);
      ScreenSharingControlsRecipeGenerator.incomingRemoteControlRequestHUDRecipe(controlsManager:requestingParticipantDisplayName:)(a3, v453, *(&v36 + 1), v42, v49, v50, v51, v52, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      v37 = v22;
      v53 = a4;
      return outlined init with take of ConversationControlsRecipe?(v37, v53);
    case 5:
      v459 = &type metadata for ScreeningStatusOverride;
      v102 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      v103 = OUTLINED_FUNCTION_52_10(v102);
      OUTLINED_FUNCTION_50_1(v103);
      v104 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v104);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v105 = a4;
      v106 = OUTLINED_FUNCTION_44_10();
      v107 = OUTLINED_FUNCTION_84(v106);
      v108 = OUTLINED_FUNCTION_68_4((v107 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService));
      (*(v12 + 16))(v108, v16, v16);
      OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v109 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
      v110 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_19_23(v107 + v109, v111, v112, v110);
      v113(v16, v16);
      v114 = OUTLINED_FUNCTION_76_3();
      ScreenSharingControlsRecipeGenerator.rejectedRemoteControlRequestHUDRecipe(controlsManager:context:)(v114, v115, v107, v116, v117, v118, v119, v120, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460);
      goto LABEL_26;
    case 6:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_74_3();
      v452 = a4;
      v454 = a3;
      v121 = static Features.shared;
      OUTLINED_FUNCTION_55_9();
      if (!v122)
      {
        OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
      }

      v123 = static SystemApertureIconFactory.shared;
      v459 = &type metadata for ScreeningStatusOverride;
      v124 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      v125 = OUTLINED_FUNCTION_52_10(v124);
      OUTLINED_FUNCTION_50_1(v125);
      OUTLINED_FUNCTION_6_4();

      v126 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v126);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v127 = OUTLINED_FUNCTION_43_10();
      v128 = type metadata accessor for SystemApertureIconFactory(v127);
      v129 = OUTLINED_FUNCTION_84(v128);
      OUTLINED_FUNCTION_68_4((v129 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService));
      OUTLINED_FUNCTION_38_14();
      v130();
      OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v131 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_23_4(v131);
      (*(v12 + 8))(v16, v16);
      v132 = v453;
      CallsControlsRecipeGenerator.swapCallsRecipe(shownCall:controlsManager:)(v36, *(&v36 + 1), v454, v10, v123, v129, v133, v134, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460);
      swift_unknownObjectRelease();

      v135 = v452;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v452, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      v37 = v132;
      v53 = v135;
      return outlined init with take of ConversationControlsRecipe?(v37, v53);
    case 7:
      if (!(*(&v465 + 1) | v465 | v468 | v467 | v466))
      {
        v82 = v22;
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        v136 = static Features.shared;
        v459 = &type metadata for ScreeningStatusOverride;
        v137 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v138 = OUTLINED_FUNCTION_52_10(v137);
        OUTLINED_FUNCTION_50_1(v138);
        v139 = v136;
        v140 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v140);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v141 = OUTLINED_FUNCTION_56_7();
        v142 = OUTLINED_FUNCTION_84(v141);
        v143 = OUTLINED_FUNCTION_29_18(v142, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_72_5(v143, v144);
        OUTLINED_FUNCTION_30_15();
        v145();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v146 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_17_5(v146);
        v147 = OUTLINED_FUNCTION_57_6();
        v148(v147);
        OUTLINED_FUNCTION_31_2();
        DefaultHUDControlsRecipeGenerator.defaultHUDRecipe(controlsManager:)(v149, v150, v151);

        goto LABEL_35;
      }

      v81 = v468 | *(&v465 + 1) | v467 | v466;
      if (v465 == 1 && !v81)
      {
        v82 = v22;
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        v83 = static Features.shared;
        v459 = &type metadata for ScreeningStatusOverride;
        v84 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v85 = OUTLINED_FUNCTION_52_10(v84);
        OUTLINED_FUNCTION_50_1(v85);
        v86 = v83;
        v87 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v87);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v88 = OUTLINED_FUNCTION_56_7();
        v89 = OUTLINED_FUNCTION_84(v88);
        v90 = OUTLINED_FUNCTION_29_18(v89, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_72_5(v90, v91);
        OUTLINED_FUNCTION_30_15();
        v92();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v93 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_17_5(v93);
        v94 = OUTLINED_FUNCTION_57_6();
        v95(v94);
        OUTLINED_FUNCTION_31_2();
        DefaultHUDControlsRecipeGenerator.unauthorizedParticipantHUDRecipe(controlsManager:)(v96, v97);

        goto LABEL_19;
      }

      if (v465 == 2 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        PushToTalkControlsRecipeGenerator.pttHUDRecipe(controlsManager:)(a3, static SystemApertureIconFactory.shared, v22);
        goto LABEL_8;
      }

      if (v465 == 3 && !v81)
      {
        v459 = &type metadata for ScreeningStatusOverride;
        v156 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v157 = OUTLINED_FUNCTION_52_10(v156);
        OUTLINED_FUNCTION_50_1(v157);
        v158 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v158);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v82 = v22;
        v159 = OUTLINED_FUNCTION_60_6();
        v160 = OUTLINED_FUNCTION_84(v159);
        OUTLINED_FUNCTION_22_27(v160, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_39_11();
        v161();
        OUTLINED_FUNCTION_59_5(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v162 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
        v163 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_19_23(v160 + v162, v164, v165, v163);
        v166 = OUTLINED_FUNCTION_43_0();
        v167(v166);
        HandoffControlsRecipeGenerator.handoffHUDRecipe(controlsManager:)();
LABEL_19:
        swift_setDeallocating();
        SystemApertureIconFactory.deinit();
        OUTLINED_FUNCTION_75_5();
        swift_deallocClassInstance();
LABEL_35:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        v37 = v82;
        goto LABEL_36;
      }

      if (v465 == 4 && !v81)
      {
        v459 = &type metadata for ScreeningStatusOverride;
        v181 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v182 = OUTLINED_FUNCTION_52_10(v181);
        OUTLINED_FUNCTION_50_1(v182);
        v183 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v183);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v105 = a4;
        v184 = OUTLINED_FUNCTION_44_10();
        v185 = OUTLINED_FUNCTION_84(v184);
        OUTLINED_FUNCTION_22_27(v185, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_39_11();
        v186();
        OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v187 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
        v188 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_19_23(v185 + v187, v189, v190, v188);
        v191 = OUTLINED_FUNCTION_43_0();
        v192(v191);
        OUTLINED_FUNCTION_76_3();
        HandoffControlsRecipeGenerator.lagunaHandoffCompletedRecipe(controlsManager:)();
LABEL_26:

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        v37 = a3;
        v53 = v105;
        return outlined init with take of ConversationControlsRecipe?(v37, v53);
      }

      v454 = a3;
      if (v465 == 5 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_64_6();
        v211 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v122)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

LABEL_67:
        v459 = &type metadata for ScreeningStatusOverride;
        v212 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v213 = OUTLINED_FUNCTION_52_10(v212);
        OUTLINED_FUNCTION_50_1(v213);
        OUTLINED_FUNCTION_6_4();

        v214 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v214);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v215 = OUTLINED_FUNCTION_43_10();
        v216 = type metadata accessor for SystemApertureIconFactory(v215);
        v217 = OUTLINED_FUNCTION_84(v216);
        v218 = OUTLINED_FUNCTION_29_18(v217, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_70_2(v218, v219);
        OUTLINED_FUNCTION_20_26();
        v220();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v221 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v222 = OUTLINED_FUNCTION_15_30(v221);
        v223(v222);
        OUTLINED_FUNCTION_48_10();
        CallsControlsRecipeGenerator.makeIncomingCall(using:isThirdParty:)();
LABEL_75:

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        v37 = v36;
        goto LABEL_36;
      }

      if (v465 == 6 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_64_6();
        v224 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v122)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v459 = &type metadata for ScreeningStatusOverride;
        v225 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v226 = OUTLINED_FUNCTION_52_10(v225);
        OUTLINED_FUNCTION_50_1(v226);
        OUTLINED_FUNCTION_6_4();

        v227 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v227);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v228 = OUTLINED_FUNCTION_43_10();
        v229 = type metadata accessor for SystemApertureIconFactory(v228);
        v230 = OUTLINED_FUNCTION_84(v229);
        v231 = OUTLINED_FUNCTION_29_18(v230, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_70_2(v231, v232);
        OUTLINED_FUNCTION_20_26();
        v233();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v234 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v235 = OUTLINED_FUNCTION_15_30(v234);
        v236(v235);
        OUTLINED_FUNCTION_26_22();
        CallsControlsRecipeGenerator.makeOngoingTelephonyCall(using:)();
        goto LABEL_75;
      }

      if (v465 == 7 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_64_6();
        v237 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v122)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        goto LABEL_67;
      }

      if (v465 == 8 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_64_6();
        v238 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v122)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v459 = &type metadata for ScreeningStatusOverride;
        v239 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v240 = OUTLINED_FUNCTION_52_10(v239);
        OUTLINED_FUNCTION_50_1(v240);
        OUTLINED_FUNCTION_6_4();

        v241 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v241);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v242 = OUTLINED_FUNCTION_43_10();
        v243 = type metadata accessor for SystemApertureIconFactory(v242);
        v244 = OUTLINED_FUNCTION_84(v243);
        v245 = OUTLINED_FUNCTION_29_18(v244, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_70_2(v245, v246);
        OUTLINED_FUNCTION_20_26();
        v247();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v248 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v249 = OUTLINED_FUNCTION_15_30(v248);
        v250(v249);
        v251 = OUTLINED_FUNCTION_26_22();
        CallsControlsRecipeGenerator.makeOngoingThirdPartyVoIPCall(using:)(v251, v252, v253, v254, v255, v256, v257, v258, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460);
        goto LABEL_75;
      }

      if (v465 == 9 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_64_6();
        v259 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v122)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v459 = &type metadata for ScreeningStatusOverride;
        v260 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v261 = OUTLINED_FUNCTION_52_10(v260);
        OUTLINED_FUNCTION_50_1(v261);
        OUTLINED_FUNCTION_6_4();

        v262 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v262);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v263 = OUTLINED_FUNCTION_43_10();
        v264 = type metadata accessor for SystemApertureIconFactory(v263);
        v265 = OUTLINED_FUNCTION_84(v264);
        v266 = OUTLINED_FUNCTION_29_18(v265, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_70_2(v266, v267);
        OUTLINED_FUNCTION_20_26();
        v268();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v269 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v270 = OUTLINED_FUNCTION_15_30(v269);
        v271(v270);
        OUTLINED_FUNCTION_26_22();
        CallsControlsRecipeGenerator.callAgainHUDRecipe(controlsManager:)();
        goto LABEL_75;
      }

      v272 = v16;
      if (v465 == 10 && !v81)
      {
        CollaborationControlsRecipeGenerator.collaborationHUDRecipe(controlsManager:alternateAppearance:)(a3, 0, v22);
LABEL_8:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
        v37 = v22;
LABEL_36:
        v53 = a4;
        return outlined init with take of ConversationControlsRecipe?(v37, v53);
      }

      v273 = a4;
      v274 = v22;
      if (v465 == 11 && !v81)
      {
        v275 = OUTLINED_FUNCTION_34_18();
        CollaborationControlsRecipeGenerator.collaborationHUDRecipe(controlsManager:alternateAppearance:)(v275, 1, v276);
        goto LABEL_159;
      }

      if (v465 == 12 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_18_4(&one-time initialization token for shared);
        }

        ShareNameAndPhotoControlsRecipeGenerator.shareNameAndPhotoRecipe(nameAndPhotoUtilities:)(static NameAndPhotoUtilities.shared, v22);
        goto LABEL_159;
      }

      if (v465 == 13 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_18_4(&one-time initialization token for shared);
        }

        ShareNameAndPhotoControlsRecipeGenerator.shareNameRecipe(nameAndPhotoUtilities:)(static NameAndPhotoUtilities.shared, v22);
        goto LABEL_159;
      }

      if (v465 == 14 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v277 = OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyVideoStreamingRequestRecipe(controlsManager:)(v277, v278, v279);
        goto LABEL_159;
      }

      if (v465 == 15 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v280 = OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyMediaUploadRequestRecipe(controlsManager:)(v280, v281);
        goto LABEL_159;
      }

      if (v465 == 16 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v282 = OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyRTTVideoStreamingRequestRecipe(controlsManager:)(v282, v283, v284);
        goto LABEL_159;
      }

      if (v465 == 17 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyRTTMediaUploadRequestRecipe(controlsManager:)();
        goto LABEL_159;
      }

      if (v465 == 18 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyMediaUploadRequestDuringStreamingRecipe(controlsManager:)();
        goto LABEL_159;
      }

      if (v465 == 19 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_18_4(&one-time initialization token for shared);
        }

        ShareNameAndPhotoControlsRecipeGenerator.incomingNameUpdateRecipe(nameAndPhotoUtilities:controlsManager:)(a3, v22);
        goto LABEL_159;
      }

      if (v465 == 20 && !v81)
      {
        v285 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
        OUTLINED_FUNCTION_49_0(v285);
        v459 = &type metadata for ScreeningStatusOverride;
        v286 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v287 = OUTLINED_FUNCTION_52_10(v286);
        OUTLINED_FUNCTION_50_1(v287);
        v288 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v288);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
        v289 = OUTLINED_FUNCTION_56_7();
        v290 = OUTLINED_FUNCTION_84(v289);
        OUTLINED_FUNCTION_22_27(v290, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v291();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v292 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v293 = OUTLINED_FUNCTION_6_59(v292);
        v294(v293);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v295 = static SystemApertureIconFactory.shared;

        v296 = OUTLINED_FUNCTION_5_66();
        IntelligenceRecipeGenerator.liveVoicemailOngoingRecipe(controlsManager:)(v296, v295, v297);
LABEL_158:

        goto LABEL_159;
      }

      if (v465 == 21 && !v81)
      {
        v298 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
        OUTLINED_FUNCTION_49_0(v298);
        v459 = &type metadata for ScreeningStatusOverride;
        v299 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v300 = OUTLINED_FUNCTION_52_10(v299);
        OUTLINED_FUNCTION_50_1(v300);
        v301 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v301);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
        v302 = OUTLINED_FUNCTION_56_7();
        v303 = OUTLINED_FUNCTION_84(v302);
        OUTLINED_FUNCTION_22_27(v303, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v304();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v305 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v306 = OUTLINED_FUNCTION_6_59(v305);
        v307(v306);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_5_66();
        IntelligenceRecipeGenerator.callScreeningRingingCallRecipe(controlsManager:)();
        goto LABEL_158;
      }

      if (v465 == 22 && !v81)
      {
        v308 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
        OUTLINED_FUNCTION_49_0(v308);
        v459 = &type metadata for ScreeningStatusOverride;
        v309 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v310 = OUTLINED_FUNCTION_52_10(v309);
        OUTLINED_FUNCTION_50_1(v310);
        v311 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v311);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
        v312 = OUTLINED_FUNCTION_56_7();
        v313 = OUTLINED_FUNCTION_84(v312);
        OUTLINED_FUNCTION_22_27(v313, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v314();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v315 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v316 = OUTLINED_FUNCTION_6_59(v315);
        v317(v316);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_5_66();
        IntelligenceRecipeGenerator.callScreeningIncomingCallRecipe(controlsManager:)();
        goto LABEL_158;
      }

      if (v465 == 23 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_74_3();
        v459 = &type metadata for ScreeningStatusOverride;
        v318 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v319 = OUTLINED_FUNCTION_52_10(v318);
        OUTLINED_FUNCTION_50_1(v319);
        OUTLINED_FUNCTION_6_4();

        v320 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v320);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v321 = OUTLINED_FUNCTION_56_7();
        v322 = OUTLINED_FUNCTION_84(v321);
        OUTLINED_FUNCTION_22_27(v322, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v323();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v324 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v325 = OUTLINED_FUNCTION_6_59(v324);
        v326(v325);
        v327 = OUTLINED_FUNCTION_5_66();
        GreenTeaControlsRecipeGenerator.incomingGreenTea3PHUDRecipe(controlsManager:)(v327, v328, v329);
LABEL_170:

LABEL_171:

        goto LABEL_159;
      }

      if (v465 == 24 && !v81)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_74_3();
        v459 = &type metadata for ScreeningStatusOverride;
        v330 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v331 = OUTLINED_FUNCTION_52_10(v330);
        OUTLINED_FUNCTION_50_1(v331);
        OUTLINED_FUNCTION_6_4();

        v332 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v332);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v333 = OUTLINED_FUNCTION_56_7();
        v334 = OUTLINED_FUNCTION_84(v333);
        OUTLINED_FUNCTION_22_27(v334, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v335();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v336 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v337 = OUTLINED_FUNCTION_6_59(v336);
        v338(v337);
        v339 = OUTLINED_FUNCTION_5_66();
        GreenTeaControlsRecipeGenerator.ongoingGreenTea3PHUDRecipe(controlsManager:)(v339, v340, v341, v342);
        goto LABEL_170;
      }

      if (v465 == 25 && !v81)
      {
        v459 = &type metadata for ScreeningStatusOverride;
        v343 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v344 = OUTLINED_FUNCTION_52_10(v343);
        OUTLINED_FUNCTION_50_1(v344);
        v345 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v345);
        v346 = v272;
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v347 = OUTLINED_FUNCTION_60_6();
        v348 = OUTLINED_FUNCTION_84(v347);
        v349 = OUTLINED_FUNCTION_29_18(v348, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        v351 = *(v350 - 256);
        v349[3] = v351;
        v349[4] = v352;
        __swift_allocate_boxed_opaque_existential_1(v349);
        OUTLINED_FUNCTION_38_14();
        v353();
        OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v354 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
        v355 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_19_23(v348 + v354, v356, v357, v355);
        v358(v346, v351);
        v359 = OUTLINED_FUNCTION_34_18();
        ScreenSharingControlsRecipeGenerator.outgoingScreenSharingRequestHUDRecipe(controlsManager:)(v359, v348, v360, v361, v362, v363, v364, v365, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460);
        goto LABEL_171;
      }

      if (v465 == 26 && !v81)
      {
        v459 = &type metadata for ScreeningStatusOverride;
        v366 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v367 = OUTLINED_FUNCTION_52_10(v366);
        OUTLINED_FUNCTION_50_1(v367);
        v368 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v368);
        v369 = v272;
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v370 = OUTLINED_FUNCTION_60_6();
        v371 = OUTLINED_FUNCTION_84(v370);
        v372 = OUTLINED_FUNCTION_29_18(v371, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        v374 = *(v373 - 256);
        v372[3] = v374;
        v372[4] = v375;
        __swift_allocate_boxed_opaque_existential_1(v372);
        OUTLINED_FUNCTION_38_14();
        v376();
        OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v377 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
        v378 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_19_23(v371 + v377, v379, v380, v378);
        v381(v369, v374);
        OUTLINED_FUNCTION_34_18();
        ScreenSharingControlsRecipeGenerator.incomingScreenSharingRequestHUDRecipe(controlsManager:)();
        goto LABEL_171;
      }

      if (v465 != 27 || v81)
      {
        if (v465 == 28 && !v81)
        {
          v396 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
          OUTLINED_FUNCTION_49_0(v396);
          v459 = &type metadata for ScreeningStatusOverride;
          v397 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
          v398 = OUTLINED_FUNCTION_52_10(v397);
          OUTLINED_FUNCTION_50_1(v398);
          v399 = Defaults.init()();
          OUTLINED_FUNCTION_12_43(v399);
          CallScreeningService.init(overrides:)();
          [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
          v400 = OUTLINED_FUNCTION_56_7();
          v401 = OUTLINED_FUNCTION_84(v400);
          OUTLINED_FUNCTION_22_27(v401, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
          OUTLINED_FUNCTION_10_43();
          v402();
          OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
          v403 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
          v404 = OUTLINED_FUNCTION_6_59(v403);
          v405(v404);
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
          }

          v406 = static SystemApertureIconFactory.shared;

          v407 = OUTLINED_FUNCTION_5_66();
          IntelligenceRecipeGenerator.waitOnHoldRecipe(controlsManager:)(v407, v408, v409, v406, v410);
          goto LABEL_158;
        }

        if (v465 == 29 && !v81)
        {
          v411 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
          OUTLINED_FUNCTION_49_0(v411);
          v459 = &type metadata for ScreeningStatusOverride;
          v412 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
          v413 = OUTLINED_FUNCTION_52_10(v412);
          OUTLINED_FUNCTION_50_1(v413);
          v414 = Defaults.init()();
          OUTLINED_FUNCTION_12_43(v414);
          CallScreeningService.init(overrides:)();
          [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
          v415 = OUTLINED_FUNCTION_56_7();
          v416 = OUTLINED_FUNCTION_84(v415);
          OUTLINED_FUNCTION_22_27(v416, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
          OUTLINED_FUNCTION_10_43();
          v417();
          OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
          v418 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
          v419 = OUTLINED_FUNCTION_6_59(v418);
          v420(v419);
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
          }

          OUTLINED_FUNCTION_5_66();
          IntelligenceRecipeGenerator.waitOnHoldRequiresUserAttentionRecipe(controlsManager:)();
          goto LABEL_158;
        }

        if (v465 == 30 && !v81)
        {
          v421 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
          OUTLINED_FUNCTION_49_0(v421);
          v459 = &type metadata for ScreeningStatusOverride;
          v422 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
          v423 = OUTLINED_FUNCTION_52_10(v422);
          OUTLINED_FUNCTION_50_1(v423);
          v424 = Defaults.init()();
          OUTLINED_FUNCTION_12_43(v424);
          CallScreeningService.init(overrides:)();
          [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
          v425 = OUTLINED_FUNCTION_56_7();
          v426 = OUTLINED_FUNCTION_84(v425);
          OUTLINED_FUNCTION_22_27(v426, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
          OUTLINED_FUNCTION_10_43();
          v427();
          OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
          v428 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
          v429 = OUTLINED_FUNCTION_6_59(v428);
          v430(v429);
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
          }

          v431 = static SystemApertureIconFactory.shared;

          v432 = OUTLINED_FUNCTION_5_66();
          IntelligenceRecipeGenerator.waitOnHoldHoldDetectedRecipe(controlsManager:)(v432, v433, v434, v431, v435);
          goto LABEL_158;
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        v436 = one-time initialization token for shared;
        OUTLINED_FUNCTION_49_0(static Features.shared);
        if (v436 != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v452 = static SystemApertureIconFactory.shared;
        v459 = &type metadata for ScreeningStatusOverride;
        v437 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v438 = OUTLINED_FUNCTION_52_10(v437);
        OUTLINED_FUNCTION_50_1(v438);
        OUTLINED_FUNCTION_6_4();

        v439 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v439);
        v440 = v272;
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v441 = OUTLINED_FUNCTION_43_10();
        v442 = type metadata accessor for SystemApertureIconFactory(v441);
        v443 = OUTLINED_FUNCTION_84(v442);
        v444 = OUTLINED_FUNCTION_29_18(v443, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        v392 = *(v445 - 256);
        v444[3] = v392;
        v444[4] = v446;
        __swift_allocate_boxed_opaque_existential_1(v444);
        OUTLINED_FUNCTION_38_14();
        v447();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v448 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_23_4(v448);
        (*(v12 + 8))(v440, v392);
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_73_3();
        CallsControlsRecipeGenerator.videoUpgradeRequest(controlsManager:)();
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        v382 = one-time initialization token for shared;
        OUTLINED_FUNCTION_49_0(static Features.shared);
        if (v382 != -1)
        {
          OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
        }

        v452 = static SystemApertureIconFactory.shared;
        v459 = &type metadata for ScreeningStatusOverride;
        v383 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        v384 = OUTLINED_FUNCTION_52_10(v383);
        OUTLINED_FUNCTION_50_1(v384);
        OUTLINED_FUNCTION_6_4();

        v385 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v385);
        v386 = v272;
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v387 = OUTLINED_FUNCTION_43_10();
        v388 = type metadata accessor for SystemApertureIconFactory(v387);
        v389 = OUTLINED_FUNCTION_84(v388);
        v390 = OUTLINED_FUNCTION_29_18(v389, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        v392 = *(v391 - 256);
        v390[3] = v392;
        v390[4] = v393;
        __swift_allocate_boxed_opaque_existential_1(v390);
        OUTLINED_FUNCTION_38_14();
        v394();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v395 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_23_4(v395);
        (*(v12 + 8))(v386, v392);
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_73_3();
        CallsControlsRecipeGenerator.podcastRecordingRequest(controlsManager:)();
      }

      swift_setDeallocating();
      SystemApertureIconFactory.deinit();
      OUTLINED_FUNCTION_75_5();
      swift_deallocClassInstance();
LABEL_159:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v273, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      v37 = v274;
      v53 = v273;
      return outlined init with take of ConversationControlsRecipe?(v37, v53);
    default:
      GondolaControlsRecipeGenerator.pendingAuthorizationRequestRecipe(controlsManager:)(a3, v22);
      goto LABEL_8;
  }
}

void *Call.isFromMessagesScreenShare.getter()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return ([result originatingUIType] == 32);
  }

  return result;
}

void one-time initialization function for shared()
{
  type metadata accessor for ConversationControlsRecipeGenerator();
  v0 = swift_allocObject();
  ConversationControlsRecipeGenerator.init()();
  static ConversationControlsRecipeGenerator.shared = v0;
}

uint64_t ConversationControlsRecipeGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  ConversationControlsRecipeGenerator.init()();
  return v0;
}

uint64_t static ConversationControlsRecipeGenerator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_46_12(&one-time initialization token for shared);
  }
}

uint64_t ConversationControlsRecipeGenerator.deinit()
{

  return v0;
}

uint64_t ConversationControlsRecipeGenerator.__deallocating_deinit()
{
  ConversationControlsRecipeGenerator.deinit();

  return swift_deallocClassInstance();
}

void ConversationControlsRecipeGenerator.init()()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v2 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  type metadata accessor for CallCenterFacade();
  *(v0 + 16) = static CallCenterFacade.shared.getter();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v9 = static Features.shared;
  *(v0 + 24) = static Features.shared;
  v10 = one-time initialization token for shared;
  v11 = v9;
  if (v10 != -1)
  {
    OUTLINED_FUNCTION_8_6(&one-time initialization token for shared);
  }

  *(v1 + 32) = static SystemApertureIconFactory.shared;
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  v12 = type metadata accessor for Defaults();
  v13 = OUTLINED_FUNCTION_50_1(v12);

  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v14 = type metadata accessor for Features();
  [objc_allocWithZone(v14) init];
  v15 = OUTLINED_FUNCTION_43_10();
  v16 = type metadata accessor for SystemApertureIconFactory(v15);
  v17 = OUTLINED_FUNCTION_84(v16);
  v18 = MEMORY[0x1E6995EE0];
  v19 = (v17 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v19[3] = v2;
  v19[4] = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(v4 + 16))(boxed_opaque_existential_1, v8, v2);
  v21 = (v17 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v21[3] = v14;
  v21[4] = &protocol witness table for Features;
  *v21 = v13;
  v22 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
  v23 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  __swift_storeEnumTagSinglePayload(v17 + v22, 1, 1, v23);
  (*(v4 + 8))(v8, v2);
  *(v1 + 40) = v17;
  OUTLINED_FUNCTION_49();
}

uint64_t outlined init with take of ConversationControlsRecipe?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of ConversationControlsSecondaryPillButtonType(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of ConversationControlsSecondaryPillButtonType(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of PushToTalkNotice(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

id OUTLINED_FUNCTION_67_5(void *a1)
{

  return [a1 init];
}

uint64_t OUTLINED_FUNCTION_69_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return String.init<A>(reflecting:)();
}

uint64_t *OUTLINED_FUNCTION_70_2@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  a1[3] = *(a2 - 256);
  a1[4] = v2;

  return __swift_allocate_boxed_opaque_existential_1(a1);
}

id ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(a1, a3, ObjectType, a2);
}

id specialized Conversation.avModeForSystemAperture.getter()
{
  v1 = &selRef_resolvedAudioVideoMode;
  if ([v0 state] == 4)
  {
    v2 = [v0 remoteMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = specialized Set.count.getter();

    if (v3 == 1)
    {
      v1 = &selRef_avMode;
    }
  }

  v4 = *v1;

  return [v0 v4];
}

void ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(void *a1@<X0>, int a2@<W1>, _UNKNOWN **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - v12;
  v14 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  v78 = a3;
  SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, a1);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v77 = a2;
    v76 = v22;
    v36 = outlined init with take of SystemApertureIcon(v13, v22);
    v37 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0);
    v38 = (v37)(v36);
    v75 = v16;
    if (v38 && (v39 = v38, v40 = specialized Conversation.avModeForSystemAperture.getter(), v39, v40 == 1))
    {
      v41 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x380))() ^ 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = v37();
    v43 = [v42 joinedActivitySession];

    v44 = v43 == 0;
    if (v43)
    {

      if (v41)
      {
        goto LABEL_14;
      }
    }

    else if (v41)
    {
LABEL_14:
      SystemApertureIconFactory.makeActivityIcon(for:)(a1);
      if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
      {
        outlined destroy of TapInteractionHandler?(v10, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
        if ((v41 & 1) == 0 || (ConversationControlsManager.isOneToOneConversation.getter() & 1) == 0)
        {
          type metadata accessor for SystemApertureEmptyTrailingView();
          v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v78 = &protocol witness table for SystemApertureEmptyTrailingView;
          v46 = v75;
          goto LABEL_25;
        }

        (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (!v45)
        {
          swift_unknownObjectRelease();
        }

        v46 = v75;
        type metadata accessor for SystemApertureInCallWaveformTrailingView();
        v47 = static WaveformConfigurations.inCallNumberOfBands.getter();
        v48 = SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(v45, v47);
        v49 = &protocol witness table for SystemApertureInCallWaveformTrailingView;
      }

      else
      {
        outlined init with take of SystemApertureIcon(v10, v19);
        v46 = v75;
        outlined init with copy of SystemApertureIcon(v19, v75);
        v50 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
        OUTLINED_FUNCTION_4_73();
        v48 = v51;
        outlined destroy of SystemApertureIcon(v19);
        v49 = &protocol witness table for SystemApertureIconView;
      }

      v78 = v49;
LABEL_25:
      v29 = v48;
      if (v44)
      {
        v52 = type metadata accessor for SystemApertureInCallLeadingView(0);
        v53 = v76;
        v54 = OUTLINED_FUNCTION_7_8();
        v56 = outlined init with copy of SystemApertureIcon(v54, v55);
        v57 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))(v56);
        v59 = v58;
        ObjectType = swift_getObjectType();
        v79 = v57;
        v27 = specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(v46, &v79, v52, ObjectType, *(v59 + 8));
        v28 = &protocol witness table for SystemApertureInCallLeadingView;
      }

      else
      {
        v53 = v76;
        v61 = OUTLINED_FUNCTION_7_8();
        outlined init with copy of SystemApertureIcon(v61, v62);
        v63 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
        OUTLINED_FUNCTION_4_73();
        v27 = v64;
        v28 = &protocol witness table for SystemApertureIconView;
      }

      v35 = ConversationControlsManager.maximumLayoutMode.getter();
      v65 = OUTLINED_FUNCTION_7_8();
      outlined init with copy of SystemApertureIcon(v65, v66);
      v67 = type metadata accessor for SystemApertureIconView(0);
      v68 = objc_allocWithZone(v67);
      OUTLINED_FUNCTION_4_73();
      v31 = v69;
      v70 = OUTLINED_FUNCTION_7_8();
      outlined init with copy of SystemApertureIcon(v70, v71);
      v72 = objc_allocWithZone(v67);
      SystemApertureIconView.init(icon:isDetached:)();
      v33 = v73;

      outlined destroy of SystemApertureIcon(v53);
      v32 = &protocol witness table for SystemApertureIconView;
      v34 = v77;
      v30 = v78;
      goto LABEL_29;
    }

    v44 = 0;
    goto LABEL_14;
  }

  outlined destroy of TapInteractionHandler?(v13, &_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, &static Logger.conversationControls);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1BBC58000, v24, v25, "[SystemAperture] missing status icon for activeCall", v26, 2u);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = -2;
  v35 = 4;
LABEL_29:
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 32) = v31;
  *(a4 + 40) = v32;
  *(a4 + 48) = v33;
  *(a4 + 56) = v32;
  *(a4 + 64) = v35;
  *(a4 + 72) = v34;
  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsApertureHelper.makeAvatarUsingCall(_:with:isThirdParty:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  ObjectType = swift_getObjectType();

  specialized ConversationControlsApertureHelper.makeAvatarUsingCall(_:with:isThirdParty:)(a1, a3, v6, a5, ObjectType, a2);
}

void ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(void *a1, void *a2)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v26 = v5;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v20 = v19;
  ObjectType = swift_getObjectType();
  (*(v20 + 88))(ObjectType, v20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of TapInteractionHandler?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_5:
    v24 = [a2 view];
    v25 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A8))(v24);
    (*((*v25 & *a2) + 0x58))(v8);
    swift_unknownObjectRelease();
    (*(v26 + 8))(v8, v27);
    goto LABEL_6;
  }

  (*(v14 + 32))(v18, v11, v12);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v22._countAndFlagsBits = URL.relativePath.getter();
  v23 = UIImage.__allocating_init(contentsOfFile:)(v22);
  (*(v14 + 8))(v18, v12);
  if (!v23)
  {
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
LABEL_6:
  OUTLINED_FUNCTION_30_0();
}

id outlined bridged method (mbgnnn) of @objc static UIImage._applicationIconImage(forBundleIdentifier:format:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0](a1, a2);
  v7 = [a4 _applicationIconImageForBundleIdentifier_format_];

  return v7;
}

void specialized ConversationControlsApertureHelper.makeAvatarUsingCall(_:with:isThirdParty:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  if (a3)
  {
    lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    Defaults.init()();
    CallScreeningService.init(overrides:)();
    v18 = type metadata accessor for Features();
    v19 = [objc_allocWithZone(v18) init];
    type metadata accessor for SystemApertureIconFactory(0);
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E6995EE0];
    v22 = (v20 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
    v22[3] = v11;
    v22[4] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    (*(v13 + 16))(boxed_opaque_existential_1, v17, v11);
    v24 = (v20 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
    v24[3] = v18;
    v24[4] = &protocol witness table for Features;
    *v24 = v19;
    v25 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
    v26 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
    __swift_storeEnumTagSinglePayload(v20 + v25, 1, 1, v26);
    v27 = OUTLINED_FUNCTION_7_8();
    v28(v27);
    v29 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(a1, v20, a5, a6);
    swift_setDeallocating();
    SystemApertureIconFactory.deinit();
    swift_deallocClassInstance();
    if (v29)
    {
    }

    v30 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v31 = [objc_opt_self() clearColor];
    v32 = swift_unknownObjectRetain();
    specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v32, 0, v29, v31, v30, a5, a6);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v33 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x2C0);
    v34 = swift_unknownObjectRetain();
    v33(v34);
    v35 = [objc_opt_self() clearColor];
    OUTLINED_FUNCTION_30_0();

    specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v36, v37, v38, v39, v40, v41, v42);
  }
}

id specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 184);
  v7 = v6(a3, a4);
  v8 = [v7 isSystemProvider];

  if (v8)
  {
    return 0;
  }

  v9 = v6(a3, a4);
  v10 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v9);
  if (!v11)
  {
    return 0;
  }

  v12 = v10;
  v13 = v11;
  v14 = objc_opt_self();
  v15 = outlined bridged method (mbgnnn) of @objc static UIImage._applicationIconImage(forBundleIdentifier:format:)(v12, v13, 5, v14);
  if (v15)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E69635F8]);

    v18 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v12, v13, 1);

    v19 = [v18 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v15;
}

uint64_t outlined init with take of SystemApertureIcon(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for ConversationHUDControlsView.recipe : ConversationHUDControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA0))(v6);
}

void ConversationHUDControlsView.recipe.didset()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
  v6 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_recipe;
  swift_beginAccess();
  outlined init with copy of ConversationControlsRecipe(v1 + v6, v4);
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xA0))(v4);
  specialized FaceTimeControlsView.handleUpdateDuringEphemeralAlert()();
}

uint64_t ConversationHUDControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t ConversationHUDControlsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  ConversationHUDControlsView.recipe.didset();
  return outlined destroy of ConversationControlsRecipe(a1);
}

uint64_t ConversationHUDControlsView.recipe.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for ConversationHUDControlsView.context : ConversationHUDControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t ConversationHUDControlsView.context.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_context;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationHUDControlsView.context.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_context;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path getter for ConversationHUDControlsView.ephemeralAlertTimer : ConversationHUDControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDControlsView.ephemeralAlertTimer : ConversationHUDControlsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

void *ConversationHUDControlsView.ephemeralAlertTimer.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlertTimer;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void ConversationHUDControlsView.ephemeralAlertTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlertTimer;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for ConversationHUDControlsView.ephemeralAlert : ConversationHUDControlsView@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for ConversationHUDControlsView.ephemeralAlert : ConversationHUDControlsView(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);
  v5 = *(a1 + 16);
  outlined copy of ConversationControlsRecipe.View?(*a1, v3);
  return v4(v2, v3, v5);
}

void ConversationHUDControlsView.ephemeralAlert.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlert;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    specialized FaceTimeControlsView.displayEphemeralAlert()();
  }

  else
  {
    specialized FaceTimeControlsView.cleanUpEphemeralAlert()();
  }
}

void ConversationHUDControlsView.ephemeralAlert.getter()
{
  swift_beginAccess();
  OUTLINED_FUNCTION_9_51();
  outlined copy of ConversationControlsRecipe.View?(v0, v1);
  OUTLINED_FUNCTION_9_51();
}

void ConversationHUDControlsView.ephemeralAlert.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlert;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  OUTLINED_FUNCTION_9_51();
  outlined copy of ConversationControlsRecipe.View?(v10, v11);
  outlined consume of ConversationControlsRecipe.View?(v8, v9);
  ConversationHUDControlsView.ephemeralAlert.didset();
  OUTLINED_FUNCTION_9_51();
  outlined consume of ConversationControlsRecipe.View?(v12, v13);
}

uint64_t ConversationHUDControlsView.ephemeralAlert.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void ConversationHUDControlsView.cnkContentAlpha.didset()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
    v6 = swift_beginAccess();
    (*((*v2 & *v4) + 0x68))(v6, *(v1 + v5));
  }

  v7 = (*((*v2 & *v1) + 0xE0))();
  if (v7)
  {
    outlined consume of ConversationControlsRecipe.View?(v7, v8);
    v9 = (*((*v2 & *v1) + 0x130))();
    v10 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
    swift_beginAccess();
    [v9 setAlpha_];
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
    v12 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
    swift_beginAccess();
    [v11 setAlpha_];
  }
}

double ConversationHUDControlsView.cnkContentAlpha.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ConversationHUDControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  ConversationHUDControlsView.cnkContentAlpha.didset();
}

uint64_t ConversationHUDControlsView.cnkContentAlpha.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationHUDControlsView.recipe.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t ConversationHUDControlsView.showCallDetailsButton.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView)) + 0xE0))();
  v3 = (*((*v1 & *v2) + 0xD8))();

  return v3;
}

uint64_t key path getter for ConversationHUDControlsView.buttonShelfView : ConversationHUDControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

void key path setter for ConversationHUDControlsView.buttonShelfView : ConversationHUDControlsView(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ConversationHUDControlsView.buttonShelfView.setter(v1);
}

void *ConversationHUDControlsView.buttonShelfView.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void ConversationHUDControlsView.buttonShelfView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for ConversationHUDControlsView.ephemeralAlertNotice : ConversationHUDControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id ConversationHUDControlsView.ephemeralAlertNotice.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_controlsManager);
    v6 = objc_allocWithZone(type metadata accessor for ConversationHUDEphemeralNotice());
    v7 = ConversationHUDEphemeralNotice.init(controlsManager:)(v5);
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void ConversationHUDControlsView.ephemeralAlertNotice.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice);
  *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice) = a1;
}

void (*ConversationHUDControlsView.ephemeralAlertNotice.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDControlsView.ephemeralAlertNotice.getter();
  return ConversationHUDControlsView.ephemeralAlertNotice.modify;
}

void ConversationHUDControlsView.ephemeralAlertNotice.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice);
  *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice) = v2;
}

id ConversationHUDControlsView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a6;
  v10 = a3;
  v13 = type metadata accessor for ConversationControlsRecipe(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlertTimer] = 0;
  v17 = &v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlert];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  v35 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView;
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice] = 0;
  outlined init with copy of ConversationControlsRecipe(a1, &v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_recipe]);
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_controlsManager] = a2;
  v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_context] = v10;
  outlined init with copy of ConversationControlsRecipe(a1, v16);
  v39[0] = 0;
  v18 = objc_allocWithZone(type metadata accessor for ConversationHUDControlsStatusView(0));
  v19 = a4;
  v20 = a2;
  v36 = a4;
  v37 = a5;
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView] = ConversationHUDControlsStatusView.init(recipe:controlsManager:menuHostViewController:context:presentationStyle:)(v16, v20, a4, a5, v10, v39);
  v21 = (a1 + *(v14 + 68));
  if (*(v21 + 40) <= -3)
  {
    v22 = *v21;
    outlined copy of ConversationControlsRecipe.Actions();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  v24 = v38;
  if (v23)
  {
    outlined init with copy of ConversationControlsRecipe(a1, v16);
    outlined init with copy of ConversationControlsMoreMenuButtonDelegate?(v24, v39);
    v25 = objc_allocWithZone(type metadata accessor for ConversationHUDControlsButtonShelfView());
    v26 = v20;
    v27 = v19;
    v28 = ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(v16, v26, v10, v36, v37, v39);
    v29 = v35;
    swift_beginAccess();
    v30 = *&v7[v29];
    *&v7[v29] = v28;
  }

  v31 = type metadata accessor for ConversationHUDControlsView(0);
  v40.receiver = v7;
  v40.super_class = v31;
  v32 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ConversationHUDControlsView.setupRootView()();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24);
  outlined destroy of ConversationControlsRecipe(a1);
  return v32;
}

void ConversationHUDControlsView.setupRootView()()
{
  v1 = [v0 layer];
  [v1 setAllowsGroupOpacity_];

  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v4();
  [v2 setAlpha_];
  v5 = (*((*v3 & *v0) + 0x130))([v0 addSubview_]);
  [v0 insertSubview:v5 below:v2];

  specialized FaceTimeControlsView.handleUpdateDuringEphemeralAlert()();
  v6 = (*((*v3 & *v0) + 0x118))();
  if (v6)
  {
    v7 = v6;
    v4();
    [v7 setAlpha_];
    [v0 addSubview_];
    if (_UISolariumEnabled())
    {
      v8[3] = type metadata accessor for _GlassGroup();
      v8[4] = MEMORY[0x1E69DBEA8];
      __swift_allocate_boxed_opaque_existential_1(v8);
      _GlassGroup.init(foreground:)();
      UIView._background.setter();
    }
  }

  ConversationHUDControlsView.setupLayoutConstraints()();
}

id ConversationHUDControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlertTimer) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlert;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDControlsView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDControlsView(0);
  v1 = objc_msgSendSuper2(&v2, sel_layoutSubviews);
  (*((*MEMORY[0x1E69E7D40] & **&v0[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_controlsManager]) + 0xA58))(v1);
}

id ConversationHUDControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationHUDControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDControlsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for FaceTimeControlsView.ephemeralAlert.modify in conformance ConversationHUDControlsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for FaceTimeControlsView.ephemeralAlertTimer.modify in conformance ConversationHUDControlsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance ConversationHUDControlsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for ControlsView.recipe.modify in conformance ConversationHUDControlsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

Swift::Void __swiftcall ConversationHUDControlsView.setupLayoutConstraints()()
{
  v1 = v0;
  v111 = MEMORY[0x1E69E7CC0];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  if (v2() == 2)
  {
    v3 = static Layout.ConversationControls.values.getter(v112);
    v4 = &v114;
  }

  else
  {
    v3 = static Layout.ConversationControls.values.getter(v112);
    v4 = &v113;
  }

  v5 = *v4;
  if ((v2)(v3) == 2)
  {
    static Layout.ConversationControls.values.getter(v115);
    v6 = &v117;
  }

  else
  {
    static Layout.ConversationControls.values.getter(v115);
    v6 = &v116;
  }

  v7 = *v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [v0 addLayoutGuide_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA7F0;
  v10 = [v8 topAnchor];
  v11 = [v1 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v12 = OUTLINED_FUNCTION_2_89();
  v14 = [v12 v13];

  *(v9 + 32) = v14;
  v15 = [v8 bottomAnchor];
  v16 = [v1 &off_1E7FE9D20 + 5];
  v17 = OUTLINED_FUNCTION_2_89();
  v19 = [v17 v18];

  *(v9 + 40) = v19;
  v20 = [v8 leadingAnchor];
  v21 = [v1 leadingAnchor];
  v22 = OUTLINED_FUNCTION_2_89();
  v24 = [v22 v23];

  *(v9 + 48) = v24;
  v25 = [v8 trailingAnchor];
  v26 = [v1 trailingAnchor];
  v27 = OUTLINED_FUNCTION_2_89();
  v29 = [v27 v28];

  *(v9 + 56) = v29;
  specialized Array.append<A>(contentsOf:)(v9);
  v30 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BA7F0;
  v32 = [v30 heightAnchor];
  static Layout.ConversationControls.values.getter(v118);
  v33 = [v32 constraintGreaterThanOrEqualToConstant_];

  *(v31 + 32) = v33;
  v34 = [v30 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v35 = [v8 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v36 = [v34 constraintEqualToAnchor_];

  OUTLINED_FUNCTION_7_59(v38, v37, sel_setPriority_);
  *(v31 + 40) = v36;
  v39 = [v30 leadingAnchor];
  v40 = [v8 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  OUTLINED_FUNCTION_7_59(v43, v42, sel_setPriority_);
  *(v31 + 48) = v41;
  v44 = [v30 trailingAnchor];
  v45 = [v8 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  OUTLINED_FUNCTION_7_59(v48, v47, sel_setPriority_);
  *(v31 + 56) = v46;
  v49 = OUTLINED_FUNCTION_10_44();
  v50 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x130);
  v51 = (v50)(v49);
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BC370;
  v53 = v50();
  v54 = [v53 heightAnchor];

  static Layout.ConversationControls.values.getter(v119);
  v55 = [v54 constraintGreaterThanOrEqualToConstant_];

  *(v52 + 32) = v55;
  v56 = v50();
  v57 = [v56 topAnchor];

  v58 = [v8 topAnchor];
  v59 = OUTLINED_FUNCTION_8_12();
  v61 = [v59 v60];

  v64 = OUTLINED_FUNCTION_7_59(v63, v62, sel_setPriority_);
  *(v52 + 40) = v61;
  v65 = (v50)(v64);
  v66 = [v65 bottomAnchor];

  v67 = [v30 bottomAnchor];
  static Layout.ConversationControls.values.getter(v120);
  v68 = OUTLINED_FUNCTION_8_12();
  v70 = [v68 v69];

  *(v52 + 48) = v70;
  OUTLINED_FUNCTION_10_44();
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1BC4BA930;
  v72 = v50();
  v73 = [v72 leadingAnchor];

  v74 = [v8 leadingAnchor];
  v75 = OUTLINED_FUNCTION_8_12();
  v77 = [v75 v76];

  v80 = OUTLINED_FUNCTION_7_59(v79, v78, sel_setPriority_);
  *(v71 + 32) = v77;
  v81 = (v50)(v80);
  v82 = [v81 trailingAnchor];

  v83 = [v8 trailingAnchor];
  v84 = OUTLINED_FUNCTION_8_12();
  v86 = [v84 v85];

  OUTLINED_FUNCTION_7_59(v88, v87, sel_setPriority_);
  *(v71 + 40) = v86;
  v89 = OUTLINED_FUNCTION_10_44();
  v90 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x118))(v89);
  if (v90)
  {
    v91 = v90;
    [v91 setTranslatesAutoresizingMaskIntoConstraints_];
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1BC4BA930;
    v93 = [v91 topAnchor];
    v94 = [v30 bottomAnchor];
    static Layout.ConversationControls.values.getter(v121);
    v95 = [v93 constraintEqualToAnchor:v94 constant:v121[16]];

    *(v92 + 32) = v95;
    v96 = [v91 bottomAnchor];
    v97 = [v8 bottomAnchor];
    v98 = OUTLINED_FUNCTION_6_60();

    *(v92 + 40) = v98;
    OUTLINED_FUNCTION_10_44();
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1BC4BA930;
    v100 = [v91 leadingAnchor];
    v101 = [v8 leadingAnchor];
    v102 = OUTLINED_FUNCTION_6_60();

    *(v99 + 32) = v102;
    v103 = [v91 trailingAnchor];

    v104 = [v8 trailingAnchor];
    v105 = OUTLINED_FUNCTION_6_60();

    *(v99 + 40) = v105;
    specialized Array.append<A>(contentsOf:)(v99);
  }

  else
  {
    v106 = [v30 bottomAnchor];
    v107 = [v8 bottomAnchor];
    v108 = [v106 constraintEqualToAnchor_];

    MEMORY[0x1BFB20CC0]();
    if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v109 = objc_opt_self();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v109 activateConstraints_];
}

uint64_t type metadata accessor for ConversationHUDControlsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationHUDControlsView;
  if (!type metadata singleton initialization cache for ConversationHUDControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of ConversationControlsMoreMenuButtonDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for ConversationHUDControlsView(uint64_t a1)
{
  result = type metadata accessor for ConversationControlsRecipe(319);
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

void *static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = static UIContentSizeCategory.>= infix(_:_:)();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  result = static Layout.ConversationControls.values.getter(v8);
  v7 = v8[30];
  *a1 = v4 & 1;
  *(a1 + 8) = v5;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  return result;
}

id ConversationHUDControlsButtonShelfView.__allocating_init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v13 = objc_allocWithZone(v6);
  return ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(a1, a2, v10, a4, a5, a6);
}

id ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha] = 0x3FF0000000000000;
  v27.receiver = v6;
  v27.super_class = type metadata accessor for ConversationHUDControlsButtonShelfView();
  v13 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = a1 + *(type metadata accessor for ConversationControlsRecipe(0) + 60);
  v15 = *(v14 + 40);
  if (v15 < 0xFE && (v15 & 0x80) != 0)
  {
    v17 = *(v14 + 8);
    v26 = *v14;
    v18 = *(v14 + 16);
    v19 = *(v14 + 24);
    v20 = *(v14 + 32);
    [v13 setAxis_];
    [v13 setAlignment_];
    v21 = [v13 setDistribution_];
    if ((v15 & 1) == 0)
    {
      v21 = [v13 setSpacing_];
    }

    MEMORY[0x1EEE9AC00](v21);
    v22[2] = a2;
    v22[3] = a4;
    v22[4] = a5;
    v23 = a3;
    v24 = a6;
    v25 = v13;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:), v22, v26);
  }

  else
  {
  }

  outlined destroy of ConversationControlsRecipe(a1);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a6);
  return v13;
}

void closure #1 in ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a5;
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v10 = v9;
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = v10;
  static Layout.ConversationControls.values.getter(v29);
  [v14 _setTouchInsets_];

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    [v15 setPreferredBehavioralStyle_];
  }

  if (v8 == 2 && (type metadata accessor for ConversationControlsButton(), (v16 = swift_dynamicCastClass()) != 0))
  {
    v17 = v16;
    v18 = *MEMORY[0x1E69DDC50];
    v19 = v14;
    [v17 setMaximumContentSizeCategory_];
    v20 = &v17[OBJC_IVAR___CNKConversationControlsButton_localizedName];
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];
    objc_allocWithZone(type metadata accessor for LabeledButtonView());

    v28 = v19;
    v23 = LabeledButtonView.init(control:text:)(v17, v22, v21);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      [a7 addArrangedSubview_];
    }
  }

  else
  {
    [a7 addArrangedSubview_];
  }

  if ((*(v12 + 32))(ObjectType, v12) == 1)
  {
    v24 = [v14 widthAnchor];
    v25 = [v14 heightAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    type metadata accessor for UILayoutPriority(0);
    v30 = 1148846080;
    lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v27) = v31;
    [v26 setPriority_];
    [v26 setActive_];
  }
}

void ConversationHUDControlsButtonShelfView.cnkContentAlpha.didset(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha;
  swift_beginAccess();
  if (*&v1[v4] != a1)
  {
    v5 = [v1 arrangedSubviews];
    type metadata accessor for UIView();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized Array.count.getter();
    if (v7)
    {
      v8 = v7;
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v8; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB22010](i, v6);
        }

        else
        {
          v10 = *(v6 + 8 * i + 32);
        }

        v11 = v10;
        ObjectType = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v11, ObjectType, &protocol descriptor for Control))
        {
          v14 = v13;
          v15 = swift_getObjectType();
          (*(v14 + 16))(v15, v14, *&v2[v4]);
        }

        else
        {
          [v11 setAlpha_];
        }
      }
    }
  }
}

double ConversationHUDControlsButtonShelfView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

void ConversationHUDControlsButtonShelfView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  ConversationHUDControlsButtonShelfView.cnkContentAlpha.didset(v4);
}

void (*ConversationHUDControlsButtonShelfView.cnkContentAlpha.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha;
  swift_beginAccess();
  v3[3] = *(v1 + v4);
  return ConversationHUDControlsButtonShelfView.cnkContentAlpha.modify;
}

void ConversationHUDControlsButtonShelfView.cnkContentAlpha.modify(uint64_t a1)
{
  v1 = *a1;
  ConversationHUDControlsButtonShelfView.cnkContentAlpha.setter(*(*a1 + 24));

  free(v1);
}

id ConversationHUDControlsButtonShelfView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDControlsButtonShelfView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ConversationHUDControlsButtonShelfView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationHUDControlsButtonShelfView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConversationHUDControlsButtonShelfView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ConversationHUDControlsButtonShelfView.Configuration.spacing.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t static ConversationHUDControlsButtonShelfView.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ConversationHUDControlsButtonShelfView.Configuration.init(axis:alignment:distribution:spacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

double static ConversationHUDControlsButtonShelfView.Configuration.default.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&result = 3;
  *(a1 + 16) = xmmword_1BC4B6480;
  *(a1 + 32) = 1;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ConversationHUDControlsButtonShelfView.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConversationHUDControlsButtonShelfView.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

BOOL ConversationControlsType.isPendingAuthorizationRequest.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v10[0]);
  v8 = v11;
  if (v11)
  {
    outlined destroy of ConversationControlsType(v10);
  }

  return v8 == 0;
}

uint64_t ConversationControlsType.isShareNameAndPhoto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v22[0]);
  if (v24 == 7)
  {
    v16 = OUTLINED_FUNCTION_33_21(v8, v9, v10, v11, v12, v13, v14, v15, v22[0], v22[1], v22[2], v23);
    OUTLINED_FUNCTION_11_49(v16, v17);
    if (v19 == 12 && v18 == 0)
    {
      return 1;
    }
  }

  outlined destroy of ConversationControlsType(v22);
  return 0;
}

uint64_t ForegroundApp.AutomaticShareState.shortTitle.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = [objc_opt_self() conversationKit];
  if (v1 == 1)
  {
    v3 = 0x7478654E206B7341;
    v4 = 0x656D695420;
  }

  else
  {
    v3 = 0x6974616D6F747541;
    v4 = 0x796C6C6163;
  }

  OUTLINED_FUNCTION_68(v3, v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);

  return OUTLINED_FUNCTION_15_14();
}

uint64_t ForegroundApp.AutomaticShareState.title.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v2, v1 | 0x8000000000000000, v3, v4);

  return OUTLINED_FUNCTION_15_14();
}

Class static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6_7();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);

  v6._countAndFlagsBits = OUTLINED_FUNCTION_38_2();
  v7.super.isa = NSAttributedString.__allocating_init(string:)(v6).super.isa;
  if (a3)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v9 = a3;
    v10 = [v8 init];
    v11 = [objc_opt_self() textAttachmentWithImage_];
    v12 = v11;
    if ((*(a4 + 32) & 1) == 0)
    {
      [v11 setBounds_];
    }

    type metadata accessor for AppUtilities();
    if (static AppUtilities.isRTL.getter())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      isa = NSAttributedString.__allocating_init(string:)(v13).super.isa;
      v15 = OUTLINED_FUNCTION_52_11();
      [v15 v16];

      v17 = [objc_opt_self() attributedStringWithAttachment_];
      v18 = OUTLINED_FUNCTION_52_11();
      [v18 v19];

      v20 = [(objc_class *)v7.super.isa length];
    }

    else
    {
      v21 = [objc_opt_self() attributedStringWithAttachment_];
      [v10 appendAttributedString_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      v23 = NSAttributedString.__allocating_init(string:)(v22).super.isa;
      v24 = OUTLINED_FUNCTION_52_11();
      [v24 v25];

      v20 = 0;
    }

    [(objc_class *)v7.super.isa insertAttributedString:v10 atIndex:v20];
  }

  return v7.super.isa;
}

Swift::Bool __swiftcall LSPropertyList.contains(entitlement:)(Swift::String entitlement)
{
  v2 = MEMORY[0x1BFB209B0](entitlement._countAndFlagsBits, entitlement._object);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    outlined destroy of CallControlsService?(v9, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v6 BOOLValue];

  return v4;
}

uint64_t String.localizedConversationControls.getter()
{
  OUTLINED_FUNCTION_6_7();
  v0 = [objc_opt_self() conversationKit];
  v1 = OUTLINED_FUNCTION_38_2();
  v2 = MEMORY[0x1BFB209B0](v1);
  v3 = MEMORY[0x1BFB209B0](0, 0xE000000000000000);
  v4 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC4FEB70);
  v5 = [v0 localizedStringForKey:v2 value:v3 table:v4];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return OUTLINED_FUNCTION_46();
}

uint64_t static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeO_ACtMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeO_ACtMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - v4);
  v7 = *(v6 + 56);
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_46();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_25_25();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v5 + v7, v9);
        v10 = OUTLINED_FUNCTION_46();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v10, v11);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_25_25();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v5, v16);
      v14 = OUTLINED_FUNCTION_22_28();
      goto LABEL_24;
    case 2u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 3u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 4u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 5u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    case 6u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 7u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 8u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 9u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0xAu:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0xBu:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0xCu:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_23;
      }

LABEL_21:
      v12 = 1;
      break;
    default:
      v8 = *v5;
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_23:
        OUTLINED_FUNCTION_26_23();
        v14 = v5 + v7;
LABEL_24:
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v14, v13);
        v12 = 0;
      }

      else
      {
        v17 = *(v5 + v7);
        v12 = [v8 isEqual_];
      }

      break;
  }

  return v12;
}

BOOL ConversationControlsSecondaryPillButtonType.isSNaP.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_13_41();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v2 = swift_getEnumCaseMultiPayload() - 9;
  if (v2 >= 3)
  {
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v0, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  }

  return v2 < 3;
}

uint64_t ConversationControlsSecondaryPillButtonType.isScreenSharing.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_13_41();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = 1;
  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_4;
  }

  if (EnumCaseMultiPayload != 12)
  {
    v3 = 0;
LABEL_4:
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v0, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  }

  return v3;
}

uint64_t ConversationControlsContext.debugDescription.getter(char a1)
{
  if (!a1)
  {
    return 0x70416D6574737973;
  }

  if (a1 == 1)
  {
    return 0x72656E6E6162;
  }

  return 0x6C6C61436E69;
}

uint64_t ConversationControlsSizeClass.description.getter(uint64_t a1)
{
  result = 4478280;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = 0x656369746F6ELL;
      break;
    case 3:
      result = 0x676F6C616964;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t ConversationControlsSizeClass.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationControlsSizeClass@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ConversationControlsSizeClass.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int RejectedRemoteControlRequesetContext.Reason.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

unint64_t HUDInfoButtonType.debugDescription.getter()
{
  v1 = 1701736302;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

Swift::Int HUDInfoButtonType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

Swift::Double __swiftcall ConversationControlsType.dismissTimerDuration(inCallControls:)(Swift::Bool inCallControls)
{
  outlined init with copy of ConversationControlsType(v1, &v23);
  switch(v27)
  {
    case 1:
      outlined init with take of TapInteractionHandler(&v23, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      v15 = OUTLINED_FUNCTION_44_0();
      v13 = v16(v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v13;
    case 2:
      outlined destroy of ConversationControlsType(&v23);
      goto LABEL_34;
    case 3:
    case 6:
      outlined destroy of ConversationControlsType(&v23);
      goto LABEL_3;
    case 4:
      outlined destroy of ConversationControlsType(&v23);
      goto LABEL_7;
    case 5:
      goto LABEL_7;
    case 7:
      if (!(v25 | v26 | v23 | v24 | *(&v23 + 1)))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_49_12();
      if (v3 && v8 == 0)
      {
        goto LABEL_3;
      }

      if (v7 == 2 && v8 == 0)
      {
        goto LABEL_7;
      }

      if (v7 == 3 && !v8)
      {
        goto LABEL_3;
      }

      if (v7 == 4 && !v8 || (v7 - 5) <= 3 && !v8)
      {
        goto LABEL_7;
      }

      if (v7 == 9 && !v8)
      {
        goto LABEL_3;
      }

      if (v7 == 10 && !v8)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_0_1();
        (*(v11 + 1008))();
        return v5;
      }

      if (v7 == 11 && !v8)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_63_7();
      if (v3 && !v18)
      {
        goto LABEL_45;
      }

      v21 = v19 == 16 || v19 == 14;
      if (v21 && !v18 || v17 == 18 && !v18)
      {
        goto LABEL_7;
      }

      if (v17 == 19 && !v18)
      {
LABEL_45:
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_0_1();
        (*(v20 + 984))();
        return v5;
      }

      if (v19 == 20 && !v18)
      {
        goto LABEL_7;
      }

      if (v17 == 22 && !v18)
      {
        goto LABEL_62;
      }

      if ((v17 - 23) <= 1 && !v18)
      {
        goto LABEL_7;
      }

      if ((v17 - 25) > 1 || v18)
      {
        if (v17 == 27 && !v18 || v17 != 28 || v18)
        {
LABEL_7:
          v3 = one-time initialization token for shared == -1;
          goto LABEL_8;
        }

LABEL_62:
        if (one-time initialization token for shared != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_5;
      }

LABEL_3:
      v3 = one-time initialization token for shared == -1;
      if (inCallControls)
      {
        if (one-time initialization token for shared != -1)
        {
LABEL_63:
          OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
        }

LABEL_5:
        OUTLINED_FUNCTION_0_1();
        (*(v4 + 960))();
        return v5;
      }

LABEL_8:
      if (!v3)
      {
        OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_0_1();
      (*(v6 + 952))();
      return v5;
    default:
LABEL_34:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_0_1();
      return (*(v12 + 968))();
  }
}

uint64_t ConversationControlsType.isInterruptable.getter()
{
  outlined init with copy of ConversationControlsType(v0, &v36);
  v1 = v41;
  outlined destroy of ConversationControlsType(&v36);
  if (v1 == 6 || (OUTLINED_FUNCTION_14_3(), v10 = OUTLINED_FUNCTION_38_15(v2, v3, v4, v5, v6, v7, v8, v9, v36, v37, v38, v39, v40, v41), OUTLINED_FUNCTION_56_8(v10, v11, v12, v13, v14, v15, v16, v17, v36), (v1 & 1) != 0))
  {
    v18 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_14_3();
    v27 = OUTLINED_FUNCTION_38_15(v19, v20, v21, v22, v23, v24, v25, v26, v36, v37, v38, v39, v40, v41);
    OUTLINED_FUNCTION_56_8(v27, v28, v29, v30, v31, v32, v33, v34, v36);
    v18 = v1 ^ 1;
  }

  return v18 & 1;
}

uint64_t ConversationControlsType.exclusiveSizeClass.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v18[0]);
  result = 0;
  switch(v19)
  {
    case 1:
    case 2:
    case 3:
      outlined destroy of ConversationControlsType(v18);
      return 0;
    case 4:
    case 6:
      outlined destroy of ConversationControlsType(v18);
      return 0;
    case 5:
      return result;
    case 7:
      OUTLINED_FUNCTION_17_38();
      if (!v9)
      {
        return 0;
      }

      OUTLINED_FUNCTION_49_12();
      v12 = v12 && v11 == 0;
      if (v12)
      {
        return 0;
      }

      v13 = v10 == 2 && v11 == 0;
      if (v13 || v10 == 3 && !v11 || v10 == 4 && !v11)
      {
        return 0;
      }

      if ((v10 - 5) <= 4 && !v11)
      {
        return 0;
      }

      v14 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 0xA && !v11)
      {
        return 3;
      }

      if (v14 == 12 && !v11)
      {
        return 0;
      }

      v16 = v10 == 18 || v14 == 16 || v14 == 14;
      if (v16 && !v11)
      {
        return 0;
      }

      if (v10 == 19 && !v11)
      {
        return 0;
      }

      v17 = v10 == 24 || (v10 & 0xFFFFFFFFFFFFFFFCLL) == 20;
      if (v17 && !v11 || (v10 - 25) > 1 || v11)
      {
        return 0;
      }

      else
      {
        return 3;
      }

    default:
      return 0;
  }
}

void ConversationControlsType.canShowOverICS.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemUpdateNoticeVSgMd, &_s15ConversationKit18SystemUpdateNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23[-v5];
  updated = type metadata accessor for SystemUpdateNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for SessionActionNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = OUTLINED_FUNCTION_79_0();
  type metadata accessor for AccountUpdateNotice(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  outlined init with copy of ConversationControlsType(v1, &v25);
  switch(v28)
  {
    case 1:
      outlined init with take of TapInteractionHandler(&v25, v24);
      outlined init with copy of IDSLookupManager(v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v24);
        v14 = OUTLINED_FUNCTION_23_29();
LABEL_15:
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v14, v15);
        goto LABEL_44;
      }

      outlined init with copy of IDSLookupManager(v24, v23);
      OUTLINED_FUNCTION_52_11();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_28_24();
        v14 = v2;
        goto LABEL_15;
      }

      outlined init with copy of IDSLookupManager(v24, v23);
      if (OUTLINED_FUNCTION_57_7(v6, v23))
      {
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v19, v20, v21, updated);
        OUTLINED_FUNCTION_27_22();
        outlined init with take of SystemUpdateNotice();
        if (!*(v0 + 16))
        {
          OUTLINED_FUNCTION_30_16();
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_31_19();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v24);
        __swift_storeEnumTagSinglePayload(v6, 1, 1, updated);
        outlined destroy of CallControlsService?(v6, &_s15ConversationKit18SystemUpdateNoticeVSgMd, &_s15ConversationKit18SystemUpdateNoticeVSgMR);
      }

LABEL_44:
      OUTLINED_FUNCTION_30_0();
      return;
    case 3:
    case 4:
      outlined destroy of ConversationControlsType(&v25);
      goto LABEL_44;
    case 5:
      goto LABEL_44;
    case 6:
      outlined destroy of ConversationControlsType(&v25);
      Features.callManagerEnabled.getter();
      goto LABEL_44;
    case 7:
      OUTLINED_FUNCTION_11_49(v27, v26);
      if (v12 == 4 && !v13)
      {
        goto LABEL_44;
      }

      if ((v12 & 0xFFFFFFFFFFFFFFFDLL) == 5 && !v13)
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_63_7();
      if (v22 && !v17)
      {
        goto LABEL_20;
      }

      v22 = v18 == 16 || v16 == 18;
      if (!v22 || v17)
      {
        if (v16 == 19 && !v17)
        {
LABEL_20:
          Features.isNameAndPhotoC3Enabled.getter();
        }

        else if (v16 == 21 && !v17)
        {
LABEL_9:
          Features.shouldShowFullScreenCallWaiting.getter();
        }

        else if (((v16 - 23) > 1 || v17) && ((v16 - 25) > 1 || v17) && (v16 != 27 || v17) && (v16 != 31 || v17))
        {
          goto LABEL_43;
        }
      }

      goto LABEL_44;
    default:
LABEL_43:
      outlined destroy of ConversationControlsType(&v25);
      goto LABEL_44;
  }
}

uint64_t ConversationControlsType.canShowOverICSAndInCallControls.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemUpdateNoticeVSgMd, &_s15ConversationKit18SystemUpdateNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-v5];
  updated = type metadata accessor for SystemUpdateNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for SessionActionNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = OUTLINED_FUNCTION_79_0();
  type metadata accessor for AccountUpdateNotice(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  outlined init with copy of ConversationControlsType(v1, v22);
  if (v23 == 1)
  {
    outlined init with take of TapInteractionHandler(v22, v21);
    outlined init with copy of IDSLookupManager(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
      v12 = OUTLINED_FUNCTION_23_29();
LABEL_7:
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v12, v13);
      v15 = 0;
      return v15 & 1;
    }

    outlined init with copy of IDSLookupManager(v21, v20);
    OUTLINED_FUNCTION_52_11();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_28_24();
      v12 = v2;
      goto LABEL_7;
    }

    outlined init with copy of IDSLookupManager(v21, v20);
    if (OUTLINED_FUNCTION_57_7(v6, v20))
    {
      v15 = 1;
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, updated);
      OUTLINED_FUNCTION_27_22();
      outlined init with take of SystemUpdateNotice();
      if (!*(v0 + 16))
      {
        OUTLINED_FUNCTION_30_16();
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_31_19();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
      v15 = 1;
      __swift_storeEnumTagSinglePayload(v6, 1, 1, updated);
      outlined destroy of CallControlsService?(v6, &_s15ConversationKit18SystemUpdateNoticeVSgMd, &_s15ConversationKit18SystemUpdateNoticeVSgMR);
    }
  }

  else
  {
    ConversationControlsType.canShowOverICS.getter();
    v15 = v14;
    outlined destroy of ConversationControlsType(v22);
  }

  return v15 & 1;
}