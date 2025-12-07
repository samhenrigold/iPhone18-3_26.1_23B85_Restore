uint64_t dispatch thunk of CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_28_0();
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = dispatch thunk of CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of CSSearchableIndexDataProviderProtocol.provideData(forBundle:identifier:type:)()
{
  OUTLINED_FUNCTION_78();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_52();
  v5 = *v0;
  OUTLINED_FUNCTION_47();
  *v6 = v5;

  OUTLINED_FUNCTION_32_5();

  return v7(v4, v2);
}

uint64_t getEnumTagSinglePayload for GenericDataProviderManager(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericDataProviderManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.identifier.getter(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.providerDataTypeIdentifiers.getter(void *a1)
{
  v2 = [a1 providerDataTypeIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return swift_slowAlloc();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10OmniSearch17ChatMessageRecord_pG_AfG_ps5NeverOTg504_s10d8Search18g43BodyManagerV05dedupC4Dict_7basedOnSDySSAA04f2C6h31_pGAG_SaySSGtFZSayAaF_pGycfu15_z10F_pSS3key_z57F_p5valuet_tcfu16_32d072148418b0b8b3f2440b1710595293SSAJ_z6F_pAKtZ13F_pTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v37 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v37;
  result = specialized Dictionary.Values.startIndex.getter(a1);
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v24 = v5;
  v25 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(a1 + 36) != v5)
    {
      goto LABEL_23;
    }

    v27 = v8;
    v28 = v5;
    v26 = v6;
    v11 = (*(a1 + 48) + 16 * v7);
    v13 = *v11;
    v12 = v11[1];
    outlined init with copy of ChatMessageRecord(*(a1 + 56) + 40 * v7, v35);
    v33[0] = v13;
    v33[1] = v12;
    outlined init with take of ResponseOverrideMatcherProtocol(v35, &v34);
    outlined init with copy of ResourceBundle?(v33, v31, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
    v29[0] = v31[0];
    v29[1] = v31[1];
    outlined init with take of ResponseOverrideMatcherProtocol(&v32, v30);
    outlined init with copy of ChatMessageRecord(v30, v36);

    outlined destroy of IntentApplication?(v29, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
    outlined destroy of IntentApplication?(v33, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
    v37 = v2;
    v15 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v2 = v37;
    }

    *(v2 + 16) = v15 + 1;
    result = outlined init with take of ResponseOverrideMatcherProtocol(v36, v2 + 40 * v15 + 32);
    v16 = 1 << *(a1 + 32);
    if (v7 >= v16)
    {
      goto LABEL_24;
    }

    v9 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(a1 + 36) != v28)
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v16 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v16 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of [String : String].Index._Variant(v7, v28, v26 & 1);
          v16 = __clz(__rbit64(v22)) + v19;
          goto LABEL_19;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v7, v28, v26 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v27 + 1;
    v7 = v16;
    v5 = v24;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_SaySSGSaySS_AEtGTt1g5046_s10OmniSearch18MessageBodyManagerV06enrichC19C115AssociatedGuids33_687DBA3D1536BCD45E6718749ACC92F3LL04mainC3IdsSDySSSaySSGGSayAA0C10Identifier_pG_tYaFA2G_AGtXEfU1_Tf1nc_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t ChatMessageRecord.text.getter()
{
  OUTLINED_FUNCTION_19_21();
  v0();
  v1 = v5[4];
  OUTLINED_FUNCTION_77_10(v5);
  v2 = OUTLINED_FUNCTION_112_2();
  v3(v2, v1);
  OUTLINED_FUNCTION_140_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return OUTLINED_FUNCTION_94();
}

uint64_t ChatMessageRecord.from.getter()
{
  OUTLINED_FUNCTION_19_21();
  v0();
  v1 = v6[4];
  OUTLINED_FUNCTION_77_10(v6);
  v2 = OUTLINED_FUNCTION_112_2();
  v4 = v3(v2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

uint64_t ChatMessageRecord.isFromMe.getter()
{
  OUTLINED_FUNCTION_19_21();
  v0();
  v1 = v6[4];
  OUTLINED_FUNCTION_77_10(v6);
  v2 = OUTLINED_FUNCTION_112_2();
  v4 = v3(v2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4 & 1;
}

uint64_t ChatMessageRecord.date.getter()
{
  OUTLINED_FUNCTION_19_21();
  v0();
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 24))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t IMSPIMessage.id.getter()
{
  result = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_guid);
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t IMSPIMessage.from.getter()
{
  v2 = [v1 sender];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = v2;
  IMSPIHandle.senderName.getter();
  OUTLINED_FUNCTION_140_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_25DBC8180;
  *(result + 32) = v0;
  *(result + 40) = v4;
  return result;
}

uint64_t IMSPIHandle.senderName.getter()
{
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_displayName);
  if (v1 || (outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_address), v2) || (outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_cnContactID), v3))
  {
    OUTLINED_FUNCTION_140_2();
  }

  else
  {
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v0, &selRef_businessName);
    OUTLINED_FUNCTION_140_2();
    if (!v10)
    {
      return OUTLINED_FUNCTION_94();
    }
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = OUTLINED_FUNCTION_94();
  v6 = MEMORY[0x25F89F4C0](v5);
  v7 = [v4 fetchCNContactForHandleWithID_];

  if (v7)
  {
    outlined bridged method (ob) of @objc CNContact.displayName.getter(v7);
    if (v8)
    {
    }
  }

  return OUTLINED_FUNCTION_94();
}

id IMSPIMessage.isFromMe.getter()
{
  v1 = [v0 sender];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isMe];

  return v3;
}

uint64_t @nonobjc IMSPIMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 date];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void IMSPIChat.chatParticipants.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = outlined bridged method (pb) of @objc IMSPIChat.handles.getter(v0);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array.count.getter();
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 == v4)
      {

        OUTLINED_FUNCTION_148();
        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F89FFD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = IMSPIHandle.senderName.getter();
      v11 = v10;

      ++v4;
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15);
          v5 = v16;
        }

        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1);
          v5 = v17;
        }

        *(v5 + 16) = v13 + 1;
        v14 = v5 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        v4 = v8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized ChatMessageRecord.description.getter()
{
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  strcpy(v27, "mainMessage: ");
  HIWORD(v27[1]) = -4864;
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 7104878;
    v5 = 0xE300000000000000;
  }

  MEMORY[0x25F89F6C0](v3, v5);

  MEMORY[0x25F89F6C0](0x654D74616863202CLL, 0xEF3D736567617373);
  v6 = v0[7];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    v9 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v8, v24);
      v10 = v25;
      v11 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v12 = (*(v11 + 8))(v10, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
          v9 = v18;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1);
          v9 = v19;
        }

        *(v9 + 16) = v16 + 1;
        v17 = v9 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v20 = MEMORY[0x25F89F8A0](v9, MEMORY[0x277D837D0]);
  v22 = v21;

  MEMORY[0x25F89F6C0](v20, v22);

  return v27[0];
}

uint64_t ChatMessageRecord.description.getter(uint64_t a1, uint64_t a2)
{
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  strcpy(v32, "mainMessage: ");
  HIWORD(v32[1]) = -4864;
  (*(a2 + 24))(v29, a1, a2);
  v4 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v5 = OUTLINED_FUNCTION_13_17();
  v6(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v7 = OUTLINED_FUNCTION_64_0();
  MEMORY[0x25F89F6C0](v7);

  MEMORY[0x25F89F6C0](0x654D74616863202CLL, 0xEF3D736567617373);
  v8 = (*(a2 + 32))(a1, a2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    v11 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v10, v29);
      v12 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v13 = OUTLINED_FUNCTION_13_17();
      v15 = v14(v13, v12);
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21);
          v11 = v22;
        }

        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          v23 = OUTLINED_FUNCTION_26_3(v18);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23);
          v11 = v24;
        }

        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      v10 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v25 = MEMORY[0x25F89F8A0](v11, MEMORY[0x277D837D0]);
  v27 = v26;

  MEMORY[0x25F89F6C0](v25, v27);

  return v32[0];
}

uint64_t MessageBodyManager.retrieveMessages(for:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for OSSignpostID();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "MessageBodyManager.retrieveMessages", "", v4, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[8] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  if (*(v10 + 16))
  {
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = MessageBodyManager.retrieveMessages(for:);
    v14 = v0[2];

    return MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(v14);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v16, static Logging.answerSynthesis);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v18))
    {
      OUTLINED_FUNCTION_51_0();
      v23 = OUTLINED_FUNCTION_10_23();
      *v7 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_74_16(&dword_25D85C000, v19, v20, "%s messageIdentifiers cannot be empty");
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    $defer #1 () in MessageBodyManager.retrieveMessages(for:)(v0[8]);

    v21 = v0[1];
    v22 = MEMORY[0x277D84F90];

    return v21(v22);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 96) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  $defer #1 () in MessageBodyManager.retrieveMessages(for:)(*(v0 + 64));

  v1 = OUTLINED_FUNCTION_28();

  return v2(v1);
}

uint64_t MessageBodyManager.retrieveMessages(for:)(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 80) = a1;

  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  *v6 = v5;
  v6[1] = MessageBodyManager.retrieveMessages(for:);

  return MessageBodyManager.enrichMessagesWithContext(from:)(a1);
}

uint64_t $defer #1 () in MessageBodyManager.retrieveMessages(for:)(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "MessageBodyManager.retrieveMessages", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:));
}

uint64_t MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)()
{
  v1 = *(v0 + 104);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = OUTLINED_FUNCTION_112_2();
  v5 = v4(v3, v2);
  v6 = OUTLINED_FUNCTION_54_0();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = OUTLINED_FUNCTION_64_0();
  v10 = v9(v8);
  if (v5 | v10)
  {
    v11 = v10;
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v12 = type metadata accessor for Logger();
    *(v0 + 112) = __swift_project_value_buffer(v12, static Logging.answerSynthesis);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v14))
    {
      v15 = OUTLINED_FUNCTION_49_0();
      v47 = OUTLINED_FUNCTION_49_0();
      *v15 = 136315650;
      OUTLINED_FUNCTION_98_2();
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v15 + 12) = 2048;
      *(v15 + 14) = v5;
      *(v15 + 22) = 2048;
      *(v15 + 24) = v11;
      _os_log_impl(&dword_25D85C000, v13, v14, "%s Enriching messages with surrounding messages (%lu before and %lu after) from corresponding chats", v15, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    outlined init with copy of MessageBodyManager(*(v0 + 104), v0 + 56);
    v16 = swift_allocObject();
    *(v0 + 120) = v16;
    v17 = *(v0 + 72);
    *(v16 + 16) = *(v0 + 56);
    *(v16 + 32) = v17;
    *(v16 + 48) = *(v0 + 88);
    *(v16 + 56) = v5;
    *(v16 + 64) = v11;
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    v18[1] = MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:);
    v19 = *(v0 + 96);

    return specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(1, &async function pointer to partial apply for closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:), v16, v19);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v21, static Logging.answerSynthesis);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v23))
    {
      OUTLINED_FUNCTION_51_0();
      v48 = OUTLINED_FUNCTION_10_23();
      *v1 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_74_16(&dword_25D85C000, v24, v25, "%s Skip enriching messages with surrounding messages from corresponding chats, because both messageCountBeforeTarget and messageCountAfterTarget are set to 0");
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    v26 = *(v0 + 96);
    v27 = *(v26 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v49 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v28 = v49;
      v29 = v26 + 32;
      do
      {
        outlined init with copy of ChatMessageRecord(v29, v0 + 16);
        v30 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v31 = OUTLINED_FUNCTION_13_17();
        v33 = v32(v31, v30);
        v35 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_25DBC8180;
        v37 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v38 = OUTLINED_FUNCTION_13_17();
        *(v36 + 32) = v39(v38, v37);
        *(v36 + 40) = v40;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        v42 = *(v49 + 16);
        v41 = *(v49 + 24);
        if (v42 >= v41 >> 1)
        {
          v44 = OUTLINED_FUNCTION_26_3(v41);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44, v42 + 1, 1);
        }

        *(v49 + 16) = v42 + 1;
        v43 = (v49 + 24 * v42);
        v43[4] = v33;
        v43[5] = v35;
        v43[6] = v36;
        v29 += 40;
        --v27;
      }

      while (v27);
    }

    v45 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SaySSGSaySS_AEtGTt0g5(v28);
    v46 = *(v0 + 8);

    return v46(v45);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 136) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_SaySSGSaySS_AEtGTt1g5046_s10OmniSearch18MessageBodyManagerV06enrichC19C115AssociatedGuids33_687DBA3D1536BCD45E6718749ACC92F304mainC3IdsSDySSSaySSGGSayAA0C10Identifier_pG_tYaFA2G_AGtXEfU1_Tf1nc_n(*(v0 + 136));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    OUTLINED_FUNCTION_90_1();
    v9 = OUTLINED_FUNCTION_51_13();
    MEMORY[0] = 136315394;
    OUTLINED_FUNCTION_98_2();
    v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_94_8(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    Dictionary.description.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    MEMORY[0xE] = v5;
    OUTLINED_FUNCTION_62_11(&dword_25D85C000, v2, v3, "%s Returning dict of target message's GUID to list of surrounding message GUIDs: %s", v8, v9);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_2_8();
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t MessageBodyManager.enrichMessagesWithContext(from:)(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x2822009F8](MessageBodyManager.enrichMessagesWithContext(from:));
}

uint64_t MessageBodyManager.enrichMessagesWithContext(from:)()
{
  v2 = *(v1 + 216);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
      goto LABEL_32;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
        v13 = *v11;
        v12 = v11[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16);
          v9 = v17;
        }

        v0 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v0 >= v14 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1);
          v9 = v18;
        }

        v6 &= v6 - 1;
        *(v9 + 16) = v0 + 1;
        v15 = v9 + 16 * v0;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;
      }

      while (v6);
    }
  }

  v19 = *(v47 + 216);

  OUTLINED_FUNCTION_66_13();
  v22 = v20 & v21;
  v24 = (63 - v23) >> 6;

  v25 = 0;
  v0 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v22)
      {
        while (1)
        {
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_38;
          }

          if (v26 >= v24)
          {
            goto LABEL_31;
          }

          v22 = *(v3 + 8 * v26);
          ++v25;
          if (v22)
          {
            v25 = v26;
            break;
          }
        }
      }

      v27 = *(*(v19 + 56) + ((v25 << 9) | (8 * __clz(__rbit64(v22)))));
      v28 = *(v27 + 16);
      v2 = *(v0 + 16);
      if (__OFADD__(v2, v28))
      {
        goto LABEL_39;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v2 + v28 > *(v0 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native);
        v0 = v30;
      }

      v22 &= v22 - 1;
      if (!*(v27 + 16))
      {
        break;
      }

      if ((*(v0 + 24) >> 1) - *(v0 + 16) < v28)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v31 = *(v0 + 16);
        v32 = __OFADD__(v31, v28);
        v33 = v31 + v28;
        if (v32)
        {
          goto LABEL_41;
        }

        *(v0 + 16) = v33;
      }
    }
  }

  while (!v28);
  __break(1u);
LABEL_31:
  v2 = v47;

  specialized Array.append<A>(contentsOf:)(v0);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v9);
  if (one-time initialization token for answerSynthesis != -1)
  {
    goto LABEL_42;
  }

LABEL_32:
  v34 = type metadata accessor for Logger();
  *(v2 + 232) = OUTLINED_FUNCTION_200(v34, static Logging.answerSynthesis);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_51_13();
    *v0 = 136315394;
    OUTLINED_FUNCTION_98_2();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_94_8(v37);
    Set.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v0 + 14) = v38;
    OUTLINED_FUNCTION_62_11(&dword_25D85C000, v35, v36, "%s uniq set of GUIDs of key and surrounding message GUIDs: %s", v45, v46);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_2_8();
  }

  v39 = *(v2 + 224);
  v40 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v41 = OUTLINED_FUNCTION_112_2();
  *(v2 + 240) = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v41);
  v48 = (*(v40 + 8) + **(v40 + 8));
  v42 = swift_task_alloc();
  *(v2 + 248) = v42;
  *v42 = v2;
  v42[1] = MessageBodyManager.enrichMessagesWithContext(from:);
  v43 = OUTLINED_FUNCTION_32_0();

  return v48(v43);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 256) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

void MessageBodyManager.enrichMessagesWithContext(from:)()
{
  v1 = 0;
  v2 = *(v0 + 256);
  v55 = v2;
  v56 = *(v2 + 16);
  v3 = v2 + 32;
  v4 = MEMORY[0x277D84F98];
  while (v56 != v1)
  {
    if (v1 >= *(v55 + 16))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    outlined init with copy of ChatMessageRecord(v3, v0 + 16);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v6 = OUTLINED_FUNCTION_13_17();
    v8 = v7(v6, v5);
    if (!v9)
    {
      goto LABEL_45;
    }

    v10 = v8;
    v11 = v9;
    outlined init with copy of ChatMessageRecord(v0 + 16, v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v4;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_43;
    }

    v18 = v13;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch13MessageRecord_pGMd, &_ss17_NativeDictionaryVySS10OmniSearch13MessageRecord_pGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
      if ((v19 & 1) != (v21 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v18 = v20;
    }

    if (v19)
    {

      v4 = v57;
      v22 = (v57[7] + 40 * v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v22);
    }

    else
    {
      v4 = v57;
      v57[(v18 >> 6) + 8] |= 1 << v18;
      v23 = (v57[6] + 16 * v18);
      *v23 = v10;
      v23[1] = v11;
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v57[7] + 40 * v18);
      v24 = v57[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_44;
      }

      v57[2] = v26;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v3 += 40;
    ++v1;
  }

  OUTLINED_FUNCTION_66_13();
  v29 = v27 & v28;
  v31 = (63 - v30) >> 6;

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  if (!v29)
  {
    goto LABEL_16;
  }

  do
  {
    v34 = *(v0 + 216);
LABEL_20:
    v36 = (*(v34 + 48) + 16 * (__clz(__rbit64(v29)) | (v32 << 6)));
    v37 = *v36;
    v38 = v36[1];
    v39 = v4[2];

    if (v39 && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38), (v41 & 1) != 0))
    {
      outlined init with copy of ChatMessageRecord(v4[7] + 40 * v40, v0 + 136);
    }

    else
    {

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v54 = v33;
        v44 = OUTLINED_FUNCTION_90_1();
        OUTLINED_FUNCTION_260();
        *v44 = 136315394;
        *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v44 + 12) = 2080;
        *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v42, v43, "%s - Failed to fetch full body for message: %s", v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        v33 = v54;
        OUTLINED_FUNCTION_42_0();
      }

      *(v0 + 168) = 0;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
    }

    if (*(v0 + 160))
    {
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 136), v0 + 96);
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 96), v0 + 176);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v47;
      }

      v46 = *(v33 + 16);
      v45 = *(v33 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_22_5(v45);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v48;
      }

      *(v33 + 16) = v46 + 1;
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 176), v33 + 40 * v46 + 32);
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 136, &_s10OmniSearch13MessageRecord_pSgMd, &_s10OmniSearch13MessageRecord_pSgMR);
    }

    v29 &= v29 - 1;
  }

  while (v29);
  while (1)
  {
LABEL_16:
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v35 >= v31)
    {
      break;
    }

    v34 = *(v0 + 216);
    v29 = *(v34 + 8 * v35 + 64);
    ++v32;
    if (v29)
    {
      v32 = v35;
      goto LABEL_20;
    }
  }

  v49 = *(v0 + 216);
  v50 = *(v0 + 224);

  v51 = swift_task_alloc();
  v51[2] = v49;
  v51[3] = v4;
  v51[4] = v50;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10OmniSearch13MessageRecord_pG_AF04ChatfG0_ps5NeverOTg5(partial apply for closure #5 in MessageBodyManager.enrichMessagesWithContext(from:), v51, v33);
  OUTLINED_FUNCTION_112_2();

  v52 = OUTLINED_FUNCTION_28();

  v53(v52);
}

