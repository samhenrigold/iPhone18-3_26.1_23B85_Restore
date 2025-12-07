id PersonalNicknameMenuView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void specialized PersonalNicknameMenuView.getPersonalNickname(completion:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = objc_opt_self();
  v5 = a2;
  v6 = [v4 sharedController];
  v7 = MEMORY[0x1BFB209B0](0xD000000000000018, 0x80000001BC4D9110);
  v8 = [v6 hasListenerForID_];

  if ((v8 & 1) == 0)
  {
    v9 = [v4 sharedController];
    v10 = MEMORY[0x1BFB209B0](0xD000000000000018, 0x80000001BC4D9110);
    [v9 addListenerID:v10 capabilities:*MEMORY[0x1E69A6250]];
  }

  v11 = objc_opt_self();
  v12 = [v11 sharedInstance];
  v13 = [v12 personalNickname];

  if (v13)
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.nickname);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v13;
      v20 = v15;
      _os_log_impl(&dword_1BBC58000, v16, v17, "Reading the personal nick name from cache %@", v18, 0xCu);
      outlined destroy of TapInteractionHandler?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1BFB23DF0](v19, -1, -1);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
    }

    v24 = v15;
    PersonalNicknameMenuView.personalNickname.setter(v13);
  }

  else
  {
    v21 = [v11 sharedInstance];
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for closure #1 in PersonalNicknameMenuView.setNickname();
    *(v22 + 24) = v3;
    aBlock[4] = partial apply for closure #1 in PersonalNicknameMenuView.getPersonalNickname(completion:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ();
    aBlock[3] = &block_descriptor_43_2;
    v23 = _Block_copy(aBlock);

    [v21 fetchPersonalNicknameWithCompletion_];
    _Block_release(v23);
  }
}

uint64_t closure #1 in PersonalNicknameMenuView.getPersonalNickname(completion:)(void *a1, uint64_t (*a2)(void *))
{
  if (one-time initialization token for nickname != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.nickname);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = a1;
    v10 = v5;
    _os_log_impl(&dword_1BBC58000, v6, v7, "Fetching the personal nick name: %@", v8, 0xCu);
    outlined destroy of TapInteractionHandler?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  return a2(a1);
}

void *PersonalNicknameNameProvider.personalNickname.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname);
  v2 = v1;
  return v1;
}

id PersonalNicknameNameProvider.__allocating_init(personalNickname:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonalNicknameNameProvider.init(personalNickname:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonalNicknameNameProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PersonalNicknameNameProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::String_optional __swiftcall PersonalNicknameNameProvider.givenName()()
{
  v0 = PersonalNicknameNameProvider.givenName()(&selRef_firstName);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonalNicknameNameProvider.familyName()()
{
  v0 = PersonalNicknameNameProvider.givenName()(&selRef_lastName);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t PersonalNicknameNameProvider.givenName()(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname))
  {
    v2 = [*(v1 + OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname) *a1];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_46();
}

id @objc PersonalNicknameNameProvider.givenName()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x1BFB209B0](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t PersonalNicknameAvatarProvider.imageData.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_46();
}

id PersonalNicknameAvatarProvider.init(imageData:wallpaperFilePath:nameString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_wallpaperFilePath];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_nameString];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for PersonalNicknameAvatarProvider();
  return objc_msgSendSuper2(&v11, sel_init);
}

id PersonalNicknameMenuView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized PersonalNicknameAvatarProvider.generateAvatarImage(of:imageHandler:)(uint64_t a1, void (**a2)(void, void, void), double a3, double a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a3 == 0.0 && (*&a4 & 0x7FF0000000000000) == 0;
  if (v8 && (*&a4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v7 = 100.0;
    v6 = 100.0;
  }

  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = (a1 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData);
  v13 = *(a1 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData + 8);
  if (v13 >> 60 == 15 || (v14 = *v12, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8), outlined copy of Data._Representation(v14, v13), (v15 = UIImage.__allocating_init(data:scale:)(v14, v13, v11)) == 0))
  {
    v17 = 0;
    v16 = 0;
  }

  else
  {
    v16 = v15;
    v19.width = v7;
    v19.height = v6;
    UIGraphicsBeginImageContextWithOptions(v19, 0, v11);
    [v16 drawInRect_];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  (a2)[2](a2, v17, 0);

  _Block_release(a2);
}

void PersonalNicknameAvatarProvider.generateAvatarImage(of:imageHandler:)(void (*a1)(void), double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a2 == 0.0 && (*&a3 & 0x7FF0000000000000) == 0;
  if (v7 && (*&a3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 100.0;
    v5 = 100.0;
  }

  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = (v3 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData);
  v12 = *(v3 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_imageData + 8);
  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v14 = *v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    outlined copy of Data._Representation(v14, v12);
    v13 = UIImage.__allocating_init(data:scale:)(v14, v12, v10);
    if (v13)
    {
      v15 = v13;
      v19.width = v6;
      v19.height = v5;
      UIGraphicsBeginImageContextWithOptions(v19, 0, v10);
      [v15 drawInRect_];
      v16 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();

      v13 = v16;
      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_13:
  v17 = v13;
  a1();
}

uint64_t PersonalNicknameAvatarProvider.generatePosterImage(handler:)(void (*a1)(void, void *), uint64_t a2)
{
  v79 = a2;
  v86[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for URL.DirectoryHint();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v75 - v11;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v75 - v18;
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_wallpaperFilePath + 8))
  {
    v76 = v17;
    v77 = a1;
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
    (*(v6 + 104))(v9, *MEMORY[0x1E6968F70], v4);

    OUTLINED_FUNCTION_2_125();
    URL.init(filePath:directoryHint:relativeTo:)();
    v78 = v19;
    v29 = Data.init(contentsOf:options:)();
    v31 = v30;
    v32 = objc_opt_self();
    OUTLINED_FUNCTION_2_125();
    isa = Data._bridgeToObjectiveC()().super.isa;
    aBlock = 0;
    v34 = [v32 unarchiveConfigurationFromData:isa error:&aBlock];

    v35 = aBlock;
    v36 = v14;
    if (v34)
    {
      v37 = v2 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_nameString;
      v38 = *(v2 + OBJC_IVAR____TtC15ConversationKit30PersonalNicknameAvatarProvider_nameString);
      v39 = *(v37 + 8);
      objc_allocWithZone(MEMORY[0x1E69D89C8]);

      v40 = v35;
      v41 = v34;
      v43 = @nonobjc TPInComingCallUISnapshotViewController.init(configuration:style:nameString:)(v34, 3, v38, v39, v42);
      v44 = swift_allocObject();
      v45 = v79;
      *(v44 + 16) = v77;
      *(v44 + 24) = v45;
      v84 = partial apply for closure #1 in PersonalNicknameAvatarProvider.generatePosterImage(handler:);
      v85 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
      v83 = &block_descriptor_68;
      v46 = _Block_copy(&aBlock);

      [v43 snapshotWithOptions:0 completionBlock:v46];
      _Block_release(v46);
    }

    else
    {
      v47 = aBlock;
      v48 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for nickname != -1)
      {
        OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, &static Logger.nickname);
      v50 = OUTLINED_FUNCTION_2_125();
      outlined copy of Data._Representation(v50, v51);
      v52 = v48;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      v55 = OUTLINED_FUNCTION_2_125();
      outlined consume of Data._Representation(v55, v56);

      if (os_log_type_enabled(v53, v54))
      {
        v57 = swift_slowAlloc();
        v86[0] = swift_slowAlloc();
        *v57 = 136315394;
        aBlock = v29;
        v81 = v31;
        v58 = OUTLINED_FUNCTION_2_125();
        outlined copy of Data._Representation(v58, v59);
        v60 = String.init<A>(reflecting:)();
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v86);

        *(v57 + 4) = v62;
        *(v57 + 12) = 2080;
        aBlock = v48;
        v63 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v64 = String.init<A>(reflecting:)();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v86);

        *(v57 + 14) = v66;
        OUTLINED_FUNCTION_219();
        _os_log_impl(v67, v68, v69, v70, v71, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      v72 = v48;
      v77(0, v48);
    }

    v73 = OUTLINED_FUNCTION_2_125();
    outlined consume of Data._Representation(v73, v74);
    return (*(v36 + 8))(v78, v76);
  }

  else
  {
    if (one-time initialization token for nickname != -1)
    {
      OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, &static Logger.nickname);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_27();
    }

    return (a1)(0, 0);
  }
}

uint64_t closure #1 in PersonalNicknameAvatarProvider.generatePosterImage(handler:)(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, id))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.nickname);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Could not snapshot TPInComingCallUISnapshotViewController with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    else
    {
    }
  }

  return a3(a1, a2);
}

id @nonobjc TPInComingCallUISnapshotViewController.init(configuration:style:nameString:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a4)
  {
    v9 = MEMORY[0x1BFB209B0](a3, a4, a5);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithConfiguration:a1 style:a2 nameString:v9];

  return v10;
}

unint64_t lazy protocol witness table accessor for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext()
{
  result = lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext;
  if (!lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalNicknameMenuViewDisplayContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

void specialized MutableCollection<>.sort(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), void (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = OUTLINED_FUNCTION_17_1();
  v7 = *(type metadata accessor for Participant(v6) - 8);
  v8 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v8 = v9;
  }

  v10 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v10;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, a2, a3);
  *v3 = v8;
}

void Array<A>.screenSharingParticipant.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v31 = v2;
  v33 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Participant(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_4();
  v30 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = 0;
  v13 = *(v1 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  while (v13 != v12)
  {
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v16, v11, v17);
    _s15ConversationKit11ParticipantVWOcTm_6(v11, v5, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v19 = v1;
      v20 = *(v18 + 48);
      v21 = &v5[*(v18 + 64)];
      outlined consume of Participant.CopresenceInfo?(*v21, v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7]);
      v22 = &v5[v20];
      v1 = v19;
      memcpy(v34, v22, sizeof(v34));
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v23 + 8))(v5);
      outlined init with copy of Participant.ScreenInfo?(&v34[12], v35);
      outlined destroy of Participant.MediaInfo(v34);
      if (v36 == 1)
      {
        goto LABEL_11;
      }

      outlined destroy of Participant.ScreenInfo?(v35);
      outlined init with take of Participant(v11, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v32;
      v38 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v1 = v19;
        v25 = v38;
      }

      v26 = *(v25 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v25 + 24) >> 1)
      {
        v32 = v26 + 1;
        v29 = v26;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v27 = v32;
        v26 = v29;
        v1 = v19;
        v25 = v38;
      }

      ++v12;
      *(v25 + 16) = v27;
      v32 = v25;
      outlined init with take of Participant(v30, v25 + v14 + v26 * v15);
    }

    else
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v35, 0, sizeof(v35));
      v36 = 1;
      bzero(&v37, 0xB1uLL);
LABEL_11:
      outlined destroy of Participant.ScreenInfo?(v35);
      OUTLINED_FUNCTION_0_161();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      ++v12;
    }
  }

  v34[0] = v32;

  specialized MutableCollection<>.sort(by:)(v34, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  specialized Collection.first.getter(v34[0], v31);

  OUTLINED_FUNCTION_30_0();
}

void Array<A>.arrayCloselyMatching(_:)()
{
  OUTLINED_FUNCTION_29();
  v35 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v31 - v13;
  v44 = v14;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v48 = _ArrayProtocol.filter(_:)();
  v44 = v6;
  v37 = v2;
  v38 = v35;
  v39 = v4;

  v47 = _ArrayProtocol.filter(_:)();
  v46[1] = static Array._allocateUninitialized(_:)();
  OUTLINED_FUNCTION_249();
  v18 = Array.startIndex.getter();
  v46[0] = v18;
  v19 = OUTLINED_FUNCTION_249();
  if (v18 == MEMORY[0x1BFB20DE0](v19))
  {
LABEL_16:
    static Array.+ infix(_:_:)();

    static Array.+= infix(_:_:)();

    OUTLINED_FUNCTION_30_0();
    return;
  }

  v31 = v8;
  v36 = (v7 + 2);
  v33 = (v7 + 4);
  v20 = (v7 + 1);
  while (1)
  {
    OUTLINED_FUNCTION_249();
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    OUTLINED_FUNCTION_40_3();
    v23 = v7[2];
    v24 = v34;
    v23(v34, (v4 + v22 + v7[9] * v18), v2);
LABEL_5:
    Array.formIndex(after:)(v46);
    (*v33)(v11, v24, v2);
    v25 = v47;
    v43 = v47;
    OUTLINED_FUNCTION_4_99();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    if (v45)
    {
      v44 = v48;
      if ((Collection.isEmpty.getter() & 1) == 0 || (v44 = v25, (Collection.isEmpty.getter() & 1) == 0))
      {
        OUTLINED_FUNCTION_6_89();
        RangeReplaceableCollection.removeFirst()();
        Array.append(_:)();
      }

      (*v20)(v11, v2);
    }

    else
    {
      v26 = v32;
      v23(v32, v11, v2);
      Array.append(_:)();
      Array.remove(at:)();
      v27 = *v20;
      (*v20)(v26, v2);
      v27(v11, v2);
    }

    v28 = OUTLINED_FUNCTION_249();
    v29 = MEMORY[0x1BFB20DE0](v28);
    v18 = v46[0];
    if (v46[0] == v29)
    {
      goto LABEL_16;
    }
  }

  v30 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v31 == 8)
  {
    v44 = v30;
    v23 = *v36;
    v24 = v34;
    (*v36)(v34, &v44, v2);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void Array<A>.sortToMatch(_:)()
{
  OUTLINED_FUNCTION_29();
  v31 = v0;
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v28 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v24 - v16);
  v35 = v5;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB20C00](&v32, v3, WitnessTable);
  v34 = v32;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v30 = v3;
  v19 = v6;
  v27 = type metadata accessor for EnumeratedSequence.Iterator();
  v25 = (v7 + 32);
  while (1)
  {
    v20 = v28;
    EnumeratedSequence.Iterator.next()();
    (*(v12 + 32))(v17, v20, v29);
    if (__swift_getEnumTagSinglePayload(v17, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v21 = *v17;
    (*v25)(v9, v17 + *(TupleTypeMetadata2 + 48), v19);
    v22 = *v31;
    v34 = *v31;
    OUTLINED_FUNCTION_4_99();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    if (v33 != 1)
    {
      v23 = v32;
      if (v21 < MEMORY[0x1BFB20DB0](v22, v19))
      {
        v32 = v21;
        v34 = v23;
        swift_getWitnessTable();
        MutableCollection.swapAt(_:_:)();
      }
    }

    (*(v7 + 8))(v9, v19);
  }

  OUTLINED_FUNCTION_30_0();
}

void Array<A>.filterAndSortForInCallControls()()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for Participant(v1);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = 0;
  v12 = *(v0 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  while (v12 != v11)
  {
    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = *(v4 + 72);
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v16, v10, v17);
    if (*&v10[*(v2 + 28)])
    {
      outlined init with take of Participant(v10, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v13;
      v25 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_3_115();
        v13 = v26;
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_10_69(v19);
        v24 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v24;
        v13 = v26;
      }

      ++v11;
      *(v13 + 16) = v21;
      v22 = v13 + v14 + v20 * v15;
      v7 = v25;
      outlined init with take of Participant(v25, v22);
    }

    else
    {
      OUTLINED_FUNCTION_0_161();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      ++v11;
    }
  }

  v26 = v13;

  specialized MutableCollection<>.sort(by:)(&v26, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  OUTLINED_FUNCTION_30_0();
}

BOOL closure #1 in Array<A>.arrayCloselyMatching(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Sequence<>.contains(_:)() & 1) == 0;
}

uint64_t closure #2 in Array<A>.arrayCloselyMatching(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence<>.contains(_:)() & 1;
}

__n64 Array<A>.union()(__n64 *a1)
{
  v1 = a1[2].n64_u64[0];
  if (v1)
  {
    v2 = a1 + 7;
    v3 = a1[7].n64_u64[0];
    result.n64_u64[0] = a1[4].n64_u64[0];
    v5 = a1[5].n64_u64[0];
    v6 = a1[6].n64_u64[0];
    do
    {
      *result.n64_u64 = CGRectUnion(*result.n64_u64, *v2[-3].n64_u64);
      v2 += 4;
      --v1;
    }

    while (v1);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in Array<A>.sortForInCallControls()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  _s15ConversationKit11ParticipantVWOcTm_6(a1, &v43 - v14, type metadata accessor for Participant.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v29 = *(v28 + 48);
      v30 = &v15[*(v28 + 64)];
      outlined consume of Participant.CopresenceInfo?(*v30, v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7]);
      outlined destroy of Participant.MediaInfo(&v15[v29]);
      v31 = type metadata accessor for Date();
      v32 = *(v31 - 8);
      v33 = *(v32 + 8);
      v43 = v32 + 8;
      v44 = v33;
      v33(v15, v31);
      _s15ConversationKit11ParticipantVWOcTm_6(a2, v12, type metadata accessor for Participant.State);
      v26 = 1;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v41 = *(v28 + 48);
          v42 = &v12[*(v28 + 64)];
          outlined consume of Participant.CopresenceInfo?(*v42, v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7]);
          outlined destroy of Participant.MediaInfo(&v12[v41]);
          v44(v12, v31);
          goto LABEL_3;
        case 6u:
          return v26 & 1;
        default:
          v44(v12, v31);
          break;
      }

      break;
    case 6u:
      goto LABEL_3;
    default:
      v16 = type metadata accessor for Date();
      (*(*(v16 - 8) + 8))(v15, v16);
LABEL_3:
      _s15ConversationKit11ParticipantVWOcTm_6(a1, v9, type metadata accessor for Participant.State);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v35 = *(v34 + 48);
          v36 = &v9[*(v34 + 64)];
          outlined consume of Participant.CopresenceInfo?(*v36, v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7]);
          outlined destroy of Participant.MediaInfo(&v9[v35]);
          v6 = v9;
LABEL_6:
          v18 = type metadata accessor for Date();
          (*(*(v18 - 8) + 8))(v6, v18);
LABEL_7:
          Participant.contactDetails.getter();
          v20 = v48;
          v19 = v49;
          v21 = v50;

          Participant.contactDetails.getter();
          v23 = v45;
          v22 = v46;
          v24 = v47;

          if (v22 == v19 && v24 == v21)
          {
            v26 = 0;
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          break;
        case 6u:
          goto LABEL_5;
        default:
          v17 = type metadata accessor for Date();
          (*(*(v17 - 8) + 8))(v9, v17);
LABEL_5:
          _s15ConversationKit11ParticipantVWOcTm_6(a2, v6, type metadata accessor for Participant.State);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 4u:
              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
              v38 = *(v37 + 48);
              v39 = &v6[*(v37 + 64)];
              outlined consume of Participant.CopresenceInfo?(*v39, v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7]);
              outlined destroy of Participant.MediaInfo(&v6[v38]);
              v40 = type metadata accessor for Date();
              (*(*(v40 - 8) + 8))(v6, v40);
              v26 = 0;
              break;
            case 6u:
              goto LABEL_7;
            default:
              goto LABEL_6;
          }

          break;
      }

      break;
  }

  return v26 & 1;
}

