void EmailContentManager.messages(for:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = v65 - v12;
  v65[3] = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for EMMessage, 0x277D06DB8);
  Dictionary.init(dictionaryLiteral:)();
  if (*(v3 + 16))
  {

    if (one-time initialization token for searchSignposter != -1)
    {
LABEL_36:
      OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
    }

    v14 = type metadata accessor for OSSignposter();
    OUTLINED_FUNCTION_200(v14, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v15 = OSSignposter.logHandle.getter();
    v16 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v17 = OUTLINED_FUNCTION_172();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v15, v16, v18, "EmailContentManager.messages(for:)", "", v17, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    (*(v6 + 16))(v10, v13, v4);
    v19 = type metadata accessor for OSSignpostIntervalState();
    v20 = OUTLINED_FUNCTION_170(v19);
    v65[1] = OSSignpostIntervalState.init(id:isOpen:)();
    v21 = OUTLINED_FUNCTION_119();
    v22(v21);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v23, static Logging.answerSynthesis);

    v65[2] = v20;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_10_23();
      v71 = v10;
      *v13 = 136315138;
      MEMORY[0x25F89F8A0](v3, MEMORY[0x277D837D0]);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v13 + 4) = v26;
      OUTLINED_FUNCTION_63_12(&dword_25D85C000, v27, v28, "EmailContentManager: Fetching EMMessages for searchableItemIdentifiers: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }

    v29 = [v1[2] messageRepository];
    v4 = MEMORY[0x277D837D0];
    isa = Array._bridgeToObjectiveC()().super.isa;
    v68 = v29;
    v31 = [v29 messageObjectIDsForSearchableItemIdentifiers_];

    v32 = [v31 result];
    v65[0] = v32;
    v33 = [v32 objectIDs];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for EMMessageObjectID, 0x277D06E18);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = Dictionary.init(dictionaryLiteral:)();
    v35 = specialized Array.count.getter();
    v69 = v13;
    v70 = v35;
    v6 = 0;
    v66 = v13 & 0xFFFFFFFFFFFFFF8;
    v67 = v13 & 0xC000000000000001;
    while (v70 != v6)
    {
      if (v67)
      {
        v36 = MEMORY[0x25F89FFD0](v6, v69);
      }

      else
      {
        if (v6 >= *(v66 + 16))
        {
          goto LABEL_33;
        }

        v36 = *(v69 + 8 * v6 + 32);
      }

      v1 = v36;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v4 = [v68 messageForObjectID_];
      v37 = [v4 result];

      v71 = [v1 globalMessageID];
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v3 = v38;
      v13 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v34;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v3);
      v42 = v34[2];
      v43 = (v41 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_34;
      }

      v4 = v40;
      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9EMMessageCGMd, &_ss17_NativeDictionaryVySSSo9EMMessageCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44))
      {
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v3);
        if ((v45 & 1) != (v47 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v4 = v46;
      }

      if (v45)
      {

        v34 = v71;
        v48 = v71[7];
        v49 = *(v48 + 8 * v4);
        *(v48 + 8 * v4) = v13;
      }

      else
      {
        v34 = v71;
        v71[(v4 >> 6) + 8] |= 1 << v4;
        v50 = (v34[6] + 16 * v4);
        *v50 = v10;
        v50[1] = v3;
        *(v34[7] + 8 * v4) = v13;

        v51 = v34[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_35;
        }

        v34[2] = v53;
      }

      ++v6;
    }

    v54 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_77_4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_49_0();
      v71 = swift_slowAlloc();
      *v56 = 134218499;
      *(v56 + 4) = v34[2];

      *(v56 + 12) = 2080;

      Dictionary.Keys.description.getter();

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v56 + 14) = v57;
      *(v56 + 22) = 2085;

      Dictionary.Values.description.getter();
      OUTLINED_FUNCTION_42_14();

      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v56 + 24) = v58;
      _os_log_impl(&dword_25D85C000, v54, v13, "EmailContentManager: Found %ld messages, mail message id keys: %s, values: %{sensitive}s", v56, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v59, v60))
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v61 = OUTLINED_FUNCTION_10_23();
      v71 = v61;
      *v13 = 136315138;

      Dictionary.Keys.description.getter();
      OUTLINED_FUNCTION_42_14();

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v13 + 4) = v62;
      OUTLINED_FUNCTION_63_12(&dword_25D85C000, v63, v64, "EmailContentManager: Mail message id keys: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }

    $defer #1 () in EmailContentManager.init()();
  }

  OUTLINED_FUNCTION_148();
}

uint64_t EmailContentManager.createEmailDoc(message:spotlightResult:)()
{
  OUTLINED_FUNCTION_48();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for OSSignpostID();
  v1[6] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_160();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = v0[3];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = v1;
  v4 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[3];
    OUTLINED_FUNCTION_28_3();
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = [v5 objectID];
    v8 = [v7 globalMessageID];

    *(v6 + 4) = v8;
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_41_12();
    _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v4 = v0[3];
  }

  v16 = OUTLINED_FUNCTION_30_16();
  v17(v16);
  v18 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v18);
  v0[10] = OUTLINED_FUNCTION_38_6();
  v19 = OUTLINED_FUNCTION_54_0();
  v20(v19);
  if (one-time initialization token for contentRequestOptions != -1)
  {
    OUTLINED_FUNCTION_11_24(&one-time initialization token for contentRequestOptions);
  }

  v21 = static EmailContentManager.contentRequestOptions;
  v22 = swift_task_alloc();
  v0[11] = v22;
  *v22 = v0;
  v22[1] = EmailContentManager.createEmailDoc(message:spotlightResult:);

  return EMMessage.oms_requestRepresentation(with:)(v21);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 96);
  if (v1)
  {
    v14 = (*(**(v0 + 40) + 136) + **(**(v0 + 40) + 136));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 104) = v2;
    *v2 = v3;
    v2[1] = EmailContentManager.createEmailDoc(message:spotlightResult:);
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);

    return v14(v4, v5, v1);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v7, static Logging.answerSynthesis);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_172();
      *v10 = 0;
      _os_log_impl(&dword_25D85C000, v8, v9, "EmailContentManager: EM Content Representation is nil", v10, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    OUTLINED_FUNCTION_133();
    v11 = OUTLINED_FUNCTION_119();
    v12(v11);
    $defer #1 () in EmailContentManager.init()();

    OUTLINED_FUNCTION_106();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();

  $defer #1 () in EmailContentManager.init()();

  OUTLINED_FUNCTION_106();

  return v1();
}

{
  OUTLINED_FUNCTION_78();

  $defer #1 () in EmailContentManager.init()();

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t EMMessage.oms_requestRepresentation(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](EMMessage.oms_requestRepresentation(with:));
}

uint64_t EMMessage.oms_requestRepresentation(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v21 = v20[4];
  v22 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v22, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v23 = v21;
  v24 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v25 = v20[4];
    OUTLINED_FUNCTION_28_3();
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    v27 = [v25 objectID];
    v28 = [v27 globalMessageID];

    *(v26 + 4) = v28;
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_41_12();
    _os_signpost_emit_with_name_impl(v29, v30, v31, v32, v33, v34, v35, 0xCu);
    OUTLINED_FUNCTION_42_0();
    v36 = v20[4];
  }

  else
  {

    v36 = v20[4];
    v24 = v36;
  }

  v37 = v20[3];

  v38 = OUTLINED_FUNCTION_30_16();
  v39(v38);
  v40 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v40);
  v20[9] = OUTLINED_FUNCTION_38_6();
  v41 = OUTLINED_FUNCTION_54_0();
  v42(v41);
  v43 = swift_task_alloc();
  v20[10] = v43;
  *(v43 + 16) = v36;
  *(v43 + 24) = v37;
  v44 = swift_task_alloc();
  v20[11] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23EMContentRepresentationCSgMd, &_sSo23EMContentRepresentationCSgMR);
  *v44 = v20;
  v44[1] = EMMessage.oms_requestRepresentation(with:);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822007B8](v45, v46, v47, 0xD000000000000020, v48, v49, v43, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t EMMessage.oms_requestRepresentation(with:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 16);
  $defer #1 () in EmailContentManager.init()();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t EmailContentManager.createEmailDocumentUsingContentRep(message:contentRep:)()
{
  OUTLINED_FUNCTION_48();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = type metadata accessor for EmailDocument();
  v1[15] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[16] = v6;
  v1[17] = OUTLINED_FUNCTION_160();
  v1[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v1[19] = OUTLINED_FUNCTION_199();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v1[20] = OUTLINED_FUNCTION_199();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v1[21] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v1[22] = OUTLINED_FUNCTION_199();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v1[23] = OUTLINED_FUNCTION_160();
  v1[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v1[25] = OUTLINED_FUNCTION_160();
  v1[26] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v1[27] = OUTLINED_FUNCTION_160();
  v1[28] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v14);
}

{
  OUTLINED_FUNCTION_78();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v1 = type metadata accessor for Logger();
  v0[29] = __swift_project_value_buffer(v1, static Logging.answerSynthesis);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v3))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v9 = v0[13];

  v0[30] = [v9 searchableItem];
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = EmailContentManager.createEmailDocumentUsingContentRep(message:contentRep:);

  return EmailContentManager.fetchHTML(for:contentRep:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v1[6] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 256) = v7;

  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_159();
  if (*(v0 + 256))
  {
    v1 = *(v0 + 96);
    v2 = objc_opt_self();
    v3 = OUTLINED_FUNCTION_119();
    v4 = MEMORY[0x25F89F4C0](v3);

    v5 = [v2 snippetFromHTMLBody:v4 options:32 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:1];

    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v1;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = OUTLINED_FUNCTION_16_11(v10);
    v12 = *(v0 + 96);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      v14 = [v12 objectID];
      v15 = [v14 globalMessageID];

      *(v13 + 4) = v15;
      *(v13 + 12) = 2048;
      *(v13 + 14) = String.count.getter();

      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
    }

    v27 = [*(v0 + 104) searchableItem];
    v100 = v7;
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_64_9(v27);

      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v28, &selRef_attachmentNames);
    }

    v29 = [*(v0 + 104) searchableItem];
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_64_9(v29);

      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v30, &selRef_attachmentTypes);
    }

    v31 = [*(v0 + 104) searchableItem];
    if (v31)
    {
      v32 = OUTLINED_FUNCTION_64_9(v31);

      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v32, &selRef_attachmentPaths);
    }

    v33 = [*(v0 + 104) searchableItem];
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_64_9(v33);

      v35 = [v34 mailRead];
      if (v35)
      {
        [v35 BOOLValue];
      }
    }

    v36 = *(v0 + 240);
    if (v36 && (v37 = [*(v0 + 240) attributeSet], v38 = objc_msgSend(v36, sel_uniqueIdentifier), static String._unconditionallyBridgeFromObjectiveC(_:)(), v38, v37))
    {
      if ([v37 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v107 = 0u;
        v109 = 0u;
      }

      *(v0 + 16) = v107;
      *(v0 + 32) = v109;
      if (*(v0 + 40))
      {
        swift_dynamicCast();
        goto LABEL_23;
      }
    }

    else
    {
      v37 = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    outlined destroy of EagerResolutionService?(v0 + 16, &_sypSgMd, &_sypSgMR);
LABEL_23:
    v103 = v37;
    v39 = [*(v0 + 96) subject];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 subjectString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v42 = *(v0 + 224);
    v43 = *(v0 + 208);
    v44 = *(v0 + 216);
    v45 = *(v0 + 192);
    v46 = *(v0 + 176);
    v95 = *(v0 + 200);
    v96 = *(v0 + 184);
    v97 = *(v0 + 168);
    v98 = *(v0 + 160);
    v106 = *(v0 + 128);
    v101 = *(v0 + 120);
    v102 = *(v0 + 144);
    v47 = *(v0 + 96);
    v99 = *(v0 + 88);
    v48 = [v47 senderList];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25ECEmailAddressConvertible_pMd, &_sSo25ECEmailAddressConvertible_pMR);
    v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    EmailContentManager.convertEmailToStringArray(_:)(v49);

    v50 = [v47 toList];
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    EmailContentManager.convertEmailToStringArray(_:)(v51);

    v52 = [v47 ccList];
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    EmailContentManager.convertEmailToStringArray(_:)(v53);

    v54 = [v47 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v55);
    v56 = type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_10_24(v43, v57, v58, v56);
    type metadata accessor for PartialExtractedAttributes();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5();
    String.oms_trimCharacters(_:)(v63, v104, v100);

    _s10Foundation4DateVSgWOcTm_0(v42, v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOcTm_0(v43, v95, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    _s10Foundation4DateVSgWOcTm_0(v45, v96, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v64 = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_10_24(v46, v65, v66, v64);
    v67 = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_10_24(v97, v68, v69, v67);
    v70 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_10_24(v98, v71, v72, v70);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
    outlined destroy of EagerResolutionService?(v45, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of EagerResolutionService?(v43, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of EagerResolutionService?(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v77 = *(v106 + 16);
    v77(v102, v99, v101);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    v80 = OUTLINED_FUNCTION_16_11(v79);
    v81 = *(v0 + 144);
    if (v80)
    {
      v83 = *(v0 + 128);
      v82 = *(v0 + 136);
      v84 = *(v0 + 120);
      OUTLINED_FUNCTION_28_3();
      v105 = v85;
      swift_slowAlloc();
      v108 = OUTLINED_FUNCTION_10_23();
      *v43 = 136642819;
      v77(v82, v81, v84);
      String.init<A>(describing:)();
      (*(v83 + 8))(v81, v84);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v43 + 4) = v86;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
      v92 = *(v0 + 120);
      v93 = *(v0 + 128);

      (*(v93 + 8))(v81, v92);
    }

    OUTLINED_FUNCTION_106();
    goto LABEL_29;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_172();
    *v23 = 0;
    _os_log_impl(&dword_25D85C000, v21, v22, "EmailContentManager: HTML body is nil", v23, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v24 = *(v0 + 240);

  lazy protocol witness table accessor for type OmniSearchError and conformance OmniSearchError();
  swift_allocError();
  *v25 = 0xD00000000000002FLL;
  *(v25 + 8) = 0x800000025DBF4690;
  *(v25 + 16) = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_127();
LABEL_29:

  return v26();
}

void EmailContentManager.createEmailDocumentWithSpotlightDocument(message:spotlightResult:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v131 = v2;
  v147 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v146 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_3();
  v144 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  v143 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v13);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v140 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v17 = OUTLINED_FUNCTION_114(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_109();
  v138 = v18 - v19;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v20);
  v22 = &v116 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v24 = OUTLINED_FUNCTION_114(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_109();
  v137 = v25 - v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  v149 = &v116 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = OUTLINED_FUNCTION_114(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_109();
  v134 = v31 - v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  v148 = &v116 - v34;
  v35 = type metadata accessor for EmailDocument();
  OUTLINED_FUNCTION_14();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_109();
  v141 = (v39 - v40);
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  v43 = &v116 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v116 - v45;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v47 = type metadata accessor for Logger();
  v48 = __swift_project_value_buffer(v47, static Logging.answerSynthesis);
  v49 = *(v37 + 16);
  v139 = v1;
  v49(v46, v1, v35);
  v133 = v48;
  v50 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_77_4();
  v52 = os_log_type_enabled(v50, v51);
  v145 = v35;
  v142 = v37;
  v117 = v43;
  v135 = v49;
  v136 = v37 + 16;
  if (v52)
  {
    OUTLINED_FUNCTION_28_3();
    v53 = swift_slowAlloc();
    v130 = v22;
    v54 = v53;
    v55 = OUTLINED_FUNCTION_49_0();
    v150 = v55;
    *v54 = 136642819;
    v49(v43, v46, v35);
    String.init<A>(describing:)();
    v132 = *(v37 + 8);
    v132(v46, v35);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v54 + 4) = v56;
    OUTLINED_FUNCTION_49_16(&dword_25D85C000, v57, v48, "EmailContentManager: Creating EmailDocument using spotlight result %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    OUTLINED_FUNCTION_42_0();
    v22 = v130;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v132 = *(v37 + 8);
    v132(v46, v35);
  }

  v130 = WalletPass.id.getter();
  v129 = v58;
  v128 = WalletPass.title.getter();
  v127 = v59;
  v60 = v131;
  v61 = [v131 subject];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 subjectString];

    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v64;
  }

  else
  {
    v126 = 0;
    v125 = 0;
  }

  v65 = NoteDocument.folderName.getter();
  v67 = v66;
  v68 = [v60 senderList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25ECEmailAddressConvertible_pMd, &_sSo25ECEmailAddressConvertible_pMR);
  v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v124 = EmailContentManager.convertEmailToStringArray(_:)(v69);

  v70 = [v60 toList];
  v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v123 = EmailContentManager.convertEmailToStringArray(_:)(v71);

  v72 = [v60 ccList];
  v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v122 = EmailContentManager.convertEmailToStringArray(_:)(v73);

  v74 = [v60 date];
  v75 = v148;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v76 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v76);
  v131 = EmailDocument.attachmentNames.getter();
  v121 = EmailDocument.attachmentTypes.getter();
  v120 = EmailDocument.attachmentPaths.getter();
  LODWORD(v139) = EmailDocument.unread.getter();
  v77 = type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_10_24(v149, v78, v79, v77);
  type metadata accessor for PartialExtractedAttributes();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  if (v67)
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5();
    String.oms_trimCharacters(_:)(v84, v65, v67);
    v119 = v85;
    v118 = v86;
  }

  else
  {
    v119 = 0;
    v118 = 0;
  }

  v87 = v148;
  v88 = v134;
  _s10Foundation4DateVSgWOcTm_0(v148, v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v89 = v149;
  _s10Foundation4DateVSgWOcTm_0(v149, v137, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  _s10Foundation4DateVSgWOcTm_0(v22, v138, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v90 = type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_10_24(v140, v91, v92, v90);
  v93 = type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_10_24(v143, v94, v95, v93);
  v96 = type metadata accessor for PreExtractedSharedLink();
  OUTLINED_FUNCTION_10_24(v144, v97, v98, v96);
  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
  v103 = v147;
  EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
  outlined destroy of EagerResolutionService?(v22, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of EagerResolutionService?(v89, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of EagerResolutionService?(v87, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v104 = v141;
  v105 = v145;
  v106 = v135;
  v135(v141, v103, v145);
  v107 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_77_4();
  if (os_log_type_enabled(v107, v108))
  {
    OUTLINED_FUNCTION_28_3();
    v109 = swift_slowAlloc();
    v110 = OUTLINED_FUNCTION_49_0();
    v150 = v110;
    *v109 = 136642819;
    v106(v117, v104, v105);
    String.init<A>(describing:)();
    v111 = OUTLINED_FUNCTION_46_16();
    v112(v111);
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v109 + 4) = v113;
    _os_log_impl(&dword_25D85C000, v107, v88, "EmailContentManager: Returning %{sensitive}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v114 = OUTLINED_FUNCTION_46_16();
    v115(v114);
  }

  OUTLINED_FUNCTION_148();
}

void *EmailContentManager.convertEmailToStringArray(_:)(unint64_t a1)
{
  v3 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v4 = MEMORY[0x25F8A01B0](a1);
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v13;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F89FFD0](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 stringValue];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_42_14();
      swift_unknownObjectRelease();

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v7;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v1;
      *(v12 + 40) = v2;
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t EmailContentManager.fetchHTML(for:contentRep:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v2 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_114(v2);
  v0[3] = OUTLINED_FUNCTION_199();
  v3 = type metadata accessor for URL();
  v0[4] = v3;
  OUTLINED_FUNCTION_21(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_160();
  v0[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_75();
  v1 = [*(v0 + 16) contentURL];
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v2, v3, v4);
    static String.Encoding.utf8.getter();
    v1 = String.init(contentsOf:encoding:)();
    v7 = v6;
    v8 = OUTLINED_FUNCTION_54_0();
    v9(v8);
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_32_5();

  return v10(v1, v7);
}

uint64_t EmailContentManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void $defer #1 () in EmailContentManager.init()()
{
  OUTLINED_FUNCTION_155();
  v20 = v0;
  v1 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v13 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v13, static Logging.searchSignposter);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v15 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v6, v1) == *MEMORY[0x277D85B00])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v1);
      v16 = "";
    }

    v17 = OUTLINED_FUNCTION_172();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v14, v15, v18, v20, v16, v17, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_148();
}

void closure #1 in EMMessage.oms_requestRepresentation(with:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in EMMessage.oms_requestRepresentation(with:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed EMContentRepresentation?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  v15 = [v14 requestRepresentationWithOptions:a3 completionHandler:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in EMMessage.oms_requestRepresentation(with:)(void *a1, id a2, void *a3)
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logging.answerSynthesis);
    v8 = a3;
    v9 = a2;
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 134218242;
      v15 = [v10 objectID];
      v16 = [v15 globalMessageID];

      *(v13 + 4) = v16;
      *(v13 + 12) = 2112;
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v18;
      *v14 = v18;
      _os_log_impl(&dword_25D85C000, v11, v12, "Unable to request representation for message: %lld with error %@", v13, 0x16u);
      outlined destroy of EagerResolutionService?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F8A1050](v14, -1, -1);
      MEMORY[0x25F8A1050](v13, -1, -1);
    }

    else
    {
    }
  }

  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

id @nonobjc EMContentRequestOptions.init(builder:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = partial apply for thunk for @callee_guaranteed (@guaranteed EMContentRequestOptionsBuilder) -> ();
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed EMContentRequestOptionsBuilder) -> ();
  v9[3] = &block_descriptor_39;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed EMContentRequestOptionsBuilder) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_6(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_51();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_5(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #3 in EmailContentManager.hydrateEmailResults(_:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_93();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #3 in EmailContentManager.hydrateEmailResults(_:)(v2, v0, v4, v5);
}

unint64_t lazy protocol witness table accessor for type OmniSearchError and conformance OmniSearchError()
{
  result = lazy protocol witness table cache variable for type OmniSearchError and conformance OmniSearchError;
  if (!lazy protocol witness table cache variable for type OmniSearchError and conformance OmniSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchError and conformance OmniSearchError);
  }

  return result;
}

uint64_t dispatch thunk of EmailContentManager.hydrateEmailResults(_:)()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  OUTLINED_FUNCTION_133();
  v6 = (*(v3 + 96) + **(v3 + 96));
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = dispatch thunk of EmailContentManager.hydrateEmailResults(_:);

  return v6(v2);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of EmailContentManager.mailURLFromId(_:networkUsage:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_133();
  v10 = (*(v7 + 104) + **(v7 + 104));
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v8[1] = dispatch thunk of EmailContentManager.mailURLFromId(_:networkUsage:);

  return v10(v6, v4, v2);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_32_5();
  v3 = OUTLINED_FUNCTION_94();

  return v4(v3);
}

uint64_t dispatch thunk of EmailContentManager.mailIDForMailURL(_:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_133();
  v5 = (*(v1 + 112) + **(v1 + 112));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = dispatch thunk of EmailContentManager.mailIDForMailURL(_:);
  v3 = OUTLINED_FUNCTION_119();

  return v5(v3);
}

uint64_t dispatch thunk of EmailContentManager.createEmailDocumentUsingContentRep(message:contentRep:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_133();
  v11 = (*(v7 + 136) + **(v7 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 16) = v8;
  *v8 = v9;
  v8[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v11(v6, v4, v2);
}

uint64_t partial apply for closure #1 in closure #1 in EMMessage.oms_requestRepresentation(with:)()
{
  OUTLINED_FUNCTION_93();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  OUTLINED_FUNCTION_114(v0);
  v1 = OUTLINED_FUNCTION_119();

  return closure #1 in closure #1 in EMMessage.oms_requestRepresentation(with:)(v1, v2, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in EmailContentManager.mailURLFromId(_:networkUsage:)()
{
  OUTLINED_FUNCTION_93();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo23EMContentRepresentationCSgs5NeverOGMd, &_sScCySo23EMContentRepresentationCSgs5NeverOGMR);
  OUTLINED_FUNCTION_114(v0);
  v1 = OUTLINED_FUNCTION_119();

  return closure #1 in closure #1 in EmailContentManager.mailURLFromId(_:networkUsage:)(v1);
}

uint64_t partial apply for closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8);
  v10 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in closure #3 in EmailContentManager.hydrateEmailResults(_:)(v3, v0 + v6, v9, v10);
}

