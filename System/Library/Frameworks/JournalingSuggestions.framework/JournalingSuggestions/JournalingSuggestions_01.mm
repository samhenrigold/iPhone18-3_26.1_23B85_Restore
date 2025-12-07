uint64_t closure #1 in closure #1 in Suggestion.constructed()()
{
  v45 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  UUID.init()();
  v4 = MEMORY[0x277D84F90];
  *(v1 + *(v2 + 20)) = MEMORY[0x277D84F90];
  *(v1 + *(v2 + 24)) = v4;
  v5 = *(v3 + 16);
  v0[19] = v5;
  if (v5)
  {
    v6 = v0[14];
    v0[20] = 0;
    v0[21] = v4;
    v7 = *(v6 + 32);
    v0[22] = v7;
    v8 = *(v6 + 40);
    v0[23] = v8;
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = closure #1 in closure #1 in Suggestion.constructed();
    v10 = v0[15];

    return JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:)(v7, v10, v7, v8);
  }

  else
  {
    if (*(v4 + 16))
    {
      JournalingSuggestion.ItemContent.appendAssetContent(_:)(MEMORY[0x277D84F90]);

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.bridge);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[18];
        v16 = v0[16];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v44 = v18;
        *v17 = 136315138;
        swift_beginAccess();
        v19 = *(v15 + *(v16 + 20));

        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pXpMd, &_s21JournalingSuggestions0A15SuggestionAsset_pXpMR);
        v21 = MEMORY[0x23EE70840](v19, v20);
        v23 = v22;

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v44);

        *(v17 + 4) = v24;
        _os_log_impl(&dword_238A75000, v13, v14, "Got asset representations: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x23EE71510](v18, -1, -1);
        MEMORY[0x23EE71510](v17, -1, -1);
      }

      v26 = v0[17];
      v25 = v0[18];
      v27 = v0[16];
      v28 = v0[13];
      swift_beginAccess();
      outlined init with copy of JournalingSuggestion(v25, v28, type metadata accessor for JournalingSuggestion.ItemContent);
      (*(v26 + 56))(v28, 0, 1, v27);
    }

    else
    {

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v29 = v0[15];
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.bridge);
      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 136315138;
        v36 = Asset.representations.getter();
        if (v36)
        {
          v37 = v36;
          v38 = type metadata accessor for AssetViewModel();
          v39 = MEMORY[0x23EE70840](v37, v38);
          v41 = v40;
        }

        else
        {
          v41 = 0xE300000000000000;
          v39 = 7104878;
        }

        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v44);

        *(v34 + 4) = v42;
        _os_log_impl(&dword_238A75000, v32, v33, "Error: Couldn't load any representation for asset of type: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x23EE71510](v35, -1, -1);
        MEMORY[0x23EE71510](v34, -1, -1);
      }

      (*(v0[17] + 56))(v0[13], 1, 1, v0[16]);
    }

    outlined destroy of JournalingSuggestion(v0[18], type metadata accessor for JournalingSuggestion.ItemContent);

    v43 = v0[1];

    return v43();
  }
}

{
  v50 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v48 = *(v0 + 32);
    v2 = *(v0 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 168);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, *(v0 + 168));
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
    }

    v7 = *(v0 + 176);
    v4[2] = v6 + 1;
    v8 = &v4[6 * v6];
    v8[4] = v1;
    *(v8 + 5) = v48;
    v8[7] = v2;
    *(v8 + 4) = v7;
  }

  else
  {
    v4 = *(v0 + 168);
  }

  v9 = *(v0 + 160) + 1;
  if (v9 == *(v0 + 152))
  {
    if (v4[2])
    {
      JournalingSuggestion.ItemContent.appendAssetContent(_:)(v4);

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.bridge);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 144);
        v14 = *(v0 + 128);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v49 = v16;
        *v15 = 136315138;
        swift_beginAccess();
        v17 = *(v13 + *(v14 + 20));

        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pXpMd, &_s21JournalingSuggestions0A15SuggestionAsset_pXpMR);
        v19 = MEMORY[0x23EE70840](v17, v18);
        v21 = v20;

        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v49);

        *(v15 + 4) = v22;
        _os_log_impl(&dword_238A75000, v11, v12, "Got asset representations: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x23EE71510](v16, -1, -1);
        MEMORY[0x23EE71510](v15, -1, -1);
      }

      v24 = *(v0 + 136);
      v23 = *(v0 + 144);
      v25 = *(v0 + 128);
      v26 = *(v0 + 104);
      swift_beginAccess();
      outlined init with copy of JournalingSuggestion(v23, v26, type metadata accessor for JournalingSuggestion.ItemContent);
      (*(v24 + 56))(v26, 0, 1, v25);
    }

    else
    {

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 120);
      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.bridge);
      v35 = v33;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v49 = v39;
        *v38 = 136315138;
        v40 = Asset.representations.getter();
        if (v40)
        {
          v41 = v40;
          v42 = type metadata accessor for AssetViewModel();
          v43 = MEMORY[0x23EE70840](v41, v42);
          v45 = v44;
        }

        else
        {
          v45 = 0xE300000000000000;
          v43 = 7104878;
        }

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v49);

        *(v38 + 4) = v46;
        _os_log_impl(&dword_238A75000, v36, v37, "Error: Couldn't load any representation for asset of type: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x23EE71510](v39, -1, -1);
        MEMORY[0x23EE71510](v38, -1, -1);
      }

      (*(*(v0 + 136) + 56))(*(v0 + 104), 1, 1, *(v0 + 128));
    }

    outlined destroy of JournalingSuggestion(*(v0 + 144), type metadata accessor for JournalingSuggestion.ItemContent);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    *(v0 + 160) = v9;
    *(v0 + 168) = v4;
    v27 = *(v0 + 112) + 16 * v9;
    v28 = *(v27 + 32);
    *(v0 + 176) = v28;
    v29 = *(v27 + 40);
    *(v0 + 184) = v29;
    v30 = swift_task_alloc();
    *(v0 + 192) = v30;
    *v30 = v0;
    v30[1] = closure #1 in closure #1 in Suggestion.constructed();
    v31 = *(v0 + 120);

    return JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:)(v28, v31, v28, v29);
  }
}

uint64_t closure #1 in closure #1 in Suggestion.constructed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[25] = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in Suggestion.constructed(), 0, 0);
}

uint64_t SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 2) = v11;
  *(v13 + 3) = v14;
  *(v13 + 4) = v10;
  (*(v3 + 32))(&v13[v12], v5, v2);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:), v13);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:), v7, v6);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = type metadata accessor for UUID();
    v5 = *(v4 - 8);
    (*(v5 + 16))(v2, v3, v4);
    (*(v5 + 56))(v2, 0, 1, v4);
    (*((*MEMORY[0x277D85000] & *Strong) + 0x198))(v2);
  }

  **(v0 + 40) = Strong == 0;

  v6 = *(v0 + 8);

  return v6();
}

Swift::Void __swiftcall SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(NSNumber to)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.bridge);
  v8 = to.super.super.isa;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_238A75000, v9, v10, "Did receive notification schedule change to state: %@", v11, 0xCu);
    outlined destroy of URL?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE71510](v12, -1, -1);
    MEMORY[0x23EE71510](v11, -1, -1);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v8;
  v16 = v2;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v15;
  v18[5] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:), v18);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:), v7, v6);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)()
{
  v15 = v0;

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v2 = static NSObject.== infix(_:_:)();

  if (v2)
  {
    v3 = *(v0 + 24);
    v14 = 0;
    (*((*MEMORY[0x277D85000] & *v3) + 0x138))(&v14);
  }

  else
  {
    v4 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v6 = *(v0 + 24);
      v13 = 1;
      (*((*MEMORY[0x277D85000] & *v6) + 0x138))(&v13);
    }

    else
    {
      v7 = NSNumber.init(integerLiteral:)(2).super.super.isa;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = *(v0 + 24);
        v12 = 2;
        (*((*MEMORY[0x277D85000] & *v9) + 0x138))(&v12);
      }
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

Swift::Void __swiftcall SuggestionSheetUIManager.willReceiveUserSelection()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.willReceiveUserSelection(), v7);
}

uint64_t closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.willReceiveUserSelection(), v6, v5);
}

uint64_t closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()()
{
  v1 = *(v0 + 16);

  (*((*MEMORY[0x277D85000] & *v1) + 0x1F8))(1);
  v2 = *(v0 + 8);

  return v2();
}

void SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v44 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Suggestion.assets.getter();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v9;
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (v13 >= 0)
  {
    v13 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v15 = MEMORY[0x23EE70C40](v13);
  v50 = v9;
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_4:
  *&v52 = type metadata accessor for CommonLogger();
  v49 = v15;
  if (v15 >= 1)
  {
    v44 = v6;
    v45 = a1;
    v46 = v2;
    v17 = 0;
    v51 = v14 & 0xC000000000000001;
    v18 = (v10 + 8);
    *&v16 = 138412290;
    v48 = v16;
    v19 = v49;
    do
    {
      if (v51)
      {
        v25 = MEMORY[0x23EE70B80](v17, v14);
      }

      else
      {
        v25 = *(v14 + 8 * v17 + 32);
      }

      v26 = v25;
      static CommonLogger.services.getter();
      v27 = v26;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = v48;
        *(v20 + 4) = v27;
        *v21 = v27;
        v22 = v27;
        _os_log_impl(&dword_238A75000, v28, v29, "[didReceiveAssets] Asset: %@", v20, 0xCu);
        outlined destroy of URL?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v23 = v21;
        v19 = v49;
        MEMORY[0x23EE71510](v23, -1, -1);
        v24 = v20;
        v9 = v50;
        MEMORY[0x23EE71510](v24, -1, -1);
      }

      else
      {
        v22 = v28;
        v28 = v27;
      }

      ++v17;

      (*v18)(v12, v9);
    }

    while (v19 != v17);

    a1 = v45;
    v2 = v46;
    v6 = v44;
LABEL_18:
    v30 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    [*&v2[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock] lock];
    swift_beginAccess();

    v32 = v47;
    specialized Collection.first.getter(v31, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetMR, v47);

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetMR);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) != 1)
    {
      v52 = *(v32 + *(v33 + 48));

      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 8))(v32, v39);
      MEMORY[0x23EE70910]([*&v2[v30] unlock]);
      v40 = type metadata accessor for TaskPriority();
      (*(*(v40 - 8) + 56))(v6, 0, 1, v40);
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = v2;
      *(v41 + 40) = a1;
      *(v41 + 48) = v52;
      v42 = v2;
      v43 = a1;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v41);

      return;
    }

    outlined destroy of URL?(v32, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetSgMR);
    [*&v2[v30] unlock];
    [*&v2[v30] lock];
    v34 = &v2[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState];
    if ((v2[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8] & 1) != 0 || (v35 = SuggestionSheetViewState.rawValue.getter(), v35 != SuggestionSheetViewState.rawValue.getter()))
    {
      *v34 = 0;
      v34[8] = 0;
    }

    [*&v2[v30] unlock];
    SuggestionSheetUIManager.servicePickerViewState()();
    if (one-time initialization token for bridge == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_23:
  __swift_project_value_buffer(v50, static Logger.bridge);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_238A75000, v36, v37, "Ignoring selection, sheet already dismissed", v38, 2u);
    MEMORY[0x23EE71510](v38, -1, -1);
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x23EE70AD0](v3, v5, v6, v7);
    outlined consume of Set<UIScene>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = _HashTable.startBucket.getter();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v22 + 56);

    return v10(a4, 1, 1, v6);
  }

  else
  {
    v12 = specialized Dictionary.subscript.getter(v8, v9, *(a1 + 36), 0, a1);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 32))(a4, v8, v19);
    v20 = (a4 + *(v6 + 48));
    *v20 = v12;
    v20[1] = v14;
    v20[2] = v16;
    v20[3] = v18;
    return (*(v22 + 56))(a4, 0, 1, v6);
  }
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), 0, 0);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)()
{
  type metadata accessor for PresenterServerConnection();
  v8 = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
  v9 = *(v0 + 48);
  v1 = *(v0 + 32);
  *(v0 + 64) = static PresenterServerConnection.$currentConnection.getter();
  v2 = *(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection);
  *(v0 + 72) = v2;
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:);
  v6 = *(v0 + 24);

  return MEMORY[0x282200908](v6, v0 + 16, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v3, 0, 0, 0xD00000000000003DLL, 0x8000000238ADF6D0);
}

void closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 72);

    v5 = *(v3 + 8);

    v5();
  }
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionVSgMd, &_s21JournalingSuggestions0A10SuggestionVSgMR);
  v6 = swift_task_alloc();
  v5[6] = v6;
  v7 = type metadata accessor for JournalingSuggestion(0);
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[12] = v9;
  *v9 = v5;
  v9[1] = closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:);

  return Suggestion.constructed()(v6);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)()
{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[6];
  if ((*(v1 + 48))(v2, 1, v0[7]) == 1)
  {
    v3 = v0[2];
    outlined destroy of URL?(v2, &_s21JournalingSuggestions0A10SuggestionVSgMd, &_s21JournalingSuggestions0A10SuggestionVSgMR);
    v4 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    [*(v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock) lock];
    v5 = v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState;
    if ((*(v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) != 0 || (v6 = SuggestionSheetViewState.rawValue.getter(), v6 != SuggestionSheetViewState.rawValue.getter()))
    {
      *v5 = 0;
      *(v5 + 8) = 0;
    }

    [*(v3 + v4) unlock];
    SuggestionSheetUIManager.servicePickerViewState()();
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.bridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238A75000, v8, v9, "Failed to construct JournalingSuggestion", v10, 2u);
      MEMORY[0x23EE71510](v10, -1, -1);
    }
  }

  else
  {
    v12 = v0[10];
    v11 = v0[11];
    v14 = v0[4];
    v13 = v0[5];
    v25 = v0[9];
    v15 = v0[2];
    v26 = v0[3];
    outlined init with take of JournalingSuggestion(v2, v11, type metadata accessor for JournalingSuggestion);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    outlined init with copy of JournalingSuggestion(v11, v12, type metadata accessor for JournalingSuggestion);
    type metadata accessor for MainActor();
    v17 = v15;

    v18 = static MainActor.shared.getter();
    v19 = (*(v1 + 80) + 40) & ~*(v1 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v18;
    v20[3] = v21;
    v20[4] = v17;
    outlined init with take of JournalingSuggestion(v12, v20 + v19, type metadata accessor for JournalingSuggestion);
    v22 = (v20 + ((v25 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v26;
    v22[1] = v14;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v20);

    outlined destroy of JournalingSuggestion(v11, type metadata accessor for JournalingSuggestion);
  }

  v23 = v0[1];

  return v23();
}

uint64_t closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for JournalingSuggestion(0);
  v7[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v9, v8);
}

uint64_t closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x1F8))(0);
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.bridge);
  outlined init with copy of JournalingSuggestion(v2, v1, type metadata accessor for JournalingSuggestion);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(*v7 + 16);
    outlined destroy of JournalingSuggestion(v7, type metadata accessor for JournalingSuggestion);
    *(v8 + 4) = v9;
    _os_log_impl(&dword_238A75000, v4, v5, "Calling picker .onCompletion with %ld assets", v8, 0xCu);
    MEMORY[0x23EE71510](v8, -1, -1);
  }

  else
  {
    outlined destroy of JournalingSuggestion(*(v0 + 48), type metadata accessor for JournalingSuggestion);
  }

  v10 = *(v0 + 32);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:);
  v12 = *(v0 + 24);

  return v14(v12);
}