void Array<A>.participants(notIn:)()
{
  OUTLINED_FUNCTION_29();
  v48 = v1;
  v2 = OUTLINED_FUNCTION_17_1();
  v53 = type metadata accessor for Participant(v2);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v49 = v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v46 - v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v46 - v10;
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = *(v0 + 16);
  v46 = v4;
  if (v20)
  {
    v57 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v21 = v57;
    OUTLINED_FUNCTION_40_3();
    v23 = v0 + v22;
    v54 = *(v4 + 72);
    v52 = v13 + 32;
    do
    {
      OUTLINED_FUNCTION_7_5();
      v24 = v55;
      _s15ConversationKit11ParticipantVWOcTm_6(v23, v55, v25);
      (*(v13 + 16))(v19, v24 + *(v53 + 20), v11);
      OUTLINED_FUNCTION_0_161();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      v57 = v21;
      v26 = v19;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_10_69(v27);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v57;
      }

      *(v21 + 16) = v28 + 1;
      OUTLINED_FUNCTION_40_3();
      (*(v13 + 32))(v21 + v29 + *(v13 + 72) * v28, v26, v11);
      v23 += v54;
      --v20;
      v19 = v26;
    }

    while (v20);
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5();
  v31 = v30;
  v32 = 0;
  v47 = *(v48 + 16);
  v33 = v30 + 56;
  v55 = v13 + 16;
  v50 = MEMORY[0x1E69E7CC0];
LABEL_7:
  while (v32 != v47)
  {
    v34 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v35 = *(v46 + 72);
    v54 = v32 + 1;
    v51 = v35;
    v52 = v34;
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_6(v36, v56, v37);
    if (*(v31 + 16))
    {
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
      v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v39 = ~(-1 << *(v31 + 32));
      while (1)
      {
        v40 = v38 & v39;
        if (((*(v33 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
        {
          break;
        }

        (*(v13 + 16))(v16, *(v31 + 48) + *(v13 + 72) * v40, v11);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v13 + 8))(v16, v11);
        v38 = v40 + 1;
        if (v41)
        {
          OUTLINED_FUNCTION_0_161();
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          v32 = v54;
          goto LABEL_7;
        }
      }
    }

    outlined init with take of Participant(v56, v49);
    v42 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_3_115();
      v42 = v57;
    }

    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    if (v45 >= v44 >> 1)
    {
      OUTLINED_FUNCTION_10_69(v44);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v57;
    }

    *(v42 + 16) = v45 + 1;
    v50 = v42;
    outlined init with take of Participant(v49, v42 + v52 + v45 * v51);
    v32 = v54;
  }

  OUTLINED_FUNCTION_30_0();
}

BOOL closure #2 in Array<A>.screenSharingParticipant.getter(uint64_t a1)
{
  if (Participant.screenState.getter() == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = Participant.isReceivingScreenFrames.getter();
  }

  if (Participant.screenState.getter() == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = Participant.isReceivingScreenFrames.getter();
  }

  return static Bool.< infix(_:_:)(v2 & 1, v1 & 1);
}

void Array<A>.sorted(byIdentifiers:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v70 = v3;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v72 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v69 - v10;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v74 = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v69 - v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  v21 = *(v2 + 16);
  v80 = v4;
  v75 = v22;
  v76 = v6;
  v71 = v2;
  if (v21)
  {
    OUTLINED_FUNCTION_40_3();
    v25 = v2 + v24;
    v78 = *(v26 + 72);
    v79 = v27;
    v81 = (v6 + 16);
    v28 = MEMORY[0x1E69E7CC8];
    v77 = (v6 + 8);
    while (1)
    {
      v82 = v23;
      OUTLINED_FUNCTION_5_107();
      _s15ConversationKit11ParticipantVWOcTm_6(v25, v20, v29);
      v30 = *v81;
      (*v81)(v83, &v20[v79], v4);
      v31 = v20;
      _s15ConversationKit11ParticipantVWOcTm_6(v20, v17, v0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v28;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)();
      v35 = *(v28 + 16);
      v36 = (v34 & 1) == 0;
      v0 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v17 = v33;
      v37 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit11ParticipantVGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit11ParticipantVGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v0))
      {
        v38 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_30;
        }

        v17 = v38;
      }

      v28 = v84;
      if (v37)
      {
        v40 = OUTLINED_FUNCTION_13_60();
        outlined assign with take of Participant(v40, v41);
        v4 = v80;
        (*v77)(v83, v80);
        OUTLINED_FUNCTION_0_161();
        v20 = v31;
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      }

      else
      {
        *(v84 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        v0 = v76;
        v42 = v83;
        v4 = v80;
        v30((*(v28 + 48) + *(v76 + 72) * v17), v83, v80);
        v43 = OUTLINED_FUNCTION_13_60();
        outlined init with take of Participant(v43, v44);
        (*(v0 + 8))(v42, v4);
        OUTLINED_FUNCTION_0_161();
        v20 = v31;
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        v45 = *(v28 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_29;
        }

        *(v28 + 16) = v47;
      }

      v25 += v30;
      v23 = v82 - 1;
      if (v82 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC8];
LABEL_14:
    v48 = *(v70 + 16);
    if (v48)
    {
      v49 = v76 + 16;
      v50 = *(v76 + 16);
      OUTLINED_FUNCTION_40_3();
      v53 = v52 + v51;
      v54 = *(v49 + 56);
      v55 = (v49 - 8);
      v56 = MEMORY[0x1E69E7CC0];
      v57 = v72;
      v76 = v49;
      v82 = v54;
      v83 = v50;
      do
      {
        (v50)(v57, v53, v4);
        if (*(v28 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v58 & 1) != 0))
        {
          v59 = *(v75 + 72);
          OUTLINED_FUNCTION_5_107();
          v60 = v73;
          _s15ConversationKit11ParticipantVWOcTm_6(v61, v73, v62);
          (*v55)(v57, v4);
          _s15ConversationKit11ParticipantVWOcTm_6(v60, v74, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v56 = v66;
          }

          v63 = *(v56 + 16);
          v54 = v82;
          if (v63 >= *(v56 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v56 = v67;
          }

          OUTLINED_FUNCTION_0_161();
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          *(v56 + 16) = v63 + 1;
          OUTLINED_FUNCTION_40_3();
          outlined init with take of Participant(v65, v56 + v64 + v63 * v59);
          v4 = v80;
          v49 = v76;
          v57 = v72;
          v50 = v83;
        }

        else
        {
          (*v55)(v57, v4);
        }

        v53 += v54;
        --v48;
      }

      while (v48);
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    Array<A>.participants(notIn:)();
    v84 = v56;
    specialized Array.append<A>(contentsOf:)(v68);
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t outlined destroy of Participant.ScreenInfo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Participant.ScreenInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v177 = a4;
  v181 = a1;
  v197 = type metadata accessor for PersonNameComponents();
  v7 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v199 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v193 = &v175 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v175 - v17;
  v214 = type metadata accessor for Participant(0);
  v192 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v182 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v203 = &v175 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v204 = &v175 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v206 = &v175 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v175 - v27;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v175 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v180 = &v175 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v179 = &v175 - v37;
  v194 = a3;
  v38 = a3[1];
  if (v38 >= 1)
  {
    v186 = v36;
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    v196 = (v7 + 8);
    v195 = v9;
    v198 = v11;
    v200 = v18;
    v205 = v28;
    v190 = v32;
    while (1)
    {
      v185 = v40;
      v191 = v39 + 1;
      if (v39 + 1 < v38)
      {
        v210 = v38;
        v41 = *v194;
        v42 = *(v192 + 72);
        v7 = *v194 + v42 * (v39 + 1);
        v43 = v179;
        _s15ConversationKit11ParticipantVWOcTm_6(v7, v179, type metadata accessor for Participant);
        v44 = v180;
        _s15ConversationKit11ParticipantVWOcTm_6(v41 + v42 * v39, v180, type metadata accessor for Participant);
        LODWORD(v209) = closure #1 in Array<A>.sortForInCallControls()(v43, v44);
        if (v5)
        {
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          goto LABEL_152;
        }

        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        v178 = v39;
        v45 = v39 + 2;
        v46 = v41 + v42 * (v39 + 2);
        v11 = v198;
        v47 = v191;
        v48 = v210;
        while (1)
        {
          v49 = v45;
          if (v47 + 1 >= v48)
          {
            break;
          }

          _s15ConversationKit11ParticipantVWOcTm_6(v46, v32, type metadata accessor for Participant);
          v50 = v186;
          _s15ConversationKit11ParticipantVWOcTm_6(v7, v186, type metadata accessor for Participant);
          v51 = closure #1 in Array<A>.sortForInCallControls()(v32, v50);
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          v32 = v190;
          _s15ConversationKit11ParticipantV5StateOWOhTm_0();
          v52 = v209 ^ v51;
          v46 += v42;
          v7 += v42;
          ++v47;
          v45 = v49 + 1;
          v11 = v198;
          v48 = v210;
          if (v52)
          {
            goto LABEL_10;
          }
        }

        v47 = v48;
LABEL_10:
        v191 = v47;
        if (v209)
        {
          v53 = v178;
          if (v47 < v178)
          {
            goto LABEL_178;
          }

          v54 = v47;
          if (v178 >= v47)
          {
            v18 = v200;
            v28 = v205;
            v39 = v178;
            goto LABEL_33;
          }

          if (v48 >= v49)
          {
            v55 = v49;
          }

          else
          {
            v55 = v48;
          }

          v56 = v42 * (v55 - 1);
          v57 = v42 * v55;
          v58 = v178 * v42;
          v18 = v200;
          do
          {
            if (v53 != --v54)
            {
              v59 = *v194;
              if (!*v194)
              {
                goto LABEL_182;
              }

              v7 = v59 + v58;
              outlined init with take of Participant(v59 + v58, v182);
              v60 = v58 < v56 || v7 >= v59 + v57;
              if (v60)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of Participant(v182, v59 + v56);
              v18 = v200;
            }

            ++v53;
            v56 -= v42;
            v57 -= v42;
            v58 += v42;
          }

          while (v53 < v54);
          v11 = v198;
        }

        else
        {
          v18 = v200;
        }

        v28 = v205;
        v39 = v178;
      }

LABEL_33:
      v61 = v194[1];
      v62 = v191;
      v63 = v206;
      if (v191 < v61)
      {
        if (__OFSUB__(v191, v39))
        {
          goto LABEL_174;
        }

        if (v191 - v39 < v177)
        {
          v64 = v39 + v177;
          if (!__OFADD__(v39, v177))
          {
            if (v64 >= v61)
            {
              v64 = v194[1];
            }

            if (v64 < v39)
            {
              goto LABEL_177;
            }

            if (v191 == v64)
            {
              goto LABEL_88;
            }

            v176 = v5;
            v65 = *v194;
            v66 = *(v192 + 72);
            v67 = *v194 + v66 * (v191 - 1);
            v201 = -v66;
            v178 = v39;
            v68 = v39 - v191;
            v202 = v65;
            v183 = v66;
            v69 = v65 + v191 * v66;
            v184 = v64;
LABEL_43:
            v191 = v62;
            v187 = v69;
            v188 = v68;
            v70 = v68;
            v189 = v67;
            while (2)
            {
              v210 = v70;
              _s15ConversationKit11ParticipantVWOcTm_6(v69, v28, type metadata accessor for Participant);
              _s15ConversationKit11ParticipantVWOcTm_6(v67, v63, type metadata accessor for Participant);
              _s15ConversationKit11ParticipantVWOcTm_6(v28, v18, type metadata accessor for Participant.State);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 4u:
                  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
                  v106 = *(v105 + 48);
                  v107 = &v18[*(v105 + 64)];
                  outlined consume of Participant.CopresenceInfo?(*v107, v107[1], v107[2], v107[3], v107[4], v107[5], v107[6], v107[7]);
                  outlined destroy of Participant.MediaInfo(&v18[v106]);
                  v108 = type metadata accessor for Date();
                  v109 = *(*(v108 - 8) + 8);
                  v109(v18, v108);
                  _s15ConversationKit11ParticipantVWOcTm_6(v63, v193, type metadata accessor for Participant.State);
                  switch(swift_getEnumCaseMultiPayload())
                  {
                    case 4u:
                      v114 = *(v105 + 48);
                      v115 = *(v105 + 64);
                      v116 = v193;
                      v117 = &v193[v115];
                      outlined consume of Participant.CopresenceInfo?(*v117, v117[1], v117[2], v117[3], v117[4], v117[5], v117[6], v117[7]);
                      outlined destroy of Participant.MediaInfo(v116 + v114);
                      v109(v116, v108);
                      v11 = v198;
                      v28 = v205;
                      v63 = v206;
                      goto LABEL_46;
                    case 6u:
                      goto LABEL_80;
                    default:
                      v109(v193, v108);
LABEL_80:
                      v63 = v206;
                      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                      v28 = v205;
                      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                      v11 = v198;
                      break;
                  }

                  goto LABEL_74;
                case 6u:
                  break;
                default:
                  v71 = type metadata accessor for Date();
                  (*(*(v71 - 8) + 8))(v18, v71);
                  break;
              }

LABEL_46:
              _s15ConversationKit11ParticipantVWOcTm_6(v28, v207, type metadata accessor for Participant.State);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 4u:
                  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
                  v111 = *(v110 + 48);
                  v112 = v207;
                  v113 = (v207 + *(v110 + 64));
                  outlined consume of Participant.CopresenceInfo?(*v113, v113[1], v113[2], v113[3], v113[4], v113[5], v113[6], v113[7]);
                  outlined destroy of Participant.MediaInfo(v112 + v111);
                  v73 = v112;
LABEL_49:
                  v74 = type metadata accessor for Date();
                  (*(*(v74 - 8) + 8))(v73, v74);
LABEL_50:
                  v75 = *&v28[*(v214 + 28)];
                  if (!v75)
                  {
                    goto LABEL_60;
                  }

                  v76 = v75;
                  v77 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v76);
                  if (v78)
                  {
                    v79 = v78;
                    v209 = v77;
                    if ([v76 shouldHideContact])
                    {
                      v208 = v79;
                      v80 = v199;
                      PersonNameComponents.init()();
                      PersonNameComponents.givenName.setter();
                      PersonNameComponents.familyName.setter();
                      if (one-time initialization token for initials != -1)
                      {
                        swift_once();
                      }

                      swift_beginAccess();
                      v81 = static NSPersonNameComponentsFormatter.initials;
                      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                      v83 = [v81 stringFromPersonNameComponents_];

                      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v86 = v85;

                      (*v196)(v80, v197);
                      v211 = v84;
                      v212 = v86;
                      lazy protocol witness table accessor for type String and conformance String();
                      StringProtocol.localizedUppercase.getter();

                      v63 = v206;
                      v87 = *&v206[*(v214 + 28)];
                      v18 = v200;
                      if (!v87)
                      {
                        goto LABEL_70;
                      }

LABEL_61:
                      v90 = v87;
                      v91 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v90);
                      if (v92)
                      {
                        v93 = v91;
                        v94 = v92;
                        if ([v90 shouldHideContact])
                        {
                          PersonNameComponents.init()();
                          PersonNameComponents.givenName.setter();
                          PersonNameComponents.familyName.setter();
                          if (one-time initialization token for initials != -1)
                          {
                            swift_once();
                          }

                          swift_beginAccess();
                          v95 = static NSPersonNameComponentsFormatter.initials;
                          v96 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                          v97 = [v95 stringFromPersonNameComponents_];

                          v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v100 = v99;

                          (*v196)(v199, v197);
                          v211 = v98;
                          v212 = v100;
                          lazy protocol witness table accessor for type String and conformance String();
                          StringProtocol.localizedUppercase.getter();

                          v101 = v208;
                          v11 = v198;
                          v18 = v200;
                          if (v93 != v209)
                          {
                            goto LABEL_73;
                          }

                          goto LABEL_72;
                        }
                      }

                      else
                      {
                      }

                      v18 = v200;
                      v63 = v206;
                      goto LABEL_70;
                    }
                  }

                  else
                  {
                  }

                  v28 = v205;
LABEL_60:
                  _s15ConversationKit11ParticipantVWOcTm_6(v28, v204, type metadata accessor for Participant);
                  v88 = v214;

                  ParticipantContactDetailsCache.contactDetails(for:)();

                  _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                  v89 = v211;
                  v208 = v213;
                  v209 = v212;

                  v87 = *(v63 + *(v88 + 28));
                  if (v87)
                  {
                    goto LABEL_61;
                  }

LABEL_70:
                  _s15ConversationKit11ParticipantVWOcTm_6(v63, v204, type metadata accessor for Participant);

                  ParticipantContactDetailsCache.contactDetails(for:)();

                  _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                  v102 = v211;
                  v103 = v212;
                  v94 = v213;

                  if (v103 != v209)
                  {
LABEL_73:
                    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v63 = v206;
                    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                    v28 = v205;
                    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                    if ((v7 & 1) == 0)
                    {
                      goto LABEL_86;
                    }

LABEL_74:
                    v104 = v210;
                    if (!v202)
                    {
                      goto LABEL_179;
                    }

                    v7 = v203;
                    outlined init with take of Participant(v69, v203);
                    swift_arrayInitWithTakeFrontToBack();
                    outlined init with take of Participant(v7, v67);
                    v67 += v201;
                    v69 += v201;
                    v60 = __CFADD__(v104, 1);
                    v70 = v104 + 1;
                    if (v60)
                    {
                      goto LABEL_86;
                    }

                    continue;
                  }

                  v101 = v208;
LABEL_72:
                  if (v94 == v101)
                  {

                    v28 = v205;
                    v63 = v206;
LABEL_85:
                    v7 = type metadata accessor for Participant;
                    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
                    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
LABEL_86:
                    v62 = v191 + 1;
                    v67 = v189 + v183;
                    v68 = v188 - 1;
                    v69 = v187 + v183;
                    if (v191 + 1 == v184)
                    {
                      v191 = v184;
                      v5 = v176;
                      v39 = v178;
                      goto LABEL_88;
                    }

                    goto LABEL_43;
                  }

                  goto LABEL_73;
                case 6u:
                  goto LABEL_48;
                default:
                  v72 = type metadata accessor for Date();
                  (*(*(v72 - 8) + 8))(v207, v72);
LABEL_48:
                  _s15ConversationKit11ParticipantVWOcTm_6(v63, v11, type metadata accessor for Participant.State);
                  v73 = v11;
                  switch(swift_getEnumCaseMultiPayload())
                  {
                    case 4u:
                      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
                      v119 = *(v118 + 48);
                      v120 = &v11[*(v118 + 64)];
                      outlined consume of Participant.CopresenceInfo?(*v120, v120[1], v120[2], v120[3], v120[4], v120[5], v120[6], v120[7]);
                      outlined destroy of Participant.MediaInfo(&v11[v119]);
                      v121 = type metadata accessor for Date();
                      (*(*(v121 - 8) + 8))(v11, v121);
                      goto LABEL_85;
                    case 6u:
                      goto LABEL_50;
                    default:
                      goto LABEL_49;
                  }
              }
            }
          }

          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          return;
        }
      }

LABEL_88:
      if (v191 < v39)
      {
        goto LABEL_173;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = v185;
      }

      else
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v185[2] + 1, 1, v185);
        v40 = v165;
      }

      v7 = v40[2];
      v122 = v40[3];
      v123 = v7 + 1;
      if (v7 >= v122 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v122 > 1, v7 + 1, 1, v40);
        v40 = v166;
      }

      v40[2] = v123;
      v124 = v40 + 4;
      v125 = &v40[2 * v7 + 4];
      v126 = v191;
      *v125 = v39;
      v125[1] = v126;
      v210 = *v181;
      if (!v210)
      {
        goto LABEL_183;
      }

      if (v7)
      {
        while (1)
        {
          v127 = v123 - 1;
          v128 = &v124[2 * v123 - 2];
          v129 = v40;
          v130 = &v40[2 * v123];
          if (v123 >= 4)
          {
            break;
          }

          if (v123 == 3)
          {
            v131 = v40[4];
            v132 = v40[5];
            v141 = __OFSUB__(v132, v131);
            v133 = v132 - v131;
            v134 = v141;
LABEL_108:
            if (v134)
            {
              goto LABEL_163;
            }

            v146 = *v130;
            v145 = v130[1];
            v147 = __OFSUB__(v145, v146);
            v148 = v145 - v146;
            v149 = v147;
            if (v147)
            {
              goto LABEL_166;
            }

            v150 = v128[1];
            v151 = v150 - *v128;
            if (__OFSUB__(v150, *v128))
            {
              goto LABEL_169;
            }

            if (__OFADD__(v148, v151))
            {
              goto LABEL_171;
            }

            if (v148 + v151 >= v133)
            {
              if (v133 < v151)
              {
                v127 = v123 - 2;
              }

              goto LABEL_130;
            }

            goto LABEL_123;
          }

          if (v123 < 2)
          {
            goto LABEL_165;
          }

          v153 = *v130;
          v152 = v130[1];
          v141 = __OFSUB__(v152, v153);
          v148 = v152 - v153;
          v149 = v141;
LABEL_123:
          if (v149)
          {
            goto LABEL_168;
          }

          v155 = *v128;
          v154 = v128[1];
          v141 = __OFSUB__(v154, v155);
          v156 = v154 - v155;
          if (v141)
          {
            goto LABEL_170;
          }

          if (v156 < v148)
          {
            goto LABEL_137;
          }

LABEL_130:
          if (v127 - 1 >= v123)
          {
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            v167 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            goto LABEL_144;
          }

          if (!*v194)
          {
            goto LABEL_180;
          }

          v160 = &v124[2 * v127 - 2];
          v161 = *v160;
          v7 = &v124[2 * v127];
          v162 = *(v7 + 8);
          specialized _merge<A>(low:mid:high:buffer:by:)((*v194 + *(v192 + 72) * *v160), *v194 + *(v192 + 72) * *v7, *v194 + *(v192 + 72) * v162, v210);
          if (v5)
          {
            goto LABEL_152;
          }

          if (v162 < v161)
          {
            goto LABEL_155;
          }

          v163 = v129[2];
          if (v127 > v163)
          {
            goto LABEL_156;
          }

          *v160 = v161;
          v160[1] = v162;
          if (v127 >= v163)
          {
            goto LABEL_157;
          }

          v123 = v163 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 16), v163 - 1 - v127, &v124[2 * v127]);
          v40 = v129;
          v129[2] = v163 - 1;
          v164 = v163 > 2;
          v18 = v200;
          if (!v164)
          {
            goto LABEL_137;
          }
        }

        v135 = &v124[2 * v123];
        v136 = *(v135 - 8);
        v137 = *(v135 - 7);
        v141 = __OFSUB__(v137, v136);
        v138 = v137 - v136;
        if (v141)
        {
          goto LABEL_161;
        }

        v140 = *(v135 - 6);
        v139 = *(v135 - 5);
        v141 = __OFSUB__(v139, v140);
        v133 = v139 - v140;
        v134 = v141;
        if (v141)
        {
          goto LABEL_162;
        }

        v142 = v130[1];
        v143 = v142 - *v130;
        if (__OFSUB__(v142, *v130))
        {
          goto LABEL_164;
        }

        v141 = __OFADD__(v133, v143);
        v144 = v133 + v143;
        if (v141)
        {
          goto LABEL_167;
        }

        if (v144 >= v138)
        {
          v158 = *v128;
          v157 = v128[1];
          v141 = __OFSUB__(v157, v158);
          v159 = v157 - v158;
          if (v141)
          {
            goto LABEL_172;
          }

          if (v133 < v159)
          {
            v127 = v123 - 2;
          }

          goto LABEL_130;
        }

        goto LABEL_108;
      }

LABEL_137:
      v38 = v194[1];
      v39 = v191;
      v11 = v198;
      v28 = v205;
      v32 = v190;
      if (v191 >= v38)
      {
        goto LABEL_141;
      }
    }
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_141:
  v214 = *v181;
  if (!v214)
  {
    goto LABEL_184;
  }

  v7 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_175;
  }

  v167 = v7;
LABEL_144:
  v168 = v167 + 16;
  v169 = *(v167 + 2);
  while (v169 >= 2)
  {
    if (!*v194)
    {
      goto LABEL_181;
    }

    v7 = v167;
    v170 = &v167[16 * v169];
    v171 = *v170;
    v172 = &v168[2 * v169];
    v173 = *(v172 + 1);
    specialized _merge<A>(low:mid:high:buffer:by:)((*v194 + *(v192 + 72) * *v170), *v194 + *(v192 + 72) * *v172, *v194 + *(v192 + 72) * v173, v214);
    if (v5)
    {
      break;
    }

    if (v173 < v171)
    {
      goto LABEL_158;
    }

    if (v169 - 2 >= *v168)
    {
      goto LABEL_159;
    }

    *v170 = v171;
    *(v170 + 1) = v173;
    v174 = *v168 - v169;
    if (*v168 < v169)
    {
      goto LABEL_160;
    }

    v169 = *v168 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v172 + 16, v174, v172);
    *v168 = v169;
    v167 = v7;
  }

LABEL_152:
}