uint64_t _s10Foundation4DateVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_51();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_17()
{
}

void OUTLINED_FUNCTION_49_16(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_63_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_64_9(void *a1)
{

  return [a1 (v1 + 116)];
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
LABEL_10:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x25F89FFD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v10;
    closure #1 in closure #1 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(&v13, a2, a3, a4);

    if (v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t static EventManager.hydrateWithEvents(for:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v4 = type metadata accessor for SearchResult(0);
  v0[12] = v4;
  OUTLINED_FUNCTION_21(v4);
  v0[13] = v5;
  v0[14] = OUTLINED_FUNCTION_160();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v0[17] = v6;
  OUTLINED_FUNCTION_21(v6);
  v0[18] = v7;
  v0[19] = OUTLINED_FUNCTION_160();
  v0[20] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v8);
}

{
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v3 = OUTLINED_FUNCTION_172();
    v4 = OUTLINED_FUNCTION_159_5(v3);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v5, v6, v4, "EventManager.hydrateWithEvents", "");
    OUTLINED_FUNCTION_37_0();
  }

  v7 = OUTLINED_FUNCTION_30_16();
  v8(v7);
  v9 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v9);
  v0[21] = OUTLINED_FUNCTION_38_6();
  v10 = OUTLINED_FUNCTION_54_0();
  v11(v10);
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_eventAnswers))
  {
    v13 = v0[10];
    v12 = v0[11];
    v14 = swift_allocObject();
    v0[22] = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    OUTLINED_FUNCTION_175_5(&async function pointer to specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));

    v15 = swift_task_alloc();
    v0[23] = v15;
    *v15 = v0;
    v15[1] = static EventManager.hydrateWithEvents(for:locale:);
    v16 = v0[9];

    return v29(0, &async function pointer to partial apply for closure #1 in static EventManager.hydrateWithEvents(for:locale:), v14, v16);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v18, static Logging.answerSynthesis);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v20))
    {
      v21 = OUTLINED_FUNCTION_51_0();
      v30 = OUTLINED_FUNCTION_49_0();
      *v21 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    OUTLINED_FUNCTION_174_4();

    $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

    v27 = OUTLINED_FUNCTION_28();

    return v28(v27);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 192) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = *(v0 + 192);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 104);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v44 = v5;
    do
    {
      OUTLINED_FUNCTION_0_49();
      v6 = OUTLINED_FUNCTION_94();
      _s10OmniSearch0B6ResultVWOcTm_7(v6, v7, v8);
      v9 = OUTLINED_FUNCTION_158();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      v11 = CodableNSSecureCoding.wrappedValue.getter();
      v12 = [v11 attributeSet];

      v13 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v12);
      if (v13)
      {
        v14 = v13;
        if (*(v13 + 16))
        {
          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v16 = *(v0 + 120);
          v15 = *(v0 + 128);
          v17 = type metadata accessor for Logger();
          __swift_project_value_buffer(v17, static Logging.answerSynthesis);
          _s10OmniSearch0B6ResultVWOcTm_7(v15, v16, type metadata accessor for SearchResult);
          v18 = OUTLINED_FUNCTION_26_2();
          _s10OmniSearch0B6ResultVWOcTm_7(v18, v19, type metadata accessor for SearchResult);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.info.getter();

          v22 = os_log_type_enabled(v20, v21);
          v23 = *(v0 + 120);
          v24 = *(v0 + 128);
          v25 = *(v0 + 112);
          if (v22)
          {
            v26 = swift_slowAlloc();
            swift_slowAlloc();
            *v26 = 136315906;
            *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v26 + 12) = 2080;
            v43 = v21;
            SearchResultItem.type.getter((v0 + 200));
            lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
            dispatch thunk of CustomStringConvertible.description.getter();
            OUTLINED_FUNCTION_1_47();
            v42 = v27;
            _s10OmniSearch0B6ResultVWOhTm_5(v23, v28);
            OUTLINED_FUNCTION_26_2();
            v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v26 + 14) = v29;
            *(v26 + 22) = 2080;
            SearchResultItem.associatedValue.getter((v0 + 16));
            v30 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
            v31 = OUTLINED_FUNCTION_54_0();
            v32(v31);
            OUTLINED_FUNCTION_67_8();
            _s10OmniSearch0B6ResultVWOhTm_5(v25, v42);
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
            OUTLINED_FUNCTION_88();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_104_9();

            *(v26 + 24) = v30;
            *(v26 + 32) = 2080;
            MEMORY[0x25F89F8A0](v14, MEMORY[0x277D837D0]);
            OUTLINED_FUNCTION_67_8();

            OUTLINED_FUNCTION_88();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_104_9();

            *(v26 + 34) = v30;
            _os_log_impl(&dword_25D85C000, v20, v43, "%s %s %s has MDItemDetectedEventTypes: %s", v26, 0x2Au);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_64_10();
            OUTLINED_FUNCTION_72_9();

            v33 = v24;
            v34 = v42;
          }

          else
          {

            _s10OmniSearch0B6ResultVWOhTm_5(v25, type metadata accessor for SearchResult);
            _s10OmniSearch0B6ResultVWOhTm_5(v23, type metadata accessor for SearchResult);
            v33 = v24;
            v34 = type metadata accessor for SearchResult;
          }

          _s10OmniSearch0B6ResultVWOhTm_5(v33, v34);
          v5 = v44;
        }

        else
        {
          OUTLINED_FUNCTION_1_47();
          _s10OmniSearch0B6ResultVWOhTm_5(v37, v38);
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v35, v36);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_174_4();
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  v39 = OUTLINED_FUNCTION_28();

  return v40(v39);
}

uint64_t closure #1 in static EventManager.hydrateWithEvents(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for EmailDocument();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for SearchResultItem(0);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for SearchResult(0);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static EventManager.hydrateWithEvents(for:locale:));
}

uint64_t closure #1 in static EventManager.hydrateWithEvents(for:locale:)()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[20];
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v2, v1, v3);
  OUTLINED_FUNCTION_5_30();
  v4 = OUTLINED_FUNCTION_107();
  _s10OmniSearch0B6ResultVWOcTm_7(v4, v5, v6);
  OUTLINED_FUNCTION_32_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = v0[18];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      type metadata accessor for MobileSMSDocument();
      goto LABEL_35;
    case 2:
      type metadata accessor for CalendarEvent();
      goto LABEL_35;
    case 3:
      type metadata accessor for Photo();
      goto LABEL_35;
    case 4:
      type metadata accessor for NoteDocument();
      goto LABEL_35;
    case 5:
      type metadata accessor for Reminder();
      goto LABEL_35;
    case 6:
      type metadata accessor for PhoneHistory();
      goto LABEL_35;
    case 7:
      type metadata accessor for VoicemailTranscript();
      goto LABEL_35;
    case 8:
      type metadata accessor for JournalEntry();
      goto LABEL_35;
    case 9:
      type metadata accessor for VoiceMemo();
      goto LABEL_35;
    case 10:
      type metadata accessor for Safari();
      goto LABEL_35;
    case 11:
      type metadata accessor for FileDocument();
      goto LABEL_35;
    case 12:
      type metadata accessor for WalletTransaction();
      goto LABEL_35;
    case 13:
      type metadata accessor for WalletPass();
      goto LABEL_35;
    case 14:
      type metadata accessor for Contact();
      goto LABEL_35;
    case 15:
      type metadata accessor for Appointment();
      goto LABEL_35;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5();
      type metadata accessor for FlightReservation();
      goto LABEL_35;
    case 17:
      type metadata accessor for HotelReservation();
      goto LABEL_35;
    case 18:
      type metadata accessor for Party();
      goto LABEL_35;
    case 19:
      type metadata accessor for RestaurantReservation();
      goto LABEL_35;
    case 20:
      type metadata accessor for RentalCarReservation();
      goto LABEL_35;
    case 21:
      type metadata accessor for ShippingOrder();
      goto LABEL_35;
    case 22:
      type metadata accessor for TicketedTransportation();
      goto LABEL_35;
    case 23:
      type metadata accessor for TicketedShow();
      goto LABEL_35;
    case 24:
      type metadata accessor for Trip();
      goto LABEL_35;
    case 25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5();
      v9 = type metadata accessor for GlobalItem;
      goto LABEL_33;
    case 26:
    case 27:
      v9 = type metadata accessor for SearchResultItem;
      goto LABEL_33;
    case 28:
      v9 = type metadata accessor for Answer;
LABEL_33:
      _s10OmniSearch0B6ResultVWOhTm_5(v8, v9);
      goto LABEL_36;
    case 29:
      type metadata accessor for OnScreen();
      goto LABEL_35;
    case 30:
      type metadata accessor for GenericSpotlightItem();
LABEL_35:
      OUTLINED_FUNCTION_17();
      (*(v12 + 8))(v8);
LABEL_36:
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v13, v14, v15);
      v16 = v0[20];
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v16, v17);

      OUTLINED_FUNCTION_127();

      result = v18();
      break;
    default:
      (*(v0[15] + 32))(v0[16], v0[18], v0[14]);
      v10 = swift_task_alloc();
      v0[21] = v10;
      *v10 = v0;
      v10[1] = closure #1 in static EventManager.hydrateWithEvents(for:locale:);

      result = static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5);
}

uint64_t closure #1 in static EventManager.hydrateWithEvents(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  EmailDocument.extractedEventsLLMConsumableDescription.setter();
  EmailDocument.extractedEventsLLMConsumableDescription.getter();
  if (v13)
  {
  }

  else
  {
    v14 = v12[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v15 = CodableNSSecureCoding.wrappedValue.getter();
    PartialExtractedAttributes.init(item:bundleID:)(v15, 0xD000000000000014, 0x800000025DBF1CF0, v14);
    EmailDocument.partialExtractedAttributes.setter();
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v16, static Logging.answerSynthesis);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_91_0(v18))
    {
      OUTLINED_FUNCTION_90_1();
      a10 = OUTLINED_FUNCTION_51_13();
      *v14 = 136315395;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_18(v19);
      swift_beginAccess();
      EmailDocument.partialExtractedAttributes.getter();
      swift_endAccess();
      OUTLINED_FUNCTION_179_0();
      String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v14 + 14) = v20;
      OUTLINED_FUNCTION_92_8();
      _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
      OUTLINED_FUNCTION_148_6();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }
  }

  v26 = v12[20];
  v27 = v12[8];
  OUTLINED_FUNCTION_0_50();
  _s10OmniSearch0B6ResultVWOhTm_5(v26, v28);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v29 = OUTLINED_FUNCTION_30_16();
  v30(v29);
  OUTLINED_FUNCTION_107();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v26, v27, v31);
  v32 = OUTLINED_FUNCTION_54_0();
  v33(v32);
  v34 = v12[20];
  OUTLINED_FUNCTION_1_47();
  _s10OmniSearch0B6ResultVWOhTm_5(v34, v35);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_136_7();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[24] = v1;
  v0[25] = v2;
  v0[23] = v3;
  v4 = type metadata accessor for SearchResult(0);
  v0[26] = v4;
  OUTLINED_FUNCTION_114(v4);
  v0[27] = OUTLINED_FUNCTION_160();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v0[30] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[31] = v6;
  v0[32] = OUTLINED_FUNCTION_160();
  v0[33] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  _s10OmniSearch0B6ResultVWOcTm_7(*(v0 + 184), *(v0 + 224), type metadata accessor for SearchResult);
  v3 = OUTLINED_FUNCTION_30_5();
  _s10OmniSearch0B6ResultVWOcTm_7(v3, v4, type metadata accessor for SearchResult);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v22 = *(v0 + 296);
    v23 = *(v0 + 304);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    *v9 = 136315907;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v9 + 12) = 2080;
    SearchResultItem.type.getter((v0 + 336));
    lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_67_8();
    _s10OmniSearch0B6ResultVWOhTm_5(v8, type metadata accessor for SearchResult);
    OUTLINED_FUNCTION_88();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_104_9();

    *(v9 + 14) = v0 + 336;
    *(v9 + 22) = 2080;
    SearchResultItem.associatedValue.getter((v0 + 64));
    v10 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v11 = OUTLINED_FUNCTION_104_9();
    v12(v11, v10);
    OUTLINED_FUNCTION_67_8();
    v13 = OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B6ResultVWOhTm_5(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    OUTLINED_FUNCTION_88();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_104_9();

    *(v9 + 24) = v7;
    *(v9 + 32) = 2085;
    *(v0 + 168) = v2;
    *(v0 + 176) = v1;

    String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v9 + 34) = v15;
    _os_log_impl(&dword_25D85C000, v5, v6, "%s returning LLM prompt from com.apple.spotlight.events associated with source %s %s: %{sensitive}s", v9, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    v16 = *(v0 + 296);
    v17 = *(v0 + 216);

    _s10OmniSearch0B6ResultVWOhTm_5(v17, type metadata accessor for SearchResult);
    v18 = OUTLINED_FUNCTION_26_2();
    _s10OmniSearch0B6ResultVWOhTm_5(v18, v19);
  }

  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  v20 = *(v0 + 8);

  return v20(v2, v1);
}

uint64_t static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v27 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v27, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v28 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v29 = OUTLINED_FUNCTION_172();
    v30 = OUTLINED_FUNCTION_159_5(v29);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v31, v32, v30, "EventManager.fetchExtractedEventsLLMConsumableDescription", "");
    OUTLINED_FUNCTION_37_0();
  }

  v33 = OUTLINED_FUNCTION_30_16();
  v34(v33);
  v35 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v35);
  v116 = OUTLINED_FUNCTION_38_6();
  *(v26 + 272) = v116;
  v36 = OUTLINED_FUNCTION_54_0();
  v37(v36);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v38 = *(v26 + 232);
  v39 = *(v26 + 184);
  v40 = type metadata accessor for Logger();
  v41 = __swift_project_value_buffer(v40, static Logging.answerSynthesis);
  *(v26 + 280) = v41;
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v39, v38, v42);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v26 + 232);
  if (v45)
  {
    v47 = OUTLINED_FUNCTION_90_1();
    *&a13 = OUTLINED_FUNCTION_260();
    *v47 = 136315395;
    OUTLINED_FUNCTION_44_17();
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v47 + 12) = 2085;
    SearchResult.description.getter();
    OUTLINED_FUNCTION_164_4();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v46, v48);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v47 + 14) = v49;
    OUTLINED_FUNCTION_184_4(&dword_25D85C000, v50, v51, "%s fetching com.apple.spotlight.events associated with this: %{sensitive}s");
    OUTLINED_FUNCTION_152_5();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_72_9();
  }

  else
  {

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v46, v52);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v53 = CodableNSSecureCoding.wrappedValue.getter();
  outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v53);
  if (v54)
  {
    a11 = v41;
    if (one-time initialization token for dict != -1)
    {
      swift_once();
    }

    v55 = static BundleIdEventSourceIdMapping.dict;
    v56 = OUTLINED_FUNCTION_118_0();
    v58 = specialized Dictionary.subscript.getter(v56, v57, v55);
    if (v59)
    {
      v60 = v58;
      v61 = v59;

      v62 = CodableNSSecureCoding.wrappedValue.getter();
      v63 = [v62 attributeSet];

      v64 = MEMORY[0x25F89F4C0](v60, v61);
      v65 = [v63 attributeForKey_];

      if (v65)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        a13 = 0u;
        a14 = 0u;
      }

      *(v26 + 120) = a14;
      *(v26 + 104) = a13;
      if (*(v26 + 128))
      {
        if (swift_dynamicCast())
        {
          if (one-time initialization token for fetchAttributes != -1)
          {
            swift_once();
          }

          v73 = static LocalIndexClient.fetchAttributes;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_25DBC8180;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 40) = v75;

          specialized Array.append<A>(contentsOf:)(inited);
          v76 = v73;

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.info.getter();

          v117 = v76;
          if (os_log_type_enabled(v77, v78))
          {
            a9 = v60;
            a10 = v61;
            v79 = OUTLINED_FUNCTION_90_1();
            OUTLINED_FUNCTION_260();
            *v79 = 136315394;
            OUTLINED_FUNCTION_98_2();
            OUTLINED_FUNCTION_44_17();
            *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v79 + 12) = 2080;
            MEMORY[0x25F89F8A0](v76, MEMORY[0x277D837D0]);
            v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v79 + 14) = v80;
            _os_log_impl(&dword_25D85C000, v77, v78, "%s fetching attributes from com.apple.spotlight.events: %s", v79, 0x16u);
            OUTLINED_FUNCTION_152_5();
            OUTLINED_FUNCTION_42_0();
            v60 = a9;
            OUTLINED_FUNCTION_42_0();
          }

          v118 = v60;
          MEMORY[0x25F89F6C0](2243901, 0xE300000000000000);
          v92 = OUTLINED_FUNCTION_118_0();
          MEMORY[0x25F89F6C0](v92);

          MEMORY[0x25F89F6C0](34, 0xE100000000000000);

          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = OUTLINED_FUNCTION_90_1();
            v118 = OUTLINED_FUNCTION_260();
            *v95 = 136315394;
            OUTLINED_FUNCTION_44_17();
            *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v95 + 12) = 2080;
            OUTLINED_FUNCTION_64_0();
            *(v95 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            _os_log_impl(&dword_25D85C000, v93, v94, "%s queryString: %s", v95, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_33_0();
          }

          *(v26 + 288) = 0x800000025DBF4860;
          v97 = *(v26 + 192);
          v96 = *(v26 + 200);
          v98 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
          *(v26 + 296) = v98;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v98 setFetchAttributes_];

          outlined bridged method (mbnn) of @objc CSSearchQueryContext.bundleIDs.setter(&outlined read-only object #0 of static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:), v98);
          v100 = objc_allocWithZone(MEMORY[0x277CC3498]);
          v101 = v98;
          v102 = OUTLINED_FUNCTION_64_0();
          v104 = @nonobjc CSSearchQuery.init(queryString:queryContext:)(v102, v103, v98);
          *(v26 + 304) = v104;
          v105 = swift_task_alloc();
          *(v26 + 312) = v105;
          v105[2] = v104;
          v105[3] = v97;
          v105[4] = v96;
          v106 = swift_task_alloc();
          *(v26 + 320) = v106;
          *(v26 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          *v106 = v26;
          v106[1] = static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:);
          OUTLINED_FUNCTION_17_4();

          return MEMORY[0x2822007B8](v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, v117, v118, v61, a14, *(&a14 + 1), a15, a16, a17, a18);
        }
      }

      else
      {
        outlined destroy of IntentApplication?(v26 + 104, &_sypSgMd, &_sypSgMR);
      }

      v66 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v81))
      {
        OUTLINED_FUNCTION_90_1();
        *&a13 = OUTLINED_FUNCTION_51_13();
        *a11 = 136315394;
        OUTLINED_FUNCTION_44_17();
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_94_8(v82);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_151_3();
        *(a11 + 14) = "fetchExtractedEventsLLMConsumableDescription(for:locale:)";
        _os_log_impl(&dword_25D85C000, v66, v81, "%s unable to get attribute for %s)", a11, 0x16u);
        OUTLINED_FUNCTION_152_5();
        OUTLINED_FUNCTION_42_0();
        goto LABEL_31;
      }

LABEL_33:

      goto LABEL_34;
    }

    v66 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v66, v69))
    {
      goto LABEL_33;
    }

    v70 = OUTLINED_FUNCTION_49_0();
    *&a13 = swift_slowAlloc();
    *v70 = 136315650;
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_44_17();
    *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v70 + 12) = 2080;
    OUTLINED_FUNCTION_118_0();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v70 + 14) = v71;
    *(v70 + 22) = 2080;
    Dictionary.description.getter();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v70 + 24) = v72;
    _os_log_impl(&dword_25D85C000, v66, v69, "%s Skipping. Unsupported as we don't have the mapping for source id of this bundleID: %s. Current dict: %s", v70, 0x20u);
    OUTLINED_FUNCTION_148_6();
    swift_arrayDestroy();
LABEL_20:
    OUTLINED_FUNCTION_72_9();
LABEL_31:
    OUTLINED_FUNCTION_42_0();
    goto LABEL_32;
  }

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_51_0();
    *&a13 = OUTLINED_FUNCTION_49_0();
    *v68 = 136315138;
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_44_17();
    *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v66, v67, "%s unable to get bundleID from CSItem", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a13);
    goto LABEL_20;
  }

LABEL_32:

LABEL_34:
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_17_4();

  return v86(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, v116, a13, *(&a13 + 1), a14, *(&a14 + 1), a15, a16, a17, a18);
}

uint64_t closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5NeverOGMd, &_sScCySSSgs5NeverOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v26 = partial apply for closure #1 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:);
  v27 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ();
  v25 = &block_descriptor_1;
  v14 = _Block_copy(&aBlock);

  v15 = a2;
  [a2 setFoundItemsHandler_];
  _Block_release(v14);
  (*(v8 + 16))(v11, v21, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v11, v7);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v26 = partial apply for closure #2 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:);
  v27 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v25 = &block_descriptor_30;
  v18 = _Block_copy(&aBlock);

  [v15 setCompletionHandler_];
  _Block_release(v18);
  [v15 start];
}

void closure #1 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.answerSynthesis);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 12) = 2048;
    *(v11 + 14) = specialized Array.count.getter();

    _os_log_impl(&dword_25D85C000, v9, v10, "%s found %ld Event(s)", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8A1050](v12, -1, -1);
    MEMORY[0x25F8A1050](v11, -1, -1);
  }

  else
  {
  }

  specialized Sequence.forEach(_:)(a1, a2, a3, (a4 + 16));
}

void closure #1 in closure #1 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  v11 = type metadata accessor for SearchResult(0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static EventManager.createSearchResult(from:)(*a1, v14, v15, v16, v17, v18, v19, v20, v31[0], v31[1], v31[2], v32[0], v32[1], v32[2], v33, v34, v35, v36, v37, v38);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of IntentApplication?(v10, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logging.answerSynthesis);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v22, v23, "%s skip this CSSearchableItem as no associated SearchResult could be created", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x25F8A1050](v25, -1, -1);
      MEMORY[0x25F8A1050](v24, -1, -1);
    }
  }

  else
  {
    outlined init with take of SearchResult(v10, v13);
    SearchResultItem.associatedValue.getter(v32);
    v26 = v33;
    v27 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v28 = (*(v27 + 56))(a2, a3, v26, v27);
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    swift_beginAccess();
    if (a4[1])
    {
      swift_beginAccess();
      MEMORY[0x25F89F6A0](v28, v30);
      swift_endAccess();

      _s10OmniSearch0B6ResultVWOhTm_5(v13, type metadata accessor for SearchResult);
    }

    else
    {
      _s10OmniSearch0B6ResultVWOhTm_5(v13, type metadata accessor for SearchResult);
      swift_beginAccess();
      *a4 = v28;
      a4[1] = v30;
    }
  }
}