{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v3, v2);
}

{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
  [*(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock) lock];
  v3 = v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState;
  if ((*(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) != 0 || (v4 = SuggestionSheetViewState.rawValue.getter(), v4 != SuggestionSheetViewState.rawValue.getter()))
  {
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  [*(v1 + v2) unlock];
  SuggestionSheetUIManager.servicePickerViewState()();

  v5 = *(v0 + 8);

  return v5();
}

Swift::Void __swiftcall SuggestionSheetUIManager.didTransition(to:)(NSNumber to)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.bridge);
  v8 = to.super.super.isa;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_238A75000, v9, v10, "Picker didTransitionTo %@", v11, 0xCu);
    outlined destroy of URL?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE71510](v12, -1, -1);
    MEMORY[0x23EE71510](v11, -1, -1);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v8;
  v16 = v2;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  v18[5] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.didTransition(to:), v18);
}

uint64_t closure #1 in SuggestionSheetUIManager.didTransition(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.didTransition(to:), v7, v6);
}

uint64_t closure #1 in SuggestionSheetUIManager.didTransition(to:)()
{
  v1 = v0[6];
  v2 = v0[5];

  [v1 integerValue];
  v3 = SuggestionSheetViewState.init(rawValue:)();
  v4 = v2 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState;
  *v4 = v3;
  *(v4 + 8) = v5 & 1;
  v6 = [v1 integerValue];
  if (v6 == SuggestionSheetViewState.rawValue.getter())
  {
    v7 = v0[5];
    (*((*MEMORY[0x277D85000] & *v7) + 0x1F8))(0);
    *v4 = 0;
    *(v4 + 8) = 1;
    v8 = v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_transitionViewState;
    *v8 = 0;
    v8[8] = 1;
    v9 = v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState;
    *v9 = 0;
    v9[8] = 1;
    v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens;
    swift_beginAccess();
    v11 = *(v7 + v10);
    v12 = -1;
    v13 = -1 << *(v11 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & *(v11 + 64);
    v15 = (63 - v13) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v14; result = )
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(*(v11 + 56) + ((v18 << 11) | (32 * v19)) + 16);

      v20(v21);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        goto LABEL_13;
      }

      v14 = *(v11 + 64 + 8 * v18);
      ++i;
      if (v14)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v22 = v0[1];

    return v22();
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v48 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v52 = v12;
    v53 = v9;
    v44 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v45 = (v10 + 16);
    v46 = v10;
    v49 = (v10 + 32);
    v22 = result + 64;
    v47 = v13;
    while (v20)
    {
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v29 = v26 | (v16 << 6);
      v30 = *(v13 + 48);
      v51 = *(v10 + 72);
      v31 = v30 + v51 * v29;
      if (v48)
      {
        (*v49)(v52, v31, v53);
        v32 = (*(v13 + 56) + 32 * v29);
        v33 = v32[1];
        v50 = *v32;
        v54 = v33;
      }

      else
      {
        (*v45)(v52, v31, v53);
        v34 = (*(v13 + 56) + 32 * v29);
        v35 = *v34;
        v54 = v34[1];
        v50 = v35;
      }

      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v15 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v10 = v46;
        v13 = v47;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v10 = v46;
      v13 = v47;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v49)(*(v15 + 48) + v51 * v23, v52, v53);
      v24 = (*(v15 + 56) + 32 * v23);
      v25 = v54;
      *v24 = v50;
      v24[1] = v25;
      ++*(v15 + 16);
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v20 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v13 + 32);
    v7 = v44;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 32 * a1);
          v30 = (v28 + 32 * v10);
          if (a1 != v10 || v29 >= v30 + 2)
          {
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t *a8)
{
  v34 = a7;
  v35 = a8;
  v9 = v8;
  v37 = a2;
  v38 = a4;
  v36 = a1;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v8;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 < v22 || (a6 & 1) == 0)
  {
    if (v24 >= v22 && (a6 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v34, v35);
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a6 & 1, v34, v35);
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v23 & 1) == (v26 & 1))
    {
      v19 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = v38;
  v28 = a3;
  v29 = *v9;
  if (v23)
  {
    v30 = (v29[7] + 32 * v19);
    v31 = v37;
    *v30 = v36;
    v30[1] = v31;
    v30[2] = v28;
    v30[3] = v27;
  }

  else
  {
    (*(v14 + 16))(v16, a5, v13);
    return specialized _NativeDictionary._insert(at:key:value:)(v19, v16, v36, v37, v28, v27, v29);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v42 = type metadata accessor for UUID();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v36 = v5;
    v37 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v37, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v43 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = v44 + 32;
    v39 = v44 + 16;
    v40 = v7;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v46 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v44;
        v24 = *(v44 + 72) * v22;
        v25 = v41;
        v26 = v42;
        (*(v44 + 16))(v41, *(v7 + 48) + v24, v42);
        v27 = 32 * v22;
        v28 = *(v7 + 56) + 32 * v22;
        v29 = *v28;
        v30 = *(v28 + 24);
        v31 = v43;
        v32 = *(v43 + 48);
        v33 = *(v23 + 32);
        v45 = *(v28 + 8);
        v33(v32 + v24, v25, v26);
        v34 = *(v31 + 56) + v27;
        *v34 = v29;
        v7 = v40;
        *(v34 + 8) = v45;
        *(v34 + 24) = v30;

        v17 = v46;
      }

      while (v46);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v36;
        v9 = v43;
        goto LABEL_21;
      }

      v21 = *(v37 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v46 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = *(*(a5 + 56) + 32 * a2);

    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE70B00](a1, a2, v7);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unsigned __int8 *specialized static SuggestionSheetUIManager.getClientPlatformVersion()()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x8000000238ADF730), (v4 & 1) == 0))
  {

    goto LABEL_8;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v48);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.bridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_238A75000, v11, v12, "Client info missing PlatformVersion", v13, 2u);
      MEMORY[0x23EE71510](v13, -1, -1);
    }

    return 0;
  }

  v48 = v46;
  v49 = v47;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();

  v7 = v5[2];
  if (v7)
  {
    v9 = v5[4];
    v8 = v5[5];
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v14 = HIBYTE(v8) & 0xF;
  v15 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v16 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_78;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v48 = v9;
      v49 = v8 & 0xFFFFFFFFFFFFFFLL;
      if (v9 == 43)
      {
        if (v14)
        {
          if (--v14)
          {
            v18 = 0;
            v28 = &v48 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v14)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_97:
        __break(1u);
        return result;
      }

      if (v9 != 45)
      {
        if (v14)
        {
          v18 = 0;
          v33 = &v48;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v14)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

      if (v14)
      {
        if (--v14)
        {
          v18 = 0;
          v22 = &v48 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v14)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v17 = *result;
      if (v17 == 43)
      {
        if (v15 >= 1)
        {
          v14 = v15 - 1;
          if (v15 != 1)
          {
            v18 = 0;
            if (result)
            {
              v25 = result + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  goto LABEL_75;
                }

                v27 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_75;
                }

                v18 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  goto LABEL_75;
                }

                ++v25;
                if (!--v14)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_75;
        }

        goto LABEL_96;
      }

      if (v17 != 45)
      {
        if (v15)
        {
          v18 = 0;
          if (result)
          {
            while (1)
            {
              v31 = *result - 48;
              if (v31 > 9)
              {
                goto LABEL_75;
              }

              v32 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_75;
              }

              v18 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_75;
              }

              ++result;
              if (!--v15)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_75:
        v18 = 0;
        LOBYTE(v14) = 1;
        goto LABEL_76;
      }

      if (v15 >= 1)
      {
        v14 = v15 - 1;
        if (v15 != 1)
        {
          v18 = 0;
          if (result)
          {
            v19 = result + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_75;
              }

              v21 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_75;
              }

              v18 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                goto LABEL_75;
              }

              ++v19;
              if (!--v14)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_67:
          LOBYTE(v14) = 0;
LABEL_76:
          v36 = v14;
          goto LABEL_77;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v18 = specialized _parseInteger<A, B>(ascii:radix:)(v9, v8, 10);
  v36 = v45;
LABEL_77:

  if (v36)
  {
LABEL_78:

    return 0;
  }

  if (v7 < 2)
  {

    v37 = 0;
    v38 = 0xE000000000000000;
LABEL_83:
    v39 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v37, v38);
    if (v40)
    {
      return 0;
    }

    v5 = v39;
    if (one-time initialization token for bridge == -1)
    {
      goto LABEL_85;
    }

    goto LABEL_93;
  }

  if (v5[2] >= 2uLL)
  {
    v37 = v5[6];
    v38 = v5[7];

    goto LABEL_83;
  }

  __break(1u);
LABEL_93:
  swift_once();
LABEL_85:
  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.bridge);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134218240;
    *(v44 + 4) = v18;
    *(v44 + 12) = 2048;
    *(v44 + 14) = v5;
    _os_log_impl(&dword_238A75000, v42, v43, "Client PlatformVersion: %ld.%ld", v44, 0x16u);
    MEMORY[0x23EE71510](v44, -1, -1);
  }

  return v18;
}

uint64_t sub_238A98814()
{
  MEMORY[0x23EE715A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238A9886C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v10(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

void partial apply for closure #1 in SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = (v0 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);

  closure #1 in SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:)(v8, v0 + v2, v0 + v5, v10, v11, v12, v13);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(a1, v4, v5, v7, v6);
}

uint64_t outlined consume of SuggestionSheetUIManager.TrackingHandlers?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for SuggestionSheetUIManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for SuggestionSheetUIManager;
  if (!type metadata singleton initialization cache for SuggestionSheetUIManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *specialized static Suggestion.contentImpl(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI13MediaCategoryOSgMd, &_s9MomentsUI13MediaCategoryOSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v3 = type metadata accessor for MediaCategory();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v11 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    inited = swift_initStackObject();
    v26 = xmmword_238AD9810;
    *(inited + 16) = xmmword_238AD9810;
    *(inited + 32) = MEMORY[0x277CE1088];
    *(inited + 40) = &protocol witness table for Image;
    *(inited + 48) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
    *(inited + 56) = &protocol witness table for UIImage;
    type metadata accessor for TransferContactViewModel();
    if (swift_dynamicCastClass())
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_238AD9800;
      v14 = type metadata accessor for JournalingSuggestion.Contact(0);
      v15 = &protocol witness table for JournalingSuggestion.Contact;
      goto LABEL_4;
    }

    type metadata accessor for TransferWorkoutViewModel();
    if (swift_dynamicCastClass())
    {
      if (dispatch thunk of TransferWorkoutViewModel.isSingleWorkout.getter())
      {
        v13 = swift_allocObject();
        *(v13 + 16) = v26;
        *(v13 + 32) = type metadata accessor for JournalingSuggestion.Workout(0);
        *(v13 + 40) = &protocol witness table for JournalingSuggestion.Workout;
        *(v13 + 48) = type metadata accessor for JournalingSuggestion.Workout.Details(0);
        *(v13 + 56) = &protocol witness table for JournalingSuggestion.Workout.Details;
        goto LABEL_5;
      }

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_238AD9800;
      v14 = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
      v15 = &protocol witness table for JournalingSuggestion.WorkoutGroup;
LABEL_4:
      *(v13 + 32) = v14;
      *(v13 + 40) = v15;
LABEL_5:
      v27 = v13;
      specialized Array.append<A>(contentsOf:)(inited);

      return v27;
    }

    type metadata accessor for TransferMapViewModel();
    if (swift_dynamicCastClass())
    {
      swift_setDeallocating();
      v16 = dispatch thunk of TransferMapViewModel.isSingleMap.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_238AD9800;
      if ((v16 & 1) == 0)
      {
        *(v17 + 32) = &type metadata for JournalingSuggestion.LocationGroup;
        *(v17 + 40) = &protocol witness table for JournalingSuggestion.LocationGroup;
        v18 = v17;
        goto LABEL_19;
      }

      v18 = v17;
      v19 = type metadata accessor for JournalingSuggestion.Location(0);
      v20 = &protocol witness table for JournalingSuggestion.Location;
LABEL_14:
      *(v18 + 32) = v19;
      *(v18 + 40) = v20;
LABEL_19:

      return v18;
    }

    type metadata accessor for TransferStateOfMindViewModel();
    if (swift_dynamicCastClass())
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_238AD9800;
      v14 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
      v15 = &protocol witness table for JournalingSuggestion.StateOfMind;
      goto LABEL_4;
    }

    type metadata accessor for TransferMediaFirstPartyViewModel();
    if (swift_dynamicCastClass())
    {
      dispatch thunk of TransferMediaFirstPartyViewModel.mediaCategory.getter();
      if ((*(v4 + 48))(v2, 1, v3) != 1)
      {
        (*(v4 + 32))(v9, v2, v3);
        (*(v4 + 16))(v7, v9, v3);
        v21 = (*(v4 + 88))(v7, v3);
        if (v21 == *MEMORY[0x277D2A158] || v21 == *MEMORY[0x277D2A168])
        {
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_238AD9800;
          v23 = type metadata accessor for JournalingSuggestion.Song(0);
          v24 = &protocol witness table for JournalingSuggestion.Song;
        }

        else
        {
          if (v21 != *MEMORY[0x277D2A160])
          {
            swift_setDeallocating();

            v25 = *(v4 + 8);
            v25(v9, v3);
            v25(v7, v3);
            return 0;
          }

          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_238AD9800;
          v23 = type metadata accessor for JournalingSuggestion.Podcast(0);
          v24 = &protocol witness table for JournalingSuggestion.Podcast;
        }

        *(v22 + 32) = v23;
        *(v22 + 40) = v24;
        v27 = v22;
        specialized Array.append<A>(contentsOf:)(inited);

        (*(v4 + 8))(v9, v3);
        return v27;
      }

      swift_setDeallocating();

      outlined destroy of URL?(v2, &_s9MomentsUI13MediaCategoryOSgMd, &_s9MomentsUI13MediaCategoryOSgMR);
    }

    else
    {
      type metadata accessor for TransferMediaThirdPartyViewModel();
      if (swift_dynamicCastClass())
      {
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_238AD9800;
        v14 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
        v15 = &protocol witness table for JournalingSuggestion.GenericMedia;
        goto LABEL_4;
      }

      type metadata accessor for TransferPhotoViewModel();
      if (swift_dynamicCastClass())
      {
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_238AD9800;
        v14 = type metadata accessor for JournalingSuggestion.Photo(0);
        v15 = &protocol witness table for JournalingSuggestion.Photo;
        goto LABEL_4;
      }

      type metadata accessor for TransferLivePhotoViewModel();
      if (swift_dynamicCastClass())
      {
        swift_setDeallocating();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_238AD9800;
        v19 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
        v20 = &protocol witness table for JournalingSuggestion.LivePhoto;
        goto LABEL_14;
      }

      type metadata accessor for TransferVideoViewModel();
      if (swift_dynamicCastClass())
      {
        swift_setDeallocating();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_238AD9800;
        v19 = type metadata accessor for JournalingSuggestion.Video(0);
        v20 = &protocol witness table for JournalingSuggestion.Video;
        goto LABEL_14;
      }

      type metadata accessor for TransferMotionActivityViewModel();
      if (swift_dynamicCastClass())
      {
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_238AD9800;
        v14 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
        v15 = &protocol witness table for JournalingSuggestion.MotionActivity;
        goto LABEL_4;
      }

      type metadata accessor for TransferReflectionViewModel();
      if (swift_dynamicCastClass())
      {
        swift_setDeallocating();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_238AD9800;
        *(v18 + 32) = &type metadata for JournalingSuggestion.Reflection;
        *(v18 + 40) = &protocol witness table for JournalingSuggestion.Reflection;
        goto LABEL_19;
      }

      type metadata accessor for TransferPosterViewModel();
      if (swift_dynamicCastClass())
      {
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_238AD9800;
        v14 = type metadata accessor for JournalingSuggestion.EventPoster(0);
        v15 = &protocol witness table for JournalingSuggestion.EventPoster;
        goto LABEL_4;
      }

      swift_setDeallocating();
    }

    return 0;
  }

  return result;
}