{
  v182 = a1;
  v212 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v212);
  v7 = &v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v208 = &v178 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v178 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v178 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v178 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v193 = &v178 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v178 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v192 = &v178 - v25;
  v207 = type metadata accessor for Participant(0);
  v195 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v188 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v206 = &v178 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v216 = &v178 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v211 = &v178 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v202 = &v178 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v200 = &v178 - v36;
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  v196 = a3;
  v41 = a3[1];
  if (v41 < 1)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_140:
    v216 = *v182;
    if (!v216)
    {
      goto LABEL_182;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_142;
    }

    goto LABEL_176;
  }

  v179 = &v178 - v39;
  v180 = v40;
  v183 = v23;
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v181 = a4;
  v198 = v12;
  v199 = v7;
  v209 = v15;
  v184 = v18;
  while (1)
  {
    v44 = v42 + 1;
    v189 = v43;
    v185 = v42;
    if (v42 + 1 >= v41)
    {
      goto LABEL_51;
    }

    v197 = v41;
    v45 = *v196;
    v46 = *(v195 + 72);
    v203 = v42 + 1;
    v47 = v42;
    v48 = v45 + v46 * v44;
    v49 = v179;
    _s15ConversationKit11ParticipantVWOcTm_6(v48, v179, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v45 + v46 * v47, v180, type metadata accessor for Participant);
    v50 = v201;
    LODWORD(v194) = closure #2 in Array<A>.screenSharingParticipant.getter(v49);
    v201 = v50;
    if (v50)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
LABEL_150:

      return;
    }

    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    v51 = v47 + 2;
    v52 = v45 + v46 * (v47 + 2);
    v44 = v203;
    v43 = v189;
    v204 = v46;
    v53 = v197;
    while (1)
    {
      v54 = v51;
      if (v44 + 1 >= v53)
      {
        break;
      }

      v210 = v51;
      v203 = v44;
      v55 = v200;
      _s15ConversationKit11ParticipantVWOcTm_6(v52, v200, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v48, v202, type metadata accessor for Participant);
      v56 = v192;
      _s15ConversationKit11ParticipantVWOcTm_6(v55, v192, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v215, 0, 24);
        v215[3] = 1;
        bzero(&v215[4], 0xB1uLL);
LABEL_13:
        outlined destroy of Participant.ScreenInfo?(v215);
        LODWORD(v205) = 0;
        v66 = v193;
        goto LABEL_14;
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v58 = *(v57 + 48);
      v59 = (v56 + *(v57 + 64));
      outlined consume of Participant.CopresenceInfo?(*v59, v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7]);
      memcpy(v214, (v56 + v58), sizeof(v214));
      v60 = type metadata accessor for Date();
      v61 = *(*(v60 - 8) + 8);
      v61(v56, v60);
      outlined init with copy of Participant.ScreenInfo?(&v214[96], v215);
      outlined destroy of Participant.MediaInfo(v214);
      if (v215[3] == 1)
      {
        goto LABEL_13;
      }

      outlined destroy of Participant.ScreenInfo?(v215);
      v62 = v183;
      _s15ConversationKit11ParticipantVWOcTm_6(v200, v183, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v63 = *(v57 + 48);
        v64 = (v62 + *(v57 + 64));
        outlined consume of Participant.CopresenceInfo?(*v64, v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7]);
        v65 = (v62 + v63);
        v43 = v189;
        memcpy(v214, v65, sizeof(v214));
        v61(v62, v60);
        outlined init with copy of Participant.ScreenInfo?(&v214[96], v213);
        outlined destroy of Participant.MediaInfo(v214);
        v66 = v193;
        if (v213[3] != 1)
        {
          memcpy(v215, v213, 0xD1uLL);
          LODWORD(v205) = LOBYTE(v215[5]);
          outlined destroy of Participant.ScreenInfo(v215);
          goto LABEL_14;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v213, 0, 24);
        v213[3] = 1;
        bzero(&v213[4], 0xB1uLL);
        v66 = v193;
      }

      outlined destroy of Participant.ScreenInfo?(v213);
      LODWORD(v205) = 0;
LABEL_14:
      _s15ConversationKit11ParticipantVWOcTm_6(v202, v66, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v68 = *(v67 + 48);
        v69 = (v66 + *(v67 + 64));
        outlined consume of Participant.CopresenceInfo?(*v69, v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7]);
        memcpy(v214, (v66 + v68), sizeof(v214));
        v70 = type metadata accessor for Date();
        v71 = *(*(v70 - 8) + 8);
        v71(v66, v70);
        outlined init with copy of Participant.ScreenInfo?(&v214[96], v215);
        outlined destroy of Participant.MediaInfo(v214);
        if (v215[3] != 1)
        {
          outlined destroy of Participant.ScreenInfo?(v215);
          v72 = v184;
          _s15ConversationKit11ParticipantVWOcTm_6(v202, v184, type metadata accessor for Participant.State);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v73 = *(v67 + 48);
            v74 = (v72 + *(v67 + 64));
            outlined consume of Participant.CopresenceInfo?(*v74, v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7]);
            memcpy(v214, (v72 + v73), sizeof(v214));
            v71(v72, v70);
            outlined init with copy of Participant.ScreenInfo?(&v214[96], v213);
            outlined destroy of Participant.MediaInfo(v214);
            if (v213[3] != 1)
            {
              memcpy(v215, v213, 0xD1uLL);
              v75 = LOBYTE(v215[5]);
              outlined destroy of Participant.ScreenInfo(v215);
LABEL_25:
              v43 = v189;
              goto LABEL_26;
            }
          }

          else
          {
            _s15ConversationKit11ParticipantV5StateOWOhTm_0();
            memset(v213, 0, 24);
            v213[3] = 1;
            bzero(&v213[4], 0xB1uLL);
          }

          outlined destroy of Participant.ScreenInfo?(v213);
          v75 = 0;
          goto LABEL_25;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v215, 0, 24);
        v215[3] = 1;
        bzero(&v215[4], 0xB1uLL);
      }

      outlined destroy of Participant.ScreenInfo?(v215);
      v75 = 0;
LABEL_26:
      v76 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v77 = [v76 integerValue];

      v78 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v79 = [v78 initWithBool_];
      v80 = [v79 integerValue];

      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      v81 = v194 ^ (v77 >= v80);
      v46 = v204;
      v52 += v204;
      v48 += v204;
      v44 = v203 + 1;
      v15 = v209;
      v54 = v210;
      v51 = v210 + 1;
      v53 = v197;
      if ((v81 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v44 = v53;
LABEL_29:
    if ((v194 & 1) == 0)
    {
      a4 = v181;
      goto LABEL_50;
    }

    v42 = v185;
    a4 = v181;
    if (v44 < v185)
    {
      goto LABEL_175;
    }

    if (v185 < v44)
    {
      if (v53 >= v54)
      {
        v82 = v54;
      }

      else
      {
        v82 = v53;
      }

      v83 = v46 * (v82 - 1);
      v84 = v46 * v82;
      v85 = v185;
      v86 = v185 * v46;
      v87 = v44;
      do
      {
        if (v85 != --v87)
        {
          v88 = *v196;
          if (!*v196)
          {
            goto LABEL_180;
          }

          v89 = v44;
          outlined init with take of Participant(v88 + v86, v188);
          v90 = v86 < v83 || v88 + v86 >= (v88 + v84);
          if (v90)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v86 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of Participant(v188, v88 + v83);
          v44 = v89;
          v43 = v189;
          v46 = v204;
        }

        ++v85;
        v83 -= v46;
        v84 -= v46;
        v86 += v46;
      }

      while (v85 < v87);
      a4 = v181;
      v15 = v209;
LABEL_50:
      v42 = v185;
    }

LABEL_51:
    v91 = v196[1];
    if (v44 < v91)
    {
      if (__OFSUB__(v44, v42))
      {
        goto LABEL_172;
      }

      if (v44 - v42 < a4)
      {
        break;
      }
    }

LABEL_88:
    if (v44 < v42)
    {
      goto LABEL_171;
    }

    v203 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 16) + 1, 1, v43);
      v43 = v168;
    }

    v125 = *(v43 + 16);
    v124 = *(v43 + 24);
    v126 = v125 + 1;
    v42 = v203;
    if (v125 >= v124 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v124 > 1, v125 + 1, 1, v43);
      v42 = v203;
      v43 = v169;
    }

    *(v43 + 16) = v126;
    v127 = v43 + 32;
    v128 = (v43 + 32 + 16 * v125);
    *v128 = v185;
    v128[1] = v42;
    v210 = *v182;
    if (!v210)
    {
      goto LABEL_181;
    }

    if (v125)
    {
      while (1)
      {
        v129 = v126 - 1;
        v130 = (v127 + 16 * (v126 - 1));
        v131 = (v43 + 16 * v126);
        if (v126 >= 4)
        {
          break;
        }

        if (v126 == 3)
        {
          v132 = *(v43 + 32);
          v133 = *(v43 + 40);
          v142 = __OFSUB__(v133, v132);
          v134 = v133 - v132;
          v135 = v142;
LABEL_108:
          if (v135)
          {
            goto LABEL_158;
          }

          v147 = *v131;
          v146 = v131[1];
          v148 = __OFSUB__(v146, v147);
          v149 = v146 - v147;
          v150 = v148;
          if (v148)
          {
            goto LABEL_161;
          }

          v151 = v130[1];
          v152 = v151 - *v130;
          if (__OFSUB__(v151, *v130))
          {
            goto LABEL_164;
          }

          if (__OFADD__(v149, v152))
          {
            goto LABEL_166;
          }

          if (v149 + v152 >= v134)
          {
            if (v134 < v152)
            {
              v129 = v126 - 2;
            }

            goto LABEL_130;
          }

          goto LABEL_123;
        }

        if (v126 < 2)
        {
          goto LABEL_160;
        }

        v154 = *v131;
        v153 = v131[1];
        v142 = __OFSUB__(v153, v154);
        v149 = v153 - v154;
        v150 = v142;
LABEL_123:
        if (v150)
        {
          goto LABEL_163;
        }

        v156 = *v130;
        v155 = v130[1];
        v142 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v142)
        {
          goto LABEL_165;
        }

        if (v157 < v149)
        {
          goto LABEL_137;
        }

LABEL_130:
        if (v129 - 1 >= v126)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        if (!*v196)
        {
          goto LABEL_178;
        }

        v161 = (v127 + 16 * (v129 - 1));
        v162 = *v161;
        v163 = v127 + 16 * v129;
        v164 = *(v163 + 8);
        v165 = v201;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v196 + *(v195 + 72) * *v161, *v196 + *(v195 + 72) * *v163, (*v196 + *(v195 + 72) * v164), v210);
        v201 = v165;
        if (v165)
        {
          goto LABEL_150;
        }

        if (v164 < v162)
        {
          goto LABEL_153;
        }

        v166 = v43;
        v43 = *(v43 + 16);
        if (v129 > v43)
        {
          goto LABEL_154;
        }

        *v161 = v162;
        v161[1] = v164;
        if (v129 >= v43)
        {
          goto LABEL_155;
        }

        v126 = v43 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v163 + 16), v43 - 1 - v129, (v127 + 16 * v129));
        *(v166 + 16) = v43 - 1;
        v167 = v43 > 2;
        v43 = v166;
        v42 = v203;
        if (!v167)
        {
          goto LABEL_137;
        }
      }

      v136 = v127 + 16 * v126;
      v137 = *(v136 - 64);
      v138 = *(v136 - 56);
      v142 = __OFSUB__(v138, v137);
      v139 = v138 - v137;
      if (v142)
      {
        goto LABEL_156;
      }

      v141 = *(v136 - 48);
      v140 = *(v136 - 40);
      v142 = __OFSUB__(v140, v141);
      v134 = v140 - v141;
      v135 = v142;
      if (v142)
      {
        goto LABEL_157;
      }

      v143 = v131[1];
      v144 = v143 - *v131;
      if (__OFSUB__(v143, *v131))
      {
        goto LABEL_159;
      }

      v142 = __OFADD__(v134, v144);
      v145 = v134 + v144;
      if (v142)
      {
        goto LABEL_162;
      }

      if (v145 >= v139)
      {
        v159 = *v130;
        v158 = v130[1];
        v142 = __OFSUB__(v158, v159);
        v160 = v158 - v159;
        if (v142)
        {
          goto LABEL_170;
        }

        if (v134 < v160)
        {
          v129 = v126 - 2;
        }

        goto LABEL_130;
      }

      goto LABEL_108;
    }

LABEL_137:
    v41 = v196[1];
    a4 = v181;
    v15 = v209;
    if (v42 >= v41)
    {
      goto LABEL_140;
    }
  }

  v92 = v42 + a4;
  if (__OFADD__(v42, a4))
  {
    goto LABEL_173;
  }

  if (v92 >= v91)
  {
    v92 = v196[1];
  }

  if (v92 < v42)
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
LABEL_142:
    v170 = (v43 + 16);
    v171 = *(v43 + 16);
    while (v171 >= 2)
    {
      if (!*v196)
      {
        goto LABEL_179;
      }

      v172 = v43;
      v173 = (v43 + 16 * v171);
      v174 = *v173;
      v175 = &v170[2 * v171];
      v43 = *(v175 + 1);
      v176 = v201;
      specialized _merge<A>(low:mid:high:buffer:by:)(*v196 + *(v195 + 72) * *v173, *v196 + *(v195 + 72) * *v175, (*v196 + *(v195 + 72) * v43), v216);
      v201 = v176;
      if (v176)
      {
        break;
      }

      if (v43 < v174)
      {
        goto LABEL_167;
      }

      if (v171 - 2 >= *v170)
      {
        goto LABEL_168;
      }

      *v173 = v174;
      v173[1] = v43;
      v177 = *v170 - v171;
      if (*v170 < v171)
      {
        goto LABEL_169;
      }

      v171 = *v170 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v175 + 16, v177, v175);
      *v170 = v171;
      v43 = v172;
    }

    goto LABEL_150;
  }

  if (v44 == v92)
  {
    goto LABEL_88;
  }

  v93 = *v196;
  v94 = *(v195 + 72);
  v95 = *v196 + v94 * (v44 - 1);
  v204 = -v94;
  v205 = v93;
  v96 = v42 - v44;
  v186 = v94;
  v187 = v92;
  v97 = v93 + v44 * v94;
  while (2)
  {
    v203 = v44;
    v190 = v97;
    v191 = v96;
    v194 = v95;
LABEL_61:
    v98 = v211;
    _s15ConversationKit11ParticipantVWOcTm_6(v97, v211, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v95, v216, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v98, v15, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v215, 0, 24);
      v215[3] = 1;
      bzero(&v215[4], 0xB1uLL);
      goto LABEL_67;
    }

    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v100 = *(v99 + 48);
    v101 = &v15[*(v99 + 64)];
    outlined consume of Participant.CopresenceInfo?(*v101, v101[1], v101[2], v101[3], v101[4], v101[5], v101[6], v101[7]);
    memcpy(v214, &v15[v100], sizeof(v214));
    v102 = type metadata accessor for Date();
    v103 = v15;
    v104 = v102;
    v105 = *(*(v102 - 8) + 8);
    v105(v103, v102);
    outlined init with copy of Participant.ScreenInfo?(&v214[96], v215);
    outlined destroy of Participant.MediaInfo(v214);
    if (v215[3] == 1)
    {
LABEL_67:
      outlined destroy of Participant.ScreenInfo?(v215);
      LODWORD(v210) = 0;
      v108 = v208;
      goto LABEL_68;
    }

    outlined destroy of Participant.ScreenInfo?(v215);
    v106 = v198;
    _s15ConversationKit11ParticipantVWOcTm_6(v211, v198, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v210 = *(v99 + 48);
      v107 = (v106 + *(v99 + 64));
      outlined consume of Participant.CopresenceInfo?(*v107, v107[1], v107[2], v107[3], v107[4], v107[5], v107[6], v107[7]);
      memcpy(v214, (v106 + v210), sizeof(v214));
      v105(v106, v104);
      outlined init with copy of Participant.ScreenInfo?(&v214[96], v213);
      outlined destroy of Participant.MediaInfo(v214);
      v108 = v208;
      if (v213[3] != 1)
      {
        memcpy(v215, v213, 0xD1uLL);
        LODWORD(v210) = LOBYTE(v215[5]);
        outlined destroy of Participant.ScreenInfo(v215);
        goto LABEL_68;
      }
    }

    else
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v213, 0, 24);
      v213[3] = 1;
      bzero(&v213[4], 0xB1uLL);
      v108 = v208;
    }

    outlined destroy of Participant.ScreenInfo?(v213);
    LODWORD(v210) = 0;
LABEL_68:
    _s15ConversationKit11ParticipantVWOcTm_6(v216, v108, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v215, 0, 24);
      v215[3] = 1;
      bzero(&v215[4], 0xB1uLL);
      goto LABEL_74;
    }

    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v110 = *(v109 + 48);
    v111 = (v108 + *(v109 + 64));
    outlined consume of Participant.CopresenceInfo?(*v111, v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7]);
    memcpy(v214, (v108 + v110), sizeof(v214));
    v112 = type metadata accessor for Date();
    v113 = *(*(v112 - 8) + 8);
    v113(v108, v112);
    outlined init with copy of Participant.ScreenInfo?(&v214[96], v215);
    outlined destroy of Participant.MediaInfo(v214);
    if (v215[3] == 1)
    {
LABEL_74:
      v117 = v215;
      goto LABEL_75;
    }

    outlined destroy of Participant.ScreenInfo?(v215);
    v114 = v199;
    _s15ConversationKit11ParticipantVWOcTm_6(v216, v199, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v197 = *(v109 + 48);
      v115 = (v114 + *(v109 + 64));
      outlined consume of Participant.CopresenceInfo?(*v115, v115[1], v115[2], v115[3], v115[4], v115[5], v115[6], v115[7]);
      memcpy(v214, (v114 + v197), sizeof(v214));
      v113(v114, v112);
      outlined init with copy of Participant.ScreenInfo?(&v214[96], v213);
      outlined destroy of Participant.MediaInfo(v214);
      if (v213[3] != 1)
      {
        memcpy(v215, v213, 0xD1uLL);
        v116 = LOBYTE(v215[5]);
        outlined destroy of Participant.ScreenInfo(v215);
        goto LABEL_76;
      }
    }

    else
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v213, 0, 24);
      v213[3] = 1;
      bzero(&v213[4], 0xB1uLL);
    }

    v117 = v213;
LABEL_75:
    outlined destroy of Participant.ScreenInfo?(v117);
    v116 = 0;
LABEL_76:
    v118 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v119 = [v118 integerValue];

    v120 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v121 = [v120 initWithBool_];
    v122 = [v121 integerValue];

    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    if (v119 >= v122)
    {
      v15 = v209;
LABEL_86:
      v44 = v203 + 1;
      v95 = v194 + v186;
      v96 = v191 - 1;
      v97 = v190 + v186;
      if (v203 + 1 == v187)
      {
        v44 = v187;
        v43 = v189;
        v42 = v185;
        goto LABEL_88;
      }

      continue;
    }

    break;
  }

  v15 = v209;
  if (v205)
  {
    v123 = v206;
    outlined init with take of Participant(v97, v206);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Participant(v123, v95);
    v95 += v204;
    v97 += v204;
    v90 = __CFADD__(v96++, 1);
    if (v90)
    {
      goto LABEL_86;
    }

    goto LABEL_61;
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
}

{
  v265 = a4;
  v266 = a1;
  v280 = type metadata accessor for PersonNameComponents();
  v305 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v285 = &v261 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v284 = &v261 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v283 = &v261 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v303 = &v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v281 = &v261 - v14;
  v15 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v261 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v299 = &v261 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v276 = &v261 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v275 = &v261 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v297 = &v261 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v261 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v274 = &v261 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v279 = &v261 - v32;
  v33 = type metadata accessor for Participant(0);
  v277 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v270 = &v261 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v296 = &v261 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v312 = &v261 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v306 = &v261 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v292 = &v261 - v42;
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v286 = &v261 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v263 = &v261 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v282 = a3;
  v52 = a3[1];
  if (v52 < 1)
  {
    v54 = MEMORY[0x1E69E7CC0];
LABEL_172:
    v55 = *v266;
    if (!*v266)
    {
      goto LABEL_214;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_174;
    }

    goto LABEL_208;
  }

  v262 = &v261 - v50;
  v53 = 0;
  v302 = (v7 + 32);
  v290 = (v7 + 8);
  v278 = (v305 + 8);
  v289 = v6;
  v301 = v11;
  v293 = v15;
  v298 = v17;
  v305 = v28;
  v54 = MEMORY[0x1E69E7CC0];
  v300 = v49;
  v291 = v51;
  v55 = v11;
  while (1)
  {
    v56 = v53++;
    v267 = v56;
    if (v53 >= v52)
    {
      v129 = v265;
      v64 = v299;
      goto LABEL_67;
    }

    v295 = v52;
    v264 = v54;
    v57 = *v282;
    v55 = *(v277 + 72);
    v288 = v53;
    v54 = v57 + v55 * v53;
    v58 = v262;
    _s15ConversationKit11ParticipantVWOcTm_6(v54, v262, type metadata accessor for Participant);
    v59 = v57 + v55 * v56;
    v60 = v263;
    _s15ConversationKit11ParticipantVWOcTm_6(v59, v263, type metadata accessor for Participant);
    v61 = v287;
    LODWORD(v294) = closure #2 in static ParticipantListViewController.filterAndSort(_:)(v58, v60);
    v287 = v61;
    if (v61)
    {
      _s15ConversationKit11ParticipantVWOhTm_16(v60, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v58, type metadata accessor for Participant);
LABEL_182:

      return;
    }

    _s15ConversationKit11ParticipantVWOhTm_16(v60, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_16(v58, type metadata accessor for Participant);
    v62 = v267 + 2;
    v63 = v57 + v55 * (v267 + 2);
    v64 = v299;
    v53 = v288;
    v65 = v55;
    v304 = v55;
    v66 = v295;
    while (1)
    {
      v67 = v62;
      if (v53 + 1 >= v66)
      {
        break;
      }

      v288 = v53;
      v68 = v286;
      _s15ConversationKit11ParticipantVWOcTm_6(v63, v286, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v54, v291, type metadata accessor for Participant);
      v69 = v68;
      v70 = v275;
      _s15ConversationKit11ParticipantVWOcTm_6(v69, v275, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v72 = *(v71 + 48);
        v73 = (v70 + *(v71 + 64));
        v74 = outlined consume of Participant.CopresenceInfo?(*v73, v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7]);
        v75 = v279;
        (*v302)(v279, v70, v6, v74);
        outlined destroy of Participant.MediaInfo(v70 + v72);
        v76 = 0;
        v77 = v276;
        v78 = v274;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v70, type metadata accessor for Participant.State);
        v76 = 1;
        v77 = v276;
        v78 = v274;
        v75 = v279;
      }

      __swift_storeEnumTagSinglePayload(v75, v76, 1, v6);
      _s15ConversationKit11ParticipantVWOcTm_6(v291, v77, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v80 = *(v79 + 48);
        v81 = (v77 + *(v79 + 64));
        v82 = outlined consume of Participant.CopresenceInfo?(*v81, v81[1], v81[2], v81[3], v81[4], v81[5], v81[6], v81[7]);
        (*v302)(v78, v77, v6, v82);
        v75 = v279;
        outlined destroy of Participant.MediaInfo(v77 + v80);
        v83 = 0;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v77, type metadata accessor for Participant.State);
        v83 = 1;
      }

      __swift_storeEnumTagSinglePayload(v78, v83, 1, v6);
      v84 = *(v301 + 48);
      v85 = v78;
      v86 = v281;
      outlined init with take of Date?(v75, v281);
      outlined init with take of Date?(v85, v86 + v84);
      LODWORD(v85) = __swift_getEnumTagSinglePayload(v86, 1, v6);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86 + v84, 1, v6);
      if (v85 == 1)
      {
        v88 = v300;
        if (EnumTagSinglePayload == 1)
        {
          v89 = *(v286 + *(v300 + 28));
          v272 = v67;
          if (v89)
          {
            v90 = v89;
            v271 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v90);
            if (v91)
            {
              v92 = v91;
              if ([v90 shouldHideContact])
              {
                v273 = v92;
                v93 = v285;
                PersonNameComponents.init()();
                PersonNameComponents.givenName.setter();
                PersonNameComponents.familyName.setter();
                if (one-time initialization token for initials != -1)
                {
                  swift_once();
                }

                swift_beginAccess();
                v94 = static NSPersonNameComponentsFormatter.initials;
                isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                v96 = [v94 stringFromPersonNameComponents_];

                v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v99 = v98;

                (*v278)(v93, v280);
                v309 = v97;
                v310 = v99;
                lazy protocol witness table accessor for type String and conformance String();
                StringProtocol.localizedUppercase.getter();

                v100 = v273;

                v101 = 0;
                v102 = v271;
LABEL_30:

                v307 = v102;
                v308 = v100;
                v273 = v100;
                v112 = v291;
                v113 = *(v291 + *(v88 + 28));
                v17 = v298;
                if (v113)
                {
                  v114 = v113;
                  v115 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v114);
                  if (v116)
                  {
                    v117 = v115;
                    v118 = v116;
                    if ([v114 shouldHideContact])
                    {
                      v269 = v117;
                      v119 = v285;
                      PersonNameComponents.init()();
                      PersonNameComponents.givenName.setter();
                      PersonNameComponents.familyName.setter();
                      if (one-time initialization token for initials != -1)
                      {
                        swift_once();
                      }

                      swift_beginAccess();
                      v120 = static NSPersonNameComponentsFormatter.initials;
                      v121 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                      v122 = [v120 stringFromPersonNameComponents_];

                      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v125 = v124;

                      (*v278)(v119, v280);
                      v309 = v123;
                      v310 = v125;
                      lazy protocol witness table accessor for type String and conformance String();
                      StringProtocol.localizedUppercase.getter();

                      v271 = 0;
                      v17 = v298;
                      v103 = v288;
                      v126 = v269;
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                  }

                  v112 = v291;
                }

                v127 = v292;
                _s15ConversationKit11ParticipantVWOcTm_6(v112, v292, type metadata accessor for Participant);

                ParticipantContactDetailsCache.contactDetails(for:)();

                _s15ConversationKit11ParticipantVWOhTm_16(v127, type metadata accessor for Participant);
                v126 = v310;
                v271 = v309;
                v118 = v311;
                v103 = v288;
LABEL_40:

                v309 = v126;
                v310 = v118;
                lazy protocol witness table accessor for type String and conformance String();
                v128 = StringProtocol.localizedCompare<A>(_:)();

                v55 = v128 == 1;
                v6 = v289;
                v110 = v291;
                v67 = v272;
                goto LABEL_41;
              }
            }

            else
            {
            }
          }

          v111 = v292;
          _s15ConversationKit11ParticipantVWOcTm_6(v286, v292, type metadata accessor for Participant);

          ParticipantContactDetailsCache.contactDetails(for:)();

          _s15ConversationKit11ParticipantVWOhTm_16(v111, type metadata accessor for Participant);
          v101 = v309;
          v102 = v310;
          v100 = v311;
          goto LABEL_30;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v281 + v84, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v55 = 0;
        v17 = v298;
        v103 = v288;
      }

      else
      {
        v103 = v288;
        if (EnumTagSinglePayload == 1)
        {
          (*v290)(v281, v6);
          v55 = 1;
        }

        else
        {
          v273 = v63;
          v104 = *v302;
          v105 = v283;
          v106 = v281;
          (*v302)(v283, v281, v6);
          v107 = v106 + v84;
          v108 = v284;
          v104(v284, v107, v6);
          v55 = static Date.< infix(_:_:)();
          v109 = *v290;
          (*v290)(v108, v6);
          v109(v105, v6);
          v63 = v273;
        }

        v17 = v298;
      }

      v110 = v291;