void static EventManager.createSearchResult(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
  OUTLINED_FUNCTION_114(v27);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v29);
  v30 = type metadata accessor for RestaurantReservation();
  v31 = OUTLINED_FUNCTION_1_5(v30, &v636);
  v608 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v36);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v38);
  v39 = type metadata accessor for HotelReservation();
  v40 = OUTLINED_FUNCTION_1_5(v39, &v643);
  v616 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
  OUTLINED_FUNCTION_114(v45);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v47);
  v48 = type metadata accessor for FlightReservation();
  v49 = OUTLINED_FUNCTION_1_5(v48, &v657);
  v626 = v50;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
  OUTLINED_FUNCTION_114(v54);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v56);
  v57 = type metadata accessor for Trip();
  OUTLINED_FUNCTION_14();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
  OUTLINED_FUNCTION_114(v64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v66);
  v67 = type metadata accessor for Party();
  v68 = OUTLINED_FUNCTION_1_5(v67, &v669);
  v641[2] = v69;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
  OUTLINED_FUNCTION_114(v73);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v75);
  v76 = type metadata accessor for Appointment();
  v77 = OUTLINED_FUNCTION_1_5(v76, &v679);
  v650 = v78;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
  OUTLINED_FUNCTION_114(v82);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v84);
  v85 = type metadata accessor for TicketedShow();
  v86 = OUTLINED_FUNCTION_1_5(v85, &v686 + 8);
  v659 = v87;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
  OUTLINED_FUNCTION_114(v91);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v93);
  v94 = type metadata accessor for TicketedTransportation();
  v95 = OUTLINED_FUNCTION_1_5(v94, &a18);
  v666 = v96;
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v99);
  v100 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v665 = v101;
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_14_2();
  v112 = OUTLINED_FUNCTION_28_2(v111);
  v113 = type metadata accessor for SearchResult(v112);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v125 = OUTLINED_FUNCTION_114(v124);
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_14_2();
  v144 = OUTLINED_FUNCTION_28_2(v143);
  v671 = type metadata accessor for SearchResultItem(v144);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v154);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_114(v155);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_49_3();
  v673 = v157;
  OUTLINED_FUNCTION_78_0();
  v677 = type metadata accessor for RentalCarReservation();
  OUTLINED_FUNCTION_14();
  v675 = v158;
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_7_4();
  v680 = v161;
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_14_2();
  v676 = v163;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v164 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v164, static Logging.answerSynthesis);
  v165 = v24;
  v679 = v20;
  v166 = v165;
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.debug.getter();

  v169 = os_log_type_enabled(v167, v168);
  v672 = v100;
  v636 = v59;
  if (v169)
  {
    v170 = OUTLINED_FUNCTION_49_0();
    *&v685 = swift_slowAlloc();
    *v170 = 136315651;
    *(v170 + 4) = OUTLINED_FUNCTION_19_19();
    *(v170 + 12) = 2085;
    v171 = v166;
    v674 = v113;
    v172 = v171;
    v173 = [v171 description];
    v678 = v166;
    v174 = v26;
    v175 = v173;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v170 + 14) = v176;
    *(v170 + 22) = 2085;
    v177 = [v172 attributeSet];
    v178 = [v177 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_164_4();

    v26 = v174;
    v166 = v678;
    v113 = v674;
    v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v170 + 24) = v179;
    _os_log_impl(&dword_25D85C000, v167, v168, "%s CSSearchableItem: %{sensitive}s, attributes: %{sensitive}s", v170, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_42_0();
  }

  v180 = [v166 attributeSet];
  v181 = [v180 attributeForKey_];

  if (v181)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v683 = 0u;
    v684 = 0u;
  }

  v182 = v680;
  v685 = v683;
  v686 = v684;
  if (!*(&v684 + 1))
  {
    outlined destroy of IntentApplication?(&v685, &_sypSgMd, &_sypSgMR);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_4_11(v193))
    {
      OUTLINED_FUNCTION_90_1();
      v194 = OUTLINED_FUNCTION_51_13();
      OUTLINED_FUNCTION_99_10(v194);
      v195 = OUTLINED_FUNCTION_16_22(4.8151e-34);
      OUTLINED_FUNCTION_94_8(v195);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v196 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v182 + 14) = v196;
      OUTLINED_FUNCTION_37_13(&dword_25D85C000, v197, v198, "%s skip this CSSearchableItem as it has no %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    goto LABEL_20;
  }

  v183 = v26;
  v678 = v166;
  v184 = v681;
  v185 = v682;
  v187 = static String._unconditionallyBridgeFromObjectiveC(_:)() == v184 && v186 == v185;
  if (v187)
  {

    v191 = v675;
    v190 = v676;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_33_13();
  OUTLINED_FUNCTION_130_8(v188, v189);
  OUTLINED_FUNCTION_250_2();
  v191 = v675;
  v190 = v676;
  if ((v182 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v184 && v222 == v185)
    {

      v227 = v678;
      v26 = v183;
LABEL_42:

      v252 = v227;
      OUTLINED_FUNCTION_169_6();
      TicketedTransportation.init(item:)(v253, v254);
      v255 = OUTLINED_FUNCTION_93_0();
      v256 = v670;
      OUTLINED_FUNCTION_166(v255, v257, v670);
      v258 = v666;
      if (!v187)
      {
        v262 = OUTLINED_FUNCTION_20_14();
        v263(v262);
        v264 = OUTLINED_FUNCTION_31_20();
        (v183)(v264);
        v265 = Logger.logObject.getter();
        v266 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v266))
        {
          OUTLINED_FUNCTION_90_1();
          v268 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v268);
          v269 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v269);
          v270 = v657;
          v271 = OUTLINED_FUNCTION_180();
          (v183)(v271);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_38_19();
          OUTLINED_FUNCTION_182_6();
          v272();
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();
          v26 = v252;

          *(v256 + 14) = v270;
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v273, v274, "%s created ticketedTransportation: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v278 = OUTLINED_FUNCTION_36_14();
          v279(v278);
        }

        v280 = v672;
        OUTLINED_FUNCTION_50_1(&v684);
        OUTLINED_FUNCTION_163_5();
        v183();
        OUTLINED_FUNCTION_171_4();
        swift_storeEnumTagMultiPayload();
        v281 = v661;
        OUTLINED_FUNCTION_34_20(v661);
        v282 = v662;
        *(v662 + v283) = MEMORY[0x277D84F90];
        v284 = (v282 + *(v113 + 40));
        *v284 = 0;
        v284[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v285 = OUTLINED_FUNCTION_129_4();
        _s10OmniSearch0B6ResultVWOcTm_7(v285, v286, v287);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v288, v289, MEMORY[0x277D85380]);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_192_6(v281, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR, &v684 + 8);
        OUTLINED_FUNCTION_105_3(v258);
        if (!v187)
        {
          outlined destroy of IntentApplication?(v281, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v252, v298);
          OUTLINED_FUNCTION_59_11();
          OUTLINED_FUNCTION_149_7();
          v299();
          OUTLINED_FUNCTION_32_21();
          v300 = &v683;
LABEL_60:
          v301 = *(v300 - 32);
          v302 = OUTLINED_FUNCTION_54_0();
LABEL_61:
          v281(v302);
          (v281)(v282 + *(v113 + 20), v301, v280);
          goto LABEL_62;
        }

        goto LABEL_58;
      }

      v259 = &_s15OmniSearchTypes22TicketedTransportationVSgMd;
      v260 = &_s15OmniSearchTypes22TicketedTransportationVSgMR;
      goto LABEL_45;
    }

    v224 = v184;
    OUTLINED_FUNCTION_33_13();
    OUTLINED_FUNCTION_130_8(v225, v226);
    OUTLINED_FUNCTION_250_2();
    v227 = v678;
    v26 = v183;
    if (v182)
    {
      goto LABEL_42;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v187 && v276 == v185)
    {

LABEL_65:

      v252 = v227;
      OUTLINED_FUNCTION_169_6();
      TicketedShow.init(item:)(v303, v304);
      v305 = OUTLINED_FUNCTION_93_0();
      v306 = v663;
      OUTLINED_FUNCTION_166(v305, v307, v663);
      v308 = v659;
      if (!v187)
      {
        v309 = OUTLINED_FUNCTION_20_14();
        v310(v309);
        v311 = OUTLINED_FUNCTION_31_20();
        (v183)(v311);
        v312 = Logger.logObject.getter();
        v313 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v313))
        {
          OUTLINED_FUNCTION_90_1();
          v315 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v315);
          v316 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v316);
          v317 = v648;
          v318 = OUTLINED_FUNCTION_180();
          (v183)(v318);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_38_19();
          OUTLINED_FUNCTION_182_6();
          v319();
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();
          v26 = v252;

          *(v306 + 14) = v317;
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v320, v321, "%s created ticketedShow: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v325 = OUTLINED_FUNCTION_36_14();
          v326(v325);
        }

        v280 = v672;
        OUTLINED_FUNCTION_50_1(&v674);
        OUTLINED_FUNCTION_163_5();
        v183();
        OUTLINED_FUNCTION_171_4();
        swift_storeEnumTagMultiPayload();
        v281 = v653;
        OUTLINED_FUNCTION_34_20(v653);
        v282 = v654;
        *(v654 + v327) = MEMORY[0x277D84F90];
        v328 = (v282 + *(v113 + 40));
        *v328 = 0;
        v328[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v329 = OUTLINED_FUNCTION_129_4();
        _s10OmniSearch0B6ResultVWOcTm_7(v329, v330, v331);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v332, v333, MEMORY[0x277D85380]);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_192_6(v281, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR, &v675);
        OUTLINED_FUNCTION_105_3(v308);
        if (!v187)
        {
          outlined destroy of IntentApplication?(v281, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v252, v334);
          OUTLINED_FUNCTION_59_11();
          OUTLINED_FUNCTION_149_7();
          v335();
          OUTLINED_FUNCTION_32_21();
          v300 = &v671;
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      v259 = &_s15OmniSearchTypes12TicketedShowVSgMd;
      v260 = &_s15OmniSearchTypes12TicketedShowVSgMR;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_66_12(v275);
    OUTLINED_FUNCTION_250_2();
    if (v182)
    {
      goto LABEL_65;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v187 && v323 == v185)
    {

LABEL_81:

      v252 = v227;
      OUTLINED_FUNCTION_169_6();
      Appointment.init(item:)(v336, v337);
      v338 = OUTLINED_FUNCTION_93_0();
      v339 = v656;
      OUTLINED_FUNCTION_166(v338, v340, v656);
      v341 = v650;
      if (!v187)
      {
        v342 = OUTLINED_FUNCTION_20_14();
        v343(v342);
        v344 = OUTLINED_FUNCTION_31_20();
        (v183)(v344);
        v345 = Logger.logObject.getter();
        v346 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v346))
        {
          OUTLINED_FUNCTION_90_1();
          v348 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v348);
          v349 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v349);
          v350 = v640;
          v351 = OUTLINED_FUNCTION_180();
          (v183)(v351);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_38_19();
          OUTLINED_FUNCTION_182_6();
          v352();
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();
          v26 = v252;

          *(v339 + 14) = v350;
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v353, v354, "%s created appointment: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v358 = OUTLINED_FUNCTION_36_14();
          v359(v358);
        }

        v280 = v672;
        OUTLINED_FUNCTION_50_1(&v665);
        OUTLINED_FUNCTION_163_5();
        v183();
        OUTLINED_FUNCTION_171_4();
        swift_storeEnumTagMultiPayload();
        v281 = v644;
        OUTLINED_FUNCTION_34_20(v644);
        v282 = v645;
        *(v645 + v360) = MEMORY[0x277D84F90];
        v361 = (v282 + *(v113 + 40));
        *v361 = 0;
        v361[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v362 = OUTLINED_FUNCTION_129_4();
        _s10OmniSearch0B6ResultVWOcTm_7(v362, v363, v364);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v365, v366, MEMORY[0x277D85380]);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_192_6(v281, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR, &v666);
        OUTLINED_FUNCTION_105_3(v341);
        if (!v187)
        {
          outlined destroy of IntentApplication?(v281, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v252, v367);
          OUTLINED_FUNCTION_59_11();
          OUTLINED_FUNCTION_149_7();
          v368();
          OUTLINED_FUNCTION_32_21();
          v300 = &v664;
          goto LABEL_60;
        }

LABEL_58:
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v290, v291, v292);
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v293, v294, v295);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v252, v296);
        OUTLINED_FUNCTION_59_11();
        goto LABEL_59;
      }

      v259 = &_s15OmniSearchTypes11AppointmentVSgMd;
      v260 = &_s15OmniSearchTypes11AppointmentVSgMR;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_66_12(v322);
    OUTLINED_FUNCTION_250_2();
    if (v182)
    {
      goto LABEL_81;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v187 && v356 == v185)
    {

LABEL_97:

      v369 = v227;
      OUTLINED_FUNCTION_169_6();
      Party.init(item:)(v370, v371);
      v372 = OUTLINED_FUNCTION_93_0();
      v301 = v647;
      OUTLINED_FUNCTION_166(v372, v373, v647);
      if (!v187)
      {
        v374 = OUTLINED_FUNCTION_20_14();
        v375(v374);
        v376 = OUTLINED_FUNCTION_31_20();
        (v183)(v376);
        v377 = Logger.logObject.getter();
        v378 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v378))
        {
          OUTLINED_FUNCTION_90_1();
          v380 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v380);
          v381 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v381);
          v382 = OUTLINED_FUNCTION_180();
          (v183)(v382);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_89_11();
          OUTLINED_FUNCTION_38_19();
          OUTLINED_FUNCTION_182_6();
          v383();
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();
          v26 = v369;

          *(v301 + 14) = v633[1];
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v384, v385, "%s created upcomingParty: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          v301 = v647;
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          v389 = OUTLINED_FUNCTION_36_14();
          v390(v389);
        }

        v280 = v672;
        OUTLINED_FUNCTION_50_1(&v660);
        OUTLINED_FUNCTION_163_5();
        v183();
        OUTLINED_FUNCTION_171_4();
        swift_storeEnumTagMultiPayload();
        v391 = v638;
        OUTLINED_FUNCTION_34_20(v638);
        v282 = v639;
        *(v639 + v392) = MEMORY[0x277D84F90];
        v393 = (v282 + *(v113 + 40));
        *v393 = 0;
        v393[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v394 = OUTLINED_FUNCTION_129_4();
        _s10OmniSearch0B6ResultVWOcTm_7(v394, v395, v396);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v397, v398, MEMORY[0x277D85380]);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_113_10();
        outlined init with copy of ResourceBundle?(v399, v400, v401, v402);
        OUTLINED_FUNCTION_105_3(v391);
        if (!v187)
        {
          outlined destroy of IntentApplication?(v391, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v369, v409);
          OUTLINED_FUNCTION_59_11();
          OUTLINED_FUNCTION_149_7();
          v410();
          v281 = *(v665 + 32);
          v302 = OUTLINED_FUNCTION_119_5(v658);
          goto LABEL_61;
        }

        v403 = OUTLINED_FUNCTION_32_0();
        outlined destroy of IntentApplication?(v403, v404, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_103_10();
        outlined destroy of IntentApplication?(v405, v406, v407);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v369, v408);
        OUTLINED_FUNCTION_59_11();
LABEL_59:
        OUTLINED_FUNCTION_149_7();
        v297();
LABEL_62:
        *(v282 + *(v113 + 32)) = 1;
        *(v282 + *(v113 + 36)) = 1;
        v251 = v282;
        goto LABEL_63;
      }

      v259 = &_s15OmniSearchTypes5PartyVSgMd;
      v260 = &_s15OmniSearchTypes5PartyVSgMR;
LABEL_45:
      v261 = v57;
LABEL_46:
      outlined destroy of IntentApplication?(v261, v259, v260);
LABEL_20:
      v199 = 1;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_66_12(v355);
    OUTLINED_FUNCTION_250_2();
    if (v182)
    {
      goto LABEL_97;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v187 && v387 == v185)
    {

LABEL_113:

      v411 = v227;
      Trip.init(item:)(v411, v634);
      OUTLINED_FUNCTION_166(v634, 1, v57);
      if (!v187)
      {
        v678 = v411;
        v674 = v113;
        v602 = v183;
        OUTLINED_FUNCTION_65_14();
        v412 = OUTLINED_FUNCTION_88();
        v413(v412);
        v414 = *(v113 + 16);
        v415 = OUTLINED_FUNCTION_122_7(&v655);
        (v414)(v415, v635, v57);
        v416 = Logger.logObject.getter();
        v417 = static os_log_type_t.info.getter();
        v680 = v57;
        if (OUTLINED_FUNCTION_4_11(v417))
        {
          OUTLINED_FUNCTION_90_1();
          v419 = OUTLINED_FUNCTION_51_13();
          OUTLINED_FUNCTION_99_10(v419);
          v420 = OUTLINED_FUNCTION_16_22(4.8151e-34);
          OUTLINED_FUNCTION_25_18(v420);
          v421 = OUTLINED_FUNCTION_63_0();
          v422 = v680;
          v414(v421);
          OUTLINED_FUNCTION_180();
          String.init<A>(describing:)();
          v423 = OUTLINED_FUNCTION_79_11();
          v26 = v424;
          v679 = *(v113 + 8);
          (v679)(v423, v422);
          OUTLINED_FUNCTION_74_15();
          OUTLINED_FUNCTION_79_11();

          *(v634 + 14) = v622;
          OUTLINED_FUNCTION_37_13(&dword_25D85C000, v425, v426, "%s created trip: %{sensitive}s");
          OUTLINED_FUNCTION_68_11();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_2_8();
        }

        else
        {

          v679 = *(v113 + 8);
          (v679)(v26, v680);
        }

        v430 = OUTLINED_FUNCTION_122_7(&v651);
        v236 = v635;
        v414(v430);
        swift_storeEnumTagMultiPayload();
        v431 = v628[1];
        OUTLINED_FUNCTION_92();
        v220 = v672;
        __swift_storeEnumTagSinglePayload(v432, v433, v434, v672);
        v113 = v674;
        v221 = v629;
        *(v629 + *(v674 + 28)) = MEMORY[0x277D84F90];
        v435 = (v221 + *(v113 + 40));
        *v435 = 0;
        v435[1] = 0;
        OUTLINED_FUNCTION_5_30();
        v436 = OUTLINED_FUNCTION_179_0();
        _s10OmniSearch0B6ResultVWOcTm_7(v436, v437, v438);
        OUTLINED_FUNCTION_160_4();
        OUTLINED_FUNCTION_6_20();
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v439, v440, MEMORY[0x277D85380]);
        OUTLINED_FUNCTION_156_5();
        OUTLINED_FUNCTION_47_11();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_192_6(v431, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR, &v652);
        OUTLINED_FUNCTION_105_3(v185);
        if (v187)
        {
          OUTLINED_FUNCTION_103_10();
          outlined destroy of IntentApplication?(v441, v442, v443);
          OUTLINED_FUNCTION_4_31();
          OUTLINED_FUNCTION_19_18();
          OUTLINED_FUNCTION_103_10();
          outlined destroy of IntentApplication?(v444, v445, v446);
          OUTLINED_FUNCTION_0_50();
          _s10OmniSearch0B6ResultVWOhTm_5(v26, v447);
          OUTLINED_FUNCTION_59_11();
          (v679)(v236, v680);
          goto LABEL_39;
        }

        outlined destroy of IntentApplication?(v431, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v26, v448);
        OUTLINED_FUNCTION_59_11();
        (v679)(v236, v680);
        OUTLINED_FUNCTION_32_21();
        v229 = v621;
        v249 = OUTLINED_FUNCTION_54_0();
        goto LABEL_38;
      }

      v259 = &_s15OmniSearchTypes4TripVSgMd;
      v260 = &_s15OmniSearchTypes4TripVSgMR;
      v261 = v634;
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_66_12(v386);
    OUTLINED_FUNCTION_250_2();
    if (v182)
    {
      goto LABEL_113;
    }

    v674 = v113;
    v602 = v183;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_145_4();
    if (v187 && v428 == v185)
    {
    }

    else
    {
      OUTLINED_FUNCTION_66_12(v427);
      OUTLINED_FUNCTION_250_2();
      if ((v182 & 1) == 0)
      {
        v469 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v469 == v224 && v470 == v185)
        {
        }

        else
        {
          OUTLINED_FUNCTION_130_8(v469, v470);
          OUTLINED_FUNCTION_250_2();
          if ((v182 & 1) == 0)
          {
            v520 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v520 == v224 && v521 == v185)
            {
            }

            else
            {
              OUTLINED_FUNCTION_130_8(v520, v521);
              OUTLINED_FUNCTION_250_2();
              if ((v182 & 1) == 0)
              {

                v568 = v679;
                v569 = Logger.logObject.getter();
                v570 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v569, v570))
                {
                  OUTLINED_FUNCTION_90_1();
                  *&v685 = OUTLINED_FUNCTION_52_14();
                  *v568 = 136315394;
                  *(v568 + 4) = OUTLINED_FUNCTION_19_19();
                  *(v568 + 6) = 2080;
                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  OUTLINED_FUNCTION_151_3();
                  *(v568 + 14) = "createSearchResult(from:)";
                  OUTLINED_FUNCTION_67_13(&dword_25D85C000, v571, v572, "%s unimplemented eventType: %s");
                  OUTLINED_FUNCTION_154_2();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_64_10();
                }

                else
                {
                }

                goto LABEL_133;
              }
            }

            v552 = OUTLINED_FUNCTION_132_8(v678);
            RestaurantReservation.init(item:)(v552);
            v553 = OUTLINED_FUNCTION_11_1();
            OUTLINED_FUNCTION_166(v553, v554, v610);
            if (!v187)
            {
              OUTLINED_FUNCTION_65_14();
              v555(v607, v609, v610);
              v557 = *(v113 + 16);
              v113 += 16;
              v556 = v557;
              OUTLINED_FUNCTION_103_10();
              v557();
              v558 = Logger.logObject.getter();
              v559 = static os_log_type_t.info.getter();
              if (OUTLINED_FUNCTION_4_11(v559))
              {
                OUTLINED_FUNCTION_90_1();
                v561 = OUTLINED_FUNCTION_51_13();
                OUTLINED_FUNCTION_99_10(v561);
                v562 = OUTLINED_FUNCTION_16_22(4.8151e-34);
                OUTLINED_FUNCTION_25_18(v562);
                OUTLINED_FUNCTION_93_10(&v627);
                OUTLINED_FUNCTION_113_10();
                v556();
                OUTLINED_FUNCTION_48_3();
                String.init<A>(describing:)();
                OUTLINED_FUNCTION_166_5();
                v563 = OUTLINED_FUNCTION_38_19();
                v565 = v564;
                v564(v563, v610);
                OUTLINED_FUNCTION_74_15();
                OUTLINED_FUNCTION_79_11();

                *(v607 + 14) = "createSearchResult(from:)";
                OUTLINED_FUNCTION_37_13(&dword_25D85C000, v566, v567, "%s created upcomingRestaurant: %{sensitive}s");
                OUTLINED_FUNCTION_68_11();
                OUTLINED_FUNCTION_37_0();
                OUTLINED_FUNCTION_2_8();
              }

              else
              {

                v565 = *(v608 + 8);
                v565(v605, v610);
              }

              v573 = OUTLINED_FUNCTION_119_5(v628);
              (v556)(v573, v607, v610);
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_122_7(&v629);
              OUTLINED_FUNCTION_92();
              OUTLINED_FUNCTION_143_7(v574, v575, v576);
              v577 = v606;
              *(v606 + v578) = MEMORY[0x277D84F90];
              v579 = (v577 + v558[10]);
              *v579 = 0;
              v579[1] = 0;
              OUTLINED_FUNCTION_5_30();
              v580 = OUTLINED_FUNCTION_119();
              _s10OmniSearch0B6ResultVWOcTm_7(v580, v581, v582);
              type metadata accessor for CSSearchableItem();
              OUTLINED_FUNCTION_6_20();
              lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v583, v584, MEMORY[0x277D85380]);
              v585 = v680;
              OUTLINED_FUNCTION_47_11();
              CodableNSSecureCoding.init(wrappedValue:)();
              OUTLINED_FUNCTION_113_10();
              outlined init with copy of ResourceBundle?(v586, v587, v588, v589);
              OUTLINED_FUNCTION_105_3(v577);
              if (v187)
              {
                OUTLINED_FUNCTION_33_13();
                outlined destroy of IntentApplication?(v590, v591, v592);
                OUTLINED_FUNCTION_123_9();
                OUTLINED_FUNCTION_4_31();
                OUTLINED_FUNCTION_19_18();
                OUTLINED_FUNCTION_33_13();
                outlined destroy of IntentApplication?(v593, v594, v595);
                OUTLINED_FUNCTION_0_50();
                _s10OmniSearch0B6ResultVWOhTm_5(v603, v596);
                OUTLINED_FUNCTION_59_11();
                v597 = OUTLINED_FUNCTION_167_3();
                (v565)(v597);
              }

              else
              {
                outlined destroy of IntentApplication?(v604, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                OUTLINED_FUNCTION_0_50();
                _s10OmniSearch0B6ResultVWOhTm_5(v603, v598);
                OUTLINED_FUNCTION_59_11();
                v599 = OUTLINED_FUNCTION_167_3();
                (v565)(v599);
                OUTLINED_FUNCTION_32_21();
                OUTLINED_FUNCTION_226_1(&v626);
                OUTLINED_FUNCTION_128_6();
                v577();
                OUTLINED_FUNCTION_123_9();
                v601 = OUTLINED_FUNCTION_95_8(v600);
                (v577)(v601);
              }

              OUTLINED_FUNCTION_131_5();
              v503 = v633;
              goto LABEL_147;
            }

            v453 = &_s15OmniSearchTypes21RestaurantReservationVSgMd;
            v454 = &_s15OmniSearchTypes21RestaurantReservationVSgMR;
            v455 = &v635;