void MessageBodyManager.hydrateMessageBody(origMessages:enrichedMessages:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v344 = v3;
  v4 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v289 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v15);
  v322[1] = type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_4(v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v19);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v22);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v25);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v28);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v36 = OUTLINED_FUNCTION_114(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v40 = OUTLINED_FUNCTION_114(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v44 = OUTLINED_FUNCTION_114(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17MobileSMSDocumentVSgMd, &_s15OmniSearchTypes17MobileSMSDocumentVSgMR);
  OUTLINED_FUNCTION_114(v47);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v49);
  v50 = type metadata accessor for MobileSMSDocument();
  OUTLINED_FUNCTION_14();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v58);
  v332 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v60 = v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_39_0();
  v357 = v62;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_14_2();
  v358 = v69;
  v351 = v2;
  if (*(v2 + 16))
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v313 = type metadata accessor for Logger();
    v359 = __swift_project_value_buffer(v313, static Logging.answerSynthesis);
    v70 = v359;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    v73 = OUTLINED_FUNCTION_105_6(v72);
    v296 = v4;
    v295 = v13;
    v350 = v50;
    if (v73)
    {
      v74 = OUTLINED_FUNCTION_51_0();
      v50 = OUTLINED_FUNCTION_49_0();
      v365[0] = v50;
      *v74 = 136315138;
      *(v74 + 4) = OUTLINED_FUNCTION_27_17();
      _os_log_impl(&dword_25D85C000, v71, v70, "%s Iterate each message and optionally create new MobileSMSDocument if body is different", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      OUTLINED_FUNCTION_63_13();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }

    v76 = v355;
    v77 = v358;
    v78 = v6;
    v79 = *(v344 + 16);
    if (v79)
    {
      v354 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v360 = v344 + v354;
      v353 = "er.retrieveMessages";
      v80 = *(v60 + 72);
      v348 = (v52 + 32);
      v336 = (v52 + 16);
      v352 = (v52 + 8);
      v291 = (v78 + 32);
      *&v75 = 136315138;
      v328 = v75;
      *&v75 = 136315394;
      v345 = v75;
      *&v75 = 136316163;
      v290 = v75;
      *&v75 = 136642819;
      v289 = v75;
      *&v75 = 136315395;
      v293 = v75;
      v81 = MEMORY[0x277D84F90];
      v82 = v346;
      OUTLINED_FUNCTION_70_10();
      v356 = v80;
      do
      {
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_7(v360, v77, v83);
        SearchResultItem.associatedValue.getter(v365);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v82, 0, 1, v50);
          (*v348)(v52, v82, v50);
          NoteDocument.folderName.getter();
          if (v84)
          {

            v85 = WalletPass.id.getter();
            v87 = String.oms_IMMessagePartGUID.getter(v85, v86);
            v89 = v88;

            if (*(v351 + 16) && (v90 = specialized __RawDictionaryStorage.find<A>(_:)(v87, v89), (v91 & 1) != 0))
            {
              v337 = v87;
              outlined init with copy of ChatMessageRecord(*(v351 + 56) + 40 * v90, &v363);
              outlined init with take of ResponseOverrideMatcherProtocol(&v363, v365);
              OUTLINED_FUNCTION_21_21();
              v92 = ChatMessageRecord.text.getter();
              v327 = v93;
              if (v93)
              {
                v292 = v92;
                v330 = v89;
                v94 = MobileSMSDocument.chatName.getter();
                v335 = v95;
                if (v95)
                {
                  v311 = v94;
                }

                else
                {
                  v140 = v367;
                  v139 = v368;
                  __swift_project_boxed_opaque_existential_1(v365, v367);
                  v311 = (*(*(v139 + 8) + 8))(v140);
                  v335 = v141;
                }

                v142 = v316;
                v143 = v315;
                v144 = *(MobileSMSDocument.chatParticipants.getter() + 16);

                if (v144)
                {
                  v145 = MobileSMSDocument.chatParticipants.getter();
                }

                else
                {
                  __swift_project_boxed_opaque_existential_1(v365, v367);
                  v146 = OUTLINED_FUNCTION_15_23();
                  v145 = v147(v146);
                }

                v338 = v145;
                v148 = *v336;
                (*v336)(v143, v52, v50);
                v329 = v148;
                v148(v142, v52, v50);
                outlined init with copy of ChatMessageRecord(v365, &v363);
                outlined init with copy of ChatMessageRecord(v365, v362);
                v149 = v359;
                v150 = Logger.logObject.getter();
                v151 = static os_log_type_t.info.getter();
                v152 = OUTLINED_FUNCTION_105_6(v151);
                v344 = v81;
                if (v152)
                {
                  v153 = swift_slowAlloc();
                  v325 = swift_slowAlloc();
                  v361 = v325;
                  *v153 = v290;
                  OUTLINED_FUNCTION_9_28();
                  *(v153 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  *(v153 + 12) = 2048;
                  v324 = v149;
                  v154 = *(MobileSMSDocument.chatParticipants.getter() + 16);

                  v155 = *v352;
                  v156 = OUTLINED_FUNCTION_64_0();
                  v155(v156);
                  *(v153 + 14) = v154;
                  *(v153 + 22) = 2085;
                  MobileSMSDocument.chatParticipants.getter();
                  MEMORY[0x25F89F8A0]();

                  v157 = OUTLINED_FUNCTION_65_15();
                  v312 = v155;
                  v155(v157);
                  OUTLINED_FUNCTION_54_0();
                  v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  *(v153 + 24) = v158;
                  *(v153 + 32) = 2048;
                  __swift_project_boxed_opaque_existential_1(&v363, v364);
                  v159 = OUTLINED_FUNCTION_15_23();
                  v161 = *(v160(v159) + 16);

                  __swift_destroy_boxed_opaque_existential_1Tm(&v363);
                  *(v153 + 34) = v161;
                  *(v153 + 42) = 2085;
                  __swift_project_boxed_opaque_existential_1(v362, v362[3]);
                  v162 = OUTLINED_FUNCTION_15_23();
                  v163(v162);
                  MEMORY[0x25F89F8A0]();

                  __swift_destroy_boxed_opaque_existential_1Tm(v362);
                  OUTLINED_FUNCTION_54_0();
                  v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  *(v153 + 44) = v164;
                  _os_log_impl(&dword_25D85C000, v150, v324, "%s chatParticipants from origMessage (count: %ld): %{sensitive}s, or from retrievedMessage (count: %ld): %{sensitive}s", v153, 0x34u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_42_0();
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(&v363);
                  v165 = *v352;
                  v166 = OUTLINED_FUNCTION_64_0();
                  v165(v166);

                  v167 = OUTLINED_FUNCTION_65_15();
                  v312 = v165;
                  v165(v167);
                  __swift_destroy_boxed_opaque_existential_1Tm(v362);
                }

                OUTLINED_FUNCTION_21_21();
                ChatMessageRecord.chatMobileSMSDocuments.getter();
                v169 = v332;
                v170 = v338;
                if (!*(v168 + 16))
                {

                  v168 = MobileSMSDocument.chatMessages.getter();
                }

                v310 = v168;
                v309 = WalletPass.title.getter();
                v308 = v171;
                v307 = WalletPass.description.getter();
                v306 = v172;
                OUTLINED_FUNCTION_21_21();
                v305 = ChatMessageRecord.text.getter();
                v304 = v173;
                v174 = EmailDocument.authorNames.getter();
                v175 = MobileSMSDocument.isFromMe.getter();
                v176 = EmailDocument.to.getter();
                MobileSMSDocument.date.getter();
                MobileSMSDocument.contentURL.getter();
                v301 = MobileSMSDocument.photoAttachments.getter();
                v300 = MobileSMSDocument.serviceName.getter();
                v299 = v177;
                type metadata accessor for DataDetectorResults();
                OUTLINED_FUNCTION_92();
                __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);
                type metadata accessor for PartialExtractedAttributes();
                OUTLINED_FUNCTION_92();
                __swift_storeEnumTagSinglePayload(v182, v183, v184, v185);
                v186 = v358 + *(v169 + 24);
                v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
                v303 = v186;
                v187 = CodableNSSecureCoding.wrappedValue.getter();
                type metadata accessor for FeatureFlagService();
                v298 = swift_allocObject();
                isa = v170[2].isa;
                if (!isa)
                {
                  if (one-time initialization token for search != -1)
                  {
                    OUTLINED_FUNCTION_1_31();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_200(v313, static Logging.search);
                  v188 = Logger.logObject.getter();
                  v189 = static os_log_type_t.info.getter();
                  if (OUTLINED_FUNCTION_88_0(v189))
                  {
                    v190 = swift_slowAlloc();
                    *v190 = 0;
                    _os_log_impl(&dword_25D85C000, v188, v189, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v190, 2u);
                    OUTLINED_FUNCTION_42_0();
                  }
                }

                v323 = v176;
                v324 = v175;
                v325 = v174;
                v191 = one-time initialization token for search;
                v192 = v187;
                if (v191 != -1)
                {
                  OUTLINED_FUNCTION_1_31();
                  swift_once();
                }

                OUTLINED_FUNCTION_200(v313, static Logging.search);
                v193 = v192;
                v194 = Logger.logObject.getter();
                v195 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v194, v195))
                {
                  OUTLINED_FUNCTION_51_0();
                  v196 = OUTLINED_FUNCTION_10_23();
                  *&v363 = v196;
                  v197 = [v193 attributeSet];
                  CSSearchableItemAttributeSet.keyStrings.getter();
                  v199 = v198;

                  MEMORY[0x25F89F8A0](v199, MEMORY[0x277D837D0]);

                  OUTLINED_FUNCTION_100_4();
                  v200 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  *(v191 + 4) = v200;
                  _os_log_impl(&dword_25D85C000, v194, v195, "MobileSMSDocument: parsing attribute keys: %s", v191, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v196);
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_42_0();
                }

                v201 = v193;
                v202 = Logger.logObject.getter();
                v203 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v202, v203))
                {
                  v204 = OUTLINED_FUNCTION_51_0();
                  v205 = OUTLINED_FUNCTION_49_0();
                  *&v363 = v205;
                  *v204 = v289;
                  v206 = [v201 attributeSet];
                  CSSearchableItemAttributeSet.kvStrings.getter();
                  v208 = v207;

                  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
                  v210 = MEMORY[0x25F89F8A0](v208, v209);

                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  OUTLINED_FUNCTION_71_11();

                  *(v204 + 4) = v210;
                  _os_log_impl(&dword_25D85C000, v202, v203, "MobileSMSDocument: parsing attributes: %{sensitive}s", v204, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v205);
                  OUTLINED_FUNCTION_2_8();
                  OUTLINED_FUNCTION_42_0();
                }

                else
                {
                }

                outlined init with copy of ResourceBundle?(v340, v333, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                outlined init with copy of ResourceBundle?(v341, v334, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                v349 = v79;
                if (!isa)
                {

                  *&v363 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v325, v324 & 1);

                  specialized Array.append<A>(contentsOf:)(v211);
                  v338 = v363;
                }

                outlined init with copy of ResourceBundle?(v342, v317, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
                outlined init with copy of ResourceBundle?(v343, v318, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
                v212 = v201;
                v213 = v298;

                PreExtractedCard.init(item:featureFlagService:)(v212, v213, v319);
                v214 = v212;
                OUTLINED_FUNCTION_112_2();

                PreExtractedContact.init(item:featureFlagService:)(v212, v213, v320);
                v215 = v212;
                PreExtractedSharedLink.init(item:)(v215, v321);
                v216 = v215;
                OUTLINED_FUNCTION_112_2();

                PreExtractedBreadcrumb.init(item:featureFlagService:)(v215, v213);
                v217 = v335;

                v218 = v330;

                MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)(v337, v218, v309, v308, v307, v306, v305, v304, v325, v324, v323, v333, v334, v301, v300, v299, v311, v217, v338, v310);

                outlined destroy of IntentApplication?(v343, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
                outlined destroy of IntentApplication?(v342, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
                outlined destroy of IntentApplication?(v341, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                outlined destroy of IntentApplication?(v340, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                v219 = v322[0];
                OUTLINED_FUNCTION_32_0();
                OUTLINED_FUNCTION_72_10();
                v220();
                swift_storeEnumTagMultiPayload();
                v221 = CodableNSSecureCoding.wrappedValue.getter();
                v222 = v322[2];
                OUTLINED_FUNCTION_92();
                v223 = v296;
                __swift_storeEnumTagSinglePayload(v224, v225, v226, v296);
                v227 = v332;
                v228 = v314;
                *(v314 + *(v332 + 28)) = MEMORY[0x277D84F90];
                v229 = (v228 + v227[10]);
                *v229 = 0;
                v229[1] = 0;
                _s10OmniSearch0B6ResultVWOcTm_7(v219, v228, type metadata accessor for SearchResultItem);
                type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
                lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
                v230 = v221;
                CodableNSSecureCoding.init(wrappedValue:)();
                v231 = v295;
                outlined init with copy of ResourceBundle?(v222, v295, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                if (__swift_getEnumTagSinglePayload(v231, 1, v223) == 1)
                {
                  outlined destroy of IntentApplication?(v231, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_55_12();
                  LOBYTE(v363) = 1;
                  SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

                  outlined destroy of IntentApplication?(v222, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                  OUTLINED_FUNCTION_28_18();
                }

                else
                {

                  outlined destroy of IntentApplication?(v222, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                  OUTLINED_FUNCTION_28_18();
                  v232 = *v291;
                  v233 = v294;
                  (*v291)(v294, v231, v223);
                  v232(v228 + v227[5], v233, v223);
                }

                v81 = v344;
                v79 = v349;
                *(v228 + v227[8]) = 1;
                *(v228 + v227[9]) = 1;
                outlined init with take of SearchResult(v228, v331);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v235 = v339;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v269 = OUTLINED_FUNCTION_44();
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v269, v270, v271, v81);
                  v81 = v272;
                }

                v50 = v337;
                OUTLINED_FUNCTION_29_13();
                if (v110)
                {
                  v273 = OUTLINED_FUNCTION_22_5(v236);
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v273, v274, v275, v81);
                  v81 = v276;
                }

                OUTLINED_FUNCTION_12_28();
                outlined init with take of SearchResult(v331, v237);

                v238 = Logger.logObject.getter();
                v239 = static os_log_type_t.info.getter();

                if (OUTLINED_FUNCTION_42_15())
                {
                  OUTLINED_FUNCTION_90_1();
                  *&v363 = OUTLINED_FUNCTION_51_13();
                  OUTLINED_FUNCTION_64_11(&v366);
                  v240 = OUTLINED_FUNCTION_6_22();
                  OUTLINED_FUNCTION_94_8(v240);
                  v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  MEMORY[0xF] = v50;
                  OUTLINED_FUNCTION_62_11(&dword_25D85C000, v238, v239, "%s Replaced body of message id: %s", v289, *(&v289 + 1));
                  OUTLINED_FUNCTION_154_2();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_2_8();
                }

                else
                {
                }

                v241 = Logger.logObject.getter();
                v242 = static os_log_type_t.debug.getter();

                if (OUTLINED_FUNCTION_42_15())
                {
                  OUTLINED_FUNCTION_90_1();
                  *&v363 = OUTLINED_FUNCTION_51_13();
                  OUTLINED_FUNCTION_64_11(v322);
                  MEMORY[5] = OUTLINED_FUNCTION_6_22();
                  MEMORY[0xD] = 2085;
                  v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                  MEMORY[0xF] = v50;
                  OUTLINED_FUNCTION_62_11(&dword_25D85C000, v241, v242, "%s retrievedMessageBody: %{sensitive}s");
                  OUTLINED_FUNCTION_154_2();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_2_8();
                }

                else
                {
                }

                OUTLINED_FUNCTION_63_13();
                OUTLINED_FUNCTION_72_10();
                v243();
                v244 = Logger.logObject.getter();
                v52 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v244, v52))
                {
                  v245 = OUTLINED_FUNCTION_90_1();
                  v344 = OUTLINED_FUNCTION_260();
                  *&v363 = v344;
                  *v245 = v293;
                  *(v245 + 4) = OUTLINED_FUNCTION_6_22();
                  *(v245 + 12) = 2085;
                  v338 = v244;
                  v246 = MobileSMSDocument.chatMessages.getter();
                  MEMORY[0x25F89F8A0](v246, v50);

                  v247 = OUTLINED_FUNCTION_65_15();
                  v248 = v312;
                  v312(v247);
                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  OUTLINED_FUNCTION_71_11();

                  *(v245 + 14) = v246;

                  v249 = v338;
                  _os_log_impl(&dword_25D85C000, v338, v52, "%s chatMessages: %{sensitive}s", v245, 0x16u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_37_0();

                  (v248)(v339, v50);
                  OUTLINED_FUNCTION_70_10();
                  (v248)(v52, v50);
                }

                else
                {

                  v250 = OUTLINED_FUNCTION_65_15();
                  v251 = v312;
                  v312(v250);
                  (v251)(v235, v50);
                  OUTLINED_FUNCTION_70_10();
                  (v251)(v52, v50);
                }

                OUTLINED_FUNCTION_4_30();
                v77 = v358;
                _s10OmniSearch0B6ResultVWOhTm_4(v358, v252);
                v82 = v346;
                v80 = v356;
                __swift_destroy_boxed_opaque_existential_1Tm(v365);
                v76 = v355;
              }

              else
              {

                v129 = Logger.logObject.getter();
                v130 = static os_log_type_t.error.getter();
                if (OUTLINED_FUNCTION_88_0(v130))
                {
                  v76 = OUTLINED_FUNCTION_51_0();
                  v131 = OUTLINED_FUNCTION_49_0();
                  *&v363 = v131;
                  *v76 = v328;
                  *(v76 + 4) = OUTLINED_FUNCTION_6_22();
                  _os_log_impl(&dword_25D85C000, v129, v130, "%s Expected retrievedMessage to have body. It's OK, will just preserve existing message", v76, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v131);
                  OUTLINED_FUNCTION_37_0();
                  OUTLINED_FUNCTION_30_17();
                  OUTLINED_FUNCTION_42_0();
                }

                v77 = v358;
                OUTLINED_FUNCTION_0_49();
                _s10OmniSearch0B6ResultVWOcTm_7(v77, v326, v132);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v277 = OUTLINED_FUNCTION_44();
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v277, v278, v279, v81);
                  v81 = v280;
                }

                OUTLINED_FUNCTION_29_13();
                if (v110)
                {
                  v281 = OUTLINED_FUNCTION_22_5(v133);
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v281, v282, v283, v81);
                  v81 = v284;
                }

                v134 = OUTLINED_FUNCTION_17_26();
                v135(v134);
                OUTLINED_FUNCTION_4_30();
                _s10OmniSearch0B6ResultVWOhTm_4(v77, v136);
                OUTLINED_FUNCTION_12_28();
                v80 = v137;
                outlined init with take of SearchResult(v326, v138);
                __swift_destroy_boxed_opaque_existential_1Tm(v365);
              }
            }

            else
            {
              v349 = v79;

              v114 = Logger.logObject.getter();
              v115 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v114, v115))
              {
                OUTLINED_FUNCTION_90_1();
                v76 = OUTLINED_FUNCTION_51_13();
                v365[0] = v76;
                OUTLINED_FUNCTION_64_11(&v366);
                OUTLINED_FUNCTION_9_28();
                v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                OUTLINED_FUNCTION_94_8(v116);
                v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                *(v80 + 14) = v50;
                OUTLINED_FUNCTION_63_13();
                OUTLINED_FUNCTION_62_11(&dword_25D85C000, v114, v115, "%s Dedup'd spiMessageDict dict does not contain id: %s. So we'll skip this", v289, *(&v289 + 1));
                OUTLINED_FUNCTION_154_2();
                OUTLINED_FUNCTION_30_17();
                OUTLINED_FUNCTION_42_0();
                v80 = v356;
                OUTLINED_FUNCTION_42_0();
              }

              else
              {
              }

              v126 = OUTLINED_FUNCTION_17_26();
              v127(v126);
              OUTLINED_FUNCTION_4_30();
              v77 = v358;
              _s10OmniSearch0B6ResultVWOhTm_4(v358, v128);
              v79 = v349;
            }

            goto LABEL_83;
          }

          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_88_0(v118))
          {
            v76 = OUTLINED_FUNCTION_51_0();
            v119 = OUTLINED_FUNCTION_49_0();
            v365[0] = v119;
            *v76 = v328;
            OUTLINED_FUNCTION_9_28();
            *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            _os_log_impl(&dword_25D85C000, v117, v118, "%s Expected origMessage to have body. It's OK, will just preserve existing message", v76, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v119);
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_30_17();
            OUTLINED_FUNCTION_42_0();
          }

          v77 = v358;
          OUTLINED_FUNCTION_0_49();
          _s10OmniSearch0B6ResultVWOcTm_7(v77, v347, v120);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v261 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v261, v262, v263, v81);
            v81 = v264;
          }

          OUTLINED_FUNCTION_29_13();
          if (v110)
          {
            v265 = OUTLINED_FUNCTION_22_5(v121);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v265, v266, v267, v81);
            v81 = v268;
          }

          v122 = OUTLINED_FUNCTION_17_26();
          v123(v122);
          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v77, v124);
          OUTLINED_FUNCTION_12_28();
          v80 = v125;
          v112 = v347;
        }

        else
        {
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v96, v97, v98, v50);
          outlined destroy of IntentApplication?(v82, &_s15OmniSearchTypes17MobileSMSDocumentVSgMd, &_s15OmniSearchTypes17MobileSMSDocumentVSgMR);
          OUTLINED_FUNCTION_0_49();
          v99 = OUTLINED_FUNCTION_100_4();
          _s10OmniSearch0B6ResultVWOcTm_7(v99, v100, v101);
          v102 = v359;
          v103 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v103, v52))
          {
            v50 = OUTLINED_FUNCTION_90_1();
            *&v363 = OUTLINED_FUNCTION_260();
            *v50 = v345;
            *(v50 + 4) = OUTLINED_FUNCTION_6_22();
            *(v50 + 6) = 2080;
            SearchResultItem.associatedValue.getter(v365);
            String.init<A>(describing:)();
            v76 = v104;
            OUTLINED_FUNCTION_4_30();
            _s10OmniSearch0B6ResultVWOhTm_4(v355, v105);
            OUTLINED_FUNCTION_100_4();
            v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_30_17();

            *(v50 + 14) = v102;
            _os_log_impl(&dword_25D85C000, v103, v52, "%s Expected item to be of type MobileSMSDocument, but got -> %s. It's OK, will just preserve existing message", v50, 0x16u);
            swift_arrayDestroy();
            v82 = v346;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_63_13();
            OUTLINED_FUNCTION_42_0();
          }

          else
          {

            OUTLINED_FUNCTION_4_30();
            _s10OmniSearch0B6ResultVWOhTm_4(v76, v106);
          }

          OUTLINED_FUNCTION_0_49();
          v77 = v358;
          _s10OmniSearch0B6ResultVWOcTm_7(v358, v357, v107);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_70_10();
          if ((v108 & 1) == 0)
          {
            v253 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v253, v254, v255, v81);
            v81 = v256;
          }

          OUTLINED_FUNCTION_29_13();
          if (v110)
          {
            v257 = OUTLINED_FUNCTION_22_5(v109);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v257, v258, v259, v81);
            v81 = v260;
          }

          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v77, v111);
          *(v81 + 16) = v102;
          v112 = v357;
          v113 = v81 + v354 + v103 * v356;
          v80 = v356;
        }

        outlined init with take of SearchResult(v112, v113);
LABEL_83:
        v360 += v80;
        --v79;
      }

      while (v79);
    }
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v285 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v285, static Logging.answerSynthesis);
    v286 = Logger.logObject.getter();
    v287 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_105_6(v287))
    {
      OUTLINED_FUNCTION_51_0();
      v288 = OUTLINED_FUNCTION_10_23();
      v365[0] = v288;
      *v60 = 136315138;
      *(v60 + 4) = OUTLINED_FUNCTION_27_17();
      _os_log_impl(&dword_25D85C000, v286, v0, "%s Didn't get any messages back from IMSPIQueryMessagesWithGUIDsAndQOS, returning original list as-is", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v288);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_2_8();
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t String.oms_IMMessagePartGUID.getter(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D1AA88]);

  v5 = @nonobjc IMMessagePartGUID.init(encodedMessagePartGUID:)(a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 messageGUID];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v8, static Logging.answerSynthesis);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_49_0();
    swift_slowAlloc();
    *v11 = 136315650;
    OUTLINED_FUNCTION_98_2();
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 22) = 2080;
    OUTLINED_FUNCTION_32_0();
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v9, v10, "%s IMMessagePartGUID converted %s to %s", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

void ChatMessageRecord.chatMobileSMSDocuments.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v20 = type metadata accessor for MobileSMSDocument();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = (*(v1 + 32))(v3, v1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = 0;
    v14 = v22;
    v15 = v10 + 32;
    while (v13 < *(v10 + 16))
    {
      v16 = v11;
      outlined init with copy of ChatMessageRecord(v15, v21);
      closure #1 in ChatMessageRecord.chatMobileSMSDocuments.getter(v21, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v22 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = OUTLINED_FUNCTION_26_3(v17);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v18 + 1, 1);
        v14 = v22;
      }

      ++v13;
      *(v14 + 16) = v18 + 1;
      v12 = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v9, v20);
      v15 += 40;
      v11 = v16;
      if (v16 == v13)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);

    __break(1u);
  }

  else
  {

LABEL_9:
    OUTLINED_FUNCTION_148();
  }
}

uint64_t closure #5 in MessageBodyManager.enrichMessagesWithContext(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 8))(v10, v11);
  if (!v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = specialized Dictionary.subscript.getter();

  if (v13)
  {
    goto LABEL_10;
  }

  v47 = a2;
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logging.answerSynthesis);
  outlined init with copy of ChatMessageRecord(a1, v44);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v16, v17))
  {

    v14 = __swift_destroy_boxed_opaque_existential_1Tm(v44);
    goto LABEL_9;
  }

  v41 = v4;
  v18 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  *&v42 = v40;
  *v18 = 136315394;
  *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
  *(v18 + 12) = 2080;
  v10 = v45;
  v19 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v19 + 8))(v10, v19);
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v18 + 14) = v21;
  _os_log_impl(&dword_25D85C000, v16, v17, "%s - No guids of chat messages surrounding: %s", v18, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x25F8A1050](v40, -1, -1);
  MEMORY[0x25F8A1050](v18, -1, -1);

  v5 = v41;