LABEL_41:
      _s15ConversationKit11ParticipantVWOhTm_16(v110, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v286, type metadata accessor for Participant);
      v65 = v304;
      v63 += v304;
      v54 += v304;
      v53 = v103 + 1;
      v62 = v67 + 1;
      v64 = v299;
      v66 = v295;
      if ((v294 ^ v55))
      {
        goto LABEL_45;
      }
    }

    v53 = v66;
LABEL_45:
    if ((v294 & 1) == 0)
    {
      v129 = v265;
      v55 = v301;
      v54 = v264;
      v56 = v267;
      v51 = v291;
      goto LABEL_67;
    }

    v56 = v267;
    v129 = v265;
    if (v53 < v267)
    {
      goto LABEL_207;
    }

    v51 = v291;
    if (v267 >= v53)
    {
      v55 = v301;
      v54 = v264;
    }

    else
    {
      v130 = v66 >= v67 ? v67 : v66;
      v131 = v65 * (v130 - 1);
      v132 = v65 * v130;
      v133 = v267;
      v134 = v267 * v65;
      v135 = v53;
      v55 = v301;
      do
      {
        if (v133 != --v135)
        {
          v136 = v53;
          v137 = *v282;
          if (!*v282)
          {
            goto LABEL_212;
          }

          outlined init with take of Participant(v137 + v134, v270);
          v138 = v134 < v131 || v137 + v134 >= v137 + v132;
          if (v138)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v134 != v131)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of Participant(v270, v137 + v131);
          v55 = v301;
          v53 = v136;
          v65 = v304;
          v51 = v291;
        }

        ++v133;
        v131 -= v65;
        v132 -= v65;
        v134 += v65;
      }

      while (v133 < v135);
      v129 = v265;
      v6 = v289;
      v17 = v298;
      v64 = v299;
      v54 = v264;
      v56 = v267;
    }

LABEL_67:
    v139 = v282[1];
    if (v53 < v139)
    {
      if (__OFSUB__(v53, v56))
      {
        goto LABEL_204;
      }

      if (v53 - v56 < v129)
      {
        break;
      }
    }

LABEL_116:
    if (v53 < v56)
    {
      goto LABEL_203;
    }

    v205 = v51;
    v206 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 16) + 1, 1, v54);
      v54 = v251;
    }

    v208 = *(v54 + 16);
    v207 = *(v54 + 24);
    v209 = v208 + 1;
    if (v208 >= v207 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v207 > 1, v208 + 1, 1, v54);
      v51 = v205;
      v54 = v252;
    }

    else
    {
      v51 = v205;
    }

    *(v54 + 16) = v209;
    v210 = v54 + 32;
    v211 = (v54 + 32 + 16 * v208);
    *v211 = v267;
    v211[1] = v53;
    v304 = *v266;
    if (!v304)
    {
      goto LABEL_213;
    }

    if (v208)
    {
      v55 = v206;
      while (1)
      {
        v212 = v209 - 1;
        v213 = (v210 + 16 * (v209 - 1));
        v214 = (v54 + 16 * v209);
        if (v209 >= 4)
        {
          break;
        }

        if (v209 == 3)
        {
          v215 = *(v54 + 32);
          v216 = *(v54 + 40);
          v225 = __OFSUB__(v216, v215);
          v217 = v216 - v215;
          v218 = v225;
LABEL_137:
          if (v218)
          {
            goto LABEL_190;
          }

          v230 = *v214;
          v229 = v214[1];
          v231 = __OFSUB__(v229, v230);
          v232 = v229 - v230;
          v233 = v231;
          if (v231)
          {
            goto LABEL_193;
          }

          v234 = v213[1];
          v235 = v234 - *v213;
          if (__OFSUB__(v234, *v213))
          {
            goto LABEL_196;
          }

          if (__OFADD__(v232, v235))
          {
            goto LABEL_198;
          }

          if (v232 + v235 >= v217)
          {
            if (v217 < v235)
            {
              v212 = v209 - 2;
            }

            goto LABEL_159;
          }

          goto LABEL_152;
        }

        if (v209 < 2)
        {
          goto LABEL_192;
        }

        v237 = *v214;
        v236 = v214[1];
        v225 = __OFSUB__(v236, v237);
        v232 = v236 - v237;
        v233 = v225;
LABEL_152:
        if (v233)
        {
          goto LABEL_195;
        }

        v239 = *v213;
        v238 = v213[1];
        v225 = __OFSUB__(v238, v239);
        v240 = v238 - v239;
        if (v225)
        {
          goto LABEL_197;
        }

        if (v240 < v232)
        {
          goto LABEL_168;
        }

LABEL_159:
        if (v212 - 1 >= v209)
        {
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        if (!*v282)
        {
          goto LABEL_210;
        }

        v244 = v54;
        v245 = (v210 + 16 * (v212 - 1));
        v246 = *v245;
        v55 = v210 + 16 * v212;
        v54 = *(v55 + 8);
        v247 = v287;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v282 + *(v277 + 72) * *v245, *v282 + *(v277 + 72) * *v55, *v282 + *(v277 + 72) * v54, v304);
        v287 = v247;
        if (v247)
        {
          goto LABEL_182;
        }

        if (v54 < v246)
        {
          goto LABEL_185;
        }

        v248 = v53;
        v249 = *(v244 + 16);
        if (v212 > v249)
        {
          goto LABEL_186;
        }

        *v245 = v246;
        v245[1] = v54;
        if (v212 >= v249)
        {
          goto LABEL_187;
        }

        v209 = v249 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v55 + 16), v249 - 1 - v212, (v210 + 16 * v212));
        v54 = v244;
        *(v244 + 16) = v249 - 1;
        v250 = v249 > 2;
        v55 = v301;
        v51 = v291;
        v53 = v248;
        if (!v250)
        {
          goto LABEL_168;
        }
      }

      v219 = v210 + 16 * v209;
      v220 = *(v219 - 64);
      v221 = *(v219 - 56);
      v225 = __OFSUB__(v221, v220);
      v222 = v221 - v220;
      if (v225)
      {
        goto LABEL_188;
      }

      v224 = *(v219 - 48);
      v223 = *(v219 - 40);
      v225 = __OFSUB__(v223, v224);
      v217 = v223 - v224;
      v218 = v225;
      if (v225)
      {
        goto LABEL_189;
      }

      v226 = v214[1];
      v227 = v226 - *v214;
      if (__OFSUB__(v226, *v214))
      {
        goto LABEL_191;
      }

      v225 = __OFADD__(v217, v227);
      v228 = v217 + v227;
      if (v225)
      {
        goto LABEL_194;
      }

      if (v228 >= v222)
      {
        v242 = *v213;
        v241 = v213[1];
        v225 = __OFSUB__(v241, v242);
        v243 = v241 - v242;
        if (v225)
        {
          goto LABEL_202;
        }

        if (v217 < v243)
        {
          v212 = v209 - 2;
        }

        goto LABEL_159;
      }

      goto LABEL_137;
    }

    v55 = v206;
LABEL_168:
    v52 = v282[1];
    v6 = v289;
    v17 = v298;
    if (v53 >= v52)
    {
      goto LABEL_172;
    }
  }

  v140 = v56 + v129;
  if (__OFADD__(v56, v129))
  {
    goto LABEL_205;
  }

  if (v140 >= v139)
  {
    v140 = v282[1];
  }

  if (v140 < v56)
  {
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
LABEL_174:
    v253 = (v54 + 16);
    v254 = *(v54 + 16);
    while (v254 >= 2)
    {
      if (!*v282)
      {
        goto LABEL_211;
      }

      v255 = v54;
      v256 = (v54 + 16 * v254);
      v54 = *v256;
      v257 = &v253[2 * v254];
      v258 = *(v257 + 1);
      v259 = v287;
      specialized _merge<A>(low:mid:high:buffer:by:)(*v282 + *(v277 + 72) * *v256, *v282 + *(v277 + 72) * *v257, *v282 + *(v277 + 72) * v258, v55);
      v287 = v259;
      if (v259)
      {
        break;
      }

      if (v258 < v54)
      {
        goto LABEL_199;
      }

      if (v254 - 2 >= *v253)
      {
        goto LABEL_200;
      }

      *v256 = v54;
      v256[1] = v258;
      v260 = *v253 - v254;
      if (*v253 < v254)
      {
        goto LABEL_201;
      }

      v254 = *v253 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v257 + 16, v260, v257);
      *v253 = v254;
      v54 = v255;
    }

    goto LABEL_182;
  }

  if (v53 == v140)
  {
    goto LABEL_116;
  }

  v264 = v54;
  v141 = *v282;
  v142 = *(v277 + 72);
  v143 = *v282 + v142 * (v53 - 1);
  v294 = -v142;
  v144 = v56 - v53;
  v295 = v141;
  v268 = v142;
  v145 = (v141 + v53 * v142);
  v269 = v140;
  while (2)
  {
    v288 = v53;
    v271 = v145;
    v272 = v144;
    v273 = v143;
    v146 = v143;
LABEL_77:
    v304 = v144;
    v147 = v306;
    _s15ConversationKit11ParticipantVWOcTm_6(v145, v306, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v146, v312, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v147, v64, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v149 = *(v148 + 48);
      v150 = (v64 + *(v148 + 64));
      v151 = outlined consume of Participant.CopresenceInfo?(*v150, v150[1], v150[2], v150[3], v150[4], v150[5], v150[6], v150[7]);
      v152 = v305;
      (*v302)(v305, v64, v6, v151);
      outlined destroy of Participant.MediaInfo(v64 + v149);
      v153 = 0;
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_16(v64, type metadata accessor for Participant.State);
      v153 = 1;
      v152 = v305;
    }

    __swift_storeEnumTagSinglePayload(v152, v153, 1, v6);
    _s15ConversationKit11ParticipantVWOcTm_6(v312, v17, type metadata accessor for Participant.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v155 = v297;
    if (EnumCaseMultiPayload == 4)
    {
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v157 = *(v156 + 48);
      v158 = &v17[*(v156 + 64)];
      v159 = outlined consume of Participant.CopresenceInfo?(*v158, v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7]);
      (*v302)(v155, v17, v6, v159);
      outlined destroy of Participant.MediaInfo(&v17[v157]);
      v160 = 0;
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_16(v17, type metadata accessor for Participant.State);
      v160 = 1;
    }

    v161 = v300;
    __swift_storeEnumTagSinglePayload(v155, v160, 1, v6);
    v162 = v155;
    v163 = *(v301 + 48);
    v164 = v303;
    outlined init with take of Date?(v305, v303);
    outlined init with take of Date?(v162, v164 + v163);
    LODWORD(v162) = __swift_getEnumTagSinglePayload(v164, 1, v6);
    v165 = __swift_getEnumTagSinglePayload(v164 + v163, 1, v6);
    if (v162 == 1)
    {
      if (v165 != 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v303 + v163, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        _s15ConversationKit11ParticipantVWOhTm_16(v312, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v306, type metadata accessor for Participant);
        v17 = v298;
LABEL_113:
        v64 = v299;
LABEL_114:
        v53 = v288 + 1;
        v143 = v273 + v268;
        v144 = v272 - 1;
        v145 = &v271[v268];
        if ((v288 + 1) == v269)
        {
          v53 = v269;
          v54 = v264;
          v51 = v291;
          v56 = v267;
          v55 = v301;
          goto LABEL_116;
        }

        continue;
      }

      v166 = *(v306 + *(v161 + 28));
      if (v166)
      {
        v167 = v166;
        v168 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v167);
        if (v169)
        {
          v170 = v168;
          v171 = v169;
          if ([v167 shouldHideContact])
          {
            v172 = v285;
            PersonNameComponents.init()();
            PersonNameComponents.givenName.setter();
            PersonNameComponents.familyName.setter();
            if (one-time initialization token for initials != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v173 = static NSPersonNameComponentsFormatter.initials;
            v174 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v175 = [v173 stringFromPersonNameComponents_];

            v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v178 = v177;

            (*v278)(v172, v280);
            v309 = v176;
            v310 = v178;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.localizedUppercase.getter();

            v179 = 0;
            v161 = v300;
LABEL_97:

            v307 = v170;
            v308 = v171;
            v188 = *(v312 + *(v161 + 28));
            if (v188)
            {
              v189 = v188;
              v190 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v189);
              if (v191)
              {
                v192 = v190;
                v193 = v191;
                if ([v189 shouldHideContact])
                {
                  PersonNameComponents.init()();
                  PersonNameComponents.givenName.setter();
                  PersonNameComponents.familyName.setter();
                  if (one-time initialization token for initials != -1)
                  {
                    swift_once();
                  }

                  swift_beginAccess();
                  v194 = static NSPersonNameComponentsFormatter.initials;
                  v195 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                  v196 = [v194 stringFromPersonNameComponents_];

                  v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v199 = v198;

                  (*v278)(v285, v280);
                  v309 = v197;
                  v310 = v199;
                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol.localizedUppercase.getter();

                  v200 = 0;
LABEL_106:

                  v309 = v192;
                  v310 = v193;
                  lazy protocol witness table accessor for type String and conformance String();
                  v202 = StringProtocol.localizedCompare<A>(_:)();

                  v185 = v202 == 1;
                  v6 = v289;
LABEL_107:
                  _s15ConversationKit11ParticipantVWOhTm_16(v312, type metadata accessor for Participant);
                  _s15ConversationKit11ParticipantVWOhTm_16(v306, type metadata accessor for Participant);
                  v17 = v298;
                  if ((v185 & 1) == 0)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_108;
                }
              }

              else
              {
              }
            }

            v201 = v292;
            _s15ConversationKit11ParticipantVWOcTm_6(v312, v292, type metadata accessor for Participant);

            ParticipantContactDetailsCache.contactDetails(for:)();

            _s15ConversationKit11ParticipantVWOhTm_16(v201, type metadata accessor for Participant);
            v200 = v309;
            v192 = v310;
            v193 = v311;
            goto LABEL_106;
          }
        }

        else
        {
        }
      }

      v187 = v292;
      _s15ConversationKit11ParticipantVWOcTm_6(v306, v292, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      _s15ConversationKit11ParticipantVWOhTm_16(v187, type metadata accessor for Participant);
      v179 = v309;
      v170 = v310;
      v171 = v311;
      goto LABEL_97;
    }

    break;
  }

  if (v165 != 1)
  {
    v180 = *v302;
    v181 = v283;
    v182 = v303;
    (*v302)(v283, v303, v6);
    v183 = v182 + v163;
    v184 = v284;
    v180(v284, v183, v6);
    v185 = static Date.< infix(_:_:)();
    v186 = *v290;
    (*v290)(v184, v6);
    v186(v181, v6);
    goto LABEL_107;
  }

  (*v290)(v303, v6);
  _s15ConversationKit11ParticipantVWOhTm_16(v312, type metadata accessor for Participant);
  _s15ConversationKit11ParticipantVWOhTm_16(v306, type metadata accessor for Participant);
  v17 = v298;
LABEL_108:
  v64 = v299;
  v203 = v304;
  if (v295)
  {
    v204 = v296;
    outlined init with take of Participant(v145, v296);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Participant(v204, v146);
    v146 += v294;
    v145 += v294;
    v138 = __CFADD__(v203, 1);
    v144 = v203 + 1;
    if (v138)
    {
      goto LABEL_114;
    }

    goto LABEL_77;
  }

  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
}

{
  v5 = v4;
  v181 = a1;
  v8 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v211 = &v175 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v175 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v191 = &v175 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v203 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v202 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v207 = &v175 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v206 = &v175 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v183 = &v175 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v182 = &v175 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v186 = &v175 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v190 = &v175 - v34;
  v204 = type metadata accessor for Participant(0);
  v195 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v187 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v201 = &v175 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v216 = &v175 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v214 = &v175 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v192 = &v175 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v197 = &v175 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v177 = &v175 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v175 - v49;
  v196 = a3;
  v51 = a3[1];
  if (v51 < 1)
  {
    v53 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v216 = *v181;
    if (!v216)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_151;
  }

  v205 = v10;
  v176 = a4;
  v52 = 0;
  v209 = (v19 + 8);
  v210 = (v19 + 32);
  v53 = MEMORY[0x1E69E7CC0];
  v215 = v8;
  v194 = v15;
  v212 = v18;
  v54 = v211;
  v178 = &v175 - v49;
  while (1)
  {
    v55 = v52;
    v56 = v52 + 1;
    if (v52 + 1 < v51)
    {
      v193 = v51;
      v57 = *v196;
      v58 = *(v195 + 72);
      v198 = v5;
      v208 = v52 + 1;
      v59 = v57 + v58 * v56;
      _s15ConversationKit11ParticipantVWOcTm_17(v59, v50);
      v60 = v177;
      _s15ConversationKit11ParticipantVWOcTm_17(v57 + v58 * v55, v177);
      v61 = v198;
      LODWORD(v199) = closure #2 in ConversationController.remoteOneToOneParticipant.getter(v50, v60);
      v198 = v61;
      if (v61)
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v60, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_18(v50, type metadata accessor for Participant);
LABEL_126:

        return;
      }

      v179 = v53;
      _s15ConversationKit11ParticipantVWOhTm_18(v60, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v50, type metadata accessor for Participant);
      v180 = v55;
      v62 = v55 + 2;
      v53 = (v57 + v58 * (v55 + 2));
      v63 = v192;
      v56 = v208;
      v200 = v58;
      v64 = v193;
      while (1)
      {
        v65 = v62;
        if (v56 + 1 >= v64)
        {
          break;
        }

        v213 = v62;
        v208 = v56;
        v66 = v197;
        _s15ConversationKit11ParticipantVWOcTm_17(v53, v197);
        _s15ConversationKit11ParticipantVWOcTm_17(v59, v63);
        v67 = v66;
        v68 = v191;
        _s15ConversationKit11ParticipantVWOcTm_17(v67, v191);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v189 = *(v69 + 48);
          v70 = (v68 + *(v69 + 64));
          v71 = outlined consume of Participant.CopresenceInfo?(*v70, v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7]);
          v72 = *v210;
          v73 = v186;
          (*v210)(v186, v68, v212, v71);
          v74 = v68 + v189;
          v75 = v212;
          v76 = v194;
          outlined destroy of Participant.MediaInfo(v74);
          (v72)(v190, v73, v75);
          _s15ConversationKit11ParticipantVWOcTm_17(v192, v76);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v77 = *(v69 + 48);
            v78 = &v194[*(v69 + 64)];
            v79 = outlined consume of Participant.CopresenceInfo?(*v78, v78[1], v78[2], v78[3], v78[4], v78[5], v78[6], v78[7]);
            v80 = v183;
            v72(v183, v194, v212, v79);
            v81 = v212;
            outlined destroy of Participant.MediaInfo(&v194[v77]);
            v82 = v182;
            (v72)(v182, v80, v81);
            v83 = v190;
            v84 = static Date.< infix(_:_:)();
            v85 = *v209;
            (*v209)(v82, v81);
            v85(v83, v81);
          }

          else
          {
            _s15ConversationKit11ParticipantVWOhTm_18(v76, type metadata accessor for Participant.State);
            (*v209)(v190, v75);
            v84 = 0;
          }

          v54 = v211;
          v63 = v192;
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_18(v68, type metadata accessor for Participant.State);
          v84 = 0;
        }

        _s15ConversationKit11ParticipantVWOhTm_18(v63, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_18(v197, type metadata accessor for Participant);
        v58 = v200;
        v53 += v200;
        v59 += v200;
        v56 = v208 + 1;
        v65 = v213;
        v62 = v213 + 1;
        v64 = v193;
        if ((v199 & 1) != (v84 & 1))
        {
          goto LABEL_16;
        }
      }

      v56 = v64;