uint64_t sub_238A99400()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()(a1, v4, v5, v6);
}

uint64_t sub_238A9973C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.didTransition(to:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.didTransition(to:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type PlatformVersion and conformance PlatformVersion()
{
  result = lazy protocol witness table cache variable for type PlatformVersion and conformance PlatformVersion;
  if (!lazy protocol witness table cache variable for type PlatformVersion and conformance PlatformVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformVersion and conformance PlatformVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionSheetUIManager.DismissReason and conformance SuggestionSheetUIManager.DismissReason()
{
  result = lazy protocol witness table cache variable for type SuggestionSheetUIManager.DismissReason and conformance SuggestionSheetUIManager.DismissReason;
  if (!lazy protocol witness table cache variable for type SuggestionSheetUIManager.DismissReason and conformance SuggestionSheetUIManager.DismissReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetUIManager.DismissReason and conformance SuggestionSheetUIManager.DismissReason);
  }

  return result;
}

uint64_t sub_238A99A7C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_238A99AD8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

void type metadata completion function for SuggestionSheetUIManager(uint64_t a1)
{
  type metadata accessor for JournalConfiguration?(319, &lazy cache variable for type metadata for JournalConfiguration?, type metadata accessor for JournalConfiguration);
  if (v1 <= 0x3F)
  {
    type metadata accessor for JournalConfiguration?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>(319, &lazy cache variable for type metadata for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>, &_s21JournalingSuggestions0aB13ConfigurationC20NotificationScheduleOSgMd, &_s21JournalingSuggestions0aB13ConfigurationC20NotificationScheduleOSgMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>(319, &lazy cache variable for type metadata for Published<JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate?>, &_s21JournalingSuggestions0aB13ConfigurationC37NotificationAvailabilityStatusPrivateOSgMd, &_s21JournalingSuggestions0aB13ConfigurationC37NotificationAvailabilityStatusPrivateOSgMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>(319, &lazy cache variable for type metadata for Published<UUID?>, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<Bool>();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for JournalConfiguration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SuggestionSheetUIManager.DismissReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionSheetUIManager.DismissReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined consume of Set<UIScene>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(a1, v4, v5, v7, v6);
}

uint64_t sub_238A9AFA4()
{
  v1 = type metadata accessor for JournalingSuggestion(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = v1[6];
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v1[8];
  if (!v11(v4 + v12, 1, v9))
  {
    (*(v10 + 8))(v4 + v12, v9);
  }

  (*(v10 + 8))(v4 + v1[11], v9);

  return MEMORY[0x2821FE8E8](v0, ((v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for JournalingSuggestion(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t partial apply for closure #1 in Suggestion.constructed()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in Suggestion.constructed()(a1, a2, v6);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of JournalingSuggestion(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238A9B624()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in Suggestion.constructed()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in Suggestion.constructed()(a1, v4, v5, v7, v6);
}

uint64_t sub_238A9B72C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV11ItemContentVSg_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_238A9B91C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(a1, v4, v5, v6, v7, v8);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(a1, v4, v5, v6);
}

uint64_t objectdestroy_172Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t objectdestroy_42Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance Image(uint64_t a1)
{
  v2 = Asset.transferRepresentation.getter();
  if (v2)
  {
    v3 = v2;
    v4 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v4)
    {
      v5 = v4;
      v6 = Image.uiImage.getter();

      if (v6)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        v2 = closure #1 in static Image.getAssetLoader(for:)partial apply;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v2 = 0;
  }

  v7 = 0;
LABEL_8:
  v8 = *(v1 + 8);

  return v8(v2, v7);
}

uint64_t (*static Image.getAssetLoader(for:)(uint64_t a1))()
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v2 = result;
    v3 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v3)
    {
      v4 = v3;
      v5 = Image.uiImage.getter();

      if (v5)
      {
        *(swift_allocObject() + 16) = v5;
        return partial apply for closure #1 in static Image.getAssetLoader(for:);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in static Image.getAssetLoader(for:)(void (*a1)(void *, void), uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = Image.init(uiImage:)();
  v7[3] = MEMORY[0x277CE1088];
  v7[4] = &protocol witness table for Image;
  v7[0] = v5;

  a1(v7, 0);

  return outlined destroy of JournalingSuggestionAsset?(v7);
}

uint64_t sub_238A9C09C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, void *a3, void *a4)
{
  v43 = a4;
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for JournalingSuggestion.Song(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 28);
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 56);
  v17 = 1;
  v41 = v14;
  v39 = v16;
  v16(v13 + v14, 1, 1, v15);
  v18 = *(v10 + 32);
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v40 = v18;
  v20(v13 + v18, 1, 1, v19);
  v21 = (v13 + *(v10 + 36));
  *v21 = 0;
  v21[1] = 0;
  v22 = [a3 title];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *v13 = v23;
  v13[1] = v25;
  v26 = [a3 artistName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v13[2] = v27;
  v13[3] = v29;
  v30 = [a3 albumTitle];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v13[4] = v31;
  v13[5] = v33;
  v34 = [a3 imageURL];
  if (v34)
  {
    v35 = v34;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  v39(v9, v17, 1, v15);
  outlined assign with take of URL?(v9, v13 + v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v36 = v42;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(v43, *MEMORY[0x277D29F68], v42);
  outlined assign with take of URL?(v36, v13 + v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v46[3] = v10;
  v46[4] = &protocol witness table for JournalingSuggestion.Song;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  outlined init with copy of JournalingSuggestion.Song(v13, boxed_opaque_existential_1);
  v45(v46, 0);
  outlined destroy of JournalingSuggestionAsset?(v46);
  return outlined destroy of JournalingSuggestion.Song(v13);
}

uint64_t (*specialized static JournalingSuggestion.Song.getAssetLoader(for:inside:)(void *a1))()
{
  v2 = [a1 assetType];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v9 = [a1 content];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_13:
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.bridge);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      v27 = type metadata accessor for JournalingSuggestion.Song(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV4SongVmMd, &_s21JournalingSuggestions0A10SuggestionV4SongVmMR);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      [v16 content];
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_238A75000, v17, v18, "%s.getAssetLoader, Unexpected content: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v20, -1, -1);
      MEMORY[0x23EE71510](v19, -1, -1);
    }

    return 0;
  }

  v11 = v10;
  if ([v10 mediaType] == 1 || objc_msgSend(v11, sel_mediaType) == 4)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    v13 = a1;
    return partial apply for closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:inside:);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_238A9C774()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with copy of JournalingSuggestion.Song(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Song(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Song(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Song(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.StateOfMind(uint64_t a1)
{
  v2 = Asset.transferRepresentation.getter();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferStateOfMindViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = dispatch thunk of TransferStateOfMindViewModel.stateOfMind.getter();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v5;
        v2 = closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:)partial apply;
        goto LABEL_7;
      }
    }

    v2 = 0;
  }

  v8 = 0;
LABEL_7:
  v9 = *(v1 + 8);

  return v9(v2, v8);
}

uint64_t (*static JournalingSuggestion.StateOfMind.getAssetLoader(for:)(uint64_t a1))()
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v2 = result;
    type metadata accessor for TransferStateOfMindViewModel();
    v3 = swift_dynamicCastClass();
    if (v3 && (v4 = v3, (v5 = dispatch thunk of TransferStateOfMindViewModel.stateOfMind.getter()) != 0))
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v4;
      return partial apply for closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, void *a3)
{
  v50 = a2;
  v51 = a1;
  v4 = type metadata accessor for UUID();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - v12;
  v13 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 20);
  v48 = v7;
  v49 = v8;
  v46 = *(v8 + 56);
  v47 = v17;
  v46(&v16[v17], 1, 1, v7);
  *v16 = a3;
  v18 = *(v13 + 24);
  *&v16[v18] = 0;
  v19 = *(v13 + 28);
  *&v16[v19] = 0;
  v20 = a3;
  v21 = dispatch thunk of TransferStateOfMindViewModel.lightBackgroundColors.getter();
  if (v21)
  {
    v22 = specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(v21);

    *&v16[v18] = v22;
  }

  v23 = dispatch thunk of TransferStateOfMindViewModel.darkBackgroundColors.getter();
  if (v23)
  {
    v24 = specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(v23);

    *&v16[v19] = v24;
  }

  v25 = dispatch thunk of AssetViewModel.baseImage.getter();
  if (v25)
  {
    v26 = v25;
    v27 = v10;
    v28 = Image.uiImage.getter();

    if (v28)
    {
      v29 = [objc_opt_self() defaultManager];
      v30 = [v29 temporaryDirectory];
      v42 = v28;
      v31 = v30;

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v43 + 8))(v6, v44);
      v32 = v45;
      URL.appendingPathComponent(_:)();
      v33 = v42;

      v34 = v48;
      v44 = *(v49 + 8);
      v44(v27, v48);
      v35 = UIImageHEICRepresentation(v33);
      if (v35 || (v35 = UIImagePNGRepresentation(v33)) != 0)
      {
        v36 = v35;
        v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        URL.appendingPathExtension(_:)();
        v44(v32, v34);
        (*(v49 + 32))(v32, v27, v34);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v37, v39);
        v33 = v42;
      }

      v46(v32, 0, 1, v34);
      outlined assign with take of URL?(v32, &v16[v47]);
    }
  }

  v52[3] = v13;
  v52[4] = &protocol witness table for JournalingSuggestion.StateOfMind;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  outlined init with copy of JournalingSuggestion.StateOfMind(v16, boxed_opaque_existential_1);
  v51(v52, 0);
  outlined destroy of JournalingSuggestionAsset?(v52);
  return outlined destroy of JournalingSuggestion.StateOfMind(v16);
}

uint64_t sub_238A9CECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static JournalingSuggestion.Photo.getAssetLoader(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return specialized static JournalingSuggestion.Photo.getAssetLoader(for:)(a1);
}

uint64_t closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v56 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for JournalingSuggestion.Photo(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(v14, a3, v15);
  v16 = v12[5];
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  *&v57 = v16;
  v18(&v14[v16], 1, 1, v17);
  v54 = a4;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    outlined destroy of URL?(v8, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v21 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v20 + 8))(v8, v19);
    v21 = 0;
  }

  v18(v11, v21, 1, v17);
  outlined assign with take of Date?(v11, &v14[v57]);
  v22 = dispatch thunk of TransferPhotoFamilyViewModel.landscapeCropRect.getter();
  v23 = 0uLL;
  v57 = 0u;
  v24 = 0uLL;
  if (v22)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v51 = v25;
    v52 = v26;
    v50 = v27;
    v53 = v28;

    *&v24 = v50;
    *&v23 = v51;
    *(&v23 + 1) = v52;
    *(&v24 + 1) = v53;
  }

  v29 = &v14[v12[6]];
  *v29 = v23;
  *(v29 + 1) = v24;
  v29[32] = v22 == 0;
  v30 = dispatch thunk of TransferPhotoFamilyViewModel.squareCropRect.getter();
  v31 = 0uLL;
  if (v30)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v57 = v32;
    v51 = v34;
    v52 = v33;
    v53 = v35;

    *&v31 = v51;
    *&v36 = v57;
    *(&v36 + 1) = v52;
    v57 = v36;
    *(&v31 + 1) = v53;
  }

  v37 = &v14[v12[7]];
  *v37 = v57;
  *(v37 + 1) = v31;
  v37[32] = v30 == 0;
  v38 = dispatch thunk of TransferPhotoFamilyViewModel.portraitCropRect.getter();
  if (v38)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v52 = v39;
    v53 = v40;
    v51 = v41;
    v57 = v42;

    *&v44 = v51;
    *&v43 = v52;
    *(&v43 + 1) = v53;
    *(&v44 + 1) = v57;
  }

  else
  {
    v43 = 0uLL;
    v44 = 0uLL;
  }

  v45 = &v14[v12[8]];
  v46 = &v14[v12[9]];
  *v45 = v43;
  *(v45 + 1) = v44;
  v45[32] = v38 == 0;
  *v46 = dispatch thunk of TransferPhotoFamilyViewModel.photoIdentifier.getter();
  v46[1] = v47;
  v58[3] = v12;
  v58[4] = &protocol witness table for JournalingSuggestion.Photo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  outlined init with copy of JournalingSuggestion.Photo(v14, boxed_opaque_existential_1);
  v56(v58, 0);
  outlined destroy of URL?(v58, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Photo(v14);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Photo(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout;

  return specialized static JournalingSuggestion.Photo.getAssetLoader(for:)(a1);
}

uint64_t specialized static JournalingSuggestion.Photo.getAssetLoader(for:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.Photo.getAssetLoader(for:), 0, 0);
}

{
  v2 = Asset.transferRepresentation.getter();
  v1[9] = v2;
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferPhotoViewModel();
    v4 = swift_dynamicCastClass();
    v1[10] = v4;
    if (v4)
    {
      v5 = dispatch thunk of TransferPhotoViewModel.urlBasedImage.getter();
      v1[11] = v5;
      if (v5)
      {
        v13 = (*MEMORY[0x277D2A178] + MEMORY[0x277D2A178]);
        v6 = swift_task_alloc();
        v1[12] = v6;
        *v6 = v1;
        v6[1] = specialized static JournalingSuggestion.Photo.getAssetLoader(for:);
        v7 = v1[3];

        return v13(v7);
      }

      v9 = v1[4];
      v10 = v1[5];
      v11 = v1[3];

      (*(v10 + 56))(v11, 1, 1, v9);
      outlined destroy of URL?(v1[3], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }
  }

  v12 = v1[1];

  return v12(0, 0);
}

uint64_t specialized static JournalingSuggestion.Photo.getAssetLoader(for:)()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.Photo.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of URL?(*(v0 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v2 + 32);
    v10(v7, v3, v1);
    v10(v8, v7, v1);
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v5 = swift_allocObject();
    v10(v5 + v11, v8, v1);
    *(v5 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    v4 = partial apply for closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:);
  }

  v12 = *(v0 + 8);

  return v12(v4, v5);
}

uint64_t sub_238A9DA3C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:)(a1, a2, v2 + v6, v7);
}