LABEL_9:
  v13 = MEMORY[0x277D84F90];
  a2 = v47;
LABEL_10:
  MEMORY[0x28223BE20](v14);
  v39[2] = a2;
  v39[3] = a1;
  v22 = v5;
  v23 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #5 in MessageBodyManager.enrichMessagesWithContext(from:), v39, v13);
  v10 = v22;

  v44[0] = v23;

  specialized MutableCollection<>.sort(by:)(v44);
  if (v22)
  {
LABEL_16:

    __break(1u);
    return result;
  }

  v24 = v44[0];
  v25 = a3[3];
  v26 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v25);
  (*(v26 + 32))(&v42, a1, v25, v26);
  if (v43)
  {
    outlined init with take of ResponseOverrideMatcherProtocol(&v42, v44);
    a4[3] = &unk_286F7FBB8;
    a4[4] = lazy protocol witness table accessor for type IMMessageRecord and conformance IMMessageRecord();
    v27 = swift_allocObject();
    *a4 = v27;
    outlined init with copy of ChatMessageRecord(a1, (v27 + 4));
    v28 = v45;
    v29 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v30 = (*(v29 + 8))(v28, v29);
    v32 = v31;
    v33 = v45;
    v34 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v35 = (*(v34 + 16))(v33, v34);
    v27[2] = v30;
    v27[3] = v32;
    v27[9] = v24;
    v27[10] = v35;
    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  else
  {
    outlined destroy of IntentApplication?(&v42, &_s10OmniSearch8ChatInfo_pSgMd, &_s10OmniSearch8ChatInfo_pSgMR);
    a4[3] = &unk_286F7FBB8;
    a4[4] = lazy protocol witness table accessor for type IMMessageRecord and conformance IMMessageRecord();
    v37 = swift_allocObject();
    *a4 = v37;
    result = outlined init with copy of ChatMessageRecord(a1, (v37 + 4));
    v37[2] = 0;
    v37[3] = 0;
    v38 = MEMORY[0x277D84F90];
    v37[9] = v24;
    v37[10] = v38;
  }

  return result;
}

void closure #1 in closure #5 in MessageBodyManager.enrichMessagesWithContext(from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, a1[1]);
    if (v8)
    {
      outlined init with copy of ChatMessageRecord(*(a2 + 56) + 40 * v7, a4);
      return;
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.answerSynthesis);
  outlined init with copy of ChatMessageRecord(a3, v18);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    goto LABEL_10;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v21 = v13;
  *v12 = 136315394;
  *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
  *(v12 + 12) = 2080;
  v14 = v19;
  v15 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v15 + 8))(v14, v15);
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v12 + 14) = v17;
    _os_log_impl(&dword_25D85C000, v10, v11, "%s - No full body for message: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v13, -1, -1);
    MEMORY[0x25F8A1050](v12, -1, -1);

LABEL_10:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  __break(1u);
}

uint64_t closure #2 in closure #5 in MessageBodyManager.enrichMessagesWithContext(from:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  v12 = type metadata accessor for Date();
  result = __swift_getEnumTagSinglePayload(v9, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = a2[3];
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v14);
    (*(v15 + 24))(v14, v15);
    result = __swift_getEnumTagSinglePayload(v6, 1, v12);
    if (result != 1)
    {
      lazy protocol witness table accessor for type Date and conformance Date();
      v16 = dispatch thunk of static Comparable.< infix(_:_:)();
      v17 = *(*(v12 - 8) + 8);
      v17(v6, v12);
      v17(v9, v12);
      return (v16 & 1) == 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:));
}

uint64_t closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v7 = OUTLINED_FUNCTION_71_11();
  v8(v7, v6);
  v10 = v9;
  MessageBodyManager.retrieveSurroundingChatMessages(targetMessage:countBefore:countAfter:)(v4, v2, v1);
  v11 = OUTLINED_FUNCTION_71_11();
  v12 = String.oms_IMMessagePartGUID.getter(v11, v10);
  v14 = v13;

  *v5 = v12;
  v5[1] = v14;
  v5[2] = v3;
  v15 = v0[1];

  return v15();
}

uint64_t MessageBodyManager.retrieveSurroundingChatMessages(targetMessage:countBefore:countAfter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  if (!v9)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logging.answerSynthesis);
    outlined init with copy of ChatMessageRecord(a1, v63);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v61 = v23;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v22 + 12) = 2080;
      v24 = v64;
      v25 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      (*(v25 + 8))(v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v22 + 14) = v26;
      _os_log_impl(&dword_25D85C000, v20, v21, "%s - Failed to get chatIdentifier from message: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v23, -1, -1);
      MEMORY[0x25F8A1050](v22, -1, -1);

      return MEMORY[0x277D84F90];
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    return MEMORY[0x277D84F90];
  }

  v10 = v8;
  v11 = v9;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v12 = v3[3];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v12);
  (*(v13 + 16))(v10, v11, &v61, &v59, v12, v13);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 24))(v14, v15);
  if (!v17)
  {
    v18 = v60;
    if (v60)
    {
      v55 = v59;

      goto LABEL_10;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logging.answerSynthesis);
    outlined init with copy of ChatMessageRecord(a1, v63);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v49 = 136315650;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v49 + 12) = 2080;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v49 + 14) = v50;
      *(v49 + 22) = 2080;
      v51 = v64;
      v52 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      (*(v52 + 8))(v51, v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v49 + 24) = v53;
      _os_log_impl(&dword_25D85C000, v47, v48, "%s - Failed to get service from either Spotlight or chatGUID: %s for message: %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v58, -1, -1);
      MEMORY[0x25F8A1050](v49, -1, -1);

      return MEMORY[0x277D84F90];
    }

    goto LABEL_19;
  }

  v18 = v17;
  v55 = v16;
LABEL_10:
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = (*(v28 + 8))(v27, v28);
  v31 = String.oms_IMMessagePartGUID.getter(v29, v30);
  v33 = v32;

  v34 = v62;
  if (v62)
  {
    v10 = v61;

    v11 = v34;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logging.answerSynthesis);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v54 = v31;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v63[0] = v39;
    *v38 = 136315906;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v38 + 12) = 2080;
    *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v38 + 22) = 2080;
    *(v38 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v38 + 32) = 2080;
    v40 = v55;
    *(v38 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v36, v37, "%s - Fetching messages surrounding the message: %s, withChatId: %s, withService: %s", v38, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v39, -1, -1);
    v41 = v38;
    v31 = v54;
    MEMORY[0x25F8A1050](v41, -1, -1);
  }

  else
  {

    v40 = v55;
  }

  v42 = v4[3];
  v43 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v42);
  v44 = (*(v43 + 24))(v31, v33, v10, v11, v40, v18, a2, a3, v42, v43);

  return v44;
}

void static MessageBodyManager.dedupMessageDict(_:basedOn:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  if (one-time initialization token for answerSynthesis != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v4, static Logging.answerSynthesis);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v5, v6))
    {

      goto LABEL_25;
    }

    v7 = OUTLINED_FUNCTION_90_1();
    v198 = OUTLINED_FUNCTION_260();
    *v7 = 136315395;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v7 + 12) = 2085;
    v8 = *(v3 + 16);
    v187 = MEMORY[0x277D84F90];
    if (!v8)
    {
      break;
    }

    v172 = v7;
    v173 = v5;
    v175 = v1;
    v197 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v187 = v197;
    v10 = specialized Dictionary.Values.startIndex.getter(v3);
    v1 = v11;
    v12 = 0;
    v185 = v3 + 64;
    v179 = v11;
    v177 = v3 + 72;
    v181 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v3 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v185 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_99;
      }

      if (*(v3 + 36) != v1)
      {
        goto LABEL_100;
      }

      v183 = v9;
      v14 = (*(v3 + 48) + 16 * v10);
      v16 = *v14;
      v15 = v14[1];
      v17 = v3;
      outlined init with copy of ChatMessageRecord(*(v3 + 56) + 40 * v10, &v200);
      v194[0] = v16;
      v194[1] = v15;
      outlined init with take of ResponseOverrideMatcherProtocol(&v200, v195);
      outlined init with copy of ResourceBundle?(v194, v191, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      v189[0] = v191[0];
      v189[1] = v191[1];
      v3 = v189;
      outlined init with take of ResponseOverrideMatcherProtocol(&v192, v190);
      outlined init with copy of ChatMessageRecord(v190, v196);

      outlined destroy of IntentApplication?(v189, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      outlined destroy of IntentApplication?(v194, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      v197 = v187;
      v19 = *(v187 + 16);
      v18 = *(v187 + 24);
      if (v19 >= v18 >> 1)
      {
        v28 = OUTLINED_FUNCTION_26_3(v18);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v19 + 1, 1);
        v187 = v197;
      }

      *(v187 + 16) = v19 + 1;
      outlined init with take of ResponseOverrideMatcherProtocol(v196, v187 + 40 * v19 + 32);
      v20 = 1 << *(v17 + 32);
      if (v10 >= v20)
      {
        goto LABEL_101;
      }

      v21 = *(v185 + 8 * v13);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_102;
      }

      v3 = v17;
      if (*(v17 + 36) != v1)
      {
        goto LABEL_103;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = (v177 + 8 * v13);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            outlined consume of [String : String].Index._Variant(v10, v1, v183 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_21;
          }
        }

        outlined consume of [String : String].Index._Variant(v10, v1, v183 & 1);
      }

LABEL_21:
      v9 = 0;
      ++v12;
      v10 = v20;
      v1 = v179;
      if (v12 == v181)
      {
        v5 = v173;
        v1 = v175;
        v7 = v172;
        goto LABEL_24;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
  }

LABEL_24:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
  MEMORY[0x25F89F8A0](v187, v29);

  v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v7 + 14) = v30;
  _os_log_impl(&dword_25D85C000, v5, v6, "%s Incoming dict %{sensitive}s", v7, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_42_0();

LABEL_25:
  v189[0] = v3;
  if (*(v1 + 16))
  {
    v31 = *(v1 + 16);
    v176 = v1 + 32;

    v32 = MEMORY[0x277D84F90];
    *&v33 = 136315650;
    v170 = v33;
    *&v33 = 136315394;
    v171 = v33;
    v34 = v31;
    do
    {
      --v34;
      v35 = v189[0];
      if (*(v189[0] + 16) >= 2uLL)
      {
        v36 = v176 + 16 * v34;
        v38 = *v36;
        v37 = *(v36 + 8);

        v39 = OUTLINED_FUNCTION_71_2();
        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
        if (v42)
        {
          v174 = v34;
          outlined init with copy of ChatMessageRecord(*(v35 + 56) + 40 * v41, &v199);
          outlined init with take of ResponseOverrideMatcherProtocol(&v199, v194);
          v43 = v195[2];
          __swift_project_boxed_opaque_existential_1(v194, v195[1]);
          v44 = OUTLINED_FUNCTION_112_2();
          v46 = v45(v44, v43);
          v47 = *(v46 + 16);
          v184 = v38;
          v186 = v37;
          if (v47)
          {
            v48 = v46 + 32;
            v49 = v32;
            do
            {
              outlined init with copy of ChatMessageRecord(v48, &v199);
              v50 = *(&v200 + 1);
              v51 = v201;
              __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
              v52 = OUTLINED_FUNCTION_112_2();
              v53(v52, v51);
              OUTLINED_FUNCTION_140_2();
              __swift_destroy_boxed_opaque_existential_1Tm(&v199);
              if (v35)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v57 = OUTLINED_FUNCTION_44();
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57);
                  v49 = v58;
                }

                v55 = *(v49 + 16);
                v54 = *(v49 + 24);
                if (v55 >= v54 >> 1)
                {
                  v59 = OUTLINED_FUNCTION_26_3(v54);
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59);
                  v49 = v60;
                }

                *(v49 + 16) = v55 + 1;
                v56 = v49 + 16 * v55;
                *(v56 + 32) = v50;
                *(v56 + 40) = v35;
              }

              v48 += 40;
              --v47;
            }

            while (v47);

            v38 = v184;
            v37 = v186;
          }

          else
          {

            v49 = v32;
          }

          v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v49);

          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = OUTLINED_FUNCTION_49_0();
            *&v199 = swift_slowAlloc();
            *v76 = v170;
            *(v76 + 4) = OUTLINED_FUNCTION_11_27();
            *(v76 + 12) = 2080;
            OUTLINED_FUNCTION_71_2();
            *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            *(v76 + 22) = 2080;
            Set.description.getter();
            v1 = v77;
            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v76 + 24) = v78;
            v38 = v184;
            v37 = v186;
            _os_log_impl(&dword_25D85C000, v74, v75, "%s Checking %s's surrounding IDs: %s", v76, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_42_0();
          }

          v80 = specialized _NativeDictionary.filter(_:)(v79, v38, v37);

          v180 = v80 + 8;
          v81 = 1 << *(v80 + 32);
          if (v81 < 64)
          {
            v82 = ~(-1 << v81);
          }

          else
          {
            v82 = -1;
          }

          v3 = v82 & v80[8];
          v178 = (v81 + 63) >> 6;
          v182 = v80;

          v83 = 0;
          v84 = v32;
          while (v3)
          {
            v188 = v84;
LABEL_56:
            v86 = __clz(__rbit64(v3)) | (v83 << 6);
            v87 = (v182[6] + 16 * v86);
            v89 = *v87;
            v88 = v87[1];
            outlined init with copy of ChatMessageRecord(v182[7] + 40 * v86, &v200);
            *&v199 = v89;
            *(&v199 + 1) = v88;
            v90 = v202;
            v91 = v203;
            __swift_project_boxed_opaque_existential_1(&v200, v202);
            v92 = *(v91 + 32);

            v93 = v92(v90, v91);
            v94 = *(v93 + 16);
            if (v94)
            {
              v95 = v93 + 32;
              v96 = v32;
              do
              {
                outlined init with copy of ChatMessageRecord(v95, v191);
                v97 = v193;
                __swift_project_boxed_opaque_existential_1(v191, *(&v192 + 1));
                v98 = OUTLINED_FUNCTION_13_17();
                v100 = v99(v98, v97);
                v102 = v101;
                __swift_destroy_boxed_opaque_existential_1Tm(v191);
                if (v102)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v106 = OUTLINED_FUNCTION_44();
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v106);
                    v96 = v107;
                  }

                  v104 = *(v96 + 16);
                  v103 = *(v96 + 24);
                  if (v104 >= v103 >> 1)
                  {
                    v108 = OUTLINED_FUNCTION_26_3(v103);
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v108);
                    v96 = v109;
                  }

                  *(v96 + 16) = v104 + 1;
                  v105 = v96 + 16 * v104;
                  *(v105 + 32) = v100;
                  *(v105 + 40) = v102;
                }

                v95 += 40;
                --v94;
              }

              while (v94);

              v32 = MEMORY[0x277D84F90];
            }

            else
            {

              v96 = v32;
            }

            outlined destroy of IntentApplication?(&v199, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
            v110 = *(v96 + 16);
            v111 = *(v188 + 16);
            v1 = v111 + v110;
            if (__OFADD__(v111, v110))
            {
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v113 = v188;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v1 > *(v188 + 24) >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native);
              v113 = v114;
            }

            v3 &= v3 - 1;
            if (*(v96 + 16))
            {
              if ((*(v113 + 24) >> 1) - *(v113 + 16) < v110)
              {
                goto LABEL_96;
              }

              v115 = v113;
              swift_arrayInitWithCopy();

              v84 = v115;
              if (v110)
              {
                v116 = *(v115 + 16);
                v117 = __OFADD__(v116, v110);
                v118 = v116 + v110;
                if (v117)
                {
                  goto LABEL_97;
                }

                *(v115 + 16) = v118;
              }
            }

            else
            {
              v119 = v113;

              v84 = v119;
              if (v110)
              {
                goto LABEL_95;
              }
            }
          }

          while (1)
          {
            v85 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              __break(1u);
              goto LABEL_94;
            }

            if (v85 >= v178)
            {
              break;
            }

            v3 = v180[v85];
            ++v83;
            if (v3)
            {
              v188 = v84;
              v83 = v85;
              goto LABEL_56;
            }
          }

          v120 = v84;

          _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v120);
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = OUTLINED_FUNCTION_90_1();
            v124 = OUTLINED_FUNCTION_260();
            *v123 = OUTLINED_FUNCTION_32_22(v124, v125, v126, v127, v128, v129, v130, v131, v170, *(&v170 + 1), v171).n128_u32[0];
            v132 = OUTLINED_FUNCTION_11_27();
            OUTLINED_FUNCTION_52_15(v132);
            Set.description.getter();
            v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v123 + 14) = v133;
            _os_log_impl(&dword_25D85C000, v121, v122, "%s Checking against rest of these IDs: %s", v123, 0x16u);
            OUTLINED_FUNCTION_68_11();
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_42_0();
          }

          v34 = v174;
          v134 = OUTLINED_FUNCTION_100_4();
          v136 = specialized Set.isDisjoint(with:)(v134, v135);

          v137 = Logger.logObject.getter();
          if (v136)
          {
            v138 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v137, v138))
            {
              v139 = OUTLINED_FUNCTION_90_1();
              v140 = OUTLINED_FUNCTION_260();
              *v139 = OUTLINED_FUNCTION_32_22(v140, v141, v142, v143, v144, v145, v146, v147, v170, *(&v170 + 1), v171).n128_u32[0];
              *(v139 + 4) = OUTLINED_FUNCTION_11_27();
              *(v139 + 12) = 2080;
              OUTLINED_FUNCTION_71_2();
              v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v139 + 14) = v148;
              _os_log_impl(&dword_25D85C000, v137, v138, "%s The lists are disjointed, so just leave it in deduped: %s", v139, 0x16u);
              OUTLINED_FUNCTION_68_11();
              OUTLINED_FUNCTION_37_0();
              OUTLINED_FUNCTION_42_0();
            }

            else
            {
            }
          }

          else
          {
            v149 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v137, v149))
            {
              v150 = OUTLINED_FUNCTION_90_1();
              v151 = OUTLINED_FUNCTION_260();
              *v150 = OUTLINED_FUNCTION_32_22(v151, v152, v153, v154, v155, v156, v157, v158, v170, *(&v170 + 1), v171).n128_u32[0];
              *(v150 + 4) = OUTLINED_FUNCTION_11_27();
              *(v150 + 12) = 2080;
              OUTLINED_FUNCTION_71_2();
              *(v150 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
              _os_log_impl(&dword_25D85C000, v137, v149, "%s Found overlap of IDs, so we drop this: %s", v150, 0x16u);
              OUTLINED_FUNCTION_68_11();
              OUTLINED_FUNCTION_37_0();
              OUTLINED_FUNCTION_42_0();
            }

            v159 = OUTLINED_FUNCTION_71_2();
            specialized Dictionary._Variant.removeValue(forKey:)(v159, v160, v161);

            outlined destroy of IntentApplication?(&v199, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v194);
        }

        else
        {

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = OUTLINED_FUNCTION_90_1();
            v64 = OUTLINED_FUNCTION_260();
            *v63 = OUTLINED_FUNCTION_32_22(v64, v65, v66, v67, v68, v69, v70, v71, v170, *(&v170 + 1), v171).n128_u32[0];
            v72 = OUTLINED_FUNCTION_11_27();
            OUTLINED_FUNCTION_52_15(v72);
            OUTLINED_FUNCTION_71_2();
            v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v63 + 14) = v73;
            _os_log_impl(&dword_25D85C000, v61, v62, "%s Unabled to find %s in the deduped dict?!", v63, 0x16u);
            OUTLINED_FUNCTION_68_11();
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_42_0();
          }

          else
          {
          }
        }
      }
    }

    while (v34);
  }

  else
  {
  }

  v162 = Logger.logObject.getter();
  v163 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = OUTLINED_FUNCTION_90_1();
    *&v199 = OUTLINED_FUNCTION_260();
    *v164 = 136315394;
    OUTLINED_FUNCTION_98_2();
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_52_15(v165);
    swift_beginAccess();

    v167 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10OmniSearch17ChatMessageRecord_pG_AfG_ps5NeverOTg504_s10d8Search18g43BodyManagerV05dedupC4Dict_7basedOnSDySSAA04f2C6h31_pGAG_SaySSGtFZSayAaF_pGycfu15_z10F_pSS3key_z57F_p5valuet_tcfu16_32d072148418b0b8b3f2440b1710595293SSAJ_z6F_pAKtZ13F_pTf3nnnpk_nTf1cn_n(v166);

    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
    MEMORY[0x25F89F8A0](v167, v168);

    v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v164 + 14) = v169;
    _os_log_impl(&dword_25D85C000, v162, v163, "%s Deduped dict %s", v164, 0x16u);
    OUTLINED_FUNCTION_68_11();
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_42_0();
  }

  swift_beginAccess();
  OUTLINED_FUNCTION_148();
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t ChatMessageRecord.guid.getter()
{
  OUTLINED_FUNCTION_19_21();
  v0();
  v1 = v5[4];
  OUTLINED_FUNCTION_77_10(v5);
  v2 = OUTLINED_FUNCTION_112_2();
  v3(v2, v1);
  OUTLINED_FUNCTION_140_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return OUTLINED_FUNCTION_94();
}