LABEL_16:
      if (v199)
      {
        v55 = v180;
        v5 = v198;
        if (v56 < v180)
        {
          goto LABEL_150;
        }

        if (v180 >= v56)
        {
          v53 = v179;
          goto LABEL_39;
        }

        if (v64 >= v65)
        {
          v86 = v65;
        }

        else
        {
          v86 = v64;
        }

        v87 = v180;
        v88 = v58 * (v86 - 1);
        v89 = v58 * v86;
        v90 = v180 * v58;
        v91 = v56;
        do
        {
          if (v87 != --v91)
          {
            v92 = *v196;
            if (!*v196)
            {
              goto LABEL_155;
            }

            v93 = v56;
            _s15ConversationKit11ParticipantVWObTm_8(v92 + v90, v187);
            v94 = v90 < v88 || v92 + v90 >= (v92 + v89);
            if (v94)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v90 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            _s15ConversationKit11ParticipantVWObTm_8(v187, v92 + v88);
            v56 = v93;
            v58 = v200;
          }

          ++v87;
          v88 -= v58;
          v89 -= v58;
          v90 += v58;
        }

        while (v87 < v91);
        v5 = v198;
        v53 = v179;
        v54 = v211;
      }

      else
      {
        v5 = v198;
        v53 = v179;
      }

      v55 = v180;
    }

LABEL_39:
    v95 = v196[1];
    if (v56 < v95)
    {
      if (__OFSUB__(v56, v55))
      {
        goto LABEL_147;
      }

      if (v56 - v55 < v176)
      {
        break;
      }
    }

LABEL_62:
    if (v56 < v55)
    {
      goto LABEL_146;
    }

    v208 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v198 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
      v53 = v165;
    }

    v123 = *(v53 + 2);
    v122 = *(v53 + 3);
    v5 = v123 + 1;
    v52 = v208;
    if (v123 >= v122 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v122 > 1, v123 + 1, 1, v53);
      v52 = v208;
      v53 = v166;
    }

    *(v53 + 2) = v5;
    v124 = v53 + 32;
    v125 = &v53[16 * v123 + 32];
    *v125 = v55;
    *(v125 + 1) = v52;
    v213 = *v181;
    if (!v213)
    {
      goto LABEL_156;
    }

    if (v123)
    {
      while (1)
      {
        v126 = v5 - 1;
        v127 = &v124[16 * v5 - 16];
        v128 = &v53[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v129 = *(v53 + 4);
          v130 = *(v53 + 5);
          v139 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          v132 = v139;
LABEL_82:
          if (v132)
          {
            goto LABEL_133;
          }

          v144 = *v128;
          v143 = *(v128 + 1);
          v145 = __OFSUB__(v143, v144);
          v146 = v143 - v144;
          v147 = v145;
          if (v145)
          {
            goto LABEL_136;
          }

          v148 = *(v127 + 1);
          v149 = v148 - *v127;
          if (__OFSUB__(v148, *v127))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v146, v149))
          {
            goto LABEL_141;
          }

          if (v146 + v149 >= v131)
          {
            if (v131 < v149)
            {
              v126 = v5 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v5 < 2)
        {
          goto LABEL_135;
        }

        v151 = *v128;
        v150 = *(v128 + 1);
        v139 = __OFSUB__(v150, v151);
        v146 = v150 - v151;
        v147 = v139;
LABEL_97:
        if (v147)
        {
          goto LABEL_138;
        }

        v153 = *v127;
        v152 = *(v127 + 1);
        v139 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v139)
        {
          goto LABEL_140;
        }

        if (v154 < v146)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v126 - 1 >= v5)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v196)
        {
          goto LABEL_153;
        }

        v158 = v54;
        v159 = &v124[16 * v126 - 16];
        v160 = *v159;
        v161 = &v124[16 * v126];
        v5 = *(v161 + 1);
        v162 = v198;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v196 + *(v195 + 72) * *v159, (*v196 + *(v195 + 72) * *v161), *v196 + *(v195 + 72) * v5, v213);
        v198 = v162;
        if (v162)
        {
          goto LABEL_126;
        }

        if (v5 < v160)
        {
          goto LABEL_128;
        }

        v163 = v53;
        v53 = *(v53 + 2);
        if (v126 > v53)
        {
          goto LABEL_129;
        }

        *v159 = v160;
        v159[1] = v5;
        if (v126 >= v53)
        {
          goto LABEL_130;
        }

        v5 = (v53 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v161 + 16, &v53[-v126 - 1], &v124[16 * v126]);
        *(v163 + 2) = v53 - 1;
        v164 = v53 > 2;
        v53 = v163;
        v54 = v158;
        v52 = v208;
        if (!v164)
        {
          goto LABEL_111;
        }
      }

      v133 = &v124[16 * v5];
      v134 = *(v133 - 8);
      v135 = *(v133 - 7);
      v139 = __OFSUB__(v135, v134);
      v136 = v135 - v134;
      if (v139)
      {
        goto LABEL_131;
      }

      v138 = *(v133 - 6);
      v137 = *(v133 - 5);
      v139 = __OFSUB__(v137, v138);
      v131 = v137 - v138;
      v132 = v139;
      if (v139)
      {
        goto LABEL_132;
      }

      v140 = *(v128 + 1);
      v141 = v140 - *v128;
      if (__OFSUB__(v140, *v128))
      {
        goto LABEL_134;
      }

      v139 = __OFADD__(v131, v141);
      v142 = v131 + v141;
      if (v139)
      {
        goto LABEL_137;
      }

      if (v142 >= v136)
      {
        v156 = *v127;
        v155 = *(v127 + 1);
        v139 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v139)
        {
          goto LABEL_145;
        }

        if (v131 < v157)
        {
          v126 = v5 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v51 = v196[1];
    v5 = v198;
    v50 = v178;
    if (v52 >= v51)
    {
      goto LABEL_114;
    }
  }

  v96 = v55 + v176;
  if (__OFADD__(v55, v176))
  {
    goto LABEL_148;
  }

  if (v96 >= v95)
  {
    v96 = v196[1];
  }

  if (v96 < v55)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
LABEL_116:
    v167 = v53;
    v168 = (v53 + 16);
    for (i = *(v53 + 2); ; *v168 = i)
    {
      v53 = (i - 2);
      if (i < 2)
      {
        break;
      }

      if (!*v196)
      {
        goto LABEL_154;
      }

      v170 = &v167[16 * i];
      v171 = *v170;
      v172 = &v168[2 * i];
      v173 = *(v172 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)(*v196 + *(v195 + 72) * *v170, (*v196 + *(v195 + 72) * *v172), *v196 + *(v195 + 72) * v173, v216);
      if (v5)
      {
        break;
      }

      if (v173 < v171)
      {
        goto LABEL_142;
      }

      if (v53 >= *v168)
      {
        goto LABEL_143;
      }

      *v170 = v171;
      *(v170 + 1) = v173;
      v174 = *v168 - i;
      if (*v168 < i)
      {
        goto LABEL_144;
      }

      i = *v168 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v172 + 16, v174, v172);
    }

    goto LABEL_126;
  }

  if (v56 == v96)
  {
    goto LABEL_62;
  }

  v179 = v53;
  v198 = v5;
  v97 = *v196;
  v98 = *(v195 + 72);
  v99 = *v196 + v98 * (v56 - 1);
  v199 = -v98;
  v180 = v55;
  v100 = v55 - v56;
  v200 = v97;
  v184 = v98;
  v101 = v97 + v56 * v98;
  v185 = v96;
LABEL_48:
  v208 = v56;
  v188 = v101;
  v189 = v100;
  v102 = v100;
  v193 = v99;
  while (1)
  {
    v103 = v214;
    _s15ConversationKit11ParticipantVWOcTm_17(v101, v214);
    _s15ConversationKit11ParticipantVWOcTm_17(v99, v216);
    _s15ConversationKit11ParticipantVWOcTm_17(v103, v54);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v54, type metadata accessor for Participant.State);
LABEL_58:
      _s15ConversationKit11ParticipantVWOhTm_18(v216, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v214, type metadata accessor for Participant);
      goto LABEL_60;
    }

    v213 = v102;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v105 = *(v104 + 48);
    v106 = (v54 + *(v104 + 64));
    v107 = outlined consume of Participant.CopresenceInfo?(*v106, v106[1], v106[2], v106[3], v106[4], v106[5], v106[6], v106[7]);
    v108 = *v210;
    v109 = v207;
    v110 = v212;
    (*v210)(v207, v54, v212, v107);
    outlined destroy of Participant.MediaInfo(v54 + v105);
    v111 = v206;
    (v108)(v206, v109, v110);
    v112 = v205;
    _s15ConversationKit11ParticipantVWOcTm_17(v216, v205);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v112, type metadata accessor for Participant.State);
      (*v209)(v111, v110);
      v54 = v211;
      goto LABEL_58;
    }

    v113 = *(v104 + 48);
    v114 = (v112 + *(v104 + 64));
    v115 = outlined consume of Participant.CopresenceInfo?(*v114, v114[1], v114[2], v114[3], v114[4], v114[5], v114[6], v114[7]);
    v116 = v203;
    v108(v203, v112, v110, v115);
    outlined destroy of Participant.MediaInfo(v112 + v113);
    v117 = v202;
    (v108)(v202, v116, v110);
    LOBYTE(v116) = static Date.< infix(_:_:)();
    v118 = *v209;
    (*v209)(v117, v110);
    v118(v111, v110);
    _s15ConversationKit11ParticipantVWOhTm_18(v216, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_18(v214, type metadata accessor for Participant);
    if ((v116 & 1) == 0)
    {
      v54 = v211;
LABEL_60:
      v56 = v208 + 1;
      v99 = v193 + v184;
      v100 = v189 - 1;
      v101 = v188 + v184;
      if (v208 + 1 == v185)
      {
        v56 = v185;
        v5 = v198;
        v53 = v179;
        v55 = v180;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    v54 = v211;
    v119 = v213;
    if (!v200)
    {
      break;
    }

    v120 = v201;
    _s15ConversationKit11ParticipantVWObTm_8(v101, v201);
    swift_arrayInitWithTakeFrontToBack();
    _s15ConversationKit11ParticipantVWObTm_8(v120, v99);
    v99 += v199;
    v101 += v199;
    v94 = __CFADD__(v119, 1);
    v102 = v119 + 1;
    if (v94)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v72 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v72);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_65;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_66;
  }

  v73 = v5;
  v24 = v20 / v19;
  v76 = a1;
  v75 = a4;
  v25 = v22 / v19;
  if (v20 / v19 >= v22 / v19)
  {
    v68 = v12;
    v69 = v17;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v22 / v19, a4);
    v37 = a2;
    v70 = a4;
    v38 = a4 + v25 * v19;
    v39 = -v19;
    v40 = v38;
    v41 = v73;
    v65 = -v19;
    v66 = a1;
LABEL_38:
    v42 = v37 + v39;
    v43 = a3;
    v63 = v40;
    v44 = v40;
    v71 = v37;
    v67 = v37 + v39;
    while (1)
    {
      if (v38 <= v70)
      {
        v76 = v37;
        v74 = v44;
        goto LABEL_63;
      }

      if (v37 <= a1)
      {
        v76 = v37;
        v74 = v63;
        goto LABEL_63;
      }

      v64 = v44;
      v45 = v38;
      v46 = v38 + v39;
      v47 = v38 + v39;
      v48 = v68;
      v49 = v42;
      v50 = v39;
      _s15ConversationKit11ParticipantVWOcTm_6(v47, v68, type metadata accessor for Participant);
      v51 = v69;
      _s15ConversationKit11ParticipantVWOcTm_6(v49, v69, type metadata accessor for Participant);
      v52 = closure #1 in Array<A>.sortForInCallControls()(v48, v51);
      v73 = v41;
      if (v41)
      {
        break;
      }

      v53 = v52;
      v54 = v43 + v50;
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      if (v53)
      {
        v57 = v43 < v71 || v54 >= v71;
        a1 = v66;
        v38 = v45;
        a3 = v43 + v50;
        if (v57)
        {
          v58 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v58;
          v40 = v64;
          v39 = v65;
          v41 = v73;
        }

        else
        {
          v39 = v65;
          v40 = v64;
          v59 = v67;
          v37 = v67;
          v41 = v73;
          if (v43 != v71)
          {
            v60 = v64;
            v61 = v65;
            swift_arrayInitWithTakeBackToFront();
            v39 = v61;
            v37 = v59;
            v40 = v60;
          }
        }

        goto LABEL_38;
      }

      v55 = v43 < v45 || v54 >= v45;
      a1 = v66;
      if (v55)
      {
        swift_arrayInitWithTakeFrontToBack();
        v43 += v50;
        v38 = v46;
        v44 = v46;
        v37 = v71;
        v41 = v73;
        v39 = v65;
        v42 = v67;
      }

      else
      {
        v44 = v46;
        v21 = v45 == v43;
        v43 += v50;
        v38 = v46;
        v37 = v71;
        v41 = v73;
        v39 = v65;
        v42 = v67;
        if (!v21)
        {
          v56 = v65;
          swift_arrayInitWithTakeBackToFront();
          v39 = v56;
          v37 = v71;
          v43 = v54;
          v38 = v46;
          v44 = v46;
        }
      }
    }

    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    v76 = v71;
    v74 = v64;
  }

  else
  {
    v69 = &v62 - v16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v20 / v19, a4);
    v26 = a2;
    v70 = a4 + v24 * v19;
    v74 = v70;
    v27 = a4;
    while (1)
    {
      v28 = v71;
      if (v27 >= v70 || v26 >= a3)
      {
        break;
      }

      v30 = v26;
      v31 = v69;
      _s15ConversationKit11ParticipantVWOcTm_6(v26, v69, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v27, v28, type metadata accessor for Participant);
      v32 = v73;
      v33 = closure #1 in Array<A>.sortForInCallControls()(v31, v28);
      v73 = v32;
      if (v32)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        break;
      }

      v34 = v33;
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      if (v34)
      {
        if (a1 < v30 || a1 >= v30 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v30)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v30 + v19;
      }

      else
      {
        if (a1 < v27 || a1 >= v27 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v75 = v27 + v19;
        v27 += v19;
        v26 = v30;
      }

      a1 += v19;
      v76 = a1;
    }
  }

LABEL_63:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v76, &v75, &v74);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v128 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v128);
  v113 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v111 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v111 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v111 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v111 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v120 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v111 - v24;
  v123 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v122 = &v111 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v127 = &v111 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v111 - v32;
  v34 = *(v33 + 72);
  if (!v34)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return;
  }

  v35 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_99;
  }

  v37 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_100;
  }

  v112 = v14;
  v115 = v11;
  v39 = v35 / v34;
  v134 = a1;
  v133 = a4;
  v40 = v37 / v34;
  if (v35 / v34 < v37 / v34)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v35 / v34, a4);
    v122 = a4 + v39 * v34;
    v132 = v122;
    v118 = v34;
    v119 = a3;
    while (1)
    {
      if (a4 >= v122 || a2 >= a3)
      {
        goto LABEL_97;
      }

      v126 = a2;
      v42 = a2;
      v43 = v124;
      _s15ConversationKit11ParticipantVWOcTm_6(v42, v124, type metadata accessor for Participant);
      v125 = a4;
      _s15ConversationKit11ParticipantVWOcTm_6(a4, v127, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v43, v25, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v45 = *(v44 + 48);
      v46 = &v25[*(v44 + 64)];
      outlined consume of Participant.CopresenceInfo?(*v46, v46[1], v46[2], v46[3], v46[4], v46[5], v46[6], v46[7]);
      memcpy(v130, &v25[v45], sizeof(v130));
      v47 = type metadata accessor for Date();
      v48 = *(*(v47 - 8) + 8);
      v48(v25, v47);
      outlined init with copy of Participant.ScreenInfo?(&v130[96], v131);
      outlined destroy of Participant.MediaInfo(v130);
      v49 = v121;
      if (v131[3] == 1)
      {
        goto LABEL_22;
      }

      outlined destroy of Participant.ScreenInfo?(v131);
      v50 = v114;
      _s15ConversationKit11ParticipantVWOcTm_6(v124, v114, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v117 = *(v44 + 48);
        v51 = (v50 + *(v44 + 64));
        outlined consume of Participant.CopresenceInfo?(*v51, v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7]);
        memcpy(v130, (v50 + v117), sizeof(v130));
        v48(v50, v47);
        outlined init with copy of Participant.ScreenInfo?(&v130[96], v129);
        outlined destroy of Participant.MediaInfo(v130);
        v52 = v120;
        if (v129[3] != 1)
        {
          memcpy(v131, v129, 0xD1uLL);
          v53 = LOBYTE(v131[5]);
          outlined destroy of Participant.ScreenInfo(v131);
          goto LABEL_23;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v129, 0, 24);
        v129[3] = 1;
        bzero(&v129[4], 0xB1uLL);
        v52 = v120;
      }

      outlined destroy of Participant.ScreenInfo?(v129);
      v53 = 0;
LABEL_23:
      _s15ConversationKit11ParticipantVWOcTm_6(v127, v52, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v131, 0, 24);
        v131[3] = 1;
        bzero(&v131[4], 0xB1uLL);
LABEL_29:
        v63 = v131;
        goto LABEL_30;
      }

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v55 = *(v54 + 48);
      v56 = (v52 + *(v54 + 64));
      outlined consume of Participant.CopresenceInfo?(*v56, v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7]);
      memcpy(v130, (v52 + v55), sizeof(v130));
      v57 = type metadata accessor for Date();
      v58 = *(*(v57 - 8) + 8);
      v58(v52, v57);
      outlined init with copy of Participant.ScreenInfo?(&v130[96], v131);
      outlined destroy of Participant.MediaInfo(v130);
      if (v131[3] == 1)
      {
        goto LABEL_29;
      }

      outlined destroy of Participant.ScreenInfo?(v131);
      _s15ConversationKit11ParticipantVWOcTm_6(v127, v49, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v117 = a1;
        v59 = *(v54 + 48);
        v60 = (v49 + *(v54 + 64));
        outlined consume of Participant.CopresenceInfo?(*v60, v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7]);
        v61 = (v49 + v59);
        a1 = v117;
        memcpy(v130, v61, sizeof(v130));
        v58(v49, v57);
        outlined init with copy of Participant.ScreenInfo?(&v130[96], v129);
        outlined destroy of Participant.MediaInfo(v130);
        if (v129[3] != 1)
        {
          memcpy(v131, v129, 0xD1uLL);
          v62 = LOBYTE(v131[5]);
          outlined destroy of Participant.ScreenInfo(v131);
          goto LABEL_31;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v129, 0, 24);
        v129[3] = 1;
        bzero(&v129[4], 0xB1uLL);
      }

      v63 = v129;
LABEL_30:
      outlined destroy of Participant.ScreenInfo?(v63);
      v62 = 0;
LABEL_31:
      v64 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v65 = [v64 integerValue];

      v66 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v67 = [v66 integerValue];

      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      if (v65 >= v67)
      {
        a2 = v126;
        v68 = v118;
        a3 = v119;
        a4 = v125 + v118;
        if (a1 < v125 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v125)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v133 = a4;
      }

      else
      {
        a4 = v125;
        v68 = v118;
        a3 = v119;
        a2 = v126 + v118;
        if (a1 < v126 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v126)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v68;
      v134 = a1;
    }

    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    memset(v131, 0, 24);
    v131[3] = 1;
    bzero(&v131[4], 0xB1uLL);
    v49 = v121;
LABEL_22:
    outlined destroy of Participant.ScreenInfo?(v131);
    v53 = 0;
    v52 = v120;
    goto LABEL_23;
  }

  v117 = a1;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v37 / v34, a4);
  v71 = a4 + v40 * v34;
  v72 = a2;
  v73 = -v34;
  v74 = v71;
  v125 = a4;
  v127 = v73;
LABEL_55:
  v75 = v72 + v73;
  v76 = a3;
  v111 = v74;
  v77 = v119;
  v126 = v72;
  v118 = v72 + v73;
  while (1)
  {
    if (v71 <= a4)
    {
      v134 = v72;
      v132 = v74;
      goto LABEL_97;
    }

    if (v72 <= v117)
    {
      break;
    }

    v121 = v76;
    v114 = v74;
    v124 = v71;
    v78 = v71 + v73;
    v79 = v122;
    _s15ConversationKit11ParticipantVWOcTm_6(v71 + v73, v122, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_6(v75, v77, type metadata accessor for Participant);
    v80 = v116;
    _s15ConversationKit11ParticipantVWOcTm_6(v79, v116, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v131, 0, 24);
      v131[3] = 1;
      bzero(&v131[4], 0xB1uLL);
LABEL_64:
      outlined destroy of Participant.ScreenInfo?(v131);
      LODWORD(v120) = 0;
      v89 = v115;
      goto LABEL_68;
    }

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v82 = *(v81 + 48);
    v83 = (v80 + *(v81 + 64));
    outlined consume of Participant.CopresenceInfo?(*v83, v83[1], v83[2], v83[3], v83[4], v83[5], v83[6], v83[7]);
    memcpy(v130, (v80 + v82), sizeof(v130));
    v84 = type metadata accessor for Date();
    v85 = *(*(v84 - 8) + 8);
    v85(v80, v84);
    outlined init with copy of Participant.ScreenInfo?(&v130[96], v131);
    outlined destroy of Participant.MediaInfo(v130);
    if (v131[3] == 1)
    {
      goto LABEL_64;
    }

    outlined destroy of Participant.ScreenInfo?(v131);
    v86 = v112;
    _s15ConversationKit11ParticipantVWOcTm_6(v122, v112, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v129, 0, 24);
      v129[3] = 1;
      bzero(&v129[4], 0xB1uLL);
      v89 = v115;
LABEL_66:
      outlined destroy of Participant.ScreenInfo?(v129);
      LODWORD(v120) = 0;
      goto LABEL_67;
    }

    v87 = *(v81 + 48);
    v88 = (v86 + *(v81 + 64));
    outlined consume of Participant.CopresenceInfo?(*v88, v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7]);
    memcpy(v130, (v86 + v87), sizeof(v130));
    v85(v86, v84);
    outlined init with copy of Participant.ScreenInfo?(&v130[96], v129);
    outlined destroy of Participant.MediaInfo(v130);
    v89 = v115;
    if (v129[3] == 1)
    {
      goto LABEL_66;
    }

    memcpy(v131, v129, 0xD1uLL);
    LODWORD(v120) = LOBYTE(v131[5]);
    outlined destroy of Participant.ScreenInfo(v131);
LABEL_67:
    v77 = v119;
LABEL_68:
    _s15ConversationKit11ParticipantVWOcTm_6(v77, v89, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v131, 0, 24);
      v131[3] = 1;
      bzero(&v131[4], 0xB1uLL);