LABEL_132:
            outlined destroy of IntentApplication?(*(v455 - 32), v453, v454);
LABEL_133:
            v199 = 1;
            v26 = v183;
            v113 = v674;
            goto LABEL_21;
          }
        }

        v504 = OUTLINED_FUNCTION_132_8(v678);
        HotelReservation.init(item:)(v504);
        v505 = OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_166(v505, v506, v618);
        if (!v187)
        {
          OUTLINED_FUNCTION_65_14();
          v507(v615, v617, v618);
          v509 = *(v113 + 16);
          v113 += 16;
          v508 = v509;
          OUTLINED_FUNCTION_103_10();
          v509();
          v510 = Logger.logObject.getter();
          v511 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_4_11(v511))
          {
            OUTLINED_FUNCTION_90_1();
            v513 = OUTLINED_FUNCTION_51_13();
            OUTLINED_FUNCTION_99_10(v513);
            v514 = OUTLINED_FUNCTION_16_22(4.8151e-34);
            OUTLINED_FUNCTION_25_18(v514);
            OUTLINED_FUNCTION_93_10(&v631);
            OUTLINED_FUNCTION_113_10();
            v508();
            OUTLINED_FUNCTION_48_3();
            String.init<A>(describing:)();
            OUTLINED_FUNCTION_166_5();
            v515 = OUTLINED_FUNCTION_38_19();
            v517 = v516;
            v516(v515, v618);
            OUTLINED_FUNCTION_74_15();
            OUTLINED_FUNCTION_79_11();

            *(v615 + 14) = "createSearchResult(from:)";
            OUTLINED_FUNCTION_37_13(&dword_25D85C000, v518, v519, "%s created upcomingHotel: %{sensitive}s");
            OUTLINED_FUNCTION_68_11();
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_2_8();
          }

          else
          {

            v517 = *(v616 + 8);
            v517(v613, v618);
          }

          v523 = OUTLINED_FUNCTION_119_5(&v637);
          (v508)(v523, v615, v618);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_122_7(&v638);
          OUTLINED_FUNCTION_92();
          OUTLINED_FUNCTION_143_7(v524, v525, v526);
          v527 = v614;
          *(v614 + v528) = MEMORY[0x277D84F90];
          v529 = (v527 + v510[10]);
          *v529 = 0;
          v529[1] = 0;
          OUTLINED_FUNCTION_5_30();
          v530 = OUTLINED_FUNCTION_119();
          _s10OmniSearch0B6ResultVWOcTm_7(v530, v531, v532);
          type metadata accessor for CSSearchableItem();
          OUTLINED_FUNCTION_6_20();
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v533, v534, MEMORY[0x277D85380]);
          v535 = v680;
          OUTLINED_FUNCTION_47_11();
          CodableNSSecureCoding.init(wrappedValue:)();
          OUTLINED_FUNCTION_113_10();
          outlined init with copy of ResourceBundle?(v536, v537, v538, v539);
          OUTLINED_FUNCTION_105_3(v527);
          if (v187)
          {
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v540, v541, v542);
            OUTLINED_FUNCTION_123_9();
            OUTLINED_FUNCTION_4_31();
            OUTLINED_FUNCTION_19_18();
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v543, v544, v545);
            OUTLINED_FUNCTION_0_50();
            _s10OmniSearch0B6ResultVWOhTm_5(v611, v546);
            OUTLINED_FUNCTION_59_11();
            v547 = OUTLINED_FUNCTION_165_3();
            (v517)(v547);
          }

          else
          {
            outlined destroy of IntentApplication?(v612, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_0_50();
            _s10OmniSearch0B6ResultVWOhTm_5(v611, v548);
            OUTLINED_FUNCTION_59_11();
            v549 = OUTLINED_FUNCTION_165_3();
            (v517)(v549);
            OUTLINED_FUNCTION_32_21();
            OUTLINED_FUNCTION_226_1(&v630);
            OUTLINED_FUNCTION_128_6();
            v527();
            OUTLINED_FUNCTION_123_9();
            v551 = OUTLINED_FUNCTION_95_8(v550);
            (v527)(v551);
          }

          OUTLINED_FUNCTION_131_5();
          v503 = v641;
          goto LABEL_147;
        }

        v453 = &_s15OmniSearchTypes16HotelReservationVSgMd;
        v454 = &_s15OmniSearchTypes16HotelReservationVSgMR;
        v455 = &v642;
        goto LABEL_132;
      }
    }

    v449 = OUTLINED_FUNCTION_132_8(v678);
    FlightReservation.init(item:)(v449, v450);
    v451 = OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_166(v451, v452, v632);
    if (!v187)
    {
      OUTLINED_FUNCTION_65_14();
      v456(v625, v631, v632);
      v458 = *(v113 + 16);
      v113 += 16;
      v457 = v458;
      OUTLINED_FUNCTION_103_10();
      v458();
      v459 = Logger.logObject.getter();
      v460 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_4_11(v460))
      {
        OUTLINED_FUNCTION_90_1();
        v462 = OUTLINED_FUNCTION_51_13();
        OUTLINED_FUNCTION_99_10(v462);
        v463 = OUTLINED_FUNCTION_16_22(4.8151e-34);
        OUTLINED_FUNCTION_25_18(v463);
        OUTLINED_FUNCTION_93_10(&v640);
        OUTLINED_FUNCTION_113_10();
        v457();
        OUTLINED_FUNCTION_48_3();
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_166_5();
        v464 = OUTLINED_FUNCTION_38_19();
        v466 = v465;
        v465(v464, v632);
        OUTLINED_FUNCTION_74_15();
        OUTLINED_FUNCTION_79_11();

        *(v625 + 14) = "createSearchResult(from:)";
        OUTLINED_FUNCTION_37_13(&dword_25D85C000, v467, v468, "%s created upcomingFlight: %{sensitive}s");
        OUTLINED_FUNCTION_68_11();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {

        v466 = *(v626 + 8);
        v466(v623, v632);
      }

      v472 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48);
      v473 = v619;
      (v457)(v619, v625, v632);
      v474 = MEMORY[0x277D84F90];
      *(v619 + v472) = MEMORY[0x277D84F90];
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122_7(&v646);
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_143_7(v475, v476, v477);
      v478 = v624;
      *(v624 + v479) = v474;
      v480 = (v478 + *(v472 + 40));
      *v480 = 0;
      v480[1] = 0;
      OUTLINED_FUNCTION_5_30();
      _s10OmniSearch0B6ResultVWOcTm_7(v473, v478, v481);
      type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_6_20();
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v482, v483, MEMORY[0x277D85380]);
      v484 = v680;
      OUTLINED_FUNCTION_47_11();
      CodableNSSecureCoding.init(wrappedValue:)();
      OUTLINED_FUNCTION_113_10();
      outlined init with copy of ResourceBundle?(v485, v486, v487, v488);
      OUTLINED_FUNCTION_105_3(v478);
      if (v187)
      {
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v489, v490, v491);
        OUTLINED_FUNCTION_123_9();
        OUTLINED_FUNCTION_4_31();
        OUTLINED_FUNCTION_19_18();
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v492, v493, v494);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v619, v495);
        OUTLINED_FUNCTION_59_11();
        v496 = OUTLINED_FUNCTION_162_6();
        (v466)(v496);
      }

      else
      {
        outlined destroy of IntentApplication?(v620, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v619, v497);
        OUTLINED_FUNCTION_59_11();
        v498 = OUTLINED_FUNCTION_162_6();
        (v466)(v498);
        OUTLINED_FUNCTION_32_21();
        OUTLINED_FUNCTION_226_1(&v639);
        OUTLINED_FUNCTION_128_6();
        v478();
        OUTLINED_FUNCTION_123_9();
        v500 = OUTLINED_FUNCTION_95_8(v499);
        (v478)(v500);
      }

      OUTLINED_FUNCTION_131_5();
      v503 = &v649;
LABEL_147:
      v251 = *(v503 - 32);
      *(v251 + v501) = v502;
      *(v251 + *(v113 + 36)) = v502;
      goto LABEL_40;
    }

    v453 = &_s15OmniSearchTypes17FlightReservationVSgMd;
    v454 = &_s15OmniSearchTypes17FlightReservationVSgMR;
    v455 = &v656;
    goto LABEL_132;
  }

  v182 = v680;
LABEL_23:

  v200 = v678;
  v201 = v673;
  RentalCarReservation.init(item:)(v200, v673);
  v202 = OUTLINED_FUNCTION_11_1();
  v203 = v677;
  OUTLINED_FUNCTION_166(v202, v204, v677);
  if (!v187)
  {
    v680 = v200;
    v674 = v113;
    (*(v191 + 32))(v190, v201, v203);
    v205 = v190;
    v113 = v191 + 16;
    v206 = *(v191 + 16);
    v206(v182, v205, v203);
    v207 = v679;
    v208 = Logger.logObject.getter();
    v209 = static os_log_type_t.info.getter();
    v210 = OUTLINED_FUNCTION_91_0(v209);
    v602 = v183;
    if (v210)
    {
      OUTLINED_FUNCTION_90_1();
      *&v685 = OUTLINED_FUNCTION_52_14();
      *v207 = 136315395;
      v211 = OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_23_19(v211);
      v212 = OUTLINED_FUNCTION_93_10(&v687);
      v206(v212, v182, v677);
      v213 = String.init<A>(describing:)();
      v214 = v206;
      v206 = v215;
      v216 = *(v191 + 8);
      v216(v182, v677);
      OUTLINED_FUNCTION_74_15();
      OUTLINED_FUNCTION_79_11();

      *(v207 + 14) = v213;
      v217 = v209;
      v218 = v216;
      OUTLINED_FUNCTION_78_13(&dword_25D85C000, v219, v217, "%s created rentalCarReservation: %{sensitive}s");
      OUTLINED_FUNCTION_154_2();
      v203 = v677;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_64_10();

      v220 = v672;
      v221 = v669;
    }

    else
    {

      v218 = *(v191 + 8);
      v218(v182, v203);
      v220 = v672;
      v221 = v669;
      v214 = v206;
    }

    v228 = OUTLINED_FUNCTION_122_7(&a13);
    v214(v228, v676, v203);
    swift_storeEnumTagMultiPayload();
    v229 = 1;
    v230 = v668;
    OUTLINED_FUNCTION_34_20(v668);
    *(v221 + v231) = MEMORY[0x277D84F90];
    v232 = (v221 + *(v113 + 40));
    *v232 = 0;
    v232[1] = 0;
    OUTLINED_FUNCTION_5_30();
    v233 = OUTLINED_FUNCTION_179_0();
    _s10OmniSearch0B6ResultVWOcTm_7(v233, v234, v235);
    v236 = type metadata accessor for CSSearchableItem();
    OUTLINED_FUNCTION_6_20();
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v237, v238, MEMORY[0x277D85380]);
    v239 = v680;
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v240 = v667;
    outlined init with copy of ResourceBundle?(v230, v667, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_105_3(v240);
    if (v187)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v241, v242, v243);
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      OUTLINED_FUNCTION_13_12();
      LOBYTE(v685) = 1;
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v244, v245, v246);
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v206, v247);
      v218(v676, v677);
LABEL_39:
      *(v221 + *(v113 + 32)) = 1;
      *(v221 + *(v113 + 36)) = 1;
      v251 = v221;
LABEL_40:
      v26 = v602;
LABEL_63:
      outlined init with take of SearchResult(v251, v26);
      v199 = 0;
      goto LABEL_21;
    }

    outlined destroy of IntentApplication?(v230, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_50();
    _s10OmniSearch0B6ResultVWOhTm_5(v206, v248);
    v218(v676, v677);
    OUTLINED_FUNCTION_32_21();
    v249 = OUTLINED_FUNCTION_119_5(&a10);
    v250 = v240;
LABEL_38:
    v236(v249, v250, v220);
    v236(v221 + *(v113 + 20), v229, v220);
    goto LABEL_39;
  }

  outlined destroy of IntentApplication?(v201, &_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  v199 = 1;
  v26 = v183;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v26, v199, 1, v113);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5NeverOGMd, &_sScCySSSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_project_boxed_opaque_existential_1(a3, v10);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance SmartChunkingPreprocessing;

  return specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(a1, a2, v12, a4, a5, v10, v11);
}

uint64_t closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v7 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_114(v7);
  v0[20] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for SearchResultItem(0);
  v0[21] = v8;
  OUTLINED_FUNCTION_114(v8);
  v0[22] = OUTLINED_FUNCTION_160();
  v0[23] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

uint64_t closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183_4();
  OUTLINED_FUNCTION_159();
  v13 = v12 + 7;
  v14 = v12[23];
  OUTLINED_FUNCTION_5_30();
  _s10OmniSearch0B6ResultVWOcTm_7(v15, v14, v16);
  OUTLINED_FUNCTION_88();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for MobileSMSDocument();
      goto LABEL_57;
    case 2u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for CalendarEvent();
      goto LABEL_57;
    case 3u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for Photo();
      goto LABEL_57;
    case 4u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for NoteDocument();
      goto LABEL_57;
    case 5u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for Reminder();
      goto LABEL_57;
    case 6u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for PhoneHistory();
      goto LABEL_57;
    case 7u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for VoicemailTranscript();
      goto LABEL_57;
    case 8u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for JournalEntry();
      goto LABEL_57;
    case 9u:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for VoiceMemo();
      goto LABEL_57;
    case 0xAu:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for Safari();
      goto LABEL_57;
    case 0xBu:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for FileDocument();
      goto LABEL_57;
    case 0xCu:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for WalletTransaction();
      goto LABEL_57;
    case 0xDu:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for WalletPass();
      goto LABEL_57;
    case 0xEu:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for Contact();
      goto LABEL_57;
    case 0xFu:
      v28 = type metadata accessor for Appointment();
      OUTLINED_FUNCTION_112_11(v28);
      v25 = &lazy protocol witness table cache variable for type Appointment and conformance Appointment;
      v26 = MEMORY[0x277D370E8];
      v27 = &protocol conformance descriptor for Appointment;
      goto LABEL_31;
    case 0x10u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5();
      v12[5] = type metadata accessor for FlightReservation();
      v19 = &lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation;
      v20 = MEMORY[0x277D37290];
      v21 = &protocol conformance descriptor for FlightReservation;
      goto LABEL_29;
    case 0x11u:
      v12[5] = type metadata accessor for HotelReservation();
      v19 = &lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation;
      v20 = MEMORY[0x277D37250];
      v21 = &protocol conformance descriptor for HotelReservation;
      goto LABEL_29;
    case 0x12u:
      v31 = type metadata accessor for Party();
      OUTLINED_FUNCTION_112_11(v31);
      v25 = &lazy protocol witness table cache variable for type Party and conformance Party;
      v26 = MEMORY[0x277D37520];
      v27 = &protocol conformance descriptor for Party;
      goto LABEL_31;
    case 0x13u:
      v12[5] = type metadata accessor for RestaurantReservation();
      v19 = &lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation;
      v20 = MEMORY[0x277D373D8];
      v21 = &protocol conformance descriptor for RestaurantReservation;
LABEL_29:
      v12[6] = lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v19, v20, v21);
      __swift_allocate_boxed_opaque_existential_1Tm(v12 + 2);
      OUTLINED_FUNCTION_33_13();
      v33();
      v34 = OUTLINED_FUNCTION_180();
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v36 = OUTLINED_FUNCTION_32_0();
      v38 = v37(v36);
      v40 = v39;
      v41 = v12[5];
      v42 = v12[6];
      v43 = OUTLINED_FUNCTION_180();
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v45 = *(v42 + 40);

      v45(v41, v42);
      v47 = v46;
      v48 = v12[6];
      v49 = OUTLINED_FUNCTION_180();
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v51 = OUTLINED_FUNCTION_112_2();
      v52(v51, v48);
      v54 = v53;
      v13 = v12 + 2;
      goto LABEL_32;
    case 0x14u:
      v29 = type metadata accessor for RentalCarReservation();
      OUTLINED_FUNCTION_112_11(v29);
      v25 = &lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation;
      v26 = MEMORY[0x277D37368];
      v27 = &protocol conformance descriptor for RentalCarReservation;
      goto LABEL_31;
    case 0x15u:
      v30 = type metadata accessor for ShippingOrder();
      OUTLINED_FUNCTION_112_11(v30);
      v25 = &lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder;
      v26 = MEMORY[0x277D37218];
      v27 = &protocol conformance descriptor for ShippingOrder;
      goto LABEL_31;
    case 0x16u:
      v32 = type metadata accessor for TicketedTransportation();
      OUTLINED_FUNCTION_112_11(v32);
      v25 = &lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation;
      v26 = MEMORY[0x277D37438];
      v27 = &protocol conformance descriptor for TicketedTransportation;
      goto LABEL_31;
    case 0x17u:
      v55 = type metadata accessor for TicketedShow();
      OUTLINED_FUNCTION_112_11(v55);
      v25 = &lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow;
      v26 = MEMORY[0x277D371B8];
      v27 = &protocol conformance descriptor for TicketedShow;
      goto LABEL_31;
    case 0x18u:
      v24 = type metadata accessor for Trip();
      OUTLINED_FUNCTION_112_11(v24);
      v25 = &lazy protocol witness table cache variable for type Trip and conformance Trip;
      v26 = MEMORY[0x277D37500];
      v27 = &protocol conformance descriptor for Trip;
LABEL_31:
      v12[11] = lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v25, v26, v27);
      __swift_allocate_boxed_opaque_existential_1Tm(v12 + 7);
      OUTLINED_FUNCTION_103_10();
      v56();
      v57 = OUTLINED_FUNCTION_32_0();
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v59 = OUTLINED_FUNCTION_54_0();
      v38 = v60(v59);
      v40 = v61;
      v62 = v12[11];
      __swift_project_boxed_opaque_existential_1(v12 + 7, v12[10]);
      v63 = *(v62 + 104);

      v64 = OUTLINED_FUNCTION_63_0();
      v63(v64);
      v47 = v65;
      v66 = v12[10];
      v67 = v12[11];
      __swift_project_boxed_opaque_existential_1(v12 + 7, v66);
      (*(v67 + 16))(v66, v67);
      v54 = v68;
LABEL_32:
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      v12[24] = v47;
      v12[25] = v54;
      if (v40)
      {
        OUTLINED_FUNCTION_98_2();
        v70 = v38 == 0xD000000000000014 && v69 == v40;
        if (v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_bridgeObjectRelease_n();

          swift_task_alloc();
          OUTLINED_FUNCTION_53();
          v12[26] = v71;
          *v71 = v72;
          v71[1] = closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:);
          OUTLINED_FUNCTION_136_7();

          return static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:)();
        }

        OUTLINED_FUNCTION_98_2();
        if (v38 == 0xD000000000000013 && v81 == v40)
        {

LABEL_68:

          swift_task_alloc();
          OUTLINED_FUNCTION_53();
          v12[27] = v111;
          *v111 = v112;
          v111[1] = closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:);
          OUTLINED_FUNCTION_136_7();

          return static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:)();
        }

        v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v83)
        {
          goto LABEL_68;
        }
      }

      else
      {
      }

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_104_9();

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = OUTLINED_FUNCTION_90_1();
        a10 = OUTLINED_FUNCTION_260();
        *v78 = 136315394;
        v79 = OUTLINED_FUNCTION_133_8();
        OUTLINED_FUNCTION_98_7(v79);
        v12[12] = v38;
        v12[13] = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        String.init<A>(describing:)();
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v78 + 14) = v80;
        _os_log_impl(&dword_25D85C000, v76, v77, "%s Returning event as-is. Unimplemented bundleId: %s", v78, 0x16u);
        OUTLINED_FUNCTION_109_10();
        goto LABEL_62;
      }

LABEL_64:
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v100, v101, v102);

      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_136_7();

      return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12);
    case 0x19u:
      v22 = v12[23];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5();
      v23 = type metadata accessor for GlobalItem;
      v17 = v22;
      goto LABEL_55;
    case 0x1Au:
    case 0x1Bu:
      v17 = v12[23];
      v18 = type metadata accessor for SearchResultItem;
      goto LABEL_54;
    case 0x1Cu:
      v17 = v12[23];
      v18 = type metadata accessor for Answer;
LABEL_54:
      v23 = v18;
LABEL_55:
      _s10OmniSearch0B6ResultVWOhTm_5(v17, v23);
      goto LABEL_58;
    case 0x1Du:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for OnScreen();
      goto LABEL_57;
    case 0x1Eu:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for GenericSpotlightItem();
      goto LABEL_57;
    default:
      OUTLINED_FUNCTION_56_11();
      type metadata accessor for EmailDocument();
LABEL_57:
      OUTLINED_FUNCTION_17();
      (*(v84 + 8))(v14);
LABEL_58:
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      __swift_project_value_buffer(v85, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_0_49();
      v86 = OUTLINED_FUNCTION_94();
      _s10OmniSearch0B6ResultVWOcTm_7(v86, v87, v88);
      v76 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v89))
      {
        v90 = v12[22];
        v91 = v12[20];
        v92 = OUTLINED_FUNCTION_90_1();
        a10 = OUTLINED_FUNCTION_260();
        *v92 = 136315394;
        v93 = OUTLINED_FUNCTION_133_8();
        OUTLINED_FUNCTION_98_7(v93);
        OUTLINED_FUNCTION_5_30();
        _s10OmniSearch0B6ResultVWOcTm_7(v91, v90, v94);
        OUTLINED_FUNCTION_63_0();
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_166_5();
        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v91, v95);
        OUTLINED_FUNCTION_63_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_79_11();

        *(v92 + 14) = v90;
        OUTLINED_FUNCTION_118_5(&dword_25D85C000, v96, v97, "%s Returning event as-is. Unimplemented sub event type: %s");
        OUTLINED_FUNCTION_68_11();
LABEL_62:
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
        v98 = v12[20];

        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v98, v99);
      }

      goto LABEL_64;
  }
}