uint64_t closure #1 in ChatMessageRecord.chatMobileSMSDocuments.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v64 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v73 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v26 - 8);
  v72 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v57 - v29;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  result = (*(v32 + 8))(v31, v32);
  v62 = v34;
  v63 = result;
  if (v34)
  {
    v35 = a1[3];
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v35);
    v37 = (*(v36 + 16))(v35, v36);
    v60 = v38;
    v61 = v37;
    v39 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v39);
    v71 = (*(v40 + 32))(v39, v40);
    v41 = a1[3];
    v42 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v41);
    LODWORD(v59) = (*(v42 + 40))(v41, v42);
    v43 = a1[3];
    v44 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v43);
    (*(v44 + 24))(v43, v44);
    v45 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v45);
    v46 = type metadata accessor for DataDetectorResults();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v46);
    v47 = type metadata accessor for PartialExtractedAttributes();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v47);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logging.search);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_25D85C000, v49, v50, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v51, 2u);
      MEMORY[0x25F8A1050](v51, -1, -1);
    }

    v57 = v25;

    v58 = v30;
    outlined init with copy of ResourceBundle?(v30, v72, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of ResourceBundle?(v25, v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v52 = v59 & 1;
    v74 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v71, v59 & 1);
    specialized Array.append<A>(contentsOf:)(MEMORY[0x277D84F90]);
    v59 = v74;
    outlined init with copy of ResourceBundle?(v20, v64, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined init with copy of ResourceBundle?(v15, v65, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v53 = type metadata accessor for PreExtractedCard();
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v53);
    v54 = type metadata accessor for PreExtractedContact();
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v54);
    v55 = type metadata accessor for PreExtractedSharedLink();
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v55);
    v56 = type metadata accessor for PreExtractedBreadcrumb();
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v56);
    MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)(v63, v62, 0, 0, 0, 0, v61, v60, v71, v52, MEMORY[0x277D84F90], v72, v73, MEMORY[0x277D84F90], 0, 0, 0, 0, v59, MEMORY[0x277D84F90]);
    outlined destroy of IntentApplication?(v15, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v20, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of IntentApplication?(v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return outlined destroy of IntentApplication?(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20[3];
  v22 = swift_task_alloc();
  v20[4] = v22;
  *(v22 + 16) = v21;
  v23 = swift_task_alloc();
  v20[5] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch13MessageRecord_pGMd, &_sSay10OmniSearch13MessageRecord_pGMR);
  *v23 = v20;
  v23[1] = IMSPIMessageQueryHelper.queryFullBody(messageGuids:);

  return MEMORY[0x2822007B8](v20 + 2, 0, 0, 0xD00000000000001CLL, 0x800000025DBF4E20, partial apply for closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:), v22, v24, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t IMSPIMessageQueryHelper.queryFullBody(messageGuids:)()
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
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMd, &_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMR);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v20 - v4;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  static DispatchQoS.userInitiated.getter();
  DispatchQoS.qosClass.getter();
  (*(v11 + 8))(v13, v10);
  DispatchQoS.QoSClass.rawValue.getter();
  (*(v7 + 8))(v9, v6);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = v22;
  (*(v3 + 16))(v5, v23, v22);
  v16 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v3 + 32))(v17 + v16, v5, v15);
  aBlock[4] = partial apply for closure #1 in closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [Any]?) -> ();
  aBlock[3] = &block_descriptor_4;
  v18 = _Block_copy(aBlock);

  v19 = isa;
  IMSPIQueryMessagesWithGUIDsAndQOS();

  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.answerSynthesis);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v7 + 12) = 2080;
    MEMORY[0x25F89F8A0](a2, MEMORY[0x277D837D0]);
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 14) = v8;
    _os_log_impl(&dword_25D85C000, v5, v6, "%s - Query via IMSPIQueryMessagesWithGUIDsAndQOS for full message content for messageGuids: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v17, -1, -1);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  if (a1)
  {
    v9 = specialized _arrayConditionalCast<A, B>(_:)(a1);
    if (v9)
    {
      v10 = v9;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v13 = 136315651;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v13 + 12) = 2048;
        *(v13 + 14) = specialized Array.count.getter();
        *(v13 + 22) = 2085;
        v14 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIMessage, 0x277D18DD0);
        MEMORY[0x25F89F8A0](v10, v14);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v13 + 24) = v15;
        _os_log_impl(&dword_25D85C000, v11, v12, "%s - IMSPIQueryMessagesWithGUIDsAndQOS returned %ld messages: %{sensitive}s", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8A1050](v18, -1, -1);
        MEMORY[0x25F8A1050](v13, -1, -1);
      }

      specialized _arrayForceCast<A, B>(_:)();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMd, &_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [Any]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void IMSPIMessageQueryHelper.parseChatGUID(from:toIdentifier:toService:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = MEMORY[0x25F89F4C0]();
  IMComponentsFromChatGUID();

  v5 = one-time initialization token for answerSynthesis;
  v6 = 0;
  v7 = 0;
  if (v5 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.answerSynthesis);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v9, v10, "%s IMComponentsFromChatGUID unable to extract identifier and service from chatGUID: %s, return as-is.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v12, -1, -1);
    MEMORY[0x25F8A1050](v11, -1, -1);
  }
}