uint64_t outlined init with copy of JournalingSuggestion.Photo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Photo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Photo(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Photo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Song()
{
  v1 = specialized static JournalingSuggestion.Song.getAssetLoader(for:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v54 = a2;
  v46 = a4;
  v55 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v44 - v8;
  v9 = type metadata accessor for MediaCategory();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JournalingSuggestion.Song(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = 0;
  v16[1] = 0;
  v16[4] = 0;
  v16[5] = 0;
  v17 = *(v14 + 28);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v49 = v18;
  v50 = v17;
  v48 = v20;
  (v20)(v16 + v17, 1, 1);
  v21 = *(v13 + 32);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v47 = v21;
  v44 = v23 + 56;
  v45 = v24;
  v24(v16 + v21, 1, 1, v22);
  (*(v10 + 104))(v12, *MEMORY[0x277D2A168], v9);
  lazy protocol witness table accessor for type MediaCategory and conformance MediaCategory();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v10 + 8))(v12, v9);
  v25 = v56[0];
  v26 = v56[5];
  v27 = dispatch thunk of AssetViewModel.baseTitle.getter();
  if (v25 == v26)
  {
    v29 = v16 + 5;
    v16[4] = v27;
  }

  else
  {
    *v16 = v27;
    v29 = v16 + 1;
  }

  *v29 = v28;
  v16[2] = dispatch thunk of TransferMediaFirstPartyViewModel.subtitle.getter();
  v16[3] = v30;
  v31 = v51;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v32 = v31;
  v33 = type metadata accessor for DateInterval();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v32, 1, v33);
  v36 = v52;
  if (v35 == 1)
  {
    outlined destroy of URL?(v32, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v37 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v34 + 8))(v32, v33);
    v37 = 0;
  }

  v45(v36, v37, 1, v22);
  v38 = (v16 + *(v13 + 36));
  outlined assign with take of Date?(v36, v16 + v47);
  v39 = v50;
  outlined destroy of URL?(v16 + v50, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v40 = v49;
  (*(v19 + 16))(v16 + v39, v53, v49);
  v48(v16 + v39, 0, 1, v40);
  *v38 = dispatch thunk of TransferMediaFirstPartyViewModel.trackIdentifier.getter();
  v38[1] = v41;
  v56[3] = v13;
  v56[4] = &protocol witness table for JournalingSuggestion.Song;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  outlined init with copy of JournalingSuggestion.Song(v16, boxed_opaque_existential_1);
  v55(v56, 0);
  outlined destroy of URL?(v56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Song(v16);
}

uint64_t (*specialized static JournalingSuggestion.Song.getAssetLoader(for:)())()
{
  v0 = type metadata accessor for UUID();
  v58 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v46 - v4;
  v5 = type metadata accessor for URL();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v56 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI13MediaCategoryOSgMd, &_s9MomentsUI13MediaCategoryOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v46 - v10;
  v12 = type metadata accessor for MediaCategory();
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v46 - v15;
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v18 = result;
    type metadata accessor for TransferMediaFirstPartyViewModel();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {

      return 0;
    }

    v54 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = v5;
    v20 = v19;
    v21 = v18;
    dispatch thunk of TransferMediaFirstPartyViewModel.mediaCategory.getter();
    v22 = v61;
    if ((*(v61 + 48))(v11, 1, v12) == 1)
    {

      outlined destroy of URL?(v11, &_s9MomentsUI13MediaCategoryOSgMd, &_s9MomentsUI13MediaCategoryOSgMR);
      return 0;
    }

    v52 = *(v22 + 32);
    v53 = v22 + 32;
    v52(v16, v11, v12);
    v23 = v21;
    v51 = v20;
    v24 = dispatch thunk of AssetViewModel.baseImage.getter();

    if (!v24 || (v25 = Image.uiImage.getter(), v24, !v25))
    {

      (*(v61 + 8))(v16, v12);
      return 0;
    }

    v26 = [objc_opt_self() defaultManager];
    v27 = [v26 temporaryDirectory];
    v50 = v25;
    v28 = v27;

    v29 = v54;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init()();
    UUID.uuidString.getter();
    (*(v58 + 8))(v2, v0);
    v30 = v59;
    URL.appendingPathComponent(_:)();

    v31 = v60;
    v32 = *(v60 + 8);
    v48 = v60 + 8;
    v32(v29, v55);
    v33 = v50;
    v34 = UIImageHEICRepresentation(v50);
    if (v34 || (v34 = UIImagePNGRepresentation(v33)) != 0)
    {
      v46[1] = v23;
      v47 = v32;
      v35 = v34;
      v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v36;

      URL.appendingPathExtension(_:)();
      v37 = v55;
      v47(v30, v55);
      (*(v31 + 32))(v30, v29, v37);
      Data.write(to:options:)();
      outlined consume of Data._Representation(v58, v49);
      v29 = v54;
    }

    v38 = v55;
    (*(v31 + 56))(v30, 0, 1, v55);
    v39 = *(v31 + 32);
    v40 = v56;
    v39(v56, v30, v38);
    v52(v57, v16, v12);
    v39(v29, v40, v38);
    v41 = v31 + 32;
    v42 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v43 = (v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (*(v41 + 48) + v43 + 8) & ~*(v41 + 48);
    v45 = swift_allocObject();
    v52((v45 + v42), v57, v12);
    *(v45 + v43) = v51;
    v39((v45 + v44), v29, v38);
    return partial apply for closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:);
  }

  return result;
}

uint64_t sub_238A9E890()
{
  v1 = type metadata accessor for MediaCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for MediaCategory() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:)(a1, a2, v2 + v6, v9, v10);
}

unint64_t lazy protocol witness table accessor for type MediaCategory and conformance MediaCategory()
{
  result = lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory;
  if (!lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory)
  {
    type metadata accessor for MediaCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory);
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of URL?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of URL?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double static JournalingSuggestion.Workout.Details.toCountPerMinute(_:)(void *a1)
{
  v2 = [objc_opt_self() _countPerMinuteUnit];
  [a1 doubleValueForUnit_];
  v4 = v3;

  return v4;
}

uint64_t closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v69 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v61 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v65 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v64 = v61 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v61 - v21;
  MEMORY[0x28223BE20](v20);
  v72 = v61 - v23;
  v24 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v25 + 32);
  v29 = type metadata accessor for DateInterval();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v66 = v28;
  v62 = v31;
  v63 = v29;
  v61[1] = v30 + 56;
  (v31)(v27 + v28, 1, 1);
  v27[1] = 0;
  v68 = v27 + 1;
  *v27 = a3;
  v27[2] = 0;
  v27[3] = 0;
  v32 = (v27 + v24[9]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v27 + v24[10]);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v27 + v24[11]);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v27 + v24[12]);
  *v35 = 0;
  v35[1] = 0;
  *(v27 + v24[13]) = 2;
  v36 = (v27 + v24[14]);
  *v36 = 0;
  v36[1] = 0;
  v37 = a4;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(a4, *MEMORY[0x277D2A030], v13);
  v38 = *(v15 + 48);
  v39 = v38(v13, 1, v14);
  v70 = v37;
  if (v39 == 1)
  {
    outlined destroy of URL?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v61[0] = a1;
    v42 = *(v15 + 32);
    v40 = v15 + 32;
    v41 = v42;
    v42(v72, v13, v14);
    v43 = v69;
    _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(v37, *MEMORY[0x277D2A028], v69);
    v44 = v38(v43, 1, v14);
    v45 = (v40 - 16);
    v46 = (v40 - 24);
    if (v44 == 1)
    {
      outlined destroy of URL?(v69, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v47 = *v45;
      v48 = v72;
      (*v45)(v64, v72, v14);
      v47(v65, v48, v14);
      v49 = v67;
      DateInterval.init(start:end:)();
      (*v46)(v48, v14);
      v62(v49, 0, 1, v63);
      v50 = v27 + v66;
      v51 = v49;
    }

    else
    {
      v41(v22, v69, v14);
      v52 = *v45;
      (*v45)(v64, v72, v14);
      v52(v65, v22, v14);
      v53 = v67;
      DateInterval.init(start:end:)();
      v54 = *v46;
      (*v46)(v22, v14);
      v54(v72, v14);
      v62(v53, 0, 1, v63);
      v50 = v27 + v66;
      v51 = v53;
    }

    outlined assign with take of URL?(v51, v50, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    a1 = v61[0];
  }

  v55 = v70;
  v56 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(v70, *MEMORY[0x277D29FD8]);
  if (v56)
  {
    *v68 = v56;
  }

  v57 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(v55, *MEMORY[0x277D2A020]);
  if (v57)
  {
    v27[2] = v57;
  }

  v58 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(v55, *MEMORY[0x277D29FD0]);
  if (v58)
  {
    v27[3] = v58;
  }

  v73[3] = v24;
  v73[4] = &protocol witness table for JournalingSuggestion.Workout.Details;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  outlined init with copy of JournalingSuggestion.Workout.Details(v27, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.Workout.Details);
  a1(v73, 0);
  outlined destroy of URL?(v73, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Workout.Details(v27, type metadata accessor for JournalingSuggestion.Workout.Details);
}

uint64_t closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v10 = a5;

  a3(partial apply for closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:), v9);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  outlined init with copy of URL?(a1, v20, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = v20[1];
  *(v14 + 32) = v20[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v21;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = a5;
  *(v14 + 96) = a2;
  v16 = a3;

  v17 = a2;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:), v14);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = type metadata accessor for UUID();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = type metadata accessor for JournalingSuggestion.Workout(0);
  v8[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
  v8[33] = swift_task_alloc();
  v11 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v8[34] = v11;
  v8[35] = *(v11 - 8);
  v8[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)()
{
  v1 = *(v0 + 280);
  outlined init with copy of URL?(*(v0 + 136), v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v2 = (v1 + 56);
  if (!*(v0 + 40))
  {
    v35 = *(v0 + 264);
    v36 = *(v0 + 272);
    outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    (*v2)(v35, 1, 1, v36);
    goto LABEL_9;
  }

  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
  v6 = swift_dynamicCast();
  v7 = *v2;
  (*v2)(v5, v6 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
LABEL_9:
    v37 = *(v0 + 168);
    v38 = *(v0 + 152);
    outlined destroy of URL?(*(v0 + 264), &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v38(v0 + 56, v37);
    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    goto LABEL_10;
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 144);
  outlined init with take of JournalingSuggestion.Workout(*(v0 + 264), v8, type metadata accessor for JournalingSuggestion.Workout.Details);
  outlined init with copy of JournalingSuggestion.Workout.Details(v8, v10, type metadata accessor for JournalingSuggestion.Workout.Details);
  v7(v10, 0, 1, v9);
  v15 = *(v11 + 20);
  v16 = *(v13 + 56);
  v16(v10 + v15, 1, 1, v12);
  v17 = *(v11 + 24);
  *(v10 + v17) = 0;
  v18 = [v14 iconURL];
  if (v18)
  {
    v19 = v15;
    v20 = v16;
    v22 = *(v0 + 232);
    v21 = *(v0 + 240);
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);
    v25 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = *(v24 + 32);
    v26(v21, v22, v23);
    outlined destroy of URL?(v10 + v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v26(v10 + v19, v21, v23);
    v20(v10 + v19, 0, 1, v23);
  }

  else
  {
    v41 = [*(v0 + 144) icon];
    if (v41)
    {
      v62 = v10;
      v63 = v16;
      v64 = v15;
      v65 = v17;
      v43 = *(v0 + 216);
      v42 = *(v0 + 224);
      v66 = *(v0 + 208);
      v67 = v41;
      v45 = *(v0 + 184);
      v44 = *(v0 + 192);
      v46 = *(v0 + 176);
      v47 = [objc_opt_self() defaultManager];
      v48 = [v47 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v45 + 8))(v44, v46);
      v49 = v67;
      URL.appendingPathComponent(_:)();

      v50 = *(v43 + 8);
      v50(v42, v66);
      v51 = UIImageHEICRepresentation(v67);
      if (v51 || (v51 = UIImagePNGRepresentation(v67)) != 0)
      {
        v52 = v51;
        v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        URL.appendingPathExtension(_:)();
        v57 = *(v0 + 216);
        v56 = *(v0 + 224);
        v59 = *(v0 + 200);
        v58 = *(v0 + 208);
        v50(v59, v58);
        (*(v57 + 32))(v59, v56, v58);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v53, v55);
        v49 = v67;
      }

      v61 = *(v0 + 200);
      v60 = *(v0 + 208);

      v63(v61, 0, 1, v60);
      v10 = v62;
      outlined assign with take of URL?(v61, v62 + v64, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v17 = v65;
    }
  }

  v27 = [*(v0 + 144) route];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 locationReadings];
    type metadata accessor for CLLocation();
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v10 + v17) = v30;
  }

  v31 = *(v0 + 288);
  v32 = *(v0 + 256);
  v33 = *(v0 + 152);
  *(v0 + 120) = *(v0 + 248);
  *(v0 + 128) = &protocol witness table for JournalingSuggestion.Workout;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  outlined init with copy of JournalingSuggestion.Workout.Details(v32, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.Workout);
  v33(v0 + 96, 0);
  outlined destroy of JournalingSuggestion.Workout.Details(v31, type metadata accessor for JournalingSuggestion.Workout.Details);
  outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.Workout.Details(v32, type metadata accessor for JournalingSuggestion.Workout);
LABEL_10:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t specialized closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 20);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a4, v14);
  (*(v15 + 56))(&v12[v13], 0, 1, v14);
  *v12 = a3;
  v16 = v9[6];
  *&v12[v16] = 0;
  v17 = *MEMORY[0x277D2A000];

  v18 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(a5, v17);
  if (v18)
  {
    *&v12[v16] = v18;
  }

  v19 = v9[7];
  v20 = &v12[v9[8]];
  *&v12[v19] = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(a5, *MEMORY[0x277D29FE0]);
  *v20 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSd_Tt2g5(a5, *MEMORY[0x277D2A008]);
  v20[8] = v21 & 1;
  v25[3] = v9;
  v25[4] = &protocol witness table for JournalingSuggestion.WorkoutGroup;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  outlined init with copy of JournalingSuggestion.Workout.Details(v12, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.WorkoutGroup);
  a1(v25, 0);
  outlined destroy of URL?(v25, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Workout.Details(v12, type metadata accessor for JournalingSuggestion.WorkoutGroup);
}

uint64_t (*specialized static JournalingSuggestion.Workout.Details.getAssetLoader(for:inside:)(void *a1))()
{
  v2 = [a1 assetType];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSu_Tt2g5(a1, *MEMORY[0x277D2A018]);
  if (v10)
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.bridge);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_238A75000, v12, v13, "Workout asset should carry .workoutHKType of type Int metadata", v14, 2u);
      MEMORY[0x23EE71510](v14, -1, -1);
    }

    return 0;
  }

  v16 = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  v18 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(for:inside:);
}