uint64_t static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v0[3] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v0[10] = OUTLINED_FUNCTION_160();
  v0[11] = swift_task_alloc();
  v9 = type metadata accessor for SpotlightRankingItem();
  v0[12] = v9;
  OUTLINED_FUNCTION_21(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_199();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v0[15] = OUTLINED_FUNCTION_160();
  v0[16] = swift_task_alloc();
  v12 = type metadata accessor for SearchResultItem(0);
  v0[17] = v12;
  OUTLINED_FUNCTION_114(v12);
  v0[18] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for EmailDocument();
  v0[19] = v13;
  OUTLINED_FUNCTION_21(v13);
  v0[20] = v14;
  v0[21] = OUTLINED_FUNCTION_160();
  v0[22] = swift_task_alloc();
  v15 = type metadata accessor for SearchResult(0);
  v0[23] = v15;
  OUTLINED_FUNCTION_21(v15);
  v0[24] = v16;
  v0[25] = OUTLINED_FUNCTION_160();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v17 = type metadata accessor for OSSignpostID();
  v0[32] = v17;
  OUTLINED_FUNCTION_21(v17);
  v0[33] = v18;
  v0[34] = OUTLINED_FUNCTION_160();
  v0[35] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v19);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 336) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = v0[42];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_51_13();
    *v1 = 136315394;
    v4 = OUTLINED_FUNCTION_86_11();
    OUTLINED_FUNCTION_94_8(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
    Dictionary.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v1 + 14) = v5;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  if (*(v0[42] + 16) >= 2uLL)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v12))
    {
      v1 = OUTLINED_FUNCTION_51_0();
      v134 = OUTLINED_FUNCTION_49_0();
      *v1 = 136315138;
      *(v1 + 4) = OUTLINED_FUNCTION_86_11();
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v134);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }
  }

  v18 = specialized Collection.first.getter(v0[42]);

  if (v18)
  {
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F89FFD0](0, v18);
      }

      else
      {
        v19 = *(v18 + 32);
      }

      v20 = v19;
      v0[43] = v19;
      v21 = v0[29];
      v23 = v0[22];
      v22 = v0[23];
      v25 = v0[19];
      v24 = v0[20];
      v26 = v0[18];
      v130 = v0[15];
      v124 = v0[16];
      v126 = v0[12];

      v27 = v20;
      EmailDocument.init(from:)(v27, v28, v29, v30, v31, v32, v33, v34, v105, v107, v109, v111, v113, v115, v117, v119, v121, v124, v126, v130);
      (*(v24 + 16))(v26, v23, v25);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v127);
      *(v21 + *(v22 + 28)) = MEMORY[0x277D84F90];
      v38 = (v21 + *(v22 + 40));
      *v38 = 0;
      v38[1] = 0;
      OUTLINED_FUNCTION_5_30();
      _s10OmniSearch0B6ResultVWOcTm_7(v26, v21, v39);
      type metadata accessor for CSSearchableItem();
      OUTLINED_FUNCTION_6_20();
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(v40, v41, MEMORY[0x277D85380]);
      v42 = v27;
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of ResourceBundle?(v125, v131, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v131, 1, v127);
      v44 = v0[29];
      v45 = v0[23];
      v46 = v0[18];
      v47 = v0[15];
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of IntentApplication?(v0[15], &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_140_5();
        OUTLINED_FUNCTION_140_5();
        OUTLINED_FUNCTION_140_5();
        OUTLINED_FUNCTION_140_5();
        OUTLINED_FUNCTION_140_5();
        v110 = 0x100000000;
        v112 = 0x100000000;
        OUTLINED_FUNCTION_19_18();
        v48 = OUTLINED_FUNCTION_32_0();
        outlined destroy of IntentApplication?(v48, v49, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v46, v50);
      }

      else
      {
        v82 = v0[13];
        v81 = v0[14];
        v83 = v0[12];
        outlined destroy of IntentApplication?(v0[16], &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_0_50();
        _s10OmniSearch0B6ResultVWOhTm_5(v46, v84);
        v85 = *(v82 + 32);
        v85(v81, v47, v83);
        v85(v44 + *(v45 + 20), v81, v83);
      }

      v86 = v0[29];
      v87 = v0[30];
      v88 = v0[23];
      v89 = v0[24];
      *(v86 + *(v88 + 32)) = 1;
      *(v86 + *(v88 + 36)) = 1;
      outlined init with take of SearchResult(v86, v87);
      type metadata accessor for EmailContentManager();
      v90 = swift_allocObject();
      EmailContentManager.init()(v90, v91, v92, v93, v94, v95, v96, v97, v106, v108, v110, v112, v114, v116, v118, v120, v122, v125, v127, v131);
      v99 = v98;
      v0[44] = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
      v100 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v101 = swift_allocObject();
      v0[45] = v101;
      *(v101 + 16) = xmmword_25DBC8180;
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v87, v102 + v100, v103);
      v133 = (*(*v99 + 96) + **(*v99 + 96));
      v104 = swift_task_alloc();
      v0[46] = v104;
      *v104 = v0;
      v104[1] = static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:);

      return v133(v101);
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  OUTLINED_FUNCTION_200(v0[37], static Logging.search);

  v51 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_250_2();
  if (os_log_type_enabled(v51, v1))
  {
    v52 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_260();
    *v52 = 136315394;
    v53 = OUTLINED_FUNCTION_86_11();
    OUTLINED_FUNCTION_98_7(v53);
    OUTLINED_FUNCTION_30_5();
    *(v52 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_118_5(&dword_25D85C000, v54, v55, "%s No EmailDocument in the mapping for %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_42_0();
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_11(v57))
  {
    v58 = OUTLINED_FUNCTION_51_0();
    v135 = OUTLINED_FUNCTION_49_0();
    *v58 = 136315138;
    *(v58 + 4) = OUTLINED_FUNCTION_86_11();
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v135);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_2_8();
  }

  v64 = v0[23];
  v65 = v0[20];
  v66 = v0[21];
  v128 = v0[19];
  v132 = v0[36];
  v67 = v0[10];
  v68 = CodableNSSecureCoding.wrappedValue.getter();
  EmailDocument.init(from:)(v68, v69, v70, v71, v72, v73, v74, v75, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v128, v132);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v64);
  OUTLINED_FUNCTION_134_6();

  outlined destroy of IntentApplication?(v67, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  (*(v65 + 8))(v66, v129);
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_21_19();

  OUTLINED_FUNCTION_127();

  return v79();
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v5 + 376) = v0;

  if (v0)
  {
    v9 = static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:);
  }

  else
  {

    *(v5 + 384) = v3;
    v9 = static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:);
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v21 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v21, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v22 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v23 = OUTLINED_FUNCTION_172();
    v24 = OUTLINED_FUNCTION_159_5(v23);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v25, v26, v24, "EventManager.hydrateWithSourceEmailDocument", "");
    OUTLINED_FUNCTION_37_0();
  }

  v27 = OUTLINED_FUNCTION_30_16();
  v28(v27);
  v29 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v29);
  *(v20 + 288) = OUTLINED_FUNCTION_38_6();
  v30 = OUTLINED_FUNCTION_54_0();
  v31(v30);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v32 = *(v20 + 248);
  v33 = *(v20 + 32);
  v34 = type metadata accessor for Logger();
  *(v20 + 296) = v34;
  *(v20 + 304) = __swift_project_value_buffer(v34, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v33, v32, v35);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v20 + 248);
  v40 = &unk_25DBC9000;
  if (v38)
  {
    v41 = OUTLINED_FUNCTION_90_1();
    a17 = OUTLINED_FUNCTION_260();
    *v41 = 136315395;
    *(v41 + 4) = OUTLINED_FUNCTION_61_14();
    *(v41 + 12) = 2085;
    SearchResult.description.getter();
    OUTLINED_FUNCTION_164_4();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v39, v42);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v41 + 14) = v43;
    OUTLINED_FUNCTION_184_4(&dword_25D85C000, v44, v45, "%s Fetching source Email for event: %{sensitive}s");
    swift_arrayDestroy();
    v40 = &unk_25DBC9000;
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_72_9();
  }

  else
  {

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v39, v46);
  }

  if (*(v20 + 48))
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_90_1();
      a17 = OUTLINED_FUNCTION_260();
      *v49 = 136315394;
      v50 = OUTLINED_FUNCTION_61_14();
      OUTLINED_FUNCTION_98_7(v50);
      OUTLINED_FUNCTION_30_5();
      *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_118_5(&dword_25D85C000, v51, v52, "%s Fetching source document via mailMessageId: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_42_0();
    }

    v53 = *(v20 + 184);
    v54 = *(v20 + 56);
    v55 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v56 = swift_allocObject();
    *(v20 + 312) = v56;
    *(v56 + 16) = xmmword_25DBC8190;
    *(v20 + 392) = *(v53 + 24);
    *(v20 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    *(v56 + 32) = CodableNSSecureCoding.wrappedValue.getter();
    v92 = *(v55 + 8) + **(v55 + 8);
    v57 = swift_task_alloc();
    *(v20 + 328) = v57;
    *v57 = v20;
    v57[1] = static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:);
    OUTLINED_FUNCTION_17_4();

    return v61(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, v55 + 8, v92, a17, a18, a19, a20);
  }

  else
  {
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v67, v68, v69);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v20 + 208);
    if (v72)
    {
      v74 = OUTLINED_FUNCTION_90_1();
      a17 = OUTLINED_FUNCTION_260();
      *v74 = v40[411];
      v75 = OUTLINED_FUNCTION_61_14();
      OUTLINED_FUNCTION_155_7(v75);
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v73, v76);
      OUTLINED_FUNCTION_158();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v74 + 14) = v77;
      OUTLINED_FUNCTION_86_0(&dword_25D85C000, v78, v79, "%s Skipping. No mailMessageId for this event: %{sensitive}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v73, v80);
    }

    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v81, v82, v83);
    $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_54_15();

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_17_4();

    return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[47];

  OUTLINED_FUNCTION_0_49();
  v22 = OUTLINED_FUNCTION_30_5();
  _s10OmniSearch0B6ResultVWOcTm_7(v22, v23, v24);
  v25 = v21;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20[47];
    v29 = v20[25];
    v30 = OUTLINED_FUNCTION_49_0();
    a17 = swift_slowAlloc();
    *v30 = 136315651;
    v31 = OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_94_8(v31);
    v20[2] = v28;
    v32 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v30 + 14) = v33;
    *(v30 + 22) = 2085;
    SearchResult.description.getter();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v29, v34);
    OUTLINED_FUNCTION_179_0();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v30 + 24) = v35;
    OUTLINED_FUNCTION_92_8();
    _os_log_impl(v36, v37, v38, v39, v40, 0x20u);
    OUTLINED_FUNCTION_148_6();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    v41 = v20[25];

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v41, v42);
  }

  v43 = v20[47];
  v44 = v20[43];
  v62 = v20[30];
  v45 = v20[22];
  v46 = v20[20];
  v63 = v20[19];
  v64 = v20[36];
  v47 = v20[10];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  OUTLINED_FUNCTION_134_6();

  outlined destroy of IntentApplication?(v47, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_1_47();
  _s10OmniSearch0B6ResultVWOhTm_5(v62, v52);
  (*(v46 + 8))(v45, v63);
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_54_15();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_17_4();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, v62, v63, v64, a17, a18, a19, a20);
}

uint64_t static EventManager.hydrateWithSourceEmailDocument(for:mailMessageId:itemFetcher:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  v21 = v20[23];
  v22 = v20[11];
  specialized Collection.first.getter(v20[48], v22);

  OUTLINED_FUNCTION_166(v22, 1, v21);
  if (v23)
  {
    v24 = v20[4];
    outlined destroy of IntentApplication?(v20[11], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_0_49();
    v25 = OUTLINED_FUNCTION_119();
    _s10OmniSearch0B6ResultVWOcTm_7(v25, v26, v27);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = OUTLINED_FUNCTION_91_0(v29);
    v31 = v20[27];
    if (v30)
    {
      OUTLINED_FUNCTION_90_1();
      a17 = OUTLINED_FUNCTION_51_13();
      *v24 = 136315395;
      v32 = OUTLINED_FUNCTION_61_14();
      OUTLINED_FUNCTION_25_18(v32);
      SearchResult.description.getter();
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v31, v33);
      OUTLINED_FUNCTION_179_0();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v24 + 14) = v34;
      OUTLINED_FUNCTION_92_8();
      _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
      OUTLINED_FUNCTION_148_6();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v31, v48);
    }

    v49 = v20[43];
    v50 = v20[22];
    v51 = v20[20];
    v67 = v20[30];
    v68 = v20[19];
    v52 = v20[10];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    static EventManager.buildEventAfterHydration(for:locale:emailDocument:with:)();

    outlined destroy of IntentApplication?(v52, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v67, v57);
    (*(v51 + 8))(v50, v68);
  }

  else
  {
    a13 = v20[43];
    a14 = v20[30];
    v40 = v20[28];
    v41 = v20[22];
    v42 = v20[23];
    v43 = v20[20];
    v67 = v20[19];
    v68 = v20[36];
    v44 = v20[10];
    outlined init with take of SearchResult(v20[11], v40);
    OUTLINED_FUNCTION_0_49();
    v45 = OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B6ResultVWOcTm_7(v45, v46, v47);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v42);
    static EventManager.buildEventAfterHydration(for:locale:emailDocument:with:)();

    outlined destroy of IntentApplication?(v44, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    _s10OmniSearch0B6ResultVWOhTm_5(v40, type metadata accessor for SearchResult);
    _s10OmniSearch0B6ResultVWOhTm_5(a14, type metadata accessor for SearchResult);
    (*(v43 + 8))(v41, v67);
  }

  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_54_15();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_17_4();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, v67, v68, a17, a18, a19, a20);
}

uint64_t static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v0[34] = OUTLINED_FUNCTION_199();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v0[35] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v0[36] = OUTLINED_FUNCTION_199();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v0[37] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v0[38] = OUTLINED_FUNCTION_160();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v0[41] = OUTLINED_FUNCTION_160();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v0[44] = OUTLINED_FUNCTION_160();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v0[48] = OUTLINED_FUNCTION_160();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v16 = type metadata accessor for MobileSMSDocument();
  v0[52] = v16;
  OUTLINED_FUNCTION_21(v16);
  v0[53] = v17;
  v0[54] = OUTLINED_FUNCTION_160();
  v0[55] = swift_task_alloc();
  v18 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_114(v18);
  v0[56] = OUTLINED_FUNCTION_160();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v19 = type metadata accessor for OSSignpostID();
  v0[60] = v19;
  OUTLINED_FUNCTION_21(v19);
  v0[61] = v20;
  v0[62] = OUTLINED_FUNCTION_160();
  v0[63] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v21);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v3 = OUTLINED_FUNCTION_172();
    v4 = OUTLINED_FUNCTION_159_5(v3);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v5, v6, v4, "EventManager.hydrateWithSourceMessageDocumentFromResultHydrator", "");
    OUTLINED_FUNCTION_37_0();
  }

  v7 = *(v0 + 240);

  v8 = OUTLINED_FUNCTION_30_16();
  v9(v8);
  v10 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v10);
  *(v0 + 512) = OUTLINED_FUNCTION_38_6();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  if (v7)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    *(v0 + 520) = __swift_project_value_buffer(v13, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_0_49();
    v14 = OUTLINED_FUNCTION_94();
    _s10OmniSearch0B6ResultVWOcTm_7(v14, v15, v16);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = OUTLINED_FUNCTION_91_0(v18);
    v20 = *(v0 + 472);
    if (v19)
    {
      v21 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v21 = 136315395;
      v22 = OUTLINED_FUNCTION_53_13();
      OUTLINED_FUNCTION_155_7(v22);
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v20, v23);
      OUTLINED_FUNCTION_158();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v21 + 14) = v24;
      _os_log_impl(&dword_25D85C000, v17, v18, "%s Fetching source Message for event: %{sensitive}s", v21, 0x16u);
      OUTLINED_FUNCTION_109_10();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v20, v38);
    }

    type metadata accessor for Date();
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    *(v0 + 528) = type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    *(v0 + 536) = type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    *(v0 + 544) = type metadata accessor for PartialExtractedAttributes();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    v55 = one-time initialization token for search;

    if (v55 != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    *(v0 + 552) = __swift_project_value_buffer(v13, static Logging.search);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v57))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v58, v59, v60, v61, v62, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v107 = *(v0 + 416);
    v108 = *(v0 + 424);
    v64 = *(v0 + 400);
    v63 = *(v0 + 408);
    v104 = *(v0 + 440);
    v105 = v63;
    v66 = *(v0 + 368);
    v65 = *(v0 + 376);
    v67 = *(v0 + 336);
    v68 = *(v0 + 344);
    v70 = *(v0 + 312);
    v69 = *(v0 + 320);
    v106 = *(v0 + 248);

    outlined init with copy of ResourceBundle?(v63, v64, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of ResourceBundle?(v65, v66, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v71 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    specialized Array.append<A>(contentsOf:)(MEMORY[0x277D84F90]);
    outlined init with copy of ResourceBundle?(v68, v67, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined init with copy of ResourceBundle?(v69, v70, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    *(v0 + 560) = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
    *(v0 + 568) = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
    *(v0 + 576) = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    *(v0 + 584) = type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
    OUTLINED_FUNCTION_28_1();
    MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)(v88, v89, v90, v91, 0, 0, 0, 0, v71, 0, v71, v64, v66, v71, 0, 0, 0, 0, v110, v71);
    outlined destroy of IntentApplication?(v69, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v68, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of IntentApplication?(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v105, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v92 = v106[3];
    v93 = v106[4];
    __swift_project_boxed_opaque_existential_1(v106, v92);
    *(v0 + 120) = v107;
    *(v0 + 128) = &protocol witness table for MobileSMSDocument;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 96));
    (*(v108 + 16))(boxed_opaque_existential_1Tm, v104, v107);
    v109 = (*(v93 + 24) + **(v93 + 24));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 592) = v95;
    *v95 = v96;
    v95[1] = static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:);
    v97 = *(v0 + 224);

    return v109(v0 + 56, v97, v0 + 96, v92, v93);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v25 = *(v0 + 456);
    v26 = *(v0 + 224);
    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v26, v25, v28);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 456);
    if (v31)
    {
      v33 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v33 = 136315394;
      *(v33 + 4) = OUTLINED_FUNCTION_53_13();
      *(v33 + 12) = 2080;
      SearchResult.description.getter();
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v32, v34);
      OUTLINED_FUNCTION_158();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v33 + 14) = v35;
      OUTLINED_FUNCTION_86_0(&dword_25D85C000, v36, v37, "%s Skipping. No valid id for MobileSMS message: %s");
      OUTLINED_FUNCTION_109_10();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v32, v99);
    }

    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v100, v101, v102);
    $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

    OUTLINED_FUNCTION_60_9();

    OUTLINED_FUNCTION_127();

    return v103();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 600) = v0;

  if (v0)
  {
    v7 = static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
    v7 = static EventManager.hydrateWithSourceMessageDocumentFromResultHydrator(for:eventMessageIdentifier:resultHydrator:locale:);
  }

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = *(*(v0 + 424) + 8);
  (v1)(*(v0 + 440), *(v0 + 416));
  outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
  v2 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 88);
  outlined init with copy of ResourceBundle?(v0 + 16, v0 + 176, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
  if (*(v0 + 200))
  {
    v125 = v1;
    v118 = *(v0 + 536);
    v120 = *(v0 + 544);
    v3 = *(v0 + 528);
    outlined init with take of ResponseOverrideMatcherProtocol((v0 + 176), v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    OUTLINED_FUNCTION_112_2();

    v4 = ChatMessageRecord.text.getter();
    v123 = v5;
    v124 = v4;
    OUTLINED_FUNCTION_147_6();
    OUTLINED_FUNCTION_107();
    v6 = ChatMessageRecord.from.getter();
    OUTLINED_FUNCTION_147_6();
    OUTLINED_FUNCTION_107();
    v7 = ChatMessageRecord.isFromMe.getter() & 1;
    OUTLINED_FUNCTION_147_6();
    OUTLINED_FUNCTION_107();
    ChatMessageRecord.date.getter();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v11 = OUTLINED_FUNCTION_112_2();
    v13 = v12(v11);
    v121 = v14;
    v122 = v13;
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v15 = OUTLINED_FUNCTION_112_2();
    v17 = v16(v15);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v118);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v120);
    v115 = v7;
    if (*(v17 + 16))
    {
      outlined init with copy of ResourceBundle?(*(v0 + 392), *(v0 + 384), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v24 = OUTLINED_FUNCTION_107();
      outlined init with copy of ResourceBundle?(v24, v25, v26, v27);
      v114 = v17;
    }

    else
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_16_11(v45))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v46, v47, v48, v49, v50, 2u);
        OUTLINED_FUNCTION_2_8();
      }

      v51 = OUTLINED_FUNCTION_32_0();
      outlined init with copy of ResourceBundle?(v51, v52, v53, v54);
      v55 = OUTLINED_FUNCTION_64_0();
      outlined init with copy of ResourceBundle?(v55, v56, v57, v58);

      v126 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v6, v7);
      specialized Array.append<A>(contentsOf:)(MEMORY[0x277D84F90]);
      v114 = v126;
    }

    v109 = *(v0 + 576);
    v110 = *(v0 + 584);
    v59 = *(v0 + 568);
    v60 = *(v0 + 560);
    v119 = *(v0 + 392);
    v112 = *(v0 + 384);
    v116 = *(v0 + 360);
    v111 = *(v0 + 352);
    v113 = *(v0 + 328);
    v62 = *(v0 + 304);
    v61 = *(v0 + 312);
    v117 = *(v0 + 256);
    outlined init with copy of ResourceBundle?(v113, *(v0 + 336), &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined init with copy of ResourceBundle?(v62, v61, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v60);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v59);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v109);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v110);
    v107 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_28_1();
    MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)(v75, v76, v77, v78, 0, 0, v124, v123, v6, v115, v96, v112, v111, v100, 0, 0, v122, v121, v114, v107);
    outlined destroy of IntentApplication?(v62, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v113, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of IntentApplication?(v116, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v119, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    MobileSMSDocument.llmConsumableDescription(locale:)(v117);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v79, v80))
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_51_13();
      *v61 = 136315395;
      v81 = OUTLINED_FUNCTION_53_13();
      OUTLINED_FUNCTION_25_18(v81);
      OUTLINED_FUNCTION_180();
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v61 + 14) = v82;
      _os_log_impl(&dword_25D85C000, v79, v80, "%s Created a new MobileSMSDocument from source SMS document. New LLM description is: %{sensitive}s", v61, 0x16u);
      OUTLINED_FUNCTION_109_10();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
    }

    static EventManager.buildEventAfterSMSHydration(for:mobileSMSDocument:locale:)(*(v0 + 224), *(v0 + 432), *(v0 + 256), *(v0 + 264), v83, v84, v85, v86, v94, v95, v97, v98, v99, v101, v102, v103, v104, v105, v106, v108);
    v87 = OUTLINED_FUNCTION_32_0();
    v125(v87);
    outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  }

  else
  {
    v28 = *(v0 + 224);
    outlined destroy of IntentApplication?(v0 + 176, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
    OUTLINED_FUNCTION_0_49();
    v29 = OUTLINED_FUNCTION_119();
    _s10OmniSearch0B6ResultVWOcTm_7(v29, v30, v31);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = OUTLINED_FUNCTION_91_0(v33);
    v35 = *(v0 + 464);
    if (v34)
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_51_13();
      *v28 = 136315395;
      v36 = OUTLINED_FUNCTION_53_13();
      OUTLINED_FUNCTION_25_18(v36);
      SearchResult.description.getter();
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v35, v37);
      OUTLINED_FUNCTION_179_0();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v28 + 14) = v38;
      OUTLINED_FUNCTION_92_8();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
      OUTLINED_FUNCTION_148_6();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {

      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v35, v88);
    }

    outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v89, v90, v91);
  }

  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_60_9();

  OUTLINED_FUNCTION_127();

  return v92();
}

{
  v1 = v0[75];
  v2 = v0[56];
  v3 = v0[28];
  (*(v0[53] + 8))(v0[55], v0[52]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v3, v2, v4);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[75];
  v10 = v0[56];
  if (v8)
  {
    v11 = OUTLINED_FUNCTION_49_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v11 = 136315651;
    OUTLINED_FUNCTION_98_2();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_155_7(v13);
    OUTLINED_FUNCTION_164_4();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v10, v14);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v11 + 14) = v15;
    *(v11 + 22) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&dword_25D85C000, v6, v7, "%s Skipping. While retrieving this event: %{sensitive}s encountered error %@", v11, 0x20u);
    outlined destroy of IntentApplication?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_109_10();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v10, v18);
  }

  outlined destroy of IntentApplication?((v0 + 2), &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_7(v19, v20, v21);
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  OUTLINED_FUNCTION_60_9();

  OUTLINED_FUNCTION_127();

  return v22();
}