uint64_t IMSPIMessageQueryHelper.queryMessagesBeforeAndAfter(targetGuid:withChatId:withService:countBefore:countAfter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v34 = a5;
  v35 = a7;
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logging.answerSynthesis);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v33 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v17 = 136316418;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 22) = 2080;
    v18 = a3;
    *(v17 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 32) = 2080;
    v19 = v34;
    *(v17 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v17 + 42) = 2048;
    v20 = v35;
    *(v17 + 44) = v35;
    *(v17 + 52) = 2048;
    *(v17 + 54) = a8;
    _os_log_impl(&dword_25D85C000, v15, v16, "%s - parameters. targetGuid: %s, chatIdentifier: %s, service: %s, countBefore: %lu, countAfter: %lu", v17, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v37, -1, -1);
    MEMORY[0x25F8A1050](v17, -1, -1);
  }

  else
  {

    v18 = a3;
    v20 = v35;
    v19 = a5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25DBC8180;
  *(v21 + 32) = v18;
  *(v21 + 40) = a4;

  v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25DBC8180;
  *(v23 + 32) = v19;
  *(v23 + 40) = a6;

  v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = MEMORY[0x25F89F4C0](v33);
  if ((a8 | v20) < 0)
  {
    __break(1u);
    __break(1u);
  }

  v26 = v25;
  v27 = MEMORY[0x25F89F4C0](0, 0xE000000000000000);
  v28 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier();

  if (v28)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMDMessageRecord, 0x277D18ED0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v31 + 22) = 2080;
    *(v31 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v29, v30, "%s - Nothing returned from IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUID for message: %s, chatIdentifier: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v38, -1, -1);
    MEMORY[0x25F8A1050](v31, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

double IMSPIMessageQueryHelper.queryChat(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ChatMessageRecord(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13MessageRecord_pMd, &_s10OmniSearch13MessageRecord_pMR);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIMessage, 0x277D18DD0);
  if (swift_dynamicCast())
  {
    v13 = v24;
    static DispatchQoS.userInitiated.getter();
    DispatchQoS.qosClass.getter();
    (*(v10 + 8))(v12, v9);
    v14 = DispatchQoS.QoSClass.rawValue.getter();
    (*(v6 + 8))(v8, v5);
    v15 = [v13 spiChatWithQOS_];
    if (v15)
    {
      v16 = v15;
      *(a2 + 24) = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIChat, 0x277D18DC0);
      *(a2 + 32) = &protocol witness table for IMSPIChat;

      *a2 = v16;
      return result;
    }
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logging.answerSynthesis);
    outlined init with copy of ChatMessageRecord(a1, v25);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v21 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      swift_getDynamicType();
      _typeName(_:qualified:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v21 + 14) = v23;
      _os_log_impl(&dword_25D85C000, v19, v20, "%s - Can only query IMSPIChat for %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v22, -1, -1);
      MEMORY[0x25F8A1050](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t protocol witness for MessageQueryHelper.queryFullBody(messageGuids:) in conformance IMSPIMessageQueryHelper(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance SmartChunkingPreprocessing;

  return IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(a1);
}

id @nonobjc IMMessagePartGUID.init(encodedMessagePartGUID:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x25F89F4C0](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithEncodedMessagePartGUID_];

  return v4;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13MessageRecord_pMd, &_s10OmniSearch13MessageRecord_pMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for MessageAccumulationContext.Message(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for MessageAccumulationContext.Message(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v26 = a2;
  if (a3 != a2)
  {
    v36 = *a4;
    v14 = v36 + 40 * a3;
    v15 = a1 - a3;
    while (2)
    {
      v28 = v14;
      v29 = a3;
      v27 = v15;
      do
      {
        outlined init with copy of ChatMessageRecord(v14, &v33);
        outlined init with copy of ChatMessageRecord(v14 - 40, v30);
        v17 = v34;
        v16 = v35;
        __swift_project_boxed_opaque_existential_1(&v33, v34);
        (*(v16 + 24))(v17, v16);
        v18 = type metadata accessor for Date();
        if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v19 = v31;
        v20 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        (*(v20 + 24))(v19, v20);
        if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
        {
          goto LABEL_13;
        }

        lazy protocol witness table accessor for type Date and conformance Date();
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(*(v18 - 8) + 8);
        v22(v10, v18);
        v22(v13, v18);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        __swift_destroy_boxed_opaque_existential_1Tm(&v33);
        if (v21)
        {
          break;
        }

        if (!v36)
        {
          goto LABEL_14;
        }

        outlined init with take of ResponseOverrideMatcherProtocol(v14, &v33);
        v23 = *(v14 - 24);
        *v14 = *(v14 - 40);
        *(v14 + 16) = v23;
        *(v14 + 32) = *(v14 - 8);
        outlined init with take of ResponseOverrideMatcherProtocol(&v33, v14 - 40);
        v14 -= 40;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v29 + 1;
      v14 = v28 + 40;
      v15 = v27 - 1;
      if (v29 + 1 != v26)
      {
        continue;
      }

      break;
    }
  }
}

{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  MEMORY[0x28223BE20](v36);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v26 - v10);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v33 = -v17;
    v34 = v16;
    v19 = a1 - a3;
    v27 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v31 = v18;
      v32 = a3;
      v29 = v20;
      v30 = v19;
      v21 = v19;
      do
      {
        outlined init with copy of SpotlightRankingItem?(v20, v15, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined init with copy of SpotlightRankingItem?(v18, v11, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v22 = *v15;
        v23 = *v11;
        outlined destroy of IntentApplication?(v11, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined destroy of IntentApplication?(v15, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        if (v22 >= v23)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        v24 = v35;
        outlined init with take of SearchResultItem?(v20, v35, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of SearchResultItem?(v24, v18, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v18 += v33;
        v20 += v33;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v18 = v31 + v27;
      v19 = v30 - 1;
      v20 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

{
  v8 = type metadata accessor for MessageAccumulationContext.Message(0);
  MEMORY[0x28223BE20](v8);
  v53 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v42 - v11;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v44 = a2;
  if (a3 == a2)
  {
    return;
  }

  v16 = *a4;
  v17 = *(v13 + 72);
  v18 = *a4 + v17 * (a3 - 1);
  v51 = -v17;
  v52 = v16;
  v19 = a1 - a3;
  v43 = v17;
  v20 = v16 + v17 * a3;
  v49 = v8;
  while (2)
  {
    v47 = v18;
    v48 = a3;
    v45 = v20;
    v46 = v19;
    v21 = v50;
    while (1)
    {
      outlined init with copy of MessageAccumulationContext.Message(v20, v15, type metadata accessor for MessageAccumulationContext.Message);
      outlined init with copy of MessageAccumulationContext.Message(v18, v21, type metadata accessor for MessageAccumulationContext.Message);
      v22 = *(v8 + 20);
      v23 = v15[v22];
      v24 = *(v21 + v22);
      if (v23 != v24)
      {
        v29 = v23 < v24;
        goto LABEL_36;
      }

      v25 = *(v8 + 24);
      v26 = v15[v25];
      if (v15[v25])
      {
        if (v26 == 1)
        {
          v27 = 0xE700000000000000;
          v28 = 0x73757361676570;
        }

        else
        {
          v28 = 0x7953726577736E61;
          v27 = 0xEF7369736568746ELL;
        }
      }

      else
      {
        v28 = 0x6867696C746F7073;
        v27 = 0xE900000000000074;
      }

      v30 = *(v21 + v25);
      if (*(v21 + v25))
      {
        if (v30 == 1)
        {
          v31 = 0xE700000000000000;
          v32 = 0x73757361676570;
        }

        else
        {
          v32 = 0x7953726577736E61;
          v31 = 0xEF7369736568746ELL;
        }
      }

      else
      {
        v32 = 0x6867696C746F7073;
        v31 = 0xE900000000000074;
      }

      if (v28 == v32 && v27 == v31)
      {
        break;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_42;
      }

      if (v26)
      {
        if (v26 == 1)
        {
          v35 = 0xE700000000000000;
          v36 = 0x73757361676570;
          if (!v30)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v36 = 0x7953726577736E61;
          v35 = 0xEF7369736568746ELL;
          if (!v30)
          {
LABEL_29:
            v38 = 0x6867696C746F7073;
            v37 = 0xE900000000000074;
            goto LABEL_31;
          }
        }
      }

      else
      {
        v36 = 0x6867696C746F7073;
        v35 = 0xE900000000000074;
        if (!v30)
        {
          goto LABEL_29;
        }
      }

      if (v30 == 1)
      {
        v37 = 0xE700000000000000;
        v38 = 0x73757361676570;
      }

      else
      {
        v38 = 0x7953726577736E61;
        v37 = 0xEF7369736568746ELL;
      }

LABEL_31:
      v8 = v49;
      if (v36 == v38 && v35 == v37)
      {
        break;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v21 = v50;
LABEL_36:
      outlined destroy of MessageAccumulationContext.Message(v21);
      outlined destroy of MessageAccumulationContext.Message(v15);
      if (v29)
      {
        if (!v52)
        {
          __break(1u);
          return;
        }

        v40 = v53;
        outlined init with take of MessageAccumulationContext.Message(v20, v53);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of MessageAccumulationContext.Message(v40, v18);
        v18 += v51;
        v20 += v51;
        if (!__CFADD__(v19++, 1))
        {
          continue;
        }
      }

      goto LABEL_43;
    }

LABEL_42:
    outlined destroy of MessageAccumulationContext.Message(v50);
    outlined destroy of MessageAccumulationContext.Message(v15);
    v8 = v49;
LABEL_43:
    a3 = v48 + 1;
    v18 = v47 + v43;
    v19 = v46 - 1;
    v20 = v45 + v43;
    if (v48 + 1 != v44)
    {
      continue;
    }

    break;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v117 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v116 - v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v125 = a3;
  v126 = &v116 - v15;
  v16 = a3[1];
  if (v16 >= 1)
  {
    v122 = v14;
    v116 = a4;
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v121 = v11;
    while (1)
    {
      v19 = v17 + 1;
      v118 = v18;
      v120 = v17;
      if (v17 + 1 < v16)
      {
        v20 = v17;
        v21 = *v125;
        outlined init with copy of ChatMessageRecord(*v125 + 40 * v19, &v132);
        outlined init with copy of ChatMessageRecord(&v21[40 * v20], v129);
        v22 = v127;
        LODWORD(v124) = closure #2 in closure #5 in MessageBodyManager.enrichMessagesWithContext(from:)(&v132, v129);
        v127 = v22;
        if (v22)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v129);
          __swift_destroy_boxed_opaque_existential_1Tm(&v132);
LABEL_108:

          return;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
        v119 = 40 * v20;
        v18 = &v21[40 * v20 + 80];
        v23 = (v20 + 2);
        v123 = v16;
        while (1)
        {
          v24 = v23;
          if (v19 + 1 >= v16)
          {
            break;
          }

          v128 = v19;
          outlined init with copy of ChatMessageRecord(v18, &v132);
          outlined init with copy of ChatMessageRecord((v18 - 40), v129);
          v26 = v133;
          v25 = v134;
          __swift_project_boxed_opaque_existential_1(&v132, v133);
          v27 = v126;
          (*(v25 + 24))(v26, v25);
          v28 = type metadata accessor for Date();
          if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
          {
            goto LABEL_137;
          }

          v135 = v24;
          v30 = v130;
          v29 = v131;
          __swift_project_boxed_opaque_existential_1(v129, v130);
          v31 = v122;
          (*(v29 + 24))(v30, v29);
          if (__swift_getEnumTagSinglePayload(v31, 1, v28) == 1)
          {
            goto LABEL_138;
          }

          lazy protocol witness table accessor for type Date and conformance Date();
          v32 = v126;
          v33 = dispatch thunk of static Comparable.< infix(_:_:)();
          v34 = *(*(v28 - 8) + 8);
          v34(v31, v28);
          v34(v32, v28);
          __swift_destroy_boxed_opaque_existential_1Tm(v129);
          __swift_destroy_boxed_opaque_existential_1Tm(&v132);
          v18 += 40;
          v19 = v128 + 1;
          v24 = v135;
          v23 = v135 + 1;
          v16 = v123;
          if (((v124 ^ v33) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v19 = v16;
LABEL_12:
        if (v124)
        {
          v35 = v120;
          if (v19 < v120)
          {
            goto LABEL_132;
          }

          v18 = v118;
          if (v120 < v19)
          {
            if (v16 >= v24)
            {
              v36 = v24;
            }

            else
            {
              v36 = v16;
            }

            v37 = 40 * v36 - 40;
            v38 = v19;
            v39 = v119;
            do
            {
              if (v35 != --v38)
              {
                v40 = *v125;
                if (!*v125)
                {
                  goto LABEL_141;
                }

                v41 = v40 + v39;
                v42 = v40 + v37;
                outlined init with take of ResponseOverrideMatcherProtocol((v40 + v39), &v132);
                v43 = *(v42 + 32);
                v44 = *(v42 + 16);
                *v41 = *v42;
                *(v41 + 16) = v44;
                *(v41 + 32) = v43;
                outlined init with take of ResponseOverrideMatcherProtocol(&v132, v42);
                v18 = v118;
              }

              ++v35;
              v37 -= 40;
              v39 += 40;
            }

            while (v35 < v38);
          }
        }

        else
        {
          v18 = v118;
        }
      }

      v45 = v125[1];
      if (v19 < v45)
      {
        if (__OFSUB__(v19, v120))
        {
          goto LABEL_129;
        }

        if (v19 - v120 < v116)
        {
          v46 = v120 + v116;
          if (__OFADD__(v120, v116))
          {
            goto LABEL_130;
          }

          if (v46 >= v45)
          {
            v46 = v125[1];
          }

          if (v46 >= v120)
          {
            if (v19 == v46)
            {
              goto LABEL_43;
            }

            v135 = *v125;
            v47 = &v135[40 * v19];
            v48 = v120 - v19;
            v119 = v46;
LABEL_34:
            v128 = v19;
            v123 = v48;
            v124 = v47;
            v49 = v47;
            while (1)
            {
              outlined init with copy of ChatMessageRecord(v49, &v132);
              outlined init with copy of ChatMessageRecord(v49 - 40, v129);
              v50 = v133;
              v51 = v134;
              __swift_project_boxed_opaque_existential_1(&v132, v133);
              (*(v51 + 24))(v50, v51);
              v52 = type metadata accessor for Date();
              if (__swift_getEnumTagSinglePayload(v11, 1, v52) == 1)
              {
                goto LABEL_135;
              }

              v53 = v130;
              v54 = v131;
              __swift_project_boxed_opaque_existential_1(v129, v130);
              (*(v54 + 24))(v53, v54);
              if (__swift_getEnumTagSinglePayload(v8, 1, v52) == 1)
              {
                break;
              }

              lazy protocol witness table accessor for type Date and conformance Date();
              v55 = dispatch thunk of static Comparable.< infix(_:_:)();
              v56 = *(*(v52 - 8) + 8);
              v56(v8, v52);
              v56(v11, v52);
              __swift_destroy_boxed_opaque_existential_1Tm(v129);
              __swift_destroy_boxed_opaque_existential_1Tm(&v132);
              if (v55)
              {
                goto LABEL_41;
              }

              if (!v135)
              {
                goto LABEL_136;
              }

              outlined init with take of ResponseOverrideMatcherProtocol(v49, &v132);
              v57 = *(v49 - 24);
              *v49 = *(v49 - 40);
              *(v49 + 16) = v57;
              *(v49 + 32) = *(v49 - 8);
              outlined init with take of ResponseOverrideMatcherProtocol(&v132, v49 - 40);
              v49 -= 40;
              if (__CFADD__(v48++, 1))
              {
LABEL_41:
                v19 = v128 + 1;
                v47 = v124 + 40;
                v48 = v123 - 1;
                if (v128 + 1 == v119)
                {
                  v19 = v119;
                  v18 = v118;
                  goto LABEL_43;
                }

                goto LABEL_34;
              }
            }

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
            goto LABEL_142;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
LABEL_98:
          v108 = v18 + 16;
          v109 = *(v18 + 2);
          while (v109 >= 2)
          {
            if (!*v125)
            {
              goto LABEL_140;
            }

            v110 = v18;
            v111 = &v18[16 * v109];
            v112 = *v111;
            v18 = &v108[2 * v109];
            v113 = *(v18 + 1);
            v114 = v127;
            specialized _merge<A>(low:mid:high:buffer:by:)(*v125 + 40 * *v111, (*v125 + 40 * *v18), *v125 + 40 * v113, v135);
            v127 = v114;
            if (v114)
            {
              break;
            }

            if (v113 < v112)
            {
              goto LABEL_124;
            }

            if (v109 - 2 >= *v108)
            {
              goto LABEL_125;
            }

            *v111 = v112;
            *(v111 + 1) = v113;
            v115 = *v108 - v109;
            if (*v108 < v109)
            {
              goto LABEL_126;
            }

            v109 = *v108 - 1;
            specialized UnsafeMutablePointer.moveInitialize(from:count:)(v18 + 16, v115, v18);
            *v108 = v109;
            v18 = v110;
          }

          goto LABEL_108;
        }
      }

LABEL_43:
      if (v19 < v120)
      {
        goto LABEL_128;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        v18 = v106;
      }

      v61 = *(v18 + 2);
      v60 = *(v18 + 3);
      v62 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v18);
        v18 = v107;
      }

      *(v18 + 2) = v62;
      v63 = v18 + 32;
      v64 = &v18[16 * v61 + 32];
      v65 = v128;
      *v64 = v120;
      *(v64 + 1) = v65;
      v135 = *v117;
      if (!v135)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v61)
      {
        break;
      }

LABEL_92:
      v16 = v125[1];
      v17 = v128;
      if (v128 >= v16)
      {
        goto LABEL_96;
      }
    }

    while (1)
    {
      v66 = v62 - 1;
      v67 = &v63[16 * v62 - 16];
      v68 = &v18[16 * v62];
      if (v62 >= 4)
      {
        break;
      }

      if (v62 == 3)
      {
        v69 = *(v18 + 4);
        v70 = *(v18 + 5);
        v79 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        v72 = v79;
LABEL_63:
        if (v72)
        {
          goto LABEL_115;
        }

        v84 = *v68;
        v83 = *(v68 + 1);
        v85 = __OFSUB__(v83, v84);
        v86 = v83 - v84;
        v87 = v85;
        if (v85)
        {
          goto LABEL_118;
        }

        v88 = *(v67 + 1);
        v89 = v88 - *v67;
        if (__OFSUB__(v88, *v67))
        {
          goto LABEL_121;
        }

        if (__OFADD__(v86, v89))
        {
          goto LABEL_123;
        }

        if (v86 + v89 >= v71)
        {
          if (v71 < v89)
          {
            v66 = v62 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (v62 < 2)
      {
        goto LABEL_117;
      }

      v91 = *v68;
      v90 = *(v68 + 1);
      v79 = __OFSUB__(v90, v91);
      v86 = v90 - v91;
      v87 = v79;
LABEL_78:
      if (v87)
      {
        goto LABEL_120;
      }

      v93 = *v67;
      v92 = *(v67 + 1);
      v79 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v79)
      {
        goto LABEL_122;
      }

      if (v94 < v86)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v66 - 1 >= v62)
      {
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

      if (!*v125)
      {
        goto LABEL_139;
      }

      v98 = v8;
      v99 = v18;
      v100 = &v63[16 * v66 - 16];
      v101 = *v100;
      v102 = v66;
      v18 = &v63[16 * v66];
      v103 = *(v18 + 1);
      v104 = v127;
      specialized _merge<A>(low:mid:high:buffer:by:)(*v125 + 40 * *v100, (*v125 + 40 * *v18), *v125 + 40 * v103, v135);
      v127 = v104;
      if (v104)
      {
        goto LABEL_108;
      }

      if (v103 < v101)
      {
        goto LABEL_110;
      }

      v105 = *(v99 + 2);
      if (v102 > v105)
      {
        goto LABEL_111;
      }

      *v100 = v101;
      *(v100 + 1) = v103;
      if (v102 >= v105)
      {
        goto LABEL_112;
      }

      v62 = v105 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v18 + 16, v105 - 1 - v102, v18);
      v18 = v99;
      *(v99 + 2) = v105 - 1;
      v8 = v98;
      v11 = v121;
      if (v105 <= 2)
      {
        goto LABEL_92;
      }
    }

    v73 = &v63[16 * v62];
    v74 = *(v73 - 8);
    v75 = *(v73 - 7);
    v79 = __OFSUB__(v75, v74);
    v76 = v75 - v74;
    if (v79)
    {
      goto LABEL_113;
    }

    v78 = *(v73 - 6);
    v77 = *(v73 - 5);
    v79 = __OFSUB__(v77, v78);
    v71 = v77 - v78;
    v72 = v79;
    if (v79)
    {
      goto LABEL_114;
    }

    v80 = *(v68 + 1);
    v81 = v80 - *v68;
    if (__OFSUB__(v80, *v68))
    {
      goto LABEL_116;
    }

    v79 = __OFADD__(v71, v81);
    v82 = v71 + v81;
    if (v79)
    {
      goto LABEL_119;
    }

    if (v82 >= v76)
    {
      v96 = *v67;
      v95 = *(v67 + 1);
      v79 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v79)
      {
        goto LABEL_127;
      }

      if (v71 < v97)
      {
        v66 = v62 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_96:
  v135 = *v117;
  if (v135)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_98;
    }

    goto LABEL_133;
  }

LABEL_143:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v61 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  v66 = &v61 - v16;
  v17 = &a2[-a1] / 40;
  v18 = (a3 - a2) / 40;
  if (v17 < v18)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, &a2[-a1] / 40, a4);
    v74 = &a4[40 * v17];
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v74 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v20 = v13;
      v21 = a1;
      outlined init with copy of ChatMessageRecord(a2, v71);
      outlined init with copy of ChatMessageRecord(a4, v68);
      v22 = v72;
      v23 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v24 = v66;
      (*(v23 + 24))(v22, v23);
      v25 = type metadata accessor for Date();
      result = __swift_getEnumTagSinglePayload(v24, 1, v25);
      if (result == 1)
      {
        __break(1u);
        goto LABEL_39;
      }

      v27 = a2;
      v28 = a4;
      v30 = v69;
      v29 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v31 = v30;
      v13 = v20;
      (*(v29 + 24))(v31, v29);
      result = __swift_getEnumTagSinglePayload(v20, 1, v25);
      if (result == 1)
      {
        goto LABEL_40;
      }

      lazy protocol witness table accessor for type Date and conformance Date();
      v32 = v66;
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      v34 = *(*(v25 - 8) + 8);
      v34(v13, v25);
      v34(v32, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      if ((v33 & 1) == 0)
      {
        break;
      }

      v35 = v28;
      a4 = v28 + 40;
      v36 = v21;
      if (v21 != v28)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v36 + 40;
    }

    v35 = a2;
    a2 += 40;
    v36 = v21;
    a4 = v28;
    if (v21 == v27)
    {
      goto LABEL_14;
    }

LABEL_13:
    v37 = *v35;
    v38 = *(v35 + 1);
    *(v36 + 32) = *(v35 + 4);
    *v36 = v37;
    *(v36 + 16) = v38;
    goto LABEL_14;
  }

  v65 = v15;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 40, a4);
  v39 = &a4[40 * v18];
  v63 = a4;
  v64 = a1;
LABEL_16:
  v40 = a2 - 40;
  a3 -= 40;
  v41 = (v39 - 40);
  v66 = a2;
  while (1)
  {
    v74 = (v41 + 40);
    if (v41 + 40 <= a4 || a2 <= a1)
    {
      break;
    }

    outlined init with copy of ChatMessageRecord(v41, v71);
    v43 = v40;
    outlined init with copy of ChatMessageRecord(v40, v68);
    v44 = v72;
    v45 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v46 = v67;
    (*(v45 + 24))(v44, v45);
    v47 = type metadata accessor for Date();
    result = __swift_getEnumTagSinglePayload(v46, 1, v47);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v48 = v69;
    v49 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v50 = v65;
    (*(v49 + 24))(v48, v49);
    result = __swift_getEnumTagSinglePayload(v50, 1, v47);
    if (result == 1)
    {
      goto LABEL_41;
    }

    lazy protocol witness table accessor for type Date and conformance Date();
    v51 = v67;
    v52 = dispatch thunk of static Comparable.< infix(_:_:)();
    v53 = *(*(v47 - 8) + 8);
    v53(v50, v47);
    v53(v51, v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    if ((v52 & 1) == 0)
    {
      v39 = (v41 + 40);
      v56 = v43;
      a2 = v43;
      a4 = v63;
      a1 = v64;
      if ((a3 + 40) != v66)
      {
        v57 = *v56;
        v58 = *(v56 + 1);
        *(a3 + 32) = *(v56 + 4);
        *a3 = v57;
        *(a3 + 16) = v58;
        a2 = v56;
      }

      goto LABEL_16;
    }

    a4 = v63;
    a2 = v66;
    v40 = v43;
    if (v74 != (a3 + 40))
    {
      v54 = *v41;
      v55 = *(v41 + 16);
      *(a3 + 32) = *(v41 + 32);
      *a3 = v54;
      *(a3 + 16) = v55;
    }

    a3 -= 40;
    v41 -= 40;
    a1 = v64;
  }

LABEL_31:
  v59 = (v74 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[40 * v59])
  {
    memmove(a2, a4, 40 * v59);
  }

  return 1;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      a2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_10i8Search17klM5_pTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAhI_pIsgnndzo_Tf1nc_n04_s10i8Search18l43BodyManagerV05dedupC4Dict_7basedOnSDySSAA04k2C6M43_pGAG_SaySSGtFZSbSS3key_AaF_p5valuet_tXEfU_SSTf1nnc_n(v14, v9, a1, a2, a3);
      MEMORY[0x25F8A1050](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = (v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v11);

  v12 = specialized closure #1 in _NativeDictionary.filter(_:)(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v25 = result;
  v26 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    outlined init with copy of ChatMessageRecord(*(a3 + 56) + 40 * v16, v29);
    v27[0] = v19;
    v27[1] = v18;
    outlined init with copy of ChatMessageRecord(v29, &v28);
    if (v19 == v30 && v18 == a5)
    {
      swift_bridgeObjectRetain_n();
      outlined destroy of IntentApplication?(v27, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRetain_n();
      outlined destroy of IntentApplication?(v27, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMd, &_sSS3key_10OmniSearch17ChatMessageRecord_p5valuetMR);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);

      if ((v21 & 1) == 0)
      {
        *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      v23 = specialized _NativeDictionary.extractDictionary(using:count:)(v25, a2, v26, a3);

      return v23;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_10i8Search17klM5_pTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAhI_pIsgnndzo_Tf1nc_n04_s10i8Search18l43BodyManagerV05dedupC4Dict_7basedOnSDySSAA04k2C6M43_pGAG_SaySSGtFZSbSS3key_AaF_p5valuet_tXEfU_SSTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = specialized closure #1 in _NativeDictionary.filter(_:)(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10OmniSearch17ChatMessageRecord_pGMd, &_ss18_DictionaryStorageCySS10OmniSearch17ChatMessageRecord_pGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    outlined init with copy of ChatMessageRecord(v17 + 40 * v16, v33);
    outlined init with take of ResponseOverrideMatcherProtocol(v33, v32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = outlined init with take of ResponseOverrideMatcherProtocol(v32, *(v9 + 56) + 40 * v24);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (ob) of @objc CNContact.displayName.getter(void *a1)
{
  v2 = [a1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc IMSPIChat.handles.getter(void *a1)
{
  v1 = [a1 handles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for IMSPIHandle, 0x277D18DC8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_140_2();
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t dispatch thunk of MessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance SmartChunkingPreprocessing;

  return v9(a1, a2, a3);
}

uint64_t partial apply for closure #1 in closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMd, &_sScCySay10OmniSearch13MessageRecord_pGs5NeverOGMR);
  OUTLINED_FUNCTION_114(v3);
  v4 = *(v1 + 16);

  return closure #1 in closure #1 in IMSPIMessageQueryHelper.queryFullBody(messageGuids:)(a1, v4);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type IMMessageRecord and conformance IMMessageRecord()
{
  result = lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord;
  if (!lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord;
  if (!lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IMMessageRecord and conformance IMMessageRecord);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t partial apply for closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:);

  return closure #2 in MessageBodyManager.enrichMessageWithAssociatedGuids(mainMessageIds:)(a1, a2, v2 + 16, v6, v7);
}

uint64_t getEnumTagSinglePayload for IMMessageRecord(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IMMessageRecord(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IMMessageRecord(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IMMessageRecord and conformance IMMessageRecord();
  *(a1 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_11_27()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_21_21()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_28_18()
{

  return _s10OmniSearch0B6ResultVWOhTm_4(v0, type metadata accessor for SearchResultItem);
}

uint64_t OUTLINED_FUNCTION_52_15(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_62_11(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

__n128 OUTLINED_FUNCTION_64_11@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_74_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t static NoteContentManager.retrieveNotesViaLinkServices(for:)(uint64_t a1)
{
  v1[21] = a1;
  v2 = type metadata accessor for LNConfigurableQueryRequest.Query.Target();
  v1[22] = v2;
  OUTLINED_FUNCTION_21(v2);
  v1[23] = v3;
  v1[24] = OUTLINED_FUNCTION_199();
  v4 = type metadata accessor for LNConfigurableQueryRequest.Query();
  v1[25] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for OSSignpostID();
  v1[28] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[29] = v7;
  v1[30] = OUTLINED_FUNCTION_160();
  v1[31] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8);
}

{
  v2 = v1[37];
  v4 = v1[35];
  v3 = v1[36];
  v5 = v1[33];
  swift_willThrow();

  v6 = v1[32];
  OUTLINED_FUNCTION_30_18();
  $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)(v6);

  v7 = v1[1];

  return v7();
}

uint64_t static NoteContentManager.retrieveNotesViaLinkServices(for:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    goto LABEL_56;
  }

LABEL_2:
  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "NoteContentManager.retrieveNotesViaLinkServices", "", v4, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[29];

  OUTLINED_FUNCTION_179_1();
  v9();
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[32] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v6, v7);
  v10 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v11 = MEMORY[0x25F89F4C0](0xD000000000000015, 0x800000025DBF1D70);
  v0[18] = 0;
  v12 = [v10 entitiesForBundleIdentifier:v11 error:v0 + 18];

  v13 = v0[18];
  if (!v12)
  {
    v28 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_49;
  }

  v14 = 0x69746E4565746F4ELL;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNEntityMetadata, 0x277D23818);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v13;

  v17 = specialized Array.count.getter();
  v18 = 0;
  for (i = v0; ; v0 = i)
  {
    if (v17 == v18)
    {

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v29, static Logging.answerSynthesis);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_30_7();
        v32 = swift_slowAlloc();
        OUTLINED_FUNCTION_260();
        *v32 = 136315394;
        v33 = OUTLINED_FUNCTION_14_21();
        OUTLINED_FUNCTION_94_8(v33);
        *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v30, v31, "%s Unable to create LNMetadataProvider for: %s.", v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)(v0[32]);

      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_17_4();

      __asm { BRAA            X2, X16 }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x25F89FFD0](v18, v15);
    }

    else
    {
      if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v19 = *(v15 + 8 * v18 + 32);
    }

    v20 = v19;
    v0[33] = v19;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_54;
    }

    v21 = v14;
    v22 = [v19 identifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == v21 && v25 == 0xEA00000000007974)
    {
      break;
    }

    v14 = v21;
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_27;
    }

    ++v18;
  }

LABEL_27:

  v0 = i;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  i[34] = OUTLINED_FUNCTION_200(v36, static Logging.answerSynthesis);
  v37 = v20;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v88 = v37;
  if (os_log_type_enabled(v38, v39))
  {
    OUTLINED_FUNCTION_30_7();
    v40 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v40 = 136315395;
    *(v40 + 4) = OUTLINED_FUNCTION_14_21();
    *(v40 + 12) = 2085;
    v41 = v37;
    v42 = [v41 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v0 = i;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v40 + 14) = v43;
    _os_log_impl(&dword_25D85C000, v38, v39, "%s Created LNEntityMetadata: %{sensitive}s", v40, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v44 = 0;
  v45 = v0[21];
  v89 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84F90];
  v46 = *(v45 + 16);
  v47 = v45 + 40;
  v87 = v47;
LABEL_32:
  v48 = (v47 + 16 * v44);
  while (v46 != v44)
  {
    if (v44 >= v46)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_2;
    }

    v0 = (v44 + 1);
    if (__OFADD__(v44, 1))
    {
      goto LABEL_53;
    }

    v50 = *(v48 - 1);
    v49 = *v48;
    objc_allocWithZone(MEMORY[0x277D23800]);

    v48 += 2;
    ++v44;
    if (@nonobjc LNEntityIdentifier.init(typeIdentifier:instanceIdentifier:)(v21, 0xEA00000000007974, v50, v49))
    {
      MEMORY[0x25F89F850]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v89 = v91;
      v44 = v0;
      v47 = v87;
      goto LABEL_32;
    }
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_30_7();
    v53 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v53 = 136315394;
    *(v53 + 4) = OUTLINED_FUNCTION_14_21();
    *(v53 + 12) = 2080;
    v54 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNEntityIdentifier, 0x277D23800);
    MEMORY[0x25F89F8A0](v89, v54);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v53 + 14) = v55;
    _os_log_impl(&dword_25D85C000, v51, v52, "%s Created LNEntityIdentifier(s): %s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v57 = i[26];
  v56 = i[27];
  v59 = i[24];
  v58 = i[25];
  v60 = i[22];
  v61 = i[23];
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNConfigurableQueryRequest, 0x277D23B90);
  *v56 = v89;
  (*(v57 + 104))(v56, *MEMORY[0x277D23A18], v58);
  *v59 = v88;
  (*(v61 + 104))(v59, *MEMORY[0x277D23A40], v60);
  v62 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v63 = v88;
  [v62 init];
  v64 = LNConfigurableQueryRequest.init(query:target:options:)();
  i[35] = v64;
  v65 = v64;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v66, v67))
  {
    OUTLINED_FUNCTION_30_7();
    v68 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v68 = 136315394;
    v69 = OUTLINED_FUNCTION_14_21();
    OUTLINED_FUNCTION_94_8(v69);
    v70 = v63;
    v71 = v65;
    v72 = [v71 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v68 + 14) = v73;
    v63 = v70;
    _os_log_impl(&dword_25D85C000, v66, v67, "%s Created LNConfigurableQueryRequest: %s", v68, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v74 = [objc_opt_self() policyWithEntityMetadata_];
  v0 = i;
  i[36] = v74;
  i[19] = 0;
  v75 = [v74 connectionWithError_];
  i[37] = v75;
  v76 = i[19];
  if (!v75)
  {
    v82 = v76;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_49:
    v83 = v0[32];
    OUTLINED_FUNCTION_30_18();
    $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)(v83);

    OUTLINED_FUNCTION_17_4();

    __asm { BRAA            X1, X16 }
  }

  v77 = v75;
  i[2] = i;
  i[7] = i + 20;
  i[3] = static NoteContentManager.retrieveNotesViaLinkServices(for:);
  v78 = swift_continuation_init();
  i[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo13LNQueryOutputCs5Error_pGMd, &_sSccySo13LNQueryOutputCs5Error_pGMR);
  i[10] = MEMORY[0x277D85DD0];
  i[11] = 1107296256;
  i[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNQueryOutput?, @unowned NSError?) -> () with result type LNQueryOutput;
  i[13] = &block_descriptor_5;
  i[14] = v78;
  v79 = v76;
  [v77 performConfigurableQuery:v65 completionHandler:i + 10];
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x282200938](v80);
}

{
  *(*v0 + 304) = *(*v0 + 48);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v1);
}

{
  v1 = *(v0 + 160);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 280);
  if (v4)
  {
    OUTLINED_FUNCTION_30_7();
    v17 = v8;
    v18 = v5;
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_260();
    *v9 = 136315395;
    OUTLINED_FUNCTION_98_2();
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v9 + 12) = 2085;
    v16 = v7;
    v10 = v1;
    v11 = [v10 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v9 + 14) = v12;
    _os_log_impl(&dword_25D85C000, v2, v3, "%s LNConnection.performConfigurableQuery returned LNQueryOutput: %{sensitive}s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_37_0();
  }

  else
  {
  }

  v13 = *(v0 + 256);
  OUTLINED_FUNCTION_30_18();
  $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)(v13);

  OUTLINED_FUNCTION_62();

  return v14(v1);
}

uint64_t $defer #1 () in static NoteContentManager.retrieveNotesViaLinkServices(for:)(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "NoteContentManager.retrieveNotesViaLinkServices", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNQueryOutput?, @unowned NSError?) -> () with result type LNQueryOutput(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else if (a2)
  {
    v8 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static NoteContentManager.parseLNQueryOutput(from:)(void *a1)
{
  v2 = &off_2799EF000;
  v3 = [a1 value];
  [v3 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
  v11 = "ptions";
  if (!OUTLINED_FUNCTION_24_18(v4, v5, v6, v4, v7, v8, v9, v10, v85, v87, v88, v90, v91, v93, v95, v97, v99, v101, v103, v105))
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v71, static Logging.answerSynthesis);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_51_0();
      v75 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_45_12(v75);
      *v74 = 136315138;
      *(v74 + 4) = OUTLINED_FUNCTION_8_27();
      _os_log_impl(&dword_25D85C000, v72, v73, "%s Unable to get LNValue(s)", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v1);
      OUTLINED_FUNCTION_13_18();
      OUTLINED_FUNCTION_42_0();
    }

    return 0;
  }

  v12 = v110;
  if (one-time initialization token for answerSynthesis != -1)
  {
    goto LABEL_61;
  }

LABEL_3:
  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v13, static Logging.answerSynthesis);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_30_7();
    v16 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_45_12(v17);
    *v16 = 136315395;
    *(v16 + 4) = OUTLINED_FUNCTION_8_27();
    *(v16 + 12) = 2085;
    v18 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNValue, 0x277D23958);
    MEMORY[0x25F89F8A0](v12, v18);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v16 + 14) = v19;
    OUTLINED_FUNCTION_67_13(&dword_25D85C000, v20, v21, "%s LNQueryOutput contained [LNValue]: %{sensitive}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_42_0();
  }

  v109 = specialized Array.count.getter();
  if (v109)
  {
    v23 = 0;
    v108 = v12 & 0xC000000000000001;
    v94 = v12 + 32;
    v96 = v12 & 0xFFFFFFFFFFFFFF8;
    v98 = "er.retrieveNotesViaLinkServices";
    v92 = MEMORY[0x277D84F98];
    *&v22 = 136315395;
    v86 = v22;
    *&v22 = *(v11 + 368);
    v89 = v22;
    v102 = v12;
    while (1)
    {
      if (v108)
      {
        v24 = MEMORY[0x25F89FFD0](v23, v12);
      }

      else
      {
        if (v23 >= *(v96 + 16))
        {
          goto LABEL_60;
        }

        v24 = *(v94 + 8 * v23);
      }

      v25 = v24;
      if (__OFADD__(v23++, 1))
      {
        goto LABEL_59;
      }

      v27 = [v24 v2[69]];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v28 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
      if (OUTLINED_FUNCTION_24_18(v28, v29, v30, v28, v31, v32, v33, v34, v86, *(&v86 + 1), v89, *(&v89 + 1), v92, v94, v96, v98, v100, v102, v104, v106))
      {
        break;
      }

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v23;
        v48 = OUTLINED_FUNCTION_51_0();
        v49 = OUTLINED_FUNCTION_49_0();
        v11 = v25;
        OUTLINED_FUNCTION_45_12(v49);
        *v48 = v89;
        *(v48 + 4) = OUTLINED_FUNCTION_8_27();
        _os_log_impl(&dword_25D85C000, v45, v46, "%s Unable to get LNEntity", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        OUTLINED_FUNCTION_13_18();
        v23 = v47;
        OUTLINED_FUNCTION_42_0();
      }

LABEL_44:
      if (v23 == v109)
      {
        goto LABEL_53;
      }
    }

    v106 = v25;
    v107 = v23;
    v104 = v110;
    v35 = [v110 properties];
    v100 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v110 = MEMORY[0x277D84F90];
    v37 = specialized Array.count.getter();
    v38 = 0;
    v12 = v36 & 0xC000000000000001;
    while (1)
    {
      if (v37 == v38)
      {

        if (specialized Array.count.getter())
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
          v2 = &off_2799EF000;
          v12 = v102;
          if ((v110 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x25F89FFD0](0, v110);
          }

          else
          {
            v50 = *(v110 + 32);
          }

          v51 = v50;

          v52 = [v51 value];

          if (v52)
          {
            v53 = [v52 value];

            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            v54 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
            if (OUTLINED_FUNCTION_24_18(v54, v55, v56, v54, v57, v58, v59, v60, v86, *(&v86 + 1), v89, *(&v89 + 1), v92, v94, v96, v98, v100, v102, v104, v106))
            {
              v100 = v110;
              v61 = [v104 identifier];
              v62 = [v61 instanceIdentifier];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v63 = [v110 string];
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v11 = v64;

              swift_isUniquelyReferenced_nonNull_native();
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

LABEL_43:
              v23 = v107;
              goto LABEL_44;
            }
          }
        }

        else
        {

          v2 = &off_2799EF000;
          v12 = v102;
        }

        v65 = v104;
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v66, v67))
        {
          OUTLINED_FUNCTION_30_7();
          v68 = swift_slowAlloc();
          OUTLINED_FUNCTION_260();
          *v68 = v86;
          *(v68 + 4) = OUTLINED_FUNCTION_8_27();
          *(v68 + 12) = 2085;
          v69 = [v65 properties];
          v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          MEMORY[0x25F89F8A0](v70, v100);

          v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          v12 = v102;
          v2 = &off_2799EF000;

          *(v68 + 14) = v11;
          _os_log_impl(&dword_25D85C000, v66, v67, "%s Not able extract 'contents' as AttributedString from properties: %{sensitive}s", v68, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
        }

        goto LABEL_43;
      }

      if (v12)
      {
        v39 = MEMORY[0x25F89FFD0](v38, v36);
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        OUTLINED_FUNCTION_0_5();
        swift_once();
        goto LABEL_3;
      }

      v41 = [v39 identifier];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v2 == 0x73746E65746E6F63 && v43 == 0xE800000000000000)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {

          goto LABEL_27;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(v110 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_27:
      ++v38;
    }
  }

  v92 = MEMORY[0x277D84F98];
LABEL_53:

  v76 = v92;

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v77, v78))
  {
    OUTLINED_FUNCTION_30_7();
    v79 = swift_slowAlloc();
    v80 = OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_45_12(v80);
    *v79 = 136315395;
    *(v79 + 4) = OUTLINED_FUNCTION_8_27();
    *(v79 + 12) = 2085;
    Dictionary.description.getter();
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v79 + 14) = v81;
    OUTLINED_FUNCTION_67_13(&dword_25D85C000, v82, v83, "%s Returning dict: %{sensitive}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_42_0();
  }

  return v76;
}

uint64_t static NoteContentManager.hydrateNoteFullContent(from:with:)(uint64_t a1, uint64_t a2)
{
  v180 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v173 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  v178 = &v171 - v11;
  v177 = type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v14 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  v176 = &v171 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12NoteDocumentVSgMd, &_s15OmniSearchTypes12NoteDocumentVSgMR);
  v20 = OUTLINED_FUNCTION_114(v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v171 - v21;
  v23 = type metadata accessor for NoteDocument();
  OUTLINED_FUNCTION_14();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  v208 = &v171 - v28;
  v200 = type metadata accessor for SearchResult(0);
  MEMORY[0x28223BE20](v200);
  v207 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_20_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_19();
  v194 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_20_15();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_20_15();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_20_15();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_19();
  v201 = v41;
  v42 = *(a1 + 16);
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v198 = v39;
    v189 = v14;
    v44 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v45 = a1 + v44;
    v204 = *(v38 + 72);
    v205 = v44;
    v195 = "parseLNQueryOutput(from:)";
    v197 = (v25 + 32);
    v174 = (v25 + 16);
    v172 = (v5 + 32);
    v196 = (v25 + 8);
    *&v40 = 136315138;
    v188 = v40;
    *&v40 = 136315394;
    v192 = v40;
    v199 = a2;
    v202 = v23;
    v46 = v201;
    v206 = v22;
    do
    {
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_3(v45, v46, v47);
      v48 = v46;
      SearchResultItem.associatedValue.getter(&v210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
      if (!swift_dynamicCast())
      {
        v77 = v43;
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v78, v79, v80, v23);
        outlined destroy of IntentApplication?(v22, &_s15OmniSearchTypes12NoteDocumentVSgMd, &_s15OmniSearchTypes12NoteDocumentVSgMR);
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v81, static Logging.answerSynthesis);
        OUTLINED_FUNCTION_0_49();
        v82 = v46;
        v83 = v198;
        _s10OmniSearch0B6ResultVWOcTm_3(v82, v198, v84);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v85, v86))
        {
          OUTLINED_FUNCTION_30_7();
          v87 = swift_slowAlloc();
          v22 = OUTLINED_FUNCTION_260();
          v209 = v22;
          *v87 = v192;
          *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          *(v87 + 12) = 2080;
          SearchResultItem.associatedValue.getter(&v210);
          String.init<A>(describing:)();
          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v83, v88);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v87 + 14) = v48;
          _os_log_impl(&dword_25D85C000, v85, v86, "%s Expected item to be of type NoteDocument, but got -> %s. It's OK, will just preserve existing note", v87, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_18();
          v23 = v202;
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_4_30();
          _s10OmniSearch0B6ResultVWOhTm_4(v83, v89);
        }

        OUTLINED_FUNCTION_0_49();
        v46 = v201;
        _s10OmniSearch0B6ResultVWOcTm_3(v201, v207, v90);
        v43 = v77;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a2 = v199;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v130 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v130, v131, v132, v77);
          v43 = v133;
        }

        OUTLINED_FUNCTION_16_24();
        if (v93)
        {
          v134 = OUTLINED_FUNCTION_22_5(v92);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v134, v135, v136, v43);
          v43 = v137;
        }

        v94 = v207;
        goto LABEL_57;
      }

      v203 = v43;
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
      (*v197)(v208, v22, v23);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v50 = CodableNSSecureCoding.wrappedValue.getter();
      v51 = CSSearchableItem.associatedAppEntityId.getter();
      v53 = v52;

      if (v53)
      {
        if (!*(a2 + 16) || (v54 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v53), (v55 & 1) == 0))
        {
          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v95 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v95, static Logging.answerSynthesis);

          v48 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v48, v22))
          {
            OUTLINED_FUNCTION_30_7();
            v96 = swift_slowAlloc();
            v210 = OUTLINED_FUNCTION_260();
            *v96 = v192;
            v97 = OUTLINED_FUNCTION_17_27();
            OUTLINED_FUNCTION_94_8(v97);
            v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v96 + 14) = v98;
            _os_log_impl(&dword_25D85C000, v48, v22, "%s Did not find %s in dict. It's OK, will just preserve existing note", v96, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_42_0();
          }

          else
          {
          }

          v23 = v202;
          OUTLINED_FUNCTION_0_49();
          _s10OmniSearch0B6ResultVWOcTm_3(v46, v194, v108);
          v43 = v203;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v138, v139, v140, v43);
            v43 = v141;
          }

          OUTLINED_FUNCTION_16_24();
          if (v93)
          {
            v142 = OUTLINED_FUNCTION_22_5(v109);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v142, v143, v144, v43);
            v43 = v145;
          }

          v110 = OUTLINED_FUNCTION_19_22();
          v111(v110);
          v94 = v194;
          goto LABEL_57;
        }

        v56 = v54;

        v57 = (*(a2 + 56) + 16 * v56);
        v22 = *v57;
        v58 = v57[1];
        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {

          v186 = WalletPass.id.getter();
          v185 = v60;
          v184 = WalletPass.title.getter();
          v183 = v61;
          v182 = NoteDocument.folderName.getter();
          v181 = v62;
          NoteDocument.creationDate.getter();
          NoteDocument.lastUsedDate.getter();
          v63 = v191;
          NoteDocument.init(id:title:contentSnippet:folderName:creationDate:lastUsedDate:)();
          v64 = v189;
          (*v174)(v189, v63, v202);
          swift_storeEnumTagMultiPayload();
          v65 = v200;
          LODWORD(v186) = *(v46 + *(v200 + 32));
          v66 = CodableNSSecureCoding.wrappedValue.getter();
          v67 = v178;
          OUTLINED_FUNCTION_92();
          v68 = v180;
          __swift_storeEnumTagSinglePayload(v69, v70, v71, v180);
          v72 = v175;
          *(v175 + v65[7]) = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_9_29(v65[10]);
          _s10OmniSearch0B6ResultVWOcTm_3(v64, v72, v73);
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          v74 = v66;
          CodableNSSecureCoding.init(wrappedValue:)();
          v75 = v179;
          outlined init with copy of SpotlightRankingItem?(v67, v179);
          if (__swift_getEnumTagSinglePayload(v75, 1, v68) == 1)
          {
            outlined destroy of IntentApplication?(v75, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_13_12();
            OUTLINED_FUNCTION_13_12();
            OUTLINED_FUNCTION_13_12();
            OUTLINED_FUNCTION_13_12();
            OUTLINED_FUNCTION_13_12();
            LOBYTE(v210) = 1;
            OUTLINED_FUNCTION_19_18();

            outlined destroy of IntentApplication?(v67, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_0_48();
            _s10OmniSearch0B6ResultVWOhTm_4(v189, v76);
          }

          else
          {

            outlined destroy of IntentApplication?(v67, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_0_48();
            _s10OmniSearch0B6ResultVWOhTm_4(v189, v120);
            v121 = *v172;
            v122 = v173;
            (*v172)(v173, v75, v68);
            v121((v72 + v65[5]), v122, v68);
          }

          *(v72 + v65[8]) = v186;
          *(v72 + v65[9]) = 1;
          outlined init with take of SearchResult(v72, v190);
          v123 = v203;
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v125 = v199;
          v46 = v201;
          v23 = v202;
          if ((v124 & 1) == 0)
          {
            v154 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v154, v155, v156, v123);
            v123 = v157;
          }

          v22 = *(v123 + 16);
          v126 = *(v123 + 24);
          v48 = (v22 + 1);
          if (v22 >= v126 >> 1)
          {
            v158 = OUTLINED_FUNCTION_22_5(v126);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v158, v159, v160, v123);
            v123 = v161;
          }

          v127 = *v196;
          (*v196)(v191, v23);
          v127(v208, v23);
          v94 = v190;
          v43 = v123;
          a2 = v125;
          goto LABEL_57;
        }

        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v112 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v112, static Logging.answerSynthesis);
        v48 = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();
        v114 = OUTLINED_FUNCTION_77_5(v113);
        v23 = v202;
        if (v114)
        {
          v22 = OUTLINED_FUNCTION_51_0();
          v115 = OUTLINED_FUNCTION_49_0();
          v210 = v115;
          *v22 = v188;
          *(v22 + 4) = OUTLINED_FUNCTION_17_27();
          _os_log_impl(&dword_25D85C000, v48, v49, "%s Fetched empty Note content. It's OK, will just preserve existing note", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v115);
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_13_18();
        }

        v43 = v203;
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v46, v187, v116);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v162, v163, v164, v43);
          v43 = v165;
        }

        OUTLINED_FUNCTION_16_24();
        if (v93)
        {
          v166 = OUTLINED_FUNCTION_22_5(v117);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v166, v167, v168, v43);
          v43 = v169;
        }

        v118 = OUTLINED_FUNCTION_19_22();
        v119(v118);
        v107 = &v211;
      }

      else
      {
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v99, static Logging.answerSynthesis);
        v48 = Logger.logObject.getter();
        v100 = static os_log_type_t.error.getter();
        v101 = OUTLINED_FUNCTION_77_5(v100);
        v23 = v202;
        if (v101)
        {
          v22 = OUTLINED_FUNCTION_51_0();
          v102 = OUTLINED_FUNCTION_49_0();
          v210 = v102;
          *v22 = v188;
          *(v22 + 4) = OUTLINED_FUNCTION_17_27();
          _os_log_impl(&dword_25D85C000, v48, v49, "%s CSItem did not have _kMDItemAppEntityInstanceIdentifier. It's OK, will just preserve existing note", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_13_18();
        }

        v43 = v203;
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_3(v46, v193, v103);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v146, v147, v148, v43);
          v43 = v149;
        }

        OUTLINED_FUNCTION_16_24();
        if (v93)
        {
          v150 = OUTLINED_FUNCTION_22_5(v104);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v150, v151, v152, v43);
          v43 = v153;
        }

        v105 = OUTLINED_FUNCTION_19_22();
        v106(v105);
        v107 = &v212;
      }

      v94 = *(v107 - 32);