LABEL_74:
      v99 = v131;
      goto LABEL_75;
    }

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v91 = *(v90 + 48);
    v92 = (v89 + *(v90 + 64));
    outlined consume of Participant.CopresenceInfo?(*v92, v92[1], v92[2], v92[3], v92[4], v92[5], v92[6], v92[7]);
    memcpy(v130, (v89 + v91), sizeof(v130));
    v93 = type metadata accessor for Date();
    v94 = *(*(v93 - 8) + 8);
    v94(v89, v93);
    outlined init with copy of Participant.ScreenInfo?(&v130[96], v131);
    outlined destroy of Participant.MediaInfo(v130);
    if (v131[3] == 1)
    {
      goto LABEL_74;
    }

    outlined destroy of Participant.ScreenInfo?(v131);
    v95 = v113;
    _s15ConversationKit11ParticipantVWOcTm_6(v77, v113, type metadata accessor for Participant.State);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v96 = *(v90 + 48);
      v97 = (v95 + *(v90 + 64));
      outlined consume of Participant.CopresenceInfo?(*v97, v97[1], v97[2], v97[3], v97[4], v97[5], v97[6], v97[7]);
      memcpy(v130, (v95 + v96), sizeof(v130));
      v94(v95, v93);
      outlined init with copy of Participant.ScreenInfo?(&v130[96], v129);
      outlined destroy of Participant.MediaInfo(v130);
      if (v129[3] != 1)
      {
        memcpy(v131, v129, 0xD1uLL);
        v98 = LOBYTE(v131[5]);
        outlined destroy of Participant.ScreenInfo(v131);
        goto LABEL_76;
      }
    }

    else
    {
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      memset(v129, 0, 24);
      v129[3] = 1;
      bzero(&v129[4], 0xB1uLL);
    }

    v99 = v129;
LABEL_75:
    outlined destroy of Participant.ScreenInfo?(v99);
    v98 = 0;
LABEL_76:
    v100 = v121;
    v101 = &v121[v127];
    v102 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v103 = [v102 integerValue];

    v104 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v105 = [v104 initWithBool_];
    v106 = [v105 integerValue];

    v77 = v119;
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    _s15ConversationKit11ParticipantV5StateOWOhTm_0();
    if (v103 < v106)
    {
      a4 = v125;
      v108 = v100 < v126 || v101 >= v126;
      a3 = v101;
      v109 = v118;
      if (v108)
      {
        swift_arrayInitWithTakeFrontToBack();
        v72 = v109;
        v74 = v114;
        v73 = v127;
        v71 = v124;
      }

      else
      {
        v74 = v114;
        v72 = v118;
        v73 = v127;
        v71 = v124;
        if (v100 != v126)
        {
          v110 = v114;
          swift_arrayInitWithTakeBackToFront();
          v71 = v124;
          v72 = v109;
          v74 = v110;
        }
      }

      goto LABEL_55;
    }

    a4 = v125;
    v107 = v100 < v124 || v101 >= v124;
    v72 = v126;
    v75 = v118;
    if (v107)
    {
      swift_arrayInitWithTakeFrontToBack();
      v76 = v101;
      v71 = v78;
      v74 = v78;
      v73 = v127;
    }

    else
    {
      v74 = v78;
      v76 = v101;
      v71 = v78;
      v73 = v127;
      if (v124 != v100)
      {
        swift_arrayInitWithTakeBackToFront();
        v76 = v101;
        v71 = v78;
        v74 = v78;
      }
    }
  }

  v134 = v72;
  v132 = v111;
LABEL_97:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v134, &v133, &v132);
}

void ScreenSharingInteractionTelemetryConsumer.handleRemoteControlRequest()()
{
  v1 = *(v0 + 40);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v3;
  }
}

void ScreenSharingInteractionTelemetryConsumer.handleRemoteControlRequestAutomaticallyDeclined()()
{
  v1 = *(v0 + 48);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = v3;
    ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()();
  }
}

void ScreenSharingInteractionTelemetryConsumer.handleRemoteControlResponse(allowRemoteControl:)(uint64_t result)
{
  if ((result & 1) == 0)
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 56);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (!v3)
  {
    *(v1 + 56) = v4;
LABEL_4:
    ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()();
    return;
  }

  __break(1u);
}

double ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BE790;
  *(inited + 32) = 0x737061745F687464;
  *(inited + 40) = 0xE800000000000000;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  strcpy((inited + 80), "dth_drawings");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 120) = v3;
  strcpy((inited + 128), "ftrc_requests");
  *(inited + 142) = -4864;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 168) = v3;
  *(inited + 176) = 0xD00000000000001BLL;
  *(inited + 184) = 0x80000001BC50FD40;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 216) = v3;
  *(inited + 224) = 0xD000000000000016;
  *(inited + 232) = 0x80000001BC50FD60;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 264) = v3;
  *(inited + 240) = v4;
  v5 = Dictionary.init(dictionaryLiteral:)();
  GroupSession.addAnalyticsReport(_:)(v5);

  return result;
}

uint64_t ScreenSharingInteractionTelemetryConsumer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ScreenSharingInteractionTelemetryConsumer.interestedEvents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16ScreenSharingKit14TelemetryEventOGMd, &_ss23_ContiguousArrayStorageCy16ScreenSharingKit14TelemetryEventOGMR);
  v0 = type metadata accessor for TelemetryEvent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BAA20;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69C9D30], v0);
  v6(v5 + v2, *MEMORY[0x1E69C9D38], v0);
  return v4;
}

void ScreenSharingInteractionTelemetryConsumer.sendTelemetry(event:payload:)(uint64_t a1)
{
  v3 = type metadata accessor for TelemetryEvent();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69C9D30])
  {
    v9 = (v1 + 24);
    v10 = *(v1 + 24);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v8 == *MEMORY[0x1E69C9D38])
  {
    v9 = (v1 + 32);
    v13 = *(v1 + 32);
    v11 = __OFADD__(v13, 1);
    v12 = v13 + 1;
    if (!v11)
    {
LABEL_7:
      *v9 = v12;
      ScreenSharingInteractionTelemetryConsumer.updateAnalyticsReport()();
      return;
    }

    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

Swift::Int ScreenSharingInteractionTransport.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScreenSharingInteractionTransport.Errors(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ScreenSharingInteractionTransport.Errors.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t key path getter for ScreenSharingInteractionTransport.isSendingInteractionData : ScreenSharingInteractionTransport@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

uint64_t ScreenSharingInteractionTransport.isSendingInteractionData.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 424))();

  return *(v0 + 40);
}

uint64_t ScreenSharingInteractionTransport.isSendingInteractionData.setter(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_63_2();
    v5();
  }

  return result;
}

uint64_t key path getter for ScreenSharingInteractionTransport.isReceivingInteractionData : ScreenSharingInteractionTransport@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

uint64_t ScreenSharingInteractionTransport.isReceivingInteractionData.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 424))();

  return *(v0 + 41);
}

uint64_t ScreenSharingInteractionTransport.isReceivingInteractionData.setter(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_63_2();
    v5();
  }

  return result;
}

uint64_t ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 424))();
}

uint64_t ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.setter(uint64_t a1)
{

  v4 = specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_63_2();
    v7();
  }

  else
  {
    *(v1 + 64) = a1;
  }
}

uint64_t closure #1 in ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = a2;
}

void (*ScreenSharingInteractionTransport._firewall.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 88);
  v3[3] = Strong;
  v3[4] = v5;
  return ScreenSharingInteractionTransport._firewall.modify;
}

void ScreenSharingInteractionTransport._firewall.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
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
  }

  free(v3);
}

uint64_t key path getter for ScreenSharingInteractionTransport.firewall : ScreenSharingInteractionTransport@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ScreenSharingInteractionTransport.firewall : ScreenSharingInteractionTransport(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 384);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ScreenSharingInteractionTransport.firewall.init@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t ScreenSharingInteractionTransport.firewall.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 424))();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ScreenSharingInteractionTransport.firewall.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v7 = v2;
  v8 = a1;
  v9 = a2;
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 432))();

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.firewall.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 88) = a3;
  return swift_unknownObjectWeakAssign();
}

uint64_t (*ScreenSharingInteractionTransport.firewall.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_4();
  (*(v4 + 424))();

  v3[5] = OBJC_IVAR____TtC15ConversationKit33ScreenSharingInteractionTransport___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_12_63();
  v3[6] = lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v5, v6, &protocol conformance descriptor for ScreenSharingInteractionTransport);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[7] = ScreenSharingInteractionTransport._firewall.modify(v3);
  return ScreenSharingInteractionTransport.firewall.modify;
}

void ScreenSharingInteractionTransport.firewall.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t type metadata accessor for ScreenSharingInteractionTransport(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScreenSharingInteractionTransport;
  if (!type metadata singleton initialization cache for ScreenSharingInteractionTransport)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScreenSharingInteractionTransport.__allocating_init(session:unreliableMessenger:reliableMessenger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_246();
  ScreenSharingInteractionTransport.init(session:unreliableMessenger:reliableMessenger:)(v6, a2, a3);
  return v3;
}

uint64_t ScreenSharingInteractionTransport.init(session:unreliableMessenger:reliableMessenger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = 0;
  *(v3 + 88) = 0;
  *(v3 + 48) = 2000000000000000000;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t ScreenSharingInteractionTransport.didSendData()()
{
  return ScreenSharingInteractionTransport.didSendData()();
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v5, v7, v8, v6);
  v9 = type metadata accessor for MainActor();

  static MainActor.shared.getter();
  v10 = OUTLINED_FUNCTION_246();
  v11 = OUTLINED_FUNCTION_3_2(v10);
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v9;
  v11[3] = v12;
  v11[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.didSendData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionTransport.didSendData(), v6, v5);
}

uint64_t closure #1 in ScreenSharingInteractionTransport.didSendData()()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_0_1();
  if (((*(v1 + 184))() & 1) == 0)
  {
    ScreenSharingInteractionTransport.isSendingInteractionData.setter(1);
  }

  v2 = ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.getter();
  if (v2)
  {
    v3 = v2;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1BFB21000](v3, MEMORY[0x1E69E7CA8] + 8, v4, MEMORY[0x1E69E7288]);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v5, v8, v9, v7);

  v10 = static MainActor.shared.getter();
  v11 = OUTLINED_FUNCTION_3_2(&unk_1F3AE56A0);
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v6;
  OUTLINED_FUNCTION_59();
  v13 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.setter(v13);

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData(), v7, v6);
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData()()
{
  OUTLINED_FUNCTION_9();
  static Clock<>.continuous.getter();
  v1 = OUTLINED_FUNCTION_16_11();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_3_0();

  return v3();
}

{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  v4 = OUTLINED_FUNCTION_32_2();
  v5(v4);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_194_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  ScreenSharingInteractionTransport.isSendingInteractionData.setter(0);

  OUTLINED_FUNCTION_5_102();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.didReceiveData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionTransport.didReceiveData(), v6, v5);
}

uint64_t closure #1 in ScreenSharingInteractionTransport.didReceiveData()()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_0_1();
  if (((*(v1 + 232))() & 1) == 0)
  {
    ScreenSharingInteractionTransport.isReceivingInteractionData.setter(1);
  }

  v2 = ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.getter();
  if (v2)
  {
    v3 = v2;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1BFB21000](v3, MEMORY[0x1E69E7CA8] + 8, v4, MEMORY[0x1E69E7288]);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v5, v8, v9, v7);

  v10 = static MainActor.shared.getter();
  v11 = OUTLINED_FUNCTION_3_2(&unk_1F3AE55B0);
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v6;
  OUTLINED_FUNCTION_59();
  v13 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  ScreenSharingInteractionTransport.isSendingInteractionDataDebouncer.setter(v13);

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData(), v7, v6);
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData()()
{
  OUTLINED_FUNCTION_9();
  static Clock<>.continuous.getter();
  v1 = OUTLINED_FUNCTION_16_11();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_3_0();

  return v3();
}

{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  v4 = OUTLINED_FUNCTION_32_2();
  v5(v4);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_194_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  ScreenSharingInteractionTransport.isReceivingInteractionData.setter(0);

  OUTLINED_FUNCTION_5_102();

  return v0();
}

uint64_t ScreenSharingInteractionTransport.access<A>(keyPath:)(uint64_t a1)
{
  OUTLINED_FUNCTION_12_63();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v1, v2, &protocol conformance descriptor for ScreenSharingInteractionTransport);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ScreenSharingInteractionTransport.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_12_63();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v4, v5, &protocol conformance descriptor for ScreenSharingInteractionTransport);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ScreenSharingInteractionTransport.deinit()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 80);
  v1 = OBJC_IVAR____TtC15ConversationKit33ScreenSharingInteractionTransport___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ScreenSharingInteractionTransport.__deallocating_deinit()
{
  ScreenSharingInteractionTransport.deinit();
  OUTLINED_FUNCTION_38_4();

  return swift_deallocClassInstance();
}

void ScreenSharingInteractionTransport.availableDeliveryModes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16ScreenSharingKit25ControlMessageReliabilityOGMd, &_ss23_ContiguousArrayStorageCy16ScreenSharingKit25ControlMessageReliabilityOGMR);
  v0 = type metadata accessor for ControlMessageReliability();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BAA20;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E69C9D98], v0);
  v8(v7 + v4, *MEMORY[0x1E69C9D90], v0);

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16ScreenSharingKit25ControlMessageReliabilityO_Tt0g5();
}

BOOL ScreenSharingInteractionTransport.isInvalidated.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_16_4();
  GroupSession.state.getter();
  v1 = OUTLINED_FUNCTION_45_1();
  v3 = v2(v1) == *MEMORY[0x1E696B2C0];
  v4 = OUTLINED_FUNCTION_45_1();
  v5(v4);
  return v3;
}

uint64_t ScreenSharingInteractionTransport.activate()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy16ScreenSharingKit21ControlMessengerStateO__GMd, &_sScS12ContinuationV15BufferingPolicyOy16ScreenSharingKit21ControlMessengerStateO__GMR);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_1();
  v17 = v4;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Log.screenSharing);
  OUTLINED_FUNCTION_246();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_13_10();
    v16 = v2;
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd, &_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMR);
    OUTLINED_FUNCTION_26_36();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v10, v11, &_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMR, v12);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);
    OUTLINED_FUNCTION_288();

    *(v8 + 4) = v0;
    _os_log_impl(&dword_1BBC58000, v6, v7, "Activating screen sharing interaction transport for session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    v2 = v16;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  GroupSession.join()();
  type metadata accessor for ControlMessengerState();
  (*(v2 + 104))(v17, *MEMORY[0x1E69E8650], v0);
  OUTLINED_FUNCTION_46();
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMd, &_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMR);
  v7 = *(v6 - 8);
  v26 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  GroupSession.$activeParticipants.getter();
  v28 = *(v7 + 16);
  v24 = v6;
  v28(v9, a1, v6);
  v13 = *(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v23 = a2;
  v25 = *(v7 + 32);
  v25(v14 + ((v13 + 24) & ~v13), v9, v6);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR, MEMORY[0x1E695C068]);

  v15 = Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v12, v10);
  v16 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v16);
  v17 = v24;
  v28(v9, v27, v24);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v23;
  v25(v18 + ((v13 + 40) & ~v13), v9, v17);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v20;
  return AsyncStream.Continuation.onTermination.setter();
}

void closure #1 in closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlMessengerState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy16ScreenSharingKit21ControlMessengerStateO__GMd, &_sScS12ContinuationV11YieldResultOy16ScreenSharingKit21ControlMessengerStateO__GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  if (*(*a1 + 16) >= 2uLL)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Log.screenSharing);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = v5;
      v16 = v15;
      v23 = v15;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v16 = 136315138;
      v26 = *(a2 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd, &_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

      v20 = v23;
      *(v23 + 4) = v19;
      _os_log_impl(&dword_1BBC58000, v13, v14, "Activated screen sharing interaction transport for session: %s", v20, 0xCu);
      v21 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
      v5 = v25;
      MEMORY[0x1BFB23DF0](v20, -1, -1);
    }

    (*(v5 + 104))(v7, *MEMORY[0x1E69C9D88], v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMd, &_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for ControlMessengerState();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy16ScreenSharingKit21ControlMessengerStateO__GMd, &_sScS12ContinuationV11YieldResultOy16ScreenSharingKit21ControlMessengerStateO__GMR);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GMR);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_GSgMR);
  v5[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_GGMR);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_GMR);
  v5[19] = v10;
  v5[20] = *(v10 - 8);
  v5[21] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMR);
  v5[22] = v11;
  v5[23] = *(v11 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ScreenSharingInteractionTransport.activate(), 0, 0);
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.activate()()
{
  OUTLINED_FUNCTION_48();
  *(v0 + 200) = *(*(v0 + 32) + 16);
  GroupSession.$state.getter();
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2, v3, v4);
  OUTLINED_FUNCTION_186_0();
  v5 = OUTLINED_FUNCTION_316();
  v6(v5);
  AsyncPublisher.makeAsyncIterator()();
  v7 = OUTLINED_FUNCTION_43_0();
  v8(v7);
  *(v0 + 224) = *MEMORY[0x1E696B2C0];
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<ScreenSharingInteractionActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 208) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_57_13(v9);

  return MEMORY[0x1EEE6D8C8](v11);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  return OUTLINED_FUNCTION_7_82(closure #2 in closure #1 in ScreenSharingInteractionTransport.activate());
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 16) = *(v0 + 216);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = MEMORY[0x1E69E73E0];
  v3 = OUTLINED_FUNCTION_31_9(v1);
  v4 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v3, v2, v4);
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  OUTLINED_FUNCTION_57(*(v18 + 120));
  if (v22)
  {
LABEL_8:
    (*(*(v18 + 184) + 8))(*(v18 + 192), *(v18 + 176));

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_69();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
  }

  v23 = *(v18 + 224);
  v24 = OUTLINED_FUNCTION_4_31();
  v25(v24);
  v26 = OUTLINED_FUNCTION_45_1();
  v28 = v27(v26);
  (*(*(v18 + 104) + 8))(*(v18 + 112), *(v18 + 96));
  if (v28 == v23)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v29 = *(v18 + 32);
    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_50_17(v30, &static Log.screenSharing);

    v31 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_72_12();

    if (OUTLINED_FUNCTION_112_2())
    {
      v32 = *(v18 + 200);
      OUTLINED_FUNCTION_13_10();
      swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_21_4();
      *v29 = 136315138;
      *(v18 + 24) = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd, &_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMR);
      v33 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &a9);
      OUTLINED_FUNCTION_102_1();
      *(v29 + 4) = v19;
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    (*(*(v18 + 56) + 104))(*(v18 + 64), *MEMORY[0x1E69C9D80], *(v18 + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMd, &_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMR);
    OUTLINED_FUNCTION_32_2();
    AsyncStream.Continuation.yield(_:)();
    v40 = OUTLINED_FUNCTION_44_0();
    v41(v40);
    AsyncStream.Continuation.finish()();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<ScreenSharingInteractionActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy15ConversationKit32ScreenSharingInteractionActivityV_G_G_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v18 + 208) = v51;
  *v51 = v52;
  OUTLINED_FUNCTION_57_13(v51);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6D8C8](v53);
}

void closure #3 in closure #1 in ScreenSharingInteractionTransport.activate()()
{
  AnyCancellable.cancel()();

  JUMPOUT(0x1BFB21000);
}

Swift::Void __swiftcall ScreenSharingInteractionTransport.invalidate()()
{
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Log.screenSharing);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_13_10();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v15 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd, &_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMR);
    OUTLINED_FUNCTION_26_36();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, v6, &_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMR, v7);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v3 + 4) = v10;
    _os_log_impl(&dword_1BBC58000, v1, v2, "Invalidating screen sharing interaction session: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0](v11, v12);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0](v13, v14);
  }

  GroupSession.end()();
}

uint64_t ScreenSharingInteractionTransport.send(_:reliability:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ScreenSharingKit25ControlMessageReliabilityOSgMd, &_s16ScreenSharingKit25ControlMessageReliabilityOSgMR);
  OUTLINED_FUNCTION_22(v5);
  v1[10] = OUTLINED_FUNCTION_109_4();
  v6 = type metadata accessor for Participants();
  v1[11] = v6;
  OUTLINED_FUNCTION_9_0(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_74();
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for ControlMessageReliability();
  v1[15] = v8;
  OUTLINED_FUNCTION_9_0(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_74();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v10 = type metadata accessor for RemoteControlMessage(0);
  v1[20] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[21] = OUTLINED_FUNCTION_109_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v11);
  v1[22] = OUTLINED_FUNCTION_109_4();
  v12 = type metadata accessor for Participant();
  v1[23] = v12;
  OUTLINED_FUNCTION_9_0(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_109_4();
  v14 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_167();
  (*(*(v1 + 96) + 8))(*(v5 + 112), *(v1 + 88));
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_118_1();
  ScreenSharingInteractionTransport.didSendData()();
  v0 = OUTLINED_FUNCTION_44_0();
  v1(v0);

  OUTLINED_FUNCTION_5_102();

  return v2();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 232) = v0;

  OUTLINED_FUNCTION_167();
  (*(*(v1 + 96) + 8))(*(v5 + 104), *(v1 + 88));
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t ScreenSharingInteractionTransport.send(_:reliability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  (*(v12[24] + 8))(v12[25], v12[23]);
  OUTLINED_FUNCTION_131_1();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  (*(v12[24] + 8))(v12[25], v12[23]);
  OUTLINED_FUNCTION_131_1();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

void ScreenSharingInteractionTransport.receiveData()()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy10Foundation4DataV__GMd, &_sScS12ContinuationV15BufferingPolicyOy10Foundation4DataV__GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, &static Log.screenSharing);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_13_10();
    v21 = v2;
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v22 = v11;
    v20 = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMd, &_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMR);
    OUTLINED_FUNCTION_26_36();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, v14, &_s15GroupActivities0A7SessionCy15ConversationKit32ScreenSharingInteractionActivityVGMR, v15);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v22);
    OUTLINED_FUNCTION_288();

    *(v10 + 4) = v12;
    v3 = v20;
    _os_log_impl(&dword_1BBC58000, v8, v9, "Creating screen sharing interaction transport data stream for session: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    v2 = v21;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  (*(v5 + 104))(v0, *MEMORY[0x1E69E8650], v3);
  v18 = OUTLINED_FUNCTION_209();
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  v2[4] = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AsyncStream<Data> and conformance AsyncStream<A>, &_sScSy10Foundation4DataVGMd, &_sScSy10Foundation4DataVGMR, MEMORY[0x1E69E86A0]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  AsyncStream.init(_:bufferingPolicy:_:)();
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ScreenSharingInteractionTransport.receiveData()(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd, &_sScS12ContinuationVy10Foundation4DataV_GMR);
  v5 = *(v4 - 8);
  v17 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v20 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  v18 = *(v5 + 16);
  v18(v7, a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a2;
  v16 = *(v5 + 32);
  v16(&v12[v11], v7, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  v18(v7, v19, v4);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  v16(&v13[v11], v7, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMd, &_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMR);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Participant();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for RemoteControlMessage(0);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtSgMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtSgMR);
  v5[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_10Foundation4DataVGMd, &_s15GroupActivities0A16SessionMessengerC8MessagesVy_10Foundation4DataVGMR);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMR);
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData(), 0, 0);
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_165_2();
  GroupSessionMessenger.messages(of:)();
  OUTLINED_FUNCTION_90_5();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  v1 = OUTLINED_FUNCTION_316();
  v2(v1);
  OUTLINED_FUNCTION_22_41(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<Data>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 256) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_29_29(v3);
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6D8C8](v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  return OUTLINED_FUNCTION_7_82(closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData());
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMd, &_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMR);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Participant();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for RemoteControlMessage(0);
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtSgMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtSgMR);
  v5[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_10Foundation4DataVGMd, &_s15GroupActivities0A16SessionMessengerC8MessagesVy_10Foundation4DataVGMR);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMR);
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData(), 0, 0);
}