void static EventManager.buildEventAfterSMSHydration(for:mobileSMSDocument:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v152 = v27;
  object = v26;
  v29 = v28;
  type metadata accessor for Trip();
  OUTLINED_FUNCTION_14();
  v149 = v31;
  v150 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_36();
  v148 = (v33 - v32);
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Party();
  OUTLINED_FUNCTION_14();
  v146 = v35;
  v147 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_36();
  v145 = v37 - v36;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Appointment();
  OUTLINED_FUNCTION_14();
  v143 = v39;
  v144 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36();
  v142 = v41 - v40;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for RentalCarReservation();
  OUTLINED_FUNCTION_14();
  v140 = v43;
  v141 = v42;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36();
  v139 = v45 - v44;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for TicketedTransportation();
  OUTLINED_FUNCTION_14();
  v137 = v47;
  v138 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_36();
  v136 = v49 - v48;
  OUTLINED_FUNCTION_78_0();
  v135 = type metadata accessor for TicketedShow();
  OUTLINED_FUNCTION_14();
  v134 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_28_2(v53 - v52);
  v54 = type metadata accessor for RestaurantReservation();
  v55 = OUTLINED_FUNCTION_1_5(v54, &a16);
  v132 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_36();
  v59 = (v58 - v57);
  v60 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_14();
  v130 = v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_36();
  v65 = (v64 - v63);
  v66 = type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_14();
  v129 = v67;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_36();
  v71 = (v70 - v69);
  v72 = type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v74);
  v76 = &v128 - v75;
  v77 = type metadata accessor for SearchResult(0);
  v78 = OUTLINED_FUNCTION_114(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_0_49();
  v154 = v80;
  _s10OmniSearch0B6ResultVWOcTm_7(v29, v80, v81);
  v82.value._countAndFlagsBits = v25;
  v82.value._object = v23;
  v83 = MobileSMSDocument.llmConsumableDescription(locale:)(v82);
  object = v83._object;
  OUTLINED_FUNCTION_5_30();
  v84 = v29;
  _s10OmniSearch0B6ResultVWOcTm_7(v29, v76, v85);
  v151 = v72;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0xFu:
      v84 = v142;
      v86 = OUTLINED_FUNCTION_101_8();
      v87 = v144;
      v66(v86);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      goto LABEL_9;
    case 0x10u:
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      v93 = *&v76[*(v92 + 48)];
      v94 = *(v129 + 32);
      v94(v71, v76, v66);
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v95, v96);
      v97 = *(v92 + 48);
      v94(v29, v71, v66);
      *(v29 + v97) = v93;
      goto LABEL_10;
    case 0x11u:
      v88 = *(v130 + 32);
      v88(v65, v76, v60);
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v89, v90);
      v88(v29, v65, v60);
      goto LABEL_10;
    case 0x12u:
      v84 = v145;
      v100 = OUTLINED_FUNCTION_101_8();
      v87 = v147;
      v66(v100);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      goto LABEL_9;
    case 0x13u:
      v103 = *(v132 + 32);
      v104 = v133;
      v103(v59, v76, v133);
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v105, v106);
      v103(v29, v59, v104);
      goto LABEL_10;
    case 0x14u:
      v84 = v139;
      v91 = OUTLINED_FUNCTION_101_8();
      v87 = v141;
      v66(v91);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      goto LABEL_9;
    case 0x16u:
      v84 = v136;
      v98 = OUTLINED_FUNCTION_101_8();
      v87 = v138;
      v66(v98);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      goto LABEL_9;
    case 0x17u:
      v66 = *(v134 + 32);
      v99 = OUTLINED_FUNCTION_50_1(&a17);
      v87 = v135;
      (v66)(v99, v76, v135);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
LABEL_9:
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v101, v102);
      (v66)(v29, v84, v87);
      goto LABEL_10;
    case 0x18u:
      v107 = v148;
      v108 = *(v149 + 32);
      v109 = v150;
      v108(v148, v76, v150);
      OUTLINED_FUNCTION_47_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_161_3(v110, v111);
      v108(v29, v107, v109);
LABEL_10:
      swift_storeEnumTagMultiPayload();
      outlined init with take of SearchResult(v29, v152);
      break;
    default:

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v112, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_0_49();
      v113 = v131;
      _s10OmniSearch0B6ResultVWOcTm_7(v29, v131, v114);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_91_0(v116))
      {
        OUTLINED_FUNCTION_90_1();
        v155 = OUTLINED_FUNCTION_52_14();
        *v83._countAndFlagsBits = 136315395;
        OUTLINED_FUNCTION_98_2();
        v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_23_19(v117);
        OUTLINED_FUNCTION_5_30();
        _s10OmniSearch0B6ResultVWOcTm_7(v113, v128, v118);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v113, v119);
        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v83._countAndFlagsBits + 14) = v120;
        OUTLINED_FUNCTION_78_13(&dword_25D85C000, v121, v116, "%s Returning event as-is. Unimplemented sub event type: %{sensitive}s");
        OUTLINED_FUNCTION_68_11();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_64_10();
      }

      else
      {

        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v113, v122);
      }

      v123 = v154;
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v29, v124, v125);
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v76, v126);
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v123, v127);
      break;
  }

  OUTLINED_FUNCTION_148();
}

void $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)()
{
  OUTLINED_FUNCTION_155();
  v21 = v0;
  v1 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v15 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v15, static Logging.searchSignposter);
  v16 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v17 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v7, v1) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v7, v1);
      v18 = "";
    }

    v19 = OUTLINED_FUNCTION_172();
    *v19 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v16, v17, v20, v21, v18, v19, 2u);
    OUTLINED_FUNCTION_72_9();
  }

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_148();
}

void static EventManager.buildEventAfterHydration(for:locale:emailDocument:with:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v236 = v2;
  v238 = v3;
  v5 = v4;
  v7 = v6;
  v237 = v8;
  v9 = type metadata accessor for Trip();
  OUTLINED_FUNCTION_14();
  v254 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_2();
  v258 = v13;
  OUTLINED_FUNCTION_78_0();
  v14 = type metadata accessor for Party();
  v15 = OUTLINED_FUNCTION_1_5(v14, v262);
  v253 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_2();
  v252 = v18;
  OUTLINED_FUNCTION_78_0();
  v19 = type metadata accessor for Appointment();
  v20 = OUTLINED_FUNCTION_1_5(v19, &v261);
  v251 = v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  v249 = v23;
  OUTLINED_FUNCTION_78_0();
  v24 = type metadata accessor for RentalCarReservation();
  v25 = OUTLINED_FUNCTION_1_5(v24, &v260);
  v248 = v26;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v247 = v28;
  OUTLINED_FUNCTION_78_0();
  v29 = type metadata accessor for TicketedTransportation();
  v30 = OUTLINED_FUNCTION_1_5(v29, &v259);
  v246 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_2();
  v245 = v33;
  OUTLINED_FUNCTION_78_0();
  v34 = type metadata accessor for TicketedShow();
  v35 = OUTLINED_FUNCTION_1_5(v34, &v258);
  v244 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v38);
  v39 = type metadata accessor for ShippingOrder();
  v40 = OUTLINED_FUNCTION_1_5(v39, &v257);
  v242 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v43);
  v44 = type metadata accessor for RestaurantReservation();
  v45 = OUTLINED_FUNCTION_1_5(v44, &v256);
  v240 = v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v48);
  v49 = type metadata accessor for HotelReservation();
  v50 = OUTLINED_FUNCTION_1_5(v49, &v255);
  v239 = v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v53);
  v54 = type metadata accessor for FlightReservation();
  v55 = OUTLINED_FUNCTION_1_5(v54, &v254);
  v231 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_2();
  v59 = OUTLINED_FUNCTION_28_2(v58);
  v256 = type metadata accessor for SearchResultItem(v59);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39_0();
  v250 = v61;
  MEMORY[0x28223BE20](v62);
  v64 = v229 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v65);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v66);
  v68 = v229 - v67;
  v69 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_39_0();
  v255 = v71;
  MEMORY[0x28223BE20](v72);
  v74 = v229 - v73;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_0_49();
  v257 = v76;
  _s10OmniSearch0B6ResultVWOcTm_7(v7, v76, v77);
  outlined init with copy of ResourceBundle?(v1, v68, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v68, 1, v69);
  if (v78)
  {
    outlined destroy of IntentApplication?(v68, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v79.value._countAndFlagsBits = v5;
    v79.value._object = v238;
    v85 = v236;
    v80 = EmailDocument.llmConsumableDescription(locale:)(v79);
    OUTLINED_FUNCTION_181_5(v80._countAndFlagsBits, v80._object);
  }

  else
  {
    OUTLINED_FUNCTION_5_30();
    _s10OmniSearch0B6ResultVWOcTm_7(v68, v64, v81);
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v68, v82);
    SearchResultItem.associatedValue.getter(&v259);
    v83 = v262[0];
    v84 = v262[1];
    v85 = __swift_project_boxed_opaque_existential_1(&v259, v262[0]);
    v86 = (*(v84 + 56))(v5, v238, v83, v84);
    OUTLINED_FUNCTION_181_5(v86, v87);
    OUTLINED_FUNCTION_0_50();
    _s10OmniSearch0B6ResultVWOhTm_5(v64, v88);
    __swift_destroy_boxed_opaque_existential_1Tm(&v259);
  }

  v234 = v9;
  v235 = v64;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v89, static Logging.answerSynthesis);
  OUTLINED_FUNCTION_0_49();
  v90 = v7;
  _s10OmniSearch0B6ResultVWOcTm_7(v7, v74, v91);
  v238 = v85;
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = OUTLINED_FUNCTION_90_1();
    v259 = OUTLINED_FUNCTION_260();
    *v94 = 136315394;
    *(v94 + 4) = OUTLINED_FUNCTION_153_6();
    *(v94 + 12) = 2080;
    SearchResultItem.type.getter(&v264);
    v263 = v264;
    lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v74, v95);
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v94 + 14) = v96;
    _os_log_impl(&dword_25D85C000, v92, v93, "%s Build event for %s", v94, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {

    OUTLINED_FUNCTION_1_47();
    _s10OmniSearch0B6ResultVWOhTm_5(v74, v97);
  }

  v99 = v257;
  v98 = v258;
  v100 = v254;
  v101 = v250;
  OUTLINED_FUNCTION_5_30();
  _s10OmniSearch0B6ResultVWOcTm_7(v90, v101, v102);
  v103 = v256;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v105 = v255;
  v106 = v253;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for MobileSMSDocument();
      goto LABEL_56;
    case 2:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for CalendarEvent();
      goto LABEL_56;
    case 3:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for Photo();
      goto LABEL_56;
    case 4:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for NoteDocument();
      goto LABEL_56;
    case 5:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for Reminder();
      goto LABEL_56;
    case 6:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for PhoneHistory();
      goto LABEL_56;
    case 7:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for VoicemailTranscript();
      goto LABEL_56;
    case 8:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for JournalEntry();
      goto LABEL_56;
    case 9:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for VoiceMemo();
      goto LABEL_56;
    case 10:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for Safari();
      goto LABEL_56;
    case 11:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for FileDocument();
      goto LABEL_56;
    case 12:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for WalletTransaction();
      goto LABEL_56;
    case 13:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for WalletPass();
      goto LABEL_56;
    case 14:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for Contact();
      goto LABEL_56;
    case 15:
      v139 = v251;
      v140 = v249;
      OUTLINED_FUNCTION_110_8();
      v141();
      OUTLINED_FUNCTION_13_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v142);
      v143 = OUTLINED_FUNCTION_12_26();
      v105(v143);
      OUTLINED_FUNCTION_129_4();
      v144 = swift_storeEnumTagMultiPayload();
      v145 = OUTLINED_FUNCTION_126_9(v144);
      v146 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v146))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v147 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v147);
      v148 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v148);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v149 = &v249;
      goto LABEL_51;
    case 16:
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);
      v109 = *(v101 + *(v108 + 48));
      OUTLINED_FUNCTION_65_14();
      v110 = v230;
      v111 = v232;
      v112(v230, v101, v232);
      OUTLINED_FUNCTION_15_21();
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v113);
      v114 = *(v108 + 48);
      v115 = *(v100 + 16);
      v116 = OUTLINED_FUNCTION_129_4();
      v115(v116);
      *(v99 + v114) = v109;
      v117 = swift_storeEnumTagMultiPayload();
      v118 = OUTLINED_FUNCTION_126_9(v117);
      v119 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_91_0(v119))
      {
        OUTLINED_FUNCTION_90_1();
        v120 = OUTLINED_FUNCTION_52_14();
        v121 = v111;
        OUTLINED_FUNCTION_96_9(v120);
        *v110 = 136315395;
        v122 = OUTLINED_FUNCTION_33_17();
        OUTLINED_FUNCTION_14_19(v122);
        OUTLINED_FUNCTION_28_1();
        swift_beginAccess();
        v123 = OUTLINED_FUNCTION_226_1(&v242);
        (v115)(v123, v110, v111);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_191_6();
        OUTLINED_FUNCTION_151_3();
        *(v110 + 14) = v115;
        OUTLINED_FUNCTION_67_13(&dword_25D85C000, v124, v125, "%s Set eventSourceLLMConsumableDescription to %{sensitive}s");
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_64_10();
LABEL_21:

        v136 = *(v100 + 8);
        v137 = v110;
LABEL_22:
        v138 = v121;
      }

      else
      {

        v136 = *(v100 + 8);
        v137 = v110;
        v138 = v111;
      }

      v136(v137, v138);
LABEL_63:
      outlined init with take of SearchResult(v99, v237);
      break;
    case 17:
      OUTLINED_FUNCTION_110_8();
      v139 = v150;
      v140 = v151;
      v152();
      OUTLINED_FUNCTION_13_14();
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v153);
      v154 = OUTLINED_FUNCTION_12_26();
      v105(v154);
      OUTLINED_FUNCTION_129_4();
      v155 = swift_storeEnumTagMultiPayload();
      v145 = OUTLINED_FUNCTION_126_9(v155);
      v156 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v156))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v157 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v157);
      v158 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v158);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v149 = &v243;
      goto LABEL_51;
    case 18:
      v172 = v252;
      OUTLINED_FUNCTION_110_8();
      v173();
      OUTLINED_FUNCTION_15_21();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v174);
      v175 = *(v106 + 16);
      v176 = OUTLINED_FUNCTION_118_0();
      v175(v176);
      OUTLINED_FUNCTION_129_4();
      v177 = swift_storeEnumTagMultiPayload();
      v178 = OUTLINED_FUNCTION_126_9(v177);
      v179 = v106;
      v180 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_91_0(v180))
      {
        OUTLINED_FUNCTION_90_1();
        v181 = OUTLINED_FUNCTION_52_14();
        OUTLINED_FUNCTION_96_9(v181);
        v182 = OUTLINED_FUNCTION_17_24(4.8151e-34);
        OUTLINED_FUNCTION_14_19(v182);
        OUTLINED_FUNCTION_28_1();
        swift_beginAccess();
        v183 = OUTLINED_FUNCTION_226_1(&v250);
        (v175)(v183, v172, v100);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_191_6();
        OUTLINED_FUNCTION_151_3();
        *(v172 + 14) = v175;
        OUTLINED_FUNCTION_67_13(&dword_25D85C000, v184, v185, "%s Set eventSourceLLMConsumableDescription to %{sensitive}s");
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_64_10();
      }

      (*(v179 + 8))(v172, v100);
      goto LABEL_63;
    case 19:
      OUTLINED_FUNCTION_110_8();
      v139 = v194;
      v140 = v195;
      v196();
      OUTLINED_FUNCTION_13_14();
      HotelReservation.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v197);
      v198 = OUTLINED_FUNCTION_12_26();
      v105(v198);
      OUTLINED_FUNCTION_129_4();
      v199 = swift_storeEnumTagMultiPayload();
      v145 = OUTLINED_FUNCTION_126_9(v199);
      v200 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v200))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v201 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v201);
      v202 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v202);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v149 = &v244;
      goto LABEL_51;
    case 20:
      v139 = v248;
      v140 = v247;
      OUTLINED_FUNCTION_110_8();
      v159();
      OUTLINED_FUNCTION_13_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v160);
      v161 = OUTLINED_FUNCTION_12_26();
      v105(v161);
      OUTLINED_FUNCTION_129_4();
      v162 = swift_storeEnumTagMultiPayload();
      v145 = OUTLINED_FUNCTION_126_9(v162);
      v163 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v163))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v164 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v164);
      v165 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v165);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v149 = &v248;
      goto LABEL_51;
    case 21:
      v139 = v242;
      v100 = v233;
      v140 = v241;
      (*(v242 + 32))();
      OUTLINED_FUNCTION_13_14();
      ShippingOrder.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v166);
      v167 = OUTLINED_FUNCTION_12_26();
      v105(v167);
      OUTLINED_FUNCTION_129_4();
      v168 = swift_storeEnumTagMultiPayload();
      v145 = OUTLINED_FUNCTION_126_9(v168);
      v169 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v169))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v170 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v170);
      v171 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v171);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v149 = &v245;
      goto LABEL_51;
    case 22:
      v140 = v245;
      OUTLINED_FUNCTION_110_8();
      v139 = v186;
      v187();
      OUTLINED_FUNCTION_13_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v188);
      v189 = OUTLINED_FUNCTION_12_26();
      v105(v189);
      OUTLINED_FUNCTION_129_4();
      v190 = swift_storeEnumTagMultiPayload();
      v145 = OUTLINED_FUNCTION_126_9(v190);
      v191 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v191))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v192 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v192);
      v193 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v193);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v149 = &v247;
      goto LABEL_51;
    case 23:
      v140 = v243;
      OUTLINED_FUNCTION_110_8();
      v139 = v203;
      v204();
      OUTLINED_FUNCTION_13_14();
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v205);
      v206 = OUTLINED_FUNCTION_12_26();
      v105(v206);
      OUTLINED_FUNCTION_129_4();
      v207 = swift_storeEnumTagMultiPayload();
      v145 = OUTLINED_FUNCTION_126_9(v207);
      v208 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_83_11(v208))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_90_1();
      v209 = OUTLINED_FUNCTION_52_14();
      OUTLINED_FUNCTION_96_9(v209);
      v210 = OUTLINED_FUNCTION_17_24(4.8151e-34);
      OUTLINED_FUNCTION_14_19(v210);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v149 = &v246;
LABEL_51:
      v211 = OUTLINED_FUNCTION_226_1(v149);
      (v105)(v211, v140, v100);
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_191_6();
      OUTLINED_FUNCTION_151_3();
      *(v101 + 14) = v105;
      OUTLINED_FUNCTION_78_13(&dword_25D85C000, v212, v103, "%s Set eventSourceLLMConsumableDescription to %{sensitive}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_64_10();
LABEL_52:

      (*(v139 + 8))(v140, v100);
      goto LABEL_63;
    case 24:
      v126 = OUTLINED_FUNCTION_94();
      v121 = v234;
      v127(v126);
      OUTLINED_FUNCTION_15_21();
      v128 = v98;
      Appointment.eventSourceLLMConsumableDescription.setter();
      OUTLINED_FUNCTION_0_50();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v129);
      v130 = *(v100 + 16);
      v130(v99, v98, v121);
      OUTLINED_FUNCTION_129_4();
      v131 = swift_storeEnumTagMultiPayload();
      v110 = v98;
      v118 = OUTLINED_FUNCTION_126_9(v131);
      v132 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_91_0(v132))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_90_1();
      v264 = OUTLINED_FUNCTION_52_14();
      *v128 = 136315395;
      v133 = OUTLINED_FUNCTION_33_17();
      OUTLINED_FUNCTION_14_19(v133);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      v130(v229[10], v110, v121);
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_191_6();
      OUTLINED_FUNCTION_151_3();
      *(v128 + 14) = v130;
      OUTLINED_FUNCTION_67_13(&dword_25D85C000, v134, v135, "%s Set eventSourceLLMConsumableDescription to %{sensitive}s");
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_64_10();

      v136 = *(v100 + 8);
      v137 = v258;
      goto LABEL_22;
    case 25:
      OUTLINED_FUNCTION_114_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);
      OUTLINED_FUNCTION_158_5();
      v107 = type metadata accessor for GlobalItem;
      goto LABEL_54;
    case 26:
    case 27:
      OUTLINED_FUNCTION_114_8();
      v107 = type metadata accessor for SearchResultItem;
      goto LABEL_54;
    case 28:
      OUTLINED_FUNCTION_114_8();
      v107 = type metadata accessor for Answer;
LABEL_54:
      _s10OmniSearch0B6ResultVWOhTm_5(v101, v107);
      goto LABEL_57;
    case 29:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for OnScreen();
      goto LABEL_56;
    case 30:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for GenericSpotlightItem();
      goto LABEL_56;
    default:
      OUTLINED_FUNCTION_114_8();
      type metadata accessor for EmailDocument();
LABEL_56:
      OUTLINED_FUNCTION_17();
      (*(v213 + 8))(v101);
LABEL_57:
      OUTLINED_FUNCTION_0_49();
      v215 = _s10OmniSearch0B6ResultVWOcTm_7(v90, v105, v214);
      v216 = OUTLINED_FUNCTION_126_9(v215);
      v217 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_91_0(v217))
      {
        OUTLINED_FUNCTION_90_1();
        v259 = OUTLINED_FUNCTION_52_14();
        *v101 = 136315395;
        v218 = OUTLINED_FUNCTION_153_6();
        OUTLINED_FUNCTION_23_19(v218);
        OUTLINED_FUNCTION_5_30();
        _s10OmniSearch0B6ResultVWOcTm_7(v105, v235, v219);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v220, v221);
        v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v101 + 14) = v222;
        OUTLINED_FUNCTION_67_13(&dword_25D85C000, v223, v224, "%s Returning event as-is. Unimplemented sub event type: %{sensitive}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_64_10();
      }

      else
      {

        OUTLINED_FUNCTION_1_47();
        _s10OmniSearch0B6ResultVWOhTm_5(v105, v225);
      }

      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v90, v226, v227);
      OUTLINED_FUNCTION_1_47();
      _s10OmniSearch0B6ResultVWOhTm_5(v99, v228);
      break;
  }

  OUTLINED_FUNCTION_148();
}

id @nonobjc CSSearchQuery.init(queryString:queryContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x25F89F4C0](a1);

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t partial apply for closure #1 in static EventManager.hydrateWithEvents(for:locale:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return closure #1 in static EventManager.hydrateWithEvents(for:locale:)(v5, v3, v7, v6);
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(void *a1)
{
  v2 = [a1 detectedEventTypes];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc CSSearchQueryContext.bundleIDs.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setBundleIDs_];
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_7(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a1;
  v7[18] = a2;
  v11 = type metadata accessor for OSSignpostID();
  v7[21] = v11;
  v7[22] = *(v11 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[5] = a6;
  v7[6] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v7 + 2);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1Tm, a3, a6);

  return MEMORY[0x2822009F8](specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:));
}