LABEL_57:
      OUTLINED_FUNCTION_4_30();
      _s10OmniSearch0B6ResultVWOhTm_4(v46, v128);
      *(v43 + 16) = v48;
      v129 = v204;
      outlined init with take of SearchResult(v94, v43 + v205 + v22 * v204);
      v45 += v129;
      --v42;
      v22 = v206;
    }

    while (v42);
  }

  return v43;
}

uint64_t static NoteContentManager.hydrateTextContent(from:)(uint64_t a1)
{
  v1[17] = a1;
  v2 = type metadata accessor for SpotlightRankingItem();
  v1[18] = v2;
  OUTLINED_FUNCTION_21(v2);
  v1[19] = v3;
  v1[20] = OUTLINED_FUNCTION_199();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v1[21] = OUTLINED_FUNCTION_160();
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for SearchResultItem(0);
  v1[23] = v5;
  OUTLINED_FUNCTION_114(v5);
  v1[24] = OUTLINED_FUNCTION_199();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v1[25] = OUTLINED_FUNCTION_160();
  v1[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12NoteDocumentVSgMd, &_s15OmniSearchTypes12NoteDocumentVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v1[27] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for NoteDocument();
  v1[28] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[29] = v9;
  v1[30] = OUTLINED_FUNCTION_160();
  v1[31] = swift_task_alloc();
  v10 = type metadata accessor for SearchResult(0);
  v1[32] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[33] = v11;
  v1[34] = OUTLINED_FUNCTION_160();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12);
}

{
  if (!*(v1 + 352))
  {
    OUTLINED_FUNCTION_4_30();
    _s10OmniSearch0B6ResultVWOhTm_4(v24, v25);

LABEL_23:
    v95 = 0;
LABEL_24:

    OUTLINED_FUNCTION_62();

    return v72(v95);
  }

  SearchResultItem.associatedValue.getter((v1 + 56));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = *(v1 + 216);
    v26 = *(v1 + 224);

    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v26);

    outlined destroy of IntentApplication?(v27, &_s15OmniSearchTypes12NoteDocumentVSgMd, &_s15OmniSearchTypes12NoteDocumentVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v31 = *(v1 + 296);
    v32 = *(v1 + 272);
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v31, v32, v34);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v1 + 296);
    v39 = *(v1 + 272);
    if (v37)
    {
      OUTLINED_FUNCTION_30_7();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_260();
      *v40 = 136315394;
      OUTLINED_FUNCTION_98_2();
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v40 + 12) = 2080;
      SearchResultItem.associatedValue.getter((v1 + 96));
      String.init<A>(describing:)();
      OUTLINED_FUNCTION_11_28();
      _s10OmniSearch0B6ResultVWOhTm_4(v39, v41);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v40 + 14) = v42;
      _os_log_impl(&dword_25D85C000, v35, v36, "%s Expected item to be of type NoteDocument, but got -> %s. Will return nil and let ResultHydrator fallback to fetching via NoteContentManager using LinksServices", v40, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_11_28();
      _s10OmniSearch0B6ResultVWOhTm_4(v39, v71);
    }

    _s10OmniSearch0B6ResultVWOhTm_4(v38, v2);
    goto LABEL_23;
  }

  v89 = *(v1 + 296);
  v92 = *(v1 + 280);
  v3 = *(v1 + 248);
  v4 = *(v1 + 232);
  v86 = *(v1 + 256);
  v87 = *(v1 + 240);
  v5 = *(v1 + 216);
  v6 = *(v1 + 224);
  v88 = *(v1 + 192);
  v90 = *(v1 + 176);
  v93 = *(v1 + 168);
  v91 = *(v1 + 144);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  (*(v4 + 32))(v3, v5, v6);
  WalletPass.id.getter();
  WalletPass.title.getter();
  NoteDocument.folderName.getter();
  NoteDocument.creationDate.getter();
  NoteDocument.lastUsedDate.getter();
  NoteDocument.init(id:title:contentSnippet:folderName:creationDate:lastUsedDate:)();
  (*(v4 + 16))(v88, v87, v6);
  swift_storeEnumTagMultiPayload();
  v94 = *(v89 + v86[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v7 = CodableNSSecureCoding.wrappedValue.getter();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v91);
  *(v92 + v86[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_9_29(v86[10]);
  _s10OmniSearch0B6ResultVWOcTm_3(v88, v92, v11);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v12 = v7;
  CodableNSSecureCoding.init(wrappedValue:)();
  outlined init with copy of SpotlightRankingItem?(v90, v93);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v91);
  v14 = *(v1 + 192);
  v16 = *(v1 + 168);
  v15 = *(v1 + 176);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_179_1();
    outlined destroy of IntentApplication?(v17, v18, v19);
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_33_19();
    OUTLINED_FUNCTION_19_18();

    OUTLINED_FUNCTION_179_1();
    outlined destroy of IntentApplication?(v20, v21, v22);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v14, v23);
  }

  else
  {
    v44 = *(v1 + 152);
    v43 = *(v1 + 160);
    v45 = *(v1 + 144);

    outlined destroy of IntentApplication?(v15, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_0_48();
    _s10OmniSearch0B6ResultVWOhTm_4(v14, v46);
    v47 = *(v44 + 32);
    v47(v43, v16, v45);
    OUTLINED_FUNCTION_179_1();
    (v47)(v48, v49);
  }

  v50 = *(v1 + 280);
  v51 = *(v1 + 288);
  v52 = *(v1 + 256);
  *(v50 + *(v52 + 32)) = v94;
  *(v50 + *(v52 + 36)) = 1;
  outlined init with take of SearchResult(v50, v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v1 + 320);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v80 = OUTLINED_FUNCTION_44();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80, v81, v82, v83);
    v54 = v84;
  }

  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  if (v56 >= v55 >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1, v54);
    v95 = v85;
  }

  else
  {
    v95 = v54;
  }

  v57 = *(v1 + 328);
  v59 = *(v1 + 288);
  v58 = *(v1 + 296);
  v60 = *(v1 + 248);
  v61 = *(v1 + 224);
  v62 = (*(v1 + 360) + 32) & ~*(v1 + 360);
  v63 = *(*(v1 + 232) + 8);
  v63(*(v1 + 240), v61);
  v63(v60, v61);
  OUTLINED_FUNCTION_4_30();
  _s10OmniSearch0B6ResultVWOhTm_4(v58, v64);
  *(v95 + 16) = v56 + 1;
  outlined init with take of SearchResult(v59, v95 + v62 + v57 * v56);
  v65 = *(v1 + 304);
  v66 = *(v1 + 312) + 1;
  *(v1 + 312) = v66;
  *(v1 + 320) = v95;
  if (v66 == v65)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v67, static Logging.answerSynthesis);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v69))
    {
      v70 = OUTLINED_FUNCTION_51_0();
      v96 = OUTLINED_FUNCTION_49_0();
      *v70 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v68, v58, "%s Successful in fetching text content via GenericDataProviderManager for ALL notes", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }

    goto LABEL_24;
  }

  v74 = *(v1 + 264);
  *(v1 + 360) = *(v74 + 80);
  *(v1 + 328) = *(v74 + 72);
  OUTLINED_FUNCTION_0_49();
  _s10OmniSearch0B6ResultVWOcTm_3(v75, v76, v77);
  *(v1 + 40) = &type metadata for CSSearchableIndexDataProvider;
  *(v1 + 48) = &protocol witness table for CSSearchableIndexDataProvider;
  v78 = swift_task_alloc();
  *(v1 + 336) = v78;
  *v78 = v1;
  v79 = OUTLINED_FUNCTION_7_26(v78);

  return GenericDataProviderManager.fetchTextContent(from:)(v79);
}

uint64_t static NoteContentManager.hydrateTextContent(from:)()
{
  v1 = *(v0 + 264);
  v2 = *(*(v0 + 136) + 16);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 312) = 0;
  *(v0 + 320) = v3;
  *(v0 + 304) = v2;
  if (v2)
  {
    *(v0 + 360) = *(v1 + 80);
    *(v0 + 328) = *(v1 + 72);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_3(v4 + v5, v6, v7);
    *(v0 + 40) = &type metadata for CSSearchableIndexDataProvider;
    *(v0 + 48) = &protocol witness table for CSSearchableIndexDataProvider;
    v8 = swift_task_alloc();
    *(v0 + 336) = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_7_26(v8);

    return GenericDataProviderManager.fetchTextContent(from:)(v9);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v11, static Logging.answerSynthesis);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_51_0();
      v17 = OUTLINED_FUNCTION_49_0();
      *v14 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v12, v13, "%s Successful in fetching text content via GenericDataProviderManager for ALL notes", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_42_0();
    }

    OUTLINED_FUNCTION_26_14();

    OUTLINED_FUNCTION_62();
    v16 = MEMORY[0x277D84F90];

    return v15(v16);
  }
}

{
  OUTLINED_FUNCTION_4_30();
  _s10OmniSearch0B6ResultVWOhTm_4(v0, v1);

  OUTLINED_FUNCTION_26_14();

  OUTLINED_FUNCTION_62();

  return v2(0);
}

uint64_t static NoteContentManager.hydrateTextContent(from:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 344) = a1;
  *(v4 + 352) = a2;

  if (v2)
  {
  }

  outlined destroy of GenericDataProviderManager(v4 + 16);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5);
}

id @nonobjc LNEntityIdentifier.init(typeIdentifier:instanceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x25F89F4C0](a1);

  v8 = MEMORY[0x25F89F4C0](a3, a4);

  v9 = [v4 initWithTypeIdentifier:v7 instanceIdentifier:v8];

  return v9;
}

uint64_t OUTLINED_FUNCTION_8_27()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_9_29(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_13_18()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_17_27()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{

  return swift_dynamicCast();
}

unint64_t specialized Array.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.subscript.getter(a1, a2, a3, type metadata accessor for SearchPropertyRequest);
}