uint64_t (*specialized static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = [a1 content];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v18 = [a1 metadata];
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v32[0] = *MEMORY[0x277D2A010];
    type metadata accessor for MOSuggestionAssetMetadataKey(0);
    lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
    v20 = *&v32[0];
    AnyHashable.init<A>(_:)();
    if (*(v19 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v22 & 1) != 0))
    {
      outlined init with copy of Any(*(v19 + 56) + 32 * v21, v32);
      outlined destroy of AnyHashable(v33);

      outlined destroy of URL?(v32, &_sypSgMd, &_sypSgMR);
    }

    else
    {

      outlined destroy of AnyHashable(v33);
      memset(v32, 0, sizeof(v32));
      outlined destroy of URL?(v32, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.bridge);
      v24 = a1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33[0] = v28;
        *v27 = 136315138;
        *&v32[0] = [v24 content];
        v29 = String.init<A>(describing:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v33);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_238A75000, v25, v26, "SuggestionWorkout.getAssetLoader, Unexpected content: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x23EE71510](v28, -1, -1);
        MEMORY[0x23EE71510](v27, -1, -1);
      }
    }

    return 0;
  }

  v11 = v10;
  v12 = specialized static JournalingSuggestion.Workout.Details.getAssetLoader(for:inside:)(a1);
  v14 = v13;
  if (v12)
  {
    v15 = v12;
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v14;
    v16[4] = v11;
    return partial apply for closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:);
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t (*specialized static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:)(void *a1))()
{
  v2 = type metadata accessor for JournalingSuggestion.Workout(0);
  v134 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v140 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v135 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v129 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v128 = &v103 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v103 - v10;
  MEMORY[0x28223BE20](v9);
  v133 = &v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v103 - v13;
  v139 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v131 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v16 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v127 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v132 = &v103 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v136 = &v103 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v103 - v24;
  v138 = type metadata accessor for URL();
  v126 = *(v138 - 8);
  v26 = MEMORY[0x28223BE20](v138);
  v124 = v27;
  v125 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v137 = &v103 - v28;
  v29 = [a1 assetType];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  v35 = *MEMORY[0x277D29FE8];
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSi_Tt2g5(a1, *MEMORY[0x277D29FE8]);
  if (v36)
  {
    return 0;
  }

  assetImageContentToUrl(_:)(a1, v137);
  v37 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSi_Tt2g5(a1, v35);
  if (v38)
  {
    (*(v126 + 8))(v137, v138);
    return 0;
  }

  v39 = v37;
  v40 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySuG_Tt2g5(a1, *MEMORY[0x277D2A010]);
  if (!v40)
  {
LABEL_11:
    v4 = v138;
    if (one-time initialization token for bridge != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_12;
  }

  if (*(v40 + 16) < v39)
  {

    goto LABEL_11;
  }

  v48 = v40;
  v49 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSay10Foundation4DateVG_Tt2g5(a1, *MEMORY[0x277D29FF8]);
  v50 = a1;
  v51 = MEMORY[0x277D84F90];
  if (v49)
  {
    v52 = v49;
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  v107 = v52;
  v53 = *MEMORY[0x277D29FF0];
  v104 = v50;
  result = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSay10Foundation4DateVG_Tt2g5(v50, v53);
  if (!result)
  {
    result = v51;
  }

  if (v39 < 0)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  v54 = v136;
  v103 = v48;
  if (v39)
  {
    if (v39 <= *(v48 + 16))
    {
      v55 = v48;
      v56 = 0;
      v117 = *(v107 + 16);
      v116 = *(result + 2);
      v112 = v55 + 32;
      v120 = (v135 + 56);
      v118 = (v135 + 16);
      v111 = (v135 + 48);
      v106 = (v135 + 32);
      v105 = (v135 + 8);
      v110 = v131 + 7;
      v109 = (v126 + 56);
      v131 = MEMORY[0x277D84F90];
      v113 = v39;
      v119 = result;
      v115 = v2;
      v108 = v14;
      v114 = v25;
      while (1)
      {
        if (v56 >= v117)
        {
          v57 = 1;
        }

        else
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            swift_once();
LABEL_12:
            v41 = type metadata accessor for Logger();
            __swift_project_value_buffer(v41, static Logger.bridge);
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.error.getter();
            v44 = os_log_type_enabled(v42, v43);
            v45 = v137;
            if (v44)
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&dword_238A75000, v42, v43, "Can't get enough workout group activity types", v46, 2u);
              MEMORY[0x23EE71510](v46, -1, -1);
            }

            (*(v126 + 8))(v45, v4);
            return 0;
          }

          if (v56 >= *(v107 + 16))
          {
            goto LABEL_52;
          }

          (*(v135 + 16))(v25, v107 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v56, v4);
          v57 = 0;
        }

        v58 = v4;
        v4 = v120;
        v59 = *v120;
        v60 = 1;
        (*v120)(v25, v57, 1, v58);
        if (v56 < v116)
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v56 >= *(v119 + 2))
          {
            goto LABEL_53;
          }

          (*(v135 + 16))(v54, v119 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v56, v58);
          v60 = 0;
        }

        v59(v54, v60, 1, v58);
        v61 = *(v112 + 8 * v56);
        v62 = v139;
        v63 = *(v139 + 32);
        v64 = v54;
        v65 = type metadata accessor for DateInterval();
        v66 = *(v65 - 8);
        v67 = *(v66 + 56);
        v123 = v63;
        v122 = v67;
        v121 = v66 + 56;
        v67(v16 + v63, 1, 1, v65);
        *v16 = v61;
        v16[1] = 0;
        v16[2] = 0;
        v16[3] = 0;
        v68 = (v16 + v62[9]);
        *v68 = 0;
        v68[1] = 0;
        v69 = (v16 + v62[10]);
        *v69 = 0;
        v69[1] = 0;
        v70 = (v16 + v62[11]);
        *v70 = 0;
        v70[1] = 0;
        v71 = (v16 + v62[12]);
        *v71 = 0;
        v71[1] = 0;
        *(v16 + v62[13]) = 2;
        v72 = (v16 + v62[14]);
        *v72 = 0;
        v72[1] = 0;
        v73 = v132;
        outlined init with copy of URL?(v25, v132, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v74 = *v111;
        if ((*v111)(v73, 1, v58) == 1)
        {
          outlined destroy of URL?(v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v75 = 1;
          v76 = v138;
          v77 = v108;
        }

        else
        {
          v78 = v73;
          v79 = *v106;
          v80 = v133;
          (*v106)(v133, v78, v58);
          v81 = v64;
          v82 = v127;
          outlined init with copy of URL?(v81, v127, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          if (v74(v82, 1, v58) == 1)
          {
            v83 = *v118;
            (*v118)(v130, v80, v58);
            if (v74(v82, 1, v58) != 1)
            {
              outlined destroy of URL?(v82, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }

            v84 = v130;
          }

          else
          {
            v84 = v130;
            v79(v130, v82, v58);
            v83 = *v118;
          }

          v85 = v133;
          v83(v128, v133, v58);
          v83(v129, v84, v58);
          v86 = v108;
          DateInterval.init(start:end:)();
          v87 = *v105;
          (*v105)(v84, v58);
          v77 = v86;
          v87(v85, v58);
          v75 = 0;
          v76 = v138;
        }

        v122(v77, v75, 1, v65);
        outlined assign with take of URL?(v77, v16 + v123, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
        v88 = v140;
        outlined init with copy of JournalingSuggestion.Workout.Details(v16, v140, type metadata accessor for JournalingSuggestion.Workout.Details);
        (*v110)(v88, 0, 1, v139);
        v89 = v115;
        (*v109)(v88 + *(v115 + 20), 1, 1, v76);
        *(v88 + *(v89 + 24)) = 0;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v114;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v131[2] + 1, 1, v131);
        }

        v54 = v136;
        v92 = v131[2];
        v91 = v131[3];
        if (v92 >= v91 >> 1)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v131);
        }

        ++v56;
        outlined destroy of URL?(v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of URL?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v93 = v131;
        v131[2] = v92 + 1;
        outlined init with take of JournalingSuggestion.Workout(v140, v93 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v92, type metadata accessor for JournalingSuggestion.Workout);
        outlined destroy of JournalingSuggestion.Workout.Details(v16, type metadata accessor for JournalingSuggestion.Workout.Details);
        v4 = v58;
        if (v113 == v56)
        {
          goto LABEL_49;
        }
      }
    }

    goto LABEL_56;
  }

  v131 = MEMORY[0x277D84F90];
LABEL_49:

  v94 = v138;
  v95 = v125;
  v97 = v126 + 32;
  v96 = *(v126 + 32);
  v96(v125, v137, v138);
  v98 = (*(v97 + 48) + 24) & ~*(v97 + 48);
  v99 = (v124 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  *(v100 + 16) = v131;
  v96((v100 + v98), v95, v94);
  v101 = v104;
  *(v100 + v99) = v104;
  v102 = v101;
  return partial apply for specialized closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:);
}

uint64_t sub_238AA1714()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return specialized closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:)(a1, a2, v8, v2 + v6, v7);
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey)
  {
    type metadata accessor for MOSuggestionAssetMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey);
  }

  return result;
}

uint64_t sub_238AA1948()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238AA1994()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238AA19E0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t outlined init with copy of JournalingSuggestion.Workout.Details(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Workout.Details(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for CLLocation()
{
  result = lazy cache variable for type metadata for CLLocation;
  if (!lazy cache variable for type metadata for CLLocation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLLocation);
  }

  return result;
}

uint64_t sub_238AA1C2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t MOSuggestionAssetMotionActivityType.movementType.getter@<X0>(char *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v10 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
    v10 = 1;
    goto LABEL_13;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    v10 = 1;
    goto LABEL_14;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v10 = 2;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
LABEL_13:

    goto LABEL_14;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

LABEL_14:
  *a2 = v10;
  return result;
}

uint64_t closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:)(void (*a1)(__int128 *, void), uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSi_Tt2g5(a3, *MEMORY[0x277D29F70]);
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    v13 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo0gH18MotionActivityTypea_Tt2g5(a3, *MEMORY[0x277D29F78]);
    if (v13)
    {
      v14 = v13;
      MOSuggestionAssetMotionActivityType.movementType.getter(&v22);
      v15 = v22;
      if (v22 != 3)
      {
        v17 = type metadata accessor for URL();
        (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
        v18 = v7[6];
        v19 = type metadata accessor for DateInterval();
        (*(*(v19 - 8) + 56))(&v9[v18], 1, 1, v19);
        *&v9[v7[5]] = v12;
        v20 = v7[7];
        v9[v20] = 3;
        outlined assign with copy of URL?(a4, v9);
        v9[v20] = v15;
        *(&v23 + 1) = v7;
        v24 = &protocol witness table for JournalingSuggestion.MotionActivity;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
        outlined init with copy of JournalingSuggestion.MotionActivity(v9, boxed_opaque_existential_1);
        a1(&v22, 0);

        outlined destroy of JournalingSuggestionAsset?(&v22);
        return outlined destroy of JournalingSuggestion.MotionActivity(v9);
      }
    }
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  a1(&v22, 0);
  return outlined destroy of JournalingSuggestionAsset?(&v22);
}

uint64_t (*specialized static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:)(void *a1))()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-v7];
  v9 = [a1 assetType];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  assetImageContentToUrl(_:)(a1, v8);
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  outlined init with take of URL?(v8, v6);
  v18 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  outlined init with take of URL?(v6, v19 + v18);
  v20 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:);
}

uint64_t sub_238AA2248()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:)(void (*a1)(__int128 *, void), uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:)(a1, a2, v6, v7);
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion.MotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.MotionActivity(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static JournalingSuggestion.Podcast.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, void *a3, void *a4)
{
  v38 = a4;
  v39 = a2;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for JournalingSuggestion.Podcast(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 24);
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 56);
  v17 = 1;
  v36 = v14;
  v34 = v16;
  v16(v13 + v14, 1, 1, v15);
  v18 = *(v10 + 28);
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v35 = v18;
  v20(v13 + v18, 1, 1, v19);
  v21 = [a3 artistName];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v13[2] = v22;
  v13[3] = v24;
  v25 = [a3 title];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *v13 = v26;
  v13[1] = v28;
  v29 = [a3 imageURL];
  if (v29)
  {
    v30 = v29;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  v34(v9, v17, 1, v15);
  outlined assign with take of URL?(v9, v13 + v36, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v31 = v37;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(v38, *MEMORY[0x277D29F68], v37);
  outlined assign with take of URL?(v31, v13 + v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v41[3] = v10;
  v41[4] = &protocol witness table for JournalingSuggestion.Podcast;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  outlined init with copy of JournalingSuggestion.Podcast(v13, boxed_opaque_existential_1);
  v40(v41, 0);
  outlined destroy of JournalingSuggestionAsset?(v41);
  return outlined destroy of JournalingSuggestion.Podcast(v13);
}

uint64_t (*specialized static JournalingSuggestion.Podcast.getAssetLoader(for:inside:)(void *a1))()
{
  v2 = [a1 assetType];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v9 = [a1 content];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_13:
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.bridge);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      v27 = type metadata accessor for JournalingSuggestion.Podcast(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7PodcastVmMd, &_s21JournalingSuggestions0A10SuggestionV7PodcastVmMR);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      [v16 content];
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_238A75000, v17, v18, "%s.getAssetLoader, Unexpected content: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v20, -1, -1);
      MEMORY[0x23EE71510](v19, -1, -1);
    }

    return 0;
  }

  v11 = v10;
  if ([v10 mediaType] == 2 || objc_msgSend(v11, sel_mediaType) == 5)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    v13 = a1;
    return partial apply for closure #1 in static JournalingSuggestion.Podcast.getAssetLoader(for:inside:);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_238AA2B7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with copy of JournalingSuggestion.Podcast(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Podcast(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Podcast(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Podcast(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getMetadataValue<A>(_:key:as:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  getMetadata<A>(_:key:as:)(a1, a2, a3, &v23 - v10);
  v12 = *(a3 - 1);
  if ((*(v12 + 48))(v11, 1, a3) != 1)
  {
    return (*(v12 + 32))(a4, v11, a3);
  }

  (*(v9 + 8))(v11, v8);
  type metadata accessor for JournalingSuggestionsError(0);
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError, &protocol conformance descriptor for JournalingSuggestionsError);
  swift_allocError();
  v14 = v13;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v15;
  MEMORY[0x23EE70790](8250, 0xE200000000000000);
  v25 = a3;
  swift_getMetatypeMetadata();
  v16 = String.init<A>(describing:)();
  MEMORY[0x23EE70790](v16);

  v17 = v23;
  v18 = v24;
  v23 = 0x203A7465737341;
  v24 = 0xE700000000000000;
  v25 = [a1 content];
  v19 = String.init<A>(describing:)();
  MEMORY[0x23EE70790](v19);

  v20 = v23;
  v21 = v24;
  *v14 = v17;
  v14[1] = v18;
  v14[2] = v20;
  v14[3] = v21;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t getMetadata<A>(_:key:as:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = [a1 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v14[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
  v9 = a2;
  AnyHashable.init<A>(_:)();
  if (*(v8 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v10, v14);
    outlined destroy of AnyHashable(v15);
  }

  else
  {

    outlined destroy of AnyHashable(v15);
    memset(v14, 0, sizeof(v14));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v12 ^ 1u, 1, a3);
}

uint64_t getMetadata<A>(_:key:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v13[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey, &protocol conformance descriptor for MOSuggestionAssetMetadataKey);
  v8 = a2;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v10 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v9, v13);
    outlined destroy of AnyHashable(v14);
  }

  else
  {
    outlined destroy of AnyHashable(v14);
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v11 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v11 ^ 1u, 1, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  type metadata accessor for UUID();
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EE70B30](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Video(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout;

  return specialized static JournalingSuggestion.Video.getAssetLoader(for:)(a1);
}

uint64_t static JournalingSuggestion.Video.getAssetLoader(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return specialized static JournalingSuggestion.Video.getAssetLoader(for:)(a1);
}

uint64_t closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v56 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for JournalingSuggestion.Video(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(v14, a3, v15);
  v16 = v12[5];
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  *&v57 = v16;
  v18(&v14[v16], 1, 1, v17);
  v54 = a4;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    outlined destroy of URL?(v8, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v21 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v20 + 8))(v8, v19);
    v21 = 0;
  }

  v18(v11, v21, 1, v17);
  outlined assign with take of Date?(v11, &v14[v57]);
  v22 = dispatch thunk of TransferPhotoFamilyViewModel.landscapeCropRect.getter();
  v23 = 0uLL;
  v57 = 0u;
  v24 = 0uLL;
  if (v22)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v51 = v25;
    v52 = v26;
    v50 = v27;
    v53 = v28;

    *&v24 = v50;
    *&v23 = v51;
    *(&v23 + 1) = v52;
    *(&v24 + 1) = v53;
  }

  v29 = &v14[v12[6]];
  *v29 = v23;
  *(v29 + 1) = v24;
  v29[32] = v22 == 0;
  v30 = dispatch thunk of TransferPhotoFamilyViewModel.squareCropRect.getter();
  v31 = 0uLL;
  if (v30)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v57 = v32;
    v51 = v34;
    v52 = v33;
    v53 = v35;

    *&v31 = v51;
    *&v36 = v57;
    *(&v36 + 1) = v52;
    v57 = v36;
    *(&v31 + 1) = v53;
  }

  v37 = &v14[v12[7]];
  *v37 = v57;
  *(v37 + 1) = v31;
  v37[32] = v30 == 0;
  v38 = dispatch thunk of TransferPhotoFamilyViewModel.portraitCropRect.getter();
  if (v38)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v52 = v39;
    v53 = v40;
    v51 = v41;
    v57 = v42;

    *&v44 = v51;
    *&v43 = v52;
    *(&v43 + 1) = v53;
    *(&v44 + 1) = v57;
  }

  else
  {
    v43 = 0uLL;
    v44 = 0uLL;
  }

  v45 = &v14[v12[8]];
  v46 = &v14[v12[9]];
  *v45 = v43;
  *(v45 + 1) = v44;
  v45[32] = v38 == 0;
  *v46 = dispatch thunk of TransferPhotoFamilyViewModel.photoIdentifier.getter();
  v46[1] = v47;
  v58[3] = v12;
  v58[4] = &protocol witness table for JournalingSuggestion.Video;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  outlined init with copy of JournalingSuggestion.Video(v14, boxed_opaque_existential_1);
  v56(v58, 0);
  outlined destroy of URL?(v58, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Video(v14);
}