uint64_t specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)()
{
  OUTLINED_FUNCTION_183_4();
  v21 = v2;
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v3 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v3, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = OUTLINED_FUNCTION_172();
    v7 = OUTLINED_FUNCTION_159_5(v6);
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v4, v5, v7, "EventManager.hydrateWithSourceDocuments", "", v1, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);

  v11 = OUTLINED_FUNCTION_26_2();
  v12(v11);
  v13 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v13);
  *(v0 + 200) = OUTLINED_FUNCTION_38_6();
  v14 = OUTLINED_FUNCTION_64_0();
  v15(v14);
  outlined init with copy of ChatMessageRecord(v10, v0 + 56);
  outlined init with copy of ChatMessageRecord(v0 + 16, v0 + 96);
  v16 = swift_allocObject();
  *(v0 + 208) = v16;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v16 + 16);
  *(v16 + 56) = v9;
  *(v16 + 64) = v8;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 96), v16 + 72);
  OUTLINED_FUNCTION_175_5(&async function pointer to specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));

  v17 = swift_task_alloc();
  *(v0 + 216) = v17;
  *v17 = v0;
  v17[1] = specialized static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:);
  v18 = *(v0 + 136);

  return v20(0, &async function pointer to partial apply for closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:), v16, v18);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 224) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  $defer #1 () in static EventManager.hydrateWithEvents(for:locale:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];
  v2 = v0[28];

  return v1(v2);
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_5(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for EventManager(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSSgs5NeverOGMd, &_sScCySSSgs5NeverOGMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #1 in static EventManager.fetchExtractedEventsLLMConsumableDescription(for:locale:)(a1, v1 + v8, v9);
}

void OUTLINED_FUNCTION_4_31()
{
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
}

uint64_t OUTLINED_FUNCTION_14_19(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_22(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_17_24(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_19_19()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_20_14()
{
  *(v3 - 200) = v1;
  *(v3 - 232) = v2;
  return v0;
}

uint64_t OUTLINED_FUNCTION_23_19(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_18(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_17()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_36_14()
{
  result = v0;
  *(v2 - 184) = *(v1 + 8);
  return result;
}

void OUTLINED_FUNCTION_37_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_51_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_13()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_54_15()
{
}

uint64_t OUTLINED_FUNCTION_61_14()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_64_10()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_66_12(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_67_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_68_11()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_72_9()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_74_15()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_78_13(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

BOOL OUTLINED_FUNCTION_83_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_86_11()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_94_8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_96_9(uint64_t result)
{
  *(v1 - 152) = result;
  *(v1 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_7(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_10()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_114_8()
{
}

void OUTLINED_FUNCTION_118_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_126_9(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_130_8(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_133_8()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_134_6()
{

  static EventManager.buildEventAfterHydration(for:locale:emailDocument:with:)();
}

uint64_t OUTLINED_FUNCTION_151_3()
{
}

uint64_t OUTLINED_FUNCTION_152_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_153_6()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_154_2()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_155_7(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2085;

  SearchResult.description.getter();
}

id OUTLINED_FUNCTION_156_5()
{
  v2 = *(v0 - 200);

  return v2;
}

uint64_t OUTLINED_FUNCTION_158_5()
{
}

uint64_t OUTLINED_FUNCTION_159_5(_WORD *a1)
{
  *a1 = 0;

  return OSSignpostID.rawValue.getter();
}

unint64_t OUTLINED_FUNCTION_160_4()
{

  return type metadata accessor for CSSearchableItem();
}

uint64_t OUTLINED_FUNCTION_161_3(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 104);

  return _s10OmniSearch0B6ResultVWOhTm_5(v4, a2);
}

uint64_t OUTLINED_FUNCTION_181_5(uint64_t result, uint64_t a2)
{
  *(v2 - 360) = result;
  *(v2 - 344) = a2;
  return result;
}

void OUTLINED_FUNCTION_184_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_187_4()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_190_6()
{

  return OS_os_log.signpostsEnabled.getter();
}

uint64_t OUTLINED_FUNCTION_191_6()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_192_6@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return outlined init with copy of ResourceBundle?(a1, v5, a2, a3);
}

id one-time initialization function for searchableIndex()
{
  result = [objc_opt_self() defaultSearchableIndex];
  static FileContentManager.searchableIndex = result;
  return result;
}

{
  result = [objc_opt_self() defaultSearchableIndex];
  static CSSearchableIndexDataProvider.searchableIndex = result;
  return result;
}

uint64_t static FileContentManager.hydrateFileContent(from:)(uint64_t a1)
{
  v1[36] = a1;
  v2 = type metadata accessor for SpotlightRankingItem();
  v1[37] = v2;
  OUTLINED_FUNCTION_21(v2);
  v1[38] = v3;
  v1[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v1[40] = OUTLINED_FUNCTION_160();
  v1[41] = swift_task_alloc();
  v1[42] = type metadata accessor for SearchResultItem(0);
  v1[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12FileDocumentVSgMd, &_s15OmniSearchTypes12FileDocumentVSgMR);
  v1[44] = swift_task_alloc();
  v4 = type metadata accessor for FileDocument();
  v1[45] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[46] = v5;
  v1[47] = OUTLINED_FUNCTION_160();
  v1[48] = swift_task_alloc();
  v6 = type metadata accessor for SearchResult(0);
  v1[49] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[50] = v7;
  v1[51] = OUTLINED_FUNCTION_160();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v1[61] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[62] = v9;
  v1[63] = OUTLINED_FUNCTION_160();
  v1[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](static FileContentManager.hydrateFileContent(from:));
}

uint64_t static FileContentManager.hydrateFileContent(from:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v6, "FileContentManager.hydrateFileContent", "", v5, 2u);
    v7 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v7);
  }

  v8 = *(v0 + 504);
  v9 = *(v0 + 512);
  v10 = *(v0 + 488);
  v11 = *(v0 + 496);
  v12 = *(v0 + 288);

  (*(v11 + 16))(v8, v9, v10);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OUTLINED_FUNCTION_65();
  *(v0 + 520) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v13 = *(v12 + 16);
  *(v0 + 528) = v13;
  if (v13)
  {
    v14 = 0;
    v15 = *(v0 + 400);
    v16 = MEMORY[0x277CCA1A0];
    v17 = MEMORY[0x277D84F90];
    *(v0 + 600) = *(v15 + 80);
    *(v0 + 536) = *(v15 + 72);
    *(v0 + 544) = *v16;
    v18 = 0x28155B000uLL;
    while (1)
    {
      *(v0 + 568) = v17;
      *(v0 + 560) = v14;
      *(v0 + 552) = 0;
      v19 = *(v0 + 480);
      v20 = *(v0 + 352);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v21, v19, v22);
      SearchResultItem.associatedValue.getter((v0 + 144));
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
      if (swift_dynamicCast())
      {
        v24 = *(v0 + 384);
        v25 = *(v0 + 360);
        v26 = *(v0 + 368);
        OUTLINED_FUNCTION_28_17();
        (*(v26 + 32))(v24, v23, v25);
        *(v0 + 248) = 0;
        v27 = FileDocument.item.getter();
        v28 = [v27 attributeSet];

        v29 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.bundleID.getter(v28);
        if (v30)
        {
          v90 = v29;
          v91 = v30;
          v92 = FileDocument.id.getter();
          v94 = v93;
          if (*(v18 + 2888) != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v95 = type metadata accessor for Logger();
          *(v0 + 576) = __swift_project_value_buffer(v95, static Logging.answerSynthesis);

          v96 = Logger.logObject.getter();
          static os_log_type_t.info.getter();

          if (OUTLINED_FUNCTION_42_15())
          {
            OUTLINED_FUNCTION_9_4();
            v97 = swift_slowAlloc();
            swift_slowAlloc();
            *v97 = 136315650;
            *(v97 + 4) = OUTLINED_FUNCTION_16_23();
            *(v97 + 12) = 2080;
            *(v97 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v97 + 22) = 2080;
            *(v97 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_41_13(&dword_25D85C000, v98, v99, "%s Fetching file content with bundleID: %s, itemIdentifier: %s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            v100 = OUTLINED_FUNCTION_4_6();
            MEMORY[0x25F8A1050](v100);
          }

          if (one-time initialization token for searchableIndex != -1)
          {
            OUTLINED_FUNCTION_19_20(&one-time initialization token for searchableIndex);
          }

          v106 = static FileContentManager.searchableIndex;
          v101 = *(v0 + 544);
          v102 = MEMORY[0x25F89F4C0](v90, v91);
          *(v0 + 584) = v102;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_25DBC8180;
          *(v103 + 32) = v92;
          *(v103 + 40) = v94;
          isa = Array._bridgeToObjectiveC()().super.isa;
          *(v0 + 592) = isa;

          *(v0 + 16) = v0;
          OUTLINED_FUNCTION_13_15(v0 + 256);
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo8NSObjectCGSgs5NeverOGMd, &_sSccySaySo8NSObjectCGSgs5NeverOGMR);
          OUTLINED_FUNCTION_12_27(v105);
          *(v0 + 88) = 1107296256;
          OUTLINED_FUNCTION_11_25(block_descriptor_2);
          [v106 bulkFetchCacheFileDescriptorForProtectionClass:v101 bundleID:v102 identifiers:isa reason:0 completionHandler:v0 + 80];

          return MEMORY[0x282200938](v0 + 16);
        }

        if (*(v18 + 2888) != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logging.answerSynthesis);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        v34 = OUTLINED_FUNCTION_20_3();
        if (os_log_type_enabled(v34, v35))
        {
          OUTLINED_FUNCTION_28_3();
          v36 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v20 = swift_slowAlloc();
          *v36 = 136315138;
          *(v36 + 4) = OUTLINED_FUNCTION_16_23();
          _os_log_impl(&dword_25D85C000, v32, v33, "%s Expected to have item's CSSearchableItem.attributeSet.bundleID. It's OK, will just preserve existing result", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          v37 = OUTLINED_FUNCTION_6_21();
          MEMORY[0x25F8A1050](v37);
        }

        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v38, v39, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_29_12();
          v17 = v82;
        }

        v42 = *(v17 + 16);
        v41 = *(v17 + 24);
        if (v42 >= v41 >> 1)
        {
          v83 = OUTLINED_FUNCTION_22_5(v41);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v83, v84, v85, v17);
          v17 = v86;
        }

        OUTLINED_FUNCTION_15_22();
        v43 = *(v0 + 424);
        v44 = OUTLINED_FUNCTION_9_26();
        v45(v44);
        OUTLINED_FUNCTION_4_30();
        _s10OmniSearch0B6ResultVWOhTm_4(v33, v46);
        *(v17 + 16) = v42 + 1;
        v47 = v17 + v1 + v20 * v42;
        v48 = v43;
      }

      else
      {
        v49 = *(v0 + 352);
        v50 = OUTLINED_FUNCTION_65();
        __swift_storeEnumTagSinglePayload(v50, v51, 1, v52);
        outlined destroy of IntentApplication?(v49, &_s15OmniSearchTypes12FileDocumentVSgMd, &_s15OmniSearchTypes12FileDocumentVSgMR);
        if (*(v18 + 2888) != -1)
        {
          swift_once();
        }

        v53 = *(v0 + 480);
        v54 = *(v0 + 416);
        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Logging.answerSynthesis);
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v53, v54, v56);
        v57 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        v58 = os_log_type_enabled(v57, v1);
        v59 = *(v0 + 416);
        if (v58)
        {
          v60 = v18;
          v61 = OUTLINED_FUNCTION_90_1();
          OUTLINED_FUNCTION_21_20();
          swift_slowAlloc();
          *v61 = 136315394;
          v62 = OUTLINED_FUNCTION_16_23();
          OUTLINED_FUNCTION_40_17(v62);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v59, v63);
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v61 + 14) = v64;
          _os_log_impl(&dword_25D85C000, v57, v1, "%s Expected item to be of type FileDocument, but got -> %s. It's OK, will just preserve existing result", v61, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          v18 = v60;
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {

          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v59, v65);
        }

        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v66, v67, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_29_12();
          v17 = v77;
        }

        v70 = *(v17 + 16);
        v69 = *(v17 + 24);
        if (v70 >= v69 >> 1)
        {
          v78 = OUTLINED_FUNCTION_22_5(v69);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78, v79, v80, v17);
          v17 = v81;
        }

        v71 = *(v0 + 536);
        v72 = *(v0 + 408);
        v73 = (*(v0 + 600) + 32) & ~*(v0 + 600);
        OUTLINED_FUNCTION_4_30();
        _s10OmniSearch0B6ResultVWOhTm_4(v74, v75);
        *(v17 + 16) = v70 + 1;
        v47 = v17 + v73 + v71 * v70;
        v48 = v72;
      }

      outlined init with take of SearchResult(v48, v47);
      OUTLINED_FUNCTION_36_15();
      if (v76)
      {
        goto LABEL_32;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_32:
  v87 = *(v0 + 520);
  OUTLINED_FUNCTION_33_18();
  $defer #1 () in static FileContentManager.hydrateFileContent(from:)(v87);

  v88 = *(v0 + 8);

  return v88(v17);
}

{

  return MEMORY[0x2822009F8](static FileContentManager.hydrateFileContent(from:));
}

{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {

      v244 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      v1 = v244;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      if (swift_dynamicCastMetatype() || (v72 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_4:
      }

      else
      {
        v73 = (v2 + 32);
        while (*v73)
        {
          ++v73;
          if (!--v72)
          {
            goto LABEL_4;
          }
        }

        v1 = v2 | 1;
      }
    }
  }

  v3 = 0xD000000000000019;
  v4 = *(v0 + 584);
  v5 = *(v0 + 544);

  swift_beginAccess();
  *(v0 + 248) = v1;
  v6 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v7 = OUTLINED_FUNCTION_20_3();
  v9 = &loc_25DBC7000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_21_20();
    swift_slowAlloc();
    *v10 = 136315394;
    v11 = OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_94_8(v11);
    *(v0 + 280) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGSgMd, &_sSayyXlGSgMR);
    String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v10 + 14) = v12;
    OUTLINED_FUNCTION_196(&dword_25D85C000, v13, v14, "%s CSSearchableIndex bulkFetchCacheFileDescriptor returned FDs: %s");
    swift_arrayDestroy();
    v15 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v15);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v16 = "ptions";
  if (!v1)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_28_3();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v272 = swift_slowAlloc();
      *v45 = 136315138;
      *(v45 + 4) = OUTLINED_FUNCTION_10_25();
      _os_log_impl(&dword_25D85C000, v41, v42, "%s CSSearchableIndex bulkFetchCacheFileDescriptor returned nil results. It's OK, will just preserve existing result", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v272);
      v46 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v46);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_35_19();
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v47, v48, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v0 + 568);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v51 = v245;
    }

    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v51);
      v51 = v246;
    }

    v54 = *(v0 + 536);
    v55 = *(v0 + 480);
    v56 = *(v0 + 432);
    v57 = (*(v0 + 600) + 32) & ~*(v0 + 600);
    (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 360));
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v55, v58);
    *(v51 + 16) = v53 + 1;
    outlined init with take of SearchResult(v56, v51 + v57 + v54 * v53);
    goto LABEL_45;
  }

  v18 = specialized _arrayConditionalCast<A, B>(_:)(v17);
  if (!v18)
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v16 = "v16@?0@NSError8";
      v61 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_21_20();
      swift_slowAlloc();
      *v61 = 136315394;
      *(v61 + 4) = OUTLINED_FUNCTION_10_25();
      *(v61 + 12) = 2080;
      *(v61 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v59, v60, "%s Unable to cast cacheFileDescriptors with type %s to [xpc_object_t]. It's OK, will just preserve existing result", v61, 0x16u);
      swift_arrayDestroy();
      v62 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v62);
      v63 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v63);
    }

    OUTLINED_FUNCTION_35_19();
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v64, v65, v66);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v0 + 568);
    if ((v67 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v51 = v247;
    }

    v69 = *(v51 + 16);
    v68 = *(v51 + 24);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v248 = OUTLINED_FUNCTION_22_5(v68);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v248, v249, v250, v51);
      v51 = v251;
    }

    OUTLINED_FUNCTION_15_22();
    v71 = *(v0 + 440);
    goto LABEL_44;
  }

  v19 = v18;

  if (!specialized Array.count.getter())
  {

    v74 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v75 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_28_3();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v273 = swift_slowAlloc();
      *v77 = 136315138;
      *(v77 + 4) = OUTLINED_FUNCTION_10_25();
      _os_log_impl(&dword_25D85C000, v74, v60, "%s Unable to get the first file descriptor. It's OK, will just preserve existing result", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v273);
      v78 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v78);
      v79 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v79);
    }

    OUTLINED_FUNCTION_35_19();
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v80, v81, v82);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v0 + 568);
    if ((v83 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v51 = v252;
    }

    v69 = *(v51 + 16);
    v84 = *(v51 + 24);
    v70 = v69 + 1;
    if (v69 >= v84 >> 1)
    {
      v253 = OUTLINED_FUNCTION_22_5(v84);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v253, v254, v255, v51);
      v51 = v256;
    }

    OUTLINED_FUNCTION_15_22();
    v71 = *(v0 + 448);
LABEL_44:
    v85 = OUTLINED_FUNCTION_9_26();
    v86(v85);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v60, v87);
    *(v51 + 16) = v70;
    outlined init with take of SearchResult(v71, v51 - 0x2FFFFFFFFFFFFFE7 + v16 * v69);

LABEL_45:
    v88 = *(v0 + 552);
    goto LABEL_46;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x25F89FFD0](0, v19);
  }

  else
  {
    v20 = *(v19 + 32);
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (OUTLINED_FUNCTION_42_15())
  {
    v22 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_21_20();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_21(v23);
    *v22 = 136315394;
    v24 = OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_94_8(v24);
    *(v0 + 272) = v20;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, &_sSo13OS_xpc_object_pMR);
    String.init<A>(describing:)();
    v25 = v20;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v22 + 14) = v26;
    v20 = v25;
    OUTLINED_FUNCTION_196(&dword_25D85C000, v27, v28, "%s bulkFetchCacheFileDescriptor's 1st xpcObject: %s");
    OUTLINED_FUNCTION_109_10();
    v29 = OUTLINED_FUNCTION_6_21();
    MEMORY[0x25F8A1050](v29);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  swift_getObjectType();
  v30 = default argument 0 of OS_xpc_object.oms_read(byteCount:)();
  v31 = OS_xpc_object.oms_read(byteCount:)(v30);
  if (v32)
  {
    v33 = *(v0 + 520);
    v34 = *(v0 + 480);
    v35 = *(v0 + 384);
    v37 = *(v0 + 360);
    v36 = *(v0 + 368);
    OUTLINED_FUNCTION_37_14();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v35, v37);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v34, v38);

    $defer #1 () in static FileContentManager.hydrateFileContent(from:)(v33);

    OUTLINED_FUNCTION_250();

    __asm { BRAA            X1, X16 }
  }

  if (v31.value._object)
  {
    v190 = *(v0 + 464);
    v191 = *(v0 + 392);
    v193 = *(v0 + 368);
    v192 = *(v0 + 376);
    v194 = *(v0 + 360);
    v195 = *(v0 + 344);
    v264 = *(v0 + 328);
    v267 = *(v0 + 296);
    v271 = *(v0 + 320);
    FileDocument.updateCSSearchableItemAttributeTextContent(with:)(v31.value._countAndFlagsBits, v31.value._object);

    (*(v193 + 16))(v195, v192, v194);
    swift_storeEnumTagMultiPayload();
    v196 = FileDocument.item.getter();
    __swift_storeEnumTagSinglePayload(v264, 1, 1, v267);
    *(v190 + *(v191 + 28)) = MEMORY[0x277D84F90];
    v197 = (v190 + *(v191 + 40));
    *v197 = 0;
    v197[1] = 0;
    _s10OmniSearch0B6ResultVWOcTm_3(v195, v190, type metadata accessor for SearchResultItem);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v198 = v196;
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of SpotlightRankingItem?(v264, v271);
    v199 = OUTLINED_FUNCTION_65();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v199, v200, v267);
    v202 = *(v0 + 464);
    v203 = *(v0 + 392);
    v205 = *(v0 + 320);
    v204 = *(v0 + 328);
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 320), &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_27_16();
      SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

      outlined destroy of IntentApplication?(v204, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_14_20();
    }

    else
    {
      v229 = *(v0 + 304);
      v228 = *(v0 + 312);
      v230 = *(v0 + 296);

      outlined destroy of IntentApplication?(v204, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_14_20();
      v231 = *(v229 + 32);
      v231(v228, v205, v230);
      v231(v202 + *(v203 + 20), v228, v230);
    }

    v232 = *(v0 + 464);
    v233 = *(v0 + 472);
    v234 = *(v0 + 392);
    *(v232 + *(v234 + 32)) = 1;
    *(v232 + *(v234 + 36)) = 1;
    outlined init with take of SearchResult(v232, v233);
    v235 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v0 + 568);
    if ((v235 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v51 = v257;
    }

    v237 = *(v51 + 16);
    v236 = *(v51 + 24);
    if (v237 >= v236 >> 1)
    {
      OUTLINED_FUNCTION_39_15(v236, v237 + 1);
      v51 = v258;
    }

    v269 = *(v0 + 536);
    v238 = *(v0 + 600);
    v262 = *(v0 + 480);
    v265 = *(v0 + 472);
    v240 = *(v0 + 376);
    v239 = *(v0 + 384);
    v3 = *(v0 + 360);
    v241 = *(v0 + 368);
    swift_unknownObjectRelease();
    v242 = *(v241 + 8);
    v242(v240, v3);
    v242(v239, v3);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v262, v243);
    *(v51 + 16) = v237 + 1;
    v226 = v51 + ((v238 + 32) & ~v238) + v269 * v237;
    v227 = v265;
  }

  else
  {
    swift_unknownObjectRetain();
    v206 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (OUTLINED_FUNCTION_42_15())
    {
      v207 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_21_20();
      v208 = swift_slowAlloc();
      OUTLINED_FUNCTION_34_21(v208);
      *v207 = 136315394;
      v209 = OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_94_8(v209);
      *(v0 + 264) = v20;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, &_sSo13OS_xpc_object_pMR);
      String.init<A>(describing:)();
      v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v207 + 14) = v210;
      OUTLINED_FUNCTION_196(&dword_25D85C000, v211, v212, "%s Unable to read content of %s. It's OK, will just preserve existing result");
      OUTLINED_FUNCTION_109_10();
      v213 = OUTLINED_FUNCTION_6_21();
      MEMORY[0x25F8A1050](v213);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_35_19();
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v214, v215, v216);
    v217 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v0 + 568);
    if ((v217 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v51 = v259;
    }

    v3 = *(v51 + 16);
    v218 = *(v51 + 24);
    if (v3 >= v218 >> 1)
    {
      OUTLINED_FUNCTION_39_15(v218, v3 + 1);
      v51 = v260;
    }

    v268 = *(v0 + 536);
    v219 = *(v0 + 600);
    v220 = *(v0 + 480);
    v221 = *(v0 + 456);
    v222 = *(v0 + 384);
    v223 = *(v0 + 360);
    v224 = *(v0 + 368);
    swift_unknownObjectRelease();
    (*(v224 + 8))(v222, v223);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v220, v225);
    *(v51 + 16) = v3 + 1;
    v226 = v51 + ((v219 + 32) & ~v219) + v268 * v3;
    v227 = v221;
  }

  outlined init with take of SearchResult(v227, v226);

  v88 = 0;
  v9 = &loc_25DBC7000;