{
  return specialized Array.subscript.getter(a1, a2, a3, MEMORY[0x277CB9DA8]);
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    OUTLINED_FUNCTION_114(v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  }

LABEL_10:
  __break(1u);
  return result;
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSayAKGG_Si_AKts5NeverOTg506_sSi10g9Search0B6i48VACSiACIgynndr_Si6offset_AC7elementt_ACtSi_ACts5k195OIegnrzr_TR04_s10a8Search14c151HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27IntelligencePlatformLibrary0n4FlowB13ToolTelemetryV0br6Answerks30VztYaKFSayr64_AI7elementQ114AN0T23SythesisHydrationMetricVG7metricstGScgyAWs5c35_pGzYaKXEfU0_AWyYaKcfU_AWyYaYbKcfU_u4_AItU27AQ_AiRt_AItXEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = (&v60 - v7);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v77 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = (&v60 - v11);
  MEMORY[0x28223BE20](v12);
  v71 = (&v60 - v13);
  MEMORY[0x28223BE20](v14);
  v67 = &v60 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMR);
  MEMORY[0x28223BE20](v70);
  v64 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v62 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v61 = (&v60 - v20);
  v78 = a1;
  v21 = *(a1 + 16);
  v76 = a2;
  v22 = *(a2 + 16);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v81 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v80 = v81;
  v68 = v22;
  v69 = v21;
  if (!v23)
  {
    goto LABEL_19;
  }

  v24 = 0;
  v79 = v23;
  v63 = v9;
  do
  {
    if (v21 == v24)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    outlined init with copy of SpotlightRankingItem?(v78 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v24, v9, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if (v22 == v24)
    {
      goto LABEL_23;
    }

    v25 = *(type metadata accessor for SearchResult(0) - 8);
    v26 = v76 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24;
    v27 = *(v70 + 48);
    v28 = v64;
    outlined init with take of SearchResultItem?(v9, v64, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    _s10OmniSearch0B6ResultVWOcTm_7(v26, v28 + v27, type metadata accessor for SearchResult);
    v29 = v73;
    v30 = *(v73 + 48);
    v31 = *(v75 + 48);
    v32 = v71;
    *v71 = *v28;
    _s10OmniSearch0B6ResultVWOcTm_7(v28 + v30, v32 + v30, type metadata accessor for SearchResult);
    v33 = v72;
    outlined init with take of SearchResultItem?(v32, v72, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v34 = *v33;
    v35 = *(v29 + 48);
    v36 = v65;
    _s10OmniSearch0B6ResultVWOcTm_7(v28 + v27, &v65[v31], type metadata accessor for SearchResult);
    _s10OmniSearch0B6ResultVWOhTm_6(v33 + v35, type metadata accessor for SearchResult);
    *v36 = v34;
    outlined destroy of IntentApplication?(v28, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMR);
    v81 = v80;
    v38 = *(v80 + 16);
    v37 = *(v80 + 24);
    if (v38 >= v37 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
      v80 = v81;
    }

    ++v24;
    v39 = v80;
    *(v80 + 16) = v38 + 1;
    outlined init with take of SearchResultItem?(v36, v39 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v38, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
    v23 = v79;
    v22 = v68;
    v21 = v69;
    v9 = v63;
  }

  while (v79 != v24);
LABEL_19:
  while (v21 != v23)
  {
    if (v23 >= v21)
    {
      goto LABEL_24;
    }

    outlined init with copy of SpotlightRankingItem?(v78 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v23, v67, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if (__OFADD__(v23, 1))
    {
      goto LABEL_25;
    }

    if (v22 == v23)
    {
      outlined destroy of IntentApplication?(v67, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      return;
    }

    if (v23 >= v22)
    {
      goto LABEL_26;
    }

    v40 = *(type metadata accessor for SearchResult(0) - 8);
    v41 = v76 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v23;
    v42 = v70;
    v43 = *(v70 + 48);
    v44 = v62;
    outlined init with take of SearchResultItem?(v67, v62, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    _s10OmniSearch0B6ResultVWOcTm_7(v41, v44 + v43, type metadata accessor for SearchResult);
    v79 = v23;
    v45 = v61;
    outlined init with take of SearchResultItem?(v44, v61, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMR);
    v46 = *v45;
    v47 = v73;
    v48 = *(v73 + 48);
    v65 = *(v42 + 48);
    v49 = *(v75 + 48);
    v50 = v71;
    *v71 = v46;
    _s10OmniSearch0B6ResultVWOcTm_7(v45 + v48, v50 + v48, type metadata accessor for SearchResult);
    v51 = v50;
    v52 = v72;
    outlined init with take of SearchResultItem?(v51, v72, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v53 = v66;
    v54 = *v52;
    v55 = *(v47 + 48);
    _s10OmniSearch0B6ResultVWOcTm_7(&v65[v45], v66 + v49, type metadata accessor for SearchResult);
    _s10OmniSearch0B6ResultVWOhTm_6(v52 + v55, type metadata accessor for SearchResult);
    *v53 = v54;
    v56 = v80;
    outlined destroy of IntentApplication?(v45, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_ADtMR);
    v81 = v56;
    v58 = *(v56 + 16);
    v57 = *(v56 + 24);
    if (v58 >= v57 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1);
      v80 = v81;
    }

    v59 = v80;
    *(v80 + 16) = v58 + 1;
    outlined init with take of SearchResultItem?(v66, v59 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v58, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR);
    v23 = v79 + 1;
    v22 = v68;
    v21 = v69;
  }
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSay27IntelligencePlatformLibrary0k4FlowH13ToolTelemetryV29AnswerSythesisHydrationMetricVGG_SiAH_AklS7metricsts5NeverOTg506_sSi10g9Search0B6i3V27kl10Library0d4n3B13op3V29qrst65VSiACSayAHGIgynndro_Si6offset_AC7elementt_AHtSiAJ_AckI7metricsts5v220OIegnrzr_TR04_s10a8Search14c89HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27de10Library0n4g3B13hi53V0br6AnswerkC0VztYaKFSaySi6offset_AI7elementSayAN0T23klM78VG7metricstGScgyAWs5C63_pGzYaKXEfU0_AWyYaKcfU_SiAQ_AiruVtSiAQ_AiRt_ATtXEfU0_Tf3nnnpf_nTf1cn_nTm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for SearchResult(0);
  v13 = OUTLINED_FUNCTION_114(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v81 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
  OUTLINED_FUNCTION_14();
  v80 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  v100 = v17;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_2();
  v71 = v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_2();
  v73 = v24;
  v98 = a5;
  v99 = a6;
  v25 = OUTLINED_FUNCTION_107();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  v83 = a1;
  v30 = *(a1 + 16);
  v82 = a2;
  v31 = *(a2 + 16);
  if (v31 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = *(a2 + 16);
  }

  v103 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
  v34 = v103;
  v35 = "ptions";
  v102 = a3;
  v75 = v30;
  v74 = v31;
  if (v32)
  {
    v36 = 0;
    v96 = v32;
    while (v30 != v36)
    {
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_113_10();
      result = outlined init with copy of SpotlightRankingItem?(v37, v38, a3, a4);
      if (v31 == v36)
      {
        goto LABEL_23;
      }

      v89 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric();
      OUTLINED_FUNCTION_19_14();
      v40 = v39;
      v92 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v42 = v82 + v92 + *(v41 + 72) * v36;
      v43 = *(v76 + 48);
      outlined init with take of SearchResultItem?(v30, v72, v102, a4);
      v44 = *(v40 + 16);
      v44(&v72[v43], v42, v89);
      v45 = *(v79 + 48);
      v84 = *(v80 + 48);
      v94 = *(v80 + 64);
      *v77 = *v72;
      _s10OmniSearch0B6ResultVWOcTm_7(&v72[v45], v77 + v45, type metadata accessor for SearchResult);
      outlined init with copy of SpotlightRankingItem?(v77, v78, v102, a4);
      v86 = *v78;
      outlined init with take of SearchResult(v78 + *(v79 + 48), v81);
      _s10OmniSearch0B6ResultVWOcTm_7(v81, v100 + v84, type metadata accessor for SearchResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricVGMR);
      a3 = v102;
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_25DBC8180;
      v44((v46 + v92), &v72[v43], v89);
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v81, v47);
      outlined destroy of IntentApplication?(v77, v102, a4);
      *v100 = v86;
      *(v100 + v94) = v46;
      outlined destroy of IntentApplication?(v72, v98, v99);
      v49 = *(v103 + 16);
      v48 = *(v103 + 24);
      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
      }

      ++v36;
      *(v103 + 16) = v49 + 1;
      OUTLINED_FUNCTION_79();
      result = outlined init with take of SearchResultItem?(v100, v103 + v50 + *(v51 + 72) * v49, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v32 = v96;
      v30 = v75;
      v31 = v74;
      v35 = "NNSStringCompareOptions" + 17;
      if (v96 == v36)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_11:
    v85 = *(v35 + 24);
    while (v30 != v32)
    {
      if (v32 >= v30)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_79();
      result = outlined init with copy of SpotlightRankingItem?(v83 + v52 + *(v53 + 72) * v32, v73, a3, a4);
      if (__OFADD__(v32, 1))
      {
        goto LABEL_25;
      }

      if (v31 == v32)
      {
        outlined destroy of IntentApplication?(v73, a3, a4);
        return v34;
      }

      if (v32 >= v31)
      {
        goto LABEL_26;
      }

      v91 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric();
      OUTLINED_FUNCTION_19_14();
      v55 = v54;
      v95 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v97 = v32;
      v57 = v82 + v95 + *(v56 + 72) * v32;
      v101 = v34;
      v58 = *(v76 + 48);
      outlined init with take of SearchResultItem?(v73, v70, a3, a4);
      v90 = *(v55 + 16);
      v90(v70 + v58, v57, v91);
      OUTLINED_FUNCTION_113_10();
      outlined init with take of SearchResultItem?(v59, v60, v98, v99);
      v61 = *(v79 + 48);
      v88 = *(v76 + 48);
      v62 = *(v80 + 48);
      v93 = *(v80 + 64);
      *v77 = *v91;
      _s10OmniSearch0B6ResultVWOcTm_7(v91 + v61, v77 + v61, type metadata accessor for SearchResult);
      outlined init with copy of SpotlightRankingItem?(v77, v78, v102, a4);
      v87 = *v78;
      outlined init with take of SearchResult(v78 + *(v79 + 48), v81);
      v63 = v71 + v62;
      v34 = v101;
      _s10OmniSearch0B6ResultVWOcTm_7(v81, v63, type metadata accessor for SearchResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV29AnswerSythesisHydrationMetricVGMR);
      v64 = swift_allocObject();
      *(v64 + 16) = v85;
      v90(v64 + v95, v91 + v88, v91);
      a3 = v102;
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v81, v65);
      outlined destroy of IntentApplication?(v77, v102, a4);
      *v71 = v87;
      *(v71 + v93) = v64;
      outlined destroy of IntentApplication?(v91, v98, v99);
      v67 = *(v101 + 16);
      v66 = *(v101 + 24);
      if (v67 >= v66 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1);
        v34 = v101;
      }

      *(v34 + 16) = v67 + 1;
      OUTLINED_FUNCTION_79();
      result = outlined init with take of SearchResultItem?(v71, v34 + v68 + *(v69 + 72) * v67, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v32 = v97 + 1;
      v30 = v75;
      v31 = v74;
    }

    return v34;
  }

  return result;
}

uint64_t ResultHydrator.__allocating_init()()
{
  v1 = v0;
  type metadata accessor for EmailContentManager();
  v2 = swift_allocObject();
  EmailContentManager.init()(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19[0], v19[1], v19[2], v20, v21, v22, v23, v24, v25, v26, v27);
  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for ContactContentManager();
  v13 = swift_allocObject();
  v13[5] = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v13[6] = &protocol witness table for CNContactStore;
  v13[2] = v12;
  v14 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v15 = static NSUserDefaults.answerSynthesisLimit.getter(v14);
  type metadata accessor for FeatureFlagService();
  v16 = swift_allocObject();
  v20 = type metadata accessor for ItemFetcher();
  v21 = &protocol witness table for ItemFetcher;
  v19[0] = swift_allocObject();
  return (*(v1 + 192))(v11, v13, v15, v16, v19);
}

uint64_t one-time initialization function for perSourceTimeout(uint64_t a1)
{
  result = AFIsInternalInstall();
  v2 = 5.0;
  if (result)
  {
    v2 = 30.0;
  }

  static ResultHydrator.perSourceTimeout = *&v2;
  return result;
}

uint64_t one-time initialization function for eventTimeout(uint64_t a1)
{
  result = AFIsInternalInstall();
  v2 = 2.0;
  if (result)
  {
    v2 = 30.0;
  }

  static ResultHydrator.eventTimeout = *&v2;
  return result;
}

uint64_t ResultHydrator.messageBodyManager.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = outlined init with copy of SpotlightRankingItem?(v1 + 40, &v6, &_s10OmniSearch18MessageBodyManagerVSgMd, &_s10OmniSearch18MessageBodyManagerVSgMR);
  if (*(&v7 + 1))
  {
    v4 = v7;
    *a1 = v6;
    *(a1 + 16) = v4;
    *(a1 + 32) = v8;
  }

  else
  {
    outlined destroy of IntentApplication?(&v6, &_s10OmniSearch18MessageBodyManagerVSgMd, &_s10OmniSearch18MessageBodyManagerVSgMR);
    *(a1 + 24) = &type metadata for IMSPIMessageQueryHelper;
    *(a1 + 32) = &protocol witness table for IMSPIMessageQueryHelper;
    v5 = outlined init with copy of MessageBodyManager(a1, &v6);
    OUTLINED_FUNCTION_124_10(v5);
    outlined assign with take of MessageBodyManager?(&v6, v1 + 40);
    return swift_endAccess();
  }

  return result;
}

uint64_t ResultHydrator.messageBodyManager.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_124_10(a1);
  outlined assign with take of MessageBodyManager?(v4, v1 + 40);
  return swift_endAccess();
}

void (*ResultHydrator.messageBodyManager.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  ResultHydrator.messageBodyManager.getter(v3);
  return ResultHydrator.messageBodyManager.modify;
}

void ResultHydrator.messageBodyManager.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of MessageBodyManager(*a1, v2 + 40);
    ResultHydrator.messageBodyManager.setter(v2 + 40);
    outlined destroy of MessageBodyManager(v2);
  }

  else
  {
    ResultHydrator.messageBodyManager.setter(*a1);
  }

  free(v2);
}

id ResultHydrator.calendarManager.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*ResultHydrator.calendarManager.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ResultHydrator.calendarManager.getter();
  return ResultHydrator.calendarManager.modify;
}

void ResultHydrator.calendarManager.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
}

uint64_t ResultHydrator.__allocating_init(emailContentManager:contactContentManager:hydratedResultLimit:featureFlagService:itemFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  ResultHydrator.init(emailContentManager:contactContentManager:hydratedResultLimit:featureFlagService:itemFetcher:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ResultHydrator.init(emailContentManager:contactContentManager:hydratedResultLimit:featureFlagService:itemFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(v5 + 136) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a3;
  *(v5 + 88) = a4;
  outlined init with take of ResponseOverrideMatcherProtocol(a5, v5 + 96);
  return v5;
}

uint64_t key path setter for ResultHydrator.hydrationFunctions : ResultHydrator(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 208);

  return v2(v3);
}

uint64_t ResultHydrator.hydrationFunctions.getter()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E9ResultKeyO_SayAC0eF0VGAH_SSSgtYaKctGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E9ResultKeyO_SayAC0eF0VGAH_SSSgtYaKctGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBDF2A0;
    OUTLINED_FUNCTION_131();
    v3 = swift_allocObject();
    *(v3 + 16) = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;
    *(v3 + 24) = v0;
    *(inited + 32) = 0;
    *(inited + 40) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error);
    *(inited + 48) = v3;
    OUTLINED_FUNCTION_131();
    v4 = swift_allocObject();
    *(v4 + 16) = &async function pointer to partial apply for implicit closure #4 in implicit closure #3 in ResultHydrator.hydrationFunctions.getter;
    *(v4 + 24) = v0;
    *(inited + 56) = 3;
    *(inited + 64) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 72) = v4;
    OUTLINED_FUNCTION_131();
    v5 = swift_allocObject();
    *(v5 + 16) = &async function pointer to partial apply for implicit closure #6 in implicit closure #5 in ResultHydrator.hydrationFunctions.getter;
    *(v5 + 24) = v0;
    *(inited + 80) = 1;
    *(inited + 88) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 96) = v5;
    OUTLINED_FUNCTION_131();
    v6 = swift_allocObject();
    *(v6 + 16) = &async function pointer to partial apply for implicit closure #8 in implicit closure #7 in ResultHydrator.hydrationFunctions.getter;
    *(v6 + 24) = v0;
    *(inited + 104) = 5;
    *(inited + 112) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 120) = v6;
    OUTLINED_FUNCTION_131();
    v7 = swift_allocObject();
    *(v7 + 16) = &async function pointer to partial apply for implicit closure #10 in implicit closure #9 in ResultHydrator.hydrationFunctions.getter;
    *(v7 + 24) = v0;
    *(inited + 128) = 15;
    *(inited + 136) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 144) = v7;
    OUTLINED_FUNCTION_131();
    v8 = swift_allocObject();
    *(v8 + 16) = &async function pointer to partial apply for implicit closure #12 in implicit closure #11 in ResultHydrator.hydrationFunctions.getter;
    *(v8 + 24) = v0;
    *(inited + 152) = 12;
    *(inited + 160) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 168) = v8;
    OUTLINED_FUNCTION_131();
    v9 = swift_allocObject();
    *(v9 + 16) = &async function pointer to partial apply for implicit closure #14 in implicit closure #13 in ResultHydrator.hydrationFunctions.getter;
    *(v9 + 24) = v0;
    *(inited + 176) = 22;
    *(inited + 184) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 192) = v9;
    OUTLINED_FUNCTION_131();
    v10 = swift_allocObject();
    *(v10 + 16) = &async function pointer to partial apply for implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter;
    *(v10 + 24) = v0;
    *(inited + 200) = 17;
    *(inited + 208) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 216) = v10;
    OUTLINED_FUNCTION_131();
    v11 = swift_allocObject();
    *(v11 + 16) = &async function pointer to partial apply for implicit closure #18 in implicit closure #17 in ResultHydrator.hydrationFunctions.getter;
    *(v11 + 24) = v0;
    *(inited + 224) = 16;
    *(inited + 232) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 240) = v11;
    OUTLINED_FUNCTION_131();
    v12 = swift_allocObject();
    *(v12 + 16) = &async function pointer to partial apply for implicit closure #20 in implicit closure #19 in ResultHydrator.hydrationFunctions.getter;
    *(v12 + 24) = v0;
    *(inited + 248) = 18;
    *(inited + 256) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 264) = v12;
    OUTLINED_FUNCTION_131();
    v13 = swift_allocObject();
    *(v13 + 16) = &async function pointer to partial apply for implicit closure #22 in implicit closure #21 in ResultHydrator.hydrationFunctions.getter;
    *(v13 + 24) = v0;
    *(inited + 272) = 28;
    *(inited + 280) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 288) = v13;
    OUTLINED_FUNCTION_131();
    v14 = swift_allocObject();
    *(v14 + 16) = &async function pointer to partial apply for implicit closure #24 in implicit closure #23 in ResultHydrator.hydrationFunctions.getter;
    *(v14 + 24) = v0;
    *(inited + 296) = 25;
    *(inited + 304) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 312) = v14;
    OUTLINED_FUNCTION_131();
    v15 = swift_allocObject();
    *(v15 + 16) = &async function pointer to partial apply for implicit closure #26 in implicit closure #25 in ResultHydrator.hydrationFunctions.getter;
    *(v15 + 24) = v0;
    *(inited + 320) = 24;
    *(inited + 328) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 336) = v15;
    OUTLINED_FUNCTION_131();
    v16 = swift_allocObject();
    *(v16 + 16) = &async function pointer to partial apply for implicit closure #28 in implicit closure #27 in ResultHydrator.hydrationFunctions.getter;
    *(v16 + 24) = v0;
    *(inited + 344) = 26;
    *(inited + 352) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 360) = v16;
    OUTLINED_FUNCTION_131();
    v17 = swift_allocObject();
    *(v17 + 16) = &async function pointer to partial apply for implicit closure #30 in implicit closure #29 in ResultHydrator.hydrationFunctions.getter;
    *(v17 + 24) = v0;
    *(inited + 368) = 27;
    *(inited + 376) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 384) = v17;
    OUTLINED_FUNCTION_131();
    v18 = swift_allocObject();
    *(v18 + 16) = &async function pointer to partial apply for implicit closure #32 in implicit closure #31 in ResultHydrator.hydrationFunctions.getter;
    *(v18 + 24) = v0;
    *(inited + 392) = 2;
    *(inited + 400) = &thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)partial apply;
    *(inited + 408) = v18;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGAD_SSSgtYaKcMd, &_sSay10OmniSearch0B6ResultVGAD_SSSgtYaKcMR);
    lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
    v1 = Dictionary.init(dictionaryLiteral:)();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForMailResults(_:locale:)();
}

uint64_t thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  *(v4 + 16) = a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error);

  return v10(v5, v6, v7);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t implicit closure #4 in implicit closure #3 in ResultHydrator.hydrationFunctions.getter(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForPhotosResults(_:locale:)();
}

uint64_t implicit closure #6 in implicit closure #5 in ResultHydrator.hydrationFunctions.getter(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForMessagesResults(_:locale:)();
}

uint64_t implicit closure #8 in implicit closure #7 in ResultHydrator.hydrationFunctions.getter(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForNotesResults(_:locale:)();
}

uint64_t implicit closure #10 in implicit closure #9 in ResultHydrator.hydrationFunctions.getter(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForContactsResults(_:locale:)();
}

uint64_t implicit closure #12 in implicit closure #11 in ResultHydrator.hydrationFunctions.getter(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForFileResults(_:locale:)();
}

uint64_t implicit closure #14 in implicit closure #13 in ResultHydrator.hydrationFunctions.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = protocol witness for AnswerResolvable.extractInfo(query:results:assistantLocale:) in conformance AnswerResolver;

  return ResultHydrator.fetchFullContentForEventsResults(_:locale:)();
}

uint64_t implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForEventsResults(_:locale:)();
}

uint64_t implicit closure #32 in implicit closure #31 in ResultHydrator.hydrationFunctions.getter(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return ResultHydrator.fetchFullContentForCalendarResults(_:locale:)();
}

uint64_t (*ResultHydrator.hydrationFunctions.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = ResultHydrator.hydrationFunctions.getter();
  return ResultHydrator.hydrationFunctions.modify;
}

uint64_t ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_48();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[26] = v5;
  v1[31] = *v0;
  v6 = type metadata accessor for TimeoutError();
  v1[32] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[33] = v7;
  v1[34] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v8);
  v1[35] = v9;
  v1[36] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
  v1[37] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[38] = v11;
  v1[39] = OUTLINED_FUNCTION_160();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v1[43] = v12;
  OUTLINED_FUNCTION_21(v12);
  v1[44] = v13;
  v1[45] = OUTLINED_FUNCTION_160();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v14 = type metadata accessor for OSSignpostID();
  v1[48] = v14;
  OUTLINED_FUNCTION_21(v14);
  v1[49] = v15;
  v1[50] = OUTLINED_FUNCTION_160();
  v1[51] = swift_task_alloc();
  v16 = type metadata accessor for Date();
  v1[52] = v16;
  OUTLINED_FUNCTION_21(v16);
  v1[53] = v17;
  v1[54] = OUTLINED_FUNCTION_199();
  v18 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v18);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 480) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v4);
}