uint64_t specialized static JournalingSuggestion.Video.getAssetLoader(for:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.Video.getAssetLoader(for:), 0, 0);
}

{
  v2 = Asset.transferRepresentation.getter();
  v1[9] = v2;
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferVideoViewModel();
    v4 = swift_dynamicCastClass();
    v1[10] = v4;
    if (v4)
    {
      v5 = dispatch thunk of TransferVideoViewModel.urlBasedVideo.getter();
      v1[11] = v5;
      if (v5)
      {
        v13 = (*MEMORY[0x277D2A180] + MEMORY[0x277D2A180]);
        v6 = swift_task_alloc();
        v1[12] = v6;
        *v6 = v1;
        v6[1] = specialized static JournalingSuggestion.Video.getAssetLoader(for:);
        v7 = v1[3];

        return v13(v7);
      }

      v9 = v1[4];
      v10 = v1[5];
      v11 = v1[3];

      (*(v10 + 56))(v11, 1, 1, v9);
      outlined destroy of URL?(v1[3], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }
  }

  v12 = v1[1];

  return v12(0, 0);
}

uint64_t specialized static JournalingSuggestion.Video.getAssetLoader(for:)()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.Video.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of URL?(*(v0 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v2 + 32);
    v10(v7, v3, v1);
    v10(v8, v7, v1);
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v5 = swift_allocObject();
    v10(v5 + v11, v8, v1);
    *(v5 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    v4 = partial apply for closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:);
  }

  v12 = *(v0 + 8);

  return v12(v4, v5);
}

uint64_t sub_238AA40A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:)(a1, a2, v2 + v6, v7);
}

uint64_t static Logger.osLogger(category:)(uint64_t a1, uint64_t a2)
{

  return Logger.init(subsystem:category:)();
}

uint64_t Logger.bridge.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t one-time initialization function for shared(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.shared.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t key path setter for SuggestionSheetManager.journalConfiguration : SuggestionSheetManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of URL?(a1, &v8 - v5, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x98))(v6);
}

uint64_t SuggestionSheetManager.journalConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_journalConfiguration;
  swift_beginAccess();
  return outlined init with copy of URL?(v1 + v3, a1, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
}

uint64_t SuggestionSheetManager.journalConfiguration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_journalConfiguration;
  swift_beginAccess();
  outlined assign with take of JournalConfiguration?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of JournalConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SuggestionSheetManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *SuggestionSheetManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static SuggestionSheetManager.shared;
}

id static SuggestionSheetManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionSheetManager.shared;

  return v1;
}

uint64_t SuggestionSheetManager.peekDetent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  (*((*MEMORY[0x277D85000] & *v0) + 0x90))(v2);
  v5 = type metadata accessor for JournalConfiguration(0);
  (*(*(v5 - 8) + 48))(v4, 1, v5);
  return outlined destroy of URL?(v4, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
}

id SuggestionSheetManager.presentationOptions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))(v8);
  v13 = *((*v11 & *v0) + 0x90);
  v13();
  v14 = type metadata accessor for JournalConfiguration(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = 1;
  if (!v15(v10, 1, v14))
  {
    v16 = v10[8];
  }

  v17 = outlined destroy of URL?(v10, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  (v13)(v17);
  if (v15(v7, 1, v14))
  {
    outlined destroy of URL?(v7, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  }

  else
  {
    outlined init with copy of URL?(&v7[*(v14 + 24)], v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of URL?(v7, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  }

  v19 = specialized static SuggestionSheetUIManager.getClientPlatformVersion()();
  v21 = v20;
  v23 = v22;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  isa = 0;
  if ((*(v25 + 48))(v3, 1, v24) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v25 + 8))(v3, v24);
  }

  if (v21 >= 0)
  {
    v27 = (v19 > 17) & ~v23;
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D2A140]) initWithShowCancelButton:1 showBlankEntryButton:1 peekDetentRatio:v16 presentFullScreen:1 presentationIsAnimated:1 selectedTabIsRecommended:isa selectedSuggestionId:v12 contentOptions:v27];

  return v28;
}

uint64_t static SuggestionSheetManager.content(bySpiType:)(uint64_t a1)
{
  result = specialized static SuggestionSheetManager.contentImpl(bySpiType:)(a1);
  if (result)
  {
    if (*(result + 16))
    {
      v2 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238AD9810;
      *(inited + 32) = MEMORY[0x277CE1088];
      *(inited + 40) = &protocol witness table for Image;
      *(inited + 48) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
      *(inited + 56) = &protocol witness table for UIImage;
      specialized Array.append<A>(contentsOf:)(inited);
      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t SuggestionSheetManager.servicePickerViewState()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_pickerQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in SuggestionSheetManager.servicePickerViewState();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_79;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x277D84F90];
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void closure #1 in SuggestionSheetManager.servicePickerViewState()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller);
    if (!v3)
    {
      v6 = Strong;
LABEL_42:

      return;
    }

    v4 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
    v5 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock);
    v6 = v3;
    [v5 lock];
    v7 = &v2[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState];
    v8 = *&v2[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState];
    v9 = v2[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8];
    v10 = &v2[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState];
    v11 = v2[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState + 8];
    if (v9)
    {
      if (!v2[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState + 8])
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v8 != *v10)
      {
        v11 = 1;
      }

      if (v11)
      {
LABEL_11:
        [*&v2[v4] unlock];
        if (one-time initialization token for bridge != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.bridge);
        v13 = v2;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134218496;
          if (v9)
          {
            v17 = 0;
          }

          else
          {
            v17 = v8;
          }

          *(v16 + 4) = v17;
          *(v16 + 12) = 2048;
          if (v7[8])
          {
            v18 = 99;
          }

          else
          {
            v18 = *v7;
          }

          v21 = v6;
          *(v16 + 14) = v18;
          *(v16 + 22) = 2048;
          v22 = v8;
          if (v10[8])
          {
            v23 = 99;
          }

          else
          {
            v23 = *v10;
          }

          *(v16 + 24) = v23;
          v49 = v16;

          _os_log_impl(&dword_238A75000, v14, v15, "servicePickerViewState, target, %lu, targetView, %lu, view, %lu", v49, 0x20u);
          MEMORY[0x23EE71510](v49, -1, -1);
          v8 = v22;
          v6 = v21;

          if (v9)
          {
LABEL_38:
            v41 = Logger.logObject.getter();
            v50 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v41, v50))
            {
              v43 = swift_slowAlloc();
              *v43 = 0;
              v44 = "nil targetViewState, ignoring update";
              v45 = v50;
              v46 = v41;
              v47 = v43;
              v48 = 2;
              goto LABEL_40;
            }

            goto LABEL_41;
          }
        }

        else
        {

          if (v9)
          {
            goto LABEL_38;
          }
        }

        v19 = v7[8];
        v20 = v13 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState;
        *v20 = *v7;
        v20[8] = v19;
        if (v10[8])
        {
          if ((v8 - 1) > 1)
          {
            goto LABEL_31;
          }
        }

        else if (*v10 || (v8 - 1) >= 2)
        {
LABEL_31:
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = v13;
            v35 = v6;
            v36 = v8;
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_238A75000, v32, v33, "Posting picker state update: .dismissed", v37, 2u);
            v38 = v37;
            v8 = v36;
            v6 = v35;
            v13 = v34;
            MEMORY[0x23EE71510](v38, -1, -1);
          }

          v39 = (*((*MEMORY[0x277D85000] & *v13) + 0xC8))();
          v40 = [v39 presentationIsAnimated];

          [v6 updatePickerState:0 animated:v40];
          *v20 = 0;
          v20[8] = 1;
          goto LABEL_34;
        }

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = v13;
          v27 = v6;
          v28 = v8;
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_238A75000, v24, v25, "Requesting picker", v29, 2u);
          v30 = v29;
          v8 = v28;
          v6 = v27;
          v13 = v26;
          MEMORY[0x23EE71510](v30, -1, -1);
        }

        v31 = (*((*MEMORY[0x277D85000] & *v13) + 0xC8))();
        [v6 requestPickerWithOptions_];

LABEL_34:
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 134217984;
          *(v43 + 4) = v8;
          v44 = "Expecting transition to %lu";
          v45 = v42;
          v46 = v41;
          v47 = v43;
          v48 = 12;
LABEL_40:
          _os_log_impl(&dword_238A75000, v46, v45, v44, v47, v48);
          MEMORY[0x23EE71510](v43, -1, -1);
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    *v7 = 0;
    v7[8] = 1;
    goto LABEL_11;
  }
}

uint64_t SuggestionSheetManager.remoteViewStateChangedTo(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_pickerQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in SuggestionSheetManager.remoteViewStateChangedTo(_:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v9, v6, v12);
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void closure #1 in SuggestionSheetManager.remoteViewStateChangedTo(_:)(uint64_t a1, unint64_t a2)
{
  v64 = type metadata accessor for UUID();
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v51[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
    [*(Strong + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
    v13 = v11 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState;
    if (*(v11 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState + 8) != 1)
    {
      v23 = *v13;
      *v13 = 0;
      v13[8] = 1;
      if ((*(v11 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || v23 != *(v11 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState))
      {
        if (!a2)
        {
          v52 = 1;
          goto LABEL_19;
        }

        v52 = 1;
        goto LABEL_17;
      }

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.bridge);
      v15 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v15, v25))
      {
        goto LABEL_7;
      }

      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a2;
      v18 = "Completed transition to %lu";
      v19 = v25;
      v20 = v15;
      v21 = v17;
      v22 = 12;
      goto LABEL_6;
    }

    if (one-time initialization token for bridge != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.bridge);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "No view state updated expected.";
        v19 = v16;
        v20 = v15;
        v21 = v17;
        v22 = 2;
LABEL_6:
        _os_log_impl(&dword_238A75000, v20, v19, v18, v21, v22);
        MEMORY[0x23EE71510](v17, -1, -1);
      }

LABEL_7:

      v52 = 0;
      if (a2)
      {
LABEL_17:
        v26 = MEMORY[0x277D84F98];
      }

      else
      {
LABEL_19:
        v27 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens;
        swift_beginAccess();
        v26 = *(v11 + v27);
        *(v11 + v27) = MEMORY[0x277D84F98];
      }

      [*(v11 + v12) unlock];
      v28 = 0;
      v29 = v11 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState;
      *v29 = a2;
      v29[8] = 0;
      v30 = *(v26 + 64);
      v53 = v11;
      v54 = v26 + 64;
      v31 = 1 << *(v26 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      a2 = v32 & v30;
      v33 = (v31 + 63) >> 6;
      v55 = v60 + 32;
      v56 = v60 + 16;
      v61 = (v60 + 8);
      v62 = v26;
      v11 = &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd;
      v57 = v33;
      v58 = v9;
      if ((v32 & v30) != 0)
      {
        break;
      }

LABEL_24:
      if (v33 <= v28 + 1)
      {
        v34 = v28 + 1;
      }

      else
      {
        v34 = v33;
      }

      v35 = v34 - 1;
      while (1)
      {
        v12 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v12 >= v33)
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMR);
          (*(*(v49 - 8) + 56))(v7, 1, 1, v49);
          a2 = 0;
          goto LABEL_32;
        }

        a2 = *(v54 + 8 * v12);
        ++v28;
        if (a2)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_41:
      swift_once();
    }

    while (1)
    {
      v12 = v28;
LABEL_31:
      v36 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v37 = v36 | (v12 << 6);
      v38 = v59;
      v39 = v60;
      v40 = v64;
      (*(v60 + 16))(v59, *(v26 + 48) + *(v60 + 72) * v37, v64);
      v41 = *(v26 + 56) + 32 * v37;
      v63 = *v41;
      v42 = *(v41 + 24);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMR);
      v44 = v7;
      v45 = &v7[*(v43 + 48)];
      v46 = *(v39 + 32);
      v65 = *(v41 + 8);
      v47 = v38;
      v11 = &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd;
      v46(v44, v47, v40);
      *v45 = v63;
      *(v45 + 8) = v65;
      *(v45 + 3) = v42;
      v7 = v44;
      (*(*(v43 - 8) + 56))(v44, 0, 1, v43);

      v35 = v12;
      v33 = v57;
      v9 = v58;
LABEL_32:
      outlined init with take of UUID?(v7, v9, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMR);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMR);
      if ((*(*(v48 - 8) + 48))(v9, 1, v48) == 1)
      {
        break;
      }

      (*&v9[*(v48 + 48) + 16])();

      (*v61)(v9, v64);
      v28 = v35;
      v26 = v62;
      if (!a2)
      {
        goto LABEL_24;
      }
    }

    v50 = v53;
    if (v52)
    {
      SuggestionSheetManager.servicePickerViewState()();
    }
  }
}