LABEL_46:
  v263 = v9[199];
  v89 = &_s10OmniSearch0B4Item_pMd;
  v266 = v88;
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_36_15();
      if (v91)
      {
        v167 = *(v0 + 520);
        OUTLINED_FUNCTION_33_18();
        OUTLINED_FUNCTION_37_14();
        $defer #1 () in static FileContentManager.hydrateFileContent(from:)(v167);

        OUTLINED_FUNCTION_250();

        __asm { BRAA            X2, X16 }
      }

      *(v0 + 568) = v51;
      *(v0 + 560) = v90;
      *(v0 + 552) = v88;
      v92 = *(v0 + 480);
      v93 = *(v0 + 352);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v94, v92, v95);
      SearchResultItem.associatedValue.getter((v0 + 144));
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(v89, &_s10OmniSearch0B4Item_pMR);
      if (swift_dynamicCast())
      {
        break;
      }

      v124 = *(v0 + 352);
      v125 = OUTLINED_FUNCTION_65();
      __swift_storeEnumTagSinglePayload(v125, v126, 1, v127);
      outlined destroy of IntentApplication?(v124, &_s15OmniSearchTypes12FileDocumentVSgMd, &_s15OmniSearchTypes12FileDocumentVSgMR);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v128 = *(v0 + 480);
      v129 = *(v0 + 416);
      v130 = type metadata accessor for Logger();
      __swift_project_value_buffer(v130, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v128, v129, v131);
      v3 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      v133 = os_log_type_enabled(v3, v132);
      v134 = *(v0 + 416);
      if (v133)
      {
        v135 = v89;
        v136 = OUTLINED_FUNCTION_90_1();
        OUTLINED_FUNCTION_21_20();
        v137 = swift_slowAlloc();
        OUTLINED_FUNCTION_34_21(v137);
        *v136 = v263;
        v138 = OUTLINED_FUNCTION_10_25();
        OUTLINED_FUNCTION_40_17(v138);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_4_30();
        _s10OmniSearch0B6ResultVWOhTm_4(v134, v139);
        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v136 + 14) = v140;
        _os_log_impl(&dword_25D85C000, v3, v132, "%s Expected item to be of type FileDocument, but got -> %s. It's OK, will just preserve existing result", v136, 0x16u);
        OUTLINED_FUNCTION_109_10();
        v141 = OUTLINED_FUNCTION_6_21();
        MEMORY[0x25F8A1050](v141);
        v89 = v135;
        v88 = v266;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050](v142, v143, v144, v145);
      }

      else
      {

        OUTLINED_FUNCTION_4_30();
        _s10OmniSearch0B6ResultVWOhTm_4(v134, v146);
      }

      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v147, v148, v149);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_32();
        v51 = v157;
      }

      v151 = *(v51 + 16);
      v150 = *(v51 + 24);
      if (v151 >= v150 >> 1)
      {
        v158 = OUTLINED_FUNCTION_22_5(v150);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v158, v159, v160, v51);
        v51 = v161;
      }

      v152 = *(v0 + 536);
      v153 = *(v0 + 408);
      v154 = (*(v0 + 600) + 32) & ~*(v0 + 600);
      OUTLINED_FUNCTION_4_30();
      _s10OmniSearch0B6ResultVWOhTm_4(v155, v156);
      *(v51 + 16) = v151 + 1;
      outlined init with take of SearchResult(v153, v51 + v154 + v152 * v151);
    }

    v97 = *(v0 + 384);
    v99 = *(v0 + 360);
    v98 = *(v0 + 368);
    OUTLINED_FUNCTION_28_17();
    (*(v98 + 32))(v97, v93, v99);
    *(v0 + 248) = 0;
    v100 = FileDocument.item.getter();
    v101 = [v100 attributeSet];

    v102 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.bundleID.getter(v101);
    if (v103)
    {
      break;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Logging.answerSynthesis);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    v107 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v107, v108))
    {
      OUTLINED_FUNCTION_28_3();
      v109 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v96 = swift_slowAlloc();
      *v109 = 136315138;
      *(v109 + 4) = OUTLINED_FUNCTION_10_25();
      _os_log_impl(&dword_25D85C000, v105, v106, "%s Expected to have item's CSSearchableItem.attributeSet.bundleID. It's OK, will just preserve existing result", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v110, v111, v112, v113);
      v114 = OUTLINED_FUNCTION_6_21();
      MEMORY[0x25F8A1050](v114);
    }

    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v115, v116, v117);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_32();
      v51 = v162;
    }

    v119 = *(v51 + 16);
    v118 = *(v51 + 24);
    if (v119 >= v118 >> 1)
    {
      v163 = OUTLINED_FUNCTION_22_5(v118);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v163, v164, v165, v51);
      v51 = v166;
    }

    OUTLINED_FUNCTION_15_22();
    v120 = *(v0 + 424);
    v121 = OUTLINED_FUNCTION_9_26();
    v122(v121);
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v106, v123);
    *(v51 + 16) = v119 + 1;
    outlined init with take of SearchResult(v120, v51 + v3 + v96 * v119);
  }

  v170 = v102;
  v171 = v103;
  v172 = FileDocument.id.getter();
  v174 = v173;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v175 = type metadata accessor for Logger();
  *(v0 + 576) = __swift_project_value_buffer(v175, static Logging.answerSynthesis);

  v176 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    OUTLINED_FUNCTION_9_4();
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_21(v178);
    *v177 = 136315650;
    *(v177 + 4) = OUTLINED_FUNCTION_10_25();
    *(v177 + 12) = 2080;
    *(v177 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v177 + 22) = 2080;
    *(v177 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_41_13(&dword_25D85C000, v179, v180, "%s Fetching file content with bundleID: %s, itemIdentifier: %s");
    swift_arrayDestroy();
    v181 = OUTLINED_FUNCTION_6_21();
    MEMORY[0x25F8A1050](v181);
    v182 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v182);
  }

  if (one-time initialization token for searchableIndex != -1)
  {
    OUTLINED_FUNCTION_19_20(&one-time initialization token for searchableIndex);
  }

  v270 = static FileContentManager.searchableIndex;
  v183 = *(v0 + 544);
  v184 = MEMORY[0x25F89F4C0](v170, v171);
  *(v0 + 584) = v184;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_25DBC8180;
  *(v185 + 32) = v172;
  *(v185 + 40) = v174;
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 592) = isa;

  *(v0 + 16) = v0;
  OUTLINED_FUNCTION_13_15(v0 + 256);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo8NSObjectCGSgs5NeverOGMd, &_sSccySaySo8NSObjectCGSgs5NeverOGMR);
  OUTLINED_FUNCTION_12_27(v187);
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_11_25(block_descriptor_2);
  [v270 bulkFetchCacheFileDescriptorForProtectionClass:v183 bundleID:v184 identifiers:isa reason:0 completionHandler:v0 + 80];
  OUTLINED_FUNCTION_250();

  return MEMORY[0x282200938](v188);
}

uint64_t $defer #1 () in static FileContentManager.hydrateFileContent(from:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchSignposter);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "FileContentManager.hydrateFileContent", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [NSObject]?(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v4);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
}

{
  v5 = MEMORY[0x277D84F90];
  specialized Array.count.getter();
  specialized ContiguousArray.reserveCapacity(_:)();
  result = specialized Array.count.getter();
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F89FFD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (!swift_dynamicCastObjCProtocolConditional())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for IMSPIMessage, 0x277D18DD0);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = a1 + 32;
  if (!v6)
  {
    return v10;
  }

  while (1)
  {
    outlined init with copy of Any(v7, v9);
    type metadata accessor for TRIClient(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v7 += 32;
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OS_xpc_object.oms_read(byteCount:)(Swift::Int byteCount)
{
  v3 = v1;
  if (xpc_fd_dup(v3) < 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logging.answerSynthesis);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_28_3();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v44 = swift_slowAlloc();
      *v21 = 136315138;
      *(v21 + 4) = OUTLINED_FUNCTION_17_25();
      _os_log_impl(&dword_25D85C000, v17, v18, "%s Per xpc.h 'If the descriptor could not be created or if the given object was not an XPC file descriptor, -1 is returned'.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v22 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v22);
      v23 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v23);
    }

    v14 = 0;
    v15 = 0;
    goto LABEL_27;
  }

  v5 = swift_slowAlloc();
  v6 = FileDescriptor.read(into:retryOnInterrupt:)();
  if (!v2)
  {
    v24 = v6;
    v25 = specialized Collection.prefix(_:)(v6, v5, v5 + byteCount);
    v29 = v25;
    v30 = v26;
    v31 = v28;
    if (v27)
    {
      v32 = v27;
      v33 = specialized RandomAccessCollection<>.distance(from:to:)(0, v25, v27, v28);
      v25 = specialized RandomAccessCollection<>.distance(from:to:)(v29, v30, v32, v31);
      if (__OFADD__(v33, v25))
      {
        __break(1u);
      }

      else
      {
        v26 = v25;
        if (v33 + v25 >= v33)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else if (!v25)
    {
      v25 = specialized RandomAccessCollection<>.distance(from:to:)(0, v26, 0, v28);
      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v14 = static String._fromUTF8Repairing(_:)();
        v15 = v34;
        v35 = v24;
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logging.answerSynthesis);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v37, v38))
        {
          OUTLINED_FUNCTION_9_4();
          v39 = swift_slowAlloc();
          OUTLINED_FUNCTION_21_20();
          swift_slowAlloc();
          *v39 = 136315651;
          *(v39 + 4) = OUTLINED_FUNCTION_17_25();
          *(v39 + 12) = 2048;
          *(v39 + 14) = v35;
          *(v39 + 22) = 2085;

          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v39 + 24) = v40;
          _os_log_impl(&dword_25D85C000, v37, v38, "%s size read: %ld, content: %{sensitive}s", v39, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        v41 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v41);
        if ((FileDescriptor._close()() & 0x100000000) != 0)
        {
          lazy protocol witness table accessor for type Errno and conformance Errno();
          swift_willThrowTypedImpl();
        }

        goto LABEL_27;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logging.answerSynthesis);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_28_3();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v43 = swift_slowAlloc();
    *v10 = 136315138;
    *(v10 + 4) = OUTLINED_FUNCTION_17_25();
    _os_log_impl(&dword_25D85C000, v8, v9, "%s No file size returned.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v11 = OUTLINED_FUNCTION_6_21();
    MEMORY[0x25F8A1050](v11);
    v12 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v12);
  }

  v13 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x25F8A1050](v13);
  if ((FileDescriptor._close()() & 0x100000000) != 0)
  {
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
  }

  v14 = 0;
  v15 = 0;
LABEL_27:
  v25 = v14;
  v26 = v15;
LABEL_32:
  result.value._object = v26;
  result.value._countAndFlagsBits = v25;
  return result;
}

void FileDocument.updateCSSearchableItemAttributeTextContent(with:)(uint64_t a1, uint64_t a2)
{
  v4 = FileDocument.item.getter();
  v5 = [v4 attributeSet];

  outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.textContent.setter(a1, a2, v5);
  v6 = FileDocument.item.getter();
  v7 = [v6 uniqueIdentifier];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = FileDocument.item.getter();
  v12 = outlined bridged method (ob) of @objc CSSearchableItem.domainIdentifier.getter(v11);
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v16 = v5;
  @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v8, v10, v12, v14, v16);
  FileDocument.id.getter();
  FileDocument.init(id:item:)();
}

CSSearchableItem __swiftcall CSSearchableItem.__allocating_init(uniqueIdentifier:domainIdentifier:attributeSet:)(Swift::String_optional uniqueIdentifier, Swift::String_optional domainIdentifier, CSSearchableItemAttributeSet attributeSet)
{
  object = domainIdentifier.value._object;
  countAndFlagsBits = domainIdentifier.value._countAndFlagsBits;
  v6 = uniqueIdentifier.value._object;
  v7 = uniqueIdentifier.value._countAndFlagsBits;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v7, v6, countAndFlagsBits, object, attributeSet.super.isa);
}

uint64_t FileDescriptor.read(into:retryOnInterrupt:)()
{
  v2 = FileDescriptor._read(into:retryOnInterrupt:)();
  if (!v0 && (v1 & 1) != 0)
  {
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v3 = v2;
  }

  return v2;
}

id @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x25F89F4C0](a1);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = MEMORY[0x25F89F4C0](a3, a4);

LABEL_6:
  v11 = [v5 initWithUniqueIdentifier:v9 domainIdentifier:v10 attributeSet:a5];

  return v11;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc CSSearchableItemAttributeSet.textContent.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setTextContent_];
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItem.domainIdentifier.getter(void *a1)
{
  v2 = [a1 domainIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_4_32()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_11_25(uint64_t a1@<X8>)
{
  v2[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [NSObject]?;
  v2[13] = a1;
  v2[14] = v1;
}

uint64_t OUTLINED_FUNCTION_12_27(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_15@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = static FileContentManager.hydrateFileContent(from:);

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_14_20()
{
  v2 = *(v0 - 104);

  return _s10OmniSearch0B6ResultVWOhTm_4(v2, type metadata accessor for SearchResultItem);
}

uint64_t OUTLINED_FUNCTION_16_23()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_19_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_17()
{
  v3 = *(v1 + 352);

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v0);
}

void OUTLINED_FUNCTION_29_12()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1, v0);
}

void OUTLINED_FUNCTION_37_14()
{
  v2 = v0[40];
  *(v1 - 128) = v0[41];
  v3 = v0[39];
  *(v1 - 112) = v2;
  *(v1 - 104) = v3;
}

void OUTLINED_FUNCTION_39_15(unint64_t a1@<X8>, uint64_t a2@<X1>)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, a2, 1, v2);
}

_OWORD *OUTLINED_FUNCTION_40_17(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;

  return SearchResultItem.associatedValue.getter((v1 + 184));
}

void OUTLINED_FUNCTION_41_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

BOOL OUTLINED_FUNCTION_42_15()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x2822009F8](CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:));
}

uint64_t CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:)()
{
  if (one-time initialization token for searchableIndex != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = static CSSearchableIndexDataProvider.searchableIndex;
  v4 = MEMORY[0x25F89F4C0](v0[20], v0[21]);
  v0[26] = v4;
  v5 = MEMORY[0x25F89F4C0](v2, v1);
  v0[27] = v5;
  v6 = OUTLINED_FUNCTION_118_0();
  v7 = MEMORY[0x25F89F4C0](v6);
  v0[28] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:);
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DataVs5Error_pGMd, &_sSccy10Foundation4DataVs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data;
  v0[13] = &block_descriptor_3;
  v0[14] = v8;
  [v3 provideDataForBundle:v4 identifier:v5 type:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:);
  }

  else
  {
    v5 = CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:);
  }

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  OUTLINED_FUNCTION_32_5();

  return v5(v4, v3);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {
    v8 = a2;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v5, v9, v11);
  }
}

uint64_t protocol witness for CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:) in conformance CSSearchableIndexDataProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:) in conformance CSSearchableIndexDataProvider;

  return CSSearchableIndexDataProvider.provideData(forBundle:identifier:type:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:) in conformance CSSearchableIndexDataProvider()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v6 = *v1;
  OUTLINED_FUNCTION_47();
  *v7 = v6;

  OUTLINED_FUNCTION_32_5();
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t one-time initialization function for providerDataTypeText()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.utf8PlainText.getter();
  v4 = UTType.identifier.getter();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  static GenericDataProviderManager.providerDataTypeText = v4;
  unk_27FC6FF00 = v6;
  return result;
}

uint64_t GenericDataProviderManager.fetchTextContent(from:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_28_0();
  v2[5] = v3;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](GenericDataProviderManager.fetchTextContent(from:));
}

uint64_t GenericDataProviderManager.fetchTextContent(from:)()
{
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    *swift_slowAlloc() = 0;
    v3 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v4, v5, v3, "GenericDataProviderManager.fetchTextContent", "");
    OUTLINED_FUNCTION_42_0();
  }

  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  v9 = OUTLINED_FUNCTION_9_27();
  v10(v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[8] = OUTLINED_FUNCTION_38_6();
  (*(v8 + 8))(v6, v7);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = GenericDataProviderManager.fetchTextContent(from:);
  v12 = v0[2];

  return GenericDataProviderManager.fetchTextWithProvideDataSPI(from:)(v12);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_52();
  v7 = v6;
  OUTLINED_FUNCTION_47();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_47();
  *v10 = v9;

  if (v0)
  {

    v11 = GenericDataProviderManager.fetchTextContent(from:);
  }

  else
  {
    *(v7 + 80) = v3;
    *(v7 + 88) = v5;
    v11 = GenericDataProviderManager.fetchTextContent(from:);
  }

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_72();
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
  }

  else
  {
    v2 = 0;
  }

  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v0[8], "GenericDataProviderManager.fetchTextContent");

  OUTLINED_FUNCTION_32_5();

  return v3(v2, v1);
}

{
  OUTLINED_FUNCTION_78();
  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(*(v0 + 64), "GenericDataProviderManager.fetchTextContent");

  OUTLINED_FUNCTION_32_5();

  return v1(0, 0);
}

uint64_t GenericDataProviderManager.fetchTextWithProvideDataSPI(from:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for SearchResult(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](GenericDataProviderManager.fetchTextWithProvideDataSPI(from:));
}

uint64_t GenericDataProviderManager.fetchTextWithProvideDataSPI(from:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    *swift_slowAlloc() = 0;
    v3 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v4, v5, v3, "GenericDataProviderManager.fetchTextWithProvideDataSPI", "");
    OUTLINED_FUNCTION_42_0();
  }

  v14 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  v8 = OUTLINED_FUNCTION_9_27();
  v9(v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_38_6();
  v0[13] = v10;
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v14, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  LOBYTE(v14) = v13;
  v0[14] = v13;
  v15 = CodableNSSecureCoding.wrappedValue.getter();
  v16 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v15);
  v0[15] = v16;
  v0[16] = v17;
  if (!v17)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v36, static Logging.answerSynthesis);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_77_5(v38))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_13_16();
    *v6 = 136315138;
    *(v6 + 4) = OUTLINED_FUNCTION_2_32();
    v39 = "%s Missing bundleID. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ";
LABEL_26:
    _os_log_impl(&dword_25D85C000, v37, v14, v39, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_42_0();
LABEL_27:
    OUTLINED_FUNCTION_42_0();
    goto LABEL_28;
  }

  v18 = v16;
  v6 = v17;
  v48 = v10;
  v19 = CodableNSSecureCoding.wrappedValue.getter();
  v11 = [v19 attributeSet];

  v20 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.identifier.getter(v11);
  v0[17] = v20;
  v0[18] = v21;
  if (!v21)
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v40 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v40, static Logging.answerSynthesis);
    v37 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_77_5(v41))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_13_16();
    *v6 = 136315138;
    *(v6 + 4) = OUTLINED_FUNCTION_2_32();
    v39 = "%s Missing MDItemExternalID. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ";
    goto LABEL_26;
  }

  v11 = v20;
  v22 = v21;
  v23 = CodableNSSecureCoding.wrappedValue.getter();
  v14 = [v23 attributeSet];

  v24 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.providerDataTypeIdentifiers.getter(v14);
  if (!v24)
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v42, static Logging.answerSynthesis);
    v37 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    v10 = v48;
    if (!OUTLINED_FUNCTION_77_5(v43))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_13_16();
    *v6 = 136315138;
    *(v6 + 4) = OUTLINED_FUNCTION_2_32();
    v39 = "%s Missing MDItemProviderDataTypes. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ";
    goto LABEL_26;
  }

  v25 = v24;
  if (one-time initialization token for providerDataTypeText != -1)
  {
    swift_once();
  }

  v27 = static GenericDataProviderManager.providerDataTypeText;
  v26 = unk_27FC6FF00;
  v0[19] = static GenericDataProviderManager.providerDataTypeText;
  v0[20] = v26;
  v0[2] = v27;
  v0[3] = v26;
  v28 = swift_task_alloc();
  *(v28 + 16) = v0 + 2;
  v29 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v28, v25);

  if (v29)
  {
    v30 = v0[5];
    v31 = v30[3];
    v32 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v31);
    OUTLINED_FUNCTION_28_0();
    v49 = (v33 + *v33);
    OUTLINED_FUNCTION_28_0();
    v34 = swift_task_alloc();
    v0[21] = v34;
    *v34 = v0;
    v34[1] = GenericDataProviderManager.fetchTextWithProvideDataSPI(from:);

    return (v49)(v18, v6, v11, v22, v27, v26, v31, v32);
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v45 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v45, static Logging.answerSynthesis);
  v37 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  v10 = v48;
  if (os_log_type_enabled(v37, v46))
  {
    v47 = swift_slowAlloc();
    swift_slowAlloc();
    OUTLINED_FUNCTION_13_16();
    *v47 = 136315394;
    *(v47 + 4) = OUTLINED_FUNCTION_2_32();
    *(v47 + 12) = 2080;
    *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v37, v46, "%s Missing %s. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ", v47, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    goto LABEL_27;
  }

LABEL_28:

  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v10, "GenericDataProviderManager.fetchTextWithProvideDataSPI");

  OUTLINED_FUNCTION_32_5();

  return v44(0, 0);
}

{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  *v3 = *v1;
  v2[22] = v4;
  v2[23] = v5;
  v2[24] = v0;

  if (v0)
  {
    v6 = GenericDataProviderManager.fetchTextWithProvideDataSPI(from:);
  }

  else
  {
    v6 = GenericDataProviderManager.fetchTextWithProvideDataSPI(from:);
  }

  return MEMORY[0x2822009F8](v6);
}

{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logging.answerSynthesis);

  outlined copy of Data._Representation(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  outlined consume of Data._Representation(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136316163;
    *(v6 + 4) = OUTLINED_FUNCTION_3_36();
    *(v6 + 12) = 2080;
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v6 + 14) = v7;
    *(v6 + 22) = 2080;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v6 + 24) = v8;
    *(v6 + 32) = 2080;
    *(v6 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v6 + 42) = 2085;
    v9 = OUTLINED_FUNCTION_118_0();
    outlined copy of Data._Representation(v9, v10);
    OUTLINED_FUNCTION_118_0();
    Data.description.getter();
    v11 = OUTLINED_FUNCTION_118_0();
    outlined consume of Data._Representation(v11, v12);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v6 + 44) = v13;
    _os_log_impl(&dword_25D85C000, v4, v5, "%s CSSearchableIndex provideDataForBundle: %s, identifier: %s, type: %s returned NSData: %{sensitive}s", v6, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  static String.Encoding.utf8.getter();
  v14 = String.init(data:encoding:)();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      outlined init with copy of SearchResult(v0[4], v0[7]);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v40 = v0[7];
        v41 = v20;
        v21 = swift_slowAlloc();
        swift_slowAlloc();
        *v21 = 136315394;
        *(v21 + 4) = OUTLINED_FUNCTION_3_36();
        *(v21 + 12) = 2080;
        v22 = CodableNSSecureCoding.wrappedValue.getter();
        v23 = [v22 uniqueIdentifier];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        outlined destroy of SearchResult(v40);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v21 + 14) = v24;
        _os_log_impl(&dword_25D85C000, v19, v41, "%s Successful in fetching text content via GenericDataProviderManager for note ID: %s", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
        v31 = v0[7];

        outlined destroy of SearchResult(v31);
      }

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      v34 = os_log_type_enabled(v32, v33);
      v36 = v0[22];
      v35 = v0[23];
      if (v34)
      {
        v37 = swift_slowAlloc();
        swift_slowAlloc();
        *v37 = 136315395;
        *(v37 + 4) = OUTLINED_FUNCTION_3_36();
        *(v37 + 12) = 2085;
        *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v32, v33, "%s Successful in fetching text content via GenericDataProviderManager, content: %{sensitive}s", v37, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      outlined consume of Data._Representation(v36, v35);

      goto LABEL_20;
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  v27 = os_log_type_enabled(v25, v26);
  v29 = v0[22];
  v28 = v0[23];
  if (v27)
  {
    v30 = OUTLINED_FUNCTION_51_0();
    v42 = swift_slowAlloc();
    *v30 = 136315138;
    *(v30 + 4) = OUTLINED_FUNCTION_3_36();
    _os_log_impl(&dword_25D85C000, v25, v26, "%s Data should be non-empty String. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices ", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  outlined consume of Data._Representation(v29, v28);

  v16 = 0;
  v17 = 0;
LABEL_20:
  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v0[13], "GenericDataProviderManager.fetchTextWithProvideDataSPI");

  OUTLINED_FUNCTION_32_5();

  return v38(v16, v17);
}

{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 104);

  $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(v1, "GenericDataProviderManager.fetchTextWithProvideDataSPI");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t $defer #1 () in GenericDataProviderManager.fetchTextContent(from:)(uint64_t a1, const char *a2)
{
  v22 = a2;
  v2 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v14 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v14, static Logging.searchSignposter);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v7, v2) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v2);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v15, v16, v19, v22, v17, v18, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  return (*(v10 + 8))(v13, v8);
}