{
  v86 = v0;
  v1 = v0[21];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v75 = v1;
  if (v2)
  {
    v78 = v0[43];
    v4 = v0[38];
    v77 = v0[37];
    v85[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v85[0];
    OUTLINED_FUNCTION_79();
    v6 = v1 + v5;
    v76 = *(v4 + 72);
    do
    {
      v81 = v2;
      v7 = v0[47];
      v8 = v0[41];
      v9 = v0[42];
      v10 = v0[40];
      outlined init with copy of SpotlightRankingItem?(v6, v9, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v80 = *(v78 + 48);
      v11 = OUTLINED_FUNCTION_107();
      outlined init with copy of SpotlightRankingItem?(v11, v12, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v13 = *v8;
      v14 = *(v77 + 48);

      *v7 = v13;
      outlined init with take of SearchResultItem?(v9, v10, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v15 = *(v77 + 48);

      outlined init with take of SearchResult(v10 + v15, v7 + v80);
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v8 + v14, v16);
      v85[0] = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        v22 = OUTLINED_FUNCTION_26_3(v17);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v18 + 1, 1);
        v3 = v85[0];
      }

      v0 = v79;
      *(v3 + 16) = v18 + 1;
      OUTLINED_FUNCTION_79();
      outlined init with take of SearchResultItem?(v21, v3 + v19 + *(v20 + 72) * v18, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v6 += v76;
      --v2;
    }

    while (v81 != 1);
  }

  v23 = v0[60];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v24 = OUTLINED_FUNCTION_179_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  v0[23] = v3;
  lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: SearchResult)] and conformance [A], &_sSaySi6offset_10OmniSearch0C6ResultV7elementtGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementtGMR, MEMORY[0x277D83990]);
  static RangeReplaceableCollection.+ infix<A>(_:_:)();
  v85[0] = v0[22];

  specialized MutableCollection<>.sort(by:)(v85);
  if (v23)
  {
  }

  v27 = v85[0];
  v28 = *(v85[0] + 16);
  if (v28)
  {
    v29 = v79[44];
    v83 = v79[43];
    v30 = v79[35];
    v85[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v31 = v85[0];
    OUTLINED_FUNCTION_79();
    v33 = v27 + v32;
    v82 = *(v29 + 72);
    v0 = v79;
    do
    {
      v34 = v79[45];
      v35 = v79[36];
      outlined init with copy of SpotlightRankingItem?(v33, v79[46], &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v36 = OUTLINED_FUNCTION_107();
      outlined init with take of SearchResultItem?(v36, v37, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      outlined init with take of SearchResult(v34 + *(v83 + 48), v35);
      v85[0] = v31;
      v39 = *(v31 + 16);
      v38 = *(v31 + 24);
      if (v39 >= v38 >> 1)
      {
        v42 = OUTLINED_FUNCTION_26_3(v38);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42, v39 + 1, 1);
        v31 = v85[0];
      }

      *(v31 + 16) = v39 + 1;
      OUTLINED_FUNCTION_79();
      outlined init with take of SearchResult(v41, v31 + v40 + *(v30 + 72) * v39);
      v33 += v82;
      --v28;
    }

    while (v28);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v0[61] = v31;
  v43 = *(v75 + 16);
  if (v43)
  {
    v45 = v0[37];
    v44 = v0[38];
    v46 = v75 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v84 = *(v44 + 72);
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      v48 = v0[42];
      v49 = v0[39];
      outlined init with copy of SpotlightRankingItem?(v46, v49, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      outlined init with take of SearchResultItem?(v49, v48, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
      v50 = *(v48 + *(v45 + 64));
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v48 + v51, v52);
      v53 = *(v50 + 16);
      v54 = *(v47 + 16);
      v55 = v54 + v53;
      if (__OFADD__(v54, v53))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v55 > *(v47 + 24) >> 1)
      {
        if (v54 <= v55)
        {
          v57 = v54 + v53;
        }

        else
        {
          v57 = v54;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v57, 1, v47);
        v47 = v58;
      }

      if (*(v50 + 16))
      {
        v0 = ((*(v47 + 24) >> 1) - *(v47 + 16));
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric();
        if (v0 < v53)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        v0 = v79;
        if (v53)
        {
          v59 = *(v47 + 16);
          v60 = __OFADD__(v59, v53);
          v61 = v59 + v53;
          if (v60)
          {
            goto LABEL_45;
          }

          *(v47 + 16) = v61;
        }
      }

      else
      {

        if (v53)
        {
          goto LABEL_43;
        }
      }

      v46 += v84;
      if (!--v43)
      {

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
LABEL_35:
    specialized Array.append<A>(contentsOf:)(v47);
    v62 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
    v63 = OUTLINED_FUNCTION_45_4();
    if (__swift_getEnumTagSinglePayload(v63, v64, v65))
    {
    }

    else
    {
      IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.answerSynthesisHydrationMetrics.setter();
    }

    v62(v0 + 12, 0);
    if (one-time initialization token for eventTimeout == -1)
    {
      goto LABEL_39;
    }
  }

  swift_once();
LABEL_39:
  v66 = v0;
  v69 = v0 + 27;
  v68 = v0[27];
  v67 = v69[1];
  v70 = static ResultHydrator.eventTimeout;
  v71 = swift_allocObject();
  v66[62] = v71;
  v71[2] = v31;
  v71[3] = v68;
  v71[4] = v67;

  v72 = swift_task_alloc();
  v66[63] = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  *v72 = v66;
  v72[1] = ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
  v74.n128_u64[0] = v70;

  return MEMORY[0x2821C8618](v66 + 24, &async function pointer to partial apply for closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:), v71, v73, v74);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 512) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = ResultHydrator.runDataDetectorsOnResults(_:locale:)(*(v0 + 192), *(v0 + 216), *(v0 + 224));

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_133();
  v3 = (*(v2 + 312))();
  v4 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  v5 = OUTLINED_FUNCTION_45_4();
  result = __swift_getEnumTagSinglePayload(v5, v6, v7);
  if (!result)
  {
    if ((v3 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    MEMORY[0x25F89E5F0](v3);
  }

  v4(v0 + 128, 0);
  v10 = *(v0 + 432);
  v9 = *(v0 + 440);
  v12 = *(v0 + 416);
  v11 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v9, "ResultHydrator.fetchFullContent");

  (*(v11 + 8))(v10, v12);

  OUTLINED_FUNCTION_62();

  return v13(v1);
}

{
  v1 = *(v0 + 512);

  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v4))
    {
      v5 = OUTLINED_FUNCTION_51_0();
      v27 = OUTLINED_FUNCTION_49_0();
      *v5 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_115_8();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_52_16();
    }

    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    v26 = ResultHydrator.runDataDetectorsOnResults(_:locale:)(*(v0 + 488), *(v0 + 216), *(v0 + 224));

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_133();
    v12 = (*(v11 + 312))();
    v13 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
    v14 = OUTLINED_FUNCTION_45_4();
    result = __swift_getEnumTagSinglePayload(v14, v15, v16);
    if (!result)
    {
      if ((v12 & 0x80000000) != 0)
      {
        __break(1u);
        return result;
      }

      MEMORY[0x25F89E5F0](v12);
    }

    v13(v0 + 128, 0);
    v18 = *(v0 + 432);
    v19 = *(v0 + 440);
    v20 = *(v0 + 416);
    v21 = *(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v19, "ResultHydrator.fetchFullContent");

    (*(v21 + 8))(v18, v20);

    OUTLINED_FUNCTION_62();

    return v22(v26);
  }

  else
  {
    v23 = *(v0 + 440);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v23, "ResultHydrator.fetchFullContent");

    OUTLINED_FUNCTION_62_12();
    (*(v24 + 8))(v0 + 16);

    OUTLINED_FUNCTION_127();

    return v25();
  }
}

uint64_t ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1)
{
  Date.init()();
  static Task<>.checkCancellation()();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = OUTLINED_FUNCTION_172();
    *v5 = 0;
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v6, "ResultHydrator.fetchFullContent", "", v5, 2u);
    OUTLINED_FUNCTION_72_9();
  }

  v7 = *(v1 + 408);
  v8 = *(v1 + 384);

  v9 = OUTLINED_FUNCTION_59_12();
  v10(v9, v7, v8);
  v11 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v11);
  OUTLINED_FUNCTION_45_4();
  *(v1 + 440) = OSSignpostIntervalState.init(id:isOpen:)();
  v12 = OUTLINED_FUNCTION_64_0();
  v13(v12);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logging.answerSynthesis);
  *(v1 + 448) = v15;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = OUTLINED_FUNCTION_16_11(v17);
  v19 = *(v1 + 240);
  if (v18)
  {
    v20 = OUTLINED_FUNCTION_51_0();
    *v20 = 134217984;
    *(v20 + 4) = *(v19 + 16);

    _os_log_impl(&dword_25D85C000, v16, v15, "ResultHydrator: Fetching full content for first %ld personal results...", v20, 0xCu);
    OUTLINED_FUNCTION_72_9();
  }

  else
  {
  }

  v21 = *(v1 + 240);
  v22 = *(v1 + 248);
  v39 = *(v1 + 216);
  OUTLINED_FUNCTION_133();
  (*(v23 + 248))(v1 + 16, v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  OUTLINED_FUNCTION_19_14();
  v25 = v24;
  OUTLINED_FUNCTION_199();
  (*(v25 + 16))();
  lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
  v26 = Dictionary.init<A>(grouping:by:)();
  *(v1 + 456) = v26;

  *(v1 + 160) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
  v27 = swift_task_alloc();
  *(v1 + 464) = v27;
  *(v27 + 16) = v26;
  *(v27 + 24) = v21;
  *(v27 + 32) = v39;
  *(v27 + 48) = v22;
  v28 = swift_task_alloc();
  *(v1 + 472) = v28;
  *v28 = v1;
  v28[1] = ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
  OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_15_6();

  return MEMORY[0x282200740](v29, v30, v31, v32, v33, v34, v35, v36);
}

void ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  v2 = v1[55];
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v2, "ResultHydrator.fetchFullContent");

  OUTLINED_FUNCTION_62_12();
  (*(v3 + 8))(v0);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X1, X16 }
}

uint64_t closure #1 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)@<X0>(char *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  outlined init with copy of SpotlightRankingItem?(a2, v10 - v6, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v8 = *(v5 + 56);
  SearchResultItem.type.getter(a1);
  return _s10OmniSearch0B6ResultVWOhTm_6(&v7[v8], type metadata accessor for SearchResult);
}

uint64_t closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMd, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMR);
  v7[19] = v8;
  v7[20] = *(v8 - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:));
}

uint64_t closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  v40 = (v0 + 16);
  v1 = *(v0 + 96);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  v46 = v0;
  v42 = v1 + 64;
  v43 = v1;
  v41 = v6;
  while (v5)
  {
LABEL_9:
    v10 = *(*(v1 + 48) + (__clz(__rbit64(v5)) | (v8 << 6)));
    if (*(v1 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v12 & 1) != 0))
    {
      v13 = *(*(v1 + 56) + 8 * v11);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v5 &= v5 - 1;
    if (*(v13 + 16))
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v14, static Logging.answerSynthesis);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      v45 = v13;
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        swift_slowAlloc();
        *v17 = 136315907;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v17 + 12) = 2048;
        *(v17 + 14) = *(v13 + 16);

        *(v17 + 22) = 2080;
        *(v0 + 200) = v10;
        lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
        dispatch thunk of CustomStringConvertible.description.getter();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v17 + 24) = v18;
        *(v17 + 32) = 2085;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        MEMORY[0x25F89F8A0](v13, v19);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v17 + 34) = v20;
        v0 = v46;
        _os_log_impl(&dword_25D85C000, v15, v16, "%s calling hydrator for %ld %s result(s): %{sensitive}s", v17, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37_0();
      }

      else
      {
      }

      v22 = *(v0 + 136);
      v21 = *(v0 + 144);
      v23 = *(v0 + 128);
      v44 = *(v0 + 112);
      v24 = *(v46 + 104);
      v25 = type metadata accessor for TaskPriority();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = v24;
      *(v29 + 40) = v10;
      *(v29 + 48) = v45;
      *(v29 + 56) = v44;
      *(v29 + 72) = v23;
      outlined init with copy of SpotlightRankingItem?(v21, v22, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v23) = __swift_getEnumTagSinglePayload(v22, 1, v25);
      v0 = v46;

      if (v23 == 1)
      {
        outlined destroy of IntentApplication?(*(v46 + 136), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        v30 = OUTLINED_FUNCTION_107();
        v31(v30);
      }

      v1 = v43;
      v32 = *(v29 + 16);
      if (v32)
      {
        v33 = *(v29 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = v32;
        dispatch thunk of Actor.unownedExecutor.getter();
        OUTLINED_FUNCTION_102_5();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0;
        v33 = 0;
      }

      v35 = **(v46 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
      v36 = (v33 | v34);
      if (v33 | v34)
      {
        v36 = v40;
        *v40 = 0;
        v40[1] = 0;
        *(v46 + 32) = v34;
        *(v46 + 40) = v33;
      }

      v2 = v42;
      v37 = *(v46 + 144);
      *(v46 + 48) = 1;
      *(v46 + 56) = v36;
      *(v46 + 64) = v35;
      swift_task_create();

      v7 = outlined destroy of IntentApplication?(v37, &_sScPSgMd, &_sScPSgMR);
      v6 = v41;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](v7);
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v0 + 176) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_58_8(&lazy protocol witness table cache variable for type ThrowingTaskGroup<[(offset: Int, element: SearchResult, metrics: [IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric])], Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMd, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMR);
  v38 = swift_task_alloc();
  *(v0 + 184) = v38;
  *v38 = v0;
  OUTLINED_FUNCTION_44_18(v38);
  v7 = v0 + 72;

  return MEMORY[0x282200308](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v3[24] = v0;

  if (v0)
  {
    (*(v3[20] + 8))(v3[21], v3[19]);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v2 = v0[9];
  v3 = v0[22];
  if (v2)
  {
    v4 = *(v2 + 16);
    v5 = *(v3 + 16);
    if (__OFADD__(v5, v4))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = v0[22];
      if (!isUniquelyReferenced_nonNull_native || v5 + v4 > *(v7 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native);
        v7 = v8;
      }

      if (*(v2 + 16))
      {
        v9 = (*(v7 + 24) >> 1) - *(v7 + 16);
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMd, &_sSi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstMR);
        if (v9 >= v4)
        {
          swift_arrayInitWithCopy();

          if (!v4)
          {
            goto LABEL_15;
          }

          v10 = *(v7 + 16);
          v11 = __OFADD__(v10, v4);
          v12 = v10 + v4;
          if (!v11)
          {
            *(v7 + 16) = v12;
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return MEMORY[0x282200308](v1);
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (!v4)
      {
LABEL_15:
        v0[22] = v7;
        OUTLINED_FUNCTION_58_8(&lazy protocol witness table cache variable for type ThrowingTaskGroup<[(offset: Int, element: SearchResult, metrics: [IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric])], Error>.Iterator and conformance ThrowingTaskGroup<A, B>.Iterator, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMd, &_sScg8IteratorVySaySi6offset_10OmniSearch0D6ResultV7elementSay27IntelligencePlatformLibrary0g4FlowD13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGs5Error_p_GMR);
        v23 = swift_task_alloc();
        v0[23] = v23;
        *v23 = v0;
        OUTLINED_FUNCTION_44_18(v23);
        OUTLINED_FUNCTION_204();

        return MEMORY[0x282200308](v1);
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v13 = v0[10];
  (*(v0[20] + 8))(v0[21], v0[19]);
  *v13 = v3;

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 113) = a5;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for TimeoutError();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:));
}

uint64_t closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for perSourceTimeout != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 113);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = static ResultHydrator.perSourceTimeout;
  v7 = swift_allocObject();
  *(v0 + 88) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementSay27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVG7metricstGMR);
  *v8 = v0;
  v8[1] = closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
  v10 = *(v0 + 24);
  v11.n128_u64[0] = v6;

  return MEMORY[0x2821C8618](v10, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:), v7, v9, v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_127();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 104);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v3, static Logging.answerSynthesis);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 113);
      v7 = OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_260();
      *v7 = 136315394;
      OUTLINED_FUNCTION_98_2();
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v7 + 12) = 2080;
      *(v0 + 112) = v6;
      lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
      dispatch thunk of CustomStringConvertible.description.getter();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v7 + 14) = v8;
      _os_log_impl(&dword_25D85C000, v4, v5, "%s Timeout while attempting to hydrate results with type: %s", v7, 0x16u);
      OUTLINED_FUNCTION_109_10();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    v9 = *(v0 + 24);

    v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSay27IntelligencePlatformLibrary0k4FlowH13ToolTelemetryV29AnswerSythesisHydrationMetricVGG_SiAH_AklS7metricsts5NeverOTg506_sSi10g9Search0B6i3V27kl10Library0d4n3B13op3V29qrst65VSiACSayAHGIgynndro_Si6offset_AC7elementt_AHtSiAJ_AckI7metricsts5v220OIegnrzr_TR04_s10a8Search14c89HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27de10Library0n4g3B13hi53V0br6AnswerkC0VztYaKFSaySi6offset_AI7elementSayAN0T23klM78VG7metricstGScgyAWs5C63_pGzYaKXEfU0_AWyYaKcfU_SiAQ_AiruVtSiAQ_AiRt_ATtXEfU0_Tf3nnnpf_nTf1cn_nTm(v10, MEMORY[0x277D84F90], &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR, &_sSi6offset_10OmniSearch0C6ResultV7elementt_27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementt_27IntelligencePlatformLibrary0f4FlowC13ToolTelemetryV29AnswerSythesisHydrationMetricVtMR);

    *v9 = v11;
    v12 = OUTLINED_FUNCTION_107();
    v13(v12);

    OUTLINED_FUNCTION_127();
  }

  else
  {

    OUTLINED_FUNCTION_127();
  }

  return v14();
}

uint64_t closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 225) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  *(v6 + 56) = swift_task_alloc();
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v9 = type metadata accessor for SearchResult(0);
  *(v6 + 128) = v9;
  *(v6 + 136) = *(v9 - 8);
  *(v6 + 144) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v6 + 152) = v10;
  *(v6 + 160) = *(v10 - 8);
  *(v6 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:));
}

uint64_t closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_133();
  v3 = *(v0 + 225);
  v4 = (*(v2 + 200))();
  v5 = specialized Dictionary.subscript.getter(v3, v4);
  v7 = v6;

  if (v5)
  {
    OUTLINED_FUNCTION_131();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    v9 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v0 + 176) = v9;
  *(v0 + 184) = v8;
  v10 = OUTLINED_FUNCTION_99_11();
  if ((v11(v10) & 1) == 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v28, static Logging.answerSynthesis);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 225);
      OUTLINED_FUNCTION_51_0();
      v44 = OUTLINED_FUNCTION_163();
      *v1 = 136315138;
      *(v0 + 224) = v31;
      lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
      dispatch thunk of CustomStringConvertible.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v1 + 4) = v32;
      OUTLINED_FUNCTION_126_10(&dword_25D85C000, v29, v30, "We did not get a valid hydration functions for type: %s and return an empty array.", v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_33_0();
    }

    v33 = OUTLINED_FUNCTION_99_11();
    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v33, v34);
    **(v0 + 16) = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X1, X16 }
  }

  result = Date.init()();
  if (v5)
  {
    v13 = *(v0 + 32);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v0 + 136);
      v16 = *(v0 + 104);
      v42 = *(v0 + 96);
      v43 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v17 = v43;
      OUTLINED_FUNCTION_79();
      v19 = v13 + v18;
      v41 = *(v16 + 72);
      do
      {
        v20 = *(v0 + 144);
        v21 = *(v0 + 112);
        v22 = *(v0 + 120);
        outlined init with copy of SpotlightRankingItem?(v19, v22, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined init with take of SearchResultItem?(v22, v21, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined init with take of SearchResult(v21 + *(v42 + 48), v20);
        v24 = *(v43 + 16);
        v23 = *(v43 + 24);
        if (v24 >= v23 >> 1)
        {
          v27 = OUTLINED_FUNCTION_26_3(v23);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27, v24 + 1, 1);
        }

        *(v43 + 16) = v24 + 1;
        OUTLINED_FUNCTION_79();
        outlined init with take of SearchResult(v26, v43 + v25 + *(v15 + 72) * v24);
        v19 += v41;
        --v14;
      }

      while (v14);
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    *(v0 + 192) = v17;
    v37 = swift_task_alloc();
    *(v0 + 200) = v37;
    *v37 = v0;
    v37[1] = closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_47();
  *v6 = v5;
  *(v8 + 208) = v7;
  *(v8 + 216) = v0;

  v9 = *(v2 + 184);
  v10 = *(v2 + 176);
  if (v0)
  {

    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v10, v9);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v10, v9);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11);
}

{
  v51 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_133();
  v2 = (*(v1 + 312))();
  result = IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.init()();
  if ((v2 & 0x80000000) == 0)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 88);
    v6 = *(v0 + 225);
    v7 = *(v0 + 24);
    IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric.asHydrationPerContentTypeTime.setter();
    v50[0] = v6;
    (*(*v7 + 240))(v5, v50);
    v8 = *(v4 + 16);
    if (v8)
    {
      v9 = *(v0 + 136);
      v10 = *(v0 + 72);
      v11 = *(v0 + 208) + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v48 = *(v9 + 72);
      v12 = MEMORY[0x277D84F90];
      do
      {
        v13 = *(v0 + 128);
        v15 = *(v0 + 80);
        v14 = *(v0 + 88);
        v17 = *(v0 + 56);
        v16 = *(v0 + 64);
        OUTLINED_FUNCTION_0_49();
        v18 = OUTLINED_FUNCTION_99_11();
        _s10OmniSearch0B6ResultVWOcTm_7(v18, v19, v20);
        __swift_storeEnumTagSinglePayload(v17, 0, 1, v13);
        outlined destroy of IntentApplication?(v17, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        (*(v10 + 16))(v15, v14, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v25, v26, v12);
          v12 = v27;
        }

        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          v28 = OUTLINED_FUNCTION_26_3(v21);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v22 + 1, 1, v12);
          v12 = v29;
        }

        *(v12 + 16) = v22 + 1;
        OUTLINED_FUNCTION_79();
        (*(v10 + 32))(v12 + v23 + *(v10 + 72) * v22);
        v11 += v48;
        --v8;
      }

      while (v8);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v30 = *(v0 + 208);
    v31 = *(v0 + 176);
    v32 = *(v0 + 160);
    v49 = *(v0 + 168);
    v46 = *(v0 + 184);
    v47 = *(v0 + 152);
    v45 = *(v0 + 88);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);

    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSayAKGG_Si_AKts5NeverOTg506_sSi10g9Search0B6i48VACSiACIgynndr_Si6offset_AC7elementt_ACtSi_ACts5k195OIegnrzr_TR04_s10a8Search14c151HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27IntelligencePlatformLibrary0n4FlowB13ToolTelemetryV0br6Answerks30VztYaKFSayr64_AI7elementQ114AN0T23SythesisHydrationMetricVG7metricstGScgyAWs5c35_pGzYaKXEfU0_AWyYaKcfU_AWyYaYbKcfU_u4_AItU27AQ_AiRt_AItXEfU0_Tf3nnnpf_nTf1cn_n(v39, v30);
    v41 = v40;

    v42 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySi6offset_10OmniSearch0H6ResultV7elementtGSay27IntelligencePlatformLibrary0k4FlowH13ToolTelemetryV29AnswerSythesisHydrationMetricVGG_SiAH_AklS7metricsts5NeverOTg506_sSi10g9Search0B6i3V27kl10Library0d4n3B13op3V29qrst65VSiACSayAHGIgynndro_Si6offset_AC7elementt_AHtSiAJ_AckI7metricsts5v220OIegnrzr_TR04_s10a8Search14c89HydratorC16fetchFullContent3for6locale015answerSynthesisC10ForMetricsSayAA0bC0VGAJ_SSSg27de10Library0n4g3B13hi53V0br6AnswerkC0VztYaKFSaySi6offset_AI7elementSayAN0T23klM78VG7metricstGScgyAWs5C63_pGzYaKXEfU0_AWyYaKcfU_SiAQ_AiruVtSiAQ_AiRt_ATtXEfU0_Tf3nnnpf_nTf1cn_nTm(v41, v12, &_sSi_10OmniSearch0B6ResultVtMd, &_sSi_10OmniSearch0B6ResultVtMR, &_sSi_10OmniSearch0B6ResultVt_27IntelligencePlatformLibrary0d4FlowB13ToolTelemetryV29AnswerSythesisHydrationMetricVtMd, &_sSi_10OmniSearch0B6ResultVt_27IntelligencePlatformLibrary0d4FlowB13ToolTelemetryV29AnswerSythesisHydrationMetricVtMR);

    outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v31, v46);
    (*(v33 + 8))(v45, v34);
    (*(v32 + 8))(v49, v47);

    **(v0 + 16) = v42;

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_15_6();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
  return result;
}