Swift::Bool __swiftcall SuggestionSheetManager.activate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 connectedScenes];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = specialized Collection.first.getter(v10);

  if (v11)
  {

    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    if (*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller))
    {

      return (*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState + 8) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState) - 1) < 2;
    }

    else
    {
      v14 = v13;
      v21 = *(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_pickerQueue);
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v14;
      aBlock[4] = partial apply for closure #1 in SuggestionSheetManager.activate();
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_1;
      v17 = _Block_copy(aBlock);

      v20 = v11;
      static DispatchQoS.unspecified.getter();
      v23 = MEMORY[0x277D84F90];
      _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v19 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x23EE709F0](0, v7, v4, v17);
      _Block_release(v17);

      (*(v2 + 8))(v4, v1);
      (*(v22 + 8))(v7, v19);

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in SuggestionSheetManager.activate()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller;
    if (!*&Strong[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller])
    {
      v5 = Strong;
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.bridge);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_238A75000, v7, v8, "Activating JournalingSuggestionsPicker", v9, 2u);
        MEMORY[0x23EE71510](v9, -1, -1);
      }

      v10 = [objc_allocWithZone(MEMORY[0x277D2A138]) initForScene_];
      [v10 setDelegate_];
      v11 = *&v5[v4];
      *&v5[v4] = v10;
      v12 = v10;

      [v12 activate];
      Strong = v12;
    }
  }
}

uint64_t SuggestionSheetManager.show(token:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  if (*(v5 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller))
  {
    v16 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
    v17 = *(v5 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock);

    [v17 lock];
    v18 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v6 + v18);
    *(v6 + v18) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, partial apply for closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:), v15, a1, isUniquelyReferenced_nonNull_native);
    *(v6 + v18) = v31;
    swift_endAccess();
    [*(v6 + v16) unlock];
    [*(v6 + v16) lock];
    v20 = v6 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
    if ((*(v6 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v20 != 2)
    {
      *v20 = 2;
      *(v20 + 8) = 0;
    }

    [*(v6 + v16) unlock];
    SuggestionSheetManager.servicePickerViewState()();
  }

  else
  {
    v21 = one-time initialization token for bridge;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.bridge);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_238A75000, v23, v24, "Can't show suggestions picker, not activated", v25, 2u);
      MEMORY[0x23EE71510](v25, -1, -1);
    }

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    type metadata accessor for MainActor();

    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = a4;
    v28[5] = a5;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:), v28);
  }
}

uint64_t closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:)partial apply, v9);
}

Swift::Int SuggestionSheetManager.DismissReason.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](a1 & 1);
  return Hasher._finalize()();
}

id SuggestionSheetManager.dismiss(presentationToken:reason:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*(v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
  (*(v7 + 16))(v9, a1, v6);
  v11 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, 0, 0, 0, v9);
  swift_endAccess();
  v12 = *(*(v3 + v11) + 16);
  result = [*(v3 + v10) unlock];
  if (!v12 || (a2 & 1) == 0)
  {
    [*(v3 + v10) lock];
    v14 = v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
    if ((*(v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v14)
    {
      *v14 = 0;
      *(v14 + 8) = 0;
    }

    [*(v3 + v10) unlock];
    return SuggestionSheetManager.servicePickerViewState()();
  }

  return result;
}

Swift::Void __swiftcall SuggestionSheetManager.onApplicationMovedToForeground()()
{
  v1 = (v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState);
  if ((*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) == 0)
  {
    v2 = *v1;
    if ((*v1 - 3) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
      [*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
      *v1 = v2;
      *(v1 + 8) = 0;
      v4 = v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState;
      *v4 = 0;
      *(v4 + 8) = 1;
      v5 = v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState;
      *v5 = 0;
      *(v5 + 8) = 1;
      [*(v0 + v3) unlock];

      SuggestionSheetManager.servicePickerViewState()();
    }
  }
}

void SuggestionSheetManager.suggestionSheetControllerShouldShowMomentsValidator(_:)()
{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.bridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_238A75000, oslog, v1, "Picker:MV", v2, 2u);
    MEMORY[0x23EE71510](v2, -1, -1);
  }
}

uint64_t SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[5] = a3;
  v3[6] = ObjectType;
  v3[3] = a1;
  v3[4] = a2;
  type metadata accessor for Date();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), 0, 0);
}

uint64_t SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)()
{
  v1 = v0[3].i64[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21JournalingSuggestions0A10SuggestionV11ItemContentVGMd, &_sSay21JournalingSuggestions0A10SuggestionV11ItemContentVGMR);
  v4 = swift_task_alloc();
  v0[4].i64[1] = v4;
  v4[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v4[2].i64[0] = v1;
  v5 = swift_task_alloc();
  v0[5].i64[0] = v5;
  *v5 = v0;
  v5[1] = SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);

  return MEMORY[0x282200600](&v0[1], v2, v3, 0, 0, &async function pointer to partial apply for closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), v4, v2);
}

{

  return MEMORY[0x2822009F8](SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), 0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[5];
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v33 = v0[5];
      }

      else
      {
        v33 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 != MEMORY[0x23EE70C40](v33))
      {
        goto LABEL_4;
      }
    }

    else if (v2 != *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.bridge);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134218240;
        if (v3 >> 62)
        {
          if (v3 < 0)
          {
            v15 = v0[5];
          }

          else
          {
            v15 = v3 & 0xFFFFFFFFFFFFFF8;
          }

          v8 = MEMORY[0x23EE70C40](v15);
        }

        else
        {
          v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v7 + 4) = v8;

        *(v7 + 12) = 2048;
        *(v7 + 14) = *(v1 + 16);

        _os_log_impl(&dword_238A75000, v5, v6, "assets input count=%ld, output count=%ld", v7, 0x16u);
        MEMORY[0x23EE71510](v7, -1, -1);
      }

      else
      {
      }
    }

    v17 = v0[3];
    v16 = v0[4];
    v18 = [v16 title];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = type metadata accessor for JournalingSuggestion(0);
    v22 = v21[6];
    v23 = [v16 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = [v16 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.init(start:end:)();
    v25 = type metadata accessor for DateInterval();
    (*(*(v25 - 8) + 56))(&v17[v22], 0, 1, v25);
    v26 = v21[7];
    v27 = type metadata accessor for UUID();
    v28 = *(*(v27 - 8) + 56);
    v28(&v17[v26], 1, 1, v27);
    v28(&v17[v21[8]], 1, 1, v27);
    v29 = [v16 suggestionIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = NSObject.hashValue.getter();
    *v17 = v1;
    *(v17 + 1) = v34;
    *(v17 + 2) = v20;
    *&v17[v21[9]] = 0;
    v17[v21[10]] = 1;
    *&v17[v21[12]] = v30;
    (*(*(v21 - 1) + 56))(v17, 0, 1, v21);
    goto LABEL_22;
  }

  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.bridge);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_238A75000, v10, v11, "Error: No valid representation available for asset, dropping, asset type", v12, 2u);
    MEMORY[0x23EE71510](v12, -1, -1);
  }

  v13 = v0[3];

  v14 = type metadata accessor for JournalingSuggestion(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
LABEL_22:

  v31 = v0[1];

  return v31();
}

uint64_t closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v5 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMR);
  v4[28] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR);
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), 0, 0);
}

uint64_t closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = v3;
  v4 = *(v3 + 160);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v51 = *(v3 + 160);
    }

    else
    {
      v51 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    a1 = MEMORY[0x23EE70C40](v51, a2, a3);
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_34:
    TaskGroup.makeAsyncIterator()();
    *(v3 + 288) = MEMORY[0x277D84F90];
    v52 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.ItemContent?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR, MEMORY[0x277D856C0]);
    v53 = swift_task_alloc();
    *(v3 + 296) = v53;
    *v53 = v3;
    v53[1] = closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);
    a2 = *(v3 + 264);
    a1 = *(v3 + 224);
    a3 = v52;

    return MEMORY[0x282200308](a1, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v59 = v4 & 0xC000000000000001;
    v55 = (v3 + 80);
    v56 = *(v3 + 160) + 32;
    v7 = &off_278A60000;
    v57 = v5;
    while (1)
    {
      if (v59)
      {
        v8 = MEMORY[0x23EE70B80](v6, *(v3 + 160), a3);
      }

      else
      {
        v8 = *(v56 + 8 * v6);
      }

      v9 = v8;
      v10 = [v8 v7[142]];
      v11 = specialized static SuggestionSheetManager.contentImpl(bySpiType:)(v10);
      if (!v11)
      {
        goto LABEL_20;
      }

      if (!*(v11 + 16))
      {

LABEL_20:

        if (one-time initialization token for bridge != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Logger.bridge);
        v39 = v9;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v60 = v43;
          *v42 = 136315138;
          *(v3 + 136) = [v39 v7[142]];
          type metadata accessor for MOSuggestionAssetsType(0);
          v44 = String.init<A>(describing:)();
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v60);
          v7 = &off_278A60000;

          *(v42 + 4) = v46;
          _os_log_impl(&dword_238A75000, v40, v41, "Error: Not implemented internal asset type: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x23EE71510](v43, -1, -1);
          MEMORY[0x23EE71510](v42, -1, -1);
        }

        else
        {
        }

        goto LABEL_6;
      }

      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238AD9810;
      *(inited + 32) = MEMORY[0x277CE1088];
      *(inited + 40) = &protocol witness table for Image;
      *(inited + 48) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
      *(inited + 56) = &protocol witness table for UIImage;
      v60 = v12;
      specialized Array.append<A>(contentsOf:)(inited);

      v58 = v60;
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.bridge);
      v15 = v9;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v60 = v19;
        *v18 = 136315138;
        v20 = [v15 v7[142]];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v60);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_238A75000, v16, v17, "Got asset with internal asset type: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x23EE71510](v19, -1, -1);
        MEMORY[0x23EE71510](v18, -1, -1);
      }

      v25 = *(v3 + 176);
      v26 = *(v3 + 184);
      v27 = *(v3 + 168);
      v28 = type metadata accessor for TaskPriority();
      v29 = *(v28 - 8);
      (*(v29 + 56))(v26, 1, 1, v28);
      v30 = swift_allocObject();
      v30[2] = 0;
      v31 = v30 + 2;
      v30[3] = 0;
      v30[4] = v58;
      v30[5] = v15;
      v30[6] = v27;
      outlined init with copy of URL?(v26, v25, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v25) = (*(v29 + 48))(v25, 1, v28);
      v32 = v15;
      v33 = v27;
      v34 = *(v3 + 176);
      if (v25 == 1)
      {
        outlined destroy of URL?(*(v3 + 176), &_sScPSgMd, &_sScPSgMR);
        if (!*v31)
        {
          goto LABEL_25;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v29 + 8))(v34, v28);
        if (!*v31)
        {
LABEL_25:
          v35 = 0;
          v37 = 0;
          goto LABEL_26;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v35 = dispatch thunk of Actor.unownedExecutor.getter();
      v37 = v36;
      swift_unknownObjectRelease();
LABEL_26:
      v47 = **(v3 + 152);
      v48 = swift_allocObject();
      *(v48 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);
      *(v48 + 24) = v30;

      if (v37 | v35)
      {
        v49 = v55;
        *v55 = 0;
        v55[1] = 0;
        *(v3 + 96) = v35;
        *(v3 + 104) = v37;
      }

      else
      {
        v49 = 0;
      }

      v5 = v57;
      v50 = *(v3 + 184);
      *(v3 + 112) = 1;
      *(v3 + 120) = v49;
      *(v3 + 128) = v47;
      swift_task_create();

      outlined destroy of URL?(v50, &_sScPSgMd, &_sScPSgMR);
      v7 = &off_278A60000;
LABEL_6:
      if (v5 == ++v6)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return MEMORY[0x282200308](a1, a2, a3);
}

uint64_t closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 280);
    v6 = v2 + 264;
    v4 = *(v2 + 264);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = destructiveProjectEnumData for JournalingSuggestionsError;
  }

  else
  {
    v7 = closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[28];
  if ((*(v0[30] + 48))(v1, 1, v0[29]) == 1)
  {
    v2 = v0[36];
    v3 = v0[18];
    (*(v0[34] + 8))(v0[35], v0[33]);
    outlined destroy of URL?(v1, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMR);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[31];
    v6 = v0[32];
    v8 = v0[24];
    v9 = v0[25];
    outlined init with take of UUID?(v1, v6, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
    outlined init with copy of URL?(v6, v7, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v10 = v0[31];
      outlined destroy of URL?(v0[32], &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      outlined destroy of URL?(v10, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      v11 = v0[36];
    }

    else
    {
      v13 = v0[26];
      v12 = v0[27];
      outlined init with take of JournalingSuggestion.ItemContent(v0[31], v12, type metadata accessor for JournalingSuggestion.ItemContent);
      outlined init with copy of JournalingSuggestionsError(v12, v13, type metadata accessor for JournalingSuggestion.ItemContent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v0[36];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v0[36]);
      }

      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v11);
      }

      v17 = v0[32];
      v18 = v0[26];
      v19 = v0[25];
      _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v0[27], type metadata accessor for JournalingSuggestion.ItemContent);
      outlined destroy of URL?(v17, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      v11[2] = v16 + 1;
      outlined init with take of JournalingSuggestion.ItemContent(v18, v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, type metadata accessor for JournalingSuggestion.ItemContent);
    }

    v0[36] = v11;
    v20 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.ItemContent?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR, MEMORY[0x277D856C0]);
    v21 = swift_task_alloc();
    v0[37] = v21;
    *v21 = v0;
    v21[1] = closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);
    v22 = v0[33];
    v23 = v0[28];

    return MEMORY[0x282200308](v23, v22, v20);
  }
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a1;
  v6[10] = a4;
  v7 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), 0, 0);
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)()
{
  v54 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  UUID.init()();
  v4 = MEMORY[0x277D84F90];
  *(v1 + *(v2 + 20)) = MEMORY[0x277D84F90];
  v51 = v2;
  *(v1 + *(v2 + 24)) = v4;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (*(v0 + 80) + 32);
    do
    {
      v52 = *v6;
      v8 = JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:inside:)(*v6, *(v0 + 88), *(v0 + 96), *v6, v6[1]);
      if (v8)
      {
        v12 = v8;
        v13 = v9;
        v14 = v10;
        v15 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v17 = v4[2];
        v16 = v4[3];
        if (v17 >= v16 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v4);
        }

        v4[2] = v17 + 1;
        v7 = &v4[6 * v17];
        v7[4] = v12;
        v7[5] = v13;
        v7[6] = v14;
        v7[7] = v15;
        *(v7 + 4) = v52;
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  if (v4[2])
  {
    JournalingSuggestion.ItemContent.appendAssetContent(_:)(v4);

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.bridge);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 120);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v22 = 136315138;
      swift_beginAccess();
      v24 = *(v21 + *(v51 + 20));

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pXpMd, &_s21JournalingSuggestions0A15SuggestionAsset_pXpMR);
      v26 = MEMORY[0x23EE70840](v24, v25);
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v53);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_238A75000, v19, v20, "Got asset representations: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x23EE71510](v23, -1, -1);
      MEMORY[0x23EE71510](v22, -1, -1);
    }

    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v32 = *(v0 + 104);
    v33 = *(v0 + 72);
    swift_beginAccess();
    outlined init with copy of JournalingSuggestionsError(v30, v33, type metadata accessor for JournalingSuggestion.ItemContent);
    (*(v31 + 56))(v33, 0, 1, v32);
  }

  else
  {

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 88);
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.bridge);
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 104);
    v41 = *(v0 + 112);
    if (v39)
    {
      v42 = *(v0 + 88);
      v43 = *(v0 + 72);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53 = v45;
      *v44 = 136315138;
      *(v0 + 64) = [v42 assetType];
      type metadata accessor for MOSuggestionAssetsType(0);
      v46 = String.init<A>(describing:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v53);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_238A75000, v37, v38, "Error: Couldn't load any representation for asset of type: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x23EE71510](v45, -1, -1);
      MEMORY[0x23EE71510](v44, -1, -1);
    }

    else
    {
      v43 = *(v0 + 72);
    }

    (*(v41 + 56))(v43, 1, 1, v40);
  }

  _s21JournalingSuggestions0aB5ErrorOWOhTm_0(*(v0 + 120), type metadata accessor for JournalingSuggestion.ItemContent);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t SuggestionSheetManager.getAssetsFor(suggestion:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](SuggestionSheetManager.getAssetsFor(suggestion:), 0, 0);
}