uint64_t closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_165_2();
  GroupSessionMessenger.messages(of:)();
  OUTLINED_FUNCTION_90_5();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  v1 = OUTLINED_FUNCTION_316();
  v2(v1);
  OUTLINED_FUNCTION_22_41(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<Data>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10Foundation4DataV_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 256) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_29_29(v3);
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6D8C8](v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  return OUTLINED_FUNCTION_7_82(closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData());
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 32) = *(v0 + 264);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = MEMORY[0x1E69E73E0];
  v3 = OUTLINED_FUNCTION_31_9(v1);
  v4 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v3, v2, v4);
}

uint64_t protocol witness for ControlTransport.send(_:reliability:) in conformance ScreenSharingInteractionTransport()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return ScreenSharingInteractionTransport.send(_:reliability:)();
}

uint64_t key path setter for ScreenSharingInteractionSession.playbackServer : ScreenSharingInteractionSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t ScreenSharingInteractionSession.playbackServer.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

void key path setter for ScreenSharingInteractionSession.captureInteraction : ScreenSharingInteractionSession(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  v5 = v2;
}

void *ScreenSharingInteractionSession.captureInteraction.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t ScreenSharingInteractionSession.remoteControlStatus.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  os_unfair_lock_lock((*(v1 + 144) + 24));
  OUTLINED_FUNCTION_121_0();
  result = 1;
  switch(v0 >> 61)
  {
    case 2uLL:
      outlined consume of RemoteControlState(v0);
      result = 3;
      break;
    case 3uLL:
      outlined consume of RemoteControlState(v0);
      result = 2;
      break;
    case 4uLL:
      v3 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61;
      outlined consume of RemoteControlState(v0);
      v4 = 1;
      if (v3 == 3)
      {
        v4 = 2;
      }

      if (v3 == 2)
      {
        result = 3;
      }

      else
      {
        result = v4;
      }

      break;
    case 5uLL:
      return result;
    default:
      outlined consume of RemoteControlState(v0);
      result = 1;
      break;
  }

  return result;
}

uint64_t ScreenSharingInteractionSession.__allocating_init(session:controller:serverBag:contactManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_288();
  v4 = swift_allocObject();
  ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)();
  return v4;
}

void ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v76 = v2;
  v4 = v3;
  v73 = v5;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_15ConversationKit013RemoteControlE0OGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_15ConversationKit013RemoteControlE0OGMR);
  OUTLINED_FUNCTION_1();
  v71 = v9;
  v72 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v70 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  v69 = v14;
  OUTLINED_FUNCTION_4_24();
  v75 = type metadata accessor for ControlMessageSession.Role();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v74 = v19 - v18;
  OUTLINED_FUNCTION_4_24();
  v20 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  v27 = type metadata accessor for DeviceInactivityObserver(0);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  OUTLINED_FUNCTION_84(v27);
  *(v0 + 88) = DeviceInactivityObserver.init(inactivityTimeout:)(2);
  v28 = type metadata accessor for DisplayLayerVisibilityObserver(0);
  OUTLINED_FUNCTION_84(v28);
  *(v0 + 96) = DisplayLayerVisibilityObserver.init()();
  *(v0 + 152) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 176) = v4;
  v77 = v4;
  if (GroupSession.isLocallyInitiated.getter())
  {
    v29 = 0xA000000000000008;
  }

  else
  {
    v29 = 0xA000000000000010;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15ConversationKit18RemoteControlStateOSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15ConversationKit18RemoteControlStateOSo16os_unfair_lock_sVGMR);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 16) = v29;
  *(v0 + 136) = v29;
  *(v0 + 144) = v30;
  v31 = *(v22 + 104);
  v31(v26, *MEMORY[0x1E696B260], v20);
  v32 = type metadata accessor for GroupSessionMessenger();
  OUTLINED_FUNCTION_84(v32);
  outlined copy of RemoteControlState(v29);

  *(v0 + 40) = GroupSessionMessenger.init<A>(session:deliveryMode:)();
  v31(v26, *MEMORY[0x1E696B268], v20);
  swift_allocObject();
  OUTLINED_FUNCTION_246();

  v33 = GroupSessionMessenger.init<A>(session:deliveryMode:)();
  v1[6] = v33;
  v34 = v1[5];
  v35 = type metadata accessor for ScreenSharingInteractionTransport(0);
  v36 = OUTLINED_FUNCTION_84(v35);

  ScreenSharingInteractionTransport.init(session:unreliableMessenger:reliableMessenger:)(v7, v34, v33);
  v1[2] = v36;
  v1[3] = v7;

  v37 = GroupSession.isLocallyInitiated.getter();
  v38 = MEMORY[0x1E69C9D70];
  if ((v37 & 1) == 0)
  {
    v38 = MEMORY[0x1E69C9D78];
  }

  (*(v16 + 104))(v74, *v38, v75);
  type metadata accessor for ControlMessageSession();
  OUTLINED_FUNCTION_12_63();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v39, v40, &protocol conformance descriptor for ScreenSharingInteractionTransport);
  v1[4] = ControlMessageSession.__allocating_init(transport:role:)();
  swift_unknownObjectUnownedInit();
  v1[20] = v76;
  v41 = v76;
  if (GroupSession.isLocallyInitiated.getter())
  {
    type metadata accessor for ScreenSharingInteractionTelemetryConsumer();
    v42 = swift_allocObject();
    *(v42 + 24) = 0u;
    *(v42 + 40) = 0u;
    *(v42 + 56) = 0;
    *(v42 + 16) = v7;
    lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(&lazy protocol witness table cache variable for type ScreenSharingInteractionTelemetryConsumer and conformance ScreenSharingInteractionTelemetryConsumer, type metadata accessor for ScreenSharingInteractionTelemetryConsumer, &protocol conformance descriptor for ScreenSharingInteractionTelemetryConsumer);
    v43 = type metadata accessor for FaceTimeTelemetryVendor();
    OUTLINED_FUNCTION_84(v43);
    OUTLINED_FUNCTION_246();

    FaceTimeTelemetryVendor.init(customTelemetryConsumer:)();
    v44 = dispatch thunk of FaceTimeTelemetryVendor.createTelemetryProvider()();
    v1[7] = v42;

    type metadata accessor for PlaybackServer();

    v45 = v44;
    OUTLINED_FUNCTION_173_1();
    v46 = PlaybackServer.__allocating_init(session:telemetry:interruptionHandler:)();
    v47 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_168(v69, v48, v49, v47);
    v50 = OUTLINED_FUNCTION_3_2(&unk_1F3AE53C8);
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v46;

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    v1[8] = v51;

    swift_beginAccess();
    v1[9] = v46;

    ScreenSharingInteractionSession.observeInteractionState()();
  }

  else
  {
    type metadata accessor for CaptureUIInteraction();

    v52 = CaptureUIInteraction.__allocating_init(session:interruptionHandler:)();
    swift_beginAccess();
    v53 = v1[10];
    v1[10] = v52;
  }

  if (FTServerBag.remoteControlEnabled.getter())
  {
    type metadata accessor for RemoteControlMessage(0);
    lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(&lazy protocol witness table cache variable for type RemoteControlMessage and conformance RemoteControlMessage, type metadata accessor for RemoteControlMessage, &protocol conformance descriptor for RemoteControlMessage);
    OUTLINED_FUNCTION_27_38();
    lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v54, type metadata accessor for RemoteControlMessage, v55);
    OUTLINED_FUNCTION_288();

    GroupSessionMessenger.receive<A>(_:)();

    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for closure #4 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:);
    *(v56 + 24) = v1;
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GroupSessionMessenger.MessageStream<RemoteControlMessage> and conformance GroupSessionMessenger.MessageStream<A>, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_15ConversationKit013RemoteControlE0OGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_15ConversationKit013RemoteControlE0OGMR, MEMORY[0x1E696B270]);
    OUTLINED_FUNCTION_28_0();

    v57 = Publisher<>.sink(receiveValue:)();

    (*(v71 + 8))(v70, v72);
    v1[15] = v57;
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v58, &static Log.screenSharing);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v60))
    {
      v61 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v61);
      OUTLINED_FUNCTION_140();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }

  OUTLINED_FUNCTION_0_1();
  v68 = *(v67 + 384);

  v68(v1, &protocol witness table for ScreenSharingInteractionSession);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for InteractionState();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMR);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:), 0, 0);
}

uint64_t closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)()
{
  OUTLINED_FUNCTION_48();
  PlaybackServer.$isActive.getter();
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2, v3, v4);
  OUTLINED_FUNCTION_186_0();
  v5 = OUTLINED_FUNCTION_316();
  v6(v5);
  AsyncPublisher.makeAsyncIterator()();
  v7 = OUTLINED_FUNCTION_43_0();
  v8(v7);
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 136) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_56_13(v9);

  return MEMORY[0x1EEE6D8C8](v11);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  *(v0 + 177) = *(v0 + 176);
  return OUTLINED_FUNCTION_7_82(closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:));
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 177);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 152) = __swift_project_value_buffer(v2, &static Log.screenSharing);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v5);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    static InteractionState.draw.getter();
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:);
    v12 = OUTLINED_FUNCTION_71_10(*(v0 + 56));

    return MEMORY[0x1EEE33AB0](v12);
  }

  else
  {
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    *(v0 + 136) = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_56_13(v13);

    return MEMORY[0x1EEE6D8C8](v15);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 16) = *(v0 + 144);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = MEMORY[0x1E69E73E0];
  v3 = OUTLINED_FUNCTION_31_9(v1);
  v4 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v3, v2, v4);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 168) = v0;

  v7 = OUTLINED_FUNCTION_316();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_319();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_319();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v22 = *(v18 + 168);
  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v18 + 168);
    OUTLINED_FUNCTION_13_10();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v28 = swift_slowAlloc();
    a9 = v28;
    *v27 = 136315138;
    *(v18 + 24) = v26;
    v29 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v30 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &a9);
    OUTLINED_FUNCTION_420();
    *(v27 + 4) = v19;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
    v37 = *(v18 + 168);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

void closure #1 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(void *a1, const char *a2, ...)
{
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_50_17(v4, &static Log.screenSharing);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    OUTLINED_FUNCTION_13_10();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v13 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, oslog, v6, a2, v7, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
  }
}

uint64_t closure #4 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlMessageOSgMd, &_s15ConversationKit20RemoteControlMessageOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for RemoteControlMessage(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, &static Log.screenSharing);
  outlined init with copy of RemoteControlMessage(a1, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v6;
    v21 = v20;
    v35 = v20;
    *v19 = 136315138;
    outlined init with copy of RemoteControlMessage(v14, v11);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    specialized >> prefix<A>(_:)();
    v23 = v22;
    v32 = a1;
    v24 = v5;
    v26 = v25;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit20RemoteControlMessageOSgMd, &_s15ConversationKit20RemoteControlMessageOSgMR);
    outlined destroy of RemoteControlMessage(v14, type metadata accessor for RemoteControlMessage);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, &v35);
    v5 = v24;

    *(v19 + 4) = v27;
    _os_log_impl(&dword_1BBC58000, v16, v17, "Received remote control message: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v28 = v21;
    v6 = v31;
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  else
  {

    outlined destroy of RemoteControlMessage(v14, type metadata accessor for RemoteControlMessage);
  }

  GroupSessionMessenger.MessageContext.source.getter();
  ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:)();
  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall ScreenSharingInteractionSession.setup()()
{
  v2 = v0;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Log.screenSharing);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v1, "Setting up state machine and triggering state update", v6, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *(v2 + 144);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  outlined copy of RemoteControlState(v9);
  os_unfair_lock_unlock((v8 + 24));
  v10 = v9;
  ScreenSharingInteractionController.session(_:didUpdateState:)(v2, &v10);

  outlined consume of RemoteControlState(v10);
}

Swift::Void __swiftcall ScreenSharingInteractionSession.invalidate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16_4();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Log.screenSharing);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = GroupSession.isLocallyInitiated.getter() & 1;

    _os_log_impl(&dword_1BBC58000, v4, v5, "Invalidating group session (locallyInitiated=%{BOOL}d", v6, 8u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
  }

  if (v0[14])
  {

    AnyCancellable.cancel()();
  }

  if (v0[13])
  {

    AnyCancellable.cancel()();
  }

  if (v0[8])
  {

    MEMORY[0x1BFB21000](v7, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  if (v0[15])
  {

    AnyCancellable.cancel()();
  }

  OUTLINED_FUNCTION_0_1();
  (*(v8 + 160))();
  v9 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_111_5(v9);
  v10 = OUTLINED_FUNCTION_3_2(&unk_1F3AE53F0);
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v0;

  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();

  ScreenSharingInteractionTransport.invalidate()();
}

uint64_t closure #1 in ScreenSharingInteractionSession.invalidate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.invalidate(), 0, 0);
}

uint64_t closure #1 in ScreenSharingInteractionSession.invalidate()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 288))();
  *(v0 + 32) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_130(v3);

    return MEMORY[0x1EEE33A98](1);
  }

  else
  {
    **(v0 + 16) = 1;
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t ScreenSharingInteractionSession.presentRemoteControlOnboarding()()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_109_4();
  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v2, v4, v5, v3);
  v6 = OUTLINED_FUNCTION_3_2(&unk_1F3AE5418);
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_5_102();

  return v7();
}

uint64_t closure #1 in ScreenSharingInteractionSession.presentRemoteControlOnboarding()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestVSgMd, &_s15ConversationKit20RemoteControlRequestVSgMR);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for Participant();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for RemoteControlRequest(0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.presentRemoteControlOnboarding(), 0, 0);
}

uint64_t ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[13] = v2;
  v1[14] = v0;
  OUTLINED_FUNCTION_166_1(v3);
  v4 = type metadata accessor for Participants();
  v1[15] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_109_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlMessageOSgMd, &_s15ConversationKit20RemoteControlMessageOSgMR);
  OUTLINED_FUNCTION_22(v6);
  v1[18] = OUTLINED_FUNCTION_109_4();
  v7 = type metadata accessor for RemoteControlResponse(0);
  v1[19] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[20] = OUTLINED_FUNCTION_109_4();
  v8 = type metadata accessor for RemoteControlMessage(0);
  v1[21] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[22] = OUTLINED_FUNCTION_74();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[29] = v0;

  v6 = v2[17];
  v7 = v2[16];
  v8 = v2[15];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v12 = swift_task_alloc();
    v3[30] = v12;
    *v12 = v5;
    v12[1] = ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:);

    return ScreenSharingInteractionSession.updateInteractionState()();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_4_116();
  outlined init with copy of RemoteControlMessage(v2, v1);
  OUTLINED_FUNCTION_38_2();
  v3 = 1 << swift_getEnumCaseMultiPayload();
  if ((v3 & 0xE) != 0)
  {
    v17 = *(v0 + 112);
    OUTLINED_FUNCTION_1_131();
    outlined destroy of RemoteControlMessage(v18, v19);
    *(v0 + 56) = -1;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    v20 = *v17;
    *(v0 + 248) = *(*v17 + 704);
    *(v0 + 256) = (v20 + 704) & 0xFFFFFFFFFFFFLL | 0x31C4000000000000;
    type metadata accessor for MainActor();
    *(v0 + 264) = OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_28_0();
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_21_1();
    v21 = OUTLINED_FUNCTION_1_4();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }

  else
  {
    if ((v3 & 0x31) != 0)
    {
      OUTLINED_FUNCTION_1_131();
      outlined destroy of RemoteControlMessage(v4, v5);
      Strong = swift_unknownObjectUnownedLoadStrong();
      OUTLINED_FUNCTION_159_1();
      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_59_9(v7, v8, v9, v10, v11, v12, v13, v14, v24, v25);

      outlined consume of RemoteControlState(v26);
    }

    OUTLINED_FUNCTION_109_5();

    OUTLINED_FUNCTION_5_102();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 248);

  v1(v0 + 16);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 16, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_48();
  Strong = swift_unknownObjectUnownedLoadStrong();
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_59_9(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  outlined consume of RemoteControlState(v13);
  OUTLINED_FUNCTION_109_5();

  OUTLINED_FUNCTION_5_102();

  return v9();
}

uint64_t ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_36_3();
  if (FTServerBag.remoteControlEnabled.getter())
  {
    OUTLINED_FUNCTION_142_1();
    swift_beginAccess();
    OUTLINED_FUNCTION_45_1();
    RemoteControlStateMachine.validateOutgoingMessage(_:to:)();
    v35 = (v16 + 200);
    swift_endAccess();
    OUTLINED_FUNCTION_4_116();
    v36 = OUTLINED_FUNCTION_4_31();
    outlined init with copy of RemoteControlMessage(v36, v37);
    OUTLINED_FUNCTION_38_2();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_1_131();
    switch(v38)
    {
      case 1:
        v35 = (v16 + 160);
        v71 = *(v16 + 160);
        v72 = *(v16 + 152);
        OUTLINED_FUNCTION_73_9();
        outlined init with take of RemoteControlResponse(v73, v71);
        if (*(v71 + *(v72 + 28)) == 1)
        {
          v74 = *(**(v16 + 112) + 576);
          v84 = **(v16 + 112) + 576;
          v85 = v74 + *v74;
          v75 = swift_task_alloc();
          *(v16 + 208) = v75;
          *v75 = v16;
          v75[1] = ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:);
          OUTLINED_FUNCTION_12_4();

          result = v76(v76, v77, v78, v79, v80, v81, v82, v83, a9, v84, v85, a12, a13, a14, a15, a16);
        }

        else
        {
          v39 = type metadata accessor for RemoteControlResponse;
LABEL_12:
          outlined destroy of RemoteControlMessage(*v35, v39);
          if (one-time initialization token for screenSharing != -1)
          {
            OUTLINED_FUNCTION_0_162();
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          v41 = __swift_project_value_buffer(v40, &static Log.screenSharing);
          OUTLINED_FUNCTION_4_116();
          v42 = OUTLINED_FUNCTION_46();
          outlined init with copy of RemoteControlMessage(v42, v43);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          v46 = OUTLINED_FUNCTION_22_0(v45);
          v47 = *(v16 + 192);
          if (v46)
          {
            v48 = *(v16 + 144);
            OUTLINED_FUNCTION_13_10();
            swift_slowAlloc();
            OUTLINED_FUNCTION_21_4();
            OUTLINED_FUNCTION_89_3();
            *v41 = 136315138;
            OUTLINED_FUNCTION_4_116();
            OUTLINED_FUNCTION_145_2();
            OUTLINED_FUNCTION_15_47();
            specialized >> prefix<A>(_:)();
            OUTLINED_FUNCTION_29_13();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit20RemoteControlMessageOSgMd, &_s15ConversationKit20RemoteControlMessageOSgMR);
            OUTLINED_FUNCTION_1_131();
            outlined destroy of RemoteControlMessage(v47, v49);
            v50 = OUTLINED_FUNCTION_21_20();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v52);
            OUTLINED_FUNCTION_146_0();
            *(v41 + 4) = v47;
            OUTLINED_FUNCTION_112_0();
            _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
            OUTLINED_FUNCTION_9_7();
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
          }

          else
          {

            OUTLINED_FUNCTION_1_131();
            outlined destroy of RemoteControlMessage(v47, v58);
          }

          static Participants.only(_:)();
          v59 = swift_task_alloc();
          *(v16 + 224) = v59;
          OUTLINED_FUNCTION_74_8();
          lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v60, v41, &protocol conformance descriptor for RemoteControlMessage);
          OUTLINED_FUNCTION_27_38();
          lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v61, v41, v62);
          *v59 = v16;
          OUTLINED_FUNCTION_55_15();
          OUTLINED_FUNCTION_12_4();

          result = MEMORY[0x1EEDC7410](v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        break;
      case 6:
        goto LABEL_8;
      default:
        goto LABEL_12;
    }
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v17, &static Log.screenSharing);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_22_0(v19))
    {
      v20 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v20);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

LABEL_8:
    OUTLINED_FUNCTION_109_5();

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_12_4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  return result;
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v17, v18);
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, &static Log.screenSharing);
  OUTLINED_FUNCTION_4_116();
  v21 = OUTLINED_FUNCTION_46();
  outlined init with copy of RemoteControlMessage(v21, v22);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = OUTLINED_FUNCTION_22_0(v24);
  v26 = v16[24];
  if (v25)
  {
    v27 = v16[18];
    OUTLINED_FUNCTION_13_10();
    swift_slowAlloc();
    OUTLINED_FUNCTION_21_4();
    *v20 = 136315138;
    OUTLINED_FUNCTION_4_116();
    OUTLINED_FUNCTION_145_2();
    OUTLINED_FUNCTION_15_47();
    specialized >> prefix<A>(_:)();
    OUTLINED_FUNCTION_29_13();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s15ConversationKit20RemoteControlMessageOSgMd, &_s15ConversationKit20RemoteControlMessageOSgMR);
    OUTLINED_FUNCTION_1_131();
    outlined destroy of RemoteControlMessage(v26, v28);
    v29 = OUTLINED_FUNCTION_21_20();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v31);
    OUTLINED_FUNCTION_146_0();
    *(v20 + 4) = v26;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {

    OUTLINED_FUNCTION_1_131();
    outlined destroy of RemoteControlMessage(v26, v37);
  }

  static Participants.only(_:)();
  v38 = swift_task_alloc();
  v16[28] = v38;
  OUTLINED_FUNCTION_74_8();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v39, v20, &protocol conformance descriptor for RemoteControlMessage);
  OUTLINED_FUNCTION_27_38();
  lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(v40, v20, v41);
  *v38 = v16;
  v42 = OUTLINED_FUNCTION_55_15();

  return MEMORY[0x1EEDC7410](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v10, v11);
  OUTLINED_FUNCTION_185_1();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_185_1();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t ScreenSharingInteractionSession.beginRemoteControlSession()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_7_82(ScreenSharingInteractionSession.beginRemoteControlSession());
}

{
  OUTLINED_FUNCTION_24_0();
  ScreenSharingInteractionSession.observeDisplayLayerVisibility()();
  OUTLINED_FUNCTION_5_102();

  return v0();
}

uint64_t ScreenSharingInteractionSession.cancelRemoteControlRequest()()
{
  OUTLINED_FUNCTION_24_0();
  v1[6] = v0;
  v2 = type metadata accessor for RemoteControlMessage(0);
  v1[7] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[8] = OUTLINED_FUNCTION_109_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestVSgMd, &_s15ConversationKit20RemoteControlRequestVSgMR);
  OUTLINED_FUNCTION_22(v3);
  v1[9] = OUTLINED_FUNCTION_109_4();
  v4 = type metadata accessor for Participant();
  v1[10] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[11] = v5;
  v6 = OUTLINED_FUNCTION_109_4();
  v7 = OUTLINED_FUNCTION_166_1(v6);
  v8 = type metadata accessor for RemoteControlRequest(v7);
  v1[13] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[14] = OUTLINED_FUNCTION_74();
  v1[15] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[15];
  v2 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v1, v3);
  outlined consume of RemoteControlState(v2);

  OUTLINED_FUNCTION_5_102();

  return v4();
}

{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  v1 = v0[15];
  v2 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v1, v3);
  outlined consume of RemoteControlState(v2);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_194_2();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t ScreenSharingInteractionSession.cancelRemoteControlRequest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_116_0();
  v16 = v14[6];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v17 = *(v16 + 144);
  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);
  v14[16] = v18;
  OUTLINED_FUNCTION_177_2();
  switch(v18 >> 61)
  {
    case 1uLL:
      v44 = v14[15];
      v46 = v14[11];
      v45 = v14[12];
      v47 = v14[10];
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd, &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMR);
      v49 = swift_projectBox();
      v50 = *(v48 + 48);
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v51, v44);
      (*(v46 + 16))(v45, v49 + v50, v47);
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      v53 = __swift_project_value_buffer(v52, &static Log.screenSharing);
      OUTLINED_FUNCTION_2_126();
      v54 = OUTLINED_FUNCTION_38_2();
      outlined init with copy of RemoteControlMessage(v54, v55);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      v58 = OUTLINED_FUNCTION_22_0(v57);
      v59 = v14[14];
      if (v58)
      {
        v60 = v14[9];
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        *v53 = 136315138;
        OUTLINED_FUNCTION_2_126();
        OUTLINED_FUNCTION_145_2();
        OUTLINED_FUNCTION_15_47();
        specialized >> prefix<A>(_:)();
        OUTLINED_FUNCTION_29_13();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s15ConversationKit20RemoteControlRequestVSgMd, &_s15ConversationKit20RemoteControlRequestVSgMR);
        OUTLINED_FUNCTION_3_123();
        outlined destroy of RemoteControlMessage(v59, v61);
        v62 = OUTLINED_FUNCTION_21_20();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v64);
        OUTLINED_FUNCTION_146_0();
        *(v53 + 4) = v59;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      else
      {

        OUTLINED_FUNCTION_3_123();
        outlined destroy of RemoteControlMessage(v59, v70);
      }

      v71 = v14[8];
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v72, v71);
      OUTLINED_FUNCTION_38_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_57_8();
      v85 = v73 + 568;
      v86 = *(v73 + 568) + **(v73 + 568);
      v74 = swift_task_alloc();
      v75 = OUTLINED_FUNCTION_119_2(v74);
      *v75 = v76;
      v75[1] = ScreenSharingInteractionSession.cancelRemoteControlRequest();
      OUTLINED_FUNCTION_71_10(v14[8]);
      OUTLINED_FUNCTION_79_9();

      result = v79(v77, v78, v79, v80, v81, v82, v83, v84, a9, v85, v86, a12, a13, a14);
      break;
    case 5uLL:
      goto LABEL_3;
    default:
      outlined consume of RemoteControlState(v18);
LABEL_3:
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v19 = v14[6];
      v20 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_50_17(v20, &static Log.screenSharing);

      v21 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      OUTLINED_FUNCTION_72_12();

      if (OUTLINED_FUNCTION_112_2())
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_153_1(4.8149e-34);
        OUTLINED_FUNCTION_46_19();
        v14[5] = v16;
        v22 = String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_161_1(v22, v23, v24, v25, v26, v27, v28, v29);
        OUTLINED_FUNCTION_102_1();
        *(v19 + 4) = v15;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      OUTLINED_FUNCTION_5_102();
      OUTLINED_FUNCTION_79_9();

      result = v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
      break;
  }

  return result;
}

uint64_t ScreenSharingInteractionSession.endRemoteControlSession()()
{
  OUTLINED_FUNCTION_24_0();
  v1[7] = v0;
  v2 = type metadata accessor for RemoteControlMessage(0);
  v1[8] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[9] = OUTLINED_FUNCTION_109_4();
  v3 = type metadata accessor for Participant();
  v1[10] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[11] = v4;
  v5 = OUTLINED_FUNCTION_109_4();
  v6 = OUTLINED_FUNCTION_166_1(v5);
  v7 = type metadata accessor for RemoteControlRequest(v6);
  OUTLINED_FUNCTION_22(v7);
  v1[13] = OUTLINED_FUNCTION_109_4();
  v8 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  v10 = OUTLINED_FUNCTION_44_0();
  v11(v10);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_162_0();

  OUTLINED_FUNCTION_5_102();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_162_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t ScreenSharingInteractionSession.endRemoteControlSession()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_116_0();
  v17 = v15[7];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v18 = *(v17 + 144);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);
  OUTLINED_FUNCTION_177_2();
  v20 = v19;
  switch(v19 >> 61)
  {
    case 2uLL:
    case 3uLL:
      goto LABEL_11;
    case 4uLL:
      v20 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (v20 >> 62 != 1)
      {
        goto LABEL_2;
      }

LABEL_11:
      v46 = v15[12];
      v45 = v15[13];
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd, &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMR);
      v48 = swift_projectBox();
      v49 = *(v47 + 48);
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v50, v45);
      v51 = OUTLINED_FUNCTION_86_3();
      v52(v51);
      outlined consume of RemoteControlState(v19);
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v53 = OUTLINED_FUNCTION_190_0();
      OUTLINED_FUNCTION_50_17(v53, &static Log.screenSharing);

      v54 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_72_12();

      if (OUTLINED_FUNCTION_112_2())
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_154_1(4.8149e-34);
        OUTLINED_FUNCTION_46_19();
        v15[6] = v49;
        v55 = String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_161_1(v55, v56, v57, v58, v59, v60, v61, v62);
        OUTLINED_FUNCTION_102_1();
        *(v46 + 4) = v48;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      v68 = v15[7];
      if (*(v68 + 104))
      {

        AnyCancellable.cancel()();

        v68 = v15[7];
      }

      if (*(v68 + 112))
      {

        AnyCancellable.cancel()();
      }

      v69 = v15[9];
      OUTLINED_FUNCTION_28_40();
      outlined init with take of RemoteControlResponse(v70, v69);
      OUTLINED_FUNCTION_44_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_38_4();
      v81 = v71 + 568;
      v82 = *(v71 + 568) + **(v71 + 568);
      v72 = swift_task_alloc();
      v15[14] = v72;
      *v72 = v15;
      v72[1] = ScreenSharingInteractionSession.endRemoteControlSession();
      OUTLINED_FUNCTION_71_10(v15[9]);
      OUTLINED_FUNCTION_79_9();

      result = v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, v81, v82, a12, a13, a14);
      break;
    case 5uLL:
      goto LABEL_3;
    default:
LABEL_2:
      outlined consume of RemoteControlState(v19);
LABEL_3:
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v21 = OUTLINED_FUNCTION_190_0();
      OUTLINED_FUNCTION_50_17(v21, &static Log.screenSharing);

      v22 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      OUTLINED_FUNCTION_72_12();

      if (OUTLINED_FUNCTION_112_2())
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_154_1(4.8149e-34);
        OUTLINED_FUNCTION_46_19();
        v15[5] = v16;
        v23 = String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_161_1(v23, v24, v25, v26, v27, v28, v29, v30);
        OUTLINED_FUNCTION_102_1();
        *(v14 + 4) = v20;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      OUTLINED_FUNCTION_162_0();

      OUTLINED_FUNCTION_5_102();
      OUTLINED_FUNCTION_79_9();

      result = v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
      break;
  }

  return result;
}

uint64_t ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  *(v1 + 64) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v4);
  *(v1 + 72) = OUTLINED_FUNCTION_109_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  *(v1 + 80) = v5;
  OUTLINED_FUNCTION_22(v5);
  *(v1 + 88) = OUTLINED_FUNCTION_109_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GMR);
  *(v1 + 96) = v6;
  OUTLINED_FUNCTION_22(v6);
  *(v1 + 104) = OUTLINED_FUNCTION_109_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AA9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GAIySb_GGMd, &_s7Combine10PublishersO0A6LatestVy_AA9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GAIySb_GGMR);
  *(v1 + 112) = v7;
  OUTLINED_FUNCTION_9_0(v7);
  *(v1 + 120) = v8;
  *(v1 + 128) = *(v9 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_74();
  *(v1 + 144) = swift_task_alloc();
  v10 = type metadata accessor for RemoteControlMessage(0);
  *(v1 + 152) = v10;
  OUTLINED_FUNCTION_22(v10);
  *(v1 + 160) = OUTLINED_FUNCTION_109_4();
  v11 = type metadata accessor for RemoteControlSuspendRequest(0);
  *(v1 + 168) = v11;
  OUTLINED_FUNCTION_22(v11);
  *(v1 + 176) = OUTLINED_FUNCTION_109_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestVSgMd, &_s15ConversationKit20RemoteControlRequestVSgMR);
  OUTLINED_FUNCTION_22(v12);
  *(v1 + 184) = OUTLINED_FUNCTION_109_4();
  v13 = type metadata accessor for Participant();
  *(v1 + 192) = v13;
  OUTLINED_FUNCTION_9_0(v13);
  *(v1 + 200) = v14;
  *(v1 + 208) = OUTLINED_FUNCTION_74();
  *(v1 + 216) = swift_task_alloc();
  v15 = type metadata accessor for RemoteControlRequest(0);
  *(v1 + 224) = v15;
  OUTLINED_FUNCTION_22(v15);
  *(v1 + 232) = OUTLINED_FUNCTION_74();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 280) = *v3;
  v16 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  v10 = OUTLINED_FUNCTION_44_0();
  v11(v10);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36_3();
  a23 = v28;
  a24 = v29;
  a22 = v25;
  v30 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  os_unfair_lock_lock((*(v30 + 144) + 24));
  OUTLINED_FUNCTION_121_0();
  switch(v24 >> 61)
  {
    case 3uLL:
      v66 = *(v25 + 248);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd, &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMR);
      swift_projectBox();
      OUTLINED_FUNCTION_2_126();
      outlined init with copy of RemoteControlMessage(v67, v66);
      v68 = OUTLINED_FUNCTION_86_3();
      v69(v68);
      v70 = 0;
      goto LABEL_20;
    case 4uLL:
      if (*((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 == 3 && *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 1)
      {
        v52 = *(v25 + 280);
        v53 = *(v25 + 240);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd, &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMR);
        swift_projectBox();
        OUTLINED_FUNCTION_2_126();
        outlined init with copy of RemoteControlMessage(v54, v53);
        v55 = OUTLINED_FUNCTION_86_3();
        v56(v55);
        if (v52 != 1)
        {
          v124 = *(v25 + 208);
          v123 = *(v25 + 216);
          v125 = *(v25 + 192);
          v126 = *(v25 + 200);
          OUTLINED_FUNCTION_28_40();
          outlined init with take of RemoteControlResponse(v127, v128);
          (*(v126 + 32))(v123, v124, v125);
          v70 = 1;
LABEL_20:
          *(v25 + 281) = v70;
          outlined consume of RemoteControlState(v24);
          if (one-time initialization token for screenSharing != -1)
          {
            OUTLINED_FUNCTION_0_162();
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          v72 = __swift_project_value_buffer(v71, &static Log.screenSharing);
          *(v25 + 256) = v72;
          OUTLINED_FUNCTION_2_126();
          v73 = OUTLINED_FUNCTION_38_2();
          outlined init with copy of RemoteControlMessage(v73, v74);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.default.getter();
          v77 = OUTLINED_FUNCTION_22_0(v76);
          v78 = *(v25 + 232);
          if (v77)
          {
            v79 = *(v25 + 184);
            OUTLINED_FUNCTION_13_10();
            swift_slowAlloc();
            a13 = OUTLINED_FUNCTION_21_4();
            *v72 = 136315138;
            OUTLINED_FUNCTION_2_126();
            OUTLINED_FUNCTION_145_2();
            OUTLINED_FUNCTION_15_47();
            specialized >> prefix<A>(_:)();
            OUTLINED_FUNCTION_29_13();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v79, &_s15ConversationKit20RemoteControlRequestVSgMd, &_s15ConversationKit20RemoteControlRequestVSgMR);
            OUTLINED_FUNCTION_3_123();
            outlined destroy of RemoteControlMessage(v78, v80);
            v81 = OUTLINED_FUNCTION_21_20();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v83);
            OUTLINED_FUNCTION_146_0();
            *(v72 + 4) = v78;
            OUTLINED_FUNCTION_112_0();
            _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
            OUTLINED_FUNCTION_9_7();
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
          }

          else
          {

            OUTLINED_FUNCTION_3_123();
            outlined destroy of RemoteControlMessage(v78, v103);
          }

          v104 = *(v25 + 280);
          v105 = *(v25 + 248);
          v107 = *(v25 + 168);
          v106 = *(v25 + 176);
          v108 = *(v25 + 64);
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_7_0();
          v109 = OUTLINED_FUNCTION_46();
          v110(v109);
          OUTLINED_FUNCTION_3_123();
          outlined destroy of RemoteControlMessage(v105, v111);
          Date.init()();
          *(v106 + *(v107 + 24)) = v104;
          v112 = OUTLINED_FUNCTION_44_0();
          outlined init with copy of RemoteControlMessage(v112, v113);
          OUTLINED_FUNCTION_316();
          swift_storeEnumTagMultiPayload();
          v131 = (*v108 + 568);
          v133 = *v131 + **v131;
          v114 = swift_task_alloc();
          *(v25 + 264) = v114;
          *v114 = v25;
          v114[1] = ScreenSharingInteractionSession.suspendRemoteControlSession(reason:);
          OUTLINED_FUNCTION_71_10(*(v25 + 160));
          OUTLINED_FUNCTION_12_4();

          return v117(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, v131, v133, a13, a14, a15, a16);
        }

        if (one-time initialization token for screenSharing != -1)
        {
          OUTLINED_FUNCTION_0_162();
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v57, &static Log.screenSharing);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        v60 = os_log_type_enabled(v58, v59);
        v61 = *(v25 + 240);
        if (v60)
        {
          v62 = OUTLINED_FUNCTION_33();
          *v62 = 0;
          _os_log_impl(&dword_1BBC58000, v58, v59, "Remote control session is already suspended w/ deviceActivity.", v62, 2u);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        v63 = OUTLINED_FUNCTION_32_2();
        v64(v63);
        OUTLINED_FUNCTION_3_123();
        outlined destroy of RemoteControlMessage(v61, v65);
      }

      else
      {
        if (one-time initialization token for screenSharing != -1)
        {
          OUTLINED_FUNCTION_0_162();
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v89, &static Log.screenSharing);

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v90, v91))
        {
          OUTLINED_FUNCTION_13_10();
          v92 = swift_slowAlloc();
          OUTLINED_FUNCTION_12_0();
          v93 = swift_slowAlloc();
          a13 = v93;
          *v92 = 136315138;
          v94 = *(v30 + 144);
          os_unfair_lock_lock((v94 + 24));
          v95 = *(v94 + 16);
          outlined copy of RemoteControlState(v95);
          os_unfair_lock_unlock((v94 + 24));
          *(v25 + 56) = v95;
          v96 = String.init<A>(reflecting:)();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &a13);
          OUTLINED_FUNCTION_420();
          *(v92 + 4) = v94;
          OUTLINED_FUNCTION_140();
          _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }
      }

      outlined consume of RemoteControlState(v24);
LABEL_8:
      OUTLINED_FUNCTION_95_4();
      v129 = v42;
      v130 = v41;
      v132 = *(v25 + 72);

      OUTLINED_FUNCTION_5_102();
      OUTLINED_FUNCTION_12_4();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v129, v130, v132, a13, a14, a15, a16);
    case 5uLL:
      goto LABEL_3;
    default:
      outlined consume of RemoteControlState(v24);
LABEL_3:
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v31 = *(v25 + 64);
      v32 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_50_17(v32, &static Log.screenSharing);

      v33 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      OUTLINED_FUNCTION_72_12();

      if (OUTLINED_FUNCTION_112_2())
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        a13 = OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_154_1(4.8149e-34);
        OUTLINED_FUNCTION_46_19();
        *(v25 + 40) = v26;
        v34 = String.init<A>(reflecting:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &a13);
        OUTLINED_FUNCTION_102_1();
        *(v31 + 4) = v27;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      goto LABEL_8;
  }
}

uint64_t ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_87_5();
  a25 = v29;
  a26 = v30;
  OUTLINED_FUNCTION_103_3();
  a24 = v27;
  v31 = *(v27 + 64);
  OUTLINED_FUNCTION_75_10();
  outlined destroy of RemoteControlMessage(v32, v33);
  os_unfair_lock_lock((*(v31 + 144) + 24));
  OUTLINED_FUNCTION_121_0();
  outlined consume of RemoteControlState(v26);
  if (v26 >> 61 == 4)
  {
    v34 = *(v27 + 281);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = OUTLINED_FUNCTION_22_0(v36);
    if (v34)
    {
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v38);
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      goto LABEL_14;
    }

    if (v37)
    {
      v54 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v54);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v55, v56, v57, v58, v59, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    v60 = *(v27 + 144);
    v61 = *(v27 + 120);
    v85 = *(v27 + 136);
    v87 = *(v27 + 128);
    a10 = *(v27 + 96);
    a11 = *(v27 + 72);
    v83 = *(v27 + 112);
    v62 = *(v27 + 64);

    OUTLINED_FUNCTION_0_1();
    (*(v63 + 128))();
    OUTLINED_FUNCTION_0_1();
    (*(v64 + 128))();
    v65 = MEMORY[0x1E695C068];
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<DeviceInactivityObserver.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GMR, MEMORY[0x1E695C068]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, v65);
    OUTLINED_FUNCTION_173_1();
    Publishers.CombineLatest.init(_:_:)();
    v66 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_111_5(v66);
    OUTLINED_FUNCTION_20();
    v67 = swift_allocObject();
    swift_weakInit();
    (*(v61 + 16))(v85, v60, v83);
    v68 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    (*(v61 + 32))(v69 + v68, v85, v83);
    *(v69 + ((v87 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v67;
    OUTLINED_FUNCTION_59();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
    OUTLINED_FUNCTION_24_1();
    v70 = type metadata accessor for AnyCancellable();
    OUTLINED_FUNCTION_84(v70);
    v71 = AnyCancellable.init(_:)();
    (*(v61 + 8))(v60, v83);
    *(v62 + 112) = v71;
LABEL_13:

    goto LABEL_14;
  }

  v44 = *(v27 + 64);

  v45 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_72_12();

  if (OUTLINED_FUNCTION_112_2())
  {
    v46 = *(v27 + 64);
    OUTLINED_FUNCTION_13_10();
    swift_slowAlloc();
    a15 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_153_1(4.8149e-34);
    OUTLINED_FUNCTION_46_19();
    *(v27 + 48) = v46;
    v47 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &a15);
    OUTLINED_FUNCTION_102_1();
    *(v44 + 4) = v28;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (*(*(v27 + 64) + 112))
  {

    AnyCancellable.cancel()();
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_95_4();
  v84 = v73;
  v86 = v72;
  v88 = *(v27 + 72);

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_63_11();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, v84, v86, v88, a15, a16, a17, a18);
}

uint64_t ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_36_3();
  v17 = v16[22];
  v28 = v16[17];
  v29 = v16[13];
  v30 = v16[11];
  v31 = v16[9];
  OUTLINED_FUNCTION_75_10();
  outlined destroy of RemoteControlMessage(v17, v18);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_4();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, v30, v31, a14, a15, a16);
}

uint64_t closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAKySb_GGGMd, &_s7Combine14AsyncPublisherVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAKySb_GGGMR);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMR);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:), 0, 0);
}

uint64_t closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_172_0();
  v1 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Published<DeviceInactivityObserver.State>.Publisher, Published<Bool>.Publisher> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AA9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GAIySb_GGMd, &_s7Combine10PublishersO0A6LatestVy_AA9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GAIySb_GGMR, MEMORY[0x1E695BC68]);
  MEMORY[0x1BFB1DE80](v3, v4);
  OUTLINED_FUNCTION_90_5();
  AsyncPublisher.makeAsyncIterator()();
  v5 = OUTLINED_FUNCTION_316();
  v6(v5);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.CombineLatest<Published<DeviceInactivityObserver.State>.Publisher, Published<Bool>.Publisher>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 112) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_20_42(v7);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6D8C8](v9);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  *(v0 + 152) = *(v0 + 154);
  return OUTLINED_FUNCTION_7_82(closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:));
}

{
  OUTLINED_FUNCTION_44();
  v2 = *(v1 + 152);
  if ((v2 & 0xFF00) == 0x200 || (Strong = swift_weakLoadStrong(), (*(v1 + 128) = Strong) == 0))
  {
    (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  if (!*(v1 + 152))
  {
    if ((v2 & 0x100) == 0)
    {
      if (one-time initialization token for screenSharing != -1)
      {
        OUTLINED_FUNCTION_0_162();
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v11, &static Log.screenSharing);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v13))
      {
        v14 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_182_0(v14);
        OUTLINED_FUNCTION_140();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      v20 = swift_task_alloc();
      v21 = OUTLINED_FUNCTION_119_2(v20);
      *v21 = v22;
      OUTLINED_FUNCTION_130(v21);
      OUTLINED_FUNCTION_183_1();

      __asm { BRAA            X0, X16 }
    }

    goto LABEL_25;
  }

  if (*(v1 + 152) == 1)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, &static Log.screenSharing);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v6))
    {
      v7 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v7);
      v8 = "User is currently controlling their device, will wait before resuming remote control";
LABEL_29:
      _os_log_impl(&dword_1BBC58000, v5, v6, v8, v0, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if ((v2 & 0x100) != 0)
  {
LABEL_25:
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v27, &static Log.screenSharing);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v6))
    {
      v28 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v28);
      v8 = "Waiting for user to navigate away from hidden layers before resuming remote control";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v25, &static Log.screenSharing);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v6))
  {
    v26 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v26);
    v8 = "Waiting for device inactivity state to update before resuming remote control";
    goto LABEL_29;
  }

LABEL_30:

  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.CombineLatest<Published<DeviceInactivityObserver.State>.Publisher, Published<Bool>.Publisher>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 112) = v29;
  *v29 = v30;
  OUTLINED_FUNCTION_20_42(v29);
  OUTLINED_FUNCTION_183_1();

  return MEMORY[0x1EEE6D8C8](v31);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 40) = *(v0 + 120);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = MEMORY[0x1E69E73E0];
  v3 = OUTLINED_FUNCTION_31_9(v1);
  v4 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v3, v2, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.CombineLatest<Published<DeviceInactivityObserver.State>.Publisher, Published<Bool>.Publisher>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO0A6LatestVy_AA9PublishedV0C0Vy15ConversationKit24DeviceInactivityObserverC5StateO_GAMySb_GG_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_20_42(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

{
  OUTLINED_FUNCTION_9();

  v0 = OUTLINED_FUNCTION_38_2();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}