uint64_t SuggestionSheetManager.getAssetsFor(suggestion:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller);
  v0[5] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[6] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = v1;
    v5 = swift_task_alloc();
    v0[7] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17MOSuggestionAssetCGMd, &_sSaySo17MOSuggestionAssetCGMR);
    *v5 = v0;
    v5[1] = SuggestionSheetManager.getAssetsFor(suggestion:);

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x8000000238ADF8C0, partial apply for closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:), v3, v6);
  }

  else
  {
    type metadata accessor for JournalingSuggestionsError(0);
    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError, &protocol conformance descriptor for JournalingSuggestionsError);
    swift_allocError();
    *v7 = 0xD000000000000028;
    v7[1] = 0x8000000238ADF890;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = SuggestionSheetManager.getAssetsFor(suggestion:);
  }

  else
  {

    v2 = SuggestionSheetManager.getAssetsFor(suggestion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [MOSuggestionAsset<Swift.AnyObject>]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_49;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  [a2 getAssetsForSuggestion:v14 withTypes:0 onAssetsCallback:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:)(unint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JournalingSuggestionsError(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v14 = one-time initialization token for bridge;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.bridge);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      if (a1 >> 62)
      {
        if ((a1 & 0x8000000000000000) == 0)
        {
          v27 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v27 = a1;
        }

        v19 = MEMORY[0x23EE70C40](v27);
      }

      else
      {
        v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v19;

      _os_log_impl(&dword_238A75000, v16, v17, "got %ld assets from system picker", v18, 0xCu);
      MEMORY[0x23EE71510](v18, -1, -1);
    }

    else
    {
    }

    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    v28 = a2;
    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v28 = 0xD000000000000023;
    v29 = 0x8000000238ADF900;
    v22 = [a4 suggestionIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x23EE70790](v23);

    (*(v8 + 8))(v10, v7);
    v24 = v29;
    *v13 = v28;
    v13[1] = v24;
    swift_storeEnumTagMultiPayload();
    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError, &protocol conformance descriptor for JournalingSuggestionsError);
    v25 = swift_allocError();
    outlined init with copy of JournalingSuggestionsError(v13, v26, type metadata accessor for JournalingSuggestionsError);
    v28 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v13, type metadata accessor for JournalingSuggestionsError);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [MOSuggestionAsset<Swift.AnyObject>]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd, &_sSo17MOSuggestionAssetCMR);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = type metadata accessor for UUID();
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.bridge);
  v19 = a3;
  v61 = v18;
  v20 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v59 = v20;
  v60 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v58 = v22;
    v25 = v24;
    v57 = swift_slowAlloc();
    v64[0] = v57;
    *v25 = 134218242;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v26 = [v20 suggestionIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = v13;
    v28 = v63;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v4;
    v31 = v10;
    v32 = a1;
    v34 = v33;
    v35 = v28;
    v13 = v27;
    (*(v62 + 8))(v16, v35);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v34, v64);
    a1 = v32;
    v10 = v31;
    v4 = v30;

    *(v25 + 14) = v36;
    _os_log_impl(&dword_238A75000, v21, v58, "sheet delegate shouldPerform:%lu, for:'%s'", v25, 0x16u);
    v37 = v57;
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x23EE71510](v37, -1, -1);
    MEMORY[0x23EE71510](v25, -1, -1);
  }

  v38 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*&v4[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock] lock];
  swift_beginAccess();

  specialized Collection.first.getter(v39, v13);

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMR);
  if ((*(*(v40 - 8) + 48))(v13, 1, v40) == 1)
  {
    outlined destroy of URL?(v13, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMR);
    [*&v4[v38] unlock];
    [*&v4[v38] lock];
    v41 = &v4[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState];
    if ((v4[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8] & 1) != 0 || *v41)
    {
      *v41 = 0;
      v41[8] = 0;
    }

    [*&v4[v38] unlock];
    SuggestionSheetManager.servicePickerViewState()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_238A75000, v42, v43, "Ignoring selection, sheet already dismissed", v44, 2u);
      MEMORY[0x23EE71510](v44, -1, -1);
    }
  }

  else
  {
    v45 = &v13[*(v40 + 48)];
    v47 = *v45;
    v46 = *(v45 + 1);

    (*(v62 + 8))(v13, v63);
    [*&v4[v38] unlock];
    if (v60 != 2)
    {
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_238A75000, v48, v49, "requesting assets...", v50, 2u);
        MEMORY[0x23EE71510](v50, -1, -1);
      }

      MEMORY[0x23EE70910]();
      v51 = type metadata accessor for TaskPriority();
      (*(*(v51 - 8) + 56))(v10, 0, 1, v51);
      v52 = swift_allocObject();
      v52[2] = 0;
      v52[3] = 0;
      v52[4] = a1;
      v52[5] = v4;
      v53 = v59;
      v52[6] = v59;
      v52[7] = v47;
      v52[8] = v46;
      v54 = v53;
      v55 = a1;
      v56 = v4;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), v52);
    }
  }
}

uint64_t closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionVSgMd, &_s21JournalingSuggestions0A10SuggestionVSgMR);
  v8[8] = swift_task_alloc();
  v9 = type metadata accessor for JournalingSuggestion(0);
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v8[11] = *(v10 + 64);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), 0, 0);
}

uint64_t closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)()
{
  [*(v0 + 16) setDisableAssetUnwrapping_];
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  v2 = *(v0 + 32);

  return SuggestionSheetManager.getAssetsFor(suggestion:)(v2);
}

{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.bridge);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[15];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5 >> 62)
    {
      v14 = v0[15];
      if (v14 >= 0)
      {
        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = v6;
      v7 = MEMORY[0x23EE70C40](v14);
      v6 = v15;
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;
    v8 = v6;

    _os_log_impl(&dword_238A75000, v2, v3, "getAssetsFor count=%ld", v8, 0xCu);
    MEMORY[0x23EE71510](v8, -1, -1);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  v10 = v0[15];
  v11 = v0[8];
  v12 = v0[4];

  return SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(v11, v12, v10);
}

{

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[8];
  if ((*(v1 + 48))(v2, 1, v0[9]) == 1)
  {
    outlined destroy of URL?(v2, &_s21JournalingSuggestions0A10SuggestionVSgMd, &_s21JournalingSuggestions0A10SuggestionVSgMR);
    v3 = v0[3];
    v4 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
    [*(v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
    v5 = v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
    if ((*(v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v5)
    {
      *v5 = 0;
      *(v5 + 8) = 0;
    }

    [*(v3 + v4) unlock];
    SuggestionSheetManager.servicePickerViewState()();
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v21 = v0[11];
    v9 = v0[6];
    v8 = v0[7];
    v23 = v0[5];
    v10 = v0[3];
    v22 = v8;
    outlined init with take of JournalingSuggestion.ItemContent(v2, v6, type metadata accessor for JournalingSuggestion);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    outlined init with copy of JournalingSuggestionsError(v6, v7, type metadata accessor for JournalingSuggestion);
    type metadata accessor for MainActor();

    v12 = v10;
    v13 = static MainActor.shared.getter();
    v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v15 = (v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v13;
    *(v16 + 24) = v17;
    outlined init with take of JournalingSuggestion.ItemContent(v7, v16 + v14, type metadata accessor for JournalingSuggestion);
    v18 = (v16 + v15);
    *v18 = v23;
    v18[1] = v9;
    *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v12;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), v16);

    _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v6, type metadata accessor for JournalingSuggestion);
  }

  v19 = v0[1];

  return v19();
}

{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_238A75000, v4, v5, "getAssetsError: %@", v8, 0xCu);
    outlined destroy of URL?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE71510](v9, -1, -1);
    MEMORY[0x23EE71510](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[3];
  v13 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*(v12 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
  v14 = v12 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
  if ((*(v12 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v14)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
  }

  [*(v12 + v13) unlock];
  SuggestionSheetManager.servicePickerViewState()();

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  }

  else
  {
    v4 = closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for JournalingSuggestion(0);
  v7[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), v9, v8);
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)()
{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.bridge);
  outlined init with copy of JournalingSuggestionsError(v2, v1, type metadata accessor for JournalingSuggestion);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(*v7 + 16);
    _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v7, type metadata accessor for JournalingSuggestion);
    *(v8 + 4) = v9;
    _os_log_impl(&dword_238A75000, v4, v5, "Calling picker .onCompletion with %ld assets", v8, 0xCu);
    MEMORY[0x23EE71510](v8, -1, -1);
  }

  else
  {
    _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v0[6], type metadata accessor for JournalingSuggestion);
  }

  v10 = v0[3];

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  v12 = v0[2];

  return v14(v12);
}

{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), v3, v2);
}

{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*(v1 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
  v3 = v1 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
  if ((*(v1 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v3)
  {
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  [*(v1 + v2) unlock];
  SuggestionSheetManager.servicePickerViewState()();

  v4 = *(v0 + 8);

  return v4();
}

id SuggestionSheetManager.init()()
{
  v1 = v0;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_journalConfiguration;
  v8 = type metadata accessor for JournalConfiguration(0);
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  *&v0[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller] = 0;
  v17 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_pickerQueue;
  v9 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v16[1] = ")";
  v16[2] = v9;
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v18);
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = &v0[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v0[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v13 = &v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState];
  *v13 = 0;
  v13[8] = 1;
  *&v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens] = MEMORY[0x277D84F98];
  v14 = type metadata accessor for SuggestionSheetManager(0);
  v19.receiver = v1;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

id SuggestionSheetManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionSheetManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SuggestionSheetManager@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SuggestionSheetManager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5TQ0_;

  return v6(a1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EE707C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized static SuggestionSheetManager.contentImpl(bySpiType:)(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_238AD9800;
    v18 = type metadata accessor for JournalingSuggestion.Photo(0);
    result = v17;
    v20 = &protocol witness table for JournalingSuggestion.Photo;
LABEL_16:
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    return result;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_18;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_238AD9800;
    v18 = type metadata accessor for JournalingSuggestion.Video(0);
    result = v17;
    v20 = &protocol witness table for JournalingSuggestion.Video;
    goto LABEL_16;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_238AD9800;
    v18 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
    result = v17;
    v20 = &protocol witness table for JournalingSuggestion.LivePhoto;
    goto LABEL_16;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_20;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_238AD9F20;
    *(v27 + 32) = type metadata accessor for JournalingSuggestion.Song(0);
    *(v27 + 40) = &protocol witness table for JournalingSuggestion.Song;
    *(v27 + 48) = type metadata accessor for JournalingSuggestion.Podcast(0);
    *(v27 + 56) = &protocol witness table for JournalingSuggestion.Podcast;
    v28 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
    result = v27;
    *(v27 + 64) = v28;
    *(v27 + 72) = &protocol witness table for JournalingSuggestion.GenericMedia;
    return result;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_25;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_238AD9800;
    v18 = type metadata accessor for JournalingSuggestion.Contact(0);
    result = v17;
    v20 = &protocol witness table for JournalingSuggestion.Contact;
    goto LABEL_16;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_30;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_238AD9810;
    *(v39 + 32) = type metadata accessor for JournalingSuggestion.Workout(0);
    *(v39 + 40) = &protocol witness table for JournalingSuggestion.Workout;
    v40 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
    result = v39;
    v41 = &protocol witness table for JournalingSuggestion.Workout.Details;
LABEL_36:
    *(v39 + 48) = v40;
    *(v39 + 56) = v41;
    return result;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_35;
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {

LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_238AD9800;
    v18 = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
    result = v17;
    v20 = &protocol witness table for JournalingSuggestion.WorkoutGroup;
    goto LABEL_16;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v46)
  {
    goto LABEL_41;
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
  {

LABEL_46:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_238AD9810;
    *(v39 + 32) = &type metadata for JournalingSuggestion.LocationGroup;
    *(v39 + 40) = &protocol witness table for JournalingSuggestion.LocationGroup;
    v40 = type metadata accessor for JournalingSuggestion.Location(0);
    result = v39;
    v41 = &protocol witness table for JournalingSuggestion.Location;
    goto LABEL_36;
  }

  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v51)
  {
    goto LABEL_46;
  }

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
  {

LABEL_51:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_238AD9800;
    v18 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
    result = v17;
    v20 = &protocol witness table for JournalingSuggestion.MotionActivity;
    goto LABEL_16;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
    goto LABEL_51;
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;
  if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
  {
    goto LABEL_54;
  }

  v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v61)
  {
    goto LABEL_56;
  }

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
  {
LABEL_54:

LABEL_56:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_238AD9800;
    v18 = type metadata accessor for JournalingSuggestion.Location(0);
    result = v17;
    v20 = &protocol witness table for JournalingSuggestion.Location;
    goto LABEL_16;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v66)
  {
    goto LABEL_56;
  }

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;
  if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
  {
    goto LABEL_62;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
    return 0;
  }

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;
  if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
  {

LABEL_69:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_238AD9800;
    *(result + 32) = &type metadata for JournalingSuggestion.Reflection;
    *(result + 40) = &protocol witness table for JournalingSuggestion.Reflection;
    return result;
  }

  v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v76)
  {
    goto LABEL_69;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;
  if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
  {

LABEL_74:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_238AD9800;
    v18 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
    result = v17;
    v20 = &protocol witness table for JournalingSuggestion.StateOfMind;
    goto LABEL_16;
  }

  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v81)
  {
    goto LABEL_74;
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;
  if (v82 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v84 == v85)
  {
    goto LABEL_62;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v86)
  {
    return 0;
  }

  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;
  if (v87 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v89 == v90)
  {
    goto LABEL_62;
  }

  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v91)
  {
    return 0;
  }

  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;
  if (v92 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v94 == v95)
  {
    goto LABEL_62;
  }

  v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v96)
  {
    return 0;
  }

  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;
  if (v97 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v99 == v100)
  {
    goto LABEL_62;
  }

  v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v101)
  {
    return 0;
  }

  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;
  if (v102 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v104 == v105)
  {
    goto LABEL_62;
  }

  v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v106)
  {
    return 0;
  }

  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v108;
  if (v107 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v109 == v110)
  {
    goto LABEL_62;
  }

  v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v111)
  {
    return 0;
  }

  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v113;
  if (v112 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v114 == v115)
  {
    goto LABEL_62;
  }

  v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v116)
  {
    return 0;
  }

  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v118;
  if (v117 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v119 == v120)
  {
    goto LABEL_62;
  }

  v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v121)
  {
    return 0;
  }

  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v124 = v123;
  if (v122 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v124 == v125)
  {
LABEL_62:

    return 0;
  }

  v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v126